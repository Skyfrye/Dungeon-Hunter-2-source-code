; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a70d8, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::TriggerTraps
; alias: _ZN6Arrays12TriggerTraps13finalizeNamesEv
; demangled: Arrays::TriggerTraps::finalizeNames()
; decoder-mode: arm
004a70d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a70dc  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a70e0  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a70e4  05 50 8f e0                                      add r5, pc, r5
004a70e8  06 30 95 e7                                      ldr r3, [r5, r6]
004a70ec  00 30 93 e5                                      ldr r3, [r3]
004a70f0  00 00 53 e3                                      cmp r3, #0
004a70f4  1a 00 00 0a                                      beq #0x4a7164
004a70f8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a70fc  07 20 95 e7                                      ldr r2, [r5, r7]
004a7100  00 20 92 e5                                      ldr r2, [r2]
004a7104  00 00 52 e3                                      cmp r2, #0
004a7108  10 00 00 0a                                      beq #0x4a7150
004a710c  00 40 a0 e3                                      mov r4, #0
004a7110  01 00 00 ea                                      b #0x4a711c
004a7114  06 30 95 e7                                      ldr r3, [r5, r6]
004a7118  00 30 93 e5                                      ldr r3, [r3]
004a711c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a7120  01 40 84 e2                                      add r4, r4, #1
004a7124  00 00 50 e3                                      cmp r0, #0
004a7128  02 00 00 0a                                      beq #0x4a7138
004a712c  c3 a4 f9 eb                                      bl #0x310440
004a7130  06 30 95 e7                                      ldr r3, [r5, r6]
004a7134  00 30 93 e5                                      ldr r3, [r3]
004a7138  07 20 95 e7                                      ldr r2, [r5, r7]
004a713c  00 20 92 e5                                      ldr r2, [r2]
004a7140  04 00 52 e1                                      cmp r2, r4
004a7144  f2 ff ff 8a                                      bhi #0x4a7114
004a7148  00 00 53 e3                                      cmp r3, #0
004a714c  01 00 00 0a                                      beq #0x4a7158
004a7150  03 00 a0 e1                                      mov r0, r3
004a7154  b9 a4 f9 eb                                      bl #0x310440
004a7158  06 30 95 e7                                      ldr r3, [r5, r6]
004a715c  00 20 a0 e3                                      mov r2, #0
004a7160  00 20 83 e5                                      str r2, [r3]
004a7164  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7168  ac d9 4e 00 2c 06 00 00 8c 0d 00 00              .byte 0xac, 0xd9, 0x4e, 0x00, 0x2c, 0x06, 0x00, 0x00, 0x8c, 0x0d, 0x00, 0x00

