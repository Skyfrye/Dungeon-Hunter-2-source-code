; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a901c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::DesignSettingsTable
; alias: _ZN6Arrays19DesignSettingsTable13finalizeNamesEv
; demangled: Arrays::DesignSettingsTable::finalizeNames()
; decoder-mode: arm
004a901c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9020  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a9024  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a9028  05 50 8f e0                                      add r5, pc, r5
004a902c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9030  00 30 93 e5                                      ldr r3, [r3]
004a9034  00 00 53 e3                                      cmp r3, #0
004a9038  1a 00 00 0a                                      beq #0x4a90a8
004a903c  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a9040  07 20 95 e7                                      ldr r2, [r5, r7]
004a9044  00 20 92 e5                                      ldr r2, [r2]
004a9048  00 00 52 e3                                      cmp r2, #0
004a904c  10 00 00 0a                                      beq #0x4a9094
004a9050  00 40 a0 e3                                      mov r4, #0
004a9054  01 00 00 ea                                      b #0x4a9060
004a9058  06 30 95 e7                                      ldr r3, [r5, r6]
004a905c  00 30 93 e5                                      ldr r3, [r3]
004a9060  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a9064  01 40 84 e2                                      add r4, r4, #1
004a9068  00 00 50 e3                                      cmp r0, #0
004a906c  02 00 00 0a                                      beq #0x4a907c
004a9070  f2 9c f9 eb                                      bl #0x310440
004a9074  06 30 95 e7                                      ldr r3, [r5, r6]
004a9078  00 30 93 e5                                      ldr r3, [r3]
004a907c  07 20 95 e7                                      ldr r2, [r5, r7]
004a9080  00 20 92 e5                                      ldr r2, [r2]
004a9084  04 00 52 e1                                      cmp r2, r4
004a9088  f2 ff ff 8a                                      bhi #0x4a9058
004a908c  00 00 53 e3                                      cmp r3, #0
004a9090  01 00 00 0a                                      beq #0x4a909c
004a9094  03 00 a0 e1                                      mov r0, r3
004a9098  e8 9c f9 eb                                      bl #0x310440
004a909c  06 30 95 e7                                      ldr r3, [r5, r6]
004a90a0  00 20 a0 e3                                      mov r2, #0
004a90a4  00 20 83 e5                                      str r2, [r3]
004a90a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a90ac  68 ba 4e 00 24 48 00 00 e4 2e 00 00              .byte 0x68, 0xba, 0x4e, 0x00, 0x24, 0x48, 0x00, 0x00, 0xe4, 0x2e, 0x00, 0x00

