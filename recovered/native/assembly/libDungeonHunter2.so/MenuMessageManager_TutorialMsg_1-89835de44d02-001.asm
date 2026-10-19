; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329a54, declared_size=144, range_size=144, mode=arm
; class-group: MenuMessageManager<TutorialMsg, 1>
; alias: _ZN18MenuMessageManagerI11TutorialMsgLi1EED1Ev
; demangled: MenuMessageManager<TutorialMsg, 1>::~MenuMessageManager()
; decoder-mode: arm
00329a54  80 30 9f e5                                      ldr r3, [pc, #0x80]
00329a58  80 20 9f e5                                      ldr r2, [pc, #0x80]
00329a5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00329a60  03 30 8f e0                                      add r3, pc, r3
00329a64  02 20 93 e7                                      ldr r2, [r3, r2]
00329a68  00 40 a0 e1                                      mov r4, r0
00329a6c  00 60 a0 e1                                      mov r6, r0
00329a70  08 20 82 e2                                      add r2, r2, #8
00329a74  04 50 80 e2                                      add r5, r0, #4
00329a78  2c 20 84 e4                                      str r2, [r4], #0x2c
00329a7c  28 30 34 e5                                      ldr r3, [r4, #-0x28]!
00329a80  10 10 94 e5                                      ldr r1, [r4, #0x10]
00329a84  08 20 94 e5                                      ldr r2, [r4, #8]
00329a88  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00329a8c  03 00 51 e1                                      cmp r1, r3
00329a90  0b 00 00 0a                                      beq #0x329ac4
00329a94  08 30 83 e2                                      add r3, r3, #8
00329a98  02 00 53 e1                                      cmp r3, r2
00329a9c  04 00 00 0a                                      beq #0x329ab4
00329aa0  03 00 51 e1                                      cmp r1, r3
00329aa4  08 30 83 e2                                      add r3, r3, #8
00329aa8  05 00 00 0a                                      beq #0x329ac4
00329aac  03 00 52 e1                                      cmp r2, r3
00329ab0  fa ff ff 1a                                      bne #0x329aa0
00329ab4  04 30 b0 e5                                      ldr r3, [r0, #4]!
00329ab8  03 00 51 e1                                      cmp r1, r3
00329abc  80 20 83 e2                                      add r2, r3, #0x80
00329ac0  f3 ff ff 1a                                      bne #0x329a94
00329ac4  04 00 a0 e1                                      mov r0, r4
00329ac8  c0 ff ff eb                                      bl #0x3299d0
00329acc  05 00 54 e1                                      cmp r4, r5
00329ad0  e9 ff ff 1a                                      bne #0x329a7c
00329ad4  06 00 a0 e1                                      mov r0, r6
00329ad8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00329adc  30 b0 66 00 78 31 00 00                          .byte 0x30, 0xb0, 0x66, 0x00, 0x78, 0x31, 0x00, 0x00

; FUNCTION 0x00329ae4, declared_size=152, range_size=152, mode=arm
; class-group: MenuMessageManager<TutorialMsg, 1>
; alias: _ZN18MenuMessageManagerI11TutorialMsgLi1EED0Ev
; demangled: MenuMessageManager<TutorialMsg, 1>::~MenuMessageManager()
; decoder-mode: arm
00329ae4  88 30 9f e5                                      ldr r3, [pc, #0x88]
00329ae8  88 20 9f e5                                      ldr r2, [pc, #0x88]
00329aec  70 40 2d e9                                      push {r4, r5, r6, lr}
00329af0  03 30 8f e0                                      add r3, pc, r3
00329af4  02 20 93 e7                                      ldr r2, [r3, r2]
00329af8  00 40 a0 e1                                      mov r4, r0
00329afc  00 60 a0 e1                                      mov r6, r0
00329b00  08 20 82 e2                                      add r2, r2, #8
00329b04  04 50 80 e2                                      add r5, r0, #4
00329b08  2c 20 84 e4                                      str r2, [r4], #0x2c
00329b0c  28 30 34 e5                                      ldr r3, [r4, #-0x28]!
00329b10  10 10 94 e5                                      ldr r1, [r4, #0x10]
00329b14  08 20 94 e5                                      ldr r2, [r4, #8]
00329b18  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00329b1c  03 00 51 e1                                      cmp r1, r3
00329b20  0b 00 00 0a                                      beq #0x329b54
00329b24  08 30 83 e2                                      add r3, r3, #8
00329b28  02 00 53 e1                                      cmp r3, r2
00329b2c  04 00 00 0a                                      beq #0x329b44
00329b30  03 00 51 e1                                      cmp r1, r3
00329b34  08 30 83 e2                                      add r3, r3, #8
00329b38  05 00 00 0a                                      beq #0x329b54
00329b3c  03 00 52 e1                                      cmp r2, r3
00329b40  fa ff ff 1a                                      bne #0x329b30
00329b44  04 30 b0 e5                                      ldr r3, [r0, #4]!
00329b48  03 00 51 e1                                      cmp r1, r3
00329b4c  80 20 83 e2                                      add r2, r3, #0x80
00329b50  f3 ff ff 1a                                      bne #0x329b24
00329b54  04 00 a0 e1                                      mov r0, r4
00329b58  9c ff ff eb                                      bl #0x3299d0
00329b5c  05 00 54 e1                                      cmp r4, r5
00329b60  e9 ff ff 1a                                      bne #0x329b0c
00329b64  06 00 a0 e1                                      mov r0, r6
00329b68  34 9a ff eb                                      bl #0x310440
00329b6c  06 00 a0 e1                                      mov r0, r6
00329b70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00329b74  a0 af 66 00 78 31 00 00                          .byte 0xa0, 0xaf, 0x66, 0x00, 0x78, 0x31, 0x00, 0x00

; FUNCTION 0x003f2274, declared_size=144, range_size=144, mode=arm
; class-group: MenuMessageManager<TutorialMsg, 1>
; alias: _ZN18MenuMessageManagerI11TutorialMsgLi1EE21FlushEnqueuedMessagesEi.clone.26
; demangled: MenuMessageManager<TutorialMsg, 1>::FlushEnqueuedMessages(int) [clone .clone.26]
; decoder-mode: arm
003f2274  70 40 2d e9                                      push {r4, r5, r6, lr}
003f2278  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
003f227c  7c 60 9f e5                                      ldr r6, [pc, #0x7c]
003f2280  05 50 8f e0                                      add r5, pc, r5
003f2284  06 30 95 e7                                      ldr r3, [r5, r6]
003f2288  03 40 a0 e1                                      mov r4, r3
003f228c  04 30 93 e5                                      ldr r3, [r3, #4]
003f2290  14 20 94 e5                                      ldr r2, [r4, #0x14]
003f2294  02 00 53 e1                                      cmp r3, r2
003f2298  16 00 00 0a                                      beq #0x3f22f8
003f229c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003f22a0  08 20 42 e2                                      sub r2, r2, #8
003f22a4  02 00 53 e1                                      cmp r3, r2
003f22a8  08 30 83 12                                      addne r3, r3, #8
003f22ac  04 30 84 15                                      strne r3, [r4, #4]
003f22b0  f6 ff ff 1a                                      bne #0x3f2290
003f22b4  08 00 94 e5                                      ldr r0, [r4, #8]
003f22b8  80 10 a0 e3                                      mov r1, #0x80
003f22bc  00 00 50 e3                                      cmp r0, #0
003f22c0  00 00 00 0a                                      beq #0x3f22c8
003f22c4  0d 5b 0c eb                                      bl #0x708f00
003f22c8  06 20 95 e7                                      ldr r2, [r5, r6]
003f22cc  10 30 92 e5                                      ldr r3, [r2, #0x10]
003f22d0  04 10 83 e2                                      add r1, r3, #4
003f22d4  10 10 82 e5                                      str r1, [r2, #0x10]
003f22d8  04 30 93 e5                                      ldr r3, [r3, #4]
003f22dc  80 10 83 e2                                      add r1, r3, #0x80
003f22e0  0c 10 82 e5                                      str r1, [r2, #0xc]
003f22e4  04 30 82 e5                                      str r3, [r2, #4]
003f22e8  08 30 82 e5                                      str r3, [r2, #8]
003f22ec  14 20 94 e5                                      ldr r2, [r4, #0x14]
003f22f0  02 00 53 e1                                      cmp r3, r2
003f22f4  e8 ff ff 1a                                      bne #0x3f229c
003f22f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003f22fc  10 28 5a 00 10 1c 00 00                          .byte 0x10, 0x28, 0x5a, 0x00, 0x10, 0x1c, 0x00, 0x00

; FUNCTION 0x00442a14, declared_size=260, range_size=260, mode=arm
; class-group: MenuMessageManager<TutorialMsg, 1>
; alias: _ZNK18MenuMessageManagerI11TutorialMsgLi1EE6InvokeEPKci.clone.49
; demangled: MenuMessageManager<TutorialMsg, 1>::Invoke(char const*, int) const [clone .clone.49]
; decoder-mode: arm
00442a14  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00442a18  24 d0 4d e2                                      sub sp, sp, #0x24
00442a1c  00 60 a0 e1                                      mov r6, r0
00442a20  19 a8 ff eb                                      bl #0x42ca8c
00442a24  58 a8 ff eb                                      bl #0x42cb8c
00442a28  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
00442a2c  00 50 50 e2                                      subs r5, r0, #0
00442a30  04 40 8f e0                                      add r4, pc, r4
00442a34  1f 00 00 0a                                      beq #0x442ab8
00442a38  d0 70 9f e5                                      ldr r7, [pc, #0xd0]
00442a3c  07 30 94 e7                                      ldr r3, [r4, r7]
00442a40  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00442a44  00 00 52 e3                                      cmp r2, #0
00442a48  25 00 00 0a                                      beq #0x442ae4
00442a4c  28 00 93 e5                                      ldr r0, [r3, #0x28]
00442a50  04 30 d0 e5                                      ldrb r3, [r0, #4]
00442a54  00 00 53 e3                                      cmp r3, #0
00442a58  18 00 00 0a                                      beq #0x442ac0
00442a5c  07 00 94 e7                                      ldr r0, [r4, r7]
00442a60  ba 94 ff eb                                      bl #0x427d50
00442a64  00 c0 a0 e3                                      mov ip, #0
00442a68  00 20 a0 e3                                      mov r2, #0
00442a6c  00 30 a0 e3                                      mov r3, #0
00442a70  0c c0 cd e5                                      strb ip, [sp, #0xc]
00442a74  02 c0 a0 e3                                      mov ip, #2
00442a78  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
00442a7c  0d c0 cd e5                                      strb ip, [sp, #0xd]
00442a80  00 c0 a0 e3                                      mov ip, #0
00442a84  10 c0 8d e5                                      str ip, [sp, #0x10]
00442a88  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00442a8c  0c 40 8d e2                                      add r4, sp, #0xc
00442a90  00 10 a0 e1                                      mov r1, r0
00442a94  08 c0 84 e5                                      str ip, [r4, #8]
00442a98  05 00 a0 e1                                      mov r0, r5
00442a9c  01 c0 a0 e3                                      mov ip, #1
00442aa0  06 20 a0 e1                                      mov r2, r6
00442aa4  04 30 a0 e1                                      mov r3, r4
00442aa8  00 c0 8d e5                                      str ip, [sp]
00442aac  d6 a4 0d eb                                      bl #0x7abe0c
00442ab0  04 00 a0 e1                                      mov r0, r4
00442ab4  9a 51 0d eb                                      bl #0x797124
00442ab8  24 d0 8d e2                                      add sp, sp, #0x24
00442abc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00442ac0  00 10 90 e5                                      ldr r1, [r0]
00442ac4  01 10 41 e2                                      sub r1, r1, #1
00442ac8  00 00 51 e3                                      cmp r1, #0
00442acc  00 10 80 e5                                      str r1, [r0]
00442ad0  0b 00 00 0a                                      beq #0x442b04
00442ad4  07 30 94 e7                                      ldr r3, [r4, r7]
00442ad8  00 20 a0 e3                                      mov r2, #0
00442adc  2c 20 83 e5                                      str r2, [r3, #0x2c]
00442ae0  28 20 83 e5                                      str r2, [r3, #0x28]
00442ae4  28 30 9f e5                                      ldr r3, [pc, #0x28]
00442ae8  07 00 94 e7                                      ldr r0, [r4, r7]
00442aec  05 20 a0 e1                                      mov r2, r5
00442af0  03 10 94 e7                                      ldr r1, [r4, r3]
00442af4  00 30 a0 e3                                      mov r3, #0
00442af8  00 10 91 e5                                      ldr r1, [r1]
00442afc  67 94 ff eb                                      bl #0x427ca0
00442b00  d5 ff ff ea                                      b #0x442a5c
00442b04  0b 40 0c eb                                      bl #0x752b38
00442b08  f1 ff ff ea                                      b #0x442ad4
; mapping-symbol data/literal pool
00442b0c  60 20 55 00 08 09 00 00 74 3d 00 00              .byte 0x60, 0x20, 0x55, 0x00, 0x08, 0x09, 0x00, 0x00, 0x74, 0x3d, 0x00, 0x00

; FUNCTION 0x0045a030, declared_size=204, range_size=204, mode=arm
; class-group: MenuMessageManager<TutorialMsg, 1>
; alias: _ZNK18MenuMessageManagerI11TutorialMsgLi1EE6InvokeEPKci.clone.27
; demangled: MenuMessageManager<TutorialMsg, 1>::Invoke(char const*, int) const [clone .clone.27]
; decoder-mode: arm
0045a030  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045a034  20 d0 4d e2                                      sub sp, sp, #0x20
0045a038  00 60 a0 e1                                      mov r6, r0
0045a03c  92 4a ff eb                                      bl #0x42ca8c
0045a040  d1 4a ff eb                                      bl #0x42cb8c
0045a044  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
0045a048  00 50 50 e2                                      subs r5, r0, #0
0045a04c  04 40 8f e0                                      add r4, pc, r4
0045a050  1d 00 00 0a                                      beq #0x45a0cc
0045a054  98 70 9f e5                                      ldr r7, [pc, #0x98]
0045a058  07 80 94 e7                                      ldr r8, [r4, r7]
0045a05c  28 00 88 e2                                      add r0, r8, #0x28
0045a060  37 b0 fc eb                                      bl #0x386144
0045a064  2c 30 98 e5                                      ldr r3, [r8, #0x2c]
0045a068  00 00 53 e3                                      cmp r3, #0
0045a06c  18 00 00 0a                                      beq #0x45a0d4
0045a070  07 00 94 e7                                      ldr r0, [r4, r7]
0045a074  35 37 ff eb                                      bl #0x427d50
0045a078  00 c0 a0 e3                                      mov ip, #0
0045a07c  00 20 a0 e3                                      mov r2, #0
0045a080  00 30 a0 e3                                      mov r3, #0
0045a084  0c c0 cd e5                                      strb ip, [sp, #0xc]
0045a088  02 c0 a0 e3                                      mov ip, #2
0045a08c  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
0045a090  0d c0 cd e5                                      strb ip, [sp, #0xd]
0045a094  00 c0 a0 e3                                      mov ip, #0
0045a098  10 c0 8d e5                                      str ip, [sp, #0x10]
0045a09c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0045a0a0  0c 40 8d e2                                      add r4, sp, #0xc
0045a0a4  00 10 a0 e1                                      mov r1, r0
0045a0a8  08 c0 84 e5                                      str ip, [r4, #8]
0045a0ac  05 00 a0 e1                                      mov r0, r5
0045a0b0  01 c0 a0 e3                                      mov ip, #1
0045a0b4  06 20 a0 e1                                      mov r2, r6
0045a0b8  04 30 a0 e1                                      mov r3, r4
0045a0bc  00 c0 8d e5                                      str ip, [sp]
0045a0c0  51 47 0d eb                                      bl #0x7abe0c
0045a0c4  04 00 a0 e1                                      mov r0, r4
0045a0c8  15 f4 0c eb                                      bl #0x797124
0045a0cc  20 d0 8d e2                                      add sp, sp, #0x20
0045a0d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045a0d4  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0045a0d8  08 00 a0 e1                                      mov r0, r8
0045a0dc  02 10 94 e7                                      ldr r1, [r4, r2]
0045a0e0  05 20 a0 e1                                      mov r2, r5
0045a0e4  00 10 91 e5                                      ldr r1, [r1]
0045a0e8  ec 36 ff eb                                      bl #0x427ca0
0045a0ec  df ff ff ea                                      b #0x45a070
; mapping-symbol data/literal pool
0045a0f0  44 aa 53 00 08 09 00 00 74 3d 00 00              .byte 0x44, 0xaa, 0x53, 0x00, 0x08, 0x09, 0x00, 0x00, 0x74, 0x3d, 0x00, 0x00

; FUNCTION 0x0046026c, declared_size=204, range_size=204, mode=arm
; class-group: MenuMessageManager<TutorialMsg, 1>
; alias: _ZN18MenuMessageManagerI11TutorialMsgLi1EE19SkipEnqueuedMessageEib.clone.30
; demangled: MenuMessageManager<TutorialMsg, 1>::SkipEnqueuedMessage(int, bool) [clone .clone.30]
; decoder-mode: arm
0046026c  70 40 2d e9                                      push {r4, r5, r6, lr}
00460270  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
00460274  b0 50 9f e5                                      ldr r5, [pc, #0xb0]
00460278  04 40 8f e0                                      add r4, pc, r4
0046027c  05 30 94 e7                                      ldr r3, [r4, r5]
00460280  04 20 93 e5                                      ldr r2, [r3, #4]
00460284  14 10 93 e5                                      ldr r1, [r3, #0x14]
00460288  02 00 51 e1                                      cmp r1, r2
0046028c  15 00 00 0a                                      beq #0x4602e8
00460290  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00460294  08 10 41 e2                                      sub r1, r1, #8
00460298  01 00 52 e1                                      cmp r2, r1
0046029c  08 20 82 12                                      addne r2, r2, #8
004602a0  04 20 83 15                                      strne r2, [r3, #4]
004602a4  10 00 00 0a                                      beq #0x4602ec
004602a8  80 30 9f e5                                      ldr r3, [pc, #0x80]
004602ac  03 30 94 e7                                      ldr r3, [r4, r3]
004602b0  00 00 93 e5                                      ldr r0, [r3]
004602b4  00 00 50 e3                                      cmp r0, #0
004602b8  00 00 00 0a                                      beq #0x4602c0
004602bc  5b e7 ff eb                                      bl #0x45a030
004602c0  05 30 94 e7                                      ldr r3, [r4, r5]
004602c4  04 20 93 e5                                      ldr r2, [r3, #4]
004602c8  14 30 93 e5                                      ldr r3, [r3, #0x14]
004602cc  02 00 53 e1                                      cmp r3, r2
004602d0  04 00 00 0a                                      beq #0x4602e8
004602d4  58 30 9f e5                                      ldr r3, [pc, #0x58]
004602d8  03 30 94 e7                                      ldr r3, [r4, r3]
004602dc  00 00 93 e5                                      ldr r0, [r3]
004602e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004602e4  51 e7 ff ea                                      b #0x45a030
004602e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004602ec  08 00 93 e5                                      ldr r0, [r3, #8]
004602f0  00 00 50 e3                                      cmp r0, #0
004602f4  01 00 00 0a                                      beq #0x460300
004602f8  80 10 a0 e3                                      mov r1, #0x80
004602fc  ff a2 0a eb                                      bl #0x708f00
00460300  05 30 94 e7                                      ldr r3, [r4, r5]
00460304  10 20 93 e5                                      ldr r2, [r3, #0x10]
00460308  04 10 82 e2                                      add r1, r2, #4
0046030c  10 10 83 e5                                      str r1, [r3, #0x10]
00460310  04 20 92 e5                                      ldr r2, [r2, #4]
00460314  80 10 82 e2                                      add r1, r2, #0x80
00460318  04 20 83 e5                                      str r2, [r3, #4]
0046031c  0c 10 83 e5                                      str r1, [r3, #0xc]
00460320  08 20 83 e5                                      str r2, [r3, #8]
00460324  df ff ff ea                                      b #0x4602a8
; mapping-symbol data/literal pool
00460328  18 48 53 00 10 1c 00 00 b8 12 00 00 38 33 00 00  .byte 0x18, 0x48, 0x53, 0x00, 0x10, 0x1c, 0x00, 0x00, 0xb8, 0x12, 0x00, 0x00, 0x38, 0x33, 0x00, 0x00
