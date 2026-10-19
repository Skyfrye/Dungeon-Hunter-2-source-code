; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329fe8, declared_size=76, range_size=76, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZN18MenuMessageManagerI9DialogMsgLi1EED1Ev
; demangled: MenuMessageManager<DialogMsg, 1>::~MenuMessageManager()
; decoder-mode: arm
00329fe8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00329fec  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00329ff0  70 40 2d e9                                      push {r4, r5, r6, lr}
00329ff4  03 30 8f e0                                      add r3, pc, r3
00329ff8  02 20 93 e7                                      ldr r2, [r3, r2]
00329ffc  00 40 a0 e1                                      mov r4, r0
0032a000  00 60 a0 e1                                      mov r6, r0
0032a004  08 20 82 e2                                      add r2, r2, #8
0032a008  04 50 80 e2                                      add r5, r0, #4
0032a00c  2c 20 84 e4                                      str r2, [r4], #0x2c
0032a010  28 40 44 e2                                      sub r4, r4, #0x28
0032a014  04 00 a0 e1                                      mov r0, r4
0032a018  df ff ff eb                                      bl #0x329f9c
0032a01c  04 00 55 e1                                      cmp r5, r4
0032a020  fa ff ff 1a                                      bne #0x32a010
0032a024  06 00 a0 e1                                      mov r0, r6
0032a028  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0032a02c  9c aa 66 00 78 14 00 00                          .byte 0x9c, 0xaa, 0x66, 0x00, 0x78, 0x14, 0x00, 0x00

