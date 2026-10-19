; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a4cf0, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::Sounds_bak
; alias: _ZN6Arrays10Sounds_bak13finalizeNamesEv
; demangled: Arrays::Sounds_bak::finalizeNames()
; decoder-mode: arm
004a4cf0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4cf4  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a4cf8  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a4cfc  05 50 8f e0                                      add r5, pc, r5
004a4d00  06 30 95 e7                                      ldr r3, [r5, r6]
004a4d04  00 30 93 e5                                      ldr r3, [r3]
004a4d08  00 00 53 e3                                      cmp r3, #0
004a4d0c  1a 00 00 0a                                      beq #0x4a4d7c
004a4d10  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a4d14  07 20 95 e7                                      ldr r2, [r5, r7]
004a4d18  00 20 92 e5                                      ldr r2, [r2]
004a4d1c  00 00 52 e3                                      cmp r2, #0
004a4d20  10 00 00 0a                                      beq #0x4a4d68
004a4d24  00 40 a0 e3                                      mov r4, #0
004a4d28  01 00 00 ea                                      b #0x4a4d34
004a4d2c  06 30 95 e7                                      ldr r3, [r5, r6]
004a4d30  00 30 93 e5                                      ldr r3, [r3]
004a4d34  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a4d38  01 40 84 e2                                      add r4, r4, #1
004a4d3c  00 00 50 e3                                      cmp r0, #0
004a4d40  02 00 00 0a                                      beq #0x4a4d50
004a4d44  bd ad f9 eb                                      bl #0x310440
004a4d48  06 30 95 e7                                      ldr r3, [r5, r6]
004a4d4c  00 30 93 e5                                      ldr r3, [r3]
004a4d50  07 20 95 e7                                      ldr r2, [r5, r7]
004a4d54  00 20 92 e5                                      ldr r2, [r2]
004a4d58  04 00 52 e1                                      cmp r2, r4
004a4d5c  f2 ff ff 8a                                      bhi #0x4a4d2c
004a4d60  00 00 53 e3                                      cmp r3, #0
004a4d64  01 00 00 0a                                      beq #0x4a4d70
004a4d68  03 00 a0 e1                                      mov r0, r3
004a4d6c  b3 ad f9 eb                                      bl #0x310440
004a4d70  06 30 95 e7                                      ldr r3, [r5, r6]
004a4d74  00 20 a0 e3                                      mov r2, #0
004a4d78  00 20 83 e5                                      str r2, [r3]
004a4d7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4d80  94 fd 4e 00 2c 0a 00 00 fc 05 00 00              .byte 0x94, 0xfd, 0x4e, 0x00, 0x2c, 0x0a, 0x00, 0x00, 0xfc, 0x05, 0x00, 0x00

