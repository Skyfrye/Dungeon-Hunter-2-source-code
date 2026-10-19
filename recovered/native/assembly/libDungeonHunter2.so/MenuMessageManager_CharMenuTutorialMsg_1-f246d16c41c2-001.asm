; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329e78, declared_size=76, range_size=76, mode=arm
; class-group: MenuMessageManager<CharMenuTutorialMsg, 1>
; alias: _ZN18MenuMessageManagerI19CharMenuTutorialMsgLi1EED1Ev
; demangled: MenuMessageManager<CharMenuTutorialMsg, 1>::~MenuMessageManager()
; decoder-mode: arm
00329e78  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00329e7c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00329e80  70 40 2d e9                                      push {r4, r5, r6, lr}
00329e84  03 30 8f e0                                      add r3, pc, r3
00329e88  02 20 93 e7                                      ldr r2, [r3, r2]
00329e8c  00 40 a0 e1                                      mov r4, r0
00329e90  00 60 a0 e1                                      mov r6, r0
00329e94  08 20 82 e2                                      add r2, r2, #8
00329e98  04 50 80 e2                                      add r5, r0, #4
00329e9c  2c 20 84 e4                                      str r2, [r4], #0x2c
00329ea0  28 40 44 e2                                      sub r4, r4, #0x28
00329ea4  04 00 a0 e1                                      mov r0, r4
00329ea8  d8 ff ff eb                                      bl #0x329e10
00329eac  04 00 55 e1                                      cmp r5, r4
00329eb0  fa ff ff 1a                                      bne #0x329ea0
00329eb4  06 00 a0 e1                                      mov r0, r6
00329eb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00329ebc  0c ac 66 00 78 11 00 00                          .byte 0x0c, 0xac, 0x66, 0x00, 0x78, 0x11, 0x00, 0x00

