; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a6ad8, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ItemPowerTable
; alias: _ZN6Arrays14ItemPowerTable13finalizeNamesEv
; demangled: Arrays::ItemPowerTable::finalizeNames()
; decoder-mode: arm
004a6ad8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6adc  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a6ae0  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a6ae4  05 50 8f e0                                      add r5, pc, r5
004a6ae8  06 30 95 e7                                      ldr r3, [r5, r6]
004a6aec  00 30 93 e5                                      ldr r3, [r3]
004a6af0  00 00 53 e3                                      cmp r3, #0
004a6af4  1a 00 00 0a                                      beq #0x4a6b64
004a6af8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a6afc  07 20 95 e7                                      ldr r2, [r5, r7]
004a6b00  00 20 92 e5                                      ldr r2, [r2]
004a6b04  00 00 52 e3                                      cmp r2, #0
004a6b08  10 00 00 0a                                      beq #0x4a6b50
004a6b0c  00 40 a0 e3                                      mov r4, #0
004a6b10  01 00 00 ea                                      b #0x4a6b1c
004a6b14  06 30 95 e7                                      ldr r3, [r5, r6]
004a6b18  00 30 93 e5                                      ldr r3, [r3]
004a6b1c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a6b20  01 40 84 e2                                      add r4, r4, #1
004a6b24  00 00 50 e3                                      cmp r0, #0
004a6b28  02 00 00 0a                                      beq #0x4a6b38
004a6b2c  43 a6 f9 eb                                      bl #0x310440
004a6b30  06 30 95 e7                                      ldr r3, [r5, r6]
004a6b34  00 30 93 e5                                      ldr r3, [r3]
004a6b38  07 20 95 e7                                      ldr r2, [r5, r7]
004a6b3c  00 20 92 e5                                      ldr r2, [r2]
004a6b40  04 00 52 e1                                      cmp r2, r4
004a6b44  f2 ff ff 8a                                      bhi #0x4a6b14
004a6b48  00 00 53 e3                                      cmp r3, #0
004a6b4c  01 00 00 0a                                      beq #0x4a6b58
004a6b50  03 00 a0 e1                                      mov r0, r3
004a6b54  39 a6 f9 eb                                      bl #0x310440
004a6b58  06 30 95 e7                                      ldr r3, [r5, r6]
004a6b5c  00 20 a0 e3                                      mov r2, #0
004a6b60  00 20 83 e5                                      str r2, [r3]
004a6b64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6b68  ac df 4e 00 cc 12 00 00 88 11 00 00              .byte 0xac, 0xdf, 0x4e, 0x00, 0xcc, 0x12, 0x00, 0x00, 0x88, 0x11, 0x00, 0x00

