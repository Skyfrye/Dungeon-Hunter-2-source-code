; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003297a4, declared_size=76, range_size=76, mode=arm
; class-group: MenuMessageManager<StatusMsg, 4>
; alias: _ZN18MenuMessageManagerI9StatusMsgLi4EED1Ev
; demangled: MenuMessageManager<StatusMsg, 4>::~MenuMessageManager()
; decoder-mode: arm
003297a4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003297a8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003297ac  70 40 2d e9                                      push {r4, r5, r6, lr}
003297b0  03 30 8f e0                                      add r3, pc, r3
003297b4  02 20 93 e7                                      ldr r2, [r3, r2]
003297b8  00 50 a0 e1                                      mov r5, r0
003297bc  00 60 a0 e1                                      mov r6, r0
003297c0  08 20 82 e2                                      add r2, r2, #8
003297c4  a4 40 80 e2                                      add r4, r0, #0xa4
003297c8  04 20 85 e4                                      str r2, [r5], #4
003297cc  28 40 44 e2                                      sub r4, r4, #0x28
003297d0  04 00 a0 e1                                      mov r0, r4
003297d4  df ff ff eb                                      bl #0x329758
003297d8  05 00 54 e1                                      cmp r4, r5
003297dc  fa ff ff 1a                                      bne #0x3297cc
003297e0  06 00 a0 e1                                      mov r0, r6
003297e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003297e8  e0 b2 66 00 d0 15 00 00                          .byte 0xe0, 0xb2, 0x66, 0x00, 0xd0, 0x15, 0x00, 0x00

