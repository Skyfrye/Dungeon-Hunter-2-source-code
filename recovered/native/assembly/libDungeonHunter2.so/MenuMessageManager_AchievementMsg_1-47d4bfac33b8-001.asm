; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329930, declared_size=76, range_size=76, mode=arm
; class-group: MenuMessageManager<AchievementMsg, 1>
; alias: _ZN18MenuMessageManagerI14AchievementMsgLi1EED1Ev
; demangled: MenuMessageManager<AchievementMsg, 1>::~MenuMessageManager()
; decoder-mode: arm
00329930  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00329934  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00329938  70 40 2d e9                                      push {r4, r5, r6, lr}
0032993c  03 30 8f e0                                      add r3, pc, r3
00329940  02 20 93 e7                                      ldr r2, [r3, r2]
00329944  00 40 a0 e1                                      mov r4, r0
00329948  00 60 a0 e1                                      mov r6, r0
0032994c  08 20 82 e2                                      add r2, r2, #8
00329950  04 50 80 e2                                      add r5, r0, #4
00329954  2c 20 84 e4                                      str r2, [r4], #0x2c
00329958  28 40 44 e2                                      sub r4, r4, #0x28
0032995c  04 00 a0 e1                                      mov r0, r4
00329960  d8 ff ff eb                                      bl #0x3298c8
00329964  04 00 55 e1                                      cmp r5, r4
00329968  fa ff ff 1a                                      bne #0x329958
0032996c  06 00 a0 e1                                      mov r0, r6
00329970  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00329974  54 b1 66 00 c0 22 00 00                          .byte 0x54, 0xb1, 0x66, 0x00, 0xc0, 0x22, 0x00, 0x00

