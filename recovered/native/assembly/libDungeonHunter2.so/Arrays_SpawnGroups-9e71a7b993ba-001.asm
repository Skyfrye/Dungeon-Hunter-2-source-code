; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a4b70, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::SpawnGroups
; alias: _ZN6Arrays11SpawnGroups13finalizeNamesEv
; demangled: Arrays::SpawnGroups::finalizeNames()
; decoder-mode: arm
004a4b70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4b74  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a4b78  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a4b7c  05 50 8f e0                                      add r5, pc, r5
004a4b80  06 30 95 e7                                      ldr r3, [r5, r6]
004a4b84  00 30 93 e5                                      ldr r3, [r3]
004a4b88  00 00 53 e3                                      cmp r3, #0
004a4b8c  1a 00 00 0a                                      beq #0x4a4bfc
004a4b90  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a4b94  07 20 95 e7                                      ldr r2, [r5, r7]
004a4b98  00 20 92 e5                                      ldr r2, [r2]
004a4b9c  00 00 52 e3                                      cmp r2, #0
004a4ba0  10 00 00 0a                                      beq #0x4a4be8
004a4ba4  00 40 a0 e3                                      mov r4, #0
004a4ba8  01 00 00 ea                                      b #0x4a4bb4
004a4bac  06 30 95 e7                                      ldr r3, [r5, r6]
004a4bb0  00 30 93 e5                                      ldr r3, [r3]
004a4bb4  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a4bb8  01 40 84 e2                                      add r4, r4, #1
004a4bbc  00 00 50 e3                                      cmp r0, #0
004a4bc0  02 00 00 0a                                      beq #0x4a4bd0
004a4bc4  1d ae f9 eb                                      bl #0x310440
004a4bc8  06 30 95 e7                                      ldr r3, [r5, r6]
004a4bcc  00 30 93 e5                                      ldr r3, [r3]
004a4bd0  07 20 95 e7                                      ldr r2, [r5, r7]
004a4bd4  00 20 92 e5                                      ldr r2, [r2]
004a4bd8  04 00 52 e1                                      cmp r2, r4
004a4bdc  f2 ff ff 8a                                      bhi #0x4a4bac
004a4be0  00 00 53 e3                                      cmp r3, #0
004a4be4  01 00 00 0a                                      beq #0x4a4bf0
004a4be8  03 00 a0 e1                                      mov r0, r3
004a4bec  13 ae f9 eb                                      bl #0x310440
004a4bf0  06 30 95 e7                                      ldr r3, [r5, r6]
004a4bf4  00 20 a0 e3                                      mov r2, #0
004a4bf8  00 20 83 e5                                      str r2, [r3]
004a4bfc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4c00  14 ff 4e 00 84 1e 00 00 5c 4b 00 00              .byte 0x14, 0xff, 0x4e, 0x00, 0x84, 0x1e, 0x00, 0x00, 0x5c, 0x4b, 0x00, 0x00

