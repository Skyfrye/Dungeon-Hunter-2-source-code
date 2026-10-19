; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a7258, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::TriggerPlates
; alias: _ZN6Arrays13TriggerPlates13finalizeNamesEv
; demangled: Arrays::TriggerPlates::finalizeNames()
; decoder-mode: arm
004a7258  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a725c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a7260  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a7264  05 50 8f e0                                      add r5, pc, r5
004a7268  06 30 95 e7                                      ldr r3, [r5, r6]
004a726c  00 30 93 e5                                      ldr r3, [r3]
004a7270  00 00 53 e3                                      cmp r3, #0
004a7274  1a 00 00 0a                                      beq #0x4a72e4
004a7278  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a727c  07 20 95 e7                                      ldr r2, [r5, r7]
004a7280  00 20 92 e5                                      ldr r2, [r2]
004a7284  00 00 52 e3                                      cmp r2, #0
004a7288  10 00 00 0a                                      beq #0x4a72d0
004a728c  00 40 a0 e3                                      mov r4, #0
004a7290  01 00 00 ea                                      b #0x4a729c
004a7294  06 30 95 e7                                      ldr r3, [r5, r6]
004a7298  00 30 93 e5                                      ldr r3, [r3]
004a729c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a72a0  01 40 84 e2                                      add r4, r4, #1
004a72a4  00 00 50 e3                                      cmp r0, #0
004a72a8  02 00 00 0a                                      beq #0x4a72b8
004a72ac  63 a4 f9 eb                                      bl #0x310440
004a72b0  06 30 95 e7                                      ldr r3, [r5, r6]
004a72b4  00 30 93 e5                                      ldr r3, [r3]
004a72b8  07 20 95 e7                                      ldr r2, [r5, r7]
004a72bc  00 20 92 e5                                      ldr r2, [r2]
004a72c0  04 00 52 e1                                      cmp r2, r4
004a72c4  f2 ff ff 8a                                      bhi #0x4a7294
004a72c8  00 00 53 e3                                      cmp r3, #0
004a72cc  01 00 00 0a                                      beq #0x4a72d8
004a72d0  03 00 a0 e1                                      mov r0, r3
004a72d4  59 a4 f9 eb                                      bl #0x310440
004a72d8  06 30 95 e7                                      ldr r3, [r5, r6]
004a72dc  00 20 a0 e3                                      mov r2, #0
004a72e0  00 20 83 e5                                      str r2, [r3]
004a72e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a72e8  2c d8 4e 00 48 15 00 00 c8 27 00 00              .byte 0x2c, 0xd8, 0x4e, 0x00, 0x48, 0x15, 0x00, 0x00, 0xc8, 0x27, 0x00, 0x00

