; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329c4c, declared_size=76, range_size=76, mode=arm
; class-group: MenuMessageManager<OnlineStatusMsg, 1>
; alias: _ZN18MenuMessageManagerI15OnlineStatusMsgLi1EED1Ev
; demangled: MenuMessageManager<OnlineStatusMsg, 1>::~MenuMessageManager()
; decoder-mode: arm
00329c4c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00329c50  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00329c54  70 40 2d e9                                      push {r4, r5, r6, lr}
00329c58  03 30 8f e0                                      add r3, pc, r3
00329c5c  02 20 93 e7                                      ldr r2, [r3, r2]
00329c60  00 40 a0 e1                                      mov r4, r0
00329c64  00 60 a0 e1                                      mov r6, r0
00329c68  08 20 82 e2                                      add r2, r2, #8
00329c6c  04 50 80 e2                                      add r5, r0, #4
00329c70  2c 20 84 e4                                      str r2, [r4], #0x2c
00329c74  28 40 44 e2                                      sub r4, r4, #0x28
00329c78  04 00 a0 e1                                      mov r0, r4
00329c7c  df ff ff eb                                      bl #0x329c00
00329c80  04 00 55 e1                                      cmp r5, r4
00329c84  fa ff ff 1a                                      bne #0x329c74
00329c88  06 00 a0 e1                                      mov r0, r6
00329c8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00329c90  38 ae 66 00 00 22 00 00                          .byte 0x38, 0xae, 0x66, 0x00, 0x00, 0x22, 0x00, 0x00

