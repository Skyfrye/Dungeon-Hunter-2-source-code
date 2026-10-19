; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076150c, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::line_style>
; alias: _ZN7gameswf5arrayINS_10line_styleEE7reserveEi
; demangled: gameswf::array<gameswf::line_style>::reserve(int)
; decoder-mode: arm
0076150c  10 40 2d e9                                      push {r4, lr}
00761510  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00761514  00 40 a0 e1                                      mov r4, r0
00761518  00 00 53 e3                                      cmp r3, #0
0076151c  11 00 00 1a                                      bne #0x761568
00761520  00 00 51 e3                                      cmp r1, #0
00761524  08 20 90 e5                                      ldr r2, [r0, #8]
00761528  08 10 80 e5                                      str r1, [r0, #8]
0076152c  0e 00 00 1a                                      bne #0x76156c
00761530  00 00 90 e5                                      ldr r0, [r0]
00761534  00 00 50 e3                                      cmp r0, #0
00761538  02 00 00 0a                                      beq #0x761548
0076153c  6c 10 a0 e3                                      mov r1, #0x6c
00761540  91 02 01 e0                                      mul r1, r1, r2
00761544  7b c5 ff eb                                      bl #0x752b38
00761548  00 30 a0 e3                                      mov r3, #0
0076154c  00 30 84 e5                                      str r3, [r4]
00761550  10 80 bd e8                                      pop {r4, pc}
00761554  6c 00 a0 e3                                      mov r0, #0x6c
00761558  90 01 00 e0                                      mul r0, r0, r1
0076155c  0c 10 a0 e1                                      mov r1, ip
00761560  8d c5 ff eb                                      bl #0x752b9c
00761564  00 00 84 e5                                      str r0, [r4]
00761568  10 80 bd e8                                      pop {r4, pc}
0076156c  00 c0 90 e5                                      ldr ip, [r0]
00761570  00 00 5c e3                                      cmp ip, #0
00761574  f6 ff ff 0a                                      beq #0x761554
00761578  6c e0 a0 e3                                      mov lr, #0x6c
0076157c  9e 02 02 e0                                      mul r2, lr, r2
00761580  0c 00 a0 e1                                      mov r0, ip
00761584  9e 01 01 e0                                      mul r1, lr, r1
00761588  87 c5 ff eb                                      bl #0x752bac
0076158c  00 00 84 e5                                      str r0, [r4]
00761590  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00761594, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::array<gameswf::line_style>
; alias: _ZN7gameswf5arrayINS_10line_styleEE6resizeEi
; demangled: gameswf::array<gameswf::line_style>::resize(int)
; decoder-mode: arm
00761594  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00761598  04 60 90 e5                                      ldr r6, [r0, #4]
0076159c  00 40 a0 e1                                      mov r4, r0
007615a0  01 50 a0 e1                                      mov r5, r1
007615a4  01 00 56 e1                                      cmp r6, r1
007615a8  0b 00 00 da                                      ble #0x7615dc
007615ac  6c 70 a0 e3                                      mov r7, #0x6c
007615b0  97 01 07 e0                                      mul r7, r7, r1
007615b4  01 80 a0 e1                                      mov r8, r1
007615b8  00 30 94 e5                                      ldr r3, [r4]
007615bc  01 80 88 e2                                      add r8, r8, #1
007615c0  07 00 83 e0                                      add r0, r3, r7
007615c4  07 30 93 e7                                      ldr r3, [r3, r7]
007615c8  0f e0 a0 e1                                      mov lr, pc
007615cc  00 f0 93 e5                                      ldr pc, [r3]
007615d0  06 00 58 e1                                      cmp r8, r6
007615d4  6c 70 87 e2                                      add r7, r7, #0x6c
007615d8  f6 ff ff 1a                                      bne #0x7615b8
007615dc  00 00 55 e3                                      cmp r5, #0
007615e0  02 00 00 0a                                      beq #0x7615f0
007615e4  08 30 94 e5                                      ldr r3, [r4, #8]
007615e8  03 00 55 e1                                      cmp r5, r3
007615ec  0c 00 00 ca                                      bgt #0x761624
007615f0  05 00 56 e1                                      cmp r6, r5
007615f4  08 00 00 aa                                      bge #0x76161c
007615f8  6c 70 a0 e3                                      mov r7, #0x6c
007615fc  97 06 07 e0                                      mul r7, r7, r6
00761600  00 00 94 e5                                      ldr r0, [r4]
00761604  01 60 86 e2                                      add r6, r6, #1
00761608  07 00 80 e0                                      add r0, r0, r7
0076160c  43 8d 00 eb                                      bl #0x784b20
00761610  05 00 56 e1                                      cmp r6, r5
00761614  6c 70 87 e2                                      add r7, r7, #0x6c
00761618  f8 ff ff 1a                                      bne #0x761600
0076161c  04 50 84 e5                                      str r5, [r4, #4]
00761620  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00761624  04 00 a0 e1                                      mov r0, r4
00761628  c5 10 85 e0                                      add r1, r5, r5, asr #1
0076162c  b6 ff ff eb                                      bl #0x76150c
00761630  ee ff ff ea                                      b #0x7615f0

; FUNCTION 0x0077a88c, declared_size=188, range_size=188, mode=arm
; class-group: gameswf::array<gameswf::line_style>
; alias: _ZN7gameswf5arrayINS_10line_styleEEaSERKS2_
; demangled: gameswf::array<gameswf::line_style>::operator=(gameswf::array<gameswf::line_style> const&)
; decoder-mode: arm
0077a88c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0077a890  00 80 a0 e1                                      mov r8, r0
0077a894  01 a0 a0 e1                                      mov sl, r1
0077a898  04 10 91 e5                                      ldr r1, [r1, #4]
0077a89c  3c 9b ff eb                                      bl #0x761594
0077a8a0  04 30 98 e5                                      ldr r3, [r8, #4]
0077a8a4  00 00 53 e3                                      cmp r3, #0
0077a8a8  25 00 00 da                                      ble #0x77a944
0077a8ac  00 60 a0 e3                                      mov r6, #0
0077a8b0  06 70 a0 e1                                      mov r7, r6
0077a8b4  00 50 9a e5                                      ldr r5, [sl]
0077a8b8  00 40 98 e5                                      ldr r4, [r8]
0077a8bc  01 70 87 e2                                      add r7, r7, #1
0077a8c0  06 50 85 e0                                      add r5, r5, r6
0077a8c4  b4 30 d5 e1                                      ldrh r3, [r5, #4]
0077a8c8  06 40 84 e0                                      add r4, r4, r6
0077a8cc  0c 10 85 e2                                      add r1, r5, #0xc
0077a8d0  b4 30 c4 e1                                      strh r3, [r4, #4]
0077a8d4  b6 30 d5 e1                                      ldrh r3, [r5, #6]
0077a8d8  0c 00 84 e2                                      add r0, r4, #0xc
0077a8dc  6c 60 86 e2                                      add r6, r6, #0x6c
0077a8e0  b6 30 c4 e1                                      strh r3, [r4, #6]
0077a8e4  b8 30 d5 e1                                      ldrh r3, [r5, #8]
0077a8e8  b8 30 c4 e1                                      strh r3, [r4, #8]
0077a8ec  a3 ff ff eb                                      bl #0x77a780
0077a8f0  60 30 d5 e5                                      ldrb r3, [r5, #0x60]
0077a8f4  60 30 c4 e5                                      strb r3, [r4, #0x60]
0077a8f8  61 30 d5 e5                                      ldrb r3, [r5, #0x61]
0077a8fc  61 30 c4 e5                                      strb r3, [r4, #0x61]
0077a900  62 30 d5 e5                                      ldrb r3, [r5, #0x62]
0077a904  62 30 c4 e5                                      strb r3, [r4, #0x62]
0077a908  63 30 d5 e5                                      ldrb r3, [r5, #0x63]
0077a90c  63 30 c4 e5                                      strb r3, [r4, #0x63]
0077a910  64 30 d5 e5                                      ldrb r3, [r5, #0x64]
0077a914  64 30 c4 e5                                      strb r3, [r4, #0x64]
0077a918  65 30 d5 e5                                      ldrb r3, [r5, #0x65]
0077a91c  65 30 c4 e5                                      strb r3, [r4, #0x65]
0077a920  66 30 d5 e5                                      ldrb r3, [r5, #0x66]
0077a924  66 30 c4 e5                                      strb r3, [r4, #0x66]
0077a928  67 30 d5 e5                                      ldrb r3, [r5, #0x67]
0077a92c  67 30 c4 e5                                      strb r3, [r4, #0x67]
0077a930  b8 56 d5 e1                                      ldrh r5, [r5, #0x68]
0077a934  b8 56 c4 e1                                      strh r5, [r4, #0x68]
0077a938  04 30 98 e5                                      ldr r3, [r8, #4]
0077a93c  07 00 53 e1                                      cmp r3, r7
0077a940  db ff ff ca                                      bgt #0x77a8b4
0077a944  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0078b8d0, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::line_style>
; alias: _ZN7gameswf5arrayINS_10line_styleEE6resizeEi.clone.0
; demangled: gameswf::array<gameswf::line_style>::resize(int) [clone .clone.0]
; decoder-mode: arm
0078b8d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0078b8d4  04 40 90 e5                                      ldr r4, [r0, #4]
0078b8d8  00 70 a0 e1                                      mov r7, r0
0078b8dc  00 00 54 e3                                      cmp r4, #0
0078b8e0  0d 00 00 da                                      ble #0x78b91c
0078b8e4  00 50 a0 e3                                      mov r5, #0
0078b8e8  05 60 a0 e1                                      mov r6, r5
0078b8ec  00 30 97 e5                                      ldr r3, [r7]
0078b8f0  01 60 86 e2                                      add r6, r6, #1
0078b8f4  05 00 83 e0                                      add r0, r3, r5
0078b8f8  05 30 93 e7                                      ldr r3, [r3, r5]
0078b8fc  0f e0 a0 e1                                      mov lr, pc
0078b900  00 f0 93 e5                                      ldr pc, [r3]
0078b904  04 00 56 e1                                      cmp r6, r4
0078b908  6c 50 85 e2                                      add r5, r5, #0x6c
0078b90c  f6 ff ff 1a                                      bne #0x78b8ec
0078b910  00 30 a0 e3                                      mov r3, #0
0078b914  04 30 87 e5                                      str r3, [r7, #4]
0078b918  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0078b91c  fb ff ff aa                                      bge #0x78b910
0078b920  6c 50 a0 e3                                      mov r5, #0x6c
0078b924  95 04 05 e0                                      mul r5, r5, r4
0078b928  00 00 97 e5                                      ldr r0, [r7]
0078b92c  05 00 80 e0                                      add r0, r0, r5
0078b930  7a e4 ff eb                                      bl #0x784b20
0078b934  01 40 94 e2                                      adds r4, r4, #1
0078b938  6c 50 85 e2                                      add r5, r5, #0x6c
0078b93c  f9 ff ff 1a                                      bne #0x78b928
0078b940  00 30 a0 e3                                      mov r3, #0
0078b944  04 30 87 e5                                      str r3, [r7, #4]
0078b948  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
