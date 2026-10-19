; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0079c054, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_color
; alias: _ZNK7gameswf8as_color2isEi
; demangled: gameswf::as_color::is(int) const
; decoder-mode: arm
0079c054  11 00 51 e3                                      cmp r1, #0x11
0079c058  01 00 a0 03                                      moveq r0, #1
0079c05c  1e ff 2f 01                                      bxeq lr
0079c060  01 00 71 e2                                      rsbs r0, r1, #1
0079c064  00 00 a0 33                                      movlo r0, #0
0079c068  1e ff 2f e1                                      bx lr

; FUNCTION 0x0079c0a0, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::as_color
; alias: _ZN7gameswf8as_colorD1Ev
; demangled: gameswf::as_color::~as_color()
; decoder-mode: arm
0079c0a0  10 40 2d e9                                      push {r4, lr}
0079c0a4  48 30 9f e5                                      ldr r3, [pc, #0x48]
0079c0a8  48 20 9f e5                                      ldr r2, [pc, #0x48]
0079c0ac  00 40 a0 e1                                      mov r4, r0
0079c0b0  03 30 8f e0                                      add r3, pc, r3
0079c0b4  38 00 90 e5                                      ldr r0, [r0, #0x38]
0079c0b8  02 20 93 e7                                      ldr r2, [r3, r2]
0079c0bc  00 00 50 e3                                      cmp r0, #0
0079c0c0  08 20 82 e2                                      add r2, r2, #8
0079c0c4  00 20 84 e5                                      str r2, [r4]
0079c0c8  05 00 00 0a                                      beq #0x79c0e4
0079c0cc  00 10 90 e5                                      ldr r1, [r0]
0079c0d0  01 10 41 e2                                      sub r1, r1, #1
0079c0d4  00 00 51 e3                                      cmp r1, #0
0079c0d8  00 10 80 e5                                      str r1, [r0]
0079c0dc  00 00 00 1a                                      bne #0x79c0e4
0079c0e0  94 da fe eb                                      bl #0x752b38
0079c0e4  04 00 a0 e1                                      mov r0, r4
0079c0e8  6b 36 ff eb                                      bl #0x769a9c
0079c0ec  04 00 a0 e1                                      mov r0, r4
0079c0f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0079c0f4  e0 89 1f 00 98 3c 00 00                          .byte 0xe0, 0x89, 0x1f, 0x00, 0x98, 0x3c, 0x00, 0x00

; FUNCTION 0x0079c0fc, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_color
; alias: _ZN7gameswf8as_colorD0Ev
; demangled: gameswf::as_color::~as_color()
; decoder-mode: arm
0079c0fc  10 40 2d e9                                      push {r4, lr}
0079c100  00 40 a0 e1                                      mov r4, r0
0079c104  e5 ff ff eb                                      bl #0x79c0a0
0079c108  04 00 a0 e1                                      mov r0, r4
0079c10c  67 c8 ed eb                                      bl #0x30e2b0
0079c110  04 00 a0 e1                                      mov r0, r4
0079c114  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0079c2f0, declared_size=696, range_size=696, mode=arm
; class-group: gameswf::as_color
; alias: _ZN7gameswf8as_colorC1EPNS_6playerEPNS_9characterE
; demangled: gameswf::as_color::as_color(gameswf::player*, gameswf::character*)
; decoder-mode: arm
0079c2f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0079c2f4  7c 52 9f e5                                      ldr r5, [pc, #0x27c]
0079c2f8  7c a2 9f e5                                      ldr sl, [pc, #0x27c]
0079c2fc  90 d0 4d e2                                      sub sp, sp, #0x90
0079c300  05 50 8f e0                                      add r5, pc, r5
0079c304  0a 30 95 e7                                      ldr r3, [r5, sl]
0079c308  00 40 a0 e1                                      mov r4, r0
0079c30c  02 90 a0 e1                                      mov sb, r2
0079c310  00 30 93 e5                                      ldr r3, [r3]
0079c314  00 60 a0 e3                                      mov r6, #0
0079c318  78 80 8d e2                                      add r8, sp, #0x78
0079c31c  8c 30 8d e5                                      str r3, [sp, #0x8c]
0079c320  6e 3e ff eb                                      bl #0x76bce0
0079c324  54 32 9f e5                                      ldr r3, [pc, #0x254]
0079c328  04 00 a0 e1                                      mov r0, r4
0079c32c  09 10 a0 e1                                      mov r1, sb
0079c330  03 30 95 e7                                      ldr r3, [r5, r3]
0079c334  30 70 8d e2                                      add r7, sp, #0x30
0079c338  08 30 83 e2                                      add r3, r3, #8
0079c33c  38 30 80 e4                                      str r3, [r0], #0x38
0079c340  38 60 84 e5                                      str r6, [r4, #0x38]
0079c344  3c 60 84 e5                                      str r6, [r4, #0x3c]
0079c348  16 2e f2 eb                                      bl #0x427ba8
0079c34c  fe 25 a0 e3                                      mov r2, #0x3f800000
0079c350  00 30 a0 e3                                      mov r3, #0
0079c354  58 20 84 e5                                      str r2, [r4, #0x58]
0079c358  5c 30 84 e5                                      str r3, [r4, #0x5c]
0079c35c  40 20 84 e5                                      str r2, [r4, #0x40]
0079c360  48 20 84 e5                                      str r2, [r4, #0x48]
0079c364  50 20 84 e5                                      str r2, [r4, #0x50]
0079c368  44 30 84 e5                                      str r3, [r4, #0x44]
0079c36c  4c 30 84 e5                                      str r3, [r4, #0x4c]
0079c370  54 30 84 e5                                      str r3, [r4, #0x54]
0079c374  48 e0 99 e5                                      ldr lr, [sb, #0x48]
0079c378  40 c0 84 e2                                      add ip, r4, #0x40
0079c37c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0079c380  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0079c384  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0079c388  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0079c38c  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
0079c390  08 00 a0 e1                                      mov r0, r8
0079c394  01 10 8f e0                                      add r1, pc, r1
0079c398  b7 dd f1 eb                                      bl #0x413a7c
0079c39c  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
0079c3a0  07 00 a0 e1                                      mov r0, r7
0079c3a4  31 60 cd e5                                      strb r6, [sp, #0x31]
0079c3a8  03 10 95 e7                                      ldr r1, [r5, r3]
0079c3ac  30 60 cd e5                                      strb r6, [sp, #0x30]
0079c3b0  ba eb ff eb                                      bl #0x7972a0
0079c3b4  04 00 a0 e1                                      mov r0, r4
0079c3b8  08 10 a0 e1                                      mov r1, r8
0079c3bc  07 20 a0 e1                                      mov r2, r7
0079c3c0  e3 31 ff eb                                      bl #0x768b54
0079c3c4  07 00 a0 e1                                      mov r0, r7
0079c3c8  55 eb ff eb                                      bl #0x797124
0079c3cc  d8 37 dd e1                                      ldrsb r3, [sp, #0x78]
0079c3d0  01 00 73 e3                                      cmn r3, #1
0079c3d4  56 00 00 0a                                      beq #0x79c534
0079c3d8  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
0079c3dc  64 70 8d e2                                      add r7, sp, #0x64
0079c3e0  07 00 a0 e1                                      mov r0, r7
0079c3e4  01 10 8f e0                                      add r1, pc, r1
0079c3e8  a3 dd f1 eb                                      bl #0x413a7c
0079c3ec  9c 21 9f e5                                      ldr r2, [pc, #0x19c]
0079c3f0  24 60 8d e2                                      add r6, sp, #0x24
0079c3f4  00 30 a0 e3                                      mov r3, #0
0079c3f8  02 10 95 e7                                      ldr r1, [r5, r2]
0079c3fc  06 00 a0 e1                                      mov r0, r6
0079c400  25 30 cd e5                                      strb r3, [sp, #0x25]
0079c404  24 30 cd e5                                      strb r3, [sp, #0x24]
0079c408  a4 eb ff eb                                      bl #0x7972a0
0079c40c  04 00 a0 e1                                      mov r0, r4
0079c410  07 10 a0 e1                                      mov r1, r7
0079c414  06 20 a0 e1                                      mov r2, r6
0079c418  cd 31 ff eb                                      bl #0x768b54
0079c41c  06 00 a0 e1                                      mov r0, r6
0079c420  3f eb ff eb                                      bl #0x797124
0079c424  d4 36 dd e1                                      ldrsb r3, [sp, #0x64]
0079c428  01 00 73 e3                                      cmn r3, #1
0079c42c  44 00 00 0a                                      beq #0x79c544
0079c430  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
0079c434  50 70 8d e2                                      add r7, sp, #0x50
0079c438  07 00 a0 e1                                      mov r0, r7
0079c43c  01 10 8f e0                                      add r1, pc, r1
0079c440  8d dd f1 eb                                      bl #0x413a7c
0079c444  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
0079c448  18 60 8d e2                                      add r6, sp, #0x18
0079c44c  00 30 a0 e3                                      mov r3, #0
0079c450  02 10 95 e7                                      ldr r1, [r5, r2]
0079c454  06 00 a0 e1                                      mov r0, r6
0079c458  19 30 cd e5                                      strb r3, [sp, #0x19]
0079c45c  18 30 cd e5                                      strb r3, [sp, #0x18]
0079c460  8e eb ff eb                                      bl #0x7972a0
0079c464  04 00 a0 e1                                      mov r0, r4
0079c468  07 10 a0 e1                                      mov r1, r7
0079c46c  06 20 a0 e1                                      mov r2, r6
0079c470  b7 31 ff eb                                      bl #0x768b54
0079c474  06 00 a0 e1                                      mov r0, r6
0079c478  29 eb ff eb                                      bl #0x797124
0079c47c  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
0079c480  01 00 73 e3                                      cmn r3, #1
0079c484  32 00 00 0a                                      beq #0x79c554
0079c488  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
0079c48c  3c 70 8d e2                                      add r7, sp, #0x3c
0079c490  07 00 a0 e1                                      mov r0, r7
0079c494  01 10 8f e0                                      add r1, pc, r1
0079c498  77 dd f1 eb                                      bl #0x413a7c
0079c49c  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
0079c4a0  0c 60 8d e2                                      add r6, sp, #0xc
0079c4a4  00 30 a0 e3                                      mov r3, #0
0079c4a8  02 10 95 e7                                      ldr r1, [r5, r2]
0079c4ac  06 00 a0 e1                                      mov r0, r6
0079c4b0  0d 30 cd e5                                      strb r3, [sp, #0xd]
0079c4b4  0c 30 cd e5                                      strb r3, [sp, #0xc]
0079c4b8  78 eb ff eb                                      bl #0x7972a0
0079c4bc  04 00 a0 e1                                      mov r0, r4
0079c4c0  07 10 a0 e1                                      mov r1, r7
0079c4c4  06 20 a0 e1                                      mov r2, r6
0079c4c8  a1 31 ff eb                                      bl #0x768b54
0079c4cc  06 00 a0 e1                                      mov r0, r6
0079c4d0  13 eb ff eb                                      bl #0x797124
0079c4d4  dc 33 dd e1                                      ldrsb r3, [sp, #0x3c]
0079c4d8  01 00 73 e3                                      cmn r3, #1
0079c4dc  20 00 00 0a                                      beq #0x79c564
0079c4e0  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
0079c4e4  00 30 a0 e3                                      mov r3, #0
0079c4e8  0d 00 a0 e1                                      mov r0, sp
0079c4ec  02 10 95 e7                                      ldr r1, [r5, r2]
0079c4f0  01 30 cd e5                                      strb r3, [sp, #1]
0079c4f4  00 30 cd e5                                      strb r3, [sp]
0079c4f8  68 eb ff eb                                      bl #0x7972a0
0079c4fc  04 00 a0 e1                                      mov r0, r4
0079c500  0d 10 a0 e1                                      mov r1, sp
0079c504  ff 31 ff eb                                      bl #0x768d08
0079c508  0d 00 a0 e1                                      mov r0, sp
0079c50c  04 eb ff eb                                      bl #0x797124
0079c510  0a 30 95 e7                                      ldr r3, [r5, sl]
0079c514  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0079c518  0d 60 a0 e1                                      mov r6, sp
0079c51c  00 30 93 e5                                      ldr r3, [r3]
0079c520  04 00 a0 e1                                      mov r0, r4
0079c524  03 00 52 e1                                      cmp r2, r3
0079c528  11 00 00 1a                                      bne #0x79c574
0079c52c  90 d0 8d e2                                      add sp, sp, #0x90
0079c530  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0079c534  84 00 9d e5                                      ldr r0, [sp, #0x84]
0079c538  80 10 9d e5                                      ldr r1, [sp, #0x80]
0079c53c  7d d9 fe eb                                      bl #0x752b38
0079c540  a4 ff ff ea                                      b #0x79c3d8
0079c544  70 00 9d e5                                      ldr r0, [sp, #0x70]
0079c548  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
0079c54c  79 d9 fe eb                                      bl #0x752b38
0079c550  b6 ff ff ea                                      b #0x79c430
0079c554  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0079c558  58 10 9d e5                                      ldr r1, [sp, #0x58]
0079c55c  75 d9 fe eb                                      bl #0x752b38
0079c560  c8 ff ff ea                                      b #0x79c488
0079c564  48 00 9d e5                                      ldr r0, [sp, #0x48]
0079c568  44 10 9d e5                                      ldr r1, [sp, #0x44]
0079c56c  71 d9 fe eb                                      bl #0x752b38
0079c570  da ff ff ea                                      b #0x79c4e0
0079c574  65 c7 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0079c578  90 87 1f 00 ac 40 00 00 98 3c 00 00 d4 dd 16 00  .byte 0x90, 0x87, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0x3c, 0x00, 0x00, 0xd4, 0xdd, 0x16, 0x00
0079c588  e8 1c 00 00 8c dd 16 00 88 1e 00 00 3c dd 16 00  .byte 0xe8, 0x1c, 0x00, 0x00, 0x8c, 0xdd, 0x16, 0x00, 0x88, 0x1e, 0x00, 0x00, 0x3c, 0xdd, 0x16, 0x00
0079c598  20 44 00 00 f4 dc 16 00 38 0a 00 00 54 36 00 00  .byte 0x20, 0x44, 0x00, 0x00, 0xf4, 0xdc, 0x16, 0x00, 0x38, 0x0a, 0x00, 0x00, 0x54, 0x36, 0x00, 0x00

; FUNCTION 0x0079c66c, declared_size=696, range_size=696, mode=arm
; class-group: gameswf::as_color
; alias: _ZN7gameswf8as_colorC2EPNS_6playerEPNS_9characterE
; demangled: gameswf::as_color::as_color(gameswf::player*, gameswf::character*)
; decoder-mode: arm
0079c66c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0079c670  7c 52 9f e5                                      ldr r5, [pc, #0x27c]
0079c674  7c a2 9f e5                                      ldr sl, [pc, #0x27c]
0079c678  90 d0 4d e2                                      sub sp, sp, #0x90
0079c67c  05 50 8f e0                                      add r5, pc, r5
0079c680  0a 30 95 e7                                      ldr r3, [r5, sl]
0079c684  00 40 a0 e1                                      mov r4, r0
0079c688  02 90 a0 e1                                      mov sb, r2
0079c68c  00 30 93 e5                                      ldr r3, [r3]
0079c690  00 60 a0 e3                                      mov r6, #0
0079c694  78 80 8d e2                                      add r8, sp, #0x78
0079c698  8c 30 8d e5                                      str r3, [sp, #0x8c]
0079c69c  8f 3d ff eb                                      bl #0x76bce0
0079c6a0  54 32 9f e5                                      ldr r3, [pc, #0x254]
0079c6a4  04 00 a0 e1                                      mov r0, r4
0079c6a8  09 10 a0 e1                                      mov r1, sb
0079c6ac  03 30 95 e7                                      ldr r3, [r5, r3]
0079c6b0  30 70 8d e2                                      add r7, sp, #0x30
0079c6b4  08 30 83 e2                                      add r3, r3, #8
0079c6b8  38 30 80 e4                                      str r3, [r0], #0x38
0079c6bc  38 60 84 e5                                      str r6, [r4, #0x38]
0079c6c0  3c 60 84 e5                                      str r6, [r4, #0x3c]
0079c6c4  37 2d f2 eb                                      bl #0x427ba8
0079c6c8  fe 25 a0 e3                                      mov r2, #0x3f800000
0079c6cc  00 30 a0 e3                                      mov r3, #0
0079c6d0  58 20 84 e5                                      str r2, [r4, #0x58]
0079c6d4  5c 30 84 e5                                      str r3, [r4, #0x5c]
0079c6d8  40 20 84 e5                                      str r2, [r4, #0x40]
0079c6dc  48 20 84 e5                                      str r2, [r4, #0x48]
0079c6e0  50 20 84 e5                                      str r2, [r4, #0x50]
0079c6e4  44 30 84 e5                                      str r3, [r4, #0x44]
0079c6e8  4c 30 84 e5                                      str r3, [r4, #0x4c]
0079c6ec  54 30 84 e5                                      str r3, [r4, #0x54]
0079c6f0  48 e0 99 e5                                      ldr lr, [sb, #0x48]
0079c6f4  40 c0 84 e2                                      add ip, r4, #0x40
0079c6f8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0079c6fc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0079c700  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0079c704  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0079c708  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
0079c70c  08 00 a0 e1                                      mov r0, r8
0079c710  01 10 8f e0                                      add r1, pc, r1
0079c714  d8 dc f1 eb                                      bl #0x413a7c
0079c718  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
0079c71c  07 00 a0 e1                                      mov r0, r7
0079c720  31 60 cd e5                                      strb r6, [sp, #0x31]
0079c724  03 10 95 e7                                      ldr r1, [r5, r3]
0079c728  30 60 cd e5                                      strb r6, [sp, #0x30]
0079c72c  db ea ff eb                                      bl #0x7972a0
0079c730  04 00 a0 e1                                      mov r0, r4
0079c734  08 10 a0 e1                                      mov r1, r8
0079c738  07 20 a0 e1                                      mov r2, r7
0079c73c  04 31 ff eb                                      bl #0x768b54
0079c740  07 00 a0 e1                                      mov r0, r7
0079c744  76 ea ff eb                                      bl #0x797124
0079c748  d8 37 dd e1                                      ldrsb r3, [sp, #0x78]
0079c74c  01 00 73 e3                                      cmn r3, #1
0079c750  56 00 00 0a                                      beq #0x79c8b0
0079c754  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
0079c758  64 70 8d e2                                      add r7, sp, #0x64
0079c75c  07 00 a0 e1                                      mov r0, r7
0079c760  01 10 8f e0                                      add r1, pc, r1
0079c764  c4 dc f1 eb                                      bl #0x413a7c
0079c768  9c 21 9f e5                                      ldr r2, [pc, #0x19c]
0079c76c  24 60 8d e2                                      add r6, sp, #0x24
0079c770  00 30 a0 e3                                      mov r3, #0
0079c774  02 10 95 e7                                      ldr r1, [r5, r2]
0079c778  06 00 a0 e1                                      mov r0, r6
0079c77c  25 30 cd e5                                      strb r3, [sp, #0x25]
0079c780  24 30 cd e5                                      strb r3, [sp, #0x24]
0079c784  c5 ea ff eb                                      bl #0x7972a0
0079c788  04 00 a0 e1                                      mov r0, r4
0079c78c  07 10 a0 e1                                      mov r1, r7
0079c790  06 20 a0 e1                                      mov r2, r6
0079c794  ee 30 ff eb                                      bl #0x768b54
0079c798  06 00 a0 e1                                      mov r0, r6
0079c79c  60 ea ff eb                                      bl #0x797124
0079c7a0  d4 36 dd e1                                      ldrsb r3, [sp, #0x64]
0079c7a4  01 00 73 e3                                      cmn r3, #1
0079c7a8  44 00 00 0a                                      beq #0x79c8c0
0079c7ac  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
0079c7b0  50 70 8d e2                                      add r7, sp, #0x50
0079c7b4  07 00 a0 e1                                      mov r0, r7
0079c7b8  01 10 8f e0                                      add r1, pc, r1
0079c7bc  ae dc f1 eb                                      bl #0x413a7c
0079c7c0  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
0079c7c4  18 60 8d e2                                      add r6, sp, #0x18
0079c7c8  00 30 a0 e3                                      mov r3, #0
0079c7cc  02 10 95 e7                                      ldr r1, [r5, r2]
0079c7d0  06 00 a0 e1                                      mov r0, r6
0079c7d4  19 30 cd e5                                      strb r3, [sp, #0x19]
0079c7d8  18 30 cd e5                                      strb r3, [sp, #0x18]
0079c7dc  af ea ff eb                                      bl #0x7972a0
0079c7e0  04 00 a0 e1                                      mov r0, r4
0079c7e4  07 10 a0 e1                                      mov r1, r7
0079c7e8  06 20 a0 e1                                      mov r2, r6
0079c7ec  d8 30 ff eb                                      bl #0x768b54
0079c7f0  06 00 a0 e1                                      mov r0, r6
0079c7f4  4a ea ff eb                                      bl #0x797124
0079c7f8  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
0079c7fc  01 00 73 e3                                      cmn r3, #1
0079c800  32 00 00 0a                                      beq #0x79c8d0
0079c804  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
0079c808  3c 70 8d e2                                      add r7, sp, #0x3c
0079c80c  07 00 a0 e1                                      mov r0, r7
0079c810  01 10 8f e0                                      add r1, pc, r1
0079c814  98 dc f1 eb                                      bl #0x413a7c
0079c818  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
0079c81c  0c 60 8d e2                                      add r6, sp, #0xc
0079c820  00 30 a0 e3                                      mov r3, #0
0079c824  02 10 95 e7                                      ldr r1, [r5, r2]
0079c828  06 00 a0 e1                                      mov r0, r6
0079c82c  0d 30 cd e5                                      strb r3, [sp, #0xd]
0079c830  0c 30 cd e5                                      strb r3, [sp, #0xc]
0079c834  99 ea ff eb                                      bl #0x7972a0
0079c838  04 00 a0 e1                                      mov r0, r4
0079c83c  07 10 a0 e1                                      mov r1, r7
0079c840  06 20 a0 e1                                      mov r2, r6
0079c844  c2 30 ff eb                                      bl #0x768b54
0079c848  06 00 a0 e1                                      mov r0, r6
0079c84c  34 ea ff eb                                      bl #0x797124
0079c850  dc 33 dd e1                                      ldrsb r3, [sp, #0x3c]
0079c854  01 00 73 e3                                      cmn r3, #1
0079c858  20 00 00 0a                                      beq #0x79c8e0
0079c85c  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
0079c860  00 30 a0 e3                                      mov r3, #0
0079c864  0d 00 a0 e1                                      mov r0, sp
0079c868  02 10 95 e7                                      ldr r1, [r5, r2]
0079c86c  01 30 cd e5                                      strb r3, [sp, #1]
0079c870  00 30 cd e5                                      strb r3, [sp]
0079c874  89 ea ff eb                                      bl #0x7972a0
0079c878  04 00 a0 e1                                      mov r0, r4
0079c87c  0d 10 a0 e1                                      mov r1, sp
0079c880  20 31 ff eb                                      bl #0x768d08
0079c884  0d 00 a0 e1                                      mov r0, sp
0079c888  25 ea ff eb                                      bl #0x797124
0079c88c  0a 30 95 e7                                      ldr r3, [r5, sl]
0079c890  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0079c894  0d 60 a0 e1                                      mov r6, sp
0079c898  00 30 93 e5                                      ldr r3, [r3]
0079c89c  04 00 a0 e1                                      mov r0, r4
0079c8a0  03 00 52 e1                                      cmp r2, r3
0079c8a4  11 00 00 1a                                      bne #0x79c8f0
0079c8a8  90 d0 8d e2                                      add sp, sp, #0x90
0079c8ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0079c8b0  84 00 9d e5                                      ldr r0, [sp, #0x84]
0079c8b4  80 10 9d e5                                      ldr r1, [sp, #0x80]
0079c8b8  9e d8 fe eb                                      bl #0x752b38
0079c8bc  a4 ff ff ea                                      b #0x79c754
0079c8c0  70 00 9d e5                                      ldr r0, [sp, #0x70]
0079c8c4  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
0079c8c8  9a d8 fe eb                                      bl #0x752b38
0079c8cc  b6 ff ff ea                                      b #0x79c7ac
0079c8d0  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0079c8d4  58 10 9d e5                                      ldr r1, [sp, #0x58]
0079c8d8  96 d8 fe eb                                      bl #0x752b38
0079c8dc  c8 ff ff ea                                      b #0x79c804
0079c8e0  48 00 9d e5                                      ldr r0, [sp, #0x48]
0079c8e4  44 10 9d e5                                      ldr r1, [sp, #0x44]
0079c8e8  92 d8 fe eb                                      bl #0x752b38
0079c8ec  da ff ff ea                                      b #0x79c85c
0079c8f0  86 c6 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0079c8f4  14 84 1f 00 ac 40 00 00 98 3c 00 00 58 da 16 00  .byte 0x14, 0x84, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0x3c, 0x00, 0x00, 0x58, 0xda, 0x16, 0x00
0079c904  e8 1c 00 00 10 da 16 00 88 1e 00 00 c0 d9 16 00  .byte 0xe8, 0x1c, 0x00, 0x00, 0x10, 0xda, 0x16, 0x00, 0x88, 0x1e, 0x00, 0x00, 0xc0, 0xd9, 0x16, 0x00
0079c914  20 44 00 00 78 d9 16 00 38 0a 00 00 54 36 00 00  .byte 0x20, 0x44, 0x00, 0x00, 0x78, 0xd9, 0x16, 0x00, 0x38, 0x0a, 0x00, 0x00, 0x54, 0x36, 0x00, 0x00
