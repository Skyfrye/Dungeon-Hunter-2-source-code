; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a49fc, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::TrophyTable
; alias: _ZN6Arrays11TrophyTable13finalizeNamesEv
; demangled: Arrays::TrophyTable::finalizeNames()
; decoder-mode: arm
004a49fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4a00  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a4a04  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a4a08  05 50 8f e0                                      add r5, pc, r5
004a4a0c  06 30 95 e7                                      ldr r3, [r5, r6]
004a4a10  00 30 93 e5                                      ldr r3, [r3]
004a4a14  00 00 53 e3                                      cmp r3, #0
004a4a18  1a 00 00 0a                                      beq #0x4a4a88
004a4a1c  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a4a20  07 20 95 e7                                      ldr r2, [r5, r7]
004a4a24  00 20 92 e5                                      ldr r2, [r2]
004a4a28  00 00 52 e3                                      cmp r2, #0
004a4a2c  10 00 00 0a                                      beq #0x4a4a74
004a4a30  00 40 a0 e3                                      mov r4, #0
004a4a34  01 00 00 ea                                      b #0x4a4a40
004a4a38  06 30 95 e7                                      ldr r3, [r5, r6]
004a4a3c  00 30 93 e5                                      ldr r3, [r3]
004a4a40  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a4a44  01 40 84 e2                                      add r4, r4, #1
004a4a48  00 00 50 e3                                      cmp r0, #0
004a4a4c  02 00 00 0a                                      beq #0x4a4a5c
004a4a50  7a ae f9 eb                                      bl #0x310440
004a4a54  06 30 95 e7                                      ldr r3, [r5, r6]
004a4a58  00 30 93 e5                                      ldr r3, [r3]
004a4a5c  07 20 95 e7                                      ldr r2, [r5, r7]
004a4a60  00 20 92 e5                                      ldr r2, [r2]
004a4a64  04 00 52 e1                                      cmp r2, r4
004a4a68  f2 ff ff 8a                                      bhi #0x4a4a38
004a4a6c  00 00 53 e3                                      cmp r3, #0
004a4a70  01 00 00 0a                                      beq #0x4a4a7c
004a4a74  03 00 a0 e1                                      mov r0, r3
004a4a78  70 ae f9 eb                                      bl #0x310440
004a4a7c  06 30 95 e7                                      ldr r3, [r5, r6]
004a4a80  00 20 a0 e3                                      mov r2, #0
004a4a84  00 20 83 e5                                      str r2, [r3]
004a4a88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4a8c  88 00 4f 00 2c 10 00 00 fc 0e 00 00              .byte 0x88, 0x00, 0x4f, 0x00, 0x2c, 0x10, 0x00, 0x00, 0xfc, 0x0e, 0x00, 0x00

