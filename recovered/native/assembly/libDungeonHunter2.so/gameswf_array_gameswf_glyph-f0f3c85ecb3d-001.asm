; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078a464, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::glyph>
; alias: _ZN7gameswf5arrayINS_5glyphEE7reserveEi
; demangled: gameswf::array<gameswf::glyph>::reserve(int)
; decoder-mode: arm
0078a464  10 40 2d e9                                      push {r4, lr}
0078a468  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0078a46c  00 40 a0 e1                                      mov r4, r0
0078a470  00 00 53 e3                                      cmp r3, #0
0078a474  11 00 00 1a                                      bne #0x78a4c0
0078a478  00 00 51 e3                                      cmp r1, #0
0078a47c  08 20 90 e5                                      ldr r2, [r0, #8]
0078a480  08 10 80 e5                                      str r1, [r0, #8]
0078a484  0e 00 00 1a                                      bne #0x78a4c4
0078a488  00 00 90 e5                                      ldr r0, [r0]
0078a48c  00 00 50 e3                                      cmp r0, #0
0078a490  02 00 00 0a                                      beq #0x78a4a0
0078a494  24 10 a0 e3                                      mov r1, #0x24
0078a498  91 02 01 e0                                      mul r1, r1, r2
0078a49c  a5 21 ff eb                                      bl #0x752b38
0078a4a0  00 30 a0 e3                                      mov r3, #0
0078a4a4  00 30 84 e5                                      str r3, [r4]
0078a4a8  10 80 bd e8                                      pop {r4, pc}
0078a4ac  24 00 a0 e3                                      mov r0, #0x24
0078a4b0  90 01 00 e0                                      mul r0, r0, r1
0078a4b4  0c 10 a0 e1                                      mov r1, ip
0078a4b8  b7 21 ff eb                                      bl #0x752b9c
0078a4bc  00 00 84 e5                                      str r0, [r4]
0078a4c0  10 80 bd e8                                      pop {r4, pc}
0078a4c4  00 c0 90 e5                                      ldr ip, [r0]
0078a4c8  00 00 5c e3                                      cmp ip, #0
0078a4cc  f6 ff ff 0a                                      beq #0x78a4ac
0078a4d0  24 e0 a0 e3                                      mov lr, #0x24
0078a4d4  9e 02 02 e0                                      mul r2, lr, r2
0078a4d8  0c 00 a0 e1                                      mov r0, ip
0078a4dc  9e 01 01 e0                                      mul r1, lr, r1
0078a4e0  b1 21 ff eb                                      bl #0x752bac
0078a4e4  00 00 84 e5                                      str r0, [r4]
0078a4e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078a4ec, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::array<gameswf::glyph>
; alias: _ZN7gameswf5arrayINS_5glyphEE6resizeEi
; demangled: gameswf::array<gameswf::glyph>::resize(int)
; decoder-mode: arm
0078a4ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0078a4f0  04 60 90 e5                                      ldr r6, [r0, #4]
0078a4f4  00 40 a0 e1                                      mov r4, r0
0078a4f8  01 50 a0 e1                                      mov r5, r1
0078a4fc  01 00 56 e1                                      cmp r6, r1
0078a500  0c 00 00 da                                      ble #0x78a538
0078a504  24 80 a0 e3                                      mov r8, #0x24
0078a508  98 01 08 e0                                      mul r8, r8, r1
0078a50c  01 70 a0 e1                                      mov r7, r1
0078a510  00 30 94 e5                                      ldr r3, [r4]
0078a514  01 70 87 e2                                      add r7, r7, #1
0078a518  08 30 83 e0                                      add r3, r3, r8
0078a51c  04 00 93 e5                                      ldr r0, [r3, #4]
0078a520  24 80 88 e2                                      add r8, r8, #0x24
0078a524  00 00 50 e3                                      cmp r0, #0
0078a528  00 00 00 0a                                      beq #0x78a530
0078a52c  43 3f ff eb                                      bl #0x75a240
0078a530  06 00 57 e1                                      cmp r7, r6
0078a534  f5 ff ff 1a                                      bne #0x78a510
0078a538  00 00 55 e3                                      cmp r5, #0
0078a53c  02 00 00 0a                                      beq #0x78a54c
0078a540  08 30 94 e5                                      ldr r3, [r4, #8]
0078a544  03 00 55 e1                                      cmp r5, r3
0078a548  16 00 00 ca                                      bgt #0x78a5a8
0078a54c  05 00 56 e1                                      cmp r6, r5
0078a550  12 00 00 aa                                      bge #0x78a5a0
0078a554  24 10 a0 e3                                      mov r1, #0x24
0078a558  91 06 01 e0                                      mul r1, r1, r6
0078a55c  00 20 a0 e3                                      mov r2, #0
0078a560  11 73 a0 e3                                      mov r7, #0x44000000
0078a564  02 c0 a0 e1                                      mov ip, r2
0078a568  00 00 94 e5                                      ldr r0, [r4]
0078a56c  01 60 86 e2                                      add r6, r6, #1
0078a570  05 00 56 e1                                      cmp r6, r5
0078a574  01 30 80 e0                                      add r3, r0, r1
0078a578  01 70 80 e7                                      str r7, [r0, r1]
0078a57c  00 00 e0 e3                                      mvn r0, #0
0078a580  22 c0 c3 e5                                      strb ip, [r3, #0x22]
0078a584  04 20 83 e5                                      str r2, [r3, #4]
0078a588  18 20 83 e5                                      str r2, [r3, #0x18]
0078a58c  bc 21 c3 e1                                      strh r2, [r3, #0x1c]
0078a590  be 01 c3 e1                                      strh r0, [r3, #0x1e]
0078a594  b0 22 c3 e1                                      strh r2, [r3, #0x20]
0078a598  24 10 81 e2                                      add r1, r1, #0x24
0078a59c  f1 ff ff 1a                                      bne #0x78a568
0078a5a0  04 50 84 e5                                      str r5, [r4, #4]
0078a5a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0078a5a8  04 00 a0 e1                                      mov r0, r4
0078a5ac  c5 10 85 e0                                      add r1, r5, r5, asr #1
0078a5b0  ab ff ff eb                                      bl #0x78a464
0078a5b4  e4 ff ff ea                                      b #0x78a54c

; FUNCTION 0x0078a780, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::array<gameswf::glyph>
; alias: _ZN7gameswf5arrayINS_5glyphEEaSERKS2_
; demangled: gameswf::array<gameswf::glyph>::operator=(gameswf::array<gameswf::glyph> const&)
; decoder-mode: arm
0078a780  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0078a784  00 70 a0 e1                                      mov r7, r0
0078a788  01 a0 a0 e1                                      mov sl, r1
0078a78c  04 10 91 e5                                      ldr r1, [r1, #4]
0078a790  55 ff ff eb                                      bl #0x78a4ec
0078a794  04 30 97 e5                                      ldr r3, [r7, #4]
0078a798  00 00 53 e3                                      cmp r3, #0
0078a79c  1d 00 00 da                                      ble #0x78a818
0078a7a0  00 60 a0 e3                                      mov r6, #0
0078a7a4  06 80 a0 e1                                      mov r8, r6
0078a7a8  00 50 9a e5                                      ldr r5, [sl]
0078a7ac  00 30 97 e5                                      ldr r3, [r7]
0078a7b0  01 80 88 e2                                      add r8, r8, #1
0078a7b4  06 20 95 e7                                      ldr r2, [r5, r6]
0078a7b8  06 40 83 e0                                      add r4, r3, r6
0078a7bc  06 50 85 e0                                      add r5, r5, r6
0078a7c0  06 20 83 e7                                      str r2, [r3, r6]
0078a7c4  04 00 84 e2                                      add r0, r4, #4
0078a7c8  04 10 95 e5                                      ldr r1, [r5, #4]
0078a7cc  db bf ff eb                                      bl #0x77a740
0078a7d0  08 c0 84 e2                                      add ip, r4, #8
0078a7d4  08 30 85 e2                                      add r3, r5, #8
0078a7d8  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0078a7dc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0078a7e0  18 30 95 e5                                      ldr r3, [r5, #0x18]
0078a7e4  24 60 86 e2                                      add r6, r6, #0x24
0078a7e8  18 30 84 e5                                      str r3, [r4, #0x18]
0078a7ec  bc 31 d5 e1                                      ldrh r3, [r5, #0x1c]
0078a7f0  bc 31 c4 e1                                      strh r3, [r4, #0x1c]
0078a7f4  be 31 d5 e1                                      ldrh r3, [r5, #0x1e]
0078a7f8  be 31 c4 e1                                      strh r3, [r4, #0x1e]
0078a7fc  b0 32 d5 e1                                      ldrh r3, [r5, #0x20]
0078a800  b0 32 c4 e1                                      strh r3, [r4, #0x20]
0078a804  22 30 d5 e5                                      ldrb r3, [r5, #0x22]
0078a808  22 30 c4 e5                                      strb r3, [r4, #0x22]
0078a80c  04 30 97 e5                                      ldr r3, [r7, #4]
0078a810  08 00 53 e1                                      cmp r3, r8
0078a814  e3 ff ff ca                                      bgt #0x78a7a8
0078a818  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