; FUNCTION 0x004a7174, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::TriggerTraps
; alias: _ZN6Arrays12TriggerTraps8finalizeEv
; demangled: Arrays::TriggerTraps::finalize()
; decoder-mode: arm
004a7174  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7178  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a717c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a7180  05 50 8f e0                                      add r5, pc, r5
004a7184  07 30 95 e7                                      ldr r3, [r5, r7]
004a7188  00 30 93 e5                                      ldr r3, [r3]
004a718c  00 00 53 e3                                      cmp r3, #0
004a7190  2c 00 00 0a                                      beq #0x4a7248
004a7194  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a7198  08 20 95 e7                                      ldr r2, [r5, r8]
004a719c  00 20 92 e5                                      ldr r2, [r2]
004a71a0  00 00 52 e3                                      cmp r2, #0
004a71a4  12 00 00 0a                                      beq #0x4a71f4
004a71a8  00 40 a0 e3                                      mov r4, #0
004a71ac  04 60 a0 e1                                      mov r6, r4
004a71b0  01 00 00 ea                                      b #0x4a71bc
004a71b4  07 30 95 e7                                      ldr r3, [r5, r7]
004a71b8  00 30 93 e5                                      ldr r3, [r3]
004a71bc  04 00 83 e0                                      add r0, r3, r4
004a71c0  04 30 93 e7                                      ldr r3, [r3, r4]
004a71c4  0f e0 a0 e1                                      mov lr, pc
004a71c8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a71cc  08 30 95 e7                                      ldr r3, [r5, r8]
004a71d0  01 60 86 e2                                      add r6, r6, #1
004a71d4  1c 40 84 e2                                      add r4, r4, #0x1c
004a71d8  00 30 93 e5                                      ldr r3, [r3]
004a71dc  06 00 53 e1                                      cmp r3, r6
004a71e0  f3 ff ff 8a                                      bhi #0x4a71b4
004a71e4  07 30 95 e7                                      ldr r3, [r5, r7]
004a71e8  00 30 93 e5                                      ldr r3, [r3]
004a71ec  00 00 53 e3                                      cmp r3, #0
004a71f0  11 00 00 0a                                      beq #0x4a723c
004a71f4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a71f8  1c 00 a0 e3                                      mov r0, #0x1c
004a71fc  90 32 20 e0                                      mla r0, r0, r2, r3
004a7200  00 00 53 e1                                      cmp r3, r0
004a7204  01 00 00 1a                                      bne #0x4a7210
004a7208  09 00 00 ea                                      b #0x4a7234
004a720c  04 00 a0 e1                                      mov r0, r4
004a7210  1c 40 40 e2                                      sub r4, r0, #0x1c
004a7214  1c 30 10 e5                                      ldr r3, [r0, #-0x1c]
004a7218  04 00 a0 e1                                      mov r0, r4
004a721c  0f e0 a0 e1                                      mov lr, pc
004a7220  00 f0 93 e5                                      ldr pc, [r3]
004a7224  07 30 95 e7                                      ldr r3, [r5, r7]
004a7228  00 00 93 e5                                      ldr r0, [r3]
004a722c  04 00 50 e1                                      cmp r0, r4
004a7230  f5 ff ff 1a                                      bne #0x4a720c
004a7234  08 00 40 e2                                      sub r0, r0, #8
004a7238  80 a4 f9 eb                                      bl #0x310440
004a723c  07 30 95 e7                                      ldr r3, [r5, r7]
004a7240  00 20 a0 e3                                      mov r2, #0
004a7244  00 20 83 e5                                      str r2, [r3]
004a7248  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a724c  10 d9 4e 00 d0 1e 00 00 8c 0d 00 00              .byte 0x10, 0xd9, 0x4e, 0x00, 0xd0, 0x1e, 0x00, 0x00, 0x8c, 0x0d, 0x00, 0x00

; FUNCTION 0x004b6c98, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::TriggerTraps
; alias: _ZN6Arrays12TriggerTraps9readNamesEP11IStreamBase
; demangled: Arrays::TriggerTraps::readNames(IStreamBase*)
; decoder-mode: arm
004b6c98  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b6c9c  00 70 a0 e1                                      mov r7, r0
004b6ca0  1c d0 4d e2                                      sub sp, sp, #0x1c
004b6ca4  0b c1 ff eb                                      bl #0x4a70d8
004b6ca8  07 00 a0 e1                                      mov r0, r7
004b6cac  77 73 f9 eb                                      bl #0x313a90
004b6cb0  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b6cb4  01 30 a0 e3                                      mov r3, #1
004b6cb8  00 00 53 e3                                      cmp r3, #0
004b6cbc  06 60 8f e0                                      add r6, pc, r6
004b6cc0  14 00 8d e5                                      str r0, [sp, #0x14]
004b6cc4  0c 30 8d e5                                      str r3, [sp, #0xc]
004b6cc8  12 00 00 1a                                      bne #0x4b6d18
004b6ccc  14 30 8d e2                                      add r3, sp, #0x14
004b6cd0  02 20 83 e2                                      add r2, r3, #2
004b6cd4  01 30 83 e2                                      add r3, r3, #1
004b6cd8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6cdc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6ce0  03 00 52 e1                                      cmp r2, r3
004b6ce4  02 40 a0 e1                                      mov r4, r2
004b6ce8  01 10 20 e0                                      eor r1, r0, r1
004b6cec  01 10 43 e5                                      strb r1, [r3, #-1]
004b6cf0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6cf4  00 10 21 e0                                      eor r1, r1, r0
004b6cf8  01 10 c2 e5                                      strb r1, [r2, #1]
004b6cfc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6d00  01 20 42 e2                                      sub r2, r2, #1
004b6d04  00 10 21 e0                                      eor r1, r1, r0
004b6d08  01 10 43 e5                                      strb r1, [r3, #-1]
004b6d0c  01 30 83 e2                                      add r3, r3, #1
004b6d10  f0 ff ff 8a                                      bhi #0x4b6cd8
004b6d14  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b6d18  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b6d1c  03 30 96 e7                                      ldr r3, [r6, r3]
004b6d20  00 30 93 e5                                      ldr r3, [r3]
004b6d24  00 00 53 e1                                      cmp r3, r0
004b6d28  01 00 00 0a                                      beq #0x4b6d34
004b6d2c  1c d0 8d e2                                      add sp, sp, #0x1c
004b6d30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b6d34  00 01 a0 e1                                      lsl r0, r0, #2
004b6d38  01 10 a0 e3                                      mov r1, #1
004b6d3c  0a 66 f9 eb                                      bl #0x31056c
004b6d40  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b6d44  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b6d48  09 30 96 e7                                      ldr r3, [r6, sb]
004b6d4c  00 00 52 e3                                      cmp r2, #0
004b6d50  00 00 83 e5                                      str r0, [r3]
004b6d54  f4 ff ff 0a                                      beq #0x4b6d2c
004b6d58  10 a0 8d e2                                      add sl, sp, #0x10
004b6d5c  01 80 a0 e3                                      mov r8, #1
004b6d60  08 10 8a e0                                      add r1, sl, r8
004b6d64  02 30 8a e2                                      add r3, sl, #2
004b6d68  00 40 a0 e3                                      mov r4, #0
004b6d6c  0a 00 8d e8                                      stm sp, {r1, r3}
004b6d70  07 00 a0 e1                                      mov r0, r7
004b6d74  0a 10 a0 e1                                      mov r1, sl
004b6d78  08 a1 fc eb                                      bl #0x3df1a0
004b6d7c  00 00 58 e3                                      cmp r8, #0
004b6d80  0c 80 8d e5                                      str r8, [sp, #0xc]
004b6d84  0f 00 00 1a                                      bne #0x4b6dc8
004b6d88  00 30 9d e5                                      ldr r3, [sp]
004b6d8c  04 20 9d e5                                      ldr r2, [sp, #4]
004b6d90  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6d94  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6d98  03 00 52 e1                                      cmp r2, r3
004b6d9c  01 10 20 e0                                      eor r1, r0, r1
004b6da0  01 10 43 e5                                      strb r1, [r3, #-1]
004b6da4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6da8  00 10 21 e0                                      eor r1, r1, r0
004b6dac  01 10 c2 e5                                      strb r1, [r2, #1]
004b6db0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6db4  01 20 42 e2                                      sub r2, r2, #1
004b6db8  00 10 21 e0                                      eor r1, r1, r0
004b6dbc  01 10 43 e5                                      strb r1, [r3, #-1]
004b6dc0  01 30 83 e2                                      add r3, r3, #1
004b6dc4  f1 ff ff 8a                                      bhi #0x4b6d90
004b6dc8  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b6dcc  09 50 96 e7                                      ldr r5, [r6, sb]
004b6dd0  01 10 a0 e3                                      mov r1, #1
004b6dd4  01 00 80 e0                                      add r0, r0, r1
004b6dd8  00 b0 95 e5                                      ldr fp, [r5]
004b6ddc  e2 65 f9 eb                                      bl #0x31056c
004b6de0  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b6de4  00 30 95 e5                                      ldr r3, [r5]
004b6de8  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b6dec  07 00 a0 e1                                      mov r0, r7
004b6df0  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b6df4  00 30 a0 e3                                      mov r3, #0
004b6df8  95 81 f9 eb                                      bl #0x317454
004b6dfc  00 30 95 e5                                      ldr r3, [r5]
004b6e00  00 10 a0 e3                                      mov r1, #0
004b6e04  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b6e08  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b6e0c  01 40 84 e2                                      add r4, r4, #1
004b6e10  03 10 c2 e7                                      strb r1, [r2, r3]
004b6e14  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b6e18  04 00 53 e1                                      cmp r3, r4
004b6e1c  d3 ff ff 8a                                      bhi #0x4b6d70
004b6e20  c1 ff ff ea                                      b #0x4b6d2c
; mapping-symbol data/literal pool
004b6e24  d4 dd 4d 00 8c 0d 00 00 2c 06 00 00              .byte 0xd4, 0xdd, 0x4d, 0x00, 0x8c, 0x0d, 0x00, 0x00, 0x2c, 0x06, 0x00, 0x00

; FUNCTION 0x004bb09c, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::TriggerTraps
; alias: _ZN6Arrays12TriggerTraps4readEP11IStreamBase
; demangled: Arrays::TriggerTraps::read(IStreamBase*)
; decoder-mode: arm
004bb09c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bb0a0  0c d0 4d e2                                      sub sp, sp, #0xc
004bb0a4  00 a0 a0 e1                                      mov sl, r0
004bb0a8  78 62 f9 eb                                      bl #0x313a90
004bb0ac  24 61 9f e5                                      ldr r6, [pc, #0x124]
004bb0b0  01 30 a0 e3                                      mov r3, #1
004bb0b4  00 00 53 e3                                      cmp r3, #0
004bb0b8  04 00 8d e5                                      str r0, [sp, #4]
004bb0bc  00 30 8d e5                                      str r3, [sp]
004bb0c0  06 60 8f e0                                      add r6, pc, r6
004bb0c4  10 00 00 1a                                      bne #0x4bb10c
004bb0c8  04 30 8d e2                                      add r3, sp, #4
004bb0cc  02 20 83 e2                                      add r2, r3, #2
004bb0d0  01 30 83 e2                                      add r3, r3, #1
004bb0d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb0d8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bb0dc  03 00 52 e1                                      cmp r2, r3
004bb0e0  01 10 20 e0                                      eor r1, r0, r1
004bb0e4  01 10 43 e5                                      strb r1, [r3, #-1]
004bb0e8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb0ec  00 10 21 e0                                      eor r1, r1, r0
004bb0f0  01 10 c2 e5                                      strb r1, [r2, #1]
004bb0f4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bb0f8  01 20 42 e2                                      sub r2, r2, #1
004bb0fc  00 10 21 e0                                      eor r1, r1, r0
004bb100  01 10 43 e5                                      strb r1, [r3, #-1]
004bb104  01 30 83 e2                                      add r3, r3, #1
004bb108  f1 ff ff 8a                                      bhi #0x4bb0d4
004bb10c  18 b0 ff eb                                      bl #0x4a7174
004bb110  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004bb114  04 40 9d e5                                      ldr r4, [sp, #4]
004bb118  1c 50 a0 e3                                      mov r5, #0x1c
004bb11c  07 30 96 e7                                      ldr r3, [r6, r7]
004bb120  95 04 00 e0                                      mul r0, r5, r4
004bb124  00 40 83 e5                                      str r4, [r3]
004bb128  08 00 80 e2                                      add r0, r0, #8
004bb12c  01 10 a0 e3                                      mov r1, #1
004bb130  0d 55 f9 eb                                      bl #0x31056c
004bb134  00 00 54 e3                                      cmp r4, #0
004bb138  00 50 80 e5                                      str r5, [r0]
004bb13c  04 40 80 e5                                      str r4, [r0, #4]
004bb140  08 30 80 e2                                      add r3, r0, #8
004bb144  0a 00 00 0a                                      beq #0x4bb174
004bb148  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bb14c  00 20 a0 e3                                      mov r2, #0
004bb150  02 c0 a0 e1                                      mov ip, r2
004bb154  01 10 96 e7                                      ldr r1, [r6, r1]
004bb158  08 10 81 e2                                      add r1, r1, #8
004bb15c  01 20 82 e2                                      add r2, r2, #1
004bb160  04 00 52 e1                                      cmp r2, r4
004bb164  08 10 80 e5                                      str r1, [r0, #8]
004bb168  18 c0 80 e5                                      str ip, [r0, #0x18]
004bb16c  1c 00 80 e2                                      add r0, r0, #0x1c
004bb170  f9 ff ff 1a                                      bne #0x4bb15c
004bb174  07 20 96 e7                                      ldr r2, [r6, r7]
004bb178  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bb17c  00 10 92 e5                                      ldr r1, [r2]
004bb180  08 20 96 e7                                      ldr r2, [r6, r8]
004bb184  00 00 51 e3                                      cmp r1, #0
004bb188  00 30 82 e5                                      str r3, [r2]
004bb18c  0f 00 00 0a                                      beq #0x4bb1d0
004bb190  00 40 a0 e3                                      mov r4, #0
004bb194  04 50 a0 e1                                      mov r5, r4
004bb198  01 00 00 ea                                      b #0x4bb1a4
004bb19c  08 30 96 e7                                      ldr r3, [r6, r8]
004bb1a0  00 30 93 e5                                      ldr r3, [r3]
004bb1a4  04 00 83 e0                                      add r0, r3, r4
004bb1a8  0a 10 a0 e1                                      mov r1, sl
004bb1ac  04 30 93 e7                                      ldr r3, [r3, r4]
004bb1b0  0f e0 a0 e1                                      mov lr, pc
004bb1b4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bb1b8  07 30 96 e7                                      ldr r3, [r6, r7]
004bb1bc  01 50 85 e2                                      add r5, r5, #1
004bb1c0  1c 40 84 e2                                      add r4, r4, #0x1c
004bb1c4  00 30 93 e5                                      ldr r3, [r3]
004bb1c8  05 00 53 e1                                      cmp r3, r5
004bb1cc  f2 ff ff 8a                                      bhi #0x4bb19c
004bb1d0  0c d0 8d e2                                      add sp, sp, #0xc
004bb1d4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bb1d8  d0 99 4d 00 8c 0d 00 00 04 11 00 00 d0 1e 00 00  .byte 0xd0, 0x99, 0x4d, 0x00, 0x8c, 0x0d, 0x00, 0x00, 0x04, 0x11, 0x00, 0x00, 0xd0, 0x1e, 0x00, 0x00