; FUNCTION 0x0032997c, declared_size=84, range_size=84, mode=arm
; class-group: MenuMessageManager<AchievementMsg, 1>
; alias: _ZN18MenuMessageManagerI14AchievementMsgLi1EED0Ev
; demangled: MenuMessageManager<AchievementMsg, 1>::~MenuMessageManager()
; decoder-mode: arm
0032997c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00329980  44 20 9f e5                                      ldr r2, [pc, #0x44]
00329984  70 40 2d e9                                      push {r4, r5, r6, lr}
00329988  03 30 8f e0                                      add r3, pc, r3
0032998c  02 20 93 e7                                      ldr r2, [r3, r2]
00329990  00 40 a0 e1                                      mov r4, r0
00329994  00 60 a0 e1                                      mov r6, r0
00329998  08 20 82 e2                                      add r2, r2, #8
0032999c  04 50 80 e2                                      add r5, r0, #4
003299a0  2c 20 84 e4                                      str r2, [r4], #0x2c
003299a4  28 40 44 e2                                      sub r4, r4, #0x28
003299a8  04 00 a0 e1                                      mov r0, r4
003299ac  c5 ff ff eb                                      bl #0x3298c8
003299b0  04 00 55 e1                                      cmp r5, r4
003299b4  fa ff ff 1a                                      bne #0x3299a4
003299b8  06 00 a0 e1                                      mov r0, r6
003299bc  9f 9a ff eb                                      bl #0x310440
003299c0  06 00 a0 e1                                      mov r0, r6
003299c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003299c8  08 b1 66 00 c0 22 00 00                          .byte 0x08, 0xb1, 0x66, 0x00, 0xc0, 0x22, 0x00, 0x00

; FUNCTION 0x00442890, declared_size=260, range_size=260, mode=arm
; class-group: MenuMessageManager<AchievementMsg, 1>
; alias: _ZNK18MenuMessageManagerI14AchievementMsgLi1EE6InvokeEPKci.clone.51
; demangled: MenuMessageManager<AchievementMsg, 1>::Invoke(char const*, int) const [clone .clone.51]
; decoder-mode: arm
00442890  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00442894  24 d0 4d e2                                      sub sp, sp, #0x24
00442898  00 60 a0 e1                                      mov r6, r0
0044289c  7a a8 ff eb                                      bl #0x42ca8c
004428a0  b9 a8 ff eb                                      bl #0x42cb8c
004428a4  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
004428a8  00 50 50 e2                                      subs r5, r0, #0
004428ac  04 40 8f e0                                      add r4, pc, r4
004428b0  1f 00 00 0a                                      beq #0x442934
004428b4  d0 70 9f e5                                      ldr r7, [pc, #0xd0]
004428b8  07 30 94 e7                                      ldr r3, [r4, r7]
004428bc  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
004428c0  00 00 52 e3                                      cmp r2, #0
004428c4  25 00 00 0a                                      beq #0x442960
004428c8  28 00 93 e5                                      ldr r0, [r3, #0x28]
004428cc  04 30 d0 e5                                      ldrb r3, [r0, #4]
004428d0  00 00 53 e3                                      cmp r3, #0
004428d4  18 00 00 0a                                      beq #0x44293c
004428d8  07 00 94 e7                                      ldr r0, [r4, r7]
004428dc  1b 95 ff eb                                      bl #0x427d50
004428e0  00 c0 a0 e3                                      mov ip, #0
004428e4  00 20 a0 e3                                      mov r2, #0
004428e8  00 30 a0 e3                                      mov r3, #0
004428ec  0c c0 cd e5                                      strb ip, [sp, #0xc]
004428f0  02 c0 a0 e3                                      mov ip, #2
004428f4  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
004428f8  0d c0 cd e5                                      strb ip, [sp, #0xd]
004428fc  00 c0 a0 e3                                      mov ip, #0
00442900  10 c0 8d e5                                      str ip, [sp, #0x10]
00442904  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00442908  0c 40 8d e2                                      add r4, sp, #0xc
0044290c  00 10 a0 e1                                      mov r1, r0
00442910  08 c0 84 e5                                      str ip, [r4, #8]
00442914  05 00 a0 e1                                      mov r0, r5
00442918  01 c0 a0 e3                                      mov ip, #1
0044291c  06 20 a0 e1                                      mov r2, r6
00442920  04 30 a0 e1                                      mov r3, r4
00442924  00 c0 8d e5                                      str ip, [sp]
00442928  37 a5 0d eb                                      bl #0x7abe0c
0044292c  04 00 a0 e1                                      mov r0, r4
00442930  fb 51 0d eb                                      bl #0x797124
00442934  24 d0 8d e2                                      add sp, sp, #0x24
00442938  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0044293c  00 10 90 e5                                      ldr r1, [r0]
00442940  01 10 41 e2                                      sub r1, r1, #1
00442944  00 00 51 e3                                      cmp r1, #0
00442948  00 10 80 e5                                      str r1, [r0]
0044294c  0b 00 00 0a                                      beq #0x442980
00442950  07 30 94 e7                                      ldr r3, [r4, r7]
00442954  00 20 a0 e3                                      mov r2, #0
00442958  2c 20 83 e5                                      str r2, [r3, #0x2c]
0044295c  28 20 83 e5                                      str r2, [r3, #0x28]
00442960  28 30 9f e5                                      ldr r3, [pc, #0x28]
00442964  07 00 94 e7                                      ldr r0, [r4, r7]
00442968  05 20 a0 e1                                      mov r2, r5
0044296c  03 10 94 e7                                      ldr r1, [r4, r3]
00442970  00 30 a0 e3                                      mov r3, #0
00442974  00 10 91 e5                                      ldr r1, [r1]
00442978  c8 94 ff eb                                      bl #0x427ca0
0044297c  d5 ff ff ea                                      b #0x4428d8
00442980  6c 40 0c eb                                      bl #0x752b38
00442984  f1 ff ff ea                                      b #0x442950
; mapping-symbol data/literal pool
00442988  e4 21 55 00 08 45 00 00 a4 2d 00 00              .byte 0xe4, 0x21, 0x55, 0x00, 0x08, 0x45, 0x00, 0x00, 0xa4, 0x2d, 0x00, 0x00