; FUNCTION 0x003297f0, declared_size=84, range_size=84, mode=arm
; class-group: MenuMessageManager<StatusMsg, 4>
; alias: _ZN18MenuMessageManagerI9StatusMsgLi4EED0Ev
; demangled: MenuMessageManager<StatusMsg, 4>::~MenuMessageManager()
; decoder-mode: arm
003297f0  44 30 9f e5                                      ldr r3, [pc, #0x44]
003297f4  44 20 9f e5                                      ldr r2, [pc, #0x44]
003297f8  70 40 2d e9                                      push {r4, r5, r6, lr}
003297fc  03 30 8f e0                                      add r3, pc, r3
00329800  02 20 93 e7                                      ldr r2, [r3, r2]
00329804  00 50 a0 e1                                      mov r5, r0
00329808  00 60 a0 e1                                      mov r6, r0
0032980c  08 20 82 e2                                      add r2, r2, #8
00329810  a4 40 80 e2                                      add r4, r0, #0xa4
00329814  04 20 85 e4                                      str r2, [r5], #4
00329818  28 40 44 e2                                      sub r4, r4, #0x28
0032981c  04 00 a0 e1                                      mov r0, r4
00329820  cc ff ff eb                                      bl #0x329758
00329824  05 00 54 e1                                      cmp r4, r5
00329828  fa ff ff 1a                                      bne #0x329818
0032982c  06 00 a0 e1                                      mov r0, r6
00329830  02 9b ff eb                                      bl #0x310440
00329834  06 00 a0 e1                                      mov r0, r6
00329838  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0032983c  94 b2 66 00 d0 15 00 00                          .byte 0x94, 0xb2, 0x66, 0x00, 0xd0, 0x15, 0x00, 0x00

; FUNCTION 0x003ecff8, declared_size=332, range_size=332, mode=arm
; class-group: MenuMessageManager<StatusMsg, 4>
; alias: _ZN18MenuMessageManagerI9StatusMsgLi4EE14EnqueueMessageERKS0_ib.clone.18
; demangled: MenuMessageManager<StatusMsg, 4>::EnqueueMessage(StatusMsg const&, int, bool) [clone .clone.18]
; decoder-mode: arm
003ecff8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003ecffc  2c 41 9f e5                                      ldr r4, [pc, #0x12c]
003ed000  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
003ed004  34 d0 4d e2                                      sub sp, sp, #0x34
003ed008  04 40 8f e0                                      add r4, pc, r4
003ed00c  05 50 94 e7                                      ldr r5, [r4, r5]
003ed010  00 10 a0 e1                                      mov r1, r0
003ed014  04 60 85 e2                                      add r6, r5, #4
003ed018  06 00 a0 e1                                      mov r0, r6
003ed01c  9a 44 ff eb                                      bl #0x3be28c
003ed020  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
003ed024  0c c0 8d e2                                      add ip, sp, #0xc
003ed028  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003ed02c  14 00 85 e2                                      add r0, r5, #0x14
003ed030  0c 10 a0 e1                                      mov r1, ip
003ed034  d4 3f ff eb                                      bl #0x3bcf8c
003ed038  01 00 50 e3                                      cmp r0, #1
003ed03c  01 00 00 0a                                      beq #0x3ed048
003ed040  34 d0 8d e2                                      add sp, sp, #0x34
003ed044  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003ed048  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
003ed04c  03 30 94 e7                                      ldr r3, [r4, r3]
003ed050  00 70 93 e5                                      ldr r7, [r3]
003ed054  8c fe 00 eb                                      bl #0x42ca8c
003ed058  cb fe 00 eb                                      bl #0x42cb8c
003ed05c  00 60 50 e2                                      subs r6, r0, #0
003ed060  f6 ff ff 0a                                      beq #0x3ed040
003ed064  d0 50 9f e5                                      ldr r5, [pc, #0xd0]
003ed068  05 30 94 e7                                      ldr r3, [r4, r5]
003ed06c  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
003ed070  00 00 52 e3                                      cmp r2, #0
003ed074  0c 00 00 0a                                      beq #0x3ed0ac
003ed078  28 00 93 e5                                      ldr r0, [r3, #0x28]
003ed07c  04 30 d0 e5                                      ldrb r3, [r0, #4]
003ed080  00 00 53 e3                                      cmp r3, #0
003ed084  0f 00 00 1a                                      bne #0x3ed0c8
003ed088  00 10 90 e5                                      ldr r1, [r0]
003ed08c  01 10 41 e2                                      sub r1, r1, #1
003ed090  00 00 51 e3                                      cmp r1, #0
003ed094  00 10 80 e5                                      str r1, [r0]
003ed098  22 00 00 0a                                      beq #0x3ed128
003ed09c  05 30 94 e7                                      ldr r3, [r4, r5]
003ed0a0  00 20 a0 e3                                      mov r2, #0
003ed0a4  2c 20 83 e5                                      str r2, [r3, #0x2c]
003ed0a8  28 20 83 e5                                      str r2, [r3, #0x28]
003ed0ac  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003ed0b0  05 00 94 e7                                      ldr r0, [r4, r5]
003ed0b4  06 20 a0 e1                                      mov r2, r6
003ed0b8  03 10 94 e7                                      ldr r1, [r4, r3]
003ed0bc  00 30 a0 e3                                      mov r3, #0
003ed0c0  00 10 91 e5                                      ldr r1, [r1]
003ed0c4  f5 ea 00 eb                                      bl #0x427ca0
003ed0c8  05 00 94 e7                                      ldr r0, [r4, r5]
003ed0cc  1f eb 00 eb                                      bl #0x427d50
003ed0d0  00 c0 a0 e3                                      mov ip, #0
003ed0d4  1c c0 cd e5                                      strb ip, [sp, #0x1c]
003ed0d8  00 20 a0 e3                                      mov r2, #0
003ed0dc  00 30 a0 e3                                      mov r3, #0
003ed0e0  02 c0 a0 e3                                      mov ip, #2
003ed0e4  f8 22 cd e1                                      strd r2, r3, [sp, #0x28]
003ed0e8  1d c0 cd e5                                      strb ip, [sp, #0x1d]
003ed0ec  00 c0 a0 e3                                      mov ip, #0
003ed0f0  20 c0 8d e5                                      str ip, [sp, #0x20]
003ed0f4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
003ed0f8  1c 40 8d e2                                      add r4, sp, #0x1c
003ed0fc  00 10 a0 e1                                      mov r1, r0
003ed100  08 c0 84 e5                                      str ip, [r4, #8]
003ed104  06 00 a0 e1                                      mov r0, r6
003ed108  01 c0 a0 e3                                      mov ip, #1
003ed10c  07 20 a0 e1                                      mov r2, r7
003ed110  04 30 a0 e1                                      mov r3, r4
003ed114  00 c0 8d e5                                      str ip, [sp]
003ed118  3b fb 0e eb                                      bl #0x7abe0c
003ed11c  04 00 a0 e1                                      mov r0, r4
003ed120  ff a7 0e eb                                      bl #0x797124
003ed124  c5 ff ff ea                                      b #0x3ed040
003ed128  82 96 0d eb                                      bl #0x752b38
003ed12c  da ff ff ea                                      b #0x3ed09c
; mapping-symbol data/literal pool
003ed130  88 7a 5a 00 ec 14 00 00 ac 4a 00 00 70 20 00 00  .byte 0x88, 0x7a, 0x5a, 0x00, 0xec, 0x14, 0x00, 0x00, 0xac, 0x4a, 0x00, 0x00, 0x70, 0x20, 0x00, 0x00
003ed140  94 25 00 00                                      .byte 0x94, 0x25, 0x00, 0x00

; FUNCTION 0x003f9018, declared_size=76, range_size=76, mode=arm
; class-group: MenuMessageManager<StatusMsg, 4>
; alias: _ZN18MenuMessageManagerI9StatusMsgLi4EE21FlushEnqueuedMessagesEi.clone.25
; demangled: MenuMessageManager<StatusMsg, 4>::FlushEnqueuedMessages(int) [clone .clone.25]
; decoder-mode: arm
003f9018  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003f901c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003f9020  70 40 2d e9                                      push {r4, r5, r6, lr}
003f9024  03 30 8f e0                                      add r3, pc, r3
003f9028  02 40 93 e7                                      ldr r4, [r3, r2]
003f902c  14 20 94 e5                                      ldr r2, [r4, #0x14]
003f9030  04 30 94 e5                                      ldr r3, [r4, #4]
003f9034  03 00 52 e1                                      cmp r2, r3
003f9038  06 00 00 0a                                      beq #0x3f9058
003f903c  04 50 84 e2                                      add r5, r4, #4
003f9040  05 00 a0 e1                                      mov r0, r5
003f9044  31 2b fe eb                                      bl #0x383d10
003f9048  14 20 94 e5                                      ldr r2, [r4, #0x14]
003f904c  04 30 94 e5                                      ldr r3, [r4, #4]
003f9050  03 00 52 e1                                      cmp r2, r3
003f9054  f9 ff ff 1a                                      bne #0x3f9040
003f9058  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003f905c  6c ba 59 00 ec 14 00 00                          .byte 0x6c, 0xba, 0x59, 0x00, 0xec, 0x14, 0x00, 0x00

; FUNCTION 0x00442c9c, declared_size=260, range_size=260, mode=arm
; class-group: MenuMessageManager<StatusMsg, 4>
; alias: _ZNK18MenuMessageManagerI9StatusMsgLi4EE6InvokeEPKci.clone.52
; demangled: MenuMessageManager<StatusMsg, 4>::Invoke(char const*, int) const [clone .clone.52]
; decoder-mode: arm
00442c9c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00442ca0  24 d0 4d e2                                      sub sp, sp, #0x24
00442ca4  00 60 a0 e1                                      mov r6, r0
00442ca8  77 a7 ff eb                                      bl #0x42ca8c
00442cac  b6 a7 ff eb                                      bl #0x42cb8c
00442cb0  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
00442cb4  00 50 50 e2                                      subs r5, r0, #0
00442cb8  04 40 8f e0                                      add r4, pc, r4
00442cbc  1f 00 00 0a                                      beq #0x442d40
00442cc0  d0 70 9f e5                                      ldr r7, [pc, #0xd0]
00442cc4  07 30 94 e7                                      ldr r3, [r4, r7]
00442cc8  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00442ccc  00 00 52 e3                                      cmp r2, #0
00442cd0  25 00 00 0a                                      beq #0x442d6c
00442cd4  28 00 93 e5                                      ldr r0, [r3, #0x28]
00442cd8  04 30 d0 e5                                      ldrb r3, [r0, #4]
00442cdc  00 00 53 e3                                      cmp r3, #0
00442ce0  18 00 00 0a                                      beq #0x442d48
00442ce4  07 00 94 e7                                      ldr r0, [r4, r7]
00442ce8  18 94 ff eb                                      bl #0x427d50
00442cec  00 c0 a0 e3                                      mov ip, #0
00442cf0  00 20 a0 e3                                      mov r2, #0
00442cf4  00 30 a0 e3                                      mov r3, #0
00442cf8  0c c0 cd e5                                      strb ip, [sp, #0xc]
00442cfc  02 c0 a0 e3                                      mov ip, #2
00442d00  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
00442d04  0d c0 cd e5                                      strb ip, [sp, #0xd]
00442d08  00 c0 a0 e3                                      mov ip, #0
00442d0c  10 c0 8d e5                                      str ip, [sp, #0x10]
00442d10  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00442d14  0c 40 8d e2                                      add r4, sp, #0xc
00442d18  00 10 a0 e1                                      mov r1, r0
00442d1c  08 c0 84 e5                                      str ip, [r4, #8]
00442d20  05 00 a0 e1                                      mov r0, r5
00442d24  01 c0 a0 e3                                      mov ip, #1
00442d28  06 20 a0 e1                                      mov r2, r6
00442d2c  04 30 a0 e1                                      mov r3, r4
00442d30  00 c0 8d e5                                      str ip, [sp]
00442d34  34 a4 0d eb                                      bl #0x7abe0c
00442d38  04 00 a0 e1                                      mov r0, r4
00442d3c  f8 50 0d eb                                      bl #0x797124
00442d40  24 d0 8d e2                                      add sp, sp, #0x24
00442d44  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00442d48  00 10 90 e5                                      ldr r1, [r0]
00442d4c  01 10 41 e2                                      sub r1, r1, #1
00442d50  00 00 51 e3                                      cmp r1, #0
00442d54  00 10 80 e5                                      str r1, [r0]
00442d58  0b 00 00 0a                                      beq #0x442d8c
00442d5c  07 30 94 e7                                      ldr r3, [r4, r7]
00442d60  00 20 a0 e3                                      mov r2, #0
00442d64  2c 20 83 e5                                      str r2, [r3, #0x2c]
00442d68  28 20 83 e5                                      str r2, [r3, #0x28]
00442d6c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00442d70  07 00 94 e7                                      ldr r0, [r4, r7]
00442d74  05 20 a0 e1                                      mov r2, r5
00442d78  03 10 94 e7                                      ldr r1, [r4, r3]
00442d7c  00 30 a0 e3                                      mov r3, #0
00442d80  00 10 91 e5                                      ldr r1, [r1]
00442d84  c5 93 ff eb                                      bl #0x427ca0
00442d88  d5 ff ff ea                                      b #0x442ce4
00442d8c  69 3f 0c eb                                      bl #0x752b38
00442d90  f1 ff ff ea                                      b #0x442d5c
; mapping-symbol data/literal pool
00442d94  d8 1d 55 00 70 20 00 00 94 25 00 00              .byte 0xd8, 0x1d, 0x55, 0x00, 0x70, 0x20, 0x00, 0x00, 0x94, 0x25, 0x00, 0x00
