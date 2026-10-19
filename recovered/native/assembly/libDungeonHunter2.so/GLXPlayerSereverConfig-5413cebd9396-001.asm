; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0082dffc, declared_size=32, range_size=32, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig6GetGgiEv
; demangled: GLXPlayerSereverConfig::GetGgi()
; decoder-mode: arm
0082dffc  10 30 9f e5                                      ldr r3, [pc, #0x10]
0082e000  10 20 9f e5                                      ldr r2, [pc, #0x10]
0082e004  03 30 8f e0                                      add r3, pc, r3
0082e008  02 20 93 e7                                      ldr r2, [r3, r2]
0082e00c  00 00 92 e5                                      ldr r0, [r2]
0082e010  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0082e014  8c 6a 16 00 6c 13 00 00                          .byte 0x8c, 0x6a, 0x16, 0x00, 0x6c, 0x13, 0x00, 0x00

; FUNCTION 0x0082e01c, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig14GetGameVersionEv
; demangled: GLXPlayerSereverConfig::GetGameVersion()
; decoder-mode: arm
0082e01c  0c 30 9f e5                                      ldr r3, [pc, #0xc]
0082e020  0c 20 9f e5                                      ldr r2, [pc, #0xc]
0082e024  03 30 8f e0                                      add r3, pc, r3
0082e028  02 00 93 e7                                      ldr r0, [r3, r2]
0082e02c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0082e030  6c 6a 16 00 24 2c 00 00                          .byte 0x6c, 0x6a, 0x16, 0x00, 0x24, 0x2c, 0x00, 0x00

; FUNCTION 0x0082e038, declared_size=76, range_size=76, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig11isOutOfDateEi
; demangled: GLXPlayerSereverConfig::isOutOfDate(int)
; decoder-mode: arm
0082e038  04 40 2d e5                                      str r4, [sp, #-4]!
0082e03c  40 30 90 e5                                      ldr r3, [r0, #0x40]
0082e040  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082e044  00 c0 93 e5                                      ldr ip, [r3]
0082e048  00 40 92 e5                                      ldr r4, [r2]
0082e04c  0c 00 54 e1                                      cmp r4, ip
0082e050  01 00 a0 b3                                      movlt r0, #1
0082e054  01 00 00 ba                                      blt #0x82e060
0082e058  00 00 a0 13                                      movne r0, #0
0082e05c  01 00 00 0a                                      beq #0x82e068
0082e060  10 00 bd e8                                      ldm sp!, {r4}
0082e064  1e ff 2f e1                                      bx lr
0082e068  04 20 92 e5                                      ldr r2, [r2, #4]
0082e06c  04 00 93 e5                                      ldr r0, [r3, #4]
0082e070  02 10 81 e0                                      add r1, r1, r2
0082e074  01 00 50 e1                                      cmp r0, r1
0082e078  00 00 a0 d3                                      movle r0, #0
0082e07c  01 00 a0 c3                                      movgt r0, #1
0082e080  f6 ff ff ea                                      b #0x82e060

; FUNCTION 0x0082e084, declared_size=56, range_size=56, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig14GetCurTimeDateEP8GameDate
; demangled: GLXPlayerSereverConfig::GetCurTimeDate(GameDate*)
; decoder-mode: arm
0082e084  30 40 2d e9                                      push {r4, r5, lr}
0082e088  34 d0 4d e2                                      sub sp, sp, #0x34
0082e08c  2c 50 8d e2                                      add r5, sp, #0x2c
0082e090  05 00 a0 e1                                      mov r0, r5
0082e094  01 40 a0 e1                                      mov r4, r1
0082e098  38 81 eb eb                                      bl #0x30e580
0082e09c  05 00 a0 e1                                      mov r0, r5
0082e0a0  0d 10 a0 e1                                      mov r1, sp
0082e0a4  f2 81 eb eb                                      bl #0x30e874
0082e0a8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0082e0ac  14 20 9d e5                                      ldr r2, [sp, #0x14]
0082e0b0  0c 00 84 e8                                      stm r4, {r2, r3}
0082e0b4  34 d0 8d e2                                      add sp, sp, #0x34
0082e0b8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0082e0bc, declared_size=760, range_size=760, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig16SaveServerConfigEv
; demangled: GLXPlayerSereverConfig::SaveServerConfig()
; decoder-mode: arm
0082e0bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0082e0c0  bc a2 9f e5                                      ldr sl, [pc, #0x2bc]
0082e0c4  bc 92 9f e5                                      ldr sb, [pc, #0x2bc]
0082e0c8  bc 52 9f e5                                      ldr r5, [pc, #0x2bc]
0082e0cc  0a a0 8f e0                                      add sl, pc, sl
0082e0d0  09 30 9a e7                                      ldr r3, [sl, sb]
0082e0d4  b4 12 9f e5                                      ldr r1, [pc, #0x2b4]
0082e0d8  05 50 8f e0                                      add r5, pc, r5
0082e0dc  00 30 93 e5                                      ldr r3, [r3]
0082e0e0  12 de 4d e2                                      sub sp, sp, #0x120
0082e0e4  00 40 a0 e1                                      mov r4, r0
0082e0e8  01 10 8f e0                                      add r1, pc, r1
0082e0ec  05 00 a0 e1                                      mov r0, r5
0082e0f0  1c 31 8d e5                                      str r3, [sp, #0x11c]
0082e0f4  46 f4 ff eb                                      bl #0x82b214
0082e0f8  00 60 50 e2                                      subs r6, r0, #0
0082e0fc  99 00 00 0a                                      beq #0x82e368
0082e100  1c 50 8d e2                                      add r5, sp, #0x1c
0082e104  05 00 a0 e1                                      mov r0, r5
0082e108  00 10 a0 e3                                      mov r1, #0
0082e10c  ff 20 a0 e3                                      mov r2, #0xff
0082e110  93 f4 ff eb                                      bl #0x82b364
0082e114  78 22 9f e5                                      ldr r2, [pc, #0x278]
0082e118  78 32 9f e5                                      ldr r3, [pc, #0x278]
0082e11c  08 00 94 e5                                      ldr r0, [r4, #8]
0082e120  40 10 94 e5                                      ldr r1, [r4, #0x40]
0082e124  02 20 8f e0                                      add r2, pc, r2
0082e128  03 30 8f e0                                      add r3, pc, r3
0082e12c  00 20 8d e5                                      str r2, [sp]
0082e130  09 00 8d e9                                      stmib sp, {r0, r3}
0082e134  00 30 91 e5                                      ldr r3, [r1]
0082e138  5c 22 9f e5                                      ldr r2, [pc, #0x25c]
0082e13c  05 00 a0 e1                                      mov r0, r5
0082e140  0c 30 8d e5                                      str r3, [sp, #0xc]
0082e144  04 c0 91 e5                                      ldr ip, [r1, #4]
0082e148  50 32 9f e5                                      ldr r3, [pc, #0x250]
0082e14c  50 12 9f e5                                      ldr r1, [pc, #0x250]
0082e150  02 20 8f e0                                      add r2, pc, r2
0082e154  03 30 9a e7                                      ldr r3, [sl, r3]
0082e158  01 10 8f e0                                      add r1, pc, r1
0082e15c  10 c0 8d e5                                      str ip, [sp, #0x10]
0082e160  5f 82 eb eb                                      bl #0x30eae4
0082e164  05 00 a0 e1                                      mov r0, r5
0082e168  8f f3 ff eb                                      bl #0x82afac
0082e16c  06 30 a0 e1                                      mov r3, r6
0082e170  00 20 a0 e1                                      mov r2, r0
0082e174  01 10 a0 e3                                      mov r1, #1
0082e178  05 00 a0 e1                                      mov r0, r5
0082e17c  23 f3 ff eb                                      bl #0x82ae10
0082e180  20 32 9f e5                                      ldr r3, [pc, #0x220]
0082e184  20 82 9f e5                                      ldr r8, [pc, #0x220]
0082e188  03 40 9a e7                                      ldr r4, [sl, r3]
0082e18c  08 80 8f e0                                      add r8, pc, r8
0082e190  04 70 a0 e1                                      mov r7, r4
0082e194  08 30 97 e5                                      ldr r3, [r7, #8]
0082e198  04 00 53 e1                                      cmp r3, r4
0082e19c  42 00 00 0a                                      beq #0x82e2ac
0082e1a0  00 10 a0 e3                                      mov r1, #0
0082e1a4  05 00 a0 e1                                      mov r0, r5
0082e1a8  ff 20 a0 e3                                      mov r2, #0xff
0082e1ac  6c f4 ff eb                                      bl #0x82b364
0082e1b0  00 10 d4 e5                                      ldrb r1, [r4]
0082e1b4  00 00 51 e3                                      cmp r1, #0
0082e1b8  04 00 00 1a                                      bne #0x82e1d0
0082e1bc  04 30 94 e5                                      ldr r3, [r4, #4]
0082e1c0  04 30 93 e5                                      ldr r3, [r3, #4]
0082e1c4  04 00 53 e1                                      cmp r3, r4
0082e1c8  0c 20 94 05                                      ldreq r2, [r4, #0xc]
0082e1cc  07 00 00 0a                                      beq #0x82e1f0
0082e1d0  08 20 94 e5                                      ldr r2, [r4, #8]
0082e1d4  00 00 52 e3                                      cmp r2, #0
0082e1d8  01 00 00 1a                                      bne #0x82e1e4
0082e1dc  3c 00 00 ea                                      b #0x82e2d4
0082e1e0  03 20 a0 e1                                      mov r2, r3
0082e1e4  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0082e1e8  00 00 53 e3                                      cmp r3, #0
0082e1ec  fb ff ff 1a                                      bne #0x82e1e0
0082e1f0  00 00 51 e3                                      cmp r1, #0
0082e1f4  24 20 92 e5                                      ldr r2, [r2, #0x24]
0082e1f8  04 00 00 1a                                      bne #0x82e210
0082e1fc  04 30 94 e5                                      ldr r3, [r4, #4]
0082e200  04 30 93 e5                                      ldr r3, [r3, #4]
0082e204  04 00 53 e1                                      cmp r3, r4
0082e208  0c 30 94 05                                      ldreq r3, [r4, #0xc]
0082e20c  07 00 00 0a                                      beq #0x82e230
0082e210  08 30 94 e5                                      ldr r3, [r4, #8]
0082e214  00 00 53 e3                                      cmp r3, #0
0082e218  01 00 00 1a                                      bne #0x82e224
0082e21c  38 00 00 ea                                      b #0x82e304
0082e220  01 30 a0 e1                                      mov r3, r1
0082e224  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0082e228  00 00 51 e3                                      cmp r1, #0
0082e22c  fb ff ff 1a                                      bne #0x82e220
0082e230  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
0082e234  08 10 a0 e1                                      mov r1, r8
0082e238  05 00 a0 e1                                      mov r0, r5
0082e23c  28 82 eb eb                                      bl #0x30eae4
0082e240  05 00 a0 e1                                      mov r0, r5
0082e244  58 f3 ff eb                                      bl #0x82afac
0082e248  06 30 a0 e1                                      mov r3, r6
0082e24c  00 20 a0 e1                                      mov r2, r0
0082e250  01 10 a0 e3                                      mov r1, #1
0082e254  05 00 a0 e1                                      mov r0, r5
0082e258  ec f2 ff eb                                      bl #0x82ae10
0082e25c  00 30 d4 e5                                      ldrb r3, [r4]
0082e260  00 00 53 e3                                      cmp r3, #0
0082e264  04 00 00 1a                                      bne #0x82e27c
0082e268  04 30 94 e5                                      ldr r3, [r4, #4]
0082e26c  04 30 93 e5                                      ldr r3, [r3, #4]
0082e270  04 00 53 e1                                      cmp r3, r4
0082e274  0c 20 94 05                                      ldreq r2, [r4, #0xc]
0082e278  07 00 00 0a                                      beq #0x82e29c
0082e27c  08 20 94 e5                                      ldr r2, [r4, #8]
0082e280  00 00 52 e3                                      cmp r2, #0
0082e284  01 00 00 1a                                      bne #0x82e290
0082e288  29 00 00 ea                                      b #0x82e334
0082e28c  03 20 a0 e1                                      mov r2, r3
0082e290  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0082e294  00 00 53 e3                                      cmp r3, #0
0082e298  fb ff ff 1a                                      bne #0x82e28c
0082e29c  02 40 a0 e1                                      mov r4, r2
0082e2a0  08 30 97 e5                                      ldr r3, [r7, #8]
0082e2a4  04 00 53 e1                                      cmp r3, r4
0082e2a8  bc ff ff 1a                                      bne #0x82e1a0
0082e2ac  06 00 a0 e1                                      mov r0, r6
0082e2b0  f1 f2 ff eb                                      bl #0x82ae7c
0082e2b4  01 00 a0 e3                                      mov r0, #1
0082e2b8  09 30 9a e7                                      ldr r3, [sl, sb]
0082e2bc  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
0082e2c0  00 30 93 e5                                      ldr r3, [r3]
0082e2c4  03 00 52 e1                                      cmp r2, r3
0082e2c8  2c 00 00 1a                                      bne #0x82e380
0082e2cc  12 de 8d e2                                      add sp, sp, #0x120
0082e2d0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0082e2d4  04 20 94 e5                                      ldr r2, [r4, #4]
0082e2d8  08 30 92 e5                                      ldr r3, [r2, #8]
0082e2dc  03 00 54 e1                                      cmp r4, r3
0082e2e0  01 00 00 0a                                      beq #0x82e2ec
0082e2e4  c1 ff ff ea                                      b #0x82e1f0
0082e2e8  03 20 a0 e1                                      mov r2, r3
0082e2ec  04 30 92 e5                                      ldr r3, [r2, #4]
0082e2f0  08 00 93 e5                                      ldr r0, [r3, #8]
0082e2f4  02 00 50 e1                                      cmp r0, r2
0082e2f8  fa ff ff 0a                                      beq #0x82e2e8
0082e2fc  03 20 a0 e1                                      mov r2, r3
0082e300  ba ff ff ea                                      b #0x82e1f0
0082e304  04 30 94 e5                                      ldr r3, [r4, #4]
0082e308  08 10 93 e5                                      ldr r1, [r3, #8]
0082e30c  01 00 54 e1                                      cmp r4, r1
0082e310  01 00 00 0a                                      beq #0x82e31c
0082e314  c5 ff ff ea                                      b #0x82e230
0082e318  01 30 a0 e1                                      mov r3, r1
0082e31c  04 10 93 e5                                      ldr r1, [r3, #4]
0082e320  08 00 91 e5                                      ldr r0, [r1, #8]
0082e324  03 00 50 e1                                      cmp r0, r3
0082e328  fa ff ff 0a                                      beq #0x82e318
0082e32c  01 30 a0 e1                                      mov r3, r1
0082e330  be ff ff ea                                      b #0x82e230
0082e334  04 20 94 e5                                      ldr r2, [r4, #4]
0082e338  08 30 92 e5                                      ldr r3, [r2, #8]
0082e33c  03 00 54 e1                                      cmp r4, r3
0082e340  01 00 00 0a                                      beq #0x82e34c
0082e344  d4 ff ff ea                                      b #0x82e29c
0082e348  03 20 a0 e1                                      mov r2, r3
0082e34c  04 30 92 e5                                      ldr r3, [r2, #4]
0082e350  08 10 93 e5                                      ldr r1, [r3, #8]
0082e354  02 00 51 e1                                      cmp r1, r2
0082e358  fa ff ff 0a                                      beq #0x82e348
0082e35c  03 20 a0 e1                                      mov r2, r3
0082e360  02 40 a0 e1                                      mov r4, r2
0082e364  cd ff ff ea                                      b #0x82e2a0
0082e368  40 00 9f e5                                      ldr r0, [pc, #0x40]
0082e36c  05 10 a0 e1                                      mov r1, r5
0082e370  00 00 8f e0                                      add r0, pc, r0
0082e374  02 f5 ff eb                                      bl #0x82b784
0082e378  06 00 a0 e1                                      mov r0, r6
0082e37c  cd ff ff ea                                      b #0x82e2b8
0082e380  e2 7f eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082e384  c4 69 16 00 ac 40 00 00 f8 e8 0d 00 b0 0e 0b 00  .byte 0xc4, 0x69, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf8, 0xe8, 0x0d, 0x00, 0xb0, 0x0e, 0x0b, 0x00
0082e394  ec e8 0d 00 b0 b0 0d 00 b8 e8 0d 00 24 2c 00 00  .byte 0xec, 0xe8, 0x0d, 0x00, 0xb0, 0xb0, 0x0d, 0x00, 0xb8, 0xe8, 0x0d, 0x00, 0x24, 0x2c, 0x00, 0x00
0082e3a4  90 e8 0d 00 f8 36 00 00 8c e8 0d 00 38 df 0d 00  .byte 0x90, 0xe8, 0x0d, 0x00, 0xf8, 0x36, 0x00, 0x00, 0x8c, 0xe8, 0x0d, 0x00, 0x38, 0xdf, 0x0d, 0x00

; FUNCTION 0x0082e3b4, declared_size=1016, range_size=1016, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig10LoadConfigEv
; demangled: GLXPlayerSereverConfig::LoadConfig()
; decoder-mode: arm
0082e3b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082e3b8  cc 13 9f e5                                      ldr r1, [pc, #0x3cc]
0082e3bc  cc 23 9f e5                                      ldr r2, [pc, #0x3cc]
0082e3c0  8b df 4d e2                                      sub sp, sp, #0x22c
0082e3c4  01 10 8f e0                                      add r1, pc, r1
0082e3c8  02 30 91 e7                                      ldr r3, [r1, r2]
0082e3cc  c0 43 9f e5                                      ldr r4, [pc, #0x3c0]
0082e3d0  08 10 8d e5                                      str r1, [sp, #8]
0082e3d4  bc 13 9f e5                                      ldr r1, [pc, #0x3bc]
0082e3d8  00 30 93 e5                                      ldr r3, [r3]
0082e3dc  04 40 8f e0                                      add r4, pc, r4
0082e3e0  0c 00 8d e5                                      str r0, [sp, #0xc]
0082e3e4  01 10 8f e0                                      add r1, pc, r1
0082e3e8  04 00 a0 e1                                      mov r0, r4
0082e3ec  24 32 8d e5                                      str r3, [sp, #0x224]
0082e3f0  14 20 8d e5                                      str r2, [sp, #0x14]
0082e3f4  86 f3 ff eb                                      bl #0x82b214
0082e3f8  00 30 50 e2                                      subs r3, r0, #0
0082e3fc  18 30 8d e5                                      str r3, [sp, #0x18]
0082e400  da 00 00 0a                                      beq #0x82e770
0082e404  5b f3 ff eb                                      bl #0x82b178
0082e408  01 90 80 e2                                      add sb, r0, #1
0082e40c  00 40 a0 e1                                      mov r4, r0
0082e410  09 00 a0 e1                                      mov r0, sb
0082e414  2d 7f eb eb                                      bl #0x30e0d0
0082e418  09 20 a0 e1                                      mov r2, sb
0082e41c  00 b0 a0 e1                                      mov fp, r0
0082e420  00 10 a0 e3                                      mov r1, #0
0082e424  ce f3 ff eb                                      bl #0x82b364
0082e428  18 30 9d e5                                      ldr r3, [sp, #0x18]
0082e42c  04 10 a0 e1                                      mov r1, r4
0082e430  01 20 a0 e3                                      mov r2, #1
0082e434  0b 00 a0 e1                                      mov r0, fp
0082e438  6a f3 ff eb                                      bl #0x82b1e8
0082e43c  09 00 a0 e1                                      mov r0, sb
0082e440  22 7f eb eb                                      bl #0x30e0d0
0082e444  09 20 a0 e1                                      mov r2, sb
0082e448  00 50 a0 e1                                      mov r5, r0
0082e44c  00 10 a0 e3                                      mov r1, #0
0082e450  c3 f3 ff eb                                      bl #0x82b364
0082e454  05 10 a0 e1                                      mov r1, r5
0082e458  00 20 a0 e3                                      mov r2, #0
0082e45c  0a 30 a0 e3                                      mov r3, #0xa
0082e460  0b 00 a0 e1                                      mov r0, fp
0082e464  da f1 ff eb                                      bl #0x82abd4
0082e468  05 00 a0 e1                                      mov r0, r5
0082e46c  ce f2 ff eb                                      bl #0x82afac
0082e470  00 c0 50 e2                                      subs ip, r0, #0
0082e474  04 00 00 da                                      ble #0x82e48c
0082e478  01 30 4c e2                                      sub r3, ip, #1
0082e47c  d3 20 95 e1                                      ldrsb r2, [r5, r3]
0082e480  0d 00 52 e3                                      cmp r2, #0xd
0082e484  00 20 a0 03                                      moveq r2, #0
0082e488  03 20 c5 07                                      strbeq r2, [r5, r3]
0082e48c  49 8f 8d e2                                      add r8, sp, #0x124
0082e490  24 60 8d e2                                      add r6, sp, #0x24
0082e494  00 10 a0 e3                                      mov r1, #0
0082e498  01 2c a0 e3                                      mov r2, #0x100
0082e49c  08 00 a0 e1                                      mov r0, r8
0082e4a0  04 c0 8d e5                                      str ip, [sp, #4]
0082e4a4  ed 7f eb eb                                      bl #0x30e460
0082e4a8  00 10 a0 e3                                      mov r1, #0
0082e4ac  01 2c a0 e3                                      mov r2, #0x100
0082e4b0  06 00 a0 e1                                      mov r0, r6
0082e4b4  e9 7f eb eb                                      bl #0x30e460
0082e4b8  dc 02 9f e5                                      ldr r0, [pc, #0x2dc]
0082e4bc  00 00 8f e0                                      add r0, pc, r0
0082e4c0  36 f5 ff eb                                      bl #0x82b9a0
0082e4c4  0c e0 9d e5                                      ldr lr, [sp, #0xc]
0082e4c8  00 10 a0 e3                                      mov r1, #0
0082e4cc  01 2c a0 e3                                      mov r2, #0x100
0082e4d0  1c 00 8e e5                                      str r0, [lr, #0x1c]
0082e4d4  08 00 a0 e1                                      mov r0, r8
0082e4d8  a1 f3 ff eb                                      bl #0x82b364
0082e4dc  06 00 a0 e1                                      mov r0, r6
0082e4e0  00 10 a0 e3                                      mov r1, #0
0082e4e4  01 2c a0 e3                                      mov r2, #0x100
0082e4e8  9d f3 ff eb                                      bl #0x82b364
0082e4ec  0c e0 9d e5                                      ldr lr, [sp, #0xc]
0082e4f0  2f 30 a0 e3                                      mov r3, #0x2f
0082e4f4  08 10 a0 e1                                      mov r1, r8
0082e4f8  1c 00 9e e5                                      ldr r0, [lr, #0x1c]
0082e4fc  02 20 a0 e3                                      mov r2, #2
0082e500  b3 f1 ff eb                                      bl #0x82abd4
0082e504  01 2c a0 e3                                      mov r2, #0x100
0082e508  00 40 a0 e1                                      mov r4, r0
0082e50c  00 10 a0 e3                                      mov r1, #0
0082e510  08 00 a0 e1                                      mov r0, r8
0082e514  92 f3 ff eb                                      bl #0x82b364
0082e518  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0082e51c  1c 70 91 e5                                      ldr r7, [r1, #0x1c]
0082e520  07 00 a0 e1                                      mov r0, r7
0082e524  a0 f2 ff eb                                      bl #0x82afac
0082e528  04 10 87 e0                                      add r1, r7, r4
0082e52c  00 20 64 e0                                      rsb r2, r4, r0
0082e530  08 00 a0 e1                                      mov r0, r8
0082e534  85 f3 ff eb                                      bl #0x82b350
0082e538  2f 30 a0 e3                                      mov r3, #0x2f
0082e53c  06 10 a0 e1                                      mov r1, r6
0082e540  00 20 a0 e3                                      mov r2, #0
0082e544  08 00 a0 e1                                      mov r0, r8
0082e548  a1 f1 ff eb                                      bl #0x82abd4
0082e54c  08 00 a0 e1                                      mov r0, r8
0082e550  95 f2 ff eb                                      bl #0x82afac
0082e554  00 a0 a0 e1                                      mov sl, r0
0082e558  06 00 a0 e1                                      mov r0, r6
0082e55c  92 f2 ff eb                                      bl #0x82afac
0082e560  01 40 80 e2                                      add r4, r0, #1
0082e564  00 70 a0 e1                                      mov r7, r0
0082e568  04 00 a0 e1                                      mov r0, r4
0082e56c  d7 7e eb eb                                      bl #0x30e0d0
0082e570  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0082e574  00 10 a0 e3                                      mov r1, #0
0082e578  0a a0 67 e0                                      rsb sl, r7, sl
0082e57c  10 00 82 e5                                      str r0, [r2, #0x10]
0082e580  04 20 a0 e1                                      mov r2, r4
0082e584  76 f3 ff eb                                      bl #0x82b364
0082e588  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0082e58c  06 10 a0 e1                                      mov r1, r6
0082e590  07 20 a0 e1                                      mov r2, r7
0082e594  10 00 93 e5                                      ldr r0, [r3, #0x10]
0082e598  01 40 8a e2                                      add r4, sl, #1
0082e59c  6b f3 ff eb                                      bl #0x82b350
0082e5a0  04 00 a0 e1                                      mov r0, r4
0082e5a4  c9 7e eb eb                                      bl #0x30e0d0
0082e5a8  0c e0 9d e5                                      ldr lr, [sp, #0xc]
0082e5ac  04 20 a0 e1                                      mov r2, r4
0082e5b0  00 10 a0 e3                                      mov r1, #0
0082e5b4  14 00 8e e5                                      str r0, [lr, #0x14]
0082e5b8  69 f3 ff eb                                      bl #0x82b364
0082e5bc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0082e5c0  07 10 88 e0                                      add r1, r8, r7
0082e5c4  0a 20 a0 e1                                      mov r2, sl
0082e5c8  14 00 93 e5                                      ldr r0, [r3, #0x14]
0082e5cc  5f f3 ff eb                                      bl #0x82b350
0082e5d0  04 c0 9d e5                                      ldr ip, [sp, #4]
0082e5d4  00 00 5c e3                                      cmp ip, #0
0082e5d8  50 00 00 da                                      ble #0x82e720
0082e5dc  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
0082e5e0  bc e1 9f e5                                      ldr lr, [pc, #0x1bc]
0082e5e4  01 a0 a0 e3                                      mov sl, #1
0082e5e8  03 30 8f e0                                      add r3, pc, r3
0082e5ec  1c e0 8d e5                                      str lr, [sp, #0x1c]
0082e5f0  10 30 8d e5                                      str r3, [sp, #0x10]
0082e5f4  00 40 a0 e3                                      mov r4, #0
0082e5f8  08 70 a0 e1                                      mov r7, r8
0082e5fc  08 30 a0 e1                                      mov r3, r8
0082e600  04 40 83 e4                                      str r4, [r3], #4
0082e604  04 30 83 e2                                      add r3, r3, #4
0082e608  04 40 83 e4                                      str r4, [r3], #4
0082e60c  04 40 83 e4                                      str r4, [r3], #4
0082e610  04 40 83 e4                                      str r4, [r3], #4
0082e614  04 40 83 e4                                      str r4, [r3], #4
0082e618  04 40 83 e4                                      str r4, [r3], #4
0082e61c  04 40 88 e5                                      str r4, [r8, #4]
0082e620  00 40 83 e5                                      str r4, [r3]
0082e624  04 10 a0 e1                                      mov r1, r4
0082e628  01 2c a0 e3                                      mov r2, #0x100
0082e62c  06 00 a0 e1                                      mov r0, r6
0082e630  8a 7f eb eb                                      bl #0x30e460
0082e634  04 20 a0 e1                                      mov r2, r4
0082e638  3a 30 a0 e3                                      mov r3, #0x3a
0082e63c  07 10 a0 e1                                      mov r1, r7
0082e640  05 00 a0 e1                                      mov r0, r5
0082e644  62 f1 ff eb                                      bl #0x82abd4
0082e648  3a 30 a0 e3                                      mov r3, #0x3a
0082e64c  06 10 a0 e1                                      mov r1, r6
0082e650  01 20 a0 e3                                      mov r2, #1
0082e654  05 00 a0 e1                                      mov r0, r5
0082e658  5d f1 ff eb                                      bl #0x82abd4
0082e65c  04 10 a0 e1                                      mov r1, r4
0082e660  00 80 a0 e1                                      mov r8, r0
0082e664  01 2c a0 e3                                      mov r2, #0x100
0082e668  06 00 a0 e1                                      mov r0, r6
0082e66c  3c f3 ff eb                                      bl #0x82b364
0082e670  05 00 a0 e1                                      mov r0, r5
0082e674  4c f2 ff eb                                      bl #0x82afac
0082e678  08 10 85 e0                                      add r1, r5, r8
0082e67c  00 20 68 e0                                      rsb r2, r8, r0
0082e680  06 00 a0 e1                                      mov r0, r6
0082e684  31 f3 ff eb                                      bl #0x82b350
0082e688  07 00 a0 e1                                      mov r0, r7
0082e68c  60 f2 ff eb                                      bl #0x82b014
0082e690  06 00 a0 e1                                      mov r0, r6
0082e694  5e f2 ff eb                                      bl #0x82b014
0082e698  07 00 a0 e1                                      mov r0, r7
0082e69c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0082e6a0  29 f3 ff eb                                      bl #0x82b34c
0082e6a4  00 00 50 e3                                      cmp r0, #0
0082e6a8  07 80 a0 e1                                      mov r8, r7
0082e6ac  12 00 00 0a                                      beq #0x82e6fc
0082e6b0  05 00 a0 e1                                      mov r0, r5
0082e6b4  00 10 a0 e3                                      mov r1, #0
0082e6b8  09 20 a0 e1                                      mov r2, sb
0082e6bc  28 f3 ff eb                                      bl #0x82b364
0082e6c0  05 10 a0 e1                                      mov r1, r5
0082e6c4  0a 20 a0 e1                                      mov r2, sl
0082e6c8  0a 30 a0 e3                                      mov r3, #0xa
0082e6cc  0b 00 a0 e1                                      mov r0, fp
0082e6d0  3f f1 ff eb                                      bl #0x82abd4
0082e6d4  05 00 a0 e1                                      mov r0, r5
0082e6d8  33 f2 ff eb                                      bl #0x82afac
0082e6dc  00 00 50 e3                                      cmp r0, #0
0082e6e0  0e 00 00 da                                      ble #0x82e720
0082e6e4  01 00 40 e2                                      sub r0, r0, #1
0082e6e8  d0 30 95 e1                                      ldrsb r3, [r5, r0]
0082e6ec  01 a0 8a e2                                      add sl, sl, #1
0082e6f0  0d 00 53 e3                                      cmp r3, #0xd
0082e6f4  00 40 c5 07                                      strbeq r4, [r5, r0]
0082e6f8  bf ff ff ea                                      b #0x82e5fc
0082e6fc  06 00 a0 e1                                      mov r0, r6
0082e700  06 f3 ff eb                                      bl #0x82b320
0082e704  08 20 9d e5                                      ldr r2, [sp, #8]
0082e708  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0082e70c  0c e0 9d e5                                      ldr lr, [sp, #0xc]
0082e710  01 30 92 e7                                      ldr r3, [r2, r1]
0082e714  08 00 8e e5                                      str r0, [lr, #8]
0082e718  00 00 83 e5                                      str r0, [r3]
0082e71c  e3 ff ff ea                                      b #0x82e6b0
0082e720  00 00 55 e3                                      cmp r5, #0
0082e724  01 00 00 0a                                      beq #0x82e730
0082e728  05 00 a0 e1                                      mov r0, r5
0082e72c  df 7e eb eb                                      bl #0x30e2b0
0082e730  00 00 5b e3                                      cmp fp, #0
0082e734  01 00 00 0a                                      beq #0x82e740
0082e738  0b 00 a0 e1                                      mov r0, fp
0082e73c  db 7e eb eb                                      bl #0x30e2b0
0082e740  18 00 9d e5                                      ldr r0, [sp, #0x18]
0082e744  cc f1 ff eb                                      bl #0x82ae7c
0082e748  01 00 a0 e3                                      mov r0, #1
0082e74c  08 20 9d e5                                      ldr r2, [sp, #8]
0082e750  14 10 9d e5                                      ldr r1, [sp, #0x14]
0082e754  01 30 92 e7                                      ldr r3, [r2, r1]
0082e758  24 22 9d e5                                      ldr r2, [sp, #0x224]
0082e75c  00 30 93 e5                                      ldr r3, [r3]
0082e760  03 00 52 e1                                      cmp r2, r3
0082e764  07 00 00 1a                                      bne #0x82e788
0082e768  8b df 8d e2                                      add sp, sp, #0x22c
0082e76c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082e770  30 00 9f e5                                      ldr r0, [pc, #0x30]
0082e774  04 10 a0 e1                                      mov r1, r4
0082e778  00 00 8f e0                                      add r0, pc, r0
0082e77c  00 f4 ff eb                                      bl #0x82b784
0082e780  18 00 9d e5                                      ldr r0, [sp, #0x18]
0082e784  f0 ff ff ea                                      b #0x82e74c
0082e788  e0 7e eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082e78c  cc 66 16 00 ac 40 00 00 4c e6 0d 00 44 03 0b 00  .byte 0xcc, 0x66, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0xe6, 0x0d, 0x00, 0x44, 0x03, 0x0b, 0x00
0082e79c  b4 e5 0d 00 28 e4 0d 00 6c 13 00 00 c0 e2 0d 00  .byte 0xb4, 0xe5, 0x0d, 0x00, 0x28, 0xe4, 0x0d, 0x00, 0x6c, 0x13, 0x00, 0x00, 0xc0, 0xe2, 0x0d, 0x00

; FUNCTION 0x0082e7ac, declared_size=104, range_size=104, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfigD1Ev
; demangled: GLXPlayerSereverConfig::~GLXPlayerSereverConfig()
; decoder-mode: arm
0082e7ac  10 40 2d e9                                      push {r4, lr}
0082e7b0  54 30 9f e5                                      ldr r3, [pc, #0x54]
0082e7b4  54 20 9f e5                                      ldr r2, [pc, #0x54]
0082e7b8  00 40 a0 e1                                      mov r4, r0
0082e7bc  03 30 8f e0                                      add r3, pc, r3
0082e7c0  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
0082e7c4  02 20 93 e7                                      ldr r2, [r3, r2]
0082e7c8  00 00 50 e3                                      cmp r0, #0
0082e7cc  08 20 82 e2                                      add r2, r2, #8
0082e7d0  00 20 84 e5                                      str r2, [r4]
0082e7d4  02 00 00 0a                                      beq #0x82e7e4
0082e7d8  b4 7e eb eb                                      bl #0x30e2b0
0082e7dc  00 30 a0 e3                                      mov r3, #0
0082e7e0  3c 30 84 e5                                      str r3, [r4, #0x3c]
0082e7e4  40 00 94 e5                                      ldr r0, [r4, #0x40]
0082e7e8  00 00 50 e3                                      cmp r0, #0
0082e7ec  02 00 00 0a                                      beq #0x82e7fc
0082e7f0  ae 7e eb eb                                      bl #0x30e2b0
0082e7f4  00 30 a0 e3                                      mov r3, #0
0082e7f8  40 30 84 e5                                      str r3, [r4, #0x40]
0082e7fc  04 00 a0 e1                                      mov r0, r4
0082e800  fe 0d 00 eb                                      bl #0x832000
0082e804  04 00 a0 e1                                      mov r0, r4
0082e808  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0082e80c  d4 62 16 00 64 30 00 00                          .byte 0xd4, 0x62, 0x16, 0x00, 0x64, 0x30, 0x00, 0x00

; FUNCTION 0x0082e814, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfigD0Ev
; demangled: GLXPlayerSereverConfig::~GLXPlayerSereverConfig()
; decoder-mode: arm
0082e814  10 40 2d e9                                      push {r4, lr}
0082e818  00 40 a0 e1                                      mov r4, r0
0082e81c  e2 ff ff eb                                      bl #0x82e7ac
0082e820  04 00 a0 e1                                      mov r0, r4
0082e824  a1 7e eb eb                                      bl #0x30e2b0
0082e828  04 00 a0 e1                                      mov r0, r4
0082e82c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082e830, declared_size=104, range_size=104, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfigD2Ev
; demangled: GLXPlayerSereverConfig::~GLXPlayerSereverConfig()
; decoder-mode: arm
0082e830  10 40 2d e9                                      push {r4, lr}
0082e834  54 30 9f e5                                      ldr r3, [pc, #0x54]
0082e838  54 20 9f e5                                      ldr r2, [pc, #0x54]
0082e83c  00 40 a0 e1                                      mov r4, r0
0082e840  03 30 8f e0                                      add r3, pc, r3
0082e844  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
0082e848  02 20 93 e7                                      ldr r2, [r3, r2]
0082e84c  00 00 50 e3                                      cmp r0, #0
0082e850  08 20 82 e2                                      add r2, r2, #8
0082e854  00 20 84 e5                                      str r2, [r4]
0082e858  02 00 00 0a                                      beq #0x82e868
0082e85c  93 7e eb eb                                      bl #0x30e2b0
0082e860  00 30 a0 e3                                      mov r3, #0
0082e864  3c 30 84 e5                                      str r3, [r4, #0x3c]
0082e868  40 00 94 e5                                      ldr r0, [r4, #0x40]
0082e86c  00 00 50 e3                                      cmp r0, #0
0082e870  02 00 00 0a                                      beq #0x82e880
0082e874  8d 7e eb eb                                      bl #0x30e2b0
0082e878  00 30 a0 e3                                      mov r3, #0
0082e87c  40 30 84 e5                                      str r3, [r4, #0x40]
0082e880  04 00 a0 e1                                      mov r0, r4
0082e884  dd 0d 00 eb                                      bl #0x832000
0082e888  04 00 a0 e1                                      mov r0, r4
0082e88c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0082e890  50 62 16 00 64 30 00 00                          .byte 0x50, 0x62, 0x16, 0x00, 0x64, 0x30, 0x00, 0x00

; FUNCTION 0x0082e898, declared_size=180, range_size=180, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfigC1EPKc
; demangled: GLXPlayerSereverConfig::GLXPlayerSereverConfig(char const*)
; decoder-mode: arm
0082e898  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082e89c  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
0082e8a0  01 60 a0 e1                                      mov r6, r1
0082e8a4  00 40 a0 e1                                      mov r4, r0
0082e8a8  21 0e 00 eb                                      bl #0x832134
0082e8ac  90 30 9f e5                                      ldr r3, [pc, #0x90]
0082e8b0  90 20 9f e5                                      ldr r2, [pc, #0x90]
0082e8b4  05 50 8f e0                                      add r5, pc, r5
0082e8b8  03 30 95 e7                                      ldr r3, [r5, r3]
0082e8bc  02 70 95 e7                                      ldr r7, [r5, r2]
0082e8c0  00 10 a0 e3                                      mov r1, #0
0082e8c4  08 30 83 e2                                      add r3, r3, #8
0082e8c8  00 30 84 e5                                      str r3, [r4]
0082e8cc  07 00 a0 e1                                      mov r0, r7
0082e8d0  32 20 a0 e3                                      mov r2, #0x32
0082e8d4  a2 f2 ff eb                                      bl #0x82b364
0082e8d8  00 00 56 e3                                      cmp r6, #0
0082e8dc  02 00 00 0a                                      beq #0x82e8ec
0082e8e0  07 00 a0 e1                                      mov r0, r7
0082e8e4  06 10 a0 e1                                      mov r1, r6
0082e8e8  94 f2 ff eb                                      bl #0x82b340
0082e8ec  08 00 a0 e3                                      mov r0, #8
0082e8f0  e5 7f eb eb                                      bl #0x30e88c
0082e8f4  3c 00 84 e5                                      str r0, [r4, #0x3c]
0082e8f8  08 00 a0 e3                                      mov r0, #8
0082e8fc  e2 7f eb eb                                      bl #0x30e88c
0082e900  00 10 a0 e1                                      mov r1, r0
0082e904  40 00 84 e5                                      str r0, [r4, #0x40]
0082e908  04 00 a0 e1                                      mov r0, r4
0082e90c  dc fd ff eb                                      bl #0x82e084
0082e910  04 00 a0 e1                                      mov r0, r4
0082e914  a6 fe ff eb                                      bl #0x82e3b4
0082e918  28 04 00 e3                                      movw r0, #0x428
0082e91c  da 7f eb eb                                      bl #0x30e88c
0082e920  10 10 94 e5                                      ldr r1, [r4, #0x10]
0082e924  00 50 a0 e1                                      mov r5, r0
0082e928  18 20 94 e5                                      ldr r2, [r4, #0x18]
0082e92c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0082e930  5d fd ff eb                                      bl #0x82deac
0082e934  20 50 84 e5                                      str r5, [r4, #0x20]
0082e938  04 00 a0 e1                                      mov r0, r4
0082e93c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0082e940  dc 61 16 00 64 30 00 00 24 2c 00 00              .byte 0xdc, 0x61, 0x16, 0x00, 0x64, 0x30, 0x00, 0x00, 0x24, 0x2c, 0x00, 0x00

; FUNCTION 0x0082e94c, declared_size=180, range_size=180, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfigC2EPKc
; demangled: GLXPlayerSereverConfig::GLXPlayerSereverConfig(char const*)
; decoder-mode: arm
0082e94c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082e950  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
0082e954  01 60 a0 e1                                      mov r6, r1
0082e958  00 40 a0 e1                                      mov r4, r0
0082e95c  f4 0d 00 eb                                      bl #0x832134
0082e960  90 30 9f e5                                      ldr r3, [pc, #0x90]
0082e964  90 20 9f e5                                      ldr r2, [pc, #0x90]
0082e968  05 50 8f e0                                      add r5, pc, r5
0082e96c  03 30 95 e7                                      ldr r3, [r5, r3]
0082e970  02 70 95 e7                                      ldr r7, [r5, r2]
0082e974  00 10 a0 e3                                      mov r1, #0
0082e978  08 30 83 e2                                      add r3, r3, #8
0082e97c  00 30 84 e5                                      str r3, [r4]
0082e980  07 00 a0 e1                                      mov r0, r7
0082e984  32 20 a0 e3                                      mov r2, #0x32
0082e988  75 f2 ff eb                                      bl #0x82b364
0082e98c  00 00 56 e3                                      cmp r6, #0
0082e990  02 00 00 0a                                      beq #0x82e9a0
0082e994  07 00 a0 e1                                      mov r0, r7
0082e998  06 10 a0 e1                                      mov r1, r6
0082e99c  67 f2 ff eb                                      bl #0x82b340
0082e9a0  08 00 a0 e3                                      mov r0, #8
0082e9a4  b8 7f eb eb                                      bl #0x30e88c
0082e9a8  3c 00 84 e5                                      str r0, [r4, #0x3c]
0082e9ac  08 00 a0 e3                                      mov r0, #8
0082e9b0  b5 7f eb eb                                      bl #0x30e88c
0082e9b4  00 10 a0 e1                                      mov r1, r0
0082e9b8  40 00 84 e5                                      str r0, [r4, #0x40]
0082e9bc  04 00 a0 e1                                      mov r0, r4
0082e9c0  af fd ff eb                                      bl #0x82e084
0082e9c4  04 00 a0 e1                                      mov r0, r4
0082e9c8  79 fe ff eb                                      bl #0x82e3b4
0082e9cc  28 04 00 e3                                      movw r0, #0x428
0082e9d0  ad 7f eb eb                                      bl #0x30e88c
0082e9d4  10 10 94 e5                                      ldr r1, [r4, #0x10]
0082e9d8  00 50 a0 e1                                      mov r5, r0
0082e9dc  18 20 94 e5                                      ldr r2, [r4, #0x18]
0082e9e0  14 30 94 e5                                      ldr r3, [r4, #0x14]
0082e9e4  30 fd ff eb                                      bl #0x82deac
0082e9e8  20 50 84 e5                                      str r5, [r4, #0x20]
0082e9ec  04 00 a0 e1                                      mov r0, r4
0082e9f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0082e9f4  28 61 16 00 64 30 00 00 24 2c 00 00              .byte 0x28, 0x61, 0x16, 0x00, 0x64, 0x30, 0x00, 0x00, 0x24, 0x2c, 0x00, 0x00

; FUNCTION 0x0082eaac, declared_size=592, range_size=592, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig19SendGetServerConfigERi
; demangled: GLXPlayerSereverConfig::SendGetServerConfig(int&)
; decoder-mode: arm
0082eaac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0082eab0  10 42 9f e5                                      ldr r4, [pc, #0x210]
0082eab4  10 62 9f e5                                      ldr r6, [pc, #0x210]
0082eab8  08 30 90 e5                                      ldr r3, [r0, #8]
0082eabc  04 40 8f e0                                      add r4, pc, r4
0082eac0  06 20 94 e7                                      ldr r2, [r4, r6]
0082eac4  02 da 4d e2                                      sub sp, sp, #0x2000
0082eac8  18 d0 4d e2                                      sub sp, sp, #0x18
0082eacc  00 20 92 e5                                      ldr r2, [r2]
0082ead0  01 90 a0 e1                                      mov sb, r1
0082ead4  00 00 53 e3                                      cmp r3, #0
0082ead8  02 1a 8d e2                                      add r1, sp, #0x2000
0082eadc  00 50 a0 e1                                      mov r5, r0
0082eae0  14 20 81 e5                                      str r2, [r1, #0x14]
0082eae4  11 00 00 1a                                      bne #0x82eb30
0082eae8  e0 11 9f e5                                      ldr r1, [pc, #0x1e0]
0082eaec  e0 21 9f e5                                      ldr r2, [pc, #0x1e0]
0082eaf0  04 00 a0 e3                                      mov r0, #4
0082eaf4  01 10 8f e0                                      add r1, pc, r1
0082eaf8  02 20 8f e0                                      add r2, pc, r2
0082eafc  de 7e eb eb                                      bl #0x30e67c
0082eb00  00 30 e0 e3                                      mvn r3, #0
0082eb04  00 30 89 e5                                      str r3, [sb]
0082eb08  00 00 a0 e3                                      mov r0, #0
0082eb0c  06 30 94 e7                                      ldr r3, [r4, r6]
0082eb10  02 1a 8d e2                                      add r1, sp, #0x2000
0082eb14  14 20 91 e5                                      ldr r2, [r1, #0x14]
0082eb18  00 30 93 e5                                      ldr r3, [r3]
0082eb1c  03 00 52 e1                                      cmp r2, r3
0082eb20  67 00 00 1a                                      bne #0x82ecc4
0082eb24  18 d0 8d e2                                      add sp, sp, #0x18
0082eb28  02 da 8d e2                                      add sp, sp, #0x2000
0082eb2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0082eb30  a0 81 9f e5                                      ldr r8, [pc, #0x1a0]
0082eb34  08 00 94 e7                                      ldr r0, [r4, r8]
0082eb38  1b f1 ff eb                                      bl #0x82afac
0082eb3c  00 00 50 e3                                      cmp r0, #0
0082eb40  e8 ff ff 0a                                      beq #0x82eae8
0082eb44  90 31 9f e5                                      ldr r3, [pc, #0x190]
0082eb48  03 30 94 e7                                      ldr r3, [r4, r3]
0082eb4c  00 a0 d3 e5                                      ldrb sl, [r3]
0082eb50  00 00 5a e3                                      cmp sl, #0
0082eb54  51 00 00 1a                                      bne #0x82eca0
0082eb58  80 31 9f e5                                      ldr r3, [pc, #0x180]
0082eb5c  03 70 94 e7                                      ldr r7, [r4, r3]
0082eb60  10 30 97 e5                                      ldr r3, [r7, #0x10]
0082eb64  00 00 53 e3                                      cmp r3, #0
0082eb68  44 00 00 1a                                      bne #0x82ec80
0082eb6c  01 7a 8d e2                                      add r7, sp, #0x1000
0082eb70  18 70 87 e2                                      add r7, r7, #0x18
0082eb74  0c 70 47 e2                                      sub r7, r7, #0xc
0082eb78  07 00 a0 e1                                      mov r0, r7
0082eb7c  00 10 a0 e3                                      mov r1, #0
0082eb80  01 2a a0 e3                                      mov r2, #0x1000
0082eb84  f6 f1 ff eb                                      bl #0x82b364
0082eb88  54 11 9f e5                                      ldr r1, [pc, #0x154]
0082eb8c  08 c0 94 e7                                      ldr ip, [r4, r8]
0082eb90  08 30 95 e5                                      ldr r3, [r5, #8]
0082eb94  01 20 a0 e3                                      mov r2, #1
0082eb98  01 10 8f e0                                      add r1, pc, r1
0082eb9c  07 00 a0 e1                                      mov r0, r7
0082eba0  00 c0 8d e5                                      str ip, [sp]
0082eba4  ce 7f eb eb                                      bl #0x30eae4
0082eba8  38 01 9f e5                                      ldr r0, [pc, #0x138]
0082ebac  07 10 a0 e1                                      mov r1, r7
0082ebb0  18 80 8d e2                                      add r8, sp, #0x18
0082ebb4  00 00 8f e0                                      add r0, pc, r0
0082ebb8  f1 f2 ff eb                                      bl #0x82b784
0082ebbc  01 30 a0 e3                                      mov r3, #1
0082ebc0  2c 30 c5 e5                                      strb r3, [r5, #0x2c]
0082ebc4  07 00 a0 e1                                      mov r0, r7
0082ebc8  7e f2 ff eb                                      bl #0x82b5c8
0082ebcc  0c 80 48 e2                                      sub r8, r8, #0xc
0082ebd0  00 a0 a0 e1                                      mov sl, r0
0082ebd4  00 10 a0 e3                                      mov r1, #0
0082ebd8  08 00 a0 e1                                      mov r0, r8
0082ebdc  01 2a a0 e3                                      mov r2, #0x1000
0082ebe0  df f1 ff eb                                      bl #0x82b364
0082ebe4  00 11 9f e5                                      ldr r1, [pc, #0x100]
0082ebe8  08 00 a0 e1                                      mov r0, r8
0082ebec  0a 20 a0 e1                                      mov r2, sl
0082ebf0  01 10 8f e0                                      add r1, pc, r1
0082ebf4  ba 7f eb eb                                      bl #0x30eae4
0082ebf8  00 00 5a e3                                      cmp sl, #0
0082ebfc  01 00 00 0a                                      beq #0x82ec08
0082ec00  0a 00 a0 e1                                      mov r0, sl
0082ec04  a9 7d eb eb                                      bl #0x30e2b0
0082ec08  02 aa 8d e2                                      add sl, sp, #0x2000
0082ec0c  02 ca 8d e2                                      add ip, sp, #0x2000
0082ec10  0c a0 8a e2                                      add sl, sl, #0xc
0082ec14  07 00 a0 e1                                      mov r0, r7
0082ec18  00 70 a0 e3                                      mov r7, #0
0082ec1c  01 20 a0 e3                                      mov r2, #1
0082ec20  7c 30 a0 e3                                      mov r3, #0x7c
0082ec24  0c 70 8c e5                                      str r7, [ip, #0xc]
0082ec28  10 70 8c e5                                      str r7, [ip, #0x10]
0082ec2c  0a 10 a0 e1                                      mov r1, sl
0082ec30  2a f0 ff eb                                      bl #0x82ace0
0082ec34  0a 00 a0 e1                                      mov r0, sl
0082ec38  b8 f1 ff eb                                      bl #0x82b320
0082ec3c  38 00 85 e5                                      str r0, [r5, #0x38]
0082ec40  3c f1 ff eb                                      bl #0x82b138
0082ec44  34 00 85 e5                                      str r0, [r5, #0x34]
0082ec48  a0 00 9f e5                                      ldr r0, [pc, #0xa0]
0082ec4c  08 10 a0 e1                                      mov r1, r8
0082ec50  00 00 8f e0                                      add r0, pc, r0
0082ec54  ca f2 ff eb                                      bl #0x82b784
0082ec58  20 30 95 e5                                      ldr r3, [r5, #0x20]
0082ec5c  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0082ec60  08 20 a0 e1                                      mov r2, r8
0082ec64  03 00 a0 e1                                      mov r0, r3
0082ec68  00 30 93 e5                                      ldr r3, [r3]
0082ec6c  0f e0 a0 e1                                      mov lr, pc
0082ec70  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0082ec74  00 70 89 e5                                      str r7, [sb]
0082ec78  01 00 a0 e3                                      mov r0, #1
0082ec7c  a2 ff ff ea                                      b #0x82eb0c
0082ec80  07 00 a0 e1                                      mov r0, r7
0082ec84  04 10 97 e5                                      ldr r1, [r7, #4]
0082ec88  0d a5 eb eb                                      bl #0x3180c4
0082ec8c  10 a0 87 e5                                      str sl, [r7, #0x10]
0082ec90  08 70 87 e5                                      str r7, [r7, #8]
0082ec94  04 a0 87 e5                                      str sl, [r7, #4]
0082ec98  0c 70 87 e5                                      str r7, [r7, #0xc]
0082ec9c  b2 ff ff ea                                      b #0x82eb6c
0082eca0  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0082eca4  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0082eca8  04 00 a0 e3                                      mov r0, #4
0082ecac  01 10 8f e0                                      add r1, pc, r1
0082ecb0  02 20 8f e0                                      add r2, pc, r2
0082ecb4  70 7e eb eb                                      bl #0x30e67c
0082ecb8  01 00 a0 e3                                      mov r0, #1
0082ecbc  00 00 89 e5                                      str r0, [sb]
0082ecc0  91 ff ff ea                                      b #0x82eb0c
0082ecc4  91 7d eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082ecc8  d4 5f 16 00 ac 40 00 00 ac df 0d 00 b8 df 0d 00  .byte 0xd4, 0x5f, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0xac, 0xdf, 0x0d, 0x00, 0xb8, 0xdf, 0x0d, 0x00
0082ecd8  24 2c 00 00 94 21 00 00 f8 36 00 00 58 df 0d 00  .byte 0x24, 0x2c, 0x00, 0x00, 0x94, 0x21, 0x00, 0x00, 0xf8, 0x36, 0x00, 0x00, 0x58, 0xdf, 0x0d, 0x00
0082ece8  4c df 0d 00 48 df 0d 00 f0 de 0d 00 f4 dd 0d 00  .byte 0x4c, 0xdf, 0x0d, 0x00, 0x48, 0xdf, 0x0d, 0x00, 0xf0, 0xde, 0x0d, 0x00, 0xf4, 0xdd, 0x0d, 0x00
0082ecf8  20 de 0d 00                                      .byte 0x20, 0xde, 0x0d, 0x00

; FUNCTION 0x0082ecfc, declared_size=512, range_size=512, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig8GetValueEPKc
; demangled: GLXPlayerSereverConfig::GetValue(char const*)
; decoder-mode: arm
0082ecfc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082ed00  e4 11 9f e5                                      ldr r1, [pc, #0x1e4]
0082ed04  e4 21 9f e5                                      ldr r2, [pc, #0x1e4]
0082ed08  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
0082ed0c  01 10 8f e0                                      add r1, pc, r1
0082ed10  54 d0 4d e2                                      sub sp, sp, #0x54
0082ed14  02 a0 91 e7                                      ldr sl, [r1, r2]
0082ed18  0c 30 8d e5                                      str r3, [sp, #0xc]
0082ed1c  03 30 91 e7                                      ldr r3, [r1, r3]
0082ed20  04 50 9a e5                                      ldr r5, [sl, #4]
0082ed24  04 10 8d e5                                      str r1, [sp, #4]
0082ed28  00 30 93 e5                                      ldr r3, [r3]
0082ed2c  00 00 55 e3                                      cmp r5, #0
0082ed30  08 20 8d e5                                      str r2, [sp, #8]
0082ed34  00 90 a0 e1                                      mov sb, r0
0082ed38  4c 30 8d e5                                      str r3, [sp, #0x4c]
0082ed3c  57 00 00 0a                                      beq #0x82eea0
0082ed40  18 10 8d e2                                      add r1, sp, #0x18
0082ed44  34 80 8d e2                                      add r8, sp, #0x34
0082ed48  00 10 8d e5                                      str r1, [sp]
0082ed4c  09 00 00 ea                                      b #0x82ed78
0082ed50  04 00 a0 e1                                      mov r0, r4
0082ed54  77 3d 02 eb                                      bl #0x8be338
0082ed58  00 00 5b e3                                      cmp fp, #0
0082ed5c  0c 30 95 b5                                      ldrlt r3, [r5, #0xc]
0082ed60  08 30 95 a5                                      ldrge r3, [r5, #8]
0082ed64  0a 50 a0 b1                                      movlt r5, sl
0082ed68  00 00 53 e3                                      cmp r3, #0
0082ed6c  28 00 00 0a                                      beq #0x82ee14
0082ed70  05 a0 a0 e1                                      mov sl, r5
0082ed74  03 50 a0 e1                                      mov r5, r3
0082ed78  09 10 a0 e1                                      mov r1, sb
0082ed7c  00 20 9d e5                                      ldr r2, [sp]
0082ed80  08 00 a0 e1                                      mov r0, r8
0082ed84  d8 94 eb eb                                      bl #0x3140ec
0082ed88  24 30 95 e5                                      ldr r3, [r5, #0x24]
0082ed8c  48 40 9d e5                                      ldr r4, [sp, #0x48]
0082ed90  20 70 95 e5                                      ldr r7, [r5, #0x20]
0082ed94  44 60 9d e5                                      ldr r6, [sp, #0x44]
0082ed98  03 00 a0 e1                                      mov r0, r3
0082ed9c  07 70 63 e0                                      rsb r7, r3, r7
0082eda0  06 60 64 e0                                      rsb r6, r4, r6
0082eda4  07 00 56 e1                                      cmp r6, r7
0082eda8  06 20 a0 b1                                      movlt r2, r6
0082edac  07 20 a0 a1                                      movge r2, r7
0082edb0  04 10 a0 e1                                      mov r1, r4
0082edb4  09 7e eb eb                                      bl #0x30e5e0
0082edb8  00 b0 50 e2                                      subs fp, r0, #0
0082edbc  04 00 00 1a                                      bne #0x82edd4
0082edc0  06 00 57 e1                                      cmp r7, r6
0082edc4  00 b0 e0 b3                                      mvnlt fp, #0
0082edc8  01 00 00 ba                                      blt #0x82edd4
0082edcc  00 b0 a0 d3                                      movle fp, #0
0082edd0  01 b0 a0 c3                                      movgt fp, #1
0082edd4  08 00 54 e1                                      cmp r4, r8
0082edd8  de ff ff 0a                                      beq #0x82ed58
0082eddc  00 00 54 e3                                      cmp r4, #0
0082ede0  dc ff ff 0a                                      beq #0x82ed58
0082ede4  34 10 9d e5                                      ldr r1, [sp, #0x34]
0082ede8  01 10 64 e0                                      rsb r1, r4, r1
0082edec  80 00 51 e3                                      cmp r1, #0x80
0082edf0  d6 ff ff 9a                                      bls #0x82ed50
0082edf4  04 00 a0 e1                                      mov r0, r4
0082edf8  2c 7d eb eb                                      bl #0x30e2b0
0082edfc  00 00 5b e3                                      cmp fp, #0
0082ee00  0c 30 95 b5                                      ldrlt r3, [r5, #0xc]
0082ee04  08 30 95 a5                                      ldrge r3, [r5, #8]
0082ee08  0a 50 a0 b1                                      movlt r5, sl
0082ee0c  00 00 53 e3                                      cmp r3, #0
0082ee10  d6 ff ff 1a                                      bne #0x82ed70
0082ee14  06 00 9d e9                                      ldmib sp, {r1, r2}
0082ee18  05 a0 a0 e1                                      mov sl, r5
0082ee1c  02 30 91 e7                                      ldr r3, [r1, r2]
0082ee20  03 00 55 e1                                      cmp r5, r3
0082ee24  1d 00 00 0a                                      beq #0x82eea0
0082ee28  1c 40 8d e2                                      add r4, sp, #0x1c
0082ee2c  09 10 a0 e1                                      mov r1, sb
0082ee30  14 20 8d e2                                      add r2, sp, #0x14
0082ee34  04 00 a0 e1                                      mov r0, r4
0082ee38  ab 94 eb eb                                      bl #0x3140ec
0082ee3c  30 30 9d e5                                      ldr r3, [sp, #0x30]
0082ee40  24 10 95 e5                                      ldr r1, [r5, #0x24]
0082ee44  20 60 95 e5                                      ldr r6, [r5, #0x20]
0082ee48  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0082ee4c  03 00 a0 e1                                      mov r0, r3
0082ee50  06 60 61 e0                                      rsb r6, r1, r6
0082ee54  07 70 63 e0                                      rsb r7, r3, r7
0082ee58  07 00 56 e1                                      cmp r6, r7
0082ee5c  06 20 a0 b1                                      movlt r2, r6
0082ee60  07 20 a0 a1                                      movge r2, r7
0082ee64  dd 7d eb eb                                      bl #0x30e5e0
0082ee68  00 80 50 e2                                      subs r8, r0, #0
0082ee6c  04 00 00 1a                                      bne #0x82ee84
0082ee70  06 00 57 e1                                      cmp r7, r6
0082ee74  00 80 e0 b3                                      mvnlt r8, #0
0082ee78  01 00 00 ba                                      blt #0x82ee84
0082ee7c  00 80 a0 d3                                      movle r8, #0
0082ee80  01 80 a0 c3                                      movgt r8, #1
0082ee84  04 00 a0 e1                                      mov r0, r4
0082ee88  f1 a4 eb eb                                      bl #0x318254
0082ee8c  00 00 58 e3                                      cmp r8, #0
0082ee90  04 30 9d b5                                      ldrlt r3, [sp, #4]
0082ee94  08 20 9d b5                                      ldrlt r2, [sp, #8]
0082ee98  05 a0 a0 a1                                      movge sl, r5
0082ee9c  02 a0 93 b7                                      ldrlt sl, [r3, r2]
0082eea0  04 20 9d e5                                      ldr r2, [sp, #4]
0082eea4  08 10 9d e5                                      ldr r1, [sp, #8]
0082eea8  01 30 92 e7                                      ldr r3, [r2, r1]
0082eeac  03 00 5a e1                                      cmp sl, r3
0082eeb0  3c 00 9a 15                                      ldrne r0, [sl, #0x3c]
0082eeb4  08 00 00 0a                                      beq #0x82eedc
0082eeb8  04 20 9d e5                                      ldr r2, [sp, #4]
0082eebc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0082eec0  01 30 92 e7                                      ldr r3, [r2, r1]
0082eec4  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0082eec8  00 30 93 e5                                      ldr r3, [r3]
0082eecc  03 00 52 e1                                      cmp r2, r3
0082eed0  04 00 00 1a                                      bne #0x82eee8
0082eed4  54 d0 8d e2                                      add sp, sp, #0x54
0082eed8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082eedc  14 30 9f e5                                      ldr r3, [pc, #0x14]
0082eee0  03 00 92 e7                                      ldr r0, [r2, r3]
0082eee4  f3 ff ff ea                                      b #0x82eeb8
0082eee8  08 7d eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082eeec  84 5d 16 00 f8 36 00 00 ac 40 00 00 94 1c 00 00  .byte 0x84, 0x5d, 0x16, 0x00, 0xf8, 0x36, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0x1c, 0x00, 0x00

; FUNCTION 0x0082eefc, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig17GetGameMinVersionEv
; demangled: GLXPlayerSereverConfig::GetGameMinVersion()
; decoder-mode: arm
0082eefc  04 00 9f e5                                      ldr r0, [pc, #4]
0082ef00  00 00 8f e0                                      add r0, pc, r0
0082ef04  7c ff ff ea                                      b #0x82ecfc
; mapping-symbol data/literal pool
0082ef08  10 b6 0d 00                                      .byte 0x10, 0xb6, 0x0d, 0x00

; FUNCTION 0x0082ef0c, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig20GetGameLatestVersionEv
; demangled: GLXPlayerSereverConfig::GetGameLatestVersion()
; decoder-mode: arm
0082ef0c  04 00 9f e5                                      ldr r0, [pc, #4]
0082ef10  00 00 8f e0                                      add r0, pc, r0
0082ef14  78 ff ff ea                                      b #0x82ecfc
; mapping-symbol data/literal pool
0082ef18  40 dc 0d 00                                      .byte 0x40, 0xdc, 0x0d, 0x00

; FUNCTION 0x0082ef1c, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig17GetChatRoomDomainEv
; demangled: GLXPlayerSereverConfig::GetChatRoomDomain()
; decoder-mode: arm
0082ef1c  04 00 9f e5                                      ldr r0, [pc, #4]
0082ef20  00 00 8f e0                                      add r0, pc, r0
0082ef24  74 ff ff ea                                      b #0x82ecfc
; mapping-symbol data/literal pool
0082ef28  38 dc 0d 00                                      .byte 0x38, 0xdc, 0x0d, 0x00

; FUNCTION 0x0082ef2c, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig13GetChatDomainEv
; demangled: GLXPlayerSereverConfig::GetChatDomain()
; decoder-mode: arm
0082ef2c  04 00 9f e5                                      ldr r0, [pc, #4]
0082ef30  00 00 8f e0                                      add r0, pc, r0
0082ef34  70 ff ff ea                                      b #0x82ecfc
; mapping-symbol data/literal pool
0082ef38  38 dc 0d 00                                      .byte 0x38, 0xdc, 0x0d, 0x00

; FUNCTION 0x0082ef3c, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig13GetChatServerEv
; demangled: GLXPlayerSereverConfig::GetChatServer()
; decoder-mode: arm
0082ef3c  04 00 9f e5                                      ldr r0, [pc, #4]
0082ef40  00 00 8f e0                                      add r0, pc, r0
0082ef44  6c ff ff ea                                      b #0x82ecfc
; mapping-symbol data/literal pool
0082ef48  38 dc 0d 00                                      .byte 0x38, 0xdc, 0x0d, 0x00

; FUNCTION 0x0082ef4c, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig13GetwebURLTypeEv
; demangled: GLXPlayerSereverConfig::GetwebURLType()
; decoder-mode: arm
0082ef4c  04 00 9f e5                                      ldr r0, [pc, #4]
0082ef50  00 00 8f e0                                      add r0, pc, r0
0082ef54  68 ff ff ea                                      b #0x82ecfc
; mapping-symbol data/literal pool
0082ef58  78 1a 0b 00                                      .byte 0x78, 0x1a, 0x0b, 0x00

; FUNCTION 0x0082ef5c, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig9GetPhpVerEv
; demangled: GLXPlayerSereverConfig::GetPhpVer()
; decoder-mode: arm
0082ef5c  04 00 9f e5                                      ldr r0, [pc, #4]
0082ef60  00 00 8f e0                                      add r0, pc, r0
0082ef64  64 ff ff ea                                      b #0x82ecfc
; mapping-symbol data/literal pool
0082ef68  28 dc 0d 00                                      .byte 0x28, 0xdc, 0x0d, 0x00

; FUNCTION 0x0082ef6c, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig15GetXPlayerMPURLEv
; demangled: GLXPlayerSereverConfig::GetXPlayerMPURL()
; decoder-mode: arm
0082ef6c  04 00 9f e5                                      ldr r0, [pc, #4]
0082ef70  00 00 8f e0                                      add r0, pc, r0
0082ef74  60 ff ff ea                                      b #0x82ecfc
; mapping-symbol data/literal pool
0082ef78  28 dc 0d 00                                      .byte 0x28, 0xdc, 0x0d, 0x00

; FUNCTION 0x0082ef7c, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig15GetXPlayerDWURLEv
; demangled: GLXPlayerSereverConfig::GetXPlayerDWURL()
; decoder-mode: arm
0082ef7c  04 00 9f e5                                      ldr r0, [pc, #4]
0082ef80  00 00 8f e0                                      add r0, pc, r0
0082ef84  5c ff ff ea                                      b #0x82ecfc
; mapping-symbol data/literal pool
0082ef88  28 dc 0d 00                                      .byte 0x28, 0xdc, 0x0d, 0x00

; FUNCTION 0x0082ef8c, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig13GetXPlayerURLEv
; demangled: GLXPlayerSereverConfig::GetXPlayerURL()
; decoder-mode: arm
0082ef8c  04 00 9f e5                                      ldr r0, [pc, #4]
0082ef90  00 00 8f e0                                      add r0, pc, r0
0082ef94  58 ff ff ea                                      b #0x82ecfc
; mapping-symbol data/literal pool
0082ef98  28 dc 0d 00                                      .byte 0x28, 0xdc, 0x0d, 0x00

; FUNCTION 0x0082f6d8, declared_size=616, range_size=616, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig15OnUpdateSuccessEi
; demangled: GLXPlayerSereverConfig::OnUpdateSuccess(int)
; decoder-mode: arm
0082f6d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082f6dc  3c 42 9f e5                                      ldr r4, [pc, #0x23c]
0082f6e0  3c 92 9f e5                                      ldr sb, [pc, #0x23c]
0082f6e4  81 dd 4d e2                                      sub sp, sp, #0x2040
0082f6e8  04 40 8f e0                                      add r4, pc, r4
0082f6ec  09 30 94 e7                                      ldr r3, [r4, sb]
0082f6f0  1c d0 4d e2                                      sub sp, sp, #0x1c
0082f6f4  02 2a 8d e2                                      add r2, sp, #0x2000
0082f6f8  00 30 93 e5                                      ldr r3, [r3]
0082f6fc  01 00 51 e3                                      cmp r1, #1
0082f700  00 70 a0 e1                                      mov r7, r0
0082f704  54 30 82 e5                                      str r3, [r2, #0x54]
0082f708  09 00 00 0a                                      beq #0x82f734
0082f70c  9d 07 00 eb                                      bl #0x831588
0082f710  09 30 94 e7                                      ldr r3, [r4, sb]
0082f714  02 1a 8d e2                                      add r1, sp, #0x2000
0082f718  54 20 91 e5                                      ldr r2, [r1, #0x54]
0082f71c  00 30 93 e5                                      ldr r3, [r3]
0082f720  03 00 52 e1                                      cmp r2, r3
0082f724  7c 00 00 1a                                      bne #0x82f91c
0082f728  5c d0 8d e2                                      add sp, sp, #0x5c
0082f72c  02 da 8d e2                                      add sp, sp, #0x2000
0082f730  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082f734  58 30 8d e2                                      add r3, sp, #0x58
0082f738  3c 10 43 e2                                      sub r1, r3, #0x3c
0082f73c  00 30 8d e5                                      str r3, [sp]
0082f740  02 aa 8d e2                                      add sl, sp, #0x2000
0082f744  dc 81 9f e5                                      ldr r8, [pc, #0x1dc]
0082f748  34 60 43 e2                                      sub r6, r3, #0x34
0082f74c  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
0082f750  41 5d 8d e2                                      add r5, sp, #0x1040
0082f754  24 a0 8a e2                                      add sl, sl, #0x24
0082f758  18 50 85 e2                                      add r5, r5, #0x18
0082f75c  18 b0 8d e2                                      add fp, sp, #0x18
0082f760  18 20 8a e2                                      add r2, sl, #0x18
0082f764  34 50 45 e2                                      sub r5, r5, #0x34
0082f768  08 80 8f e0                                      add r8, pc, r8
0082f76c  04 b0 4b e2                                      sub fp, fp, #4
0082f770  08 10 8d e5                                      str r1, [sp, #8]
0082f774  04 20 8d e5                                      str r2, [sp, #4]
0082f778  0c 30 8d e5                                      str r3, [sp, #0xc]
0082f77c  05 10 a0 e1                                      mov r1, r5
0082f780  07 00 a0 e1                                      mov r0, r7
0082f784  ee 07 00 eb                                      bl #0x831744
0082f788  07 ee ff eb                                      bl #0x82afac
0082f78c  00 00 50 e3                                      cmp r0, #0
0082f790  21 00 00 0a                                      beq #0x82f81c
0082f794  01 2a a0 e3                                      mov r2, #0x1000
0082f798  06 00 a0 e1                                      mov r0, r6
0082f79c  00 10 a0 e3                                      mov r1, #0
0082f7a0  ef ee ff eb                                      bl #0x82b364
0082f7a4  01 2a a0 e3                                      mov r2, #0x1000
0082f7a8  05 10 a0 e1                                      mov r1, r5
0082f7ac  06 00 a0 e1                                      mov r0, r6
0082f7b0  e6 ee ff eb                                      bl #0x82b350
0082f7b4  05 10 a0 e1                                      mov r1, r5
0082f7b8  07 00 a0 e1                                      mov r0, r7
0082f7bc  e0 07 00 eb                                      bl #0x831744
0082f7c0  06 00 a0 e1                                      mov r0, r6
0082f7c4  08 10 a0 e1                                      mov r1, r8
0082f7c8  df ee ff eb                                      bl #0x82b34c
0082f7cc  00 00 50 e3                                      cmp r0, #0
0082f7d0  33 00 00 1a                                      bne #0x82f8a4
0082f7d4  05 00 a0 e1                                      mov r0, r5
0082f7d8  f3 ed ff eb                                      bl #0x82afac
0082f7dc  00 00 50 e3                                      cmp r0, #0
0082f7e0  e5 ff ff 0a                                      beq #0x82f77c
0082f7e4  05 00 a0 e1                                      mov r0, r5
0082f7e8  cc ee ff eb                                      bl #0x82b320
0082f7ec  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0082f7f0  01 00 50 e3                                      cmp r0, #1
0082f7f4  00 00 a0 13                                      movne r0, #0
0082f7f8  01 00 a0 03                                      moveq r0, #1
0082f7fc  01 30 94 e7                                      ldr r3, [r4, r1]
0082f800  05 10 a0 e1                                      mov r1, r5
0082f804  00 00 c3 e5                                      strb r0, [r3]
0082f808  07 00 a0 e1                                      mov r0, r7
0082f80c  cc 07 00 eb                                      bl #0x831744
0082f810  e5 ed ff eb                                      bl #0x82afac
0082f814  00 00 50 e3                                      cmp r0, #0
0082f818  dd ff ff 1a                                      bne #0x82f794
0082f81c  0c 01 9f e5                                      ldr r0, [pc, #0x10c]
0082f820  00 00 8f e0                                      add r0, pc, r0
0082f824  dc fd ff eb                                      bl #0x82ef9c
0082f828  04 31 9f e5                                      ldr r3, [pc, #0x104]
0082f82c  03 50 94 e7                                      ldr r5, [r4, r3]
0082f830  00 00 55 e1                                      cmp r5, r0
0082f834  2f 00 00 0a                                      beq #0x82f8f8
0082f838  4e fe ff eb                                      bl #0x82f178
0082f83c  00 00 55 e1                                      cmp r5, r0
0082f840  2c 00 00 0a                                      beq #0x82f8f8
0082f844  ec 00 9f e5                                      ldr r0, [pc, #0xec]
0082f848  00 00 8f e0                                      add r0, pc, r0
0082f84c  d2 fd ff eb                                      bl #0x82ef9c
0082f850  00 00 55 e1                                      cmp r5, r0
0082f854  27 00 00 0a                                      beq #0x82f8f8
0082f858  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
0082f85c  01 50 a0 e3                                      mov r5, #1
0082f860  07 00 a0 e1                                      mov r0, r7
0082f864  03 30 94 e7                                      ldr r3, [r4, r3]
0082f868  00 50 c3 e5                                      strb r5, [r3]
0082f86c  12 fa ff eb                                      bl #0x82e0bc
0082f870  04 80 97 e5                                      ldr r8, [r7, #4]
0082f874  24 70 97 e5                                      ldr r7, [r7, #0x24]
0082f878  00 30 98 e5                                      ldr r3, [r8]
0082f87c  07 00 a0 e1                                      mov r0, r7
0082f880  08 60 93 e5                                      ldr r6, [r3, #8]
0082f884  c8 ed ff eb                                      bl #0x82afac
0082f888  05 10 a0 e1                                      mov r1, r5
0082f88c  00 30 a0 e1                                      mov r3, r0
0082f890  07 20 a0 e1                                      mov r2, r7
0082f894  08 00 a0 e1                                      mov r0, r8
0082f898  36 ff 2f e1                                      blx r6
0082f89c  05 00 a0 e1                                      mov r0, r5
0082f8a0  9a ff ff ea                                      b #0x82f710
0082f8a4  05 00 a0 e1                                      mov r0, r5
0082f8a8  bf ed ff eb                                      bl #0x82afac
0082f8ac  00 00 50 e3                                      cmp r0, #0
0082f8b0  b1 ff ff 0a                                      beq #0x82f77c
0082f8b4  08 20 9d e5                                      ldr r2, [sp, #8]
0082f8b8  06 10 a0 e1                                      mov r1, r6
0082f8bc  0a 00 a0 e1                                      mov r0, sl
0082f8c0  09 92 eb eb                                      bl #0x3140ec
0082f8c4  00 30 9d e5                                      ldr r3, [sp]
0082f8c8  05 10 a0 e1                                      mov r1, r5
0082f8cc  04 00 9d e5                                      ldr r0, [sp, #4]
0082f8d0  38 20 43 e2                                      sub r2, r3, #0x38
0082f8d4  04 92 eb eb                                      bl #0x3140ec
0082f8d8  0b 00 a0 e1                                      mov r0, fp
0082f8dc  0a 10 a0 e1                                      mov r1, sl
0082f8e0  f6 fe ff eb                                      bl #0x82f4c0
0082f8e4  04 00 9d e5                                      ldr r0, [sp, #4]
0082f8e8  59 a2 eb eb                                      bl #0x318254
0082f8ec  0a 00 a0 e1                                      mov r0, sl
0082f8f0  57 a2 eb eb                                      bl #0x318254
0082f8f4  a0 ff ff ea                                      b #0x82f77c
0082f8f8  04 30 97 e5                                      ldr r3, [r7, #4]
0082f8fc  01 10 a0 e3                                      mov r1, #1
0082f900  28 20 a0 e3                                      mov r2, #0x28
0082f904  03 00 a0 e1                                      mov r0, r3
0082f908  00 30 93 e5                                      ldr r3, [r3]
0082f90c  0f e0 a0 e1                                      mov lr, pc
0082f910  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0082f914  01 00 a0 e3                                      mov r0, #1
0082f918  7c ff ff ea                                      b #0x82f710
0082f91c  7b 7a eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082f920  a8 53 16 00 ac 40 00 00 60 d4 0d 00 64 39 00 00  .byte 0xa8, 0x53, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x60, 0xd4, 0x0d, 0x00, 0x64, 0x39, 0x00, 0x00
0082f930  98 d3 0d 00 f8 36 00 00 40 d3 0d 00 94 21 00 00  .byte 0x98, 0xd3, 0x0d, 0x00, 0xf8, 0x36, 0x00, 0x00, 0x40, 0xd3, 0x0d, 0x00, 0x94, 0x21, 0x00, 0x00

; FUNCTION 0x0082f940, declared_size=364, range_size=364, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig15OnUpdateFailureEi
; demangled: GLXPlayerSereverConfig::OnUpdateFailure(int)
; decoder-mode: arm
0082f940  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082f944  58 71 9f e5                                      ldr r7, [pc, #0x158]
0082f948  58 81 9f e5                                      ldr r8, [pc, #0x158]
0082f94c  81 dd 4d e2                                      sub sp, sp, #0x2040
0082f950  07 70 8f e0                                      add r7, pc, r7
0082f954  08 30 97 e7                                      ldr r3, [r7, r8]
0082f958  1c d0 4d e2                                      sub sp, sp, #0x1c
0082f95c  01 a0 a0 e1                                      mov sl, r1
0082f960  00 30 93 e5                                      ldr r3, [r3]
0082f964  02 1a 8d e2                                      add r1, sp, #0x2000
0082f968  00 50 a0 e1                                      mov r5, r0
0082f96c  54 30 81 e5                                      str r3, [r1, #0x54]
0082f970  e1 07 00 eb                                      bl #0x8318fc
0082f974  01 00 5a e3                                      cmp sl, #1
0082f978  00 90 a0 e1                                      mov sb, r0
0082f97c  10 00 00 0a                                      beq #0x82f9c4
0082f980  04 30 95 e5                                      ldr r3, [r5, #4]
0082f984  0a 10 a0 e1                                      mov r1, sl
0082f988  09 20 a0 e1                                      mov r2, sb
0082f98c  03 00 a0 e1                                      mov r0, r3
0082f990  00 30 93 e5                                      ldr r3, [r3]
0082f994  0f e0 a0 e1                                      mov lr, pc
0082f998  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0082f99c  08 30 97 e7                                      ldr r3, [r7, r8]
0082f9a0  02 1a 8d e2                                      add r1, sp, #0x2000
0082f9a4  54 20 91 e5                                      ldr r2, [r1, #0x54]
0082f9a8  00 30 93 e5                                      ldr r3, [r3]
0082f9ac  01 00 a0 e3                                      mov r0, #1
0082f9b0  03 00 52 e1                                      cmp r2, r3
0082f9b4  39 00 00 1a                                      bne #0x82faa0
0082f9b8  5c d0 8d e2                                      add sp, sp, #0x5c
0082f9bc  02 da 8d e2                                      add sp, sp, #0x2000
0082f9c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082f9c4  65 00 50 e3                                      cmp r0, #0x65
0082f9c8  ec ff ff 1a                                      bne #0x82f980
0082f9cc  02 ba 8d e2                                      add fp, sp, #0x2000
0082f9d0  18 20 8d e2                                      add r2, sp, #0x18
0082f9d4  58 30 8d e2                                      add r3, sp, #0x58
0082f9d8  04 20 42 e2                                      sub r2, r2, #4
0082f9dc  41 4d 8d e2                                      add r4, sp, #0x1040
0082f9e0  24 b0 8b e2                                      add fp, fp, #0x24
0082f9e4  38 10 43 e2                                      sub r1, r3, #0x38
0082f9e8  18 40 84 e2                                      add r4, r4, #0x18
0082f9ec  04 20 8d e5                                      str r2, [sp, #4]
0082f9f0  34 60 43 e2                                      sub r6, r3, #0x34
0082f9f4  18 20 8b e2                                      add r2, fp, #0x18
0082f9f8  3c 30 43 e2                                      sub r3, r3, #0x3c
0082f9fc  34 40 44 e2                                      sub r4, r4, #0x34
0082fa00  0c 10 8d e5                                      str r1, [sp, #0xc]
0082fa04  08 30 8d e5                                      str r3, [sp, #8]
0082fa08  00 20 8d e5                                      str r2, [sp]
0082fa0c  04 10 a0 e1                                      mov r1, r4
0082fa10  05 00 a0 e1                                      mov r0, r5
0082fa14  4a 07 00 eb                                      bl #0x831744
0082fa18  63 ed ff eb                                      bl #0x82afac
0082fa1c  00 00 50 e3                                      cmp r0, #0
0082fa20  d6 ff ff 0a                                      beq #0x82f980
0082fa24  01 2a a0 e3                                      mov r2, #0x1000
0082fa28  06 00 a0 e1                                      mov r0, r6
0082fa2c  00 10 a0 e3                                      mov r1, #0
0082fa30  4b ee ff eb                                      bl #0x82b364
0082fa34  01 2a a0 e3                                      mov r2, #0x1000
0082fa38  04 10 a0 e1                                      mov r1, r4
0082fa3c  06 00 a0 e1                                      mov r0, r6
0082fa40  42 ee ff eb                                      bl #0x82b350
0082fa44  04 10 a0 e1                                      mov r1, r4
0082fa48  05 00 a0 e1                                      mov r0, r5
0082fa4c  3c 07 00 eb                                      bl #0x831744
0082fa50  04 00 a0 e1                                      mov r0, r4
0082fa54  54 ed ff eb                                      bl #0x82afac
0082fa58  00 00 50 e3                                      cmp r0, #0
0082fa5c  ea ff ff 0a                                      beq #0x82fa0c
0082fa60  06 10 a0 e1                                      mov r1, r6
0082fa64  08 20 9d e5                                      ldr r2, [sp, #8]
0082fa68  0b 00 a0 e1                                      mov r0, fp
0082fa6c  9e 91 eb eb                                      bl #0x3140ec
0082fa70  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0082fa74  04 10 a0 e1                                      mov r1, r4
0082fa78  00 00 9d e5                                      ldr r0, [sp]
0082fa7c  9a 91 eb eb                                      bl #0x3140ec
0082fa80  04 00 9d e5                                      ldr r0, [sp, #4]
0082fa84  0b 10 a0 e1                                      mov r1, fp
0082fa88  8c fe ff eb                                      bl #0x82f4c0
0082fa8c  00 00 9d e5                                      ldr r0, [sp]
0082fa90  ef a1 eb eb                                      bl #0x318254
0082fa94  0b 00 a0 e1                                      mov r0, fp
0082fa98  ed a1 eb eb                                      bl #0x318254
0082fa9c  da ff ff ea                                      b #0x82fa0c
0082faa0  1a 7a eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082faa4  40 51 16 00 ac 40 00 00                          .byte 0x40, 0x51, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082faac, declared_size=1052, range_size=1052, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig19loadConfigFromLocalEv
; demangled: GLXPlayerSereverConfig::loadConfigFromLocal()
; decoder-mode: arm
0082faac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082fab0  e4 23 9f e5                                      ldr r2, [pc, #0x3e4]
0082fab4  e4 a3 9f e5                                      ldr sl, [pc, #0x3e4]
0082fab8  e4 13 9f e5                                      ldr r1, [pc, #0x3e4]
0082fabc  6b df 4d e2                                      sub sp, sp, #0x1ac
0082fac0  0a a0 8f e0                                      add sl, pc, sl
0082fac4  08 20 8d e5                                      str r2, [sp, #8]
0082fac8  14 10 8d e5                                      str r1, [sp, #0x14]
0082facc  01 20 9a e7                                      ldr r2, [sl, r1]
0082fad0  08 10 9d e5                                      ldr r1, [sp, #8]
0082fad4  10 00 8d e5                                      str r0, [sp, #0x10]
0082fad8  00 40 d2 e5                                      ldrb r4, [r2]
0082fadc  01 30 9a e7                                      ldr r3, [sl, r1]
0082fae0  00 00 54 e3                                      cmp r4, #0
0082fae4  00 30 93 e5                                      ldr r3, [r3]
0082fae8  01 00 a0 13                                      movne r0, #1
0082faec  a4 31 8d e5                                      str r3, [sp, #0x1a4]
0082faf0  07 00 00 0a                                      beq #0x82fb14
0082faf4  08 10 9d e5                                      ldr r1, [sp, #8]
0082faf8  a4 21 9d e5                                      ldr r2, [sp, #0x1a4]
0082fafc  01 30 9a e7                                      ldr r3, [sl, r1]
0082fb00  00 30 93 e5                                      ldr r3, [r3]
0082fb04  03 00 52 e1                                      cmp r2, r3
0082fb08  e2 00 00 1a                                      bne #0x82fe98
0082fb0c  6b df 8d e2                                      add sp, sp, #0x1ac
0082fb10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082fb14  8c 53 9f e5                                      ldr r5, [pc, #0x38c]
0082fb18  8c 13 9f e5                                      ldr r1, [pc, #0x38c]
0082fb1c  05 50 8f e0                                      add r5, pc, r5
0082fb20  01 10 8f e0                                      add r1, pc, r1
0082fb24  05 00 a0 e1                                      mov r0, r5
0082fb28  b9 ed ff eb                                      bl #0x82b214
0082fb2c  00 20 50 e2                                      subs r2, r0, #0
0082fb30  1c 20 8d e5                                      str r2, [sp, #0x1c]
0082fb34  d1 00 00 0a                                      beq #0x82fe80
0082fb38  8e ed ff eb                                      bl #0x82b178
0082fb3c  01 b0 80 e2                                      add fp, r0, #1
0082fb40  00 50 a0 e1                                      mov r5, r0
0082fb44  0b 00 a0 e1                                      mov r0, fp
0082fb48  60 79 eb eb                                      bl #0x30e0d0
0082fb4c  04 10 a0 e1                                      mov r1, r4
0082fb50  0b 20 a0 e1                                      mov r2, fp
0082fb54  04 00 8d e5                                      str r0, [sp, #4]
0082fb58  01 ee ff eb                                      bl #0x82b364
0082fb5c  05 10 a0 e1                                      mov r1, r5
0082fb60  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0082fb64  01 20 a0 e3                                      mov r2, #1
0082fb68  04 00 9d e5                                      ldr r0, [sp, #4]
0082fb6c  9d ed ff eb                                      bl #0x82b1e8
0082fb70  0b 00 a0 e1                                      mov r0, fp
0082fb74  55 79 eb eb                                      bl #0x30e0d0
0082fb78  04 10 a0 e1                                      mov r1, r4
0082fb7c  00 50 a0 e1                                      mov r5, r0
0082fb80  0b 20 a0 e1                                      mov r2, fp
0082fb84  f6 ed ff eb                                      bl #0x82b364
0082fb88  05 10 a0 e1                                      mov r1, r5
0082fb8c  04 20 a0 e1                                      mov r2, r4
0082fb90  0a 30 a0 e3                                      mov r3, #0xa
0082fb94  04 00 9d e5                                      ldr r0, [sp, #4]
0082fb98  0d ec ff eb                                      bl #0x82abd4
0082fb9c  05 00 a0 e1                                      mov r0, r5
0082fba0  01 ed ff eb                                      bl #0x82afac
0082fba4  00 00 50 e3                                      cmp r0, #0
0082fba8  5d 00 00 da                                      ble #0x82fd24
0082fbac  01 00 40 e2                                      sub r0, r0, #1
0082fbb0  d0 30 95 e1                                      ldrsb r3, [r5, r0]
0082fbb4  53 1f 8d e2                                      add r1, sp, #0x14c
0082fbb8  44 20 8d e2                                      add r2, sp, #0x44
0082fbbc  0d 00 53 e3                                      cmp r3, #0xd
0082fbc0  e8 32 9f e5                                      ldr r3, [pc, #0x2e8]
0082fbc4  00 40 c5 07                                      strbeq r4, [r5, r0]
0082fbc8  5f 8f 8d e2                                      add r8, sp, #0x17c
0082fbcc  03 30 8f e0                                      add r3, pc, r3
0082fbd0  0c 30 8d e5                                      str r3, [sp, #0xc]
0082fbd4  d8 32 9f e5                                      ldr r3, [pc, #0x2d8]
0082fbd8  20 10 8d e5                                      str r1, [sp, #0x20]
0082fbdc  2c 20 8d e5                                      str r2, [sp, #0x2c]
0082fbe0  03 30 8f e0                                      add r3, pc, r3
0082fbe4  18 30 8d e5                                      str r3, [sp, #0x18]
0082fbe8  3c 20 8d e2                                      add r2, sp, #0x3c
0082fbec  18 30 81 e2                                      add r3, r1, #0x18
0082fbf0  48 10 8d e2                                      add r1, sp, #0x48
0082fbf4  01 90 a0 e3                                      mov sb, #1
0082fbf8  4c 60 8d e2                                      add r6, sp, #0x4c
0082fbfc  08 70 a0 e1                                      mov r7, r8
0082fc00  28 30 8d e5                                      str r3, [sp, #0x28]
0082fc04  30 10 8d e5                                      str r1, [sp, #0x30]
0082fc08  34 20 8d e5                                      str r2, [sp, #0x34]
0082fc0c  24 a0 8d e5                                      str sl, [sp, #0x24]
0082fc10  00 40 a0 e3                                      mov r4, #0
0082fc14  08 30 a0 e1                                      mov r3, r8
0082fc18  04 40 83 e4                                      str r4, [r3], #4
0082fc1c  04 30 83 e2                                      add r3, r3, #4
0082fc20  04 40 83 e4                                      str r4, [r3], #4
0082fc24  04 40 83 e4                                      str r4, [r3], #4
0082fc28  04 40 83 e4                                      str r4, [r3], #4
0082fc2c  04 40 83 e4                                      str r4, [r3], #4
0082fc30  04 40 83 e4                                      str r4, [r3], #4
0082fc34  04 40 88 e5                                      str r4, [r8, #4]
0082fc38  00 40 83 e5                                      str r4, [r3]
0082fc3c  04 10 a0 e1                                      mov r1, r4
0082fc40  01 2c a0 e3                                      mov r2, #0x100
0082fc44  06 00 a0 e1                                      mov r0, r6
0082fc48  04 7a eb eb                                      bl #0x30e460
0082fc4c  04 20 a0 e1                                      mov r2, r4
0082fc50  3a 30 a0 e3                                      mov r3, #0x3a
0082fc54  07 10 a0 e1                                      mov r1, r7
0082fc58  05 00 a0 e1                                      mov r0, r5
0082fc5c  dc eb ff eb                                      bl #0x82abd4
0082fc60  3a 30 a0 e3                                      mov r3, #0x3a
0082fc64  06 10 a0 e1                                      mov r1, r6
0082fc68  01 20 a0 e3                                      mov r2, #1
0082fc6c  05 00 a0 e1                                      mov r0, r5
0082fc70  d7 eb ff eb                                      bl #0x82abd4
0082fc74  04 10 a0 e1                                      mov r1, r4
0082fc78  00 80 a0 e1                                      mov r8, r0
0082fc7c  01 2c a0 e3                                      mov r2, #0x100
0082fc80  06 00 a0 e1                                      mov r0, r6
0082fc84  b6 ed ff eb                                      bl #0x82b364
0082fc88  05 00 a0 e1                                      mov r0, r5
0082fc8c  c6 ec ff eb                                      bl #0x82afac
0082fc90  08 10 85 e0                                      add r1, r5, r8
0082fc94  00 20 68 e0                                      rsb r2, r8, r0
0082fc98  06 00 a0 e1                                      mov r0, r6
0082fc9c  ab ed ff eb                                      bl #0x82b350
0082fca0  07 00 a0 e1                                      mov r0, r7
0082fca4  da ec ff eb                                      bl #0x82b014
0082fca8  06 00 a0 e1                                      mov r0, r6
0082fcac  d8 ec ff eb                                      bl #0x82b014
0082fcb0  07 00 a0 e1                                      mov r0, r7
0082fcb4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0082fcb8  a3 ed ff eb                                      bl #0x82b34c
0082fcbc  04 00 50 e1                                      cmp r0, r4
0082fcc0  07 80 a0 e1                                      mov r8, r7
0082fcc4  38 00 00 1a                                      bne #0x82fdac
0082fcc8  06 00 a0 e1                                      mov r0, r6
0082fccc  93 ed ff eb                                      bl #0x82b320
0082fcd0  05 00 a0 e1                                      mov r0, r5
0082fcd4  00 10 a0 e3                                      mov r1, #0
0082fcd8  0b 20 a0 e1                                      mov r2, fp
0082fcdc  a0 ed ff eb                                      bl #0x82b364
0082fce0  05 10 a0 e1                                      mov r1, r5
0082fce4  09 20 a0 e1                                      mov r2, sb
0082fce8  0a 30 a0 e3                                      mov r3, #0xa
0082fcec  04 00 9d e5                                      ldr r0, [sp, #4]
0082fcf0  b7 eb ff eb                                      bl #0x82abd4
0082fcf4  05 00 a0 e1                                      mov r0, r5
0082fcf8  ab ec ff eb                                      bl #0x82afac
0082fcfc  00 00 50 e3                                      cmp r0, #0
0082fd00  06 00 00 da                                      ble #0x82fd20
0082fd04  01 00 40 e2                                      sub r0, r0, #1
0082fd08  d0 30 95 e1                                      ldrsb r3, [r5, r0]
0082fd0c  01 90 89 e2                                      add sb, sb, #1
0082fd10  0d 00 53 e3                                      cmp r3, #0xd
0082fd14  00 30 a0 03                                      moveq r3, #0
0082fd18  00 30 c5 07                                      strbeq r3, [r5, r0]
0082fd1c  bb ff ff ea                                      b #0x82fc10
0082fd20  24 a0 9d e5                                      ldr sl, [sp, #0x24]
0082fd24  00 00 55 e3                                      cmp r5, #0
0082fd28  01 00 00 0a                                      beq #0x82fd34
0082fd2c  05 00 a0 e1                                      mov r0, r5
0082fd30  5e 79 eb eb                                      bl #0x30e2b0
0082fd34  04 30 9d e5                                      ldr r3, [sp, #4]
0082fd38  00 00 53 e3                                      cmp r3, #0
0082fd3c  01 00 00 0a                                      beq #0x82fd48
0082fd40  03 00 a0 e1                                      mov r0, r3
0082fd44  59 79 eb eb                                      bl #0x30e2b0
0082fd48  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0082fd4c  4a ec ff eb                                      bl #0x82ae7c
0082fd50  60 01 9f e5                                      ldr r0, [pc, #0x160]
0082fd54  00 00 8f e0                                      add r0, pc, r0
0082fd58  8f fc ff eb                                      bl #0x82ef9c
0082fd5c  58 31 9f e5                                      ldr r3, [pc, #0x158]
0082fd60  03 40 9a e7                                      ldr r4, [sl, r3]
0082fd64  00 00 54 e1                                      cmp r4, r0
0082fd68  0d 00 00 0a                                      beq #0x82fda4
0082fd6c  01 fd ff eb                                      bl #0x82f178
0082fd70  00 00 54 e1                                      cmp r4, r0
0082fd74  0a 00 00 0a                                      beq #0x82fda4
0082fd78  40 01 9f e5                                      ldr r0, [pc, #0x140]
0082fd7c  00 00 8f e0                                      add r0, pc, r0
0082fd80  85 fc ff eb                                      bl #0x82ef9c
0082fd84  00 00 54 e1                                      cmp r4, r0
0082fd88  05 00 00 0a                                      beq #0x82fda4
0082fd8c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0082fd90  03 20 9a e7                                      ldr r2, [sl, r3]
0082fd94  01 30 a0 e3                                      mov r3, #1
0082fd98  03 00 a0 e1                                      mov r0, r3
0082fd9c  00 30 c2 e5                                      strb r3, [r2]
0082fda0  53 ff ff ea                                      b #0x82faf4
0082fda4  00 00 a0 e3                                      mov r0, #0
0082fda8  51 ff ff ea                                      b #0x82faf4
0082fdac  07 00 a0 e1                                      mov r0, r7
0082fdb0  18 10 9d e5                                      ldr r1, [sp, #0x18]
0082fdb4  64 ed ff eb                                      bl #0x82b34c
0082fdb8  00 40 50 e2                                      subs r4, r0, #0
0082fdbc  1b 00 00 1a                                      bne #0x82fe30
0082fdc0  67 af 8d e2                                      add sl, sp, #0x19c
0082fdc4  04 20 a0 e1                                      mov r2, r4
0082fdc8  0a 10 a0 e1                                      mov r1, sl
0082fdcc  2d 30 a0 e3                                      mov r3, #0x2d
0082fdd0  06 00 a0 e1                                      mov r0, r6
0082fdd4  9c 41 8d e5                                      str r4, [sp, #0x19c]
0082fdd8  a0 41 8d e5                                      str r4, [sp, #0x1a0]
0082fddc  7c eb ff eb                                      bl #0x82abd4
0082fde0  10 10 9d e5                                      ldr r1, [sp, #0x10]
0082fde4  0a 00 a0 e1                                      mov r0, sl
0082fde8  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0082fdec  00 30 8d e5                                      str r3, [sp]
0082fdf0  4a ed ff eb                                      bl #0x82b320
0082fdf4  00 30 9d e5                                      ldr r3, [sp]
0082fdf8  0a 10 a0 e1                                      mov r1, sl
0082fdfc  01 20 a0 e3                                      mov r2, #1
0082fe00  00 00 83 e5                                      str r0, [r3]
0082fe04  2d 30 a0 e3                                      mov r3, #0x2d
0082fe08  06 00 a0 e1                                      mov r0, r6
0082fe0c  a0 41 8d e5                                      str r4, [sp, #0x1a0]
0082fe10  9c 41 8d e5                                      str r4, [sp, #0x19c]
0082fe14  6e eb ff eb                                      bl #0x82abd4
0082fe18  10 20 9d e5                                      ldr r2, [sp, #0x10]
0082fe1c  0a 00 a0 e1                                      mov r0, sl
0082fe20  3c 40 92 e5                                      ldr r4, [r2, #0x3c]
0082fe24  3d ed ff eb                                      bl #0x82b320
0082fe28  04 00 84 e5                                      str r0, [r4, #4]
0082fe2c  a7 ff ff ea                                      b #0x82fcd0
0082fe30  06 00 a0 e1                                      mov r0, r6
0082fe34  5c ec ff eb                                      bl #0x82afac
0082fe38  00 00 50 e3                                      cmp r0, #0
0082fe3c  a3 ff ff 0a                                      beq #0x82fcd0
0082fe40  07 10 a0 e1                                      mov r1, r7
0082fe44  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0082fe48  20 00 9d e5                                      ldr r0, [sp, #0x20]
0082fe4c  a6 90 eb eb                                      bl #0x3140ec
0082fe50  30 20 9d e5                                      ldr r2, [sp, #0x30]
0082fe54  06 10 a0 e1                                      mov r1, r6
0082fe58  28 00 9d e5                                      ldr r0, [sp, #0x28]
0082fe5c  a2 90 eb eb                                      bl #0x3140ec
0082fe60  34 00 9d e5                                      ldr r0, [sp, #0x34]
0082fe64  20 10 9d e5                                      ldr r1, [sp, #0x20]
0082fe68  94 fd ff eb                                      bl #0x82f4c0
0082fe6c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0082fe70  f7 a0 eb eb                                      bl #0x318254
0082fe74  20 00 9d e5                                      ldr r0, [sp, #0x20]
0082fe78  f5 a0 eb eb                                      bl #0x318254
0082fe7c  93 ff ff ea                                      b #0x82fcd0
0082fe80  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0082fe84  05 10 a0 e1                                      mov r1, r5
0082fe88  00 00 8f e0                                      add r0, pc, r0
0082fe8c  3c ee ff eb                                      bl #0x82b784
0082fe90  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0082fe94  16 ff ff ea                                      b #0x82faf4
0082fe98  1c 79 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082fe9c  ac 40 00 00 d0 4f 16 00 94 21 00 00 b4 ce 0d 00  .byte 0xac, 0x40, 0x00, 0x00, 0xd0, 0x4f, 0x16, 0x00, 0x94, 0x21, 0x00, 0x00, 0xb4, 0xce, 0x0d, 0x00
0082feac  08 ec 0a 00 44 ce 0d 00 f8 95 0d 00 64 ce 0d 00  .byte 0x08, 0xec, 0x0a, 0x00, 0x44, 0xce, 0x0d, 0x00, 0xf8, 0x95, 0x0d, 0x00, 0x64, 0xce, 0x0d, 0x00
0082febc  f8 36 00 00 0c ce 0d 00 50 cd 0d 00              .byte 0xf8, 0x36, 0x00, 0x00, 0x0c, 0xce, 0x0d, 0x00, 0x50, 0xcd, 0x0d, 0x00

; FUNCTION 0x0082fec8, declared_size=372, range_size=372, mode=arm
; class-group: GLXPlayerSereverConfig
; alias: _ZN22GLXPlayerSereverConfig6UpdateEv
; demangled: GLXPlayerSereverConfig::Update()
; decoder-mode: arm
0082fec8  70 40 2d e9                                      push {r4, r5, r6, lr}
0082fecc  2c 30 d0 e5                                      ldrb r3, [r0, #0x2c]
0082fed0  00 50 a0 e1                                      mov r5, r0
0082fed4  00 00 53 e3                                      cmp r3, #0
0082fed8  00 00 00 1a                                      bne #0x82fee0
0082fedc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0082fee0  20 30 90 e5                                      ldr r3, [r0, #0x20]
0082fee4  03 00 a0 e1                                      mov r0, r3
0082fee8  00 30 93 e5                                      ldr r3, [r3]
0082feec  0f e0 a0 e1                                      mov lr, pc
0082fef0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0082fef4  20 30 95 e5                                      ldr r3, [r5, #0x20]
0082fef8  03 00 a0 e1                                      mov r0, r3
0082fefc  00 30 93 e5                                      ldr r3, [r3]
0082ff00  0f e0 a0 e1                                      mov lr, pc
0082ff04  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0082ff08  00 60 50 e2                                      subs r6, r0, #0
0082ff0c  17 00 00 1a                                      bne #0x82ff70
0082ff10  20 01 9f e5                                      ldr r0, [pc, #0x120]
0082ff14  2c 60 c5 e5                                      strb r6, [r5, #0x2c]
0082ff18  00 00 8f e0                                      add r0, pc, r0
0082ff1c  18 ee ff eb                                      bl #0x82b784
0082ff20  20 30 95 e5                                      ldr r3, [r5, #0x20]
0082ff24  03 00 a0 e1                                      mov r0, r3
0082ff28  00 30 93 e5                                      ldr r3, [r3]
0082ff2c  0f e0 a0 e1                                      mov lr, pc
0082ff30  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0082ff34  00 00 50 e3                                      cmp r0, #0
0082ff38  27 00 00 0a                                      beq #0x82ffdc
0082ff3c  38 40 95 e5                                      ldr r4, [r5, #0x38]
0082ff40  00 30 95 e5                                      ldr r3, [r5]
0082ff44  05 00 a0 e1                                      mov r0, r5
0082ff48  0f e0 a0 e1                                      mov lr, pc
0082ff4c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0082ff50  01 00 54 e3                                      cmp r4, #1
0082ff54  25 00 00 0a                                      beq #0x82fff0
0082ff58  04 30 95 e5                                      ldr r3, [r5, #4]
0082ff5c  03 00 a0 e1                                      mov r0, r3
0082ff60  00 30 93 e5                                      ldr r3, [r3]
0082ff64  0f e0 a0 e1                                      mov lr, pc
0082ff68  00 f0 93 e5                                      ldr pc, [r3]
0082ff6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0082ff70  20 30 95 e5                                      ldr r3, [r5, #0x20]
0082ff74  03 00 a0 e1                                      mov r0, r3
0082ff78  00 30 93 e5                                      ldr r3, [r3]
0082ff7c  0f e0 a0 e1                                      mov lr, pc
0082ff80  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0082ff84  00 60 50 e2                                      subs r6, r0, #0
0082ff88  d3 ff ff 1a                                      bne #0x82fedc
0082ff8c  69 ec ff eb                                      bl #0x82b138
0082ff90  34 30 95 e5                                      ldr r3, [r5, #0x34]
0082ff94  50 26 04 e3                                      movw r2, #0x4650
0082ff98  00 30 63 e0                                      rsb r3, r3, r0
0082ff9c  02 00 53 e1                                      cmp r3, r2
0082ffa0  cd ff ff da                                      ble #0x82fedc
0082ffa4  38 40 95 e5                                      ldr r4, [r5, #0x38]
0082ffa8  00 30 95 e5                                      ldr r3, [r5]
0082ffac  05 00 a0 e1                                      mov r0, r5
0082ffb0  0f e0 a0 e1                                      mov lr, pc
0082ffb4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0082ffb8  01 00 54 e3                                      cmp r4, #1
0082ffbc  18 00 00 0a                                      beq #0x830024
0082ffc0  04 30 95 e5                                      ldr r3, [r5, #4]
0082ffc4  04 10 a0 e1                                      mov r1, r4
0082ffc8  03 00 a0 e1                                      mov r0, r3
0082ffcc  00 30 93 e5                                      ldr r3, [r3]
0082ffd0  0f e0 a0 e1                                      mov lr, pc
0082ffd4  04 f0 93 e5                                      ldr pc, [r3, #4]
0082ffd8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0082ffdc  05 00 a0 e1                                      mov r0, r5
0082ffe0  00 30 95 e5                                      ldr r3, [r5]
0082ffe4  0f e0 a0 e1                                      mov lr, pc
0082ffe8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0082ffec  ba ff ff ea                                      b #0x82fedc
0082fff0  05 00 a0 e1                                      mov r0, r5
0082fff4  ac fe ff eb                                      bl #0x82faac
0082fff8  00 00 50 e3                                      cmp r0, #0
0082fffc  d5 ff ff 0a                                      beq #0x82ff58
00830000  04 30 95 e5                                      ldr r3, [r5, #4]
00830004  06 20 a0 e1                                      mov r2, r6
00830008  04 10 a0 e1                                      mov r1, r4
0083000c  03 00 a0 e1                                      mov r0, r3
00830010  00 c0 93 e5                                      ldr ip, [r3]
00830014  06 30 a0 e1                                      mov r3, r6
00830018  0f e0 a0 e1                                      mov lr, pc
0083001c  08 f0 9c e5                                      ldr pc, [ip, #8]
00830020  70 80 bd e8                                      pop {r4, r5, r6, pc}
00830024  05 00 a0 e1                                      mov r0, r5
00830028  9f fe ff eb                                      bl #0x82faac
0083002c  00 00 50 e3                                      cmp r0, #0
00830030  e2 ff ff 0a                                      beq #0x82ffc0
00830034  f1 ff ff ea                                      b #0x830000
; mapping-symbol data/literal pool
00830038  00 cd 0d 00                                      .byte 0x00, 0xcd, 0x0d, 0x00