; FUNCTION 0x00329c98, declared_size=84, range_size=84, mode=arm
; class-group: MenuMessageManager<OnlineStatusMsg, 1>
; alias: _ZN18MenuMessageManagerI15OnlineStatusMsgLi1EED0Ev
; demangled: MenuMessageManager<OnlineStatusMsg, 1>::~MenuMessageManager()
; decoder-mode: arm
00329c98  44 30 9f e5                                      ldr r3, [pc, #0x44]
00329c9c  44 20 9f e5                                      ldr r2, [pc, #0x44]
00329ca0  70 40 2d e9                                      push {r4, r5, r6, lr}
00329ca4  03 30 8f e0                                      add r3, pc, r3
00329ca8  02 20 93 e7                                      ldr r2, [r3, r2]
00329cac  00 40 a0 e1                                      mov r4, r0
00329cb0  00 60 a0 e1                                      mov r6, r0
00329cb4  08 20 82 e2                                      add r2, r2, #8
00329cb8  04 50 80 e2                                      add r5, r0, #4
00329cbc  2c 20 84 e4                                      str r2, [r4], #0x2c
00329cc0  28 40 44 e2                                      sub r4, r4, #0x28
00329cc4  04 00 a0 e1                                      mov r0, r4
00329cc8  cc ff ff eb                                      bl #0x329c00
00329ccc  04 00 55 e1                                      cmp r5, r4
00329cd0  fa ff ff 1a                                      bne #0x329cc0
00329cd4  06 00 a0 e1                                      mov r0, r6
00329cd8  d8 99 ff eb                                      bl #0x310440
00329cdc  06 00 a0 e1                                      mov r0, r6
00329ce0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00329ce4  ec ad 66 00 00 22 00 00                          .byte 0xec, 0xad, 0x66, 0x00, 0x00, 0x22, 0x00, 0x00

; FUNCTION 0x003f1af4, declared_size=76, range_size=76, mode=arm
; class-group: MenuMessageManager<OnlineStatusMsg, 1>
; alias: _ZN18MenuMessageManagerI15OnlineStatusMsgLi1EE21FlushEnqueuedMessagesEi.clone.16
; demangled: MenuMessageManager<OnlineStatusMsg, 1>::FlushEnqueuedMessages(int) [clone .clone.16]
; decoder-mode: arm
003f1af4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003f1af8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003f1afc  70 40 2d e9                                      push {r4, r5, r6, lr}
003f1b00  03 30 8f e0                                      add r3, pc, r3
003f1b04  02 40 93 e7                                      ldr r4, [r3, r2]
003f1b08  14 20 94 e5                                      ldr r2, [r4, #0x14]
003f1b0c  04 30 94 e5                                      ldr r3, [r4, #4]
003f1b10  03 00 52 e1                                      cmp r2, r3
003f1b14  06 00 00 0a                                      beq #0x3f1b34
003f1b18  04 50 84 e2                                      add r5, r4, #4
003f1b1c  05 00 a0 e1                                      mov r0, r5
003f1b20  a0 48 fe eb                                      bl #0x383da8
003f1b24  14 20 94 e5                                      ldr r2, [r4, #0x14]
003f1b28  04 30 94 e5                                      ldr r3, [r4, #4]
003f1b2c  03 00 52 e1                                      cmp r2, r3
003f1b30  f9 ff ff 1a                                      bne #0x3f1b1c
003f1b34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003f1b38  90 2f 5a 00 d8 0f 00 00                          .byte 0x90, 0x2f, 0x5a, 0x00, 0xd8, 0x0f, 0x00, 0x00

; FUNCTION 0x00442da0, declared_size=260, range_size=260, mode=arm
; class-group: MenuMessageManager<OnlineStatusMsg, 1>
; alias: _ZNK18MenuMessageManagerI15OnlineStatusMsgLi1EE6InvokeEPKci.clone.53
; demangled: MenuMessageManager<OnlineStatusMsg, 1>::Invoke(char const*, int) const [clone .clone.53]
; decoder-mode: arm
00442da0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00442da4  24 d0 4d e2                                      sub sp, sp, #0x24
00442da8  00 60 a0 e1                                      mov r6, r0
00442dac  36 a7 ff eb                                      bl #0x42ca8c
00442db0  75 a7 ff eb                                      bl #0x42cb8c
00442db4  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
00442db8  00 50 50 e2                                      subs r5, r0, #0
00442dbc  04 40 8f e0                                      add r4, pc, r4
00442dc0  1f 00 00 0a                                      beq #0x442e44
00442dc4  d0 70 9f e5                                      ldr r7, [pc, #0xd0]
00442dc8  07 30 94 e7                                      ldr r3, [r4, r7]
00442dcc  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00442dd0  00 00 52 e3                                      cmp r2, #0
00442dd4  25 00 00 0a                                      beq #0x442e70
00442dd8  28 00 93 e5                                      ldr r0, [r3, #0x28]
00442ddc  04 30 d0 e5                                      ldrb r3, [r0, #4]
00442de0  00 00 53 e3                                      cmp r3, #0
00442de4  18 00 00 0a                                      beq #0x442e4c
00442de8  07 00 94 e7                                      ldr r0, [r4, r7]
00442dec  d7 93 ff eb                                      bl #0x427d50
00442df0  00 c0 a0 e3                                      mov ip, #0
00442df4  00 20 a0 e3                                      mov r2, #0
00442df8  00 30 a0 e3                                      mov r3, #0
00442dfc  0c c0 cd e5                                      strb ip, [sp, #0xc]
00442e00  02 c0 a0 e3                                      mov ip, #2
00442e04  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
00442e08  0d c0 cd e5                                      strb ip, [sp, #0xd]
00442e0c  00 c0 a0 e3                                      mov ip, #0
00442e10  10 c0 8d e5                                      str ip, [sp, #0x10]
00442e14  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00442e18  0c 40 8d e2                                      add r4, sp, #0xc
00442e1c  00 10 a0 e1                                      mov r1, r0
00442e20  08 c0 84 e5                                      str ip, [r4, #8]
00442e24  05 00 a0 e1                                      mov r0, r5
00442e28  01 c0 a0 e3                                      mov ip, #1
00442e2c  06 20 a0 e1                                      mov r2, r6
00442e30  04 30 a0 e1                                      mov r3, r4
00442e34  00 c0 8d e5                                      str ip, [sp]
00442e38  f3 a3 0d eb                                      bl #0x7abe0c
00442e3c  04 00 a0 e1                                      mov r0, r4
00442e40  b7 50 0d eb                                      bl #0x797124
00442e44  24 d0 8d e2                                      add sp, sp, #0x24
00442e48  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00442e4c  00 10 90 e5                                      ldr r1, [r0]
00442e50  01 10 41 e2                                      sub r1, r1, #1
00442e54  00 00 51 e3                                      cmp r1, #0
00442e58  00 10 80 e5                                      str r1, [r0]
00442e5c  0b 00 00 0a                                      beq #0x442e90
00442e60  07 30 94 e7                                      ldr r3, [r4, r7]
00442e64  00 20 a0 e3                                      mov r2, #0
00442e68  2c 20 83 e5                                      str r2, [r3, #0x2c]
00442e6c  28 20 83 e5                                      str r2, [r3, #0x28]
00442e70  28 30 9f e5                                      ldr r3, [pc, #0x28]
00442e74  07 00 94 e7                                      ldr r0, [r4, r7]
00442e78  05 20 a0 e1                                      mov r2, r5
00442e7c  03 10 94 e7                                      ldr r1, [r4, r3]
00442e80  00 30 a0 e3                                      mov r3, #0
00442e84  00 10 91 e5                                      ldr r1, [r1]
00442e88  84 93 ff eb                                      bl #0x427ca0
00442e8c  d5 ff ff ea                                      b #0x442de8
00442e90  28 3f 0c eb                                      bl #0x752b38
00442e94  f1 ff ff ea                                      b #0x442e60
; mapping-symbol data/literal pool
00442e98  d4 1c 55 00 c4 35 00 00 8c 33 00 00              .byte 0xd4, 0x1c, 0x55, 0x00, 0xc4, 0x35, 0x00, 0x00, 0x8c, 0x33, 0x00, 0x00