; FUNCTION 0x004a4c0c, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::SpawnGroups
; alias: _ZN6Arrays11SpawnGroups8finalizeEv
; demangled: Arrays::SpawnGroups::finalize()
; decoder-mode: arm
004a4c0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4c10  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a4c14  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a4c18  05 50 8f e0                                      add r5, pc, r5
004a4c1c  07 30 95 e7                                      ldr r3, [r5, r7]
004a4c20  00 30 93 e5                                      ldr r3, [r3]
004a4c24  00 00 53 e3                                      cmp r3, #0
004a4c28  2c 00 00 0a                                      beq #0x4a4ce0
004a4c2c  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a4c30  08 20 95 e7                                      ldr r2, [r5, r8]
004a4c34  00 20 92 e5                                      ldr r2, [r2]
004a4c38  00 00 52 e3                                      cmp r2, #0
004a4c3c  12 00 00 0a                                      beq #0x4a4c8c
004a4c40  00 40 a0 e3                                      mov r4, #0
004a4c44  04 60 a0 e1                                      mov r6, r4
004a4c48  01 00 00 ea                                      b #0x4a4c54
004a4c4c  07 30 95 e7                                      ldr r3, [r5, r7]
004a4c50  00 30 93 e5                                      ldr r3, [r3]
004a4c54  04 00 83 e0                                      add r0, r3, r4
004a4c58  04 30 93 e7                                      ldr r3, [r3, r4]
004a4c5c  0f e0 a0 e1                                      mov lr, pc
004a4c60  08 f0 93 e5                                      ldr pc, [r3, #8]
004a4c64  08 30 95 e7                                      ldr r3, [r5, r8]
004a4c68  01 60 86 e2                                      add r6, r6, #1
004a4c6c  14 40 84 e2                                      add r4, r4, #0x14
004a4c70  00 30 93 e5                                      ldr r3, [r3]
004a4c74  06 00 53 e1                                      cmp r3, r6
004a4c78  f3 ff ff 8a                                      bhi #0x4a4c4c
004a4c7c  07 30 95 e7                                      ldr r3, [r5, r7]
004a4c80  00 30 93 e5                                      ldr r3, [r3]
004a4c84  00 00 53 e3                                      cmp r3, #0
004a4c88  11 00 00 0a                                      beq #0x4a4cd4
004a4c8c  04 20 13 e5                                      ldr r2, [r3, #-4]
004a4c90  14 00 a0 e3                                      mov r0, #0x14
004a4c94  90 32 20 e0                                      mla r0, r0, r2, r3
004a4c98  00 00 53 e1                                      cmp r3, r0
004a4c9c  01 00 00 1a                                      bne #0x4a4ca8
004a4ca0  09 00 00 ea                                      b #0x4a4ccc
004a4ca4  04 00 a0 e1                                      mov r0, r4
004a4ca8  14 40 40 e2                                      sub r4, r0, #0x14
004a4cac  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004a4cb0  04 00 a0 e1                                      mov r0, r4
004a4cb4  0f e0 a0 e1                                      mov lr, pc
004a4cb8  00 f0 93 e5                                      ldr pc, [r3]
004a4cbc  07 30 95 e7                                      ldr r3, [r5, r7]
004a4cc0  00 00 93 e5                                      ldr r0, [r3]
004a4cc4  04 00 50 e1                                      cmp r0, r4
004a4cc8  f5 ff ff 1a                                      bne #0x4a4ca4
004a4ccc  08 00 40 e2                                      sub r0, r0, #8
004a4cd0  da ad f9 eb                                      bl #0x310440
004a4cd4  07 30 95 e7                                      ldr r3, [r5, r7]
004a4cd8  00 20 a0 e3                                      mov r2, #0
004a4cdc  00 20 83 e5                                      str r2, [r3]
004a4ce0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4ce4  78 fe 4e 00 b0 2c 00 00 5c 4b 00 00              .byte 0x78, 0xfe, 0x4e, 0x00, 0xb0, 0x2c, 0x00, 0x00, 0x5c, 0x4b, 0x00, 0x00

; FUNCTION 0x004b12c8, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::SpawnGroups
; alias: _ZN6Arrays11SpawnGroups9readNamesEP11IStreamBase
; demangled: Arrays::SpawnGroups::readNames(IStreamBase*)
; decoder-mode: arm
004b12c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b12cc  00 70 a0 e1                                      mov r7, r0
004b12d0  1c d0 4d e2                                      sub sp, sp, #0x1c
004b12d4  25 ce ff eb                                      bl #0x4a4b70
004b12d8  07 00 a0 e1                                      mov r0, r7
004b12dc  eb 89 f9 eb                                      bl #0x313a90
004b12e0  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b12e4  01 30 a0 e3                                      mov r3, #1
004b12e8  00 00 53 e3                                      cmp r3, #0
004b12ec  06 60 8f e0                                      add r6, pc, r6
004b12f0  14 00 8d e5                                      str r0, [sp, #0x14]
004b12f4  0c 30 8d e5                                      str r3, [sp, #0xc]
004b12f8  12 00 00 1a                                      bne #0x4b1348
004b12fc  14 30 8d e2                                      add r3, sp, #0x14
004b1300  02 20 83 e2                                      add r2, r3, #2
004b1304  01 30 83 e2                                      add r3, r3, #1
004b1308  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b130c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1310  03 00 52 e1                                      cmp r2, r3
004b1314  02 40 a0 e1                                      mov r4, r2
004b1318  01 10 20 e0                                      eor r1, r0, r1
004b131c  01 10 43 e5                                      strb r1, [r3, #-1]
004b1320  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1324  00 10 21 e0                                      eor r1, r1, r0
004b1328  01 10 c2 e5                                      strb r1, [r2, #1]
004b132c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1330  01 20 42 e2                                      sub r2, r2, #1
004b1334  00 10 21 e0                                      eor r1, r1, r0
004b1338  01 10 43 e5                                      strb r1, [r3, #-1]
004b133c  01 30 83 e2                                      add r3, r3, #1
004b1340  f0 ff ff 8a                                      bhi #0x4b1308
004b1344  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b1348  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b134c  03 30 96 e7                                      ldr r3, [r6, r3]
004b1350  00 30 93 e5                                      ldr r3, [r3]
004b1354  00 00 53 e1                                      cmp r3, r0
004b1358  01 00 00 0a                                      beq #0x4b1364
004b135c  1c d0 8d e2                                      add sp, sp, #0x1c
004b1360  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b1364  00 01 a0 e1                                      lsl r0, r0, #2
004b1368  01 10 a0 e3                                      mov r1, #1
004b136c  7e 7c f9 eb                                      bl #0x31056c
004b1370  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b1374  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b1378  09 30 96 e7                                      ldr r3, [r6, sb]
004b137c  00 00 52 e3                                      cmp r2, #0
004b1380  00 00 83 e5                                      str r0, [r3]
004b1384  f4 ff ff 0a                                      beq #0x4b135c
004b1388  10 a0 8d e2                                      add sl, sp, #0x10
004b138c  01 80 a0 e3                                      mov r8, #1
004b1390  08 10 8a e0                                      add r1, sl, r8
004b1394  02 30 8a e2                                      add r3, sl, #2
004b1398  00 40 a0 e3                                      mov r4, #0
004b139c  0a 00 8d e8                                      stm sp, {r1, r3}
004b13a0  07 00 a0 e1                                      mov r0, r7
004b13a4  0a 10 a0 e1                                      mov r1, sl
004b13a8  7c b7 fc eb                                      bl #0x3df1a0
004b13ac  00 00 58 e3                                      cmp r8, #0
004b13b0  0c 80 8d e5                                      str r8, [sp, #0xc]
004b13b4  0f 00 00 1a                                      bne #0x4b13f8
004b13b8  00 30 9d e5                                      ldr r3, [sp]
004b13bc  04 20 9d e5                                      ldr r2, [sp, #4]
004b13c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b13c4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b13c8  03 00 52 e1                                      cmp r2, r3
004b13cc  01 10 20 e0                                      eor r1, r0, r1
004b13d0  01 10 43 e5                                      strb r1, [r3, #-1]
004b13d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b13d8  00 10 21 e0                                      eor r1, r1, r0
004b13dc  01 10 c2 e5                                      strb r1, [r2, #1]
004b13e0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b13e4  01 20 42 e2                                      sub r2, r2, #1
004b13e8  00 10 21 e0                                      eor r1, r1, r0
004b13ec  01 10 43 e5                                      strb r1, [r3, #-1]
004b13f0  01 30 83 e2                                      add r3, r3, #1
004b13f4  f1 ff ff 8a                                      bhi #0x4b13c0
004b13f8  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b13fc  09 50 96 e7                                      ldr r5, [r6, sb]
004b1400  01 10 a0 e3                                      mov r1, #1
004b1404  01 00 80 e0                                      add r0, r0, r1
004b1408  00 b0 95 e5                                      ldr fp, [r5]
004b140c  56 7c f9 eb                                      bl #0x31056c
004b1410  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b1414  00 30 95 e5                                      ldr r3, [r5]
004b1418  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b141c  07 00 a0 e1                                      mov r0, r7
004b1420  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b1424  00 30 a0 e3                                      mov r3, #0
004b1428  09 98 f9 eb                                      bl #0x317454
004b142c  00 30 95 e5                                      ldr r3, [r5]
004b1430  00 10 a0 e3                                      mov r1, #0
004b1434  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b1438  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b143c  01 40 84 e2                                      add r4, r4, #1
004b1440  03 10 c2 e7                                      strb r1, [r2, r3]
004b1444  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b1448  04 00 53 e1                                      cmp r3, r4
004b144c  d3 ff ff 8a                                      bhi #0x4b13a0
004b1450  c1 ff ff ea                                      b #0x4b135c
; mapping-symbol data/literal pool
004b1454  a4 37 4e 00 5c 4b 00 00 84 1e 00 00              .byte 0xa4, 0x37, 0x4e, 0x00, 0x5c, 0x4b, 0x00, 0x00, 0x84, 0x1e, 0x00, 0x00

; FUNCTION 0x004b9060, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::SpawnGroups
; alias: _ZN6Arrays11SpawnGroups4readEP11IStreamBase
; demangled: Arrays::SpawnGroups::read(IStreamBase*)
; decoder-mode: arm
004b9060  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b9064  0c d0 4d e2                                      sub sp, sp, #0xc
004b9068  00 a0 a0 e1                                      mov sl, r0
004b906c  87 6a f9 eb                                      bl #0x313a90
004b9070  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b9074  01 30 a0 e3                                      mov r3, #1
004b9078  00 00 53 e3                                      cmp r3, #0
004b907c  04 00 8d e5                                      str r0, [sp, #4]
004b9080  00 30 8d e5                                      str r3, [sp]
004b9084  06 60 8f e0                                      add r6, pc, r6
004b9088  10 00 00 1a                                      bne #0x4b90d0
004b908c  04 30 8d e2                                      add r3, sp, #4
004b9090  02 20 83 e2                                      add r2, r3, #2
004b9094  01 30 83 e2                                      add r3, r3, #1
004b9098  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b909c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b90a0  03 00 52 e1                                      cmp r2, r3
004b90a4  01 10 20 e0                                      eor r1, r0, r1
004b90a8  01 10 43 e5                                      strb r1, [r3, #-1]
004b90ac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b90b0  00 10 21 e0                                      eor r1, r1, r0
004b90b4  01 10 c2 e5                                      strb r1, [r2, #1]
004b90b8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b90bc  01 20 42 e2                                      sub r2, r2, #1
004b90c0  00 10 21 e0                                      eor r1, r1, r0
004b90c4  01 10 43 e5                                      strb r1, [r3, #-1]
004b90c8  01 30 83 e2                                      add r3, r3, #1
004b90cc  f1 ff ff 8a                                      bhi #0x4b9098
004b90d0  cd ae ff eb                                      bl #0x4a4c0c
004b90d4  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b90d8  04 40 9d e5                                      ldr r4, [sp, #4]
004b90dc  14 50 a0 e3                                      mov r5, #0x14
004b90e0  07 30 96 e7                                      ldr r3, [r6, r7]
004b90e4  95 04 00 e0                                      mul r0, r5, r4
004b90e8  00 40 83 e5                                      str r4, [r3]
004b90ec  08 00 80 e2                                      add r0, r0, #8
004b90f0  01 10 a0 e3                                      mov r1, #1
004b90f4  1c 5d f9 eb                                      bl #0x31056c
004b90f8  00 00 54 e3                                      cmp r4, #0
004b90fc  00 50 80 e5                                      str r5, [r0]
004b9100  04 40 80 e5                                      str r4, [r0, #4]
004b9104  08 30 80 e2                                      add r3, r0, #8
004b9108  0a 00 00 0a                                      beq #0x4b9138
004b910c  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b9110  00 20 a0 e3                                      mov r2, #0
004b9114  02 c0 a0 e1                                      mov ip, r2
004b9118  01 10 96 e7                                      ldr r1, [r6, r1]
004b911c  08 10 81 e2                                      add r1, r1, #8
004b9120  01 20 82 e2                                      add r2, r2, #1
004b9124  04 00 52 e1                                      cmp r2, r4
004b9128  08 10 80 e5                                      str r1, [r0, #8]
004b912c  18 c0 80 e5                                      str ip, [r0, #0x18]
004b9130  14 00 80 e2                                      add r0, r0, #0x14
004b9134  f9 ff ff 1a                                      bne #0x4b9120
004b9138  07 20 96 e7                                      ldr r2, [r6, r7]
004b913c  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b9140  00 10 92 e5                                      ldr r1, [r2]
004b9144  08 20 96 e7                                      ldr r2, [r6, r8]
004b9148  00 00 51 e3                                      cmp r1, #0
004b914c  00 30 82 e5                                      str r3, [r2]
004b9150  0f 00 00 0a                                      beq #0x4b9194
004b9154  00 40 a0 e3                                      mov r4, #0
004b9158  04 50 a0 e1                                      mov r5, r4
004b915c  01 00 00 ea                                      b #0x4b9168
004b9160  08 30 96 e7                                      ldr r3, [r6, r8]
004b9164  00 30 93 e5                                      ldr r3, [r3]
004b9168  04 00 83 e0                                      add r0, r3, r4
004b916c  0a 10 a0 e1                                      mov r1, sl
004b9170  04 30 93 e7                                      ldr r3, [r3, r4]
004b9174  0f e0 a0 e1                                      mov lr, pc
004b9178  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b917c  07 30 96 e7                                      ldr r3, [r6, r7]
004b9180  01 50 85 e2                                      add r5, r5, #1
004b9184  14 40 84 e2                                      add r4, r4, #0x14
004b9188  00 30 93 e5                                      ldr r3, [r3]
004b918c  05 00 53 e1                                      cmp r3, r5
004b9190  f2 ff ff 8a                                      bhi #0x4b9160
004b9194  0c d0 8d e2                                      add sp, sp, #0xc
004b9198  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b919c  0c ba 4d 00 5c 4b 00 00 64 21 00 00 b0 2c 00 00  .byte 0x0c, 0xba, 0x4d, 0x00, 0x5c, 0x4b, 0x00, 0x00, 0x64, 0x21, 0x00, 0x00, 0xb0, 0x2c, 0x00, 0x00