; FUNCTION 0x00329ec4, declared_size=84, range_size=84, mode=arm
; class-group: MenuMessageManager<CharMenuTutorialMsg, 1>
; alias: _ZN18MenuMessageManagerI19CharMenuTutorialMsgLi1EED0Ev
; demangled: MenuMessageManager<CharMenuTutorialMsg, 1>::~MenuMessageManager()
; decoder-mode: arm
00329ec4  44 30 9f e5                                      ldr r3, [pc, #0x44]
00329ec8  44 20 9f e5                                      ldr r2, [pc, #0x44]
00329ecc  70 40 2d e9                                      push {r4, r5, r6, lr}
00329ed0  03 30 8f e0                                      add r3, pc, r3
00329ed4  02 20 93 e7                                      ldr r2, [r3, r2]
00329ed8  00 40 a0 e1                                      mov r4, r0
00329edc  00 60 a0 e1                                      mov r6, r0
00329ee0  08 20 82 e2                                      add r2, r2, #8
00329ee4  04 50 80 e2                                      add r5, r0, #4
00329ee8  2c 20 84 e4                                      str r2, [r4], #0x2c
00329eec  28 40 44 e2                                      sub r4, r4, #0x28
00329ef0  04 00 a0 e1                                      mov r0, r4
00329ef4  c5 ff ff eb                                      bl #0x329e10
00329ef8  04 00 55 e1                                      cmp r5, r4
00329efc  fa ff ff 1a                                      bne #0x329eec
00329f00  06 00 a0 e1                                      mov r0, r6
00329f04  4d 99 ff eb                                      bl #0x310440
00329f08  06 00 a0 e1                                      mov r0, r6
00329f0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00329f10  c0 ab 66 00 78 11 00 00                          .byte 0xc0, 0xab, 0x66, 0x00, 0x78, 0x11, 0x00, 0x00

; FUNCTION 0x00442734, declared_size=260, range_size=260, mode=arm
; class-group: MenuMessageManager<CharMenuTutorialMsg, 1>
; alias: _ZNK18MenuMessageManagerI19CharMenuTutorialMsgLi1EE6InvokeEPKci.clone.50
; demangled: MenuMessageManager<CharMenuTutorialMsg, 1>::Invoke(char const*, int) const [clone .clone.50]
; decoder-mode: arm
00442734  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00442738  24 d0 4d e2                                      sub sp, sp, #0x24
0044273c  00 60 a0 e1                                      mov r6, r0
00442740  d1 a8 ff eb                                      bl #0x42ca8c
00442744  10 a9 ff eb                                      bl #0x42cb8c
00442748  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
0044274c  00 50 50 e2                                      subs r5, r0, #0
00442750  04 40 8f e0                                      add r4, pc, r4
00442754  1f 00 00 0a                                      beq #0x4427d8
00442758  d0 70 9f e5                                      ldr r7, [pc, #0xd0]
0044275c  07 30 94 e7                                      ldr r3, [r4, r7]
00442760  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00442764  00 00 52 e3                                      cmp r2, #0
00442768  25 00 00 0a                                      beq #0x442804
0044276c  28 00 93 e5                                      ldr r0, [r3, #0x28]
00442770  04 30 d0 e5                                      ldrb r3, [r0, #4]
00442774  00 00 53 e3                                      cmp r3, #0
00442778  18 00 00 0a                                      beq #0x4427e0
0044277c  07 00 94 e7                                      ldr r0, [r4, r7]
00442780  72 95 ff eb                                      bl #0x427d50
00442784  00 c0 a0 e3                                      mov ip, #0
00442788  00 20 a0 e3                                      mov r2, #0
0044278c  00 30 a0 e3                                      mov r3, #0
00442790  0c c0 cd e5                                      strb ip, [sp, #0xc]
00442794  02 c0 a0 e3                                      mov ip, #2
00442798  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
0044279c  0d c0 cd e5                                      strb ip, [sp, #0xd]
004427a0  00 c0 a0 e3                                      mov ip, #0
004427a4  10 c0 8d e5                                      str ip, [sp, #0x10]
004427a8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
004427ac  0c 40 8d e2                                      add r4, sp, #0xc
004427b0  00 10 a0 e1                                      mov r1, r0
004427b4  08 c0 84 e5                                      str ip, [r4, #8]
004427b8  05 00 a0 e1                                      mov r0, r5
004427bc  01 c0 a0 e3                                      mov ip, #1
004427c0  06 20 a0 e1                                      mov r2, r6
004427c4  04 30 a0 e1                                      mov r3, r4
004427c8  00 c0 8d e5                                      str ip, [sp]
004427cc  8e a5 0d eb                                      bl #0x7abe0c
004427d0  04 00 a0 e1                                      mov r0, r4
004427d4  52 52 0d eb                                      bl #0x797124
004427d8  24 d0 8d e2                                      add sp, sp, #0x24
004427dc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004427e0  00 10 90 e5                                      ldr r1, [r0]
004427e4  01 10 41 e2                                      sub r1, r1, #1
004427e8  00 00 51 e3                                      cmp r1, #0
004427ec  00 10 80 e5                                      str r1, [r0]
004427f0  0b 00 00 0a                                      beq #0x442824
004427f4  07 30 94 e7                                      ldr r3, [r4, r7]
004427f8  00 20 a0 e3                                      mov r2, #0
004427fc  2c 20 83 e5                                      str r2, [r3, #0x2c]
00442800  28 20 83 e5                                      str r2, [r3, #0x28]
00442804  28 30 9f e5                                      ldr r3, [pc, #0x28]
00442808  07 00 94 e7                                      ldr r0, [r4, r7]
0044280c  05 20 a0 e1                                      mov r2, r5
00442810  03 10 94 e7                                      ldr r1, [r4, r3]
00442814  00 30 a0 e3                                      mov r3, #0
00442818  00 10 91 e5                                      ldr r1, [r1]
0044281c  1f 95 ff eb                                      bl #0x427ca0
00442820  d5 ff ff ea                                      b #0x44277c
00442824  c3 40 0c eb                                      bl #0x752b38
00442828  f1 ff ff ea                                      b #0x4427f4
; mapping-symbol data/literal pool
0044282c  40 23 55 00 54 40 00 00 44 46 00 00              .byte 0x40, 0x23, 0x55, 0x00, 0x54, 0x40, 0x00, 0x00, 0x44, 0x46, 0x00, 0x00

; FUNCTION 0x0045a0fc, declared_size=204, range_size=204, mode=arm
; class-group: MenuMessageManager<CharMenuTutorialMsg, 1>
; alias: _ZNK18MenuMessageManagerI19CharMenuTutorialMsgLi1EE6InvokeEPKci.clone.31
; demangled: MenuMessageManager<CharMenuTutorialMsg, 1>::Invoke(char const*, int) const [clone .clone.31]
; decoder-mode: arm
0045a0fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045a100  20 d0 4d e2                                      sub sp, sp, #0x20
0045a104  00 60 a0 e1                                      mov r6, r0
0045a108  5f 4a ff eb                                      bl #0x42ca8c
0045a10c  9e 4a ff eb                                      bl #0x42cb8c
0045a110  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
0045a114  00 50 50 e2                                      subs r5, r0, #0
0045a118  04 40 8f e0                                      add r4, pc, r4
0045a11c  1d 00 00 0a                                      beq #0x45a198
0045a120  98 70 9f e5                                      ldr r7, [pc, #0x98]
0045a124  07 80 94 e7                                      ldr r8, [r4, r7]
0045a128  28 00 88 e2                                      add r0, r8, #0x28
0045a12c  04 b0 fc eb                                      bl #0x386144
0045a130  2c 30 98 e5                                      ldr r3, [r8, #0x2c]
0045a134  00 00 53 e3                                      cmp r3, #0
0045a138  18 00 00 0a                                      beq #0x45a1a0
0045a13c  07 00 94 e7                                      ldr r0, [r4, r7]
0045a140  02 37 ff eb                                      bl #0x427d50
0045a144  00 c0 a0 e3                                      mov ip, #0
0045a148  00 20 a0 e3                                      mov r2, #0
0045a14c  00 30 a0 e3                                      mov r3, #0
0045a150  0c c0 cd e5                                      strb ip, [sp, #0xc]
0045a154  02 c0 a0 e3                                      mov ip, #2
0045a158  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
0045a15c  0d c0 cd e5                                      strb ip, [sp, #0xd]
0045a160  00 c0 a0 e3                                      mov ip, #0
0045a164  10 c0 8d e5                                      str ip, [sp, #0x10]
0045a168  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0045a16c  0c 40 8d e2                                      add r4, sp, #0xc
0045a170  00 10 a0 e1                                      mov r1, r0
0045a174  08 c0 84 e5                                      str ip, [r4, #8]
0045a178  05 00 a0 e1                                      mov r0, r5
0045a17c  01 c0 a0 e3                                      mov ip, #1
0045a180  06 20 a0 e1                                      mov r2, r6
0045a184  04 30 a0 e1                                      mov r3, r4
0045a188  00 c0 8d e5                                      str ip, [sp]
0045a18c  1e 47 0d eb                                      bl #0x7abe0c
0045a190  04 00 a0 e1                                      mov r0, r4
0045a194  e2 f3 0c eb                                      bl #0x797124
0045a198  20 d0 8d e2                                      add sp, sp, #0x20
0045a19c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045a1a0  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0045a1a4  08 00 a0 e1                                      mov r0, r8
0045a1a8  02 10 94 e7                                      ldr r1, [r4, r2]
0045a1ac  05 20 a0 e1                                      mov r2, r5
0045a1b0  00 10 91 e5                                      ldr r1, [r1]
0045a1b4  b9 36 ff eb                                      bl #0x427ca0
0045a1b8  df ff ff ea                                      b #0x45a13c
; mapping-symbol data/literal pool
0045a1bc  78 a9 53 00 54 40 00 00 44 46 00 00              .byte 0x78, 0xa9, 0x53, 0x00, 0x54, 0x40, 0x00, 0x00, 0x44, 0x46, 0x00, 0x00