; FUNCTION 0x004a6b74, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ItemPowerTable
; alias: _ZN6Arrays14ItemPowerTable8finalizeEv
; demangled: Arrays::ItemPowerTable::finalize()
; decoder-mode: arm
004a6b74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6b78  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a6b7c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a6b80  05 50 8f e0                                      add r5, pc, r5
004a6b84  07 30 95 e7                                      ldr r3, [r5, r7]
004a6b88  00 30 93 e5                                      ldr r3, [r3]
004a6b8c  00 00 53 e3                                      cmp r3, #0
004a6b90  2c 00 00 0a                                      beq #0x4a6c48
004a6b94  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a6b98  08 20 95 e7                                      ldr r2, [r5, r8]
004a6b9c  00 20 92 e5                                      ldr r2, [r2]
004a6ba0  00 00 52 e3                                      cmp r2, #0
004a6ba4  12 00 00 0a                                      beq #0x4a6bf4
004a6ba8  00 40 a0 e3                                      mov r4, #0
004a6bac  04 60 a0 e1                                      mov r6, r4
004a6bb0  01 00 00 ea                                      b #0x4a6bbc
004a6bb4  07 30 95 e7                                      ldr r3, [r5, r7]
004a6bb8  00 30 93 e5                                      ldr r3, [r3]
004a6bbc  04 00 83 e0                                      add r0, r3, r4
004a6bc0  04 30 93 e7                                      ldr r3, [r3, r4]
004a6bc4  0f e0 a0 e1                                      mov lr, pc
004a6bc8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a6bcc  08 30 95 e7                                      ldr r3, [r5, r8]
004a6bd0  01 60 86 e2                                      add r6, r6, #1
004a6bd4  28 40 84 e2                                      add r4, r4, #0x28
004a6bd8  00 30 93 e5                                      ldr r3, [r3]
004a6bdc  06 00 53 e1                                      cmp r3, r6
004a6be0  f3 ff ff 8a                                      bhi #0x4a6bb4
004a6be4  07 30 95 e7                                      ldr r3, [r5, r7]
004a6be8  00 30 93 e5                                      ldr r3, [r3]
004a6bec  00 00 53 e3                                      cmp r3, #0
004a6bf0  11 00 00 0a                                      beq #0x4a6c3c
004a6bf4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a6bf8  28 00 a0 e3                                      mov r0, #0x28
004a6bfc  90 32 20 e0                                      mla r0, r0, r2, r3
004a6c00  00 00 53 e1                                      cmp r3, r0
004a6c04  01 00 00 1a                                      bne #0x4a6c10
004a6c08  09 00 00 ea                                      b #0x4a6c34
004a6c0c  04 00 a0 e1                                      mov r0, r4
004a6c10  28 40 40 e2                                      sub r4, r0, #0x28
004a6c14  28 30 10 e5                                      ldr r3, [r0, #-0x28]
004a6c18  04 00 a0 e1                                      mov r0, r4
004a6c1c  0f e0 a0 e1                                      mov lr, pc
004a6c20  00 f0 93 e5                                      ldr pc, [r3]
004a6c24  07 30 95 e7                                      ldr r3, [r5, r7]
004a6c28  00 00 93 e5                                      ldr r0, [r3]
004a6c2c  04 00 50 e1                                      cmp r0, r4
004a6c30  f5 ff ff 1a                                      bne #0x4a6c0c
004a6c34  08 00 40 e2                                      sub r0, r0, #8
004a6c38  00 a6 f9 eb                                      bl #0x310440
004a6c3c  07 30 95 e7                                      ldr r3, [r5, r7]
004a6c40  00 20 a0 e3                                      mov r2, #0
004a6c44  00 20 83 e5                                      str r2, [r3]
004a6c48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6c4c  10 df 4e 00 e8 3b 00 00 88 11 00 00              .byte 0x10, 0xdf, 0x4e, 0x00, 0xe8, 0x3b, 0x00, 0x00, 0x88, 0x11, 0x00, 0x00

; FUNCTION 0x004b6630, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ItemPowerTable
; alias: _ZN6Arrays14ItemPowerTable9readNamesEP11IStreamBase
; demangled: Arrays::ItemPowerTable::readNames(IStreamBase*)
; decoder-mode: arm
004b6630  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b6634  00 70 a0 e1                                      mov r7, r0
004b6638  1c d0 4d e2                                      sub sp, sp, #0x1c
004b663c  25 c1 ff eb                                      bl #0x4a6ad8
004b6640  07 00 a0 e1                                      mov r0, r7
004b6644  11 75 f9 eb                                      bl #0x313a90
004b6648  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b664c  01 30 a0 e3                                      mov r3, #1
004b6650  00 00 53 e3                                      cmp r3, #0
004b6654  06 60 8f e0                                      add r6, pc, r6
004b6658  14 00 8d e5                                      str r0, [sp, #0x14]
004b665c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b6660  12 00 00 1a                                      bne #0x4b66b0
004b6664  14 30 8d e2                                      add r3, sp, #0x14
004b6668  02 20 83 e2                                      add r2, r3, #2
004b666c  01 30 83 e2                                      add r3, r3, #1
004b6670  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6674  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6678  03 00 52 e1                                      cmp r2, r3
004b667c  02 40 a0 e1                                      mov r4, r2
004b6680  01 10 20 e0                                      eor r1, r0, r1
004b6684  01 10 43 e5                                      strb r1, [r3, #-1]
004b6688  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b668c  00 10 21 e0                                      eor r1, r1, r0
004b6690  01 10 c2 e5                                      strb r1, [r2, #1]
004b6694  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6698  01 20 42 e2                                      sub r2, r2, #1
004b669c  00 10 21 e0                                      eor r1, r1, r0
004b66a0  01 10 43 e5                                      strb r1, [r3, #-1]
004b66a4  01 30 83 e2                                      add r3, r3, #1
004b66a8  f0 ff ff 8a                                      bhi #0x4b6670
004b66ac  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b66b0  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b66b4  03 30 96 e7                                      ldr r3, [r6, r3]
004b66b8  00 30 93 e5                                      ldr r3, [r3]
004b66bc  00 00 53 e1                                      cmp r3, r0
004b66c0  01 00 00 0a                                      beq #0x4b66cc
004b66c4  1c d0 8d e2                                      add sp, sp, #0x1c
004b66c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b66cc  00 01 a0 e1                                      lsl r0, r0, #2
004b66d0  01 10 a0 e3                                      mov r1, #1
004b66d4  a4 67 f9 eb                                      bl #0x31056c
004b66d8  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b66dc  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b66e0  09 30 96 e7                                      ldr r3, [r6, sb]
004b66e4  00 00 52 e3                                      cmp r2, #0
004b66e8  00 00 83 e5                                      str r0, [r3]
004b66ec  f4 ff ff 0a                                      beq #0x4b66c4
004b66f0  10 a0 8d e2                                      add sl, sp, #0x10
004b66f4  01 80 a0 e3                                      mov r8, #1
004b66f8  08 10 8a e0                                      add r1, sl, r8
004b66fc  02 30 8a e2                                      add r3, sl, #2
004b6700  00 40 a0 e3                                      mov r4, #0
004b6704  0a 00 8d e8                                      stm sp, {r1, r3}
004b6708  07 00 a0 e1                                      mov r0, r7
004b670c  0a 10 a0 e1                                      mov r1, sl
004b6710  a2 a2 fc eb                                      bl #0x3df1a0
004b6714  00 00 58 e3                                      cmp r8, #0
004b6718  0c 80 8d e5                                      str r8, [sp, #0xc]
004b671c  0f 00 00 1a                                      bne #0x4b6760
004b6720  00 30 9d e5                                      ldr r3, [sp]
004b6724  04 20 9d e5                                      ldr r2, [sp, #4]
004b6728  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b672c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6730  03 00 52 e1                                      cmp r2, r3
004b6734  01 10 20 e0                                      eor r1, r0, r1
004b6738  01 10 43 e5                                      strb r1, [r3, #-1]
004b673c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6740  00 10 21 e0                                      eor r1, r1, r0
004b6744  01 10 c2 e5                                      strb r1, [r2, #1]
004b6748  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b674c  01 20 42 e2                                      sub r2, r2, #1
004b6750  00 10 21 e0                                      eor r1, r1, r0
004b6754  01 10 43 e5                                      strb r1, [r3, #-1]
004b6758  01 30 83 e2                                      add r3, r3, #1
004b675c  f1 ff ff 8a                                      bhi #0x4b6728
004b6760  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b6764  09 50 96 e7                                      ldr r5, [r6, sb]
004b6768  01 10 a0 e3                                      mov r1, #1
004b676c  01 00 80 e0                                      add r0, r0, r1
004b6770  00 b0 95 e5                                      ldr fp, [r5]
004b6774  7c 67 f9 eb                                      bl #0x31056c
004b6778  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b677c  00 30 95 e5                                      ldr r3, [r5]
004b6780  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b6784  07 00 a0 e1                                      mov r0, r7
004b6788  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b678c  00 30 a0 e3                                      mov r3, #0
004b6790  2f 83 f9 eb                                      bl #0x317454
004b6794  00 30 95 e5                                      ldr r3, [r5]
004b6798  00 10 a0 e3                                      mov r1, #0
004b679c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b67a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b67a4  01 40 84 e2                                      add r4, r4, #1
004b67a8  03 10 c2 e7                                      strb r1, [r2, r3]
004b67ac  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b67b0  04 00 53 e1                                      cmp r3, r4
004b67b4  d3 ff ff 8a                                      bhi #0x4b6708
004b67b8  c1 ff ff ea                                      b #0x4b66c4
; mapping-symbol data/literal pool
004b67bc  3c e4 4d 00 88 11 00 00 cc 12 00 00              .byte 0x3c, 0xe4, 0x4d, 0x00, 0x88, 0x11, 0x00, 0x00, 0xcc, 0x12, 0x00, 0x00

; FUNCTION 0x004bab7c, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::ItemPowerTable
; alias: _ZN6Arrays14ItemPowerTable4readEP11IStreamBase
; demangled: Arrays::ItemPowerTable::read(IStreamBase*)
; decoder-mode: arm
004bab7c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bab80  0c d0 4d e2                                      sub sp, sp, #0xc
004bab84  00 a0 a0 e1                                      mov sl, r0
004bab88  c0 63 f9 eb                                      bl #0x313a90
004bab8c  24 61 9f e5                                      ldr r6, [pc, #0x124]
004bab90  01 30 a0 e3                                      mov r3, #1
004bab94  00 00 53 e3                                      cmp r3, #0
004bab98  04 00 8d e5                                      str r0, [sp, #4]
004bab9c  00 30 8d e5                                      str r3, [sp]
004baba0  06 60 8f e0                                      add r6, pc, r6
004baba4  10 00 00 1a                                      bne #0x4babec
004baba8  04 30 8d e2                                      add r3, sp, #4
004babac  02 20 83 e2                                      add r2, r3, #2
004babb0  01 30 83 e2                                      add r3, r3, #1
004babb4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004babb8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004babbc  03 00 52 e1                                      cmp r2, r3
004babc0  01 10 20 e0                                      eor r1, r0, r1
004babc4  01 10 43 e5                                      strb r1, [r3, #-1]
004babc8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004babcc  00 10 21 e0                                      eor r1, r1, r0
004babd0  01 10 c2 e5                                      strb r1, [r2, #1]
004babd4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004babd8  01 20 42 e2                                      sub r2, r2, #1
004babdc  00 10 21 e0                                      eor r1, r1, r0
004babe0  01 10 43 e5                                      strb r1, [r3, #-1]
004babe4  01 30 83 e2                                      add r3, r3, #1
004babe8  f1 ff ff 8a                                      bhi #0x4babb4
004babec  c8 70 9f e5                                      ldr r7, [pc, #0xc8]
004babf0  df af ff eb                                      bl #0x4a6b74
004babf4  04 40 9d e5                                      ldr r4, [sp, #4]
004babf8  07 30 96 e7                                      ldr r3, [r6, r7]
004babfc  01 10 a0 e3                                      mov r1, #1
004bac00  04 01 84 e0                                      add r0, r4, r4, lsl #2
004bac04  01 00 80 e0                                      add r0, r0, r1
004bac08  00 40 83 e5                                      str r4, [r3]
004bac0c  80 01 a0 e1                                      lsl r0, r0, #3
004bac10  55 56 f9 eb                                      bl #0x31056c
004bac14  28 30 a0 e3                                      mov r3, #0x28
004bac18  00 00 54 e3                                      cmp r4, #0
004bac1c  18 00 80 e8                                      stm r0, {r3, r4}
004bac20  08 30 80 e2                                      add r3, r0, #8
004bac24  0a 00 00 0a                                      beq #0x4bac54
004bac28  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bac2c  00 20 a0 e3                                      mov r2, #0
004bac30  02 c0 a0 e1                                      mov ip, r2
004bac34  01 10 96 e7                                      ldr r1, [r6, r1]
004bac38  08 10 81 e2                                      add r1, r1, #8
004bac3c  01 20 82 e2                                      add r2, r2, #1
004bac40  04 00 52 e1                                      cmp r2, r4
004bac44  08 10 80 e5                                      str r1, [r0, #8]
004bac48  18 c0 80 e5                                      str ip, [r0, #0x18]
004bac4c  28 00 80 e2                                      add r0, r0, #0x28
004bac50  f9 ff ff 1a                                      bne #0x4bac3c
004bac54  07 20 96 e7                                      ldr r2, [r6, r7]
004bac58  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bac5c  00 10 92 e5                                      ldr r1, [r2]
004bac60  08 20 96 e7                                      ldr r2, [r6, r8]
004bac64  00 00 51 e3                                      cmp r1, #0
004bac68  00 30 82 e5                                      str r3, [r2]
004bac6c  0f 00 00 0a                                      beq #0x4bacb0
004bac70  00 40 a0 e3                                      mov r4, #0
004bac74  04 50 a0 e1                                      mov r5, r4
004bac78  01 00 00 ea                                      b #0x4bac84
004bac7c  08 30 96 e7                                      ldr r3, [r6, r8]
004bac80  00 30 93 e5                                      ldr r3, [r3]
004bac84  04 00 83 e0                                      add r0, r3, r4
004bac88  0a 10 a0 e1                                      mov r1, sl
004bac8c  04 30 93 e7                                      ldr r3, [r3, r4]
004bac90  0f e0 a0 e1                                      mov lr, pc
004bac94  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bac98  07 30 96 e7                                      ldr r3, [r6, r7]
004bac9c  01 50 85 e2                                      add r5, r5, #1
004baca0  28 40 84 e2                                      add r4, r4, #0x28
004baca4  00 30 93 e5                                      ldr r3, [r3]
004baca8  05 00 53 e1                                      cmp r3, r5
004bacac  f2 ff ff 8a                                      bhi #0x4bac7c
004bacb0  0c d0 8d e2                                      add sp, sp, #0xc
004bacb4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bacb8  f0 9e 4d 00 88 11 00 00 c8 21 00 00 e8 3b 00 00  .byte 0xf0, 0x9e, 0x4d, 0x00, 0x88, 0x11, 0x00, 0x00, 0xc8, 0x21, 0x00, 0x00, 0xe8, 0x3b, 0x00, 0x00