; FUNCTION 0x004a4d8c, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::Sounds_bak
; alias: _ZN6Arrays10Sounds_bak8finalizeEv
; demangled: Arrays::Sounds_bak::finalize()
; decoder-mode: arm
004a4d8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4d90  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a4d94  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a4d98  05 50 8f e0                                      add r5, pc, r5
004a4d9c  07 30 95 e7                                      ldr r3, [r5, r7]
004a4da0  00 30 93 e5                                      ldr r3, [r3]
004a4da4  00 00 53 e3                                      cmp r3, #0
004a4da8  2c 00 00 0a                                      beq #0x4a4e60
004a4dac  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a4db0  08 20 95 e7                                      ldr r2, [r5, r8]
004a4db4  00 20 92 e5                                      ldr r2, [r2]
004a4db8  00 00 52 e3                                      cmp r2, #0
004a4dbc  12 00 00 0a                                      beq #0x4a4e0c
004a4dc0  00 40 a0 e3                                      mov r4, #0
004a4dc4  04 60 a0 e1                                      mov r6, r4
004a4dc8  01 00 00 ea                                      b #0x4a4dd4
004a4dcc  07 30 95 e7                                      ldr r3, [r5, r7]
004a4dd0  00 30 93 e5                                      ldr r3, [r3]
004a4dd4  04 00 83 e0                                      add r0, r3, r4
004a4dd8  04 30 93 e7                                      ldr r3, [r3, r4]
004a4ddc  0f e0 a0 e1                                      mov lr, pc
004a4de0  08 f0 93 e5                                      ldr pc, [r3, #8]
004a4de4  08 30 95 e7                                      ldr r3, [r5, r8]
004a4de8  01 60 86 e2                                      add r6, r6, #1
004a4dec  2c 40 84 e2                                      add r4, r4, #0x2c
004a4df0  00 30 93 e5                                      ldr r3, [r3]
004a4df4  06 00 53 e1                                      cmp r3, r6
004a4df8  f3 ff ff 8a                                      bhi #0x4a4dcc
004a4dfc  07 30 95 e7                                      ldr r3, [r5, r7]
004a4e00  00 30 93 e5                                      ldr r3, [r3]
004a4e04  00 00 53 e3                                      cmp r3, #0
004a4e08  11 00 00 0a                                      beq #0x4a4e54
004a4e0c  04 20 13 e5                                      ldr r2, [r3, #-4]
004a4e10  2c 00 a0 e3                                      mov r0, #0x2c
004a4e14  90 32 20 e0                                      mla r0, r0, r2, r3
004a4e18  00 00 53 e1                                      cmp r3, r0
004a4e1c  01 00 00 1a                                      bne #0x4a4e28
004a4e20  09 00 00 ea                                      b #0x4a4e4c
004a4e24  04 00 a0 e1                                      mov r0, r4
004a4e28  2c 40 40 e2                                      sub r4, r0, #0x2c
004a4e2c  2c 30 10 e5                                      ldr r3, [r0, #-0x2c]
004a4e30  04 00 a0 e1                                      mov r0, r4
004a4e34  0f e0 a0 e1                                      mov lr, pc
004a4e38  00 f0 93 e5                                      ldr pc, [r3]
004a4e3c  07 30 95 e7                                      ldr r3, [r5, r7]
004a4e40  00 00 93 e5                                      ldr r0, [r3]
004a4e44  04 00 50 e1                                      cmp r0, r4
004a4e48  f5 ff ff 1a                                      bne #0x4a4e24
004a4e4c  08 00 40 e2                                      sub r0, r0, #8
004a4e50  7a ad f9 eb                                      bl #0x310440
004a4e54  07 30 95 e7                                      ldr r3, [r5, r7]
004a4e58  00 20 a0 e3                                      mov r2, #0
004a4e5c  00 20 83 e5                                      str r2, [r3]
004a4e60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4e64  f8 fc 4e 00 68 11 00 00 fc 05 00 00              .byte 0xf8, 0xfc, 0x4e, 0x00, 0x68, 0x11, 0x00, 0x00, 0xfc, 0x05, 0x00, 0x00

; FUNCTION 0x004b0e00, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::Sounds_bak
; alias: _ZN6Arrays10Sounds_bak9readNamesEP11IStreamBase
; demangled: Arrays::Sounds_bak::readNames(IStreamBase*)
; decoder-mode: arm
004b0e00  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b0e04  00 70 a0 e1                                      mov r7, r0
004b0e08  1c d0 4d e2                                      sub sp, sp, #0x1c
004b0e0c  b7 cf ff eb                                      bl #0x4a4cf0
004b0e10  07 00 a0 e1                                      mov r0, r7
004b0e14  1d 8b f9 eb                                      bl #0x313a90
004b0e18  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b0e1c  01 30 a0 e3                                      mov r3, #1
004b0e20  00 00 53 e3                                      cmp r3, #0
004b0e24  06 60 8f e0                                      add r6, pc, r6
004b0e28  14 00 8d e5                                      str r0, [sp, #0x14]
004b0e2c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b0e30  12 00 00 1a                                      bne #0x4b0e80
004b0e34  14 30 8d e2                                      add r3, sp, #0x14
004b0e38  02 20 83 e2                                      add r2, r3, #2
004b0e3c  01 30 83 e2                                      add r3, r3, #1
004b0e40  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0e44  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0e48  03 00 52 e1                                      cmp r2, r3
004b0e4c  02 40 a0 e1                                      mov r4, r2
004b0e50  01 10 20 e0                                      eor r1, r0, r1
004b0e54  01 10 43 e5                                      strb r1, [r3, #-1]
004b0e58  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0e5c  00 10 21 e0                                      eor r1, r1, r0
004b0e60  01 10 c2 e5                                      strb r1, [r2, #1]
004b0e64  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0e68  01 20 42 e2                                      sub r2, r2, #1
004b0e6c  00 10 21 e0                                      eor r1, r1, r0
004b0e70  01 10 43 e5                                      strb r1, [r3, #-1]
004b0e74  01 30 83 e2                                      add r3, r3, #1
004b0e78  f0 ff ff 8a                                      bhi #0x4b0e40
004b0e7c  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b0e80  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b0e84  03 30 96 e7                                      ldr r3, [r6, r3]
004b0e88  00 30 93 e5                                      ldr r3, [r3]
004b0e8c  00 00 53 e1                                      cmp r3, r0
004b0e90  01 00 00 0a                                      beq #0x4b0e9c
004b0e94  1c d0 8d e2                                      add sp, sp, #0x1c
004b0e98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b0e9c  00 01 a0 e1                                      lsl r0, r0, #2
004b0ea0  01 10 a0 e3                                      mov r1, #1
004b0ea4  b0 7d f9 eb                                      bl #0x31056c
004b0ea8  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b0eac  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b0eb0  09 30 96 e7                                      ldr r3, [r6, sb]
004b0eb4  00 00 52 e3                                      cmp r2, #0
004b0eb8  00 00 83 e5                                      str r0, [r3]
004b0ebc  f4 ff ff 0a                                      beq #0x4b0e94
004b0ec0  10 a0 8d e2                                      add sl, sp, #0x10
004b0ec4  01 80 a0 e3                                      mov r8, #1
004b0ec8  08 10 8a e0                                      add r1, sl, r8
004b0ecc  02 30 8a e2                                      add r3, sl, #2
004b0ed0  00 40 a0 e3                                      mov r4, #0
004b0ed4  0a 00 8d e8                                      stm sp, {r1, r3}
004b0ed8  07 00 a0 e1                                      mov r0, r7
004b0edc  0a 10 a0 e1                                      mov r1, sl
004b0ee0  ae b8 fc eb                                      bl #0x3df1a0
004b0ee4  00 00 58 e3                                      cmp r8, #0
004b0ee8  0c 80 8d e5                                      str r8, [sp, #0xc]
004b0eec  0f 00 00 1a                                      bne #0x4b0f30
004b0ef0  00 30 9d e5                                      ldr r3, [sp]
004b0ef4  04 20 9d e5                                      ldr r2, [sp, #4]
004b0ef8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0efc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0f00  03 00 52 e1                                      cmp r2, r3
004b0f04  01 10 20 e0                                      eor r1, r0, r1
004b0f08  01 10 43 e5                                      strb r1, [r3, #-1]
004b0f0c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0f10  00 10 21 e0                                      eor r1, r1, r0
004b0f14  01 10 c2 e5                                      strb r1, [r2, #1]
004b0f18  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0f1c  01 20 42 e2                                      sub r2, r2, #1
004b0f20  00 10 21 e0                                      eor r1, r1, r0
004b0f24  01 10 43 e5                                      strb r1, [r3, #-1]
004b0f28  01 30 83 e2                                      add r3, r3, #1
004b0f2c  f1 ff ff 8a                                      bhi #0x4b0ef8
004b0f30  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b0f34  09 50 96 e7                                      ldr r5, [r6, sb]
004b0f38  01 10 a0 e3                                      mov r1, #1
004b0f3c  01 00 80 e0                                      add r0, r0, r1
004b0f40  00 b0 95 e5                                      ldr fp, [r5]
004b0f44  88 7d f9 eb                                      bl #0x31056c
004b0f48  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b0f4c  00 30 95 e5                                      ldr r3, [r5]
004b0f50  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b0f54  07 00 a0 e1                                      mov r0, r7
004b0f58  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b0f5c  00 30 a0 e3                                      mov r3, #0
004b0f60  3b 99 f9 eb                                      bl #0x317454
004b0f64  00 30 95 e5                                      ldr r3, [r5]
004b0f68  00 10 a0 e3                                      mov r1, #0
004b0f6c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b0f70  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b0f74  01 40 84 e2                                      add r4, r4, #1
004b0f78  03 10 c2 e7                                      strb r1, [r2, r3]
004b0f7c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b0f80  04 00 53 e1                                      cmp r3, r4
004b0f84  d3 ff ff 8a                                      bhi #0x4b0ed8
004b0f88  c1 ff ff ea                                      b #0x4b0e94
; mapping-symbol data/literal pool
004b0f8c  6c 3c 4e 00 fc 05 00 00 2c 0a 00 00              .byte 0x6c, 0x3c, 0x4e, 0x00, 0xfc, 0x05, 0x00, 0x00, 0x2c, 0x0a, 0x00, 0x00

; FUNCTION 0x004b91ac, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::Sounds_bak
; alias: _ZN6Arrays10Sounds_bak4readEP11IStreamBase
; demangled: Arrays::Sounds_bak::read(IStreamBase*)
; decoder-mode: arm
004b91ac  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b91b0  0c d0 4d e2                                      sub sp, sp, #0xc
004b91b4  00 a0 a0 e1                                      mov sl, r0
004b91b8  34 6a f9 eb                                      bl #0x313a90
004b91bc  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b91c0  01 30 a0 e3                                      mov r3, #1
004b91c4  00 00 53 e3                                      cmp r3, #0
004b91c8  04 00 8d e5                                      str r0, [sp, #4]
004b91cc  00 30 8d e5                                      str r3, [sp]
004b91d0  06 60 8f e0                                      add r6, pc, r6
004b91d4  10 00 00 1a                                      bne #0x4b921c
004b91d8  04 30 8d e2                                      add r3, sp, #4
004b91dc  02 20 83 e2                                      add r2, r3, #2
004b91e0  01 30 83 e2                                      add r3, r3, #1
004b91e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b91e8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b91ec  03 00 52 e1                                      cmp r2, r3
004b91f0  01 10 20 e0                                      eor r1, r0, r1
004b91f4  01 10 43 e5                                      strb r1, [r3, #-1]
004b91f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b91fc  00 10 21 e0                                      eor r1, r1, r0
004b9200  01 10 c2 e5                                      strb r1, [r2, #1]
004b9204  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b9208  01 20 42 e2                                      sub r2, r2, #1
004b920c  00 10 21 e0                                      eor r1, r1, r0
004b9210  01 10 43 e5                                      strb r1, [r3, #-1]
004b9214  01 30 83 e2                                      add r3, r3, #1
004b9218  f1 ff ff 8a                                      bhi #0x4b91e4
004b921c  da ae ff eb                                      bl #0x4a4d8c
004b9220  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b9224  04 40 9d e5                                      ldr r4, [sp, #4]
004b9228  2c 50 a0 e3                                      mov r5, #0x2c
004b922c  07 30 96 e7                                      ldr r3, [r6, r7]
004b9230  95 04 00 e0                                      mul r0, r5, r4
004b9234  00 40 83 e5                                      str r4, [r3]
004b9238  08 00 80 e2                                      add r0, r0, #8
004b923c  01 10 a0 e3                                      mov r1, #1
004b9240  c9 5c f9 eb                                      bl #0x31056c
004b9244  00 00 54 e3                                      cmp r4, #0
004b9248  00 50 80 e5                                      str r5, [r0]
004b924c  04 40 80 e5                                      str r4, [r0, #4]
004b9250  08 30 80 e2                                      add r3, r0, #8
004b9254  0a 00 00 0a                                      beq #0x4b9284
004b9258  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b925c  00 20 a0 e3                                      mov r2, #0
004b9260  02 c0 a0 e1                                      mov ip, r2
004b9264  01 10 96 e7                                      ldr r1, [r6, r1]
004b9268  08 10 81 e2                                      add r1, r1, #8
004b926c  01 20 82 e2                                      add r2, r2, #1
004b9270  04 00 52 e1                                      cmp r2, r4
004b9274  08 10 80 e5                                      str r1, [r0, #8]
004b9278  18 c0 80 e5                                      str ip, [r0, #0x18]
004b927c  2c 00 80 e2                                      add r0, r0, #0x2c
004b9280  f9 ff ff 1a                                      bne #0x4b926c
004b9284  07 20 96 e7                                      ldr r2, [r6, r7]
004b9288  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b928c  00 10 92 e5                                      ldr r1, [r2]
004b9290  08 20 96 e7                                      ldr r2, [r6, r8]
004b9294  00 00 51 e3                                      cmp r1, #0
004b9298  00 30 82 e5                                      str r3, [r2]
004b929c  0f 00 00 0a                                      beq #0x4b92e0
004b92a0  00 40 a0 e3                                      mov r4, #0
004b92a4  04 50 a0 e1                                      mov r5, r4
004b92a8  01 00 00 ea                                      b #0x4b92b4
004b92ac  08 30 96 e7                                      ldr r3, [r6, r8]
004b92b0  00 30 93 e5                                      ldr r3, [r3]
004b92b4  04 00 83 e0                                      add r0, r3, r4
004b92b8  0a 10 a0 e1                                      mov r1, sl
004b92bc  04 30 93 e7                                      ldr r3, [r3, r4]
004b92c0  0f e0 a0 e1                                      mov lr, pc
004b92c4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b92c8  07 30 96 e7                                      ldr r3, [r6, r7]
004b92cc  01 50 85 e2                                      add r5, r5, #1
004b92d0  2c 40 84 e2                                      add r4, r4, #0x2c
004b92d4  00 30 93 e5                                      ldr r3, [r3]
004b92d8  05 00 53 e1                                      cmp r3, r5
004b92dc  f2 ff ff 8a                                      bhi #0x4b92ac
004b92e0  0c d0 8d e2                                      add sp, sp, #0xc
004b92e4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b92e8  c0 b8 4d 00 fc 05 00 00 d4 3a 00 00 68 11 00 00  .byte 0xc0, 0xb8, 0x4d, 0x00, 0xfc, 0x05, 0x00, 0x00, 0xd4, 0x3a, 0x00, 0x00, 0x68, 0x11, 0x00, 0x00