; FUNCTION 0x004a4a98, declared_size=216, range_size=216, mode=arm
; class-group: Arrays::TrophyTable
; alias: _ZN6Arrays11TrophyTable8finalizeEv
; demangled: Arrays::TrophyTable::finalize()
; decoder-mode: arm
004a4a98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4a9c  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004a4aa0  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
004a4aa4  05 50 8f e0                                      add r5, pc, r5
004a4aa8  06 30 95 e7                                      ldr r3, [r5, r6]
004a4aac  00 30 93 e5                                      ldr r3, [r3]
004a4ab0  00 00 53 e3                                      cmp r3, #0
004a4ab4  29 00 00 0a                                      beq #0x4a4b60
004a4ab8  ac 70 9f e5                                      ldr r7, [pc, #0xac]
004a4abc  07 20 95 e7                                      ldr r2, [r5, r7]
004a4ac0  00 20 92 e5                                      ldr r2, [r2]
004a4ac4  00 00 52 e3                                      cmp r2, #0
004a4ac8  10 00 00 0a                                      beq #0x4a4b10
004a4acc  00 40 a0 e3                                      mov r4, #0
004a4ad0  01 00 00 ea                                      b #0x4a4adc
004a4ad4  06 30 95 e7                                      ldr r3, [r5, r6]
004a4ad8  00 30 93 e5                                      ldr r3, [r3]
004a4adc  84 02 83 e0                                      add r0, r3, r4, lsl #5
004a4ae0  84 32 93 e7                                      ldr r3, [r3, r4, lsl #5]
004a4ae4  0f e0 a0 e1                                      mov lr, pc
004a4ae8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a4aec  07 30 95 e7                                      ldr r3, [r5, r7]
004a4af0  01 40 84 e2                                      add r4, r4, #1
004a4af4  00 30 93 e5                                      ldr r3, [r3]
004a4af8  04 00 53 e1                                      cmp r3, r4
004a4afc  f4 ff ff 8a                                      bhi #0x4a4ad4
004a4b00  06 30 95 e7                                      ldr r3, [r5, r6]
004a4b04  00 30 93 e5                                      ldr r3, [r3]
004a4b08  00 00 53 e3                                      cmp r3, #0
004a4b0c  10 00 00 0a                                      beq #0x4a4b54
004a4b10  04 00 13 e5                                      ldr r0, [r3, #-4]
004a4b14  80 02 83 e0                                      add r0, r3, r0, lsl #5
004a4b18  00 00 53 e1                                      cmp r3, r0
004a4b1c  01 00 00 1a                                      bne #0x4a4b28
004a4b20  09 00 00 ea                                      b #0x4a4b4c
004a4b24  04 00 a0 e1                                      mov r0, r4
004a4b28  20 40 40 e2                                      sub r4, r0, #0x20
004a4b2c  20 30 10 e5                                      ldr r3, [r0, #-0x20]
004a4b30  04 00 a0 e1                                      mov r0, r4
004a4b34  0f e0 a0 e1                                      mov lr, pc
004a4b38  00 f0 93 e5                                      ldr pc, [r3]
004a4b3c  06 30 95 e7                                      ldr r3, [r5, r6]
004a4b40  00 00 93 e5                                      ldr r0, [r3]
004a4b44  04 00 50 e1                                      cmp r0, r4
004a4b48  f5 ff ff 1a                                      bne #0x4a4b24
004a4b4c  08 00 40 e2                                      sub r0, r0, #8
004a4b50  3a ae f9 eb                                      bl #0x310440
004a4b54  06 30 95 e7                                      ldr r3, [r5, r6]
004a4b58  00 20 a0 e3                                      mov r2, #0
004a4b5c  00 20 83 e5                                      str r2, [r3]
004a4b60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4b64  ec ff 4e 00 b4 14 00 00 fc 0e 00 00              .byte 0xec, 0xff, 0x4e, 0x00, 0xb4, 0x14, 0x00, 0x00, 0xfc, 0x0e, 0x00, 0x00

; FUNCTION 0x004b1130, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::TrophyTable
; alias: _ZN6Arrays11TrophyTable9readNamesEP11IStreamBase
; demangled: Arrays::TrophyTable::readNames(IStreamBase*)
; decoder-mode: arm
004b1130  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b1134  00 70 a0 e1                                      mov r7, r0
004b1138  1c d0 4d e2                                      sub sp, sp, #0x1c
004b113c  2e ce ff eb                                      bl #0x4a49fc
004b1140  07 00 a0 e1                                      mov r0, r7
004b1144  51 8a f9 eb                                      bl #0x313a90
004b1148  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b114c  01 30 a0 e3                                      mov r3, #1
004b1150  00 00 53 e3                                      cmp r3, #0
004b1154  06 60 8f e0                                      add r6, pc, r6
004b1158  14 00 8d e5                                      str r0, [sp, #0x14]
004b115c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b1160  12 00 00 1a                                      bne #0x4b11b0
004b1164  14 30 8d e2                                      add r3, sp, #0x14
004b1168  02 20 83 e2                                      add r2, r3, #2
004b116c  01 30 83 e2                                      add r3, r3, #1
004b1170  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1174  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1178  03 00 52 e1                                      cmp r2, r3
004b117c  02 40 a0 e1                                      mov r4, r2
004b1180  01 10 20 e0                                      eor r1, r0, r1
004b1184  01 10 43 e5                                      strb r1, [r3, #-1]
004b1188  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b118c  00 10 21 e0                                      eor r1, r1, r0
004b1190  01 10 c2 e5                                      strb r1, [r2, #1]
004b1194  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1198  01 20 42 e2                                      sub r2, r2, #1
004b119c  00 10 21 e0                                      eor r1, r1, r0
004b11a0  01 10 43 e5                                      strb r1, [r3, #-1]
004b11a4  01 30 83 e2                                      add r3, r3, #1
004b11a8  f0 ff ff 8a                                      bhi #0x4b1170
004b11ac  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b11b0  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b11b4  03 30 96 e7                                      ldr r3, [r6, r3]
004b11b8  00 30 93 e5                                      ldr r3, [r3]
004b11bc  00 00 53 e1                                      cmp r3, r0
004b11c0  01 00 00 0a                                      beq #0x4b11cc
004b11c4  1c d0 8d e2                                      add sp, sp, #0x1c
004b11c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b11cc  00 01 a0 e1                                      lsl r0, r0, #2
004b11d0  01 10 a0 e3                                      mov r1, #1
004b11d4  e4 7c f9 eb                                      bl #0x31056c
004b11d8  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b11dc  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b11e0  09 30 96 e7                                      ldr r3, [r6, sb]
004b11e4  00 00 52 e3                                      cmp r2, #0
004b11e8  00 00 83 e5                                      str r0, [r3]
004b11ec  f4 ff ff 0a                                      beq #0x4b11c4
004b11f0  10 a0 8d e2                                      add sl, sp, #0x10
004b11f4  01 80 a0 e3                                      mov r8, #1
004b11f8  08 10 8a e0                                      add r1, sl, r8
004b11fc  02 30 8a e2                                      add r3, sl, #2
004b1200  00 40 a0 e3                                      mov r4, #0
004b1204  0a 00 8d e8                                      stm sp, {r1, r3}
004b1208  07 00 a0 e1                                      mov r0, r7
004b120c  0a 10 a0 e1                                      mov r1, sl
004b1210  e2 b7 fc eb                                      bl #0x3df1a0
004b1214  00 00 58 e3                                      cmp r8, #0
004b1218  0c 80 8d e5                                      str r8, [sp, #0xc]
004b121c  0f 00 00 1a                                      bne #0x4b1260
004b1220  00 30 9d e5                                      ldr r3, [sp]
004b1224  04 20 9d e5                                      ldr r2, [sp, #4]
004b1228  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b122c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1230  03 00 52 e1                                      cmp r2, r3
004b1234  01 10 20 e0                                      eor r1, r0, r1
004b1238  01 10 43 e5                                      strb r1, [r3, #-1]
004b123c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1240  00 10 21 e0                                      eor r1, r1, r0
004b1244  01 10 c2 e5                                      strb r1, [r2, #1]
004b1248  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b124c  01 20 42 e2                                      sub r2, r2, #1
004b1250  00 10 21 e0                                      eor r1, r1, r0
004b1254  01 10 43 e5                                      strb r1, [r3, #-1]
004b1258  01 30 83 e2                                      add r3, r3, #1
004b125c  f1 ff ff 8a                                      bhi #0x4b1228
004b1260  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b1264  09 50 96 e7                                      ldr r5, [r6, sb]
004b1268  01 10 a0 e3                                      mov r1, #1
004b126c  01 00 80 e0                                      add r0, r0, r1
004b1270  00 b0 95 e5                                      ldr fp, [r5]
004b1274  bc 7c f9 eb                                      bl #0x31056c
004b1278  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b127c  00 30 95 e5                                      ldr r3, [r5]
004b1280  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b1284  07 00 a0 e1                                      mov r0, r7
004b1288  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b128c  00 30 a0 e3                                      mov r3, #0
004b1290  6f 98 f9 eb                                      bl #0x317454
004b1294  00 30 95 e5                                      ldr r3, [r5]
004b1298  00 10 a0 e3                                      mov r1, #0
004b129c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b12a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b12a4  01 40 84 e2                                      add r4, r4, #1
004b12a8  03 10 c2 e7                                      strb r1, [r2, r3]
004b12ac  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b12b0  04 00 53 e1                                      cmp r3, r4
004b12b4  d3 ff ff 8a                                      bhi #0x4b1208
004b12b8  c1 ff ff ea                                      b #0x4b11c4
; mapping-symbol data/literal pool
004b12bc  3c 39 4e 00 fc 0e 00 00 2c 10 00 00              .byte 0x3c, 0x39, 0x4e, 0x00, 0xfc, 0x0e, 0x00, 0x00, 0x2c, 0x10, 0x00, 0x00

; FUNCTION 0x004b8f28, declared_size=312, range_size=312, mode=arm
; class-group: Arrays::TrophyTable
; alias: _ZN6Arrays11TrophyTable4readEP11IStreamBase
; demangled: Arrays::TrophyTable::read(IStreamBase*)
; decoder-mode: arm
004b8f28  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004b8f2c  08 d0 4d e2                                      sub sp, sp, #8
004b8f30  00 80 a0 e1                                      mov r8, r0
004b8f34  d5 6a f9 eb                                      bl #0x313a90
004b8f38  10 51 9f e5                                      ldr r5, [pc, #0x110]
004b8f3c  01 30 a0 e3                                      mov r3, #1
004b8f40  00 00 53 e3                                      cmp r3, #0
004b8f44  04 00 8d e5                                      str r0, [sp, #4]
004b8f48  00 30 8d e5                                      str r3, [sp]
004b8f4c  05 50 8f e0                                      add r5, pc, r5
004b8f50  10 00 00 1a                                      bne #0x4b8f98
004b8f54  04 30 8d e2                                      add r3, sp, #4
004b8f58  02 20 83 e2                                      add r2, r3, #2
004b8f5c  01 30 83 e2                                      add r3, r3, #1
004b8f60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8f64  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b8f68  03 00 52 e1                                      cmp r2, r3
004b8f6c  01 10 20 e0                                      eor r1, r0, r1
004b8f70  01 10 43 e5                                      strb r1, [r3, #-1]
004b8f74  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8f78  00 10 21 e0                                      eor r1, r1, r0
004b8f7c  01 10 c2 e5                                      strb r1, [r2, #1]
004b8f80  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b8f84  01 20 42 e2                                      sub r2, r2, #1
004b8f88  00 10 21 e0                                      eor r1, r1, r0
004b8f8c  01 10 43 e5                                      strb r1, [r3, #-1]
004b8f90  01 30 83 e2                                      add r3, r3, #1
004b8f94  f1 ff ff 8a                                      bhi #0x4b8f60
004b8f98  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
004b8f9c  bd ae ff eb                                      bl #0x4a4a98
004b8fa0  04 40 9d e5                                      ldr r4, [sp, #4]
004b8fa4  06 30 95 e7                                      ldr r3, [r5, r6]
004b8fa8  01 10 a0 e3                                      mov r1, #1
004b8fac  84 02 a0 e1                                      lsl r0, r4, #5
004b8fb0  00 40 83 e5                                      str r4, [r3]
004b8fb4  08 00 80 e2                                      add r0, r0, #8
004b8fb8  6b 5d f9 eb                                      bl #0x31056c
004b8fbc  20 30 a0 e3                                      mov r3, #0x20
004b8fc0  00 00 54 e3                                      cmp r4, #0
004b8fc4  18 00 80 e8                                      stm r0, {r3, r4}
004b8fc8  08 30 80 e2                                      add r3, r0, #8
004b8fcc  08 00 00 0a                                      beq #0x4b8ff4
004b8fd0  80 10 9f e5                                      ldr r1, [pc, #0x80]
004b8fd4  00 20 a0 e3                                      mov r2, #0
004b8fd8  01 10 95 e7                                      ldr r1, [r5, r1]
004b8fdc  08 10 81 e2                                      add r1, r1, #8
004b8fe0  01 20 82 e2                                      add r2, r2, #1
004b8fe4  04 00 52 e1                                      cmp r2, r4
004b8fe8  08 10 80 e5                                      str r1, [r0, #8]
004b8fec  20 00 80 e2                                      add r0, r0, #0x20
004b8ff0  fa ff ff 1a                                      bne #0x4b8fe0
004b8ff4  06 20 95 e7                                      ldr r2, [r5, r6]
004b8ff8  5c 70 9f e5                                      ldr r7, [pc, #0x5c]
004b8ffc  00 10 92 e5                                      ldr r1, [r2]
004b9000  07 20 95 e7                                      ldr r2, [r5, r7]
004b9004  00 00 51 e3                                      cmp r1, #0
004b9008  00 30 82 e5                                      str r3, [r2]
004b900c  0d 00 00 0a                                      beq #0x4b9048
004b9010  00 40 a0 e3                                      mov r4, #0
004b9014  01 00 00 ea                                      b #0x4b9020
004b9018  07 30 95 e7                                      ldr r3, [r5, r7]
004b901c  00 30 93 e5                                      ldr r3, [r3]
004b9020  84 02 83 e0                                      add r0, r3, r4, lsl #5
004b9024  08 10 a0 e1                                      mov r1, r8
004b9028  84 32 93 e7                                      ldr r3, [r3, r4, lsl #5]
004b902c  0f e0 a0 e1                                      mov lr, pc
004b9030  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b9034  06 30 95 e7                                      ldr r3, [r5, r6]
004b9038  01 40 84 e2                                      add r4, r4, #1
004b903c  00 30 93 e5                                      ldr r3, [r3]
004b9040  04 00 53 e1                                      cmp r3, r4
004b9044  f3 ff ff 8a                                      bhi #0x4b9018
004b9048  08 d0 8d e2                                      add sp, sp, #8
004b904c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004b9050  44 bb 4d 00 fc 0e 00 00 0c 1c 00 00 b4 14 00 00  .byte 0x44, 0xbb, 0x4d, 0x00, 0xfc, 0x0e, 0x00, 0x00, 0x0c, 0x1c, 0x00, 0x00, 0xb4, 0x14, 0x00, 0x00
