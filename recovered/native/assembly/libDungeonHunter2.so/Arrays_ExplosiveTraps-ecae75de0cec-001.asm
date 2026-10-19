; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a7cb4, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ExplosiveTraps
; alias: _ZN6Arrays14ExplosiveTraps13finalizeNamesEv
; demangled: Arrays::ExplosiveTraps::finalizeNames()
; decoder-mode: arm
004a7cb4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7cb8  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a7cbc  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a7cc0  05 50 8f e0                                      add r5, pc, r5
004a7cc4  06 30 95 e7                                      ldr r3, [r5, r6]
004a7cc8  00 30 93 e5                                      ldr r3, [r3]
004a7ccc  00 00 53 e3                                      cmp r3, #0
004a7cd0  1a 00 00 0a                                      beq #0x4a7d40
004a7cd4  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a7cd8  07 20 95 e7                                      ldr r2, [r5, r7]
004a7cdc  00 20 92 e5                                      ldr r2, [r2]
004a7ce0  00 00 52 e3                                      cmp r2, #0
004a7ce4  10 00 00 0a                                      beq #0x4a7d2c
004a7ce8  00 40 a0 e3                                      mov r4, #0
004a7cec  01 00 00 ea                                      b #0x4a7cf8
004a7cf0  06 30 95 e7                                      ldr r3, [r5, r6]
004a7cf4  00 30 93 e5                                      ldr r3, [r3]
004a7cf8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a7cfc  01 40 84 e2                                      add r4, r4, #1
004a7d00  00 00 50 e3                                      cmp r0, #0
004a7d04  02 00 00 0a                                      beq #0x4a7d14
004a7d08  cc a1 f9 eb                                      bl #0x310440
004a7d0c  06 30 95 e7                                      ldr r3, [r5, r6]
004a7d10  00 30 93 e5                                      ldr r3, [r3]
004a7d14  07 20 95 e7                                      ldr r2, [r5, r7]
004a7d18  00 20 92 e5                                      ldr r2, [r2]
004a7d1c  04 00 52 e1                                      cmp r2, r4
004a7d20  f2 ff ff 8a                                      bhi #0x4a7cf0
004a7d24  00 00 53 e3                                      cmp r3, #0
004a7d28  01 00 00 0a                                      beq #0x4a7d34
004a7d2c  03 00 a0 e1                                      mov r0, r3
004a7d30  c2 a1 f9 eb                                      bl #0x310440
004a7d34  06 30 95 e7                                      ldr r3, [r5, r6]
004a7d38  00 20 a0 e3                                      mov r2, #0
004a7d3c  00 20 83 e5                                      str r2, [r3]
004a7d40  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7d44  d0 cd 4e 00 70 08 00 00 d0 3f 00 00              .byte 0xd0, 0xcd, 0x4e, 0x00, 0x70, 0x08, 0x00, 0x00, 0xd0, 0x3f, 0x00, 0x00

