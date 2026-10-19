; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078e060, declared_size=756, range_size=756, mode=arm
; class-group: gameswf::html_reader
; alias: _ZN7gameswf11html_reader9parse_tagERNS_12stringi_hashINS_9tu_stringEEEPKc
; demangled: gameswf::html_reader::parse_tag(gameswf::stringi_hash<gameswf::tu_string>&, char const*)
; decoder-mode: arm
0078e060  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078e064  dc 02 9f e5                                      ldr r0, [pc, #0x2dc]
0078e068  dc 32 9f e5                                      ldr r3, [pc, #0x2dc]
0078e06c  94 d0 4d e2                                      sub sp, sp, #0x94
0078e070  00 00 8f e0                                      add r0, pc, r0
0078e074  02 40 a0 e1                                      mov r4, r2
0078e078  03 20 90 e7                                      ldr r2, [r0, r3]
0078e07c  08 00 8d e5                                      str r0, [sp, #8]
0078e080  0c 30 8d e5                                      str r3, [sp, #0xc]
0078e084  d0 30 d4 e1                                      ldrsb r3, [r4]
0078e088  00 20 92 e5                                      ldr r2, [r2]
0078e08c  04 10 8d e5                                      str r1, [sp, #4]
0078e090  2f 00 53 e3                                      cmp r3, #0x2f
0078e094  8c 20 8d e5                                      str r2, [sp, #0x8c]
0078e098  00 40 a0 03                                      moveq r4, #0
0078e09c  69 00 00 0a                                      beq #0x78e248
0078e0a0  04 00 a0 e1                                      mov r0, r4
0078e0a4  20 10 a0 e3                                      mov r1, #0x20
0078e0a8  de 02 ee eb                                      bl #0x30ec28
0078e0ac  00 00 50 e3                                      cmp r0, #0
0078e0b0  9a 00 00 0a                                      beq #0x78e320
0078e0b4  78 50 8d e2                                      add r5, sp, #0x78
0078e0b8  00 20 64 e0                                      rsb r2, r4, r0
0078e0bc  04 10 a0 e1                                      mov r1, r4
0078e0c0  05 00 a0 e1                                      mov r0, r5
0078e0c4  7a 0f ff eb                                      bl #0x751eb4
0078e0c8  80 12 9f e5                                      ldr r1, [pc, #0x280]
0078e0cc  64 70 8d e2                                      add r7, sp, #0x64
0078e0d0  50 60 8d e2                                      add r6, sp, #0x50
0078e0d4  01 10 8f e0                                      add r1, pc, r1
0078e0d8  07 00 a0 e1                                      mov r0, r7
0078e0dc  66 16 f2 eb                                      bl #0x413a7c
0078e0e0  07 10 a0 e1                                      mov r1, r7
0078e0e4  06 00 a0 e1                                      mov r0, r6
0078e0e8  cf 13 ff eb                                      bl #0x75302c
0078e0ec  04 00 9d e5                                      ldr r0, [sp, #4]
0078e0f0  06 10 a0 e1                                      mov r1, r6
0078e0f4  05 20 a0 e1                                      mov r2, r5
0078e0f8  c4 ff ff eb                                      bl #0x78e010
0078e0fc  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
0078e100  01 00 73 e3                                      cmn r3, #1
0078e104  7b 00 00 0a                                      beq #0x78e2f8
0078e108  d4 36 dd e1                                      ldrsb r3, [sp, #0x64]
0078e10c  01 00 73 e3                                      cmn r3, #1
0078e110  7e 00 00 0a                                      beq #0x78e310
0078e114  04 00 a0 e1                                      mov r0, r4
0078e118  3d 10 a0 e3                                      mov r1, #0x3d
0078e11c  c1 02 ee eb                                      bl #0x30ec28
0078e120  00 60 50 e2                                      subs r6, r0, #0
0078e124  43 00 00 0a                                      beq #0x78e238
0078e128  06 b0 a0 e1                                      mov fp, r6
0078e12c  3c a0 8d e2                                      add sl, sp, #0x3c
0078e130  28 80 8d e2                                      add r8, sp, #0x28
0078e134  14 90 8d e2                                      add sb, sp, #0x14
0078e138  d0 30 d6 e1                                      ldrsb r3, [r6]
0078e13c  20 00 53 e3                                      cmp r3, #0x20
0078e140  67 00 00 1a                                      bne #0x78e2e4
0078e144  d1 30 7b e1                                      ldrsb r3, [fp, #-1]!
0078e148  20 00 53 e3                                      cmp r3, #0x20
0078e14c  fc ff ff 0a                                      beq #0x78e144
0078e150  06 40 a0 e1                                      mov r4, r6
0078e154  22 10 a0 e3                                      mov r1, #0x22
0078e158  06 00 a0 e1                                      mov r0, r6
0078e15c  b1 02 ee eb                                      bl #0x30ec28
0078e160  27 10 a0 e3                                      mov r1, #0x27
0078e164  00 70 a0 e1                                      mov r7, r0
0078e168  06 00 a0 e1                                      mov r0, r6
0078e16c  ad 02 ee eb                                      bl #0x30ec28
0078e170  00 00 50 e3                                      cmp r0, #0
0078e174  00 00 57 03                                      cmpeq r7, #0
0078e178  45 00 00 0a                                      beq #0x78e294
0078e17c  00 50 50 e2                                      subs r5, r0, #0
0078e180  01 50 a0 13                                      movne r5, #1
0078e184  00 00 57 e3                                      cmp r7, #0
0078e188  00 00 50 13                                      cmpne r0, #0
0078e18c  37 00 00 0a                                      beq #0x78e270
0078e190  00 00 57 e1                                      cmp r7, r0
0078e194  07 50 a0 31                                      movlo r5, r7
0078e198  00 50 a0 21                                      movhs r5, r0
0078e19c  01 60 85 e2                                      add r6, r5, #1
0078e1a0  06 00 a0 e1                                      mov r0, r6
0078e1a4  d0 10 d5 e1                                      ldrsb r1, [r5]
0078e1a8  9e 02 ee eb                                      bl #0x30ec28
0078e1ac  00 70 50 e2                                      subs r7, r0, #0
0078e1b0  37 00 00 0a                                      beq #0x78e294
0078e1b4  01 20 4b e2                                      sub r2, fp, #1
0078e1b8  02 20 64 e0                                      rsb r2, r4, r2
0078e1bc  01 10 84 e2                                      add r1, r4, #1
0078e1c0  0a 00 a0 e1                                      mov r0, sl
0078e1c4  3a 0f ff eb                                      bl #0x751eb4
0078e1c8  01 20 47 e2                                      sub r2, r7, #1
0078e1cc  02 20 65 e0                                      rsb r2, r5, r2
0078e1d0  06 10 a0 e1                                      mov r1, r6
0078e1d4  08 00 a0 e1                                      mov r0, r8
0078e1d8  35 0f ff eb                                      bl #0x751eb4
0078e1dc  0a 10 a0 e1                                      mov r1, sl
0078e1e0  09 00 a0 e1                                      mov r0, sb
0078e1e4  90 13 ff eb                                      bl #0x75302c
0078e1e8  04 00 9d e5                                      ldr r0, [sp, #4]
0078e1ec  09 10 a0 e1                                      mov r1, sb
0078e1f0  08 20 a0 e1                                      mov r2, r8
0078e1f4  85 ff ff eb                                      bl #0x78e010
0078e1f8  d4 31 dd e1                                      ldrsb r3, [sp, #0x14]
0078e1fc  01 00 73 e3                                      cmn r3, #1
0078e200  33 00 00 0a                                      beq #0x78e2d4
0078e204  07 00 a0 e1                                      mov r0, r7
0078e208  3d 10 a0 e3                                      mov r1, #0x3d
0078e20c  85 02 ee eb                                      bl #0x30ec28
0078e210  d8 32 dd e1                                      ldrsb r3, [sp, #0x28]
0078e214  00 60 a0 e1                                      mov r6, r0
0078e218  01 00 73 e3                                      cmn r3, #1
0078e21c  28 00 00 0a                                      beq #0x78e2c4
0078e220  dc 33 dd e1                                      ldrsb r3, [sp, #0x3c]
0078e224  01 00 73 e3                                      cmn r3, #1
0078e228  21 00 00 0a                                      beq #0x78e2b4
0078e22c  00 00 56 e3                                      cmp r6, #0
0078e230  06 b0 a0 e1                                      mov fp, r6
0078e234  bf ff ff 1a                                      bne #0x78e138
0078e238  d8 37 dd e1                                      ldrsb r3, [sp, #0x78]
0078e23c  01 40 a0 e3                                      mov r4, #1
0078e240  01 00 73 e3                                      cmn r3, #1
0078e244  16 00 00 0a                                      beq #0x78e2a4
0078e248  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0078e24c  08 10 9d e5                                      ldr r1, [sp, #8]
0078e250  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0078e254  00 30 91 e7                                      ldr r3, [r1, r0]
0078e258  04 00 a0 e1                                      mov r0, r4
0078e25c  00 30 93 e5                                      ldr r3, [r3]
0078e260  03 00 52 e1                                      cmp r2, r3
0078e264  36 00 00 1a                                      bne #0x78e344
0078e268  94 d0 8d e2                                      add sp, sp, #0x94
0078e26c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0078e270  00 00 55 e3                                      cmp r5, #0
0078e274  00 50 a0 11                                      movne r5, r0
0078e278  07 50 a0 01                                      moveq r5, r7
0078e27c  01 60 85 e2                                      add r6, r5, #1
0078e280  06 00 a0 e1                                      mov r0, r6
0078e284  d0 10 d5 e1                                      ldrsb r1, [r5]
0078e288  66 02 ee eb                                      bl #0x30ec28
0078e28c  00 70 50 e2                                      subs r7, r0, #0
0078e290  c7 ff ff 1a                                      bne #0x78e1b4
0078e294  d8 37 dd e1                                      ldrsb r3, [sp, #0x78]
0078e298  00 40 a0 e3                                      mov r4, #0
0078e29c  01 00 73 e3                                      cmn r3, #1
0078e2a0  e8 ff ff 1a                                      bne #0x78e248
0078e2a4  84 00 9d e5                                      ldr r0, [sp, #0x84]
0078e2a8  80 10 9d e5                                      ldr r1, [sp, #0x80]
0078e2ac  21 12 ff eb                                      bl #0x752b38
0078e2b0  e4 ff ff ea                                      b #0x78e248
0078e2b4  48 00 9d e5                                      ldr r0, [sp, #0x48]
0078e2b8  44 10 9d e5                                      ldr r1, [sp, #0x44]
0078e2bc  1d 12 ff eb                                      bl #0x752b38
0078e2c0  d9 ff ff ea                                      b #0x78e22c
0078e2c4  34 00 9d e5                                      ldr r0, [sp, #0x34]
0078e2c8  30 10 9d e5                                      ldr r1, [sp, #0x30]
0078e2cc  19 12 ff eb                                      bl #0x752b38
0078e2d0  d2 ff ff ea                                      b #0x78e220
0078e2d4  20 00 9d e5                                      ldr r0, [sp, #0x20]
0078e2d8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0078e2dc  15 12 ff eb                                      bl #0x752b38
0078e2e0  c7 ff ff ea                                      b #0x78e204
0078e2e4  06 40 a0 e1                                      mov r4, r6
0078e2e8  d1 30 74 e1                                      ldrsb r3, [r4, #-1]!
0078e2ec  20 00 53 e3                                      cmp r3, #0x20
0078e2f0  fc ff ff 1a                                      bne #0x78e2e8
0078e2f4  96 ff ff ea                                      b #0x78e154
0078e2f8  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0078e2fc  58 10 9d e5                                      ldr r1, [sp, #0x58]
0078e300  0c 12 ff eb                                      bl #0x752b38
0078e304  d4 36 dd e1                                      ldrsb r3, [sp, #0x64]
0078e308  01 00 73 e3                                      cmn r3, #1
0078e30c  80 ff ff 1a                                      bne #0x78e114
0078e310  70 00 9d e5                                      ldr r0, [sp, #0x70]
0078e314  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
0078e318  06 12 ff eb                                      bl #0x752b38
0078e31c  7c ff ff ea                                      b #0x78e114
0078e320  04 00 a0 e1                                      mov r0, r4
0078e324  2f 10 a0 e3                                      mov r1, #0x2f
0078e328  3e 02 ee eb                                      bl #0x30ec28
0078e32c  00 00 50 e3                                      cmp r0, #0
0078e330  5f ff ff 1a                                      bne #0x78e0b4
0078e334  04 00 a0 e1                                      mov r0, r4
0078e338  c5 fe ed eb                                      bl #0x30de54
0078e33c  00 00 84 e0                                      add r0, r4, r0
0078e340  5b ff ff ea                                      b #0x78e0b4
0078e344  f1 ff ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0078e348  20 6a 20 00 ac 40 00 00 14 30 15 00              .byte 0x20, 0x6a, 0x20, 0x00, 0xac, 0x40, 0x00, 0x00, 0x14, 0x30, 0x15, 0x00

; FUNCTION 0x0078e354, declared_size=3172, range_size=3172, mode=arm
; class-group: gameswf::html_reader
; alias: _ZN7gameswf11html_reader5parseEPNS_19edit_text_characterE
; demangled: gameswf::html_reader::parse(gameswf::edit_text_character*)
; decoder-mode: arm
0078e354  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078e358  14 8c 9f e5                                      ldr r8, [pc, #0xc14]
0078e35c  14 2c 9f e5                                      ldr r2, [pc, #0xc14]
0078e360  ed df 4d e2                                      sub sp, sp, #0x3b4
0078e364  08 80 8f e0                                      add r8, pc, r8
0078e368  04 20 8d e5                                      str r2, [sp, #4]
0078e36c  02 20 98 e7                                      ldr r2, [r8, r2]
0078e370  38 31 d1 e5                                      ldrb r3, [r1, #0x138]
0078e374  01 40 a0 e1                                      mov r4, r1
0078e378  00 20 92 e5                                      ldr r2, [r2]
0078e37c  73 30 af e6                                      sxtb r3, r3
0078e380  01 00 73 e3                                      cmn r3, #1
0078e384  ac 23 8d e5                                      str r2, [sp, #0x3ac]
0078e388  3c 31 91 05                                      ldreq r3, [r1, #0x13c]
0078e38c  00 60 a0 e1                                      mov r6, r0
0078e390  01 30 43 e2                                      sub r3, r3, #1
0078e394  00 00 53 e3                                      cmp r3, #0
0078e398  07 00 00 1a                                      bne #0x78e3bc
0078e39c  04 90 9d e5                                      ldr sb, [sp, #4]
0078e3a0  ac 23 9d e5                                      ldr r2, [sp, #0x3ac]
0078e3a4  09 30 98 e7                                      ldr r3, [r8, sb]
0078e3a8  00 30 93 e5                                      ldr r3, [r3]
0078e3ac  03 00 52 e1                                      cmp r2, r3
0078e3b0  cc 02 00 1a                                      bne #0x78eee8
0078e3b4  ed df 8d e2                                      add sp, sp, #0x3b4
0078e3b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0078e3bc  70 21 91 e5                                      ldr r2, [r1, #0x170]
0078e3c0  44 50 8d e2                                      add r5, sp, #0x44
0078e3c4  78 11 91 e5                                      ldr r1, [r1, #0x178]
0078e3c8  00 30 a0 e3                                      mov r3, #0
0078e3cc  05 00 a0 e1                                      mov r0, r5
0078e3d0  0c c0 a0 e3                                      mov ip, #0xc
0078e3d4  48 c0 8d e5                                      str ip, [sp, #0x48]
0078e3d8  50 30 cd e5                                      strb r3, [sp, #0x50]
0078e3dc  44 30 8d e5                                      str r3, [sp, #0x44]
0078e3e0  4c 20 8d e5                                      str r2, [sp, #0x4c]
0078e3e4  92 57 ff eb                                      bl #0x764234
0078e3e8  74 01 94 e5                                      ldr r0, [r4, #0x174]
0078e3ec  36 00 ee eb                                      bl #0x30e4cc
0078e3f0  05 10 a0 e1                                      mov r1, r5
0078e3f4  48 00 8d e5                                      str r0, [sp, #0x48]
0078e3f8  06 00 a0 e1                                      mov r0, r6
0078e3fc  54 f2 ff eb                                      bl #0x78ad54
0078e400  38 b1 d4 e5                                      ldrb fp, [r4, #0x138]
0078e404  70 3b 9f e5                                      ldr r3, [pc, #0xb70]
0078e408  70 cb 9f e5                                      ldr ip, [pc, #0xb70]
0078e40c  7b 90 af e6                                      sxtb sb, fp
0078e410  01 00 79 e3                                      cmn sb, #1
0078e414  03 30 8f e0                                      add r3, pc, r3
0078e418  44 51 94 05                                      ldreq r5, [r4, #0x144]
0078e41c  10 30 8d e5                                      str r3, [sp, #0x10]
0078e420  5c 3b 9f e5                                      ldr r3, [pc, #0xb5c]
0078e424  4e 5f 84 12                                      addne r5, r4, #0x138
0078e428  00 70 a0 e3                                      mov r7, #0
0078e42c  03 30 8f e0                                      add r3, pc, r3
0078e430  18 30 8d e5                                      str r3, [sp, #0x18]
0078e434  4c 3b 9f e5                                      ldr r3, [pc, #0xb4c]
0078e438  01 50 85 12                                      addne r5, r5, #1
0078e43c  14 70 8d e5                                      str r7, [sp, #0x14]
0078e440  03 30 8f e0                                      add r3, pc, r3
0078e444  1c 30 8d e5                                      str r3, [sp, #0x1c]
0078e448  3c 3b 9f e5                                      ldr r3, [pc, #0xb3c]
0078e44c  24 c0 8d e5                                      str ip, [sp, #0x24]
0078e450  03 30 8f e0                                      add r3, pc, r3
0078e454  20 30 8d e5                                      str r3, [sp, #0x20]
0078e458  01 00 79 e3                                      cmn sb, #1
0078e45c  38 31 d4 15                                      ldrbne r3, [r4, #0x138]
0078e460  3c 31 94 05                                      ldreq r3, [r4, #0x13c]
0078e464  73 30 af 16                                      sxtbne r3, r3
0078e468  01 30 43 e2                                      sub r3, r3, #1
0078e46c  03 00 57 e1                                      cmp r7, r3
0078e470  1e 00 00 aa                                      bge #0x78e4f0
0078e474  d7 30 95 e1                                      ldrsb r3, [r5, r7]
0078e478  07 a0 85 e0                                      add sl, r5, r7
0078e47c  3c 00 53 e3                                      cmp r3, #0x3c
0078e480  38 00 00 0a                                      beq #0x78e568
0078e484  0a 00 a0 e1                                      mov r0, sl
0078e488  3c 10 a0 e3                                      mov r1, #0x3c
0078e48c  e5 01 ee eb                                      bl #0x30ec28
0078e490  00 70 50 e2                                      subs r7, r0, #0
0078e494  1a 00 00 1a                                      bne #0x78e504
0078e498  01 00 79 e3                                      cmn sb, #1
0078e49c  38 31 d4 15                                      ldrbne r3, [r4, #0x138]
0078e4a0  3c 31 94 05                                      ldreq r3, [r4, #0x13c]
0078e4a4  96 7f 8d e2                                      add r7, sp, #0x258
0078e4a8  73 30 af 16                                      sxtbne r3, r3
0078e4ac  01 30 43 e2                                      sub r3, r3, #1
0078e4b0  03 50 85 e0                                      add r5, r5, r3
0078e4b4  0a 10 a0 e1                                      mov r1, sl
0078e4b8  05 20 6a e0                                      rsb r2, sl, r5
0078e4bc  07 00 a0 e1                                      mov r0, r7
0078e4c0  7b 0e ff eb                                      bl #0x751eb4
0078e4c4  04 20 96 e5                                      ldr r2, [r6, #4]
0078e4c8  00 30 96 e5                                      ldr r3, [r6]
0078e4cc  04 00 a0 e1                                      mov r0, r4
0078e4d0  01 20 42 e2                                      sub r2, r2, #1
0078e4d4  02 22 83 e0                                      add r2, r3, r2, lsl #4
0078e4d8  07 10 a0 e1                                      mov r1, r7
0078e4dc  01 30 a0 e3                                      mov r3, #1
0078e4e0  aa f9 ff eb                                      bl #0x78cb90
0078e4e4  58 32 dd e5                                      ldrb r3, [sp, #0x258]
0078e4e8  ff 00 53 e3                                      cmp r3, #0xff
0078e4ec  76 01 00 0a                                      beq #0x78eacc
0078e4f0  44 00 9d e5                                      ldr r0, [sp, #0x44]
0078e4f4  00 00 50 e3                                      cmp r0, #0
0078e4f8  a7 ff ff 0a                                      beq #0x78e39c
0078e4fc  4f 2f ff eb                                      bl #0x75a240
0078e500  a5 ff ff ea                                      b #0x78e39c
0078e504  0a 10 a0 e1                                      mov r1, sl
0078e508  96 af 8d e2                                      add sl, sp, #0x258
0078e50c  07 20 61 e0                                      rsb r2, r1, r7
0078e510  0a 00 a0 e1                                      mov r0, sl
0078e514  66 0e ff eb                                      bl #0x751eb4
0078e518  04 20 96 e5                                      ldr r2, [r6, #4]
0078e51c  00 30 96 e5                                      ldr r3, [r6]
0078e520  0a 10 a0 e1                                      mov r1, sl
0078e524  01 20 42 e2                                      sub r2, r2, #1
0078e528  02 22 83 e0                                      add r2, r3, r2, lsl #4
0078e52c  04 00 a0 e1                                      mov r0, r4
0078e530  01 30 a0 e3                                      mov r3, #1
0078e534  95 f9 ff eb                                      bl #0x78cb90
0078e538  58 32 dd e5                                      ldrb r3, [sp, #0x258]
0078e53c  07 70 65 e0                                      rsb r7, r5, r7
0078e540  ff 00 53 e3                                      cmp r3, #0xff
0078e544  03 00 00 0a                                      beq #0x78e558
0078e548  38 b1 d4 e5                                      ldrb fp, [r4, #0x138]
0078e54c  0b 30 a0 e1                                      mov r3, fp
0078e550  7b 90 af e6                                      sxtb sb, fp
0078e554  bf ff ff ea                                      b #0x78e458
0078e558  64 02 9d e5                                      ldr r0, [sp, #0x264]
0078e55c  60 12 9d e5                                      ldr r1, [sp, #0x260]
0078e560  74 11 ff eb                                      bl #0x752b38
0078e564  f7 ff ff ea                                      b #0x78e548
0078e568  0a 00 a0 e1                                      mov r0, sl
0078e56c  3e 10 a0 e3                                      mov r1, #0x3e
0078e570  ac 01 ee eb                                      bl #0x30ec28
0078e574  00 00 50 e3                                      cmp r0, #0
0078e578  00 00 8d e5                                      str r0, [sp]
0078e57c  db ff ff 0a                                      beq #0x78e4f0
0078e580  01 00 79 e3                                      cmn sb, #1
0078e584  38 31 d4 15                                      ldrbne r3, [r4, #0x138]
0078e588  3c 31 94 05                                      ldreq r3, [r4, #0x13c]
0078e58c  01 70 87 e2                                      add r7, r7, #1
0078e590  73 30 af 16                                      sxtbne r3, r3
0078e594  01 30 43 e2                                      sub r3, r3, #1
0078e598  03 00 57 e1                                      cmp r7, r3
0078e59c  d3 ff ff aa                                      bge #0x78e4f0
0078e5a0  d7 30 95 e1                                      ldrsb r3, [r5, r7]
0078e5a4  07 70 85 e0                                      add r7, r5, r7
0078e5a8  2f 00 53 e3                                      cmp r3, #0x2f
0078e5ac  0a 00 00 1a                                      bne #0x78e5dc
0078e5b0  04 10 96 e5                                      ldr r1, [r6, #4]
0078e5b4  01 00 51 e3                                      cmp r1, #1
0078e5b8  03 00 00 da                                      ble #0x78e5cc
0078e5bc  01 10 41 e2                                      sub r1, r1, #1
0078e5c0  06 00 a0 e1                                      mov r0, r6
0078e5c4  90 f5 ff eb                                      bl #0x78bc0c
0078e5c8  38 b1 d4 e5                                      ldrb fp, [r4, #0x138]
0078e5cc  00 20 9d e5                                      ldr r2, [sp]
0078e5d0  01 70 65 e2                                      rsb r7, r5, #1
0078e5d4  07 70 82 e0                                      add r7, r2, r7
0078e5d8  db ff ff ea                                      b #0x78e54c
0078e5dc  58 90 8d e2                                      add sb, sp, #0x58
0078e5e0  00 10 a0 e3                                      mov r1, #0
0078e5e4  02 2c a0 e3                                      mov r2, #0x200
0078e5e8  09 00 a0 e1                                      mov r0, sb
0078e5ec  9b ff ed eb                                      bl #0x30e460
0078e5f0  00 e0 9d e5                                      ldr lr, [sp]
0078e5f4  0a 20 e0 e1                                      mvn r2, sl
0078e5f8  07 10 a0 e1                                      mov r1, r7
0078e5fc  00 a0 a0 e3                                      mov sl, #0
0078e600  02 20 8e e0                                      add r2, lr, r2
0078e604  3b 7e 8d e2                                      add r7, sp, #0x3b0
0078e608  09 00 a0 e1                                      mov r0, sb
0078e60c  95 00 ee eb                                      bl #0x30e868
0078e610  5c a3 27 e5                                      str sl, [r7, #-0x35c]!
0078e614  09 20 a0 e1                                      mov r2, sb
0078e618  07 10 a0 e1                                      mov r1, r7
0078e61c  06 00 a0 e1                                      mov r0, r6
0078e620  8e fe ff eb                                      bl #0x78e060
0078e624  08 02 96 e8                                      ldm r6, {r3, sb}
0078e628  0c 20 a0 e3                                      mov r2, #0xc
0078e62c  01 b0 a0 e3                                      mov fp, #1
0078e630  34 10 8d e2                                      add r1, sp, #0x34
0078e634  38 20 8d e5                                      str r2, [sp, #0x38]
0078e638  34 a0 8d e5                                      str sl, [sp, #0x34]
0078e63c  3c a0 cd e5                                      strb sl, [sp, #0x3c]
0078e640  3d a0 cd e5                                      strb sl, [sp, #0x3d]
0078e644  3e a0 cd e5                                      strb sl, [sp, #0x3e]
0078e648  40 a0 cd e5                                      strb sl, [sp, #0x40]
0078e64c  0c 10 8d e5                                      str r1, [sp, #0xc]
0078e650  01 90 49 e2                                      sub sb, sb, #1
0078e654  3f b0 cd e5                                      strb fp, [sp, #0x3f]
0078e658  09 12 93 e7                                      ldr r1, [r3, sb, lsl #4]
0078e65c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0078e660  09 92 83 e0                                      add sb, r3, sb, lsl #4
0078e664  f2 56 ff eb                                      bl #0x764234
0078e668  04 20 99 e5                                      ldr r2, [sb, #4]
0078e66c  a8 33 9d e5                                      ldr r3, [sp, #0x3a8]
0078e670  37 ee 8d e2                                      add lr, sp, #0x370
0078e674  38 20 8d e5                                      str r2, [sp, #0x38]
0078e678  08 10 99 e5                                      ldr r1, [sb, #8]
0078e67c  00 20 e0 e3                                      mvn r2, #0
0078e680  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
0078e684  3c 10 8d e5                                      str r1, [sp, #0x3c]
0078e688  0c c0 d9 e5                                      ldrb ip, [sb, #0xc]
0078e68c  23 2c a0 e1                                      lsr r2, r3, #0x18
0078e690  e1 9f 8d e2                                      add sb, sp, #0x384
0078e694  1a 20 c0 e7                                      bfi r2, sl, #0, #1
0078e698  10 10 9d e5                                      ldr r1, [sp, #0x10]
0078e69c  09 00 a0 e1                                      mov r0, sb
0078e6a0  a8 33 8d e5                                      str r3, [sp, #0x3a8]
0078e6a4  08 e0 8d e5                                      str lr, [sp, #8]
0078e6a8  40 c0 cd e5                                      strb ip, [sp, #0x40]
0078e6ac  ab 23 cd e5                                      strb r2, [sp, #0x3ab]
0078e6b0  99 a3 cd e5                                      strb sl, [sp, #0x399]
0078e6b4  98 b3 cd e5                                      strb fp, [sp, #0x398]
0078e6b8  e6 af 8d e2                                      add sl, sp, #0x398
0078e6bc  ee 14 f2 eb                                      bl #0x413a7c
0078e6c0  09 10 a0 e1                                      mov r1, sb
0078e6c4  08 00 9d e5                                      ldr r0, [sp, #8]
0078e6c8  57 12 ff eb                                      bl #0x75302c
0078e6cc  08 10 9d e5                                      ldr r1, [sp, #8]
0078e6d0  07 00 a0 e1                                      mov r0, r7
0078e6d4  0a 20 a0 e1                                      mov r2, sl
0078e6d8  37 fe ff eb                                      bl #0x78dfbc
0078e6dc  00 90 a0 e1                                      mov sb, r0
0078e6e0  70 03 dd e5                                      ldrb r0, [sp, #0x370]
0078e6e4  70 30 af e6                                      sxtb r3, r0
0078e6e8  01 00 73 e3                                      cmn r3, #1
0078e6ec  bd 00 00 0a                                      beq #0x78e9e8
0078e6f0  84 13 dd e5                                      ldrb r1, [sp, #0x384]
0078e6f4  71 30 af e6                                      sxtb r3, r1
0078e6f8  01 00 73 e3                                      cmn r3, #1
0078e6fc  b5 00 00 0a                                      beq #0x78e9d8
0078e700  00 00 59 e3                                      cmp sb, #0
0078e704  0b 00 00 1a                                      bne #0x78e738
0078e708  98 23 dd e5                                      ldrb r2, [sp, #0x398]
0078e70c  72 90 af e6                                      sxtb sb, r2
0078e710  01 00 79 e3                                      cmn sb, #1
0078e714  29 00 00 0a                                      beq #0x78e7c0
0078e718  34 00 9d e5                                      ldr r0, [sp, #0x34]
0078e71c  00 00 50 e3                                      cmp r0, #0
0078e720  00 00 00 0a                                      beq #0x78e728
0078e724  c5 2e ff eb                                      bl #0x75a240
0078e728  07 00 a0 e1                                      mov r0, r7
0078e72c  b3 f7 ff eb                                      bl #0x78c600
0078e730  38 b1 d4 e5                                      ldrb fp, [r4, #0x138]
0078e734  a4 ff ff ea                                      b #0x78e5cc
0078e738  98 33 dd e5                                      ldrb r3, [sp, #0x398]
0078e73c  18 10 9d e5                                      ldr r1, [sp, #0x18]
0078e740  73 90 af e6                                      sxtb sb, r3
0078e744  01 00 79 e3                                      cmn sb, #1
0078e748  01 00 8a 12                                      addne r0, sl, #1
0078e74c  a4 03 9d 05                                      ldreq r0, [sp, #0x3a4]
0078e750  f1 fe ed eb                                      bl #0x30e31c
0078e754  00 00 50 e3                                      cmp r0, #0
0078e758  1c 00 00 1a                                      bne #0x78e7d0
0078e75c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0078e760  00 00 5c e3                                      cmp ip, #0
0078e764  10 00 00 0a                                      beq #0x78e7ac
0078e768  20 18 9f e5                                      ldr r1, [pc, #0x820]
0078e76c  d7 af 8d e2                                      add sl, sp, #0x35c
0078e770  0a 00 a0 e1                                      mov r0, sl
0078e774  01 10 8f e0                                      add r1, pc, r1
0078e778  bf 14 f2 eb                                      bl #0x413a7c
0078e77c  04 20 96 e5                                      ldr r2, [r6, #4]
0078e780  00 30 96 e5                                      ldr r3, [r6]
0078e784  0a 10 a0 e1                                      mov r1, sl
0078e788  01 20 42 e2                                      sub r2, r2, #1
0078e78c  02 22 83 e0                                      add r2, r3, r2, lsl #4
0078e790  04 00 a0 e1                                      mov r0, r4
0078e794  01 30 a0 e3                                      mov r3, #1
0078e798  fc f8 ff eb                                      bl #0x78cb90
0078e79c  0a 00 a0 e1                                      mov r0, sl
0078e7a0  cc 45 f2 eb                                      bl #0x41fed8
0078e7a4  98 e3 dd e5                                      ldrb lr, [sp, #0x398]
0078e7a8  7e 90 af e6                                      sxtb sb, lr
0078e7ac  14 00 9d e5                                      ldr r0, [sp, #0x14]
0078e7b0  01 00 79 e3                                      cmn sb, #1
0078e7b4  01 00 80 e2                                      add r0, r0, #1
0078e7b8  14 00 8d e5                                      str r0, [sp, #0x14]
0078e7bc  d5 ff ff 1a                                      bne #0x78e718
0078e7c0  a4 03 9d e5                                      ldr r0, [sp, #0x3a4]
0078e7c4  a0 13 9d e5                                      ldr r1, [sp, #0x3a0]
0078e7c8  da 10 ff eb                                      bl #0x752b38
0078e7cc  d1 ff ff ea                                      b #0x78e718
0078e7d0  0a 00 a0 e1                                      mov r0, sl
0078e7d4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0078e7d8  b7 f1 ff eb                                      bl #0x78aebc
0078e7dc  00 90 50 e2                                      subs sb, r0, #0
0078e7e0  bd 00 00 0a                                      beq #0x78eadc
0078e7e4  58 33 9d e5                                      ldr r3, [sp, #0x358]
0078e7e8  00 20 e0 e3                                      mvn r2, #0
0078e7ec  a0 17 9f e5                                      ldr r1, [pc, #0x7a0]
0078e7f0  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
0078e7f4  23 2c a0 e1                                      lsr r2, r3, #0x18
0078e7f8  cd af 8d e2                                      add sl, sp, #0x334
0078e7fc  00 90 a0 e3                                      mov sb, #0
0078e800  d2 cf 8d e2                                      add ip, sp, #0x348
0078e804  19 20 c0 e7                                      bfi r2, sb, #0, #1
0078e808  01 10 8f e0                                      add r1, pc, r1
0078e80c  28 c0 8d e5                                      str ip, [sp, #0x28]
0078e810  0a 00 a0 e1                                      mov r0, sl
0078e814  01 c0 a0 e3                                      mov ip, #1
0078e818  58 33 8d e5                                      str r3, [sp, #0x358]
0078e81c  48 c3 cd e5                                      strb ip, [sp, #0x348]
0078e820  5b 23 cd e5                                      strb r2, [sp, #0x35b]
0078e824  49 93 cd e5                                      strb sb, [sp, #0x349]
0078e828  93 14 f2 eb                                      bl #0x413a7c
0078e82c  0a 10 a0 e1                                      mov r1, sl
0078e830  28 20 9d e5                                      ldr r2, [sp, #0x28]
0078e834  07 00 a0 e1                                      mov r0, r7
0078e838  df fd ff eb                                      bl #0x78dfbc
0078e83c  00 b0 a0 e1                                      mov fp, r0
0078e840  0a 00 a0 e1                                      mov r0, sl
0078e844  a3 45 f2 eb                                      bl #0x41fed8
0078e848  09 00 5b e1                                      cmp fp, sb
0078e84c  8b 00 00 1a                                      bne #0x78ea80
0078e850  30 33 9d e5                                      ldr r3, [sp, #0x330]
0078e854  00 20 e0 e3                                      mvn r2, #0
0078e858  38 17 9f e5                                      ldr r1, [pc, #0x738]
0078e85c  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
0078e860  00 c0 a0 e3                                      mov ip, #0
0078e864  23 2c a0 e1                                      lsr r2, r3, #0x18
0078e868  c3 af 8d e2                                      add sl, sp, #0x30c
0078e86c  32 ee 8d e2                                      add lr, sp, #0x320
0078e870  1c 20 c0 e7                                      bfi r2, ip, #0, #1
0078e874  01 10 8f e0                                      add r1, pc, r1
0078e878  08 e0 8d e5                                      str lr, [sp, #8]
0078e87c  0a 00 a0 e1                                      mov r0, sl
0078e880  01 e0 a0 e3                                      mov lr, #1
0078e884  30 33 8d e5                                      str r3, [sp, #0x330]
0078e888  20 e3 cd e5                                      strb lr, [sp, #0x320]
0078e88c  33 23 cd e5                                      strb r2, [sp, #0x333]
0078e890  21 c3 cd e5                                      strb ip, [sp, #0x321]
0078e894  78 14 f2 eb                                      bl #0x413a7c
0078e898  07 00 a0 e1                                      mov r0, r7
0078e89c  0a 10 a0 e1                                      mov r1, sl
0078e8a0  08 20 9d e5                                      ldr r2, [sp, #8]
0078e8a4  c4 fd ff eb                                      bl #0x78dfbc
0078e8a8  00 00 50 e3                                      cmp r0, #0
0078e8ac  51 00 00 1a                                      bne #0x78e9f8
0078e8b0  0a 00 a0 e1                                      mov r0, sl
0078e8b4  87 45 f2 eb                                      bl #0x41fed8
0078e8b8  08 33 9d e5                                      ldr r3, [sp, #0x308]
0078e8bc  00 20 e0 e3                                      mvn r2, #0
0078e8c0  d4 16 9f e5                                      ldr r1, [pc, #0x6d4]
0078e8c4  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
0078e8c8  00 c0 a0 e3                                      mov ip, #0
0078e8cc  23 2c a0 e1                                      lsr r2, r3, #0x18
0078e8d0  b9 9f 8d e2                                      add sb, sp, #0x2e4
0078e8d4  1c 20 c0 e7                                      bfi r2, ip, #0, #1
0078e8d8  01 e0 a0 e3                                      mov lr, #1
0078e8dc  01 10 8f e0                                      add r1, pc, r1
0078e8e0  09 00 a0 e1                                      mov r0, sb
0078e8e4  be af 8d e2                                      add sl, sp, #0x2f8
0078e8e8  08 33 8d e5                                      str r3, [sp, #0x308]
0078e8ec  f8 e2 cd e5                                      strb lr, [sp, #0x2f8]
0078e8f0  f9 c2 cd e5                                      strb ip, [sp, #0x2f9]
0078e8f4  0b 23 cd e5                                      strb r2, [sp, #0x30b]
0078e8f8  5f 14 f2 eb                                      bl #0x413a7c
0078e8fc  09 10 a0 e1                                      mov r1, sb
0078e900  0a 20 a0 e1                                      mov r2, sl
0078e904  07 00 a0 e1                                      mov r0, r7
0078e908  ab fd ff eb                                      bl #0x78dfbc
0078e90c  00 b0 a0 e1                                      mov fp, r0
0078e910  09 00 a0 e1                                      mov r0, sb
0078e914  6f 45 f2 eb                                      bl #0x41fed8
0078e918  00 00 5b e3                                      cmp fp, #0
0078e91c  21 00 00 0a                                      beq #0x78e9a8
0078e920  f8 22 dd e5                                      ldrb r2, [sp, #0x2f8]
0078e924  25 10 a0 e3                                      mov r1, #0x25
0078e928  72 90 af e6                                      sxtb sb, r2
0078e92c  01 00 79 e3                                      cmn sb, #1
0078e930  01 00 8a 12                                      addne r0, sl, #1
0078e934  04 03 9d 05                                      ldreq r0, [sp, #0x304]
0078e938  ba 00 ee eb                                      bl #0x30ec28
0078e93c  00 00 50 e3                                      cmp r0, #0
0078e940  d9 00 00 0a                                      beq #0x78ecac
0078e944  01 00 79 e3                                      cmn sb, #1
0078e948  f8 32 dd 15                                      ldrbne r3, [sp, #0x2f8]
0078e94c  fc 12 9d 05                                      ldreq r1, [sp, #0x2fc]
0078e950  0a 00 a0 e1                                      mov r0, sl
0078e954  73 10 af 16                                      sxtbne r1, r3
0078e958  01 10 41 e2                                      sub r1, r1, #1
0078e95c  01 10 41 e2                                      sub r1, r1, #1
0078e960  f9 f3 ff eb                                      bl #0x78b94c
0078e964  f8 92 dd e5                                      ldrb sb, [sp, #0x2f8]
0078e968  04 10 96 e5                                      ldr r1, [r6, #4]
0078e96c  00 20 96 e5                                      ldr r2, [r6]
0078e970  79 30 af e6                                      sxtb r3, sb
0078e974  01 00 73 e3                                      cmn r3, #1
0078e978  01 22 82 e0                                      add r2, r2, r1, lsl #4
0078e97c  01 00 8a 12                                      addne r0, sl, #1
0078e980  04 03 9d 05                                      ldreq r0, [sp, #0x304]
0078e984  0c 90 12 e5                                      ldr sb, [r2, #-0xc]
0078e988  c1 fd ed eb                                      bl #0x30e094
0078e98c  99 00 00 e0                                      mul r0, sb, r0
0078e990  1f 35 08 e3                                      movw r3, #0x851f
0078e994  eb 31 45 e3                                      movt r3, #0x51eb
0078e998  93 c0 c3 e0                                      smull ip, r3, r3, r0
0078e99c  c0 0f a0 e1                                      asr r0, r0, #0x1f
0078e9a0  c3 32 60 e0                                      rsb r3, r0, r3, asr #5
0078e9a4  38 30 8d e5                                      str r3, [sp, #0x38]
0078e9a8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078e9ac  06 00 a0 e1                                      mov r0, r6
0078e9b0  e7 f0 ff eb                                      bl #0x78ad54
0078e9b4  0a 00 a0 e1                                      mov r0, sl
0078e9b8  46 45 f2 eb                                      bl #0x41fed8
0078e9bc  08 00 9d e5                                      ldr r0, [sp, #8]
0078e9c0  44 45 f2 eb                                      bl #0x41fed8
0078e9c4  28 00 9d e5                                      ldr r0, [sp, #0x28]
0078e9c8  42 45 f2 eb                                      bl #0x41fed8
0078e9cc  98 03 dd e5                                      ldrb r0, [sp, #0x398]
0078e9d0  70 90 af e6                                      sxtb sb, r0
0078e9d4  4d ff ff ea                                      b #0x78e710
0078e9d8  90 03 9d e5                                      ldr r0, [sp, #0x390]
0078e9dc  8c 13 9d e5                                      ldr r1, [sp, #0x38c]
0078e9e0  54 10 ff eb                                      bl #0x752b38
0078e9e4  45 ff ff ea                                      b #0x78e700
0078e9e8  7c 03 9d e5                                      ldr r0, [sp, #0x37c]
0078e9ec  78 13 9d e5                                      ldr r1, [sp, #0x378]
0078e9f0  50 10 ff eb                                      bl #0x752b38
0078e9f4  3d ff ff ea                                      b #0x78e6f0
0078e9f8  20 03 dd e5                                      ldrb r0, [sp, #0x320]
0078e9fc  70 30 af e6                                      sxtb r3, r0
0078ea00  01 00 73 e3                                      cmn r3, #1
0078ea04  24 33 9d 05                                      ldreq r3, [sp, #0x324]
0078ea08  01 30 43 e2                                      sub r3, r3, #1
0078ea0c  00 00 53 e3                                      cmp r3, #0
0078ea10  a6 ff ff da                                      ble #0x78e8b0
0078ea14  0a 00 a0 e1                                      mov r0, sl
0078ea18  2e 45 f2 eb                                      bl #0x41fed8
0078ea1c  20 13 dd e5                                      ldrb r1, [sp, #0x320]
0078ea20  71 a0 af e6                                      sxtb sl, r1
0078ea24  01 00 7a e3                                      cmn sl, #1
0078ea28  08 20 9d 15                                      ldrne r2, [sp, #8]
0078ea2c  2c 33 9d 05                                      ldreq r3, [sp, #0x32c]
0078ea30  01 30 82 12                                      addne r3, r2, #1
0078ea34  d0 30 d3 e1                                      ldrsb r3, [r3]
0078ea38  23 00 53 e3                                      cmp r3, #0x23
0078ea3c  5f 00 00 0a                                      beq #0x78ebc0
0078ea40  01 00 7a e3                                      cmn sl, #1
0078ea44  08 10 9d 15                                      ldrne r1, [sp, #8]
0078ea48  2c 03 9d 05                                      ldreq r0, [sp, #0x32c]
0078ea4c  01 00 81 12                                      addne r0, r1, #1
0078ea50  8f fd ed eb                                      bl #0x30e094
0078ea54  ff 04 80 e3                                      orr r0, r0, #0xff000000
0078ea58  b4 00 ee eb                                      bl #0x30ed30
0078ea5c  f0 ff ed eb                                      bl #0x30ea24
0078ea60  00 10 e0 e3                                      mvn r1, #0
0078ea64  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
0078ea68  50 24 e7 e7                                      ubfx r2, r0, #8, #8
0078ea6c  3f 10 cd e5                                      strb r1, [sp, #0x3f]
0078ea70  3e 00 cd e5                                      strb r0, [sp, #0x3e]
0078ea74  3d 20 cd e5                                      strb r2, [sp, #0x3d]
0078ea78  3c 30 cd e5                                      strb r3, [sp, #0x3c]
0078ea7c  8d ff ff ea                                      b #0x78e8b8
0078ea80  04 00 a0 e1                                      mov r0, r4
0078ea84  3a c6 ff eb                                      bl #0x780374
0078ea88  09 10 a0 e1                                      mov r1, sb
0078ea8c  00 b0 a0 e1                                      mov fp, r0
0078ea90  88 00 a0 e3                                      mov r0, #0x88
0078ea94  43 10 ff eb                                      bl #0x752ba8
0078ea98  0b 10 a0 e1                                      mov r1, fp
0078ea9c  00 a0 a0 e1                                      mov sl, r0
0078eaa0  8c 03 01 eb                                      bl #0x7cf8d8
0078eaa4  0a 00 a0 e1                                      mov r0, sl
0078eaa8  34 10 9d e5                                      ldr r1, [sp, #0x34]
0078eaac  dd fe 00 eb                                      bl #0x7ce628
0078eab0  30 00 8a e2                                      add r0, sl, #0x30
0078eab4  28 10 9d e5                                      ldr r1, [sp, #0x28]
0078eab8  24 11 ff eb                                      bl #0x752f50
0078eabc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0078eac0  0a 10 a0 e1                                      mov r1, sl
0078eac4  da 55 ff eb                                      bl #0x764234
0078eac8  60 ff ff ea                                      b #0x78e850
0078eacc  64 02 9d e5                                      ldr r0, [sp, #0x264]
0078ead0  60 12 9d e5                                      ldr r1, [sp, #0x260]
0078ead4  17 10 ff eb                                      bl #0x752b38
0078ead8  84 fe ff ea                                      b #0x78e4f0
0078eadc  0a 00 a0 e1                                      mov r0, sl
0078eae0  20 10 9d e5                                      ldr r1, [sp, #0x20]
0078eae4  f4 f0 ff eb                                      bl #0x78aebc
0078eae8  00 b0 50 e2                                      subs fp, r0, #0
0078eaec  16 00 00 0a                                      beq #0x78eb4c
0078eaf0  04 00 a0 e1                                      mov r0, r4
0078eaf4  1e c6 ff eb                                      bl #0x780374
0078eaf8  09 10 a0 e1                                      mov r1, sb
0078eafc  00 b0 a0 e1                                      mov fp, r0
0078eb00  88 00 a0 e3                                      mov r0, #0x88
0078eb04  27 10 ff eb                                      bl #0x752ba8
0078eb08  0b 10 a0 e1                                      mov r1, fp
0078eb0c  00 a0 a0 e1                                      mov sl, r0
0078eb10  70 03 01 eb                                      bl #0x7cf8d8
0078eb14  0a 00 a0 e1                                      mov r0, sl
0078eb18  34 10 9d e5                                      ldr r1, [sp, #0x34]
0078eb1c  c1 fe 00 eb                                      bl #0x7ce628
0078eb20  01 30 a0 e3                                      mov r3, #1
0078eb24  4d 30 ca e5                                      strb r3, [sl, #0x4d]
0078eb28  0a 10 a0 e1                                      mov r1, sl
0078eb2c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0078eb30  bf 55 ff eb                                      bl #0x764234
0078eb34  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078eb38  06 00 a0 e1                                      mov r0, r6
0078eb3c  84 f0 ff eb                                      bl #0x78ad54
0078eb40  98 13 dd e5                                      ldrb r1, [sp, #0x398]
0078eb44  71 90 af e6                                      sxtb sb, r1
0078eb48  f0 fe ff ea                                      b #0x78e710
0078eb4c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0078eb50  0a 00 a0 e1                                      mov r0, sl
0078eb54  02 10 8f e0                                      add r1, pc, r2
0078eb58  d7 f0 ff eb                                      bl #0x78aebc
0078eb5c  00 00 50 e3                                      cmp r0, #0
0078eb60  43 00 00 0a                                      beq #0x78ec74
0078eb64  04 00 a0 e1                                      mov r0, r4
0078eb68  01 c6 ff eb                                      bl #0x780374
0078eb6c  0b 10 a0 e1                                      mov r1, fp
0078eb70  00 90 a0 e1                                      mov sb, r0
0078eb74  88 00 a0 e3                                      mov r0, #0x88
0078eb78  0a 10 ff eb                                      bl #0x752ba8
0078eb7c  09 10 a0 e1                                      mov r1, sb
0078eb80  00 a0 a0 e1                                      mov sl, r0
0078eb84  53 03 01 eb                                      bl #0x7cf8d8
0078eb88  0a 00 a0 e1                                      mov r0, sl
0078eb8c  34 10 9d e5                                      ldr r1, [sp, #0x34]
0078eb90  a4 fe 00 eb                                      bl #0x7ce628
0078eb94  01 30 a0 e3                                      mov r3, #1
0078eb98  4c 30 ca e5                                      strb r3, [sl, #0x4c]
0078eb9c  0a 10 a0 e1                                      mov r1, sl
0078eba0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0078eba4  a2 55 ff eb                                      bl #0x764234
0078eba8  06 00 a0 e1                                      mov r0, r6
0078ebac  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078ebb0  67 f0 ff eb                                      bl #0x78ad54
0078ebb4  98 33 dd e5                                      ldrb r3, [sp, #0x398]
0078ebb8  73 90 af e6                                      sxtb sb, r3
0078ebbc  d3 fe ff ea                                      b #0x78e710
0078ebc0  01 00 7a e3                                      cmn sl, #1
0078ebc4  20 93 dd 15                                      ldrbne sb, [sp, #0x320]
0078ebc8  24 33 9d 05                                      ldreq r3, [sp, #0x324]
0078ebcc  79 30 af 16                                      sxtbne r3, sb
0078ebd0  01 30 43 e2                                      sub r3, r3, #1
0078ebd4  01 30 43 e2                                      sub r3, r3, #1
0078ebd8  00 00 53 e3                                      cmp r3, #0
0078ebdc  bf 00 00 da                                      ble #0x78eee0
0078ebe0  b8 23 9f e5                                      ldr r2, [pc, #0x3b8]
0078ebe4  08 c0 9d e5                                      ldr ip, [sp, #8]
0078ebe8  2c 93 9d e5                                      ldr sb, [sp, #0x32c]
0078ebec  02 20 98 e7                                      ldr r2, [r8, r2]
0078ebf0  00 10 a0 e3                                      mov r1, #0
0078ebf4  ff 04 a0 e3                                      mov r0, #0xff000000
0078ebf8  00 20 92 e5                                      ldr r2, [r2]
0078ebfc  01 b0 8c e2                                      add fp, ip, #1
0078ec00  2c 20 8d e5                                      str r2, [sp, #0x2c]
0078ec04  00 00 00 ea                                      b #0x78ec0c
0078ec08  04 10 81 e2                                      add r1, r1, #4
0078ec0c  01 00 7a e3                                      cmn sl, #1
0078ec10  09 20 a0 01                                      moveq r2, sb
0078ec14  0b 20 a0 11                                      movne r2, fp
0078ec18  d3 20 92 e1                                      ldrsb r2, [r2, r3]
0078ec1c  ff 00 52 e3                                      cmp r2, #0xff
0078ec20  2c e0 9d 95                                      ldrls lr, [sp, #0x2c]
0078ec24  82 20 8e 90                                      addls r2, lr, r2, lsl #1
0078ec28  f2 20 d2 91                                      ldrshls r2, [r2, #2]
0078ec2c  72 20 ef e6                                      uxtb r2, r2
0078ec30  72 c0 ef e6                                      uxtb ip, r2
0078ec34  30 e0 4c e2                                      sub lr, ip, #0x30
0078ec38  7e e0 ef e6                                      uxtb lr, lr
0078ec3c  09 00 5e e3                                      cmp lr, #9
0078ec40  72 20 af 96                                      sxtbls r2, r2
0078ec44  30 20 42 92                                      subls r2, r2, #0x30
0078ec48  12 01 80 91                                      orrls r0, r0, r2, lsl r1
0078ec4c  05 00 00 9a                                      bls #0x78ec68
0078ec50  61 c0 4c e2                                      sub ip, ip, #0x61
0078ec54  7c c0 ef e6                                      uxtb ip, ip
0078ec58  05 00 5c e3                                      cmp ip, #5
0078ec5c  72 20 af 96                                      sxtbls r2, r2
0078ec60  57 20 42 92                                      subls r2, r2, #0x57
0078ec64  12 01 80 91                                      orrls r0, r0, r2, lsl r1
0078ec68  01 30 53 e2                                      subs r3, r3, #1
0078ec6c  e5 ff ff 1a                                      bne #0x78ec08
0078ec70  78 ff ff ea                                      b #0x78ea58
0078ec74  28 13 9f e5                                      ldr r1, [pc, #0x328]
0078ec78  0a 00 a0 e1                                      mov r0, sl
0078ec7c  01 10 8f e0                                      add r1, pc, r1
0078ec80  8d f0 ff eb                                      bl #0x78aebc
0078ec84  00 b0 50 e2                                      subs fp, r0, #0
0078ec88  30 00 00 0a                                      beq #0x78ed50
0078ec8c  01 30 a0 e3                                      mov r3, #1
0078ec90  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078ec94  06 00 a0 e1                                      mov r0, r6
0078ec98  40 30 cd e5                                      strb r3, [sp, #0x40]
0078ec9c  2c f0 ff eb                                      bl #0x78ad54
0078eca0  98 c3 dd e5                                      ldrb ip, [sp, #0x398]
0078eca4  7c 90 af e6                                      sxtb sb, ip
0078eca8  98 fe ff ea                                      b #0x78e710
0078ecac  01 00 79 e3                                      cmn sb, #1
0078ecb0  04 b3 9d 05                                      ldreq fp, [sp, #0x304]
0078ecb4  01 30 8a 12                                      addne r3, sl, #1
0078ecb8  2b 10 a0 03                                      moveq r1, #0x2b
0078ecbc  0b 00 a0 01                                      moveq r0, fp
0078ecc0  03 00 a0 11                                      movne r0, r3
0078ecc4  2b 10 a0 13                                      movne r1, #0x2b
0078ecc8  03 b0 a0 11                                      movne fp, r3
0078eccc  d5 ff ed eb                                      bl #0x30ec28
0078ecd0  0b 00 50 e1                                      cmp r0, fp
0078ecd4  95 00 00 0a                                      beq #0x78ef30
0078ecd8  01 00 79 e3                                      cmn sb, #1
0078ecdc  04 b3 9d 05                                      ldreq fp, [sp, #0x304]
0078ece0  01 30 8a 12                                      addne r3, sl, #1
0078ece4  2d 10 a0 03                                      moveq r1, #0x2d
0078ece8  0b 00 a0 01                                      moveq r0, fp
0078ecec  03 00 a0 11                                      movne r0, r3
0078ecf0  2d 10 a0 13                                      movne r1, #0x2d
0078ecf4  03 b0 a0 11                                      movne fp, r3
0078ecf8  ca ff ed eb                                      bl #0x30ec28
0078ecfc  0b 00 50 e1                                      cmp r0, fp
0078ed00  79 00 00 0a                                      beq #0x78eeec
0078ed04  01 00 79 e3                                      cmn sb, #1
0078ed08  01 00 8a 12                                      addne r0, sl, #1
0078ed0c  04 03 9d 05                                      ldreq r0, [sp, #0x304]
0078ed10  df fc ed eb                                      bl #0x30e094
0078ed14  00 00 50 e3                                      cmp r0, #0
0078ed18  22 ff ff da                                      ble #0x78e9a8
0078ed1c  f8 e2 dd e5                                      ldrb lr, [sp, #0x2f8]
0078ed20  7e 30 af e6                                      sxtb r3, lr
0078ed24  01 00 73 e3                                      cmn r3, #1
0078ed28  01 00 8a 12                                      addne r0, sl, #1
0078ed2c  04 03 9d 05                                      ldreq r0, [sp, #0x304]
0078ed30  d7 fc ed eb                                      bl #0x30e094
0078ed34  0a ff ed eb                                      bl #0x30e964
0078ed38  41 14 a0 e3                                      mov r1, #0x41000000
0078ed3c  0a 16 81 e2                                      add r1, r1, #0xa00000
0078ed40  09 00 ee eb                                      bl #0x30ed6c
0078ed44  e0 fd ed eb                                      bl #0x30e4cc
0078ed48  38 00 8d e5                                      str r0, [sp, #0x38]
0078ed4c  15 ff ff ea                                      b #0x78e9a8
0078ed50  50 12 9f e5                                      ldr r1, [pc, #0x250]
0078ed54  0a 00 a0 e1                                      mov r0, sl
0078ed58  01 10 8f e0                                      add r1, pc, r1
0078ed5c  56 f0 ff eb                                      bl #0x78aebc
0078ed60  00 00 50 e3                                      cmp r0, #0
0078ed64  98 e3 dd 05                                      ldrbeq lr, [sp, #0x398]
0078ed68  7e 90 af 06                                      sxtbeq sb, lr
0078ed6c  67 fe ff 0a                                      beq #0x78e710
0078ed70  b8 32 9d e5                                      ldr r3, [sp, #0x2b8]
0078ed74  e0 c2 9d e5                                      ldr ip, [sp, #0x2e0]
0078ed78  cc 22 9d e5                                      ldr r2, [sp, #0x2cc]
0078ed7c  00 10 e0 e3                                      mvn r1, #0
0078ed80  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
0078ed84  23 0c a0 e1                                      lsr r0, r3, #0x18
0078ed88  11 20 d7 e7                                      bfi r2, r1, #0, #0x18
0078ed8c  11 c0 d7 e7                                      bfi ip, r1, #0, #0x18
0078ed90  1b 00 c0 e7                                      bfi r0, fp, #0, #1
0078ed94  a5 1f 8d e2                                      add r1, sp, #0x294
0078ed98  08 10 8d e5                                      str r1, [sp, #8]
0078ed9c  28 00 cd e5                                      strb r0, [sp, #0x28]
0078eda0  04 12 9f e5                                      ldr r1, [pc, #0x204]
0078eda4  e0 c2 8d e5                                      str ip, [sp, #0x2e0]
0078eda8  2c ec a0 e1                                      lsr lr, ip, #0x18
0078edac  28 c0 dd e5                                      ldrb ip, [sp, #0x28]
0078edb0  22 ac a0 e1                                      lsr sl, r2, #0x18
0078edb4  2d 9e 8d e2                                      add sb, sp, #0x2d0
0078edb8  1b e0 c0 e7                                      bfi lr, fp, #0, #1
0078edbc  1b a0 c0 e7                                      bfi sl, fp, #0, #1
0078edc0  01 10 8f e0                                      add r1, pc, r1
0078edc4  0c 90 8d e5                                      str sb, [sp, #0xc]
0078edc8  08 00 9d e5                                      ldr r0, [sp, #8]
0078edcc  01 90 a0 e3                                      mov sb, #1
0078edd0  e3 e2 cd e5                                      strb lr, [sp, #0x2e3]
0078edd4  b8 32 8d e5                                      str r3, [sp, #0x2b8]
0078edd8  cc 22 8d e5                                      str r2, [sp, #0x2cc]
0078eddc  bb c2 cd e5                                      strb ip, [sp, #0x2bb]
0078ede0  a8 92 cd e5                                      strb sb, [sp, #0x2a8]
0078ede4  cf a2 cd e5                                      strb sl, [sp, #0x2cf]
0078ede8  d0 92 cd e5                                      strb sb, [sp, #0x2d0]
0078edec  d1 b2 cd e5                                      strb fp, [sp, #0x2d1]
0078edf0  bc 92 cd e5                                      strb sb, [sp, #0x2bc]
0078edf4  bd b2 cd e5                                      strb fp, [sp, #0x2bd]
0078edf8  a9 b2 cd e5                                      strb fp, [sp, #0x2a9]
0078edfc  1e 13 f2 eb                                      bl #0x413a7c
0078ee00  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0078ee04  08 10 9d e5                                      ldr r1, [sp, #8]
0078ee08  07 00 a0 e1                                      mov r0, r7
0078ee0c  6a fc ff eb                                      bl #0x78dfbc
0078ee10  08 00 9d e5                                      ldr r0, [sp, #8]
0078ee14  2f 44 f2 eb                                      bl #0x41fed8
0078ee18  90 11 9f e5                                      ldr r1, [pc, #0x190]
0078ee1c  0a ad 8d e2                                      add sl, sp, #0x280
0078ee20  af bf 8d e2                                      add fp, sp, #0x2bc
0078ee24  0a 00 a0 e1                                      mov r0, sl
0078ee28  01 10 8f e0                                      add r1, pc, r1
0078ee2c  12 13 f2 eb                                      bl #0x413a7c
0078ee30  0b 20 a0 e1                                      mov r2, fp
0078ee34  0a 10 a0 e1                                      mov r1, sl
0078ee38  07 00 a0 e1                                      mov r0, r7
0078ee3c  5e fc ff eb                                      bl #0x78dfbc
0078ee40  0a 00 a0 e1                                      mov r0, sl
0078ee44  23 44 f2 eb                                      bl #0x41fed8
0078ee48  64 11 9f e5                                      ldr r1, [pc, #0x164]
0078ee4c  9b af 8d e2                                      add sl, sp, #0x26c
0078ee50  aa 9f 8d e2                                      add sb, sp, #0x2a8
0078ee54  0a 00 a0 e1                                      mov r0, sl
0078ee58  01 10 8f e0                                      add r1, pc, r1
0078ee5c  06 13 f2 eb                                      bl #0x413a7c
0078ee60  0a 10 a0 e1                                      mov r1, sl
0078ee64  09 20 a0 e1                                      mov r2, sb
0078ee68  07 00 a0 e1                                      mov r0, r7
0078ee6c  52 fc ff eb                                      bl #0x78dfbc
0078ee70  0a 00 a0 e1                                      mov r0, sl
0078ee74  17 44 f2 eb                                      bl #0x41fed8
0078ee78  bc 02 dd e5                                      ldrb r0, [sp, #0x2bc]
0078ee7c  70 30 af e6                                      sxtb r3, r0
0078ee80  01 00 73 e3                                      cmn r3, #1
0078ee84  01 00 8b 12                                      addne r0, fp, #1
0078ee88  c8 02 9d 05                                      ldreq r0, [sp, #0x2c8]
0078ee8c  80 fc ed eb                                      bl #0x30e094
0078ee90  a8 32 dd e5                                      ldrb r3, [sp, #0x2a8]
0078ee94  00 a0 a0 e1                                      mov sl, r0
0078ee98  ff 00 53 e3                                      cmp r3, #0xff
0078ee9c  01 00 89 12                                      addne r0, sb, #1
0078eea0  b4 02 9d 05                                      ldreq r0, [sp, #0x2b4]
0078eea4  7a fc ed eb                                      bl #0x30e094
0078eea8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078eeac  00 30 a0 e1                                      mov r3, r0
0078eeb0  0a 20 a0 e1                                      mov r2, sl
0078eeb4  04 00 a0 e1                                      mov r0, r4
0078eeb8  b4 ee ff eb                                      bl #0x78a990
0078eebc  09 00 a0 e1                                      mov r0, sb
0078eec0  04 44 f2 eb                                      bl #0x41fed8
0078eec4  0b 00 a0 e1                                      mov r0, fp
0078eec8  02 44 f2 eb                                      bl #0x41fed8
0078eecc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0078eed0  00 44 f2 eb                                      bl #0x41fed8
0078eed4  98 13 dd e5                                      ldrb r1, [sp, #0x398]
0078eed8  71 90 af e6                                      sxtb sb, r1
0078eedc  0b fe ff ea                                      b #0x78e710
0078eee0  ff 04 a0 e3                                      mov r0, #0xff000000
0078eee4  db fe ff ea                                      b #0x78ea58
0078eee8  08 fd ed eb                                      bl #0x30e310
0078eeec  01 00 79 e3                                      cmn sb, #1
0078eef0  04 20 96 e5                                      ldr r2, [r6, #4]
0078eef4  04 03 9d 05                                      ldreq r0, [sp, #0x304]
0078eef8  00 30 96 e5                                      ldr r3, [r6]
0078eefc  01 00 8a 12                                      addne r0, sl, #1
0078ef00  01 00 80 e2                                      add r0, r0, #1
0078ef04  02 32 83 e0                                      add r3, r3, r2, lsl #4
0078ef08  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
0078ef0c  60 fc ed eb                                      bl #0x30e094
0078ef10  93 fe ed eb                                      bl #0x30e964
0078ef14  41 14 a0 e3                                      mov r1, #0x41000000
0078ef18  0a 16 81 e2                                      add r1, r1, #0xa00000
0078ef1c  92 ff ed eb                                      bl #0x30ed6c
0078ef20  69 fd ed eb                                      bl #0x30e4cc
0078ef24  09 00 60 e0                                      rsb r0, r0, sb
0078ef28  38 00 8d e5                                      str r0, [sp, #0x38]
0078ef2c  9d fe ff ea                                      b #0x78e9a8
0078ef30  01 00 79 e3                                      cmn sb, #1
0078ef34  04 20 96 e5                                      ldr r2, [r6, #4]
0078ef38  04 03 9d 05                                      ldreq r0, [sp, #0x304]
0078ef3c  00 30 96 e5                                      ldr r3, [r6]
0078ef40  01 00 8a 12                                      addne r0, sl, #1
0078ef44  01 00 80 e2                                      add r0, r0, #1
0078ef48  02 32 83 e0                                      add r3, r3, r2, lsl #4
0078ef4c  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
0078ef50  4f fc ed eb                                      bl #0x30e094
0078ef54  82 fe ed eb                                      bl #0x30e964
0078ef58  41 14 a0 e3                                      mov r1, #0x41000000
0078ef5c  0a 16 81 e2                                      add r1, r1, #0xa00000
0078ef60  81 ff ed eb                                      bl #0x30ed6c
0078ef64  58 fd ed eb                                      bl #0x30e4cc
0078ef68  09 00 80 e0                                      add r0, r0, sb
0078ef6c  38 00 8d e5                                      str r0, [sp, #0x38]
0078ef70  8c fe ff ea                                      b #0x78e9a8
; mapping-symbol data/literal pool
0078ef74  2c 67 20 00 ac 40 00 00 d4 2c 15 00 14 cd 17 00  .byte 0x2c, 0x67, 0x20, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd4, 0x2c, 0x15, 0x00, 0x14, 0xcd, 0x17, 0x00
0078ef84  1c ad 13 00 18 bb 17 00 48 d4 17 00 7c d2 13 00  .byte 0x1c, 0xad, 0x13, 0x00, 0x18, 0xbb, 0x17, 0x00, 0x48, 0xd4, 0x17, 0x00, 0x7c, 0xd2, 0x13, 0x00
0078ef94  58 b7 17 00 ec 42 15 00 f4 6d 13 00 e0 36 00 00  .byte 0x58, 0xb7, 0x17, 0x00, 0xec, 0x42, 0x15, 0x00, 0xf4, 0x6d, 0x13, 0x00, 0xe0, 0x36, 0x00, 0x00
0078efa4  4c 89 15 00 10 b2 17 00 b0 b1 17 00 80 fd 14 00  .byte 0x4c, 0x89, 0x15, 0x00, 0x10, 0xb2, 0x17, 0x00, 0xb0, 0xb1, 0x17, 0x00, 0x80, 0xfd, 0x14, 0x00
0078efb4  d8 a2 17 00                                      .byte 0xd8, 0xa2, 0x17, 0x00