; FUNCTION 0x004a72f4, declared_size=216, range_size=216, mode=arm
; class-group: Arrays::TriggerPlates
; alias: _ZN6Arrays13TriggerPlates8finalizeEv
; demangled: Arrays::TriggerPlates::finalize()
; decoder-mode: arm
004a72f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a72f8  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004a72fc  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
004a7300  05 50 8f e0                                      add r5, pc, r5
004a7304  06 30 95 e7                                      ldr r3, [r5, r6]
004a7308  00 30 93 e5                                      ldr r3, [r3]
004a730c  00 00 53 e3                                      cmp r3, #0
004a7310  29 00 00 0a                                      beq #0x4a73bc
004a7314  ac 70 9f e5                                      ldr r7, [pc, #0xac]
004a7318  07 20 95 e7                                      ldr r2, [r5, r7]
004a731c  00 20 92 e5                                      ldr r2, [r2]
004a7320  00 00 52 e3                                      cmp r2, #0
004a7324  10 00 00 0a                                      beq #0x4a736c
004a7328  00 40 a0 e3                                      mov r4, #0
004a732c  01 00 00 ea                                      b #0x4a7338
004a7330  06 30 95 e7                                      ldr r3, [r5, r6]
004a7334  00 30 93 e5                                      ldr r3, [r3]
004a7338  84 02 83 e0                                      add r0, r3, r4, lsl #5
004a733c  84 32 93 e7                                      ldr r3, [r3, r4, lsl #5]
004a7340  0f e0 a0 e1                                      mov lr, pc
004a7344  08 f0 93 e5                                      ldr pc, [r3, #8]
004a7348  07 30 95 e7                                      ldr r3, [r5, r7]
004a734c  01 40 84 e2                                      add r4, r4, #1
004a7350  00 30 93 e5                                      ldr r3, [r3]
004a7354  04 00 53 e1                                      cmp r3, r4
004a7358  f4 ff ff 8a                                      bhi #0x4a7330
004a735c  06 30 95 e7                                      ldr r3, [r5, r6]
004a7360  00 30 93 e5                                      ldr r3, [r3]
004a7364  00 00 53 e3                                      cmp r3, #0
004a7368  10 00 00 0a                                      beq #0x4a73b0
004a736c  04 00 13 e5                                      ldr r0, [r3, #-4]
004a7370  80 02 83 e0                                      add r0, r3, r0, lsl #5
004a7374  00 00 53 e1                                      cmp r3, r0
004a7378  01 00 00 1a                                      bne #0x4a7384
004a737c  09 00 00 ea                                      b #0x4a73a8
004a7380  04 00 a0 e1                                      mov r0, r4
004a7384  20 40 40 e2                                      sub r4, r0, #0x20
004a7388  20 30 10 e5                                      ldr r3, [r0, #-0x20]
004a738c  04 00 a0 e1                                      mov r0, r4
004a7390  0f e0 a0 e1                                      mov lr, pc
004a7394  00 f0 93 e5                                      ldr pc, [r3]
004a7398  06 30 95 e7                                      ldr r3, [r5, r6]
004a739c  00 00 93 e5                                      ldr r0, [r3]
004a73a0  04 00 50 e1                                      cmp r0, r4
004a73a4  f5 ff ff 1a                                      bne #0x4a7380
004a73a8  08 00 40 e2                                      sub r0, r0, #8
004a73ac  23 a4 f9 eb                                      bl #0x310440
004a73b0  06 30 95 e7                                      ldr r3, [r5, r6]
004a73b4  00 20 a0 e3                                      mov r2, #0
004a73b8  00 20 83 e5                                      str r2, [r3]
004a73bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a73c0  90 d7 4e 00 70 0a 00 00 c8 27 00 00              .byte 0x90, 0xd7, 0x4e, 0x00, 0x70, 0x0a, 0x00, 0x00, 0xc8, 0x27, 0x00, 0x00

; FUNCTION 0x004b6e30, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::TriggerPlates
; alias: _ZN6Arrays13TriggerPlates9readNamesEP11IStreamBase
; demangled: Arrays::TriggerPlates::readNames(IStreamBase*)
; decoder-mode: arm
004b6e30  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b6e34  00 70 a0 e1                                      mov r7, r0
004b6e38  1c d0 4d e2                                      sub sp, sp, #0x1c
004b6e3c  05 c1 ff eb                                      bl #0x4a7258
004b6e40  07 00 a0 e1                                      mov r0, r7
004b6e44  11 73 f9 eb                                      bl #0x313a90
004b6e48  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b6e4c  01 30 a0 e3                                      mov r3, #1
004b6e50  00 00 53 e3                                      cmp r3, #0
004b6e54  06 60 8f e0                                      add r6, pc, r6
004b6e58  14 00 8d e5                                      str r0, [sp, #0x14]
004b6e5c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b6e60  12 00 00 1a                                      bne #0x4b6eb0
004b6e64  14 30 8d e2                                      add r3, sp, #0x14
004b6e68  02 20 83 e2                                      add r2, r3, #2
004b6e6c  01 30 83 e2                                      add r3, r3, #1
004b6e70  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6e74  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6e78  03 00 52 e1                                      cmp r2, r3
004b6e7c  02 40 a0 e1                                      mov r4, r2
004b6e80  01 10 20 e0                                      eor r1, r0, r1
004b6e84  01 10 43 e5                                      strb r1, [r3, #-1]
004b6e88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6e8c  00 10 21 e0                                      eor r1, r1, r0
004b6e90  01 10 c2 e5                                      strb r1, [r2, #1]
004b6e94  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6e98  01 20 42 e2                                      sub r2, r2, #1
004b6e9c  00 10 21 e0                                      eor r1, r1, r0
004b6ea0  01 10 43 e5                                      strb r1, [r3, #-1]
004b6ea4  01 30 83 e2                                      add r3, r3, #1
004b6ea8  f0 ff ff 8a                                      bhi #0x4b6e70
004b6eac  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b6eb0  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b6eb4  03 30 96 e7                                      ldr r3, [r6, r3]
004b6eb8  00 30 93 e5                                      ldr r3, [r3]
004b6ebc  00 00 53 e1                                      cmp r3, r0
004b6ec0  01 00 00 0a                                      beq #0x4b6ecc
004b6ec4  1c d0 8d e2                                      add sp, sp, #0x1c
004b6ec8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b6ecc  00 01 a0 e1                                      lsl r0, r0, #2
004b6ed0  01 10 a0 e3                                      mov r1, #1
004b6ed4  a4 65 f9 eb                                      bl #0x31056c
004b6ed8  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b6edc  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b6ee0  09 30 96 e7                                      ldr r3, [r6, sb]
004b6ee4  00 00 52 e3                                      cmp r2, #0
004b6ee8  00 00 83 e5                                      str r0, [r3]
004b6eec  f4 ff ff 0a                                      beq #0x4b6ec4
004b6ef0  10 a0 8d e2                                      add sl, sp, #0x10
004b6ef4  01 80 a0 e3                                      mov r8, #1
004b6ef8  08 10 8a e0                                      add r1, sl, r8
004b6efc  02 30 8a e2                                      add r3, sl, #2
004b6f00  00 40 a0 e3                                      mov r4, #0
004b6f04  0a 00 8d e8                                      stm sp, {r1, r3}
004b6f08  07 00 a0 e1                                      mov r0, r7
004b6f0c  0a 10 a0 e1                                      mov r1, sl
004b6f10  a2 a0 fc eb                                      bl #0x3df1a0
004b6f14  00 00 58 e3                                      cmp r8, #0
004b6f18  0c 80 8d e5                                      str r8, [sp, #0xc]
004b6f1c  0f 00 00 1a                                      bne #0x4b6f60
004b6f20  00 30 9d e5                                      ldr r3, [sp]
004b6f24  04 20 9d e5                                      ldr r2, [sp, #4]
004b6f28  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6f2c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6f30  03 00 52 e1                                      cmp r2, r3
004b6f34  01 10 20 e0                                      eor r1, r0, r1
004b6f38  01 10 43 e5                                      strb r1, [r3, #-1]
004b6f3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6f40  00 10 21 e0                                      eor r1, r1, r0
004b6f44  01 10 c2 e5                                      strb r1, [r2, #1]
004b6f48  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6f4c  01 20 42 e2                                      sub r2, r2, #1
004b6f50  00 10 21 e0                                      eor r1, r1, r0
004b6f54  01 10 43 e5                                      strb r1, [r3, #-1]
004b6f58  01 30 83 e2                                      add r3, r3, #1
004b6f5c  f1 ff ff 8a                                      bhi #0x4b6f28
004b6f60  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b6f64  09 50 96 e7                                      ldr r5, [r6, sb]
004b6f68  01 10 a0 e3                                      mov r1, #1
004b6f6c  01 00 80 e0                                      add r0, r0, r1
004b6f70  00 b0 95 e5                                      ldr fp, [r5]
004b6f74  7c 65 f9 eb                                      bl #0x31056c
004b6f78  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b6f7c  00 30 95 e5                                      ldr r3, [r5]
004b6f80  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b6f84  07 00 a0 e1                                      mov r0, r7
004b6f88  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b6f8c  00 30 a0 e3                                      mov r3, #0
004b6f90  2f 81 f9 eb                                      bl #0x317454
004b6f94  00 30 95 e5                                      ldr r3, [r5]
004b6f98  00 10 a0 e3                                      mov r1, #0
004b6f9c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b6fa0  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b6fa4  01 40 84 e2                                      add r4, r4, #1
004b6fa8  03 10 c2 e7                                      strb r1, [r2, r3]
004b6fac  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b6fb0  04 00 53 e1                                      cmp r3, r4
004b6fb4  d3 ff ff 8a                                      bhi #0x4b6f08
004b6fb8  c1 ff ff ea                                      b #0x4b6ec4
; mapping-symbol data/literal pool
004b6fbc  3c dc 4d 00 c8 27 00 00 48 15 00 00              .byte 0x3c, 0xdc, 0x4d, 0x00, 0xc8, 0x27, 0x00, 0x00, 0x48, 0x15, 0x00, 0x00

; FUNCTION 0x004bb1e8, declared_size=312, range_size=312, mode=arm
; class-group: Arrays::TriggerPlates
; alias: _ZN6Arrays13TriggerPlates4readEP11IStreamBase
; demangled: Arrays::TriggerPlates::read(IStreamBase*)
; decoder-mode: arm
004bb1e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004bb1ec  08 d0 4d e2                                      sub sp, sp, #8
004bb1f0  00 80 a0 e1                                      mov r8, r0
004bb1f4  25 62 f9 eb                                      bl #0x313a90
004bb1f8  10 51 9f e5                                      ldr r5, [pc, #0x110]
004bb1fc  01 30 a0 e3                                      mov r3, #1
004bb200  00 00 53 e3                                      cmp r3, #0
004bb204  04 00 8d e5                                      str r0, [sp, #4]
004bb208  00 30 8d e5                                      str r3, [sp]
004bb20c  05 50 8f e0                                      add r5, pc, r5
004bb210  10 00 00 1a                                      bne #0x4bb258
004bb214  04 30 8d e2                                      add r3, sp, #4
004bb218  02 20 83 e2                                      add r2, r3, #2
004bb21c  01 30 83 e2                                      add r3, r3, #1
004bb220  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb224  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bb228  03 00 52 e1                                      cmp r2, r3
004bb22c  01 10 20 e0                                      eor r1, r0, r1
004bb230  01 10 43 e5                                      strb r1, [r3, #-1]
004bb234  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb238  00 10 21 e0                                      eor r1, r1, r0
004bb23c  01 10 c2 e5                                      strb r1, [r2, #1]
004bb240  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bb244  01 20 42 e2                                      sub r2, r2, #1
004bb248  00 10 21 e0                                      eor r1, r1, r0
004bb24c  01 10 43 e5                                      strb r1, [r3, #-1]
004bb250  01 30 83 e2                                      add r3, r3, #1
004bb254  f1 ff ff 8a                                      bhi #0x4bb220
004bb258  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
004bb25c  24 b0 ff eb                                      bl #0x4a72f4
004bb260  04 40 9d e5                                      ldr r4, [sp, #4]
004bb264  06 30 95 e7                                      ldr r3, [r5, r6]
004bb268  01 10 a0 e3                                      mov r1, #1
004bb26c  84 02 a0 e1                                      lsl r0, r4, #5
004bb270  00 40 83 e5                                      str r4, [r3]
004bb274  08 00 80 e2                                      add r0, r0, #8
004bb278  bb 54 f9 eb                                      bl #0x31056c
004bb27c  20 30 a0 e3                                      mov r3, #0x20
004bb280  00 00 54 e3                                      cmp r4, #0
004bb284  18 00 80 e8                                      stm r0, {r3, r4}
004bb288  08 30 80 e2                                      add r3, r0, #8
004bb28c  08 00 00 0a                                      beq #0x4bb2b4
004bb290  80 10 9f e5                                      ldr r1, [pc, #0x80]
004bb294  00 20 a0 e3                                      mov r2, #0
004bb298  01 10 95 e7                                      ldr r1, [r5, r1]
004bb29c  08 10 81 e2                                      add r1, r1, #8
004bb2a0  01 20 82 e2                                      add r2, r2, #1
004bb2a4  04 00 52 e1                                      cmp r2, r4
004bb2a8  08 10 80 e5                                      str r1, [r0, #8]
004bb2ac  20 00 80 e2                                      add r0, r0, #0x20
004bb2b0  fa ff ff 1a                                      bne #0x4bb2a0
004bb2b4  06 20 95 e7                                      ldr r2, [r5, r6]
004bb2b8  5c 70 9f e5                                      ldr r7, [pc, #0x5c]
004bb2bc  00 10 92 e5                                      ldr r1, [r2]
004bb2c0  07 20 95 e7                                      ldr r2, [r5, r7]
004bb2c4  00 00 51 e3                                      cmp r1, #0
004bb2c8  00 30 82 e5                                      str r3, [r2]
004bb2cc  0d 00 00 0a                                      beq #0x4bb308
004bb2d0  00 40 a0 e3                                      mov r4, #0
004bb2d4  01 00 00 ea                                      b #0x4bb2e0
004bb2d8  07 30 95 e7                                      ldr r3, [r5, r7]
004bb2dc  00 30 93 e5                                      ldr r3, [r3]
004bb2e0  84 02 83 e0                                      add r0, r3, r4, lsl #5
004bb2e4  08 10 a0 e1                                      mov r1, r8
004bb2e8  84 32 93 e7                                      ldr r3, [r3, r4, lsl #5]
004bb2ec  0f e0 a0 e1                                      mov lr, pc
004bb2f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bb2f4  06 30 95 e7                                      ldr r3, [r5, r6]
004bb2f8  01 40 84 e2                                      add r4, r4, #1
004bb2fc  00 30 93 e5                                      ldr r3, [r3]
004bb300  04 00 53 e1                                      cmp r3, r4
004bb304  f3 ff ff 8a                                      bhi #0x4bb2d8
004bb308  08 d0 8d e2                                      add sp, sp, #8
004bb30c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004bb310  84 98 4d 00 c8 27 00 00 cc 4b 00 00 70 0a 00 00  .byte 0x84, 0x98, 0x4d, 0x00, 0xc8, 0x27, 0x00, 0x00, 0xcc, 0x4b, 0x00, 0x00, 0x70, 0x0a, 0x00, 0x00