; FUNCTION 0x0032a034, declared_size=84, range_size=84, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZN18MenuMessageManagerI9DialogMsgLi1EED0Ev
; demangled: MenuMessageManager<DialogMsg, 1>::~MenuMessageManager()
; decoder-mode: arm
0032a034  44 30 9f e5                                      ldr r3, [pc, #0x44]
0032a038  44 20 9f e5                                      ldr r2, [pc, #0x44]
0032a03c  70 40 2d e9                                      push {r4, r5, r6, lr}
0032a040  03 30 8f e0                                      add r3, pc, r3
0032a044  02 20 93 e7                                      ldr r2, [r3, r2]
0032a048  00 40 a0 e1                                      mov r4, r0
0032a04c  00 60 a0 e1                                      mov r6, r0
0032a050  08 20 82 e2                                      add r2, r2, #8
0032a054  04 50 80 e2                                      add r5, r0, #4
0032a058  2c 20 84 e4                                      str r2, [r4], #0x2c
0032a05c  28 40 44 e2                                      sub r4, r4, #0x28
0032a060  04 00 a0 e1                                      mov r0, r4
0032a064  cc ff ff eb                                      bl #0x329f9c
0032a068  04 00 55 e1                                      cmp r5, r4
0032a06c  fa ff ff 1a                                      bne #0x32a05c
0032a070  06 00 a0 e1                                      mov r0, r6
0032a074  f1 98 ff eb                                      bl #0x310440
0032a078  06 00 a0 e1                                      mov r0, r6
0032a07c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0032a080  50 aa 66 00 78 14 00 00                          .byte 0x50, 0xaa, 0x66, 0x00, 0x78, 0x14, 0x00, 0x00

; FUNCTION 0x00383ea8, declared_size=76, range_size=76, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZN18MenuMessageManagerI9DialogMsgLi1EE21FlushEnqueuedMessagesEi.clone.13
; demangled: MenuMessageManager<DialogMsg, 1>::FlushEnqueuedMessages(int) [clone .clone.13]
; decoder-mode: arm
00383ea8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00383eac  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00383eb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00383eb4  03 30 8f e0                                      add r3, pc, r3
00383eb8  02 40 93 e7                                      ldr r4, [r3, r2]
00383ebc  14 20 94 e5                                      ldr r2, [r4, #0x14]
00383ec0  04 30 94 e5                                      ldr r3, [r4, #4]
00383ec4  03 00 52 e1                                      cmp r2, r3
00383ec8  06 00 00 0a                                      beq #0x383ee8
00383ecc  04 50 84 e2                                      add r5, r4, #4
00383ed0  05 00 a0 e1                                      mov r0, r5
00383ed4  d9 ff ff eb                                      bl #0x383e40
00383ed8  14 20 94 e5                                      ldr r2, [r4, #0x14]
00383edc  04 30 94 e5                                      ldr r3, [r4, #4]
00383ee0  03 00 52 e1                                      cmp r2, r3
00383ee4  f9 ff ff 1a                                      bne #0x383ed0
00383ee8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00383eec  dc 0b 61 00 74 1e 00 00                          .byte 0xdc, 0x0b, 0x61, 0x00, 0x74, 0x1e, 0x00, 0x00

; FUNCTION 0x003f9064, declared_size=76, range_size=76, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZN18MenuMessageManagerI9DialogMsgLi1EE21FlushEnqueuedMessagesEi.clone.27
; demangled: MenuMessageManager<DialogMsg, 1>::FlushEnqueuedMessages(int) [clone .clone.27]
; decoder-mode: arm
003f9064  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003f9068  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003f906c  70 40 2d e9                                      push {r4, r5, r6, lr}
003f9070  03 30 8f e0                                      add r3, pc, r3
003f9074  02 40 93 e7                                      ldr r4, [r3, r2]
003f9078  14 20 94 e5                                      ldr r2, [r4, #0x14]
003f907c  04 30 94 e5                                      ldr r3, [r4, #4]
003f9080  03 00 52 e1                                      cmp r2, r3
003f9084  06 00 00 0a                                      beq #0x3f90a4
003f9088  04 50 84 e2                                      add r5, r4, #4
003f908c  05 00 a0 e1                                      mov r0, r5
003f9090  6a 2b fe eb                                      bl #0x383e40
003f9094  14 20 94 e5                                      ldr r2, [r4, #0x14]
003f9098  04 30 94 e5                                      ldr r3, [r4, #4]
003f909c  03 00 52 e1                                      cmp r2, r3
003f90a0  f9 ff ff 1a                                      bne #0x3f908c
003f90a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003f90a8  20 ba 59 00 74 1e 00 00                          .byte 0x20, 0xba, 0x59, 0x00, 0x74, 0x1e, 0x00, 0x00

; FUNCTION 0x00421bf8, declared_size=232, range_size=232, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZNK18MenuMessageManagerI9DialogMsgLi1EE6InvokeEPKci.clone.23
; demangled: MenuMessageManager<DialogMsg, 1>::Invoke(char const*, int) const [clone .clone.23]
; decoder-mode: arm
00421bf8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00421bfc  24 d0 4d e2                                      sub sp, sp, #0x24
00421c00  00 60 a0 e1                                      mov r6, r0
00421c04  a0 2b 00 eb                                      bl #0x42ca8c
00421c08  df 2b 00 eb                                      bl #0x42cb8c
00421c0c  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
00421c10  00 50 50 e2                                      subs r5, r0, #0
00421c14  04 40 8f e0                                      add r4, pc, r4
00421c18  1f 00 00 0a                                      beq #0x421c9c
00421c1c  b4 70 9f e5                                      ldr r7, [pc, #0xb4]
00421c20  07 80 94 e7                                      ldr r8, [r4, r7]
00421c24  2c 30 98 e5                                      ldr r3, [r8, #0x2c]
00421c28  00 00 53 e3                                      cmp r3, #0
00421c2c  20 00 00 0a                                      beq #0x421cb4
00421c30  28 30 98 e5                                      ldr r3, [r8, #0x28]
00421c34  04 a0 d3 e5                                      ldrb sl, [r3, #4]
00421c38  00 00 5a e3                                      cmp sl, #0
00421c3c  18 00 00 0a                                      beq #0x421ca4
00421c40  07 00 94 e7                                      ldr r0, [r4, r7]
00421c44  41 18 00 eb                                      bl #0x427d50
00421c48  00 c0 a0 e3                                      mov ip, #0
00421c4c  00 20 a0 e3                                      mov r2, #0
00421c50  00 30 a0 e3                                      mov r3, #0
00421c54  0c c0 cd e5                                      strb ip, [sp, #0xc]
00421c58  02 c0 a0 e3                                      mov ip, #2
00421c5c  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
00421c60  0d c0 cd e5                                      strb ip, [sp, #0xd]
00421c64  00 c0 a0 e3                                      mov ip, #0
00421c68  10 c0 8d e5                                      str ip, [sp, #0x10]
00421c6c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00421c70  0c 40 8d e2                                      add r4, sp, #0xc
00421c74  00 10 a0 e1                                      mov r1, r0
00421c78  08 c0 84 e5                                      str ip, [r4, #8]
00421c7c  05 00 a0 e1                                      mov r0, r5
00421c80  01 c0 a0 e3                                      mov ip, #1
00421c84  06 20 a0 e1                                      mov r2, r6
00421c88  04 30 a0 e1                                      mov r3, r4
00421c8c  00 c0 8d e5                                      str ip, [sp]
00421c90  5d 28 0e eb                                      bl #0x7abe0c
00421c94  04 00 a0 e1                                      mov r0, r4
00421c98  21 d5 0d eb                                      bl #0x797124
00421c9c  24 d0 8d e2                                      add sp, sp, #0x24
00421ca0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00421ca4  28 00 88 e2                                      add r0, r8, #0x28
00421ca8  0a 10 a0 e1                                      mov r1, sl
00421cac  74 f8 ff eb                                      bl #0x41fe84
00421cb0  2c a0 88 e5                                      str sl, [r8, #0x2c]
00421cb4  20 30 9f e5                                      ldr r3, [pc, #0x20]
00421cb8  07 00 94 e7                                      ldr r0, [r4, r7]
00421cbc  05 20 a0 e1                                      mov r2, r5
00421cc0  03 10 94 e7                                      ldr r1, [r4, r3]
00421cc4  00 30 a0 e3                                      mov r3, #0
00421cc8  00 10 91 e5                                      ldr r1, [r1]
00421ccc  f3 17 00 eb                                      bl #0x427ca0
00421cd0  da ff ff ea                                      b #0x421c40
; mapping-symbol data/literal pool
00421cd4  7c 2e 57 00 34 22 00 00 84 14 00 00              .byte 0x7c, 0x2e, 0x57, 0x00, 0x34, 0x22, 0x00, 0x00, 0x84, 0x14, 0x00, 0x00

; FUNCTION 0x0043f890, declared_size=64, range_size=64, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZN18MenuMessageManagerI9DialogMsgLi1EE22GetNextEnqueuedMessageERS0_i.clone.25
; demangled: MenuMessageManager<DialogMsg, 1>::GetNextEnqueuedMessage(DialogMsg&, int) [clone .clone.25]
; decoder-mode: arm
0043f890  30 30 9f e5                                      ldr r3, [pc, #0x30]
0043f894  30 20 9f e5                                      ldr r2, [pc, #0x30]
0043f898  10 40 2d e9                                      push {r4, lr}
0043f89c  03 30 8f e0                                      add r3, pc, r3
0043f8a0  02 20 93 e7                                      ldr r2, [r3, r2]
0043f8a4  04 10 92 e5                                      ldr r1, [r2, #4]
0043f8a8  14 30 92 e5                                      ldr r3, [r2, #0x14]
0043f8ac  01 00 53 e1                                      cmp r3, r1
0043f8b0  02 00 00 0a                                      beq #0x43f8c0
0043f8b4  db ff ff eb                                      bl #0x43f828
0043f8b8  01 00 a0 e3                                      mov r0, #1
0043f8bc  10 80 bd e8                                      pop {r4, pc}
0043f8c0  00 00 a0 e3                                      mov r0, #0
0043f8c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0043f8c8  f4 51 55 00 74 1e 00 00                          .byte 0xf4, 0x51, 0x55, 0x00, 0x74, 0x1e, 0x00, 0x00

; FUNCTION 0x00442b18, declared_size=260, range_size=260, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZNK18MenuMessageManagerI9DialogMsgLi1EE6InvokeEPKci.clone.54
; demangled: MenuMessageManager<DialogMsg, 1>::Invoke(char const*, int) const [clone .clone.54]
; decoder-mode: arm
00442b18  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00442b1c  24 d0 4d e2                                      sub sp, sp, #0x24
00442b20  00 60 a0 e1                                      mov r6, r0
00442b24  d8 a7 ff eb                                      bl #0x42ca8c
00442b28  17 a8 ff eb                                      bl #0x42cb8c
00442b2c  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
00442b30  00 50 50 e2                                      subs r5, r0, #0
00442b34  04 40 8f e0                                      add r4, pc, r4
00442b38  1f 00 00 0a                                      beq #0x442bbc
00442b3c  d0 70 9f e5                                      ldr r7, [pc, #0xd0]
00442b40  07 30 94 e7                                      ldr r3, [r4, r7]
00442b44  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00442b48  00 00 52 e3                                      cmp r2, #0
00442b4c  25 00 00 0a                                      beq #0x442be8
00442b50  28 00 93 e5                                      ldr r0, [r3, #0x28]
00442b54  04 30 d0 e5                                      ldrb r3, [r0, #4]
00442b58  00 00 53 e3                                      cmp r3, #0
00442b5c  18 00 00 0a                                      beq #0x442bc4
00442b60  07 00 94 e7                                      ldr r0, [r4, r7]
00442b64  79 94 ff eb                                      bl #0x427d50
00442b68  00 c0 a0 e3                                      mov ip, #0
00442b6c  00 20 a0 e3                                      mov r2, #0
00442b70  00 30 a0 e3                                      mov r3, #0
00442b74  0c c0 cd e5                                      strb ip, [sp, #0xc]
00442b78  02 c0 a0 e3                                      mov ip, #2
00442b7c  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
00442b80  0d c0 cd e5                                      strb ip, [sp, #0xd]
00442b84  00 c0 a0 e3                                      mov ip, #0
00442b88  10 c0 8d e5                                      str ip, [sp, #0x10]
00442b8c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00442b90  0c 40 8d e2                                      add r4, sp, #0xc
00442b94  00 10 a0 e1                                      mov r1, r0
00442b98  08 c0 84 e5                                      str ip, [r4, #8]
00442b9c  05 00 a0 e1                                      mov r0, r5
00442ba0  01 c0 a0 e3                                      mov ip, #1
00442ba4  06 20 a0 e1                                      mov r2, r6
00442ba8  04 30 a0 e1                                      mov r3, r4
00442bac  00 c0 8d e5                                      str ip, [sp]
00442bb0  95 a4 0d eb                                      bl #0x7abe0c
00442bb4  04 00 a0 e1                                      mov r0, r4
00442bb8  59 51 0d eb                                      bl #0x797124
00442bbc  24 d0 8d e2                                      add sp, sp, #0x24
00442bc0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00442bc4  00 10 90 e5                                      ldr r1, [r0]
00442bc8  01 10 41 e2                                      sub r1, r1, #1
00442bcc  00 00 51 e3                                      cmp r1, #0
00442bd0  00 10 80 e5                                      str r1, [r0]
00442bd4  0b 00 00 0a                                      beq #0x442c08
00442bd8  07 30 94 e7                                      ldr r3, [r4, r7]
00442bdc  00 20 a0 e3                                      mov r2, #0
00442be0  2c 20 83 e5                                      str r2, [r3, #0x2c]
00442be4  28 20 83 e5                                      str r2, [r3, #0x28]
00442be8  28 30 9f e5                                      ldr r3, [pc, #0x28]
00442bec  07 00 94 e7                                      ldr r0, [r4, r7]
00442bf0  05 20 a0 e1                                      mov r2, r5
00442bf4  03 10 94 e7                                      ldr r1, [r4, r3]
00442bf8  00 30 a0 e3                                      mov r3, #0
00442bfc  00 10 91 e5                                      ldr r1, [r1]
00442c00  26 94 ff eb                                      bl #0x427ca0
00442c04  d5 ff ff ea                                      b #0x442b60
00442c08  ca 3f 0c eb                                      bl #0x752b38
00442c0c  f1 ff ff ea                                      b #0x442bd8
; mapping-symbol data/literal pool
00442c10  5c 1f 55 00 34 22 00 00 84 14 00 00              .byte 0x5c, 0x1f, 0x55, 0x00, 0x34, 0x22, 0x00, 0x00, 0x84, 0x14, 0x00, 0x00

; FUNCTION 0x00442c1c, declared_size=128, range_size=128, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZN18MenuMessageManagerI9DialogMsgLi1EE19SkipEnqueuedMessageEib.clone.32
; demangled: MenuMessageManager<DialogMsg, 1>::SkipEnqueuedMessage(int, bool) [clone .clone.32]
; decoder-mode: arm
00442c1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00442c20  64 40 9f e5                                      ldr r4, [pc, #0x64]
00442c24  64 50 9f e5                                      ldr r5, [pc, #0x64]
00442c28  04 40 8f e0                                      add r4, pc, r4
00442c2c  05 00 94 e7                                      ldr r0, [r4, r5]
00442c30  14 20 90 e5                                      ldr r2, [r0, #0x14]
00442c34  04 30 90 e5                                      ldr r3, [r0, #4]
00442c38  03 00 52 e1                                      cmp r2, r3
00442c3c  11 00 00 0a                                      beq #0x442c88
00442c40  04 00 80 e2                                      add r0, r0, #4
00442c44  7d 04 fd eb                                      bl #0x383e40
00442c48  44 30 9f e5                                      ldr r3, [pc, #0x44]
00442c4c  03 30 94 e7                                      ldr r3, [r4, r3]
00442c50  00 00 93 e5                                      ldr r0, [r3]
00442c54  00 00 50 e3                                      cmp r0, #0
00442c58  00 00 00 0a                                      beq #0x442c60
00442c5c  ad ff ff eb                                      bl #0x442b18
00442c60  05 30 94 e7                                      ldr r3, [r4, r5]
00442c64  04 20 93 e5                                      ldr r2, [r3, #4]
00442c68  14 30 93 e5                                      ldr r3, [r3, #0x14]
00442c6c  02 00 53 e1                                      cmp r3, r2
00442c70  04 00 00 0a                                      beq #0x442c88
00442c74  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00442c78  03 30 94 e7                                      ldr r3, [r4, r3]
00442c7c  00 00 93 e5                                      ldr r0, [r3]
00442c80  70 40 bd e8                                      pop {r4, r5, r6, lr}
00442c84  a3 ff ff ea                                      b #0x442b18
00442c88  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00442c8c  68 1e 55 00 74 1e 00 00 5c 1e 00 00 48 38 00 00  .byte 0x68, 0x1e, 0x55, 0x00, 0x74, 0x1e, 0x00, 0x00, 0x5c, 0x1e, 0x00, 0x00, 0x48, 0x38, 0x00, 0x00

; FUNCTION 0x00459f64, declared_size=204, range_size=204, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZNK18MenuMessageManagerI9DialogMsgLi1EE6InvokeEPKci.clone.20
; demangled: MenuMessageManager<DialogMsg, 1>::Invoke(char const*, int) const [clone .clone.20]
; decoder-mode: arm
00459f64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00459f68  20 d0 4d e2                                      sub sp, sp, #0x20
00459f6c  00 60 a0 e1                                      mov r6, r0
00459f70  c5 4a ff eb                                      bl #0x42ca8c
00459f74  04 4b ff eb                                      bl #0x42cb8c
00459f78  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
00459f7c  00 50 50 e2                                      subs r5, r0, #0
00459f80  04 40 8f e0                                      add r4, pc, r4
00459f84  1d 00 00 0a                                      beq #0x45a000
00459f88  98 70 9f e5                                      ldr r7, [pc, #0x98]
00459f8c  07 80 94 e7                                      ldr r8, [r4, r7]
00459f90  28 00 88 e2                                      add r0, r8, #0x28
00459f94  6a b0 fc eb                                      bl #0x386144
00459f98  2c 30 98 e5                                      ldr r3, [r8, #0x2c]
00459f9c  00 00 53 e3                                      cmp r3, #0
00459fa0  18 00 00 0a                                      beq #0x45a008
00459fa4  07 00 94 e7                                      ldr r0, [r4, r7]
00459fa8  68 37 ff eb                                      bl #0x427d50
00459fac  00 c0 a0 e3                                      mov ip, #0
00459fb0  00 20 a0 e3                                      mov r2, #0
00459fb4  00 30 a0 e3                                      mov r3, #0
00459fb8  0c c0 cd e5                                      strb ip, [sp, #0xc]
00459fbc  02 c0 a0 e3                                      mov ip, #2
00459fc0  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
00459fc4  0d c0 cd e5                                      strb ip, [sp, #0xd]
00459fc8  00 c0 a0 e3                                      mov ip, #0
00459fcc  10 c0 8d e5                                      str ip, [sp, #0x10]
00459fd0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00459fd4  0c 40 8d e2                                      add r4, sp, #0xc
00459fd8  00 10 a0 e1                                      mov r1, r0
00459fdc  08 c0 84 e5                                      str ip, [r4, #8]
00459fe0  05 00 a0 e1                                      mov r0, r5
00459fe4  01 c0 a0 e3                                      mov ip, #1
00459fe8  06 20 a0 e1                                      mov r2, r6
00459fec  04 30 a0 e1                                      mov r3, r4
00459ff0  00 c0 8d e5                                      str ip, [sp]
00459ff4  84 47 0d eb                                      bl #0x7abe0c
00459ff8  04 00 a0 e1                                      mov r0, r4
00459ffc  48 f4 0c eb                                      bl #0x797124
0045a000  20 d0 8d e2                                      add sp, sp, #0x20
0045a004  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045a008  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0045a00c  08 00 a0 e1                                      mov r0, r8
0045a010  02 10 94 e7                                      ldr r1, [r4, r2]
0045a014  05 20 a0 e1                                      mov r2, r5
0045a018  00 10 91 e5                                      ldr r1, [r1]
0045a01c  1f 37 ff eb                                      bl #0x427ca0
0045a020  df ff ff ea                                      b #0x459fa4
; mapping-symbol data/literal pool
0045a024  10 ab 53 00 34 22 00 00 84 14 00 00              .byte 0x10, 0xab, 0x53, 0x00, 0x34, 0x22, 0x00, 0x00, 0x84, 0x14, 0x00, 0x00

; FUNCTION 0x00460474, declared_size=76, range_size=76, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZN18MenuMessageManagerI9DialogMsgLi1EE21FlushEnqueuedMessagesEi.clone.21
; demangled: MenuMessageManager<DialogMsg, 1>::FlushEnqueuedMessages(int) [clone .clone.21]
; decoder-mode: arm
00460474  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00460478  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0046047c  70 40 2d e9                                      push {r4, r5, r6, lr}
00460480  03 30 8f e0                                      add r3, pc, r3
00460484  02 40 93 e7                                      ldr r4, [r3, r2]
00460488  14 20 94 e5                                      ldr r2, [r4, #0x14]
0046048c  04 30 94 e5                                      ldr r3, [r4, #4]
00460490  03 00 52 e1                                      cmp r2, r3
00460494  06 00 00 0a                                      beq #0x4604b4
00460498  04 50 84 e2                                      add r5, r4, #4
0046049c  05 00 a0 e1                                      mov r0, r5
004604a0  66 8e fc eb                                      bl #0x383e40
004604a4  14 20 94 e5                                      ldr r2, [r4, #0x14]
004604a8  04 30 94 e5                                      ldr r3, [r4, #4]
004604ac  03 00 52 e1                                      cmp r2, r3
004604b0  f9 ff ff 1a                                      bne #0x46049c
004604b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004604b8  10 46 53 00 74 1e 00 00                          .byte 0x10, 0x46, 0x53, 0x00, 0x74, 0x1e, 0x00, 0x00

; FUNCTION 0x00460dec, declared_size=124, range_size=124, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZN18MenuMessageManagerI9DialogMsgLi1EE14EnqueueMessageERKS0_ib.clone.15
; demangled: MenuMessageManager<DialogMsg, 1>::EnqueueMessage(DialogMsg const&, int, bool) [clone .clone.15]
; decoder-mode: arm
00460dec  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00460df0  64 40 9f e5                                      ldr r4, [pc, #0x64]
00460df4  64 50 9f e5                                      ldr r5, [pc, #0x64]
00460df8  01 70 a0 e1                                      mov r7, r1
00460dfc  04 40 8f e0                                      add r4, pc, r4
00460e00  05 50 94 e7                                      ldr r5, [r4, r5]
00460e04  00 10 a0 e1                                      mov r1, r0
00460e08  14 d0 4d e2                                      sub sp, sp, #0x14
00460e0c  04 60 85 e2                                      add r6, r5, #4
00460e10  06 00 a0 e1                                      mov r0, r6
00460e14  e5 ff ff eb                                      bl #0x460db0
00460e18  00 00 57 e3                                      cmp r7, #0
00460e1c  07 00 00 0a                                      beq #0x460e40
00460e20  0d c0 a0 e1                                      mov ip, sp
00460e24  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00460e28  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00460e2c  14 00 85 e2                                      add r0, r5, #0x14
00460e30  0d 10 a0 e1                                      mov r1, sp
00460e34  fd d4 ff eb                                      bl #0x456230
00460e38  01 00 50 e3                                      cmp r0, #1
00460e3c  01 00 00 0a                                      beq #0x460e48
00460e40  14 d0 8d e2                                      add sp, sp, #0x14
00460e44  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00460e48  14 30 9f e5                                      ldr r3, [pc, #0x14]
00460e4c  03 30 94 e7                                      ldr r3, [r4, r3]
00460e50  00 00 93 e5                                      ldr r0, [r3]
00460e54  42 e4 ff eb                                      bl #0x459f64
00460e58  f8 ff ff ea                                      b #0x460e40
; mapping-symbol data/literal pool
00460e5c  94 3c 53 00 74 1e 00 00 48 38 00 00              .byte 0x94, 0x3c, 0x53, 0x00, 0x74, 0x1e, 0x00, 0x00, 0x48, 0x38, 0x00, 0x00

; FUNCTION 0x00480b2c, declared_size=332, range_size=332, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZN18MenuMessageManagerI9DialogMsgLi1EE14EnqueueMessageERKS0_ib.clone.14
; demangled: MenuMessageManager<DialogMsg, 1>::EnqueueMessage(DialogMsg const&, int, bool) [clone .clone.14]
; decoder-mode: arm
00480b2c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00480b30  2c 41 9f e5                                      ldr r4, [pc, #0x12c]
00480b34  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
00480b38  34 d0 4d e2                                      sub sp, sp, #0x34
00480b3c  04 40 8f e0                                      add r4, pc, r4
00480b40  05 50 94 e7                                      ldr r5, [r4, r5]
00480b44  00 10 a0 e1                                      mov r1, r0
00480b48  04 60 85 e2                                      add r6, r5, #4
00480b4c  06 00 a0 e1                                      mov r0, r6
00480b50  96 80 ff eb                                      bl #0x460db0
00480b54  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00480b58  0c c0 8d e2                                      add ip, sp, #0xc
00480b5c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00480b60  14 00 85 e2                                      add r0, r5, #0x14
00480b64  0c 10 a0 e1                                      mov r1, ip
00480b68  b0 55 ff eb                                      bl #0x456230
00480b6c  01 00 50 e3                                      cmp r0, #1
00480b70  01 00 00 0a                                      beq #0x480b7c
00480b74  34 d0 8d e2                                      add sp, sp, #0x34
00480b78  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00480b7c  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
00480b80  03 30 94 e7                                      ldr r3, [r4, r3]
00480b84  00 70 93 e5                                      ldr r7, [r3]
00480b88  bf af fe eb                                      bl #0x42ca8c
00480b8c  fe af fe eb                                      bl #0x42cb8c
00480b90  00 60 50 e2                                      subs r6, r0, #0
00480b94  f6 ff ff 0a                                      beq #0x480b74
00480b98  d0 50 9f e5                                      ldr r5, [pc, #0xd0]
00480b9c  05 30 94 e7                                      ldr r3, [r4, r5]
00480ba0  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00480ba4  00 00 52 e3                                      cmp r2, #0
00480ba8  0c 00 00 0a                                      beq #0x480be0
00480bac  28 00 93 e5                                      ldr r0, [r3, #0x28]
00480bb0  04 30 d0 e5                                      ldrb r3, [r0, #4]
00480bb4  00 00 53 e3                                      cmp r3, #0
00480bb8  0f 00 00 1a                                      bne #0x480bfc
00480bbc  00 10 90 e5                                      ldr r1, [r0]
00480bc0  01 10 41 e2                                      sub r1, r1, #1
00480bc4  00 00 51 e3                                      cmp r1, #0
00480bc8  00 10 80 e5                                      str r1, [r0]
00480bcc  22 00 00 0a                                      beq #0x480c5c
00480bd0  05 30 94 e7                                      ldr r3, [r4, r5]
00480bd4  00 20 a0 e3                                      mov r2, #0
00480bd8  2c 20 83 e5                                      str r2, [r3, #0x2c]
00480bdc  28 20 83 e5                                      str r2, [r3, #0x28]
00480be0  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00480be4  05 00 94 e7                                      ldr r0, [r4, r5]
00480be8  06 20 a0 e1                                      mov r2, r6
00480bec  03 10 94 e7                                      ldr r1, [r4, r3]
00480bf0  00 30 a0 e3                                      mov r3, #0
00480bf4  00 10 91 e5                                      ldr r1, [r1]
00480bf8  28 9c fe eb                                      bl #0x427ca0
00480bfc  05 00 94 e7                                      ldr r0, [r4, r5]
00480c00  52 9c fe eb                                      bl #0x427d50
00480c04  00 c0 a0 e3                                      mov ip, #0
00480c08  1c c0 cd e5                                      strb ip, [sp, #0x1c]
00480c0c  00 20 a0 e3                                      mov r2, #0
00480c10  00 30 a0 e3                                      mov r3, #0
00480c14  02 c0 a0 e3                                      mov ip, #2
00480c18  f8 22 cd e1                                      strd r2, r3, [sp, #0x28]
00480c1c  1d c0 cd e5                                      strb ip, [sp, #0x1d]
00480c20  00 c0 a0 e3                                      mov ip, #0
00480c24  20 c0 8d e5                                      str ip, [sp, #0x20]
00480c28  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00480c2c  1c 40 8d e2                                      add r4, sp, #0x1c
00480c30  00 10 a0 e1                                      mov r1, r0
00480c34  08 c0 84 e5                                      str ip, [r4, #8]
00480c38  06 00 a0 e1                                      mov r0, r6
00480c3c  01 c0 a0 e3                                      mov ip, #1
00480c40  07 20 a0 e1                                      mov r2, r7
00480c44  04 30 a0 e1                                      mov r3, r4
00480c48  00 c0 8d e5                                      str ip, [sp]
00480c4c  6e ac 0c eb                                      bl #0x7abe0c
00480c50  04 00 a0 e1                                      mov r0, r4
00480c54  32 59 0c eb                                      bl #0x797124
00480c58  c5 ff ff ea                                      b #0x480b74
00480c5c  b5 47 0b eb                                      bl #0x752b38
00480c60  da ff ff ea                                      b #0x480bd0
; mapping-symbol data/literal pool
00480c64  54 3f 51 00 74 1e 00 00 48 38 00 00 34 22 00 00  .byte 0x54, 0x3f, 0x51, 0x00, 0x74, 0x1e, 0x00, 0x00, 0x48, 0x38, 0x00, 0x00, 0x34, 0x22, 0x00, 0x00
00480c74  84 14 00 00                                      .byte 0x84, 0x14, 0x00, 0x00

; FUNCTION 0x0049b858, declared_size=204, range_size=204, mode=arm
; class-group: MenuMessageManager<DialogMsg, 1>
; alias: _ZNK18MenuMessageManagerI9DialogMsgLi1EE6InvokeEPKci.clone.8
; demangled: MenuMessageManager<DialogMsg, 1>::Invoke(char const*, int) const [clone .clone.8]
; decoder-mode: arm
0049b858  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0049b85c  20 d0 4d e2                                      sub sp, sp, #0x20
0049b860  00 60 a0 e1                                      mov r6, r0
0049b864  88 44 fe eb                                      bl #0x42ca8c
0049b868  c7 44 fe eb                                      bl #0x42cb8c
0049b86c  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
0049b870  00 50 50 e2                                      subs r5, r0, #0
0049b874  04 40 8f e0                                      add r4, pc, r4
0049b878  1d 00 00 0a                                      beq #0x49b8f4
0049b87c  98 70 9f e5                                      ldr r7, [pc, #0x98]
0049b880  07 80 94 e7                                      ldr r8, [r4, r7]
0049b884  28 00 88 e2                                      add r0, r8, #0x28
0049b888  2d aa fb eb                                      bl #0x386144
0049b88c  2c 30 98 e5                                      ldr r3, [r8, #0x2c]
0049b890  00 00 53 e3                                      cmp r3, #0
0049b894  18 00 00 0a                                      beq #0x49b8fc
0049b898  07 00 94 e7                                      ldr r0, [r4, r7]
0049b89c  2b 31 fe eb                                      bl #0x427d50
0049b8a0  00 c0 a0 e3                                      mov ip, #0
0049b8a4  00 20 a0 e3                                      mov r2, #0
0049b8a8  00 30 a0 e3                                      mov r3, #0
0049b8ac  0c c0 cd e5                                      strb ip, [sp, #0xc]
0049b8b0  02 c0 a0 e3                                      mov ip, #2
0049b8b4  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
0049b8b8  0d c0 cd e5                                      strb ip, [sp, #0xd]
0049b8bc  00 c0 a0 e3                                      mov ip, #0
0049b8c0  10 c0 8d e5                                      str ip, [sp, #0x10]
0049b8c4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0049b8c8  0c 40 8d e2                                      add r4, sp, #0xc
0049b8cc  00 10 a0 e1                                      mov r1, r0
0049b8d0  08 c0 84 e5                                      str ip, [r4, #8]
0049b8d4  05 00 a0 e1                                      mov r0, r5
0049b8d8  01 c0 a0 e3                                      mov ip, #1
0049b8dc  06 20 a0 e1                                      mov r2, r6
0049b8e0  04 30 a0 e1                                      mov r3, r4
0049b8e4  00 c0 8d e5                                      str ip, [sp]
0049b8e8  47 41 0c eb                                      bl #0x7abe0c
0049b8ec  04 00 a0 e1                                      mov r0, r4
0049b8f0  0b ee 0b eb                                      bl #0x797124
0049b8f4  20 d0 8d e2                                      add sp, sp, #0x20
0049b8f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0049b8fc  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0049b900  08 00 a0 e1                                      mov r0, r8
0049b904  02 10 94 e7                                      ldr r1, [r4, r2]
0049b908  05 20 a0 e1                                      mov r2, r5
0049b90c  00 10 91 e5                                      ldr r1, [r1]
0049b910  e2 30 fe eb                                      bl #0x427ca0
0049b914  df ff ff ea                                      b #0x49b898
; mapping-symbol data/literal pool
0049b918  1c 92 4f 00 34 22 00 00 84 14 00 00              .byte 0x1c, 0x92, 0x4f, 0x00, 0x34, 0x22, 0x00, 0x00, 0x84, 0x14, 0x00, 0x00