; FUNCTION 0x004a7d50, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ExplosiveTraps
; alias: _ZN6Arrays14ExplosiveTraps8finalizeEv
; demangled: Arrays::ExplosiveTraps::finalize()
; decoder-mode: arm
004a7d50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7d54  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a7d58  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a7d5c  05 50 8f e0                                      add r5, pc, r5
004a7d60  07 30 95 e7                                      ldr r3, [r5, r7]
004a7d64  00 30 93 e5                                      ldr r3, [r3]
004a7d68  00 00 53 e3                                      cmp r3, #0
004a7d6c  2c 00 00 0a                                      beq #0x4a7e24
004a7d70  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a7d74  08 20 95 e7                                      ldr r2, [r5, r8]
004a7d78  00 20 92 e5                                      ldr r2, [r2]
004a7d7c  00 00 52 e3                                      cmp r2, #0
004a7d80  12 00 00 0a                                      beq #0x4a7dd0
004a7d84  00 40 a0 e3                                      mov r4, #0
004a7d88  04 60 a0 e1                                      mov r6, r4
004a7d8c  01 00 00 ea                                      b #0x4a7d98
004a7d90  07 30 95 e7                                      ldr r3, [r5, r7]
004a7d94  00 30 93 e5                                      ldr r3, [r3]
004a7d98  04 00 83 e0                                      add r0, r3, r4
004a7d9c  04 30 93 e7                                      ldr r3, [r3, r4]
004a7da0  0f e0 a0 e1                                      mov lr, pc
004a7da4  08 f0 93 e5                                      ldr pc, [r3, #8]
004a7da8  08 30 95 e7                                      ldr r3, [r5, r8]
004a7dac  01 60 86 e2                                      add r6, r6, #1
004a7db0  18 40 84 e2                                      add r4, r4, #0x18
004a7db4  00 30 93 e5                                      ldr r3, [r3]
004a7db8  06 00 53 e1                                      cmp r3, r6
004a7dbc  f3 ff ff 8a                                      bhi #0x4a7d90
004a7dc0  07 30 95 e7                                      ldr r3, [r5, r7]
004a7dc4  00 30 93 e5                                      ldr r3, [r3]
004a7dc8  00 00 53 e3                                      cmp r3, #0
004a7dcc  11 00 00 0a                                      beq #0x4a7e18
004a7dd0  04 20 13 e5                                      ldr r2, [r3, #-4]
004a7dd4  18 00 a0 e3                                      mov r0, #0x18
004a7dd8  90 32 20 e0                                      mla r0, r0, r2, r3
004a7ddc  00 00 53 e1                                      cmp r3, r0
004a7de0  01 00 00 1a                                      bne #0x4a7dec
004a7de4  09 00 00 ea                                      b #0x4a7e10
004a7de8  04 00 a0 e1                                      mov r0, r4
004a7dec  18 40 40 e2                                      sub r4, r0, #0x18
004a7df0  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004a7df4  04 00 a0 e1                                      mov r0, r4
004a7df8  0f e0 a0 e1                                      mov lr, pc
004a7dfc  00 f0 93 e5                                      ldr pc, [r3]
004a7e00  07 30 95 e7                                      ldr r3, [r5, r7]
004a7e04  00 00 93 e5                                      ldr r0, [r3]
004a7e08  04 00 50 e1                                      cmp r0, r4
004a7e0c  f5 ff ff 1a                                      bne #0x4a7de8
004a7e10  08 00 40 e2                                      sub r0, r0, #8
004a7e14  89 a1 f9 eb                                      bl #0x310440
004a7e18  07 30 95 e7                                      ldr r3, [r5, r7]
004a7e1c  00 20 a0 e3                                      mov r2, #0
004a7e20  00 20 83 e5                                      str r2, [r3]
004a7e24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a7e28  34 cd 4e 00 e4 49 00 00 d0 3f 00 00              .byte 0x34, 0xcd, 0x4e, 0x00, 0xe4, 0x49, 0x00, 0x00, 0xd0, 0x3f, 0x00, 0x00

; FUNCTION 0x004b5fcc, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ExplosiveTraps
; alias: _ZN6Arrays14ExplosiveTraps9readNamesEP11IStreamBase
; demangled: Arrays::ExplosiveTraps::readNames(IStreamBase*)
; decoder-mode: arm
004b5fcc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b5fd0  00 70 a0 e1                                      mov r7, r0
004b5fd4  1c d0 4d e2                                      sub sp, sp, #0x1c
004b5fd8  35 c7 ff eb                                      bl #0x4a7cb4
004b5fdc  07 00 a0 e1                                      mov r0, r7
004b5fe0  aa 76 f9 eb                                      bl #0x313a90
004b5fe4  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b5fe8  01 30 a0 e3                                      mov r3, #1
004b5fec  00 00 53 e3                                      cmp r3, #0
004b5ff0  06 60 8f e0                                      add r6, pc, r6
004b5ff4  14 00 8d e5                                      str r0, [sp, #0x14]
004b5ff8  0c 30 8d e5                                      str r3, [sp, #0xc]
004b5ffc  12 00 00 1a                                      bne #0x4b604c
004b6000  14 30 8d e2                                      add r3, sp, #0x14
004b6004  02 20 83 e2                                      add r2, r3, #2
004b6008  01 30 83 e2                                      add r3, r3, #1
004b600c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6010  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6014  03 00 52 e1                                      cmp r2, r3
004b6018  02 40 a0 e1                                      mov r4, r2
004b601c  01 10 20 e0                                      eor r1, r0, r1
004b6020  01 10 43 e5                                      strb r1, [r3, #-1]
004b6024  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6028  00 10 21 e0                                      eor r1, r1, r0
004b602c  01 10 c2 e5                                      strb r1, [r2, #1]
004b6030  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6034  01 20 42 e2                                      sub r2, r2, #1
004b6038  00 10 21 e0                                      eor r1, r1, r0
004b603c  01 10 43 e5                                      strb r1, [r3, #-1]
004b6040  01 30 83 e2                                      add r3, r3, #1
004b6044  f0 ff ff 8a                                      bhi #0x4b600c
004b6048  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b604c  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b6050  03 30 96 e7                                      ldr r3, [r6, r3]
004b6054  00 30 93 e5                                      ldr r3, [r3]
004b6058  00 00 53 e1                                      cmp r3, r0
004b605c  01 00 00 0a                                      beq #0x4b6068
004b6060  1c d0 8d e2                                      add sp, sp, #0x1c
004b6064  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b6068  00 01 a0 e1                                      lsl r0, r0, #2
004b606c  01 10 a0 e3                                      mov r1, #1
004b6070  3d 69 f9 eb                                      bl #0x31056c
004b6074  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b6078  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b607c  09 30 96 e7                                      ldr r3, [r6, sb]
004b6080  00 00 52 e3                                      cmp r2, #0
004b6084  00 00 83 e5                                      str r0, [r3]
004b6088  f4 ff ff 0a                                      beq #0x4b6060
004b608c  10 a0 8d e2                                      add sl, sp, #0x10
004b6090  01 80 a0 e3                                      mov r8, #1
004b6094  08 10 8a e0                                      add r1, sl, r8
004b6098  02 30 8a e2                                      add r3, sl, #2
004b609c  00 40 a0 e3                                      mov r4, #0
004b60a0  0a 00 8d e8                                      stm sp, {r1, r3}
004b60a4  07 00 a0 e1                                      mov r0, r7
004b60a8  0a 10 a0 e1                                      mov r1, sl
004b60ac  3b a4 fc eb                                      bl #0x3df1a0
004b60b0  00 00 58 e3                                      cmp r8, #0
004b60b4  0c 80 8d e5                                      str r8, [sp, #0xc]
004b60b8  0f 00 00 1a                                      bne #0x4b60fc
004b60bc  00 30 9d e5                                      ldr r3, [sp]
004b60c0  04 20 9d e5                                      ldr r2, [sp, #4]
004b60c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b60c8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b60cc  03 00 52 e1                                      cmp r2, r3
004b60d0  01 10 20 e0                                      eor r1, r0, r1
004b60d4  01 10 43 e5                                      strb r1, [r3, #-1]
004b60d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b60dc  00 10 21 e0                                      eor r1, r1, r0
004b60e0  01 10 c2 e5                                      strb r1, [r2, #1]
004b60e4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b60e8  01 20 42 e2                                      sub r2, r2, #1
004b60ec  00 10 21 e0                                      eor r1, r1, r0
004b60f0  01 10 43 e5                                      strb r1, [r3, #-1]
004b60f4  01 30 83 e2                                      add r3, r3, #1
004b60f8  f1 ff ff 8a                                      bhi #0x4b60c4
004b60fc  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b6100  09 50 96 e7                                      ldr r5, [r6, sb]
004b6104  01 10 a0 e3                                      mov r1, #1
004b6108  01 00 80 e0                                      add r0, r0, r1
004b610c  00 b0 95 e5                                      ldr fp, [r5]
004b6110  15 69 f9 eb                                      bl #0x31056c
004b6114  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b6118  00 30 95 e5                                      ldr r3, [r5]
004b611c  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b6120  07 00 a0 e1                                      mov r0, r7
004b6124  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b6128  00 30 a0 e3                                      mov r3, #0
004b612c  c8 84 f9 eb                                      bl #0x317454
004b6130  00 30 95 e5                                      ldr r3, [r5]
004b6134  00 10 a0 e3                                      mov r1, #0
004b6138  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b613c  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b6140  01 40 84 e2                                      add r4, r4, #1
004b6144  03 10 c2 e7                                      strb r1, [r2, r3]
004b6148  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b614c  04 00 53 e1                                      cmp r3, r4
004b6150  d3 ff ff 8a                                      bhi #0x4b60a4
004b6154  c1 ff ff ea                                      b #0x4b6060
; mapping-symbol data/literal pool
004b6158  a0 ea 4d 00 d0 3f 00 00 70 08 00 00              .byte 0xa0, 0xea, 0x4d, 0x00, 0xd0, 0x3f, 0x00, 0x00, 0x70, 0x08, 0x00, 0x00

; FUNCTION 0x004bbabc, declared_size=328, range_size=328, mode=arm
; class-group: Arrays::ExplosiveTraps
; alias: _ZN6Arrays14ExplosiveTraps4readEP11IStreamBase
; demangled: Arrays::ExplosiveTraps::read(IStreamBase*)
; decoder-mode: arm
004bbabc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bbac0  0c d0 4d e2                                      sub sp, sp, #0xc
004bbac4  00 a0 a0 e1                                      mov sl, r0
004bbac8  f0 5f f9 eb                                      bl #0x313a90
004bbacc  20 61 9f e5                                      ldr r6, [pc, #0x120]
004bbad0  01 30 a0 e3                                      mov r3, #1
004bbad4  00 00 53 e3                                      cmp r3, #0
004bbad8  04 00 8d e5                                      str r0, [sp, #4]
004bbadc  00 30 8d e5                                      str r3, [sp]
004bbae0  06 60 8f e0                                      add r6, pc, r6
004bbae4  10 00 00 1a                                      bne #0x4bbb2c
004bbae8  04 30 8d e2                                      add r3, sp, #4
004bbaec  02 20 83 e2                                      add r2, r3, #2
004bbaf0  01 30 83 e2                                      add r3, r3, #1
004bbaf4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bbaf8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bbafc  03 00 52 e1                                      cmp r2, r3
004bbb00  01 10 20 e0                                      eor r1, r0, r1
004bbb04  01 10 43 e5                                      strb r1, [r3, #-1]
004bbb08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bbb0c  00 10 21 e0                                      eor r1, r1, r0
004bbb10  01 10 c2 e5                                      strb r1, [r2, #1]
004bbb14  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bbb18  01 20 42 e2                                      sub r2, r2, #1
004bbb1c  00 10 21 e0                                      eor r1, r1, r0
004bbb20  01 10 43 e5                                      strb r1, [r3, #-1]
004bbb24  01 30 83 e2                                      add r3, r3, #1
004bbb28  f1 ff ff 8a                                      bhi #0x4bbaf4
004bbb2c  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004bbb30  86 b0 ff eb                                      bl #0x4a7d50
004bbb34  04 40 9d e5                                      ldr r4, [sp, #4]
004bbb38  07 30 96 e7                                      ldr r3, [r6, r7]
004bbb3c  01 10 a0 e3                                      mov r1, #1
004bbb40  84 00 84 e0                                      add r0, r4, r4, lsl #1
004bbb44  01 00 80 e0                                      add r0, r0, r1
004bbb48  00 40 83 e5                                      str r4, [r3]
004bbb4c  80 01 a0 e1                                      lsl r0, r0, #3
004bbb50  85 52 f9 eb                                      bl #0x31056c
004bbb54  18 30 a0 e3                                      mov r3, #0x18
004bbb58  00 00 54 e3                                      cmp r4, #0
004bbb5c  18 00 80 e8                                      stm r0, {r3, r4}
004bbb60  08 30 80 e2                                      add r3, r0, #8
004bbb64  09 00 00 0a                                      beq #0x4bbb90
004bbb68  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
004bbb6c  00 20 a0 e3                                      mov r2, #0
004bbb70  02 c0 a0 e1                                      mov ip, r2
004bbb74  01 10 96 e7                                      ldr r1, [r6, r1]
004bbb78  08 10 81 e2                                      add r1, r1, #8
004bbb7c  01 20 82 e2                                      add r2, r2, #1
004bbb80  04 00 52 e1                                      cmp r2, r4
004bbb84  08 10 80 e5                                      str r1, [r0, #8]
004bbb88  18 c0 a0 e5                                      str ip, [r0, #0x18]!
004bbb8c  fa ff ff 1a                                      bne #0x4bbb7c
004bbb90  07 20 96 e7                                      ldr r2, [r6, r7]
004bbb94  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bbb98  00 10 92 e5                                      ldr r1, [r2]
004bbb9c  08 20 96 e7                                      ldr r2, [r6, r8]
004bbba0  00 00 51 e3                                      cmp r1, #0
004bbba4  00 30 82 e5                                      str r3, [r2]
004bbba8  0f 00 00 0a                                      beq #0x4bbbec
004bbbac  00 40 a0 e3                                      mov r4, #0
004bbbb0  04 50 a0 e1                                      mov r5, r4
004bbbb4  01 00 00 ea                                      b #0x4bbbc0
004bbbb8  08 30 96 e7                                      ldr r3, [r6, r8]
004bbbbc  00 30 93 e5                                      ldr r3, [r3]
004bbbc0  04 00 83 e0                                      add r0, r3, r4
004bbbc4  0a 10 a0 e1                                      mov r1, sl
004bbbc8  04 30 93 e7                                      ldr r3, [r3, r4]
004bbbcc  0f e0 a0 e1                                      mov lr, pc
004bbbd0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bbbd4  07 30 96 e7                                      ldr r3, [r6, r7]
004bbbd8  01 50 85 e2                                      add r5, r5, #1
004bbbdc  18 40 84 e2                                      add r4, r4, #0x18
004bbbe0  00 30 93 e5                                      ldr r3, [r3]
004bbbe4  05 00 53 e1                                      cmp r3, r5
004bbbe8  f2 ff ff 8a                                      bhi #0x4bbbb8
004bbbec  0c d0 8d e2                                      add sp, sp, #0xc
004bbbf0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bbbf4  b0 8f 4d 00 d0 3f 00 00 ac 27 00 00 e4 49 00 00  .byte 0xb0, 0x8f, 0x4d, 0x00, 0xd0, 0x3f, 0x00, 0x00, 0xac, 0x27, 0x00, 0x00, 0xe4, 0x49, 0x00, 0x00
