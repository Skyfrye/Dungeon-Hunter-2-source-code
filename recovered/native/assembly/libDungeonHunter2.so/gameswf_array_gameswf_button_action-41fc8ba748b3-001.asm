; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c7264, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::button_action>
; alias: _ZN7gameswf5arrayINS_13button_actionEE7reserveEi
; demangled: gameswf::array<gameswf::button_action>::reserve(int)
; decoder-mode: arm
007c7264  10 40 2d e9                                      push {r4, lr}
007c7268  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007c726c  00 40 a0 e1                                      mov r4, r0
007c7270  00 00 53 e3                                      cmp r3, #0
007c7274  11 00 00 1a                                      bne #0x7c72c0
007c7278  00 00 51 e3                                      cmp r1, #0
007c727c  08 20 90 e5                                      ldr r2, [r0, #8]
007c7280  08 10 80 e5                                      str r1, [r0, #8]
007c7284  0e 00 00 1a                                      bne #0x7c72c4
007c7288  00 00 90 e5                                      ldr r0, [r0]
007c728c  00 00 50 e3                                      cmp r0, #0
007c7290  02 00 00 0a                                      beq #0x7c72a0
007c7294  14 10 a0 e3                                      mov r1, #0x14
007c7298  91 02 01 e0                                      mul r1, r1, r2
007c729c  25 2e fe eb                                      bl #0x752b38
007c72a0  00 30 a0 e3                                      mov r3, #0
007c72a4  00 30 84 e5                                      str r3, [r4]
007c72a8  10 80 bd e8                                      pop {r4, pc}
007c72ac  14 00 a0 e3                                      mov r0, #0x14
007c72b0  90 01 00 e0                                      mul r0, r0, r1
007c72b4  0c 10 a0 e1                                      mov r1, ip
007c72b8  37 2e fe eb                                      bl #0x752b9c
007c72bc  00 00 84 e5                                      str r0, [r4]
007c72c0  10 80 bd e8                                      pop {r4, pc}
007c72c4  00 c0 90 e5                                      ldr ip, [r0]
007c72c8  00 00 5c e3                                      cmp ip, #0
007c72cc  f6 ff ff 0a                                      beq #0x7c72ac
007c72d0  14 e0 a0 e3                                      mov lr, #0x14
007c72d4  9e 02 02 e0                                      mul r2, lr, r2
007c72d8  0c 00 a0 e1                                      mov r0, ip
007c72dc  9e 01 01 e0                                      mul r1, lr, r1
007c72e0  31 2e fe eb                                      bl #0x752bac
007c72e4  00 00 84 e5                                      str r0, [r4]
007c72e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c76c4, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::array<gameswf::button_action>
; alias: _ZN7gameswf5arrayINS_13button_actionEE6resizeEi
; demangled: gameswf::array<gameswf::button_action>::resize(int)
; decoder-mode: arm
007c76c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c76c8  04 60 90 e5                                      ldr r6, [r0, #4]
007c76cc  00 40 a0 e1                                      mov r4, r0
007c76d0  01 50 a0 e1                                      mov r5, r1
007c76d4  01 00 56 e1                                      cmp r6, r1
007c76d8  09 00 00 da                                      ble #0x7c7704
007c76dc  14 80 a0 e3                                      mov r8, #0x14
007c76e0  98 01 08 e0                                      mul r8, r8, r1
007c76e4  01 70 a0 e1                                      mov r7, r1
007c76e8  00 00 94 e5                                      ldr r0, [r4]
007c76ec  01 70 87 e2                                      add r7, r7, #1
007c76f0  08 00 80 e0                                      add r0, r0, r8
007c76f4  c6 ff ff eb                                      bl #0x7c7614
007c76f8  06 00 57 e1                                      cmp r7, r6
007c76fc  14 80 88 e2                                      add r8, r8, #0x14
007c7700  f8 ff ff 1a                                      bne #0x7c76e8
007c7704  00 00 55 e3                                      cmp r5, #0
007c7708  02 00 00 0a                                      beq #0x7c7718
007c770c  08 30 94 e5                                      ldr r3, [r4, #8]
007c7710  03 00 55 e1                                      cmp r5, r3
007c7714  11 00 00 ca                                      bgt #0x7c7760
007c7718  05 00 56 e1                                      cmp r6, r5
007c771c  0d 00 00 aa                                      bge #0x7c7758
007c7720  14 10 a0 e3                                      mov r1, #0x14
007c7724  91 06 01 e0                                      mul r1, r1, r6
007c7728  00 30 a0 e3                                      mov r3, #0
007c772c  00 00 94 e5                                      ldr r0, [r4]
007c7730  01 60 86 e2                                      add r6, r6, #1
007c7734  05 00 56 e1                                      cmp r6, r5
007c7738  01 20 80 e0                                      add r2, r0, r1
007c773c  01 30 80 e7                                      str r3, [r0, r1]
007c7740  10 30 c2 e5                                      strb r3, [r2, #0x10]
007c7744  04 30 82 e5                                      str r3, [r2, #4]
007c7748  08 30 82 e5                                      str r3, [r2, #8]
007c774c  0c 30 82 e5                                      str r3, [r2, #0xc]
007c7750  14 10 81 e2                                      add r1, r1, #0x14
007c7754  f4 ff ff 1a                                      bne #0x7c772c
007c7758  04 50 84 e5                                      str r5, [r4, #4]
007c775c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c7760  04 00 a0 e1                                      mov r0, r4
007c7764  c5 10 85 e0                                      add r1, r5, r5, asr #1
007c7768  bd fe ff eb                                      bl #0x7c7264
007c776c  e9 ff ff ea                                      b #0x7c7718
