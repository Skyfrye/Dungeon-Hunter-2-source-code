; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a72d0, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_transform
; alias: _ZNK7gameswf12as_transform2isEi
; demangled: gameswf::as_transform::is(int) const
; decoder-mode: arm
007a72d0  1b 00 51 e3                                      cmp r1, #0x1b
007a72d4  01 00 a0 03                                      moveq r0, #1
007a72d8  1e ff 2f 01                                      bxeq lr
007a72dc  01 00 71 e2                                      rsbs r0, r1, #1
007a72e0  00 00 a0 33                                      movlo r0, #0
007a72e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a72e8, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::as_transform
; alias: _ZN7gameswf12as_transformD1Ev
; demangled: gameswf::as_transform::~as_transform()
; decoder-mode: arm
007a72e8  10 40 2d e9                                      push {r4, lr}
007a72ec  48 30 9f e5                                      ldr r3, [pc, #0x48]
007a72f0  48 20 9f e5                                      ldr r2, [pc, #0x48]
007a72f4  00 40 a0 e1                                      mov r4, r0
007a72f8  03 30 8f e0                                      add r3, pc, r3
007a72fc  38 00 90 e5                                      ldr r0, [r0, #0x38]
007a7300  02 20 93 e7                                      ldr r2, [r3, r2]
007a7304  00 00 50 e3                                      cmp r0, #0
007a7308  08 20 82 e2                                      add r2, r2, #8
007a730c  00 20 84 e5                                      str r2, [r4]
007a7310  05 00 00 0a                                      beq #0x7a732c
007a7314  00 10 90 e5                                      ldr r1, [r0]
007a7318  01 10 41 e2                                      sub r1, r1, #1
007a731c  00 00 51 e3                                      cmp r1, #0
007a7320  00 10 80 e5                                      str r1, [r0]
007a7324  00 00 00 1a                                      bne #0x7a732c
007a7328  02 ae fe eb                                      bl #0x752b38
007a732c  04 00 a0 e1                                      mov r0, r4
007a7330  d9 09 ff eb                                      bl #0x769a9c
007a7334  04 00 a0 e1                                      mov r0, r4
007a7338  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a733c  98 d7 1e 00 40 16 00 00                          .byte 0x98, 0xd7, 0x1e, 0x00, 0x40, 0x16, 0x00, 0x00

; FUNCTION 0x007a7344, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_transform
; alias: _ZN7gameswf12as_transformD0Ev
; demangled: gameswf::as_transform::~as_transform()
; decoder-mode: arm
007a7344  10 40 2d e9                                      push {r4, lr}
007a7348  00 40 a0 e1                                      mov r4, r0
007a734c  e5 ff ff eb                                      bl #0x7a72e8
007a7350  04 00 a0 e1                                      mov r0, r4
007a7354  d5 9b ed eb                                      bl #0x30e2b0
007a7358  04 00 a0 e1                                      mov r0, r4
007a735c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a7360, declared_size=340, range_size=340, mode=arm
; class-group: gameswf::as_transform
; alias: _ZN7gameswf12as_transform10set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::as_transform::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
007a7360  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a7364  00 50 a0 e1                                      mov r5, r0
007a7368  01 00 a0 e1                                      mov r0, r1
007a736c  01 40 a0 e1                                      mov r4, r1
007a7370  02 70 a0 e1                                      mov r7, r2
007a7374  2d 2b ff eb                                      bl #0x772030
007a7378  2a 00 40 e2                                      sub r0, r0, #0x2a
007a737c  03 00 50 e3                                      cmp r0, #3
007a7380  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
007a7384  45 00 00 ea                                      b #0x7a74a0
007a7388  23 00 00 ea                                      b #0x7a741c
007a738c  20 00 00 ea                                      b #0x7a7414
007a7390  00 00 00 ea                                      b #0x7a7398
007a7394  1e 00 00 ea                                      b #0x7a7414
007a7398  d1 30 d7 e1                                      ldrsb r3, [r7, #1]
007a739c  05 00 53 e3                                      cmp r3, #5
007a73a0  1b 00 00 1a                                      bne #0x7a7414
007a73a4  04 60 97 e5                                      ldr r6, [r7, #4]
007a73a8  00 00 56 e3                                      cmp r6, #0
007a73ac  18 00 00 0a                                      beq #0x7a7414
007a73b0  00 30 96 e5                                      ldr r3, [r6]
007a73b4  06 00 a0 e1                                      mov r0, r6
007a73b8  1c 10 a0 e3                                      mov r1, #0x1c
007a73bc  0f e0 a0 e1                                      mov lr, pc
007a73c0  08 f0 93 e5                                      ldr pc, [r3, #8]
007a73c4  00 00 50 e3                                      cmp r0, #0
007a73c8  11 00 00 0a                                      beq #0x7a7414
007a73cc  04 10 a0 e1                                      mov r1, r4
007a73d0  07 20 a0 e1                                      mov r2, r7
007a73d4  05 00 a0 e1                                      mov r0, r5
007a73d8  80 13 ff eb                                      bl #0x76c1e0
007a73dc  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
007a73e0  00 00 50 e3                                      cmp r0, #0
007a73e4  08 00 00 0a                                      beq #0x7a740c
007a73e8  38 30 95 e5                                      ldr r3, [r5, #0x38]
007a73ec  04 40 d3 e5                                      ldrb r4, [r3, #4]
007a73f0  00 00 54 e3                                      cmp r4, #0
007a73f4  04 00 00 1a                                      bne #0x7a740c
007a73f8  38 00 85 e2                                      add r0, r5, #0x38
007a73fc  04 10 a0 e1                                      mov r1, r4
007a7400  9f e2 f1 eb                                      bl #0x41fe84
007a7404  3c 40 85 e5                                      str r4, [r5, #0x3c]
007a7408  04 00 a0 e1                                      mov r0, r4
007a740c  38 10 86 e2                                      add r1, r6, #0x38
007a7410  51 b0 fe eb                                      bl #0x75355c
007a7414  01 00 a0 e3                                      mov r0, #1
007a7418  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a741c  d1 30 d7 e1                                      ldrsb r3, [r7, #1]
007a7420  05 00 53 e3                                      cmp r3, #5
007a7424  fa ff ff 1a                                      bne #0x7a7414
007a7428  04 60 97 e5                                      ldr r6, [r7, #4]
007a742c  00 00 56 e3                                      cmp r6, #0
007a7430  f7 ff ff 0a                                      beq #0x7a7414
007a7434  00 30 96 e5                                      ldr r3, [r6]
007a7438  06 00 a0 e1                                      mov r0, r6
007a743c  1a 10 a0 e3                                      mov r1, #0x1a
007a7440  0f e0 a0 e1                                      mov lr, pc
007a7444  08 f0 93 e5                                      ldr pc, [r3, #8]
007a7448  00 00 50 e3                                      cmp r0, #0
007a744c  f0 ff ff 0a                                      beq #0x7a7414
007a7450  04 10 a0 e1                                      mov r1, r4
007a7454  07 20 a0 e1                                      mov r2, r7
007a7458  05 00 a0 e1                                      mov r0, r5
007a745c  5f 13 ff eb                                      bl #0x76c1e0
007a7460  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
007a7464  00 00 50 e3                                      cmp r0, #0
007a7468  08 00 00 0a                                      beq #0x7a7490
007a746c  38 30 95 e5                                      ldr r3, [r5, #0x38]
007a7470  04 40 d3 e5                                      ldrb r4, [r3, #4]
007a7474  00 00 54 e3                                      cmp r4, #0
007a7478  04 00 00 1a                                      bne #0x7a7490
007a747c  38 00 85 e2                                      add r0, r5, #0x38
007a7480  04 10 a0 e1                                      mov r1, r4
007a7484  7e e2 f1 eb                                      bl #0x41fe84
007a7488  3c 40 85 e5                                      str r4, [r5, #0x3c]
007a748c  04 00 a0 e1                                      mov r0, r4
007a7490  38 10 86 e2                                      add r1, r6, #0x38
007a7494  57 ab f1 eb                                      bl #0x4121f8
007a7498  01 00 a0 e3                                      mov r0, #1
007a749c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a74a0  05 00 a0 e1                                      mov r0, r5
007a74a4  04 10 a0 e1                                      mov r1, r4
007a74a8  07 20 a0 e1                                      mov r2, r7
007a74ac  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007a74b0  4a 13 ff ea                                      b #0x76c1e0

; FUNCTION 0x007a74b4, declared_size=268, range_size=268, mode=arm
; class-group: gameswf::as_transform
; alias: _ZN7gameswf12as_transform10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::as_transform::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
007a74b4  70 40 2d e9                                      push {r4, r5, r6, lr}
007a74b8  00 40 a0 e1                                      mov r4, r0
007a74bc  01 00 a0 e1                                      mov r0, r1
007a74c0  01 60 a0 e1                                      mov r6, r1
007a74c4  02 50 a0 e1                                      mov r5, r2
007a74c8  d8 2a ff eb                                      bl #0x772030
007a74cc  2b 00 50 e3                                      cmp r0, #0x2b
007a74d0  06 00 00 0a                                      beq #0x7a74f0
007a74d4  2d 00 50 e3                                      cmp r0, #0x2d
007a74d8  0a 00 00 0a                                      beq #0x7a7508
007a74dc  04 00 a0 e1                                      mov r0, r4
007a74e0  06 10 a0 e1                                      mov r1, r6
007a74e4  05 20 a0 e1                                      mov r2, r5
007a74e8  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a74ec  18 07 ff ea                                      b #0x769154
007a74f0  04 00 a0 e1                                      mov r0, r4
007a74f4  06 10 a0 e1                                      mov r1, r6
007a74f8  05 20 a0 e1                                      mov r2, r5
007a74fc  14 07 ff eb                                      bl #0x769154
007a7500  01 00 a0 e3                                      mov r0, #1
007a7504  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a7508  06 10 a0 e1                                      mov r1, r6
007a750c  04 00 a0 e1                                      mov r0, r4
007a7510  05 20 a0 e1                                      mov r2, r5
007a7514  0e 07 ff eb                                      bl #0x769154
007a7518  00 00 50 e3                                      cmp r0, #0
007a751c  f7 ff ff 0a                                      beq #0x7a7500
007a7520  d1 30 d5 e1                                      ldrsb r3, [r5, #1]
007a7524  05 00 53 e3                                      cmp r3, #5
007a7528  f4 ff ff 1a                                      bne #0x7a7500
007a752c  04 50 95 e5                                      ldr r5, [r5, #4]
007a7530  00 00 55 e3                                      cmp r5, #0
007a7534  f1 ff ff 0a                                      beq #0x7a7500
007a7538  00 30 95 e5                                      ldr r3, [r5]
007a753c  05 00 a0 e1                                      mov r0, r5
007a7540  1c 10 a0 e3                                      mov r1, #0x1c
007a7544  0f e0 a0 e1                                      mov lr, pc
007a7548  08 f0 93 e5                                      ldr pc, [r3, #8]
007a754c  00 00 50 e3                                      cmp r0, #0
007a7550  ea ff ff 0a                                      beq #0x7a7500
007a7554  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007a7558  00 00 50 e3                                      cmp r0, #0
007a755c  03 00 00 0a                                      beq #0x7a7570
007a7560  38 30 94 e5                                      ldr r3, [r4, #0x38]
007a7564  04 20 d3 e5                                      ldrb r2, [r3, #4]
007a7568  00 00 52 e3                                      cmp r2, #0
007a756c  08 00 00 0a                                      beq #0x7a7594
007a7570  52 b2 fe eb                                      bl #0x753ec0
007a7574  38 c0 85 e2                                      add ip, r5, #0x38
007a7578  00 40 a0 e1                                      mov r4, r0
007a757c  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
007a7580  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007a7584  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
007a7588  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007a758c  01 00 a0 e3                                      mov r0, #1
007a7590  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a7594  00 10 93 e5                                      ldr r1, [r3]
007a7598  01 10 41 e2                                      sub r1, r1, #1
007a759c  00 00 51 e3                                      cmp r1, #0
007a75a0  00 10 83 e5                                      str r1, [r3]
007a75a4  01 00 00 1a                                      bne #0x7a75b0
007a75a8  03 00 a0 e1                                      mov r0, r3
007a75ac  61 ad fe eb                                      bl #0x752b38
007a75b0  00 00 a0 e3                                      mov r0, #0
007a75b4  3c 00 84 e5                                      str r0, [r4, #0x3c]
007a75b8  38 00 84 e5                                      str r0, [r4, #0x38]
007a75bc  eb ff ff ea                                      b #0x7a7570

; FUNCTION 0x007a75c0, declared_size=1228, range_size=1228, mode=arm
; class-group: gameswf::as_transform
; alias: _ZN7gameswf12as_transform4initEv
; demangled: gameswf::as_transform::init()
; decoder-mode: arm
007a75c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007a75c4  a8 54 9f e5                                      ldr r5, [pc, #0x4a8]
007a75c8  a8 74 9f e5                                      ldr r7, [pc, #0x4a8]
007a75cc  a8 14 9f e5                                      ldr r1, [pc, #0x4a8]
007a75d0  05 50 8f e0                                      add r5, pc, r5
007a75d4  07 30 95 e7                                      ldr r3, [r5, r7]
007a75d8  88 d0 4d e2                                      sub sp, sp, #0x88
007a75dc  70 80 8d e2                                      add r8, sp, #0x70
007a75e0  00 30 93 e5                                      ldr r3, [r3]
007a75e4  00 40 a0 e1                                      mov r4, r0
007a75e8  01 10 8f e0                                      add r1, pc, r1
007a75ec  08 00 a0 e1                                      mov r0, r8
007a75f0  84 30 8d e5                                      str r3, [sp, #0x84]
007a75f4  20 b1 f1 eb                                      bl #0x413a7c
007a75f8  30 a0 94 e5                                      ldr sl, [r4, #0x30]
007a75fc  00 00 5a e3                                      cmp sl, #0
007a7600  03 00 00 0a                                      beq #0x7a7614
007a7604  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007a7608  04 30 d0 e5                                      ldrb r3, [r0, #4]
007a760c  00 00 53 e3                                      cmp r3, #0
007a7610  b4 00 00 0a                                      beq #0x7a78e8
007a7614  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
007a7618  00 00 53 e3                                      cmp r3, #0
007a761c  03 00 00 0a                                      beq #0x7a7630
007a7620  38 00 94 e5                                      ldr r0, [r4, #0x38]
007a7624  04 20 d0 e5                                      ldrb r2, [r0, #4]
007a7628  00 00 52 e3                                      cmp r2, #0
007a762c  f5 00 00 0a                                      beq #0x7a7a08
007a7630  00 10 a0 e3                                      mov r1, #0
007a7634  58 00 a0 e3                                      mov r0, #0x58
007a7638  48 90 93 e5                                      ldr sb, [r3, #0x48]
007a763c  59 ad fe eb                                      bl #0x752ba8
007a7640  0a 10 a0 e1                                      mov r1, sl
007a7644  09 20 a0 e1                                      mov r2, sb
007a7648  00 60 a0 e1                                      mov r6, r0
007a764c  71 c8 00 eb                                      bl #0x7d9818
007a7650  00 30 a0 e3                                      mov r3, #0
007a7654  28 30 cd e5                                      strb r3, [sp, #0x28]
007a7658  00 00 56 e3                                      cmp r6, #0
007a765c  05 30 a0 e3                                      mov r3, #5
007a7660  29 30 cd e5                                      strb r3, [sp, #0x29]
007a7664  2c 60 8d e5                                      str r6, [sp, #0x2c]
007a7668  01 00 00 0a                                      beq #0x7a7674
007a766c  06 00 a0 e1                                      mov r0, r6
007a7670  7b c9 fe eb                                      bl #0x759c64
007a7674  28 60 8d e2                                      add r6, sp, #0x28
007a7678  08 10 a0 e1                                      mov r1, r8
007a767c  06 20 a0 e1                                      mov r2, r6
007a7680  04 00 a0 e1                                      mov r0, r4
007a7684  32 05 ff eb                                      bl #0x768b54
007a7688  06 00 a0 e1                                      mov r0, r6
007a768c  a4 be ff eb                                      bl #0x797124
007a7690  d0 37 dd e1                                      ldrsb r3, [sp, #0x70]
007a7694  01 00 73 e3                                      cmn r3, #1
007a7698  e8 00 00 0a                                      beq #0x7a7a40
007a769c  dc 13 9f e5                                      ldr r1, [pc, #0x3dc]
007a76a0  5c 80 8d e2                                      add r8, sp, #0x5c
007a76a4  08 00 a0 e1                                      mov r0, r8
007a76a8  01 10 8f e0                                      add r1, pc, r1
007a76ac  f2 b0 f1 eb                                      bl #0x413a7c
007a76b0  30 a0 94 e5                                      ldr sl, [r4, #0x30]
007a76b4  00 00 5a e3                                      cmp sl, #0
007a76b8  03 00 00 0a                                      beq #0x7a76cc
007a76bc  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007a76c0  04 30 d0 e5                                      ldrb r3, [r0, #4]
007a76c4  00 00 53 e3                                      cmp r3, #0
007a76c8  c4 00 00 0a                                      beq #0x7a79e0
007a76cc  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007a76d0  00 00 50 e3                                      cmp r0, #0
007a76d4  03 00 00 0a                                      beq #0x7a76e8
007a76d8  38 30 94 e5                                      ldr r3, [r4, #0x38]
007a76dc  04 20 d3 e5                                      ldrb r2, [r3, #4]
007a76e0  00 00 52 e3                                      cmp r2, #0
007a76e4  b2 00 00 0a                                      beq #0x7a79b4
007a76e8  f4 b1 fe eb                                      bl #0x753ec0
007a76ec  00 10 a0 e3                                      mov r1, #0
007a76f0  00 90 a0 e1                                      mov sb, r0
007a76f4  58 00 a0 e3                                      mov r0, #0x58
007a76f8  2a ad fe eb                                      bl #0x752ba8
007a76fc  0a 10 a0 e1                                      mov r1, sl
007a7700  09 20 a0 e1                                      mov r2, sb
007a7704  00 60 a0 e1                                      mov r6, r0
007a7708  42 c8 00 eb                                      bl #0x7d9818
007a770c  00 30 a0 e3                                      mov r3, #0
007a7710  1c 30 cd e5                                      strb r3, [sp, #0x1c]
007a7714  00 00 56 e3                                      cmp r6, #0
007a7718  05 30 a0 e3                                      mov r3, #5
007a771c  1d 30 cd e5                                      strb r3, [sp, #0x1d]
007a7720  20 60 8d e5                                      str r6, [sp, #0x20]
007a7724  01 00 00 0a                                      beq #0x7a7730
007a7728  06 00 a0 e1                                      mov r0, r6
007a772c  4c c9 fe eb                                      bl #0x759c64
007a7730  1c 60 8d e2                                      add r6, sp, #0x1c
007a7734  08 10 a0 e1                                      mov r1, r8
007a7738  06 20 a0 e1                                      mov r2, r6
007a773c  04 00 a0 e1                                      mov r0, r4
007a7740  03 05 ff eb                                      bl #0x768b54
007a7744  06 00 a0 e1                                      mov r0, r6
007a7748  75 be ff eb                                      bl #0x797124
007a774c  dc 35 dd e1                                      ldrsb r3, [sp, #0x5c]
007a7750  01 00 73 e3                                      cmn r3, #1
007a7754  bd 00 00 0a                                      beq #0x7a7a50
007a7758  24 13 9f e5                                      ldr r1, [pc, #0x324]
007a775c  48 80 8d e2                                      add r8, sp, #0x48
007a7760  08 00 a0 e1                                      mov r0, r8
007a7764  01 10 8f e0                                      add r1, pc, r1
007a7768  c3 b0 f1 eb                                      bl #0x413a7c
007a776c  30 a0 94 e5                                      ldr sl, [r4, #0x30]
007a7770  00 00 5a e3                                      cmp sl, #0
007a7774  03 00 00 0a                                      beq #0x7a7788
007a7778  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007a777c  04 30 d0 e5                                      ldrb r3, [r0, #4]
007a7780  00 00 53 e3                                      cmp r3, #0
007a7784  80 00 00 0a                                      beq #0x7a798c
007a7788  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
007a778c  00 00 53 e3                                      cmp r3, #0
007a7790  03 00 00 0a                                      beq #0x7a77a4
007a7794  38 00 94 e5                                      ldr r0, [r4, #0x38]
007a7798  04 20 d0 e5                                      ldrb r2, [r0, #4]
007a779c  00 00 52 e3                                      cmp r2, #0
007a77a0  6f 00 00 0a                                      beq #0x7a7964
007a77a4  00 10 a0 e3                                      mov r1, #0
007a77a8  50 00 a0 e3                                      mov r0, #0x50
007a77ac  4c 90 93 e5                                      ldr sb, [r3, #0x4c]
007a77b0  fc ac fe eb                                      bl #0x752ba8
007a77b4  0a 10 a0 e1                                      mov r1, sl
007a77b8  09 20 a0 e1                                      mov r2, sb
007a77bc  00 60 a0 e1                                      mov r6, r0
007a77c0  f5 e7 ff eb                                      bl #0x7a179c
007a77c4  00 30 a0 e3                                      mov r3, #0
007a77c8  10 30 cd e5                                      strb r3, [sp, #0x10]
007a77cc  00 00 56 e3                                      cmp r6, #0
007a77d0  05 30 a0 e3                                      mov r3, #5
007a77d4  11 30 cd e5                                      strb r3, [sp, #0x11]
007a77d8  14 60 8d e5                                      str r6, [sp, #0x14]
007a77dc  01 00 00 0a                                      beq #0x7a77e8
007a77e0  06 00 a0 e1                                      mov r0, r6
007a77e4  1e c9 fe eb                                      bl #0x759c64
007a77e8  10 60 8d e2                                      add r6, sp, #0x10
007a77ec  08 10 a0 e1                                      mov r1, r8
007a77f0  06 20 a0 e1                                      mov r2, r6
007a77f4  04 00 a0 e1                                      mov r0, r4
007a77f8  d5 04 ff eb                                      bl #0x768b54
007a77fc  06 00 a0 e1                                      mov r0, r6
007a7800  47 be ff eb                                      bl #0x797124
007a7804  d8 34 dd e1                                      ldrsb r3, [sp, #0x48]
007a7808  01 00 73 e3                                      cmn r3, #1
007a780c  93 00 00 0a                                      beq #0x7a7a60
007a7810  70 12 9f e5                                      ldr r1, [pc, #0x270]
007a7814  34 80 8d e2                                      add r8, sp, #0x34
007a7818  08 00 a0 e1                                      mov r0, r8
007a781c  01 10 8f e0                                      add r1, pc, r1
007a7820  95 b0 f1 eb                                      bl #0x413a7c
007a7824  30 a0 94 e5                                      ldr sl, [r4, #0x30]
007a7828  00 00 5a e3                                      cmp sl, #0
007a782c  03 00 00 0a                                      beq #0x7a7840
007a7830  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007a7834  04 30 d0 e5                                      ldrb r3, [r0, #4]
007a7838  00 00 53 e3                                      cmp r3, #0
007a783c  3e 00 00 0a                                      beq #0x7a793c
007a7840  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007a7844  00 00 50 e3                                      cmp r0, #0
007a7848  03 00 00 0a                                      beq #0x7a785c
007a784c  38 30 94 e5                                      ldr r3, [r4, #0x38]
007a7850  04 20 d3 e5                                      ldrb r2, [r3, #4]
007a7854  00 00 52 e3                                      cmp r2, #0
007a7858  2c 00 00 0a                                      beq #0x7a7910
007a785c  c4 b1 fe eb                                      bl #0x753f74
007a7860  00 10 a0 e3                                      mov r1, #0
007a7864  00 90 a0 e1                                      mov sb, r0
007a7868  50 00 a0 e3                                      mov r0, #0x50
007a786c  cd ac fe eb                                      bl #0x752ba8
007a7870  0a 10 a0 e1                                      mov r1, sl
007a7874  09 20 a0 e1                                      mov r2, sb
007a7878  00 60 a0 e1                                      mov r6, r0
007a787c  c6 e7 ff eb                                      bl #0x7a179c
007a7880  00 30 a0 e3                                      mov r3, #0
007a7884  04 30 cd e5                                      strb r3, [sp, #4]
007a7888  00 00 56 e3                                      cmp r6, #0
007a788c  05 30 a0 e3                                      mov r3, #5
007a7890  05 30 cd e5                                      strb r3, [sp, #5]
007a7894  08 60 8d e5                                      str r6, [sp, #8]
007a7898  01 00 00 0a                                      beq #0x7a78a4
007a789c  06 00 a0 e1                                      mov r0, r6
007a78a0  ef c8 fe eb                                      bl #0x759c64
007a78a4  04 60 8d e2                                      add r6, sp, #4
007a78a8  08 10 a0 e1                                      mov r1, r8
007a78ac  04 00 a0 e1                                      mov r0, r4
007a78b0  06 20 a0 e1                                      mov r2, r6
007a78b4  a6 04 ff eb                                      bl #0x768b54
007a78b8  06 00 a0 e1                                      mov r0, r6
007a78bc  18 be ff eb                                      bl #0x797124
007a78c0  d4 33 dd e1                                      ldrsb r3, [sp, #0x34]
007a78c4  01 00 73 e3                                      cmn r3, #1
007a78c8  58 00 00 0a                                      beq #0x7a7a30
007a78cc  07 30 95 e7                                      ldr r3, [r5, r7]
007a78d0  84 20 9d e5                                      ldr r2, [sp, #0x84]
007a78d4  00 30 93 e5                                      ldr r3, [r3]
007a78d8  03 00 52 e1                                      cmp r2, r3
007a78dc  63 00 00 1a                                      bne #0x7a7a70
007a78e0  88 d0 8d e2                                      add sp, sp, #0x88
007a78e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007a78e8  00 10 90 e5                                      ldr r1, [r0]
007a78ec  01 10 41 e2                                      sub r1, r1, #1
007a78f0  00 00 51 e3                                      cmp r1, #0
007a78f4  00 10 80 e5                                      str r1, [r0]
007a78f8  00 00 00 1a                                      bne #0x7a7900
007a78fc  8d ac fe eb                                      bl #0x752b38
007a7900  00 a0 a0 e3                                      mov sl, #0
007a7904  2c a0 84 e5                                      str sl, [r4, #0x2c]
007a7908  30 a0 84 e5                                      str sl, [r4, #0x30]
007a790c  40 ff ff ea                                      b #0x7a7614
007a7910  00 10 93 e5                                      ldr r1, [r3]
007a7914  01 10 41 e2                                      sub r1, r1, #1
007a7918  00 00 51 e3                                      cmp r1, #0
007a791c  00 10 83 e5                                      str r1, [r3]
007a7920  01 00 00 1a                                      bne #0x7a792c
007a7924  03 00 a0 e1                                      mov r0, r3
007a7928  82 ac fe eb                                      bl #0x752b38
007a792c  00 00 a0 e3                                      mov r0, #0
007a7930  38 00 84 e5                                      str r0, [r4, #0x38]
007a7934  3c 00 84 e5                                      str r0, [r4, #0x3c]
007a7938  c7 ff ff ea                                      b #0x7a785c
007a793c  00 10 90 e5                                      ldr r1, [r0]
007a7940  01 10 41 e2                                      sub r1, r1, #1
007a7944  00 00 51 e3                                      cmp r1, #0
007a7948  00 10 80 e5                                      str r1, [r0]
007a794c  00 00 00 1a                                      bne #0x7a7954
007a7950  78 ac fe eb                                      bl #0x752b38
007a7954  00 a0 a0 e3                                      mov sl, #0
007a7958  2c a0 84 e5                                      str sl, [r4, #0x2c]
007a795c  30 a0 84 e5                                      str sl, [r4, #0x30]
007a7960  b6 ff ff ea                                      b #0x7a7840
007a7964  00 10 90 e5                                      ldr r1, [r0]
007a7968  01 10 41 e2                                      sub r1, r1, #1
007a796c  00 00 51 e3                                      cmp r1, #0
007a7970  00 10 80 e5                                      str r1, [r0]
007a7974  00 00 00 1a                                      bne #0x7a797c
007a7978  6e ac fe eb                                      bl #0x752b38
007a797c  00 30 a0 e3                                      mov r3, #0
007a7980  38 30 84 e5                                      str r3, [r4, #0x38]
007a7984  3c 30 84 e5                                      str r3, [r4, #0x3c]
007a7988  85 ff ff ea                                      b #0x7a77a4
007a798c  00 10 90 e5                                      ldr r1, [r0]
007a7990  01 10 41 e2                                      sub r1, r1, #1
007a7994  00 00 51 e3                                      cmp r1, #0
007a7998  00 10 80 e5                                      str r1, [r0]
007a799c  00 00 00 1a                                      bne #0x7a79a4
007a79a0  64 ac fe eb                                      bl #0x752b38
007a79a4  00 a0 a0 e3                                      mov sl, #0
007a79a8  2c a0 84 e5                                      str sl, [r4, #0x2c]
007a79ac  30 a0 84 e5                                      str sl, [r4, #0x30]
007a79b0  74 ff ff ea                                      b #0x7a7788
007a79b4  00 10 93 e5                                      ldr r1, [r3]
007a79b8  01 10 41 e2                                      sub r1, r1, #1
007a79bc  00 00 51 e3                                      cmp r1, #0
007a79c0  00 10 83 e5                                      str r1, [r3]
007a79c4  01 00 00 1a                                      bne #0x7a79d0
007a79c8  03 00 a0 e1                                      mov r0, r3
007a79cc  59 ac fe eb                                      bl #0x752b38
007a79d0  00 00 a0 e3                                      mov r0, #0
007a79d4  38 00 84 e5                                      str r0, [r4, #0x38]
007a79d8  3c 00 84 e5                                      str r0, [r4, #0x3c]
007a79dc  41 ff ff ea                                      b #0x7a76e8
007a79e0  00 10 90 e5                                      ldr r1, [r0]
007a79e4  01 10 41 e2                                      sub r1, r1, #1
007a79e8  00 00 51 e3                                      cmp r1, #0
007a79ec  00 10 80 e5                                      str r1, [r0]
007a79f0  00 00 00 1a                                      bne #0x7a79f8
007a79f4  4f ac fe eb                                      bl #0x752b38
007a79f8  00 a0 a0 e3                                      mov sl, #0
007a79fc  2c a0 84 e5                                      str sl, [r4, #0x2c]
007a7a00  30 a0 84 e5                                      str sl, [r4, #0x30]
007a7a04  30 ff ff ea                                      b #0x7a76cc
007a7a08  00 10 90 e5                                      ldr r1, [r0]
007a7a0c  01 10 41 e2                                      sub r1, r1, #1
007a7a10  00 00 51 e3                                      cmp r1, #0
007a7a14  00 10 80 e5                                      str r1, [r0]
007a7a18  00 00 00 1a                                      bne #0x7a7a20
007a7a1c  45 ac fe eb                                      bl #0x752b38
007a7a20  00 30 a0 e3                                      mov r3, #0
007a7a24  38 30 84 e5                                      str r3, [r4, #0x38]
007a7a28  3c 30 84 e5                                      str r3, [r4, #0x3c]
007a7a2c  ff fe ff ea                                      b #0x7a7630
007a7a30  40 00 9d e5                                      ldr r0, [sp, #0x40]
007a7a34  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
007a7a38  3e ac fe eb                                      bl #0x752b38
007a7a3c  a2 ff ff ea                                      b #0x7a78cc
007a7a40  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
007a7a44  78 10 9d e5                                      ldr r1, [sp, #0x78]
007a7a48  3a ac fe eb                                      bl #0x752b38
007a7a4c  12 ff ff ea                                      b #0x7a769c
007a7a50  68 00 9d e5                                      ldr r0, [sp, #0x68]
007a7a54  64 10 9d e5                                      ldr r1, [sp, #0x64]
007a7a58  36 ac fe eb                                      bl #0x752b38
007a7a5c  3d ff ff ea                                      b #0x7a7758
007a7a60  54 00 9d e5                                      ldr r0, [sp, #0x54]
007a7a64  50 10 9d e5                                      ldr r1, [sp, #0x50]
007a7a68  32 ac fe eb                                      bl #0x752b38
007a7a6c  67 ff ff ea                                      b #0x7a7810
007a7a70  26 9a ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007a7a74  c0 d4 1e 00 ac 40 00 00 c0 21 16 00 10 21 16 00  .byte 0xc0, 0xd4, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x21, 0x16, 0x00, 0x10, 0x21, 0x16, 0x00
007a7a84  5c b1 13 00 74 1f 16 00                          .byte 0x5c, 0xb1, 0x13, 0x00, 0x74, 0x1f, 0x16, 0x00

; FUNCTION 0x007a7a8c, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::as_transform
; alias: _ZN7gameswf12as_transformC1EPNS_6playerEPNS_9characterE
; demangled: gameswf::as_transform::as_transform(gameswf::player*, gameswf::character*)
; decoder-mode: arm
007a7a8c  70 40 2d e9                                      push {r4, r5, r6, lr}
007a7a90  44 40 9f e5                                      ldr r4, [pc, #0x44]
007a7a94  00 50 a0 e1                                      mov r5, r0
007a7a98  02 60 a0 e1                                      mov r6, r2
007a7a9c  8f 10 ff eb                                      bl #0x76bce0
007a7aa0  38 30 9f e5                                      ldr r3, [pc, #0x38]
007a7aa4  04 40 8f e0                                      add r4, pc, r4
007a7aa8  00 20 a0 e3                                      mov r2, #0
007a7aac  03 30 94 e7                                      ldr r3, [r4, r3]
007a7ab0  05 00 a0 e1                                      mov r0, r5
007a7ab4  06 10 a0 e1                                      mov r1, r6
007a7ab8  08 30 83 e2                                      add r3, r3, #8
007a7abc  38 30 80 e4                                      str r3, [r0], #0x38
007a7ac0  3c 20 85 e5                                      str r2, [r5, #0x3c]
007a7ac4  38 20 85 e5                                      str r2, [r5, #0x38]
007a7ac8  36 00 f2 eb                                      bl #0x427ba8
007a7acc  05 00 a0 e1                                      mov r0, r5
007a7ad0  ba fe ff eb                                      bl #0x7a75c0
007a7ad4  05 00 a0 e1                                      mov r0, r5
007a7ad8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a7adc  ec cf 1e 00 40 16 00 00                          .byte 0xec, 0xcf, 0x1e, 0x00, 0x40, 0x16, 0x00, 0x00

; FUNCTION 0x007a7bd8, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::as_transform
; alias: _ZN7gameswf12as_transformC2EPNS_6playerEPNS_9characterE
; demangled: gameswf::as_transform::as_transform(gameswf::player*, gameswf::character*)
; decoder-mode: arm
007a7bd8  70 40 2d e9                                      push {r4, r5, r6, lr}
007a7bdc  44 40 9f e5                                      ldr r4, [pc, #0x44]
007a7be0  00 50 a0 e1                                      mov r5, r0
007a7be4  02 60 a0 e1                                      mov r6, r2
007a7be8  3c 10 ff eb                                      bl #0x76bce0
007a7bec  38 30 9f e5                                      ldr r3, [pc, #0x38]
007a7bf0  04 40 8f e0                                      add r4, pc, r4
007a7bf4  00 20 a0 e3                                      mov r2, #0
007a7bf8  03 30 94 e7                                      ldr r3, [r4, r3]
007a7bfc  05 00 a0 e1                                      mov r0, r5
007a7c00  06 10 a0 e1                                      mov r1, r6
007a7c04  08 30 83 e2                                      add r3, r3, #8
007a7c08  38 30 80 e4                                      str r3, [r0], #0x38
007a7c0c  3c 20 85 e5                                      str r2, [r5, #0x3c]
007a7c10  38 20 85 e5                                      str r2, [r5, #0x38]
007a7c14  e3 ff f1 eb                                      bl #0x427ba8
007a7c18  05 00 a0 e1                                      mov r0, r5
007a7c1c  67 fe ff eb                                      bl #0x7a75c0
007a7c20  05 00 a0 e1                                      mov r0, r5
007a7c24  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a7c28  a0 ce 1e 00 40 16 00 00                          .byte 0xa0, 0xce, 0x1e, 0x00, 0x40, 0x16, 0x00, 0x00