; FUNCTION 0x004a90b8, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::DesignSettingsTable
; alias: _ZN6Arrays19DesignSettingsTable8finalizeEv
; demangled: Arrays::DesignSettingsTable::finalize()
; decoder-mode: arm
004a90b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a90bc  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a90c0  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a90c4  05 50 8f e0                                      add r5, pc, r5
004a90c8  07 30 95 e7                                      ldr r3, [r5, r7]
004a90cc  00 30 93 e5                                      ldr r3, [r3]
004a90d0  00 00 53 e3                                      cmp r3, #0
004a90d4  2c 00 00 0a                                      beq #0x4a918c
004a90d8  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a90dc  08 20 95 e7                                      ldr r2, [r5, r8]
004a90e0  00 20 92 e5                                      ldr r2, [r2]
004a90e4  00 00 52 e3                                      cmp r2, #0
004a90e8  12 00 00 0a                                      beq #0x4a9138
004a90ec  00 40 a0 e3                                      mov r4, #0
004a90f0  04 60 a0 e1                                      mov r6, r4
004a90f4  01 00 00 ea                                      b #0x4a9100
004a90f8  07 30 95 e7                                      ldr r3, [r5, r7]
004a90fc  00 30 93 e5                                      ldr r3, [r3]
004a9100  04 00 83 e0                                      add r0, r3, r4
004a9104  04 30 93 e7                                      ldr r3, [r3, r4]
004a9108  0f e0 a0 e1                                      mov lr, pc
004a910c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a9110  08 30 95 e7                                      ldr r3, [r5, r8]
004a9114  01 60 86 e2                                      add r6, r6, #1
004a9118  b0 40 84 e2                                      add r4, r4, #0xb0
004a911c  00 30 93 e5                                      ldr r3, [r3]
004a9120  06 00 53 e1                                      cmp r3, r6
004a9124  f3 ff ff 8a                                      bhi #0x4a90f8
004a9128  07 30 95 e7                                      ldr r3, [r5, r7]
004a912c  00 30 93 e5                                      ldr r3, [r3]
004a9130  00 00 53 e3                                      cmp r3, #0
004a9134  11 00 00 0a                                      beq #0x4a9180
004a9138  04 20 13 e5                                      ldr r2, [r3, #-4]
004a913c  b0 00 a0 e3                                      mov r0, #0xb0
004a9140  90 32 20 e0                                      mla r0, r0, r2, r3
004a9144  00 00 53 e1                                      cmp r3, r0
004a9148  01 00 00 1a                                      bne #0x4a9154
004a914c  09 00 00 ea                                      b #0x4a9178
004a9150  04 00 a0 e1                                      mov r0, r4
004a9154  b0 40 40 e2                                      sub r4, r0, #0xb0
004a9158  b0 30 10 e5                                      ldr r3, [r0, #-0xb0]
004a915c  04 00 a0 e1                                      mov r0, r4
004a9160  0f e0 a0 e1                                      mov lr, pc
004a9164  00 f0 93 e5                                      ldr pc, [r3]
004a9168  07 30 95 e7                                      ldr r3, [r5, r7]
004a916c  00 00 93 e5                                      ldr r0, [r3]
004a9170  04 00 50 e1                                      cmp r0, r4
004a9174  f5 ff ff 1a                                      bne #0x4a9150
004a9178  08 00 40 e2                                      sub r0, r0, #8
004a917c  af 9c f9 eb                                      bl #0x310440
004a9180  07 30 95 e7                                      ldr r3, [r5, r7]
004a9184  00 20 a0 e3                                      mov r2, #0
004a9188  00 20 83 e5                                      str r2, [r3]
004a918c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9190  cc b9 4e 00 c8 32 00 00 e4 2e 00 00              .byte 0xcc, 0xb9, 0x4e, 0x00, 0xc8, 0x32, 0x00, 0x00, 0xe4, 0x2e, 0x00, 0x00

; FUNCTION 0x004b3cd0, declared_size=328, range_size=328, mode=arm
; class-group: Arrays::DesignSettingsTable
; alias: _ZN6Arrays19DesignSettingsTable4readEP11IStreamBase
; demangled: Arrays::DesignSettingsTable::read(IStreamBase*)
; decoder-mode: arm
004b3cd0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b3cd4  0c d0 4d e2                                      sub sp, sp, #0xc
004b3cd8  00 a0 a0 e1                                      mov sl, r0
004b3cdc  6b 7f f9 eb                                      bl #0x313a90
004b3ce0  20 61 9f e5                                      ldr r6, [pc, #0x120]
004b3ce4  01 30 a0 e3                                      mov r3, #1
004b3ce8  00 00 53 e3                                      cmp r3, #0
004b3cec  04 00 8d e5                                      str r0, [sp, #4]
004b3cf0  00 30 8d e5                                      str r3, [sp]
004b3cf4  06 60 8f e0                                      add r6, pc, r6
004b3cf8  10 00 00 1a                                      bne #0x4b3d40
004b3cfc  04 30 8d e2                                      add r3, sp, #4
004b3d00  02 20 83 e2                                      add r2, r3, #2
004b3d04  01 30 83 e2                                      add r3, r3, #1
004b3d08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3d0c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b3d10  03 00 52 e1                                      cmp r2, r3
004b3d14  01 10 20 e0                                      eor r1, r0, r1
004b3d18  01 10 43 e5                                      strb r1, [r3, #-1]
004b3d1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3d20  00 10 21 e0                                      eor r1, r1, r0
004b3d24  01 10 c2 e5                                      strb r1, [r2, #1]
004b3d28  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b3d2c  01 20 42 e2                                      sub r2, r2, #1
004b3d30  00 10 21 e0                                      eor r1, r1, r0
004b3d34  01 10 43 e5                                      strb r1, [r3, #-1]
004b3d38  01 30 83 e2                                      add r3, r3, #1
004b3d3c  f1 ff ff 8a                                      bhi #0x4b3d08
004b3d40  dc d4 ff eb                                      bl #0x4a90b8
004b3d44  04 40 9d e5                                      ldr r4, [sp, #4]
004b3d48  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
004b3d4c  16 00 a0 e3                                      mov r0, #0x16
004b3d50  90 04 00 e0                                      mul r0, r0, r4
004b3d54  07 30 96 e7                                      ldr r3, [r6, r7]
004b3d58  01 00 80 e2                                      add r0, r0, #1
004b3d5c  80 01 a0 e1                                      lsl r0, r0, #3
004b3d60  00 40 83 e5                                      str r4, [r3]
004b3d64  01 10 a0 e3                                      mov r1, #1
004b3d68  ff 71 f9 eb                                      bl #0x31056c
004b3d6c  b0 30 a0 e3                                      mov r3, #0xb0
004b3d70  00 00 54 e3                                      cmp r4, #0
004b3d74  18 00 80 e8                                      stm r0, {r3, r4}
004b3d78  08 30 80 e2                                      add r3, r0, #8
004b3d7c  08 00 00 0a                                      beq #0x4b3da4
004b3d80  88 10 9f e5                                      ldr r1, [pc, #0x88]
004b3d84  00 20 a0 e3                                      mov r2, #0
004b3d88  01 10 96 e7                                      ldr r1, [r6, r1]
004b3d8c  08 10 81 e2                                      add r1, r1, #8
004b3d90  01 20 82 e2                                      add r2, r2, #1
004b3d94  04 00 52 e1                                      cmp r2, r4
004b3d98  08 10 80 e5                                      str r1, [r0, #8]
004b3d9c  b0 00 80 e2                                      add r0, r0, #0xb0
004b3da0  fa ff ff 1a                                      bne #0x4b3d90
004b3da4  07 20 96 e7                                      ldr r2, [r6, r7]
004b3da8  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b3dac  00 10 92 e5                                      ldr r1, [r2]
004b3db0  08 20 96 e7                                      ldr r2, [r6, r8]
004b3db4  00 00 51 e3                                      cmp r1, #0
004b3db8  00 30 82 e5                                      str r3, [r2]
004b3dbc  0f 00 00 0a                                      beq #0x4b3e00
004b3dc0  00 40 a0 e3                                      mov r4, #0
004b3dc4  04 50 a0 e1                                      mov r5, r4
004b3dc8  01 00 00 ea                                      b #0x4b3dd4
004b3dcc  08 30 96 e7                                      ldr r3, [r6, r8]
004b3dd0  00 30 93 e5                                      ldr r3, [r3]
004b3dd4  04 00 83 e0                                      add r0, r3, r4
004b3dd8  0a 10 a0 e1                                      mov r1, sl
004b3ddc  04 30 93 e7                                      ldr r3, [r3, r4]
004b3de0  0f e0 a0 e1                                      mov lr, pc
004b3de4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b3de8  07 30 96 e7                                      ldr r3, [r6, r7]
004b3dec  01 50 85 e2                                      add r5, r5, #1
004b3df0  b0 40 84 e2                                      add r4, r4, #0xb0
004b3df4  00 30 93 e5                                      ldr r3, [r3]
004b3df8  05 00 53 e1                                      cmp r3, r5
004b3dfc  f2 ff ff 8a                                      bhi #0x4b3dcc
004b3e00  0c d0 8d e2                                      add sp, sp, #0xc
004b3e04  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b3e08  9c 0d 4e 00 e4 2e 00 00 80 46 00 00 c8 32 00 00  .byte 0x9c, 0x0d, 0x4e, 0x00, 0xe4, 0x2e, 0x00, 0x00, 0x80, 0x46, 0x00, 0x00, 0xc8, 0x32, 0x00, 0x00

; FUNCTION 0x004b7638, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::DesignSettingsTable
; alias: _ZN6Arrays19DesignSettingsTable9readNamesEP11IStreamBase
; demangled: Arrays::DesignSettingsTable::readNames(IStreamBase*)
; decoder-mode: arm
004b7638  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b763c  00 70 a0 e1                                      mov r7, r0
004b7640  1c d0 4d e2                                      sub sp, sp, #0x1c
004b7644  74 c6 ff eb                                      bl #0x4a901c
004b7648  07 00 a0 e1                                      mov r0, r7
004b764c  0f 71 f9 eb                                      bl #0x313a90
004b7650  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b7654  01 30 a0 e3                                      mov r3, #1
004b7658  00 00 53 e3                                      cmp r3, #0
004b765c  06 60 8f e0                                      add r6, pc, r6
004b7660  14 00 8d e5                                      str r0, [sp, #0x14]
004b7664  0c 30 8d e5                                      str r3, [sp, #0xc]
004b7668  12 00 00 1a                                      bne #0x4b76b8
004b766c  14 30 8d e2                                      add r3, sp, #0x14
004b7670  02 20 83 e2                                      add r2, r3, #2
004b7674  01 30 83 e2                                      add r3, r3, #1
004b7678  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b767c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7680  03 00 52 e1                                      cmp r2, r3
004b7684  02 40 a0 e1                                      mov r4, r2
004b7688  01 10 20 e0                                      eor r1, r0, r1
004b768c  01 10 43 e5                                      strb r1, [r3, #-1]
004b7690  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7694  00 10 21 e0                                      eor r1, r1, r0
004b7698  01 10 c2 e5                                      strb r1, [r2, #1]
004b769c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b76a0  01 20 42 e2                                      sub r2, r2, #1
004b76a4  00 10 21 e0                                      eor r1, r1, r0
004b76a8  01 10 43 e5                                      strb r1, [r3, #-1]
004b76ac  01 30 83 e2                                      add r3, r3, #1
004b76b0  f0 ff ff 8a                                      bhi #0x4b7678
004b76b4  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b76b8  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b76bc  03 30 96 e7                                      ldr r3, [r6, r3]
004b76c0  00 30 93 e5                                      ldr r3, [r3]
004b76c4  00 00 53 e1                                      cmp r3, r0
004b76c8  01 00 00 0a                                      beq #0x4b76d4
004b76cc  1c d0 8d e2                                      add sp, sp, #0x1c
004b76d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b76d4  00 01 a0 e1                                      lsl r0, r0, #2
004b76d8  01 10 a0 e3                                      mov r1, #1
004b76dc  a2 63 f9 eb                                      bl #0x31056c
004b76e0  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b76e4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b76e8  09 30 96 e7                                      ldr r3, [r6, sb]
004b76ec  00 00 52 e3                                      cmp r2, #0
004b76f0  00 00 83 e5                                      str r0, [r3]
004b76f4  f4 ff ff 0a                                      beq #0x4b76cc
004b76f8  10 a0 8d e2                                      add sl, sp, #0x10
004b76fc  01 80 a0 e3                                      mov r8, #1
004b7700  08 10 8a e0                                      add r1, sl, r8
004b7704  02 30 8a e2                                      add r3, sl, #2
004b7708  00 40 a0 e3                                      mov r4, #0
004b770c  0a 00 8d e8                                      stm sp, {r1, r3}
004b7710  07 00 a0 e1                                      mov r0, r7
004b7714  0a 10 a0 e1                                      mov r1, sl
004b7718  a0 9e fc eb                                      bl #0x3df1a0
004b771c  00 00 58 e3                                      cmp r8, #0
004b7720  0c 80 8d e5                                      str r8, [sp, #0xc]
004b7724  0f 00 00 1a                                      bne #0x4b7768
004b7728  00 30 9d e5                                      ldr r3, [sp]
004b772c  04 20 9d e5                                      ldr r2, [sp, #4]
004b7730  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7734  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7738  03 00 52 e1                                      cmp r2, r3
004b773c  01 10 20 e0                                      eor r1, r0, r1
004b7740  01 10 43 e5                                      strb r1, [r3, #-1]
004b7744  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7748  00 10 21 e0                                      eor r1, r1, r0
004b774c  01 10 c2 e5                                      strb r1, [r2, #1]
004b7750  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7754  01 20 42 e2                                      sub r2, r2, #1
004b7758  00 10 21 e0                                      eor r1, r1, r0
004b775c  01 10 43 e5                                      strb r1, [r3, #-1]
004b7760  01 30 83 e2                                      add r3, r3, #1
004b7764  f1 ff ff 8a                                      bhi #0x4b7730
004b7768  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b776c  09 50 96 e7                                      ldr r5, [r6, sb]
004b7770  01 10 a0 e3                                      mov r1, #1
004b7774  01 00 80 e0                                      add r0, r0, r1
004b7778  00 b0 95 e5                                      ldr fp, [r5]
004b777c  7a 63 f9 eb                                      bl #0x31056c
004b7780  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b7784  00 30 95 e5                                      ldr r3, [r5]
004b7788  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b778c  07 00 a0 e1                                      mov r0, r7
004b7790  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b7794  00 30 a0 e3                                      mov r3, #0
004b7798  2d 7f f9 eb                                      bl #0x317454
004b779c  00 30 95 e5                                      ldr r3, [r5]
004b77a0  00 10 a0 e3                                      mov r1, #0
004b77a4  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b77a8  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b77ac  01 40 84 e2                                      add r4, r4, #1
004b77b0  03 10 c2 e7                                      strb r1, [r2, r3]
004b77b4  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b77b8  04 00 53 e1                                      cmp r3, r4
004b77bc  d3 ff ff 8a                                      bhi #0x4b7710
004b77c0  c1 ff ff ea                                      b #0x4b76cc
; mapping-symbol data/literal pool
004b77c4  34 d4 4d 00 e4 2e 00 00 24 48 00 00              .byte 0x34, 0xd4, 0x4d, 0x00, 0xe4, 0x2e, 0x00, 0x00, 0x24, 0x48, 0x00, 0x00

; FUNCTION 0x004b77d0, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::DesignSettingsTable
; alias: _ZN6Arrays19DesignSettingsTable9skipNamesEP11IStreamBase
; demangled: Arrays::DesignSettingsTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b77d0  98 ff ff ea                                      b #0x4b7638
