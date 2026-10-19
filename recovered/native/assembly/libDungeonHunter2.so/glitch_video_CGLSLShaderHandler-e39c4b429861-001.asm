; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006df9b8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::CGLSLShaderHandler
; alias: _ZN6glitch5video18CGLSLShaderHandlerC2Ev
; demangled: glitch::video::CGLSLShaderHandler::CGLSLShaderHandler()
; decoder-mode: arm
006df9b8  00 20 a0 e3                                      mov r2, #0
006df9bc  00 20 80 e5                                      str r2, [r0]
006df9c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006df9c4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::CGLSLShaderHandler
; alias: _ZN6glitch5video18CGLSLShaderHandlerC1Ev
; demangled: glitch::video::CGLSLShaderHandler::CGLSLShaderHandler()
; decoder-mode: arm
006df9c4  00 20 a0 e3                                      mov r2, #0
006df9c8  00 20 80 e5                                      str r2, [r0]
006df9cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006df9d0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CGLSLShaderHandler
; alias: _ZN6glitch5video18CGLSLShaderHandler17initShaderHandlerEPNS0_14IShaderManagerE
; demangled: glitch::video::CGLSLShaderHandler::initShaderHandler(glitch::video::IShaderManager*)
; decoder-mode: arm
006df9d0  01 00 a0 e3                                      mov r0, #1
006df9d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006df9f8, declared_size=820, range_size=820, mode=arm
; class-group: glitch::video::CGLSLShaderHandler
; alias: _ZN6glitch5video18CGLSLShaderHandler14doVersionCheckEj
; demangled: glitch::video::CGLSLShaderHandler::doVersionCheck(unsigned int)
; decoder-mode: arm
006df9f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006df9fc  10 43 9f e5                                      ldr r4, [pc, #0x310]
006dfa00  10 53 9f e5                                      ldr r5, [pc, #0x310]
006dfa04  7c d0 4d e2                                      sub sp, sp, #0x7c
006dfa08  04 40 8f e0                                      add r4, pc, r4
006dfa0c  05 30 94 e7                                      ldr r3, [r4, r5]
006dfa10  c7 00 51 e3                                      cmp r1, #0xc7
006dfa14  00 80 a0 e1                                      mov r8, r0
006dfa18  00 30 93 e5                                      ldr r3, [r3]
006dfa1c  00 70 a0 93                                      movls r7, #0
006dfa20  74 30 8d e5                                      str r3, [sp, #0x74]
006dfa24  07 00 00 8a                                      bhi #0x6dfa48
006dfa28  05 30 94 e7                                      ldr r3, [r4, r5]
006dfa2c  74 20 9d e5                                      ldr r2, [sp, #0x74]
006dfa30  07 00 a0 e1                                      mov r0, r7
006dfa34  00 30 93 e5                                      ldr r3, [r3]
006dfa38  03 00 52 e1                                      cmp r2, r3
006dfa3c  b3 00 00 1a                                      bne #0x6dfd10
006dfa40  7c d0 8d e2                                      add sp, sp, #0x7c
006dfa44  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006dfa48  8c 0b 08 e3                                      movw r0, #0x8b8c
006dfa4c  0b ba f0 eb                                      bl #0x30e280
006dfa50  5c 60 8d e2                                      add r6, sp, #0x5c
006dfa54  00 70 a0 e1                                      mov r7, r0
006dfa58  6c 60 8d e5                                      str r6, [sp, #0x6c]
006dfa5c  70 60 8d e5                                      str r6, [sp, #0x70]
006dfa60  fb b8 f0 eb                                      bl #0x30de54
006dfa64  07 10 a0 e1                                      mov r1, r7
006dfa68  00 20 87 e0                                      add r2, r7, r0
006dfa6c  06 00 a0 e1                                      mov r0, r6
006dfa70  5f 19 f1 eb                                      bl #0x325ff4
006dfa74  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006dfa78  70 00 9d e5                                      ldr r0, [sp, #0x70]
006dfa7c  00 00 53 e1                                      cmp r3, r0
006dfa80  26 00 00 0a                                      beq #0x6dfb20
006dfa84  78 20 8d e2                                      add r2, sp, #0x78
006dfa88  2e 10 a0 e3                                      mov r1, #0x2e
006dfa8c  54 10 62 e5                                      strb r1, [r2, #-0x54]!
006dfa90  03 10 a0 e1                                      mov r1, r3
006dfa94  28 30 8d e2                                      add r3, sp, #0x28
006dfa98  59 bc f1 eb                                      bl #0x34ec04
006dfa9c  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
006dfaa0  0c 00 50 e1                                      cmp r0, ip
006dfaa4  50 00 00 0a                                      beq #0x6dfbec
006dfaa8  70 30 9d e5                                      ldr r3, [sp, #0x70]
006dfaac  00 70 63 e0                                      rsb r7, r3, r0
006dfab0  00 00 57 e3                                      cmp r7, #0
006dfab4  19 00 00 da                                      ble #0x6dfb20
006dfab8  0c 20 63 e0                                      rsb r2, r3, ip
006dfabc  02 00 57 e1                                      cmp r7, r2
006dfac0  4b 00 00 3a                                      blo #0x6dfbf4
006dfac4  00 00 e0 e3                                      mvn r0, #0
006dfac8  00 00 57 e1                                      cmp r7, r0
006dfacc  31 00 00 aa                                      bge #0x6dfb98
006dfad0  44 a0 8d e2                                      add sl, sp, #0x44
006dfad4  01 30 67 e2                                      rsb r3, r7, #1
006dfad8  00 30 83 e0                                      add r3, r3, r0
006dfadc  18 c0 8d e2                                      add ip, sp, #0x18
006dfae0  01 20 47 e2                                      sub r2, r7, #1
006dfae4  06 10 a0 e1                                      mov r1, r6
006dfae8  0a 00 a0 e1                                      mov r0, sl
006dfaec  00 c0 8d e5                                      str ip, [sp]
006dfaf0  73 32 fa eb                                      bl #0x56c4c4
006dfaf4  06 00 a0 e1                                      mov r0, r6
006dfaf8  58 10 9d e5                                      ldr r1, [sp, #0x58]
006dfafc  54 20 9d e5                                      ldr r2, [sp, #0x54]
006dfb00  20 04 f1 eb                                      bl #0x320b88
006dfb04  58 00 9d e5                                      ldr r0, [sp, #0x58]
006dfb08  0a 00 50 e1                                      cmp r0, sl
006dfb0c  36 00 00 0a                                      beq #0x6dfbec
006dfb10  00 00 50 e3                                      cmp r0, #0
006dfb14  34 00 00 0a                                      beq #0x6dfbec
006dfb18  4c c2 f0 eb                                      bl #0x310450
006dfb1c  70 30 9d e5                                      ldr r3, [sp, #0x70]
006dfb20  03 00 a0 e1                                      mov r0, r3
006dfb24  0c 10 8d e2                                      add r1, sp, #0xc
006dfb28  26 0c f1 eb                                      bl #0x322bc8
006dfb2c  0c 70 9d e5                                      ldr r7, [sp, #0xc]
006dfb30  07 00 a0 e1                                      mov r0, r7
006dfb34  5f bc f0 eb                                      bl #0x30ecb8
006dfb38  00 10 a0 e1                                      mov r1, r0
006dfb3c  07 00 a0 e1                                      mov r0, r7
006dfb40  19 ba f0 eb                                      bl #0x30e3ac
006dfb44  41 14 a0 e3                                      mov r1, #0x41000000
006dfb48  02 16 81 e2                                      add r1, r1, #0x200000
006dfb4c  86 bc f0 eb                                      bl #0x30ed6c
006dfb50  6f ba f0 eb                                      bl #0x30e514
006dfb54  5c ba f0 eb                                      bl #0x30e4cc
006dfb58  00 a0 a0 e1                                      mov sl, r0
006dfb5c  07 00 a0 e1                                      mov r0, r7
006dfb60  59 ba f0 eb                                      bl #0x30e4cc
006dfb64  64 30 a0 e3                                      mov r3, #0x64
006dfb68  93 a0 2a e0                                      mla sl, r3, r0, sl
006dfb6c  63 00 5a e3                                      cmp sl, #0x63
006dfb70  00 a0 88 e5                                      str sl, [r8]
006dfb74  00 70 a0 93                                      movls r7, #0
006dfb78  2a 00 00 8a                                      bhi #0x6dfc28
006dfb7c  70 00 9d e5                                      ldr r0, [sp, #0x70]
006dfb80  06 00 50 e1                                      cmp r0, r6
006dfb84  a7 ff ff 0a                                      beq #0x6dfa28
006dfb88  00 00 50 e3                                      cmp r0, #0
006dfb8c  a5 ff ff 0a                                      beq #0x6dfa28
006dfb90  2e c2 f0 eb                                      bl #0x310450
006dfb94  a3 ff ff ea                                      b #0x6dfa28
006dfb98  70 30 9d e5                                      ldr r3, [sp, #0x70]
006dfb9c  2c a0 8d e2                                      add sl, sp, #0x2c
006dfba0  06 10 a0 e1                                      mov r1, r6
006dfba4  0c c0 63 e0                                      rsb ip, r3, ip
006dfba8  01 30 8c e2                                      add r3, ip, #1
006dfbac  03 30 67 e0                                      rsb r3, r7, r3
006dfbb0  14 c0 8d e2                                      add ip, sp, #0x14
006dfbb4  01 20 47 e2                                      sub r2, r7, #1
006dfbb8  0a 00 a0 e1                                      mov r0, sl
006dfbbc  00 c0 8d e5                                      str ip, [sp]
006dfbc0  3f 32 fa eb                                      bl #0x56c4c4
006dfbc4  06 00 a0 e1                                      mov r0, r6
006dfbc8  40 10 9d e5                                      ldr r1, [sp, #0x40]
006dfbcc  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006dfbd0  ec 03 f1 eb                                      bl #0x320b88
006dfbd4  40 00 9d e5                                      ldr r0, [sp, #0x40]
006dfbd8  0a 00 50 e1                                      cmp r0, sl
006dfbdc  02 00 00 0a                                      beq #0x6dfbec
006dfbe0  00 00 50 e3                                      cmp r0, #0
006dfbe4  00 00 00 0a                                      beq #0x6dfbec
006dfbe8  18 c2 f0 eb                                      bl #0x310450
006dfbec  70 30 9d e5                                      ldr r3, [sp, #0x70]
006dfbf0  ca ff ff ea                                      b #0x6dfb20
006dfbf4  78 20 8d e2                                      add r2, sp, #0x78
006dfbf8  20 10 a0 e3                                      mov r1, #0x20
006dfbfc  58 10 62 e5                                      strb r1, [r2, #-0x58]!
006dfc00  07 00 83 e0                                      add r0, r3, r7
006dfc04  0c 10 a0 e1                                      mov r1, ip
006dfc08  1c 30 8d e2                                      add r3, sp, #0x1c
006dfc0c  fc bb f1 eb                                      bl #0x34ec04
006dfc10  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
006dfc14  0c 00 50 e1                                      cmp r0, ip
006dfc18  a9 ff ff 0a                                      beq #0x6dfac4
006dfc1c  70 30 9d e5                                      ldr r3, [sp, #0x70]
006dfc20  00 00 63 e0                                      rsb r0, r3, r0
006dfc24  a7 ff ff ea                                      b #0x6dfac8
006dfc28  20 00 a0 e3                                      mov r0, #0x20
006dfc2c  70 52 f9 eb                                      bl #0x5345f4
006dfc30  00 80 a0 e1                                      mov r8, r0
006dfc34  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
006dfc38  e0 a0 9f e5                                      ldr sl, [pc, #0xe0]
006dfc3c  01 20 a0 e3                                      mov r2, #1
006dfc40  70 10 9d e5                                      ldr r1, [sp, #0x70]
006dfc44  00 00 8f e0                                      add r0, pc, r0
006dfc48  26 ac fc eb                                      bl #0x60ace8
006dfc4c  00 70 a0 e3                                      mov r7, #0
006dfc50  78 10 8d e2                                      add r1, sp, #0x78
006dfc54  68 70 21 e5                                      str r7, [r1, #-0x68]!
006dfc58  f9 0d 08 e3                                      movw r0, #0x8df9
006dfc5c  0a a0 8f e0                                      add sl, pc, sl
006dfc60  40 ba f0 eb                                      bl #0x30e568
006dfc64  0a 10 a0 e1                                      mov r1, sl
006dfc68  10 20 9d e5                                      ldr r2, [sp, #0x10]
006dfc6c  08 00 a0 e1                                      mov r0, r8
006dfc70  9b bb f0 eb                                      bl #0x30eae4
006dfc74  a8 00 9f e5                                      ldr r0, [pc, #0xa8]
006dfc78  08 10 a0 e1                                      mov r1, r8
006dfc7c  01 20 a0 e3                                      mov r2, #1
006dfc80  00 00 8f e0                                      add r0, pc, r0
006dfc84  17 ac fc eb                                      bl #0x60ace8
006dfc88  10 00 9d e5                                      ldr r0, [sp, #0x10]
006dfc8c  07 00 50 e1                                      cmp r0, r7
006dfc90  05 00 00 1a                                      bne #0x6dfcac
006dfc94  00 00 58 e3                                      cmp r8, #0
006dfc98  01 00 00 0a                                      beq #0x6dfca4
006dfc9c  08 00 a0 e1                                      mov r0, r8
006dfca0  78 52 f9 eb                                      bl #0x534688
006dfca4  01 70 a0 e3                                      mov r7, #1
006dfca8  b3 ff ff ea                                      b #0x6dfb7c
006dfcac  07 10 a0 e1                                      mov r1, r7
006dfcb0  00 01 a0 e1                                      lsl r0, r0, #2
006dfcb4  3b 51 f9 eb                                      bl #0x5341a8
006dfcb8  00 10 a0 e1                                      mov r1, r0
006dfcbc  00 90 a0 e1                                      mov sb, r0
006dfcc0  f8 0d 08 e3                                      movw r0, #0x8df8
006dfcc4  27 ba f0 eb                                      bl #0x30e568
006dfcc8  10 30 9d e5                                      ldr r3, [sp, #0x10]
006dfccc  07 00 53 e1                                      cmp r3, r7
006dfcd0  ef ff ff da                                      ble #0x6dfc94
006dfcd4  4c b0 9f e5                                      ldr fp, [pc, #0x4c]
006dfcd8  0b b0 8f e0                                      add fp, pc, fp
006dfcdc  07 21 99 e7                                      ldr r2, [sb, r7, lsl #2]
006dfce0  0a 10 a0 e1                                      mov r1, sl
006dfce4  08 00 a0 e1                                      mov r0, r8
006dfce8  7d bb f0 eb                                      bl #0x30eae4
006dfcec  0b 00 a0 e1                                      mov r0, fp
006dfcf0  08 10 a0 e1                                      mov r1, r8
006dfcf4  01 20 a0 e3                                      mov r2, #1
006dfcf8  fa ab fc eb                                      bl #0x60ace8
006dfcfc  10 30 9d e5                                      ldr r3, [sp, #0x10]
006dfd00  01 70 87 e2                                      add r7, r7, #1
006dfd04  07 00 53 e1                                      cmp r3, r7
006dfd08  f3 ff ff ca                                      bgt #0x6dfcdc
006dfd0c  e0 ff ff ea                                      b #0x6dfc94
006dfd10  7e b9 f0 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006dfd14  88 50 2b 00 ac 40 00 00 ac f2 20 00 54 22 1e 00  .byte 0x88, 0x50, 0x2b, 0x00, 0xac, 0x40, 0x00, 0x00, 0xac, 0xf2, 0x20, 0x00, 0x54, 0x22, 0x1e, 0x00
006dfd24  88 f2 20 00 68 f2 20 00                          .byte 0x88, 0xf2, 0x20, 0x00, 0x68, 0xf2, 0x20, 0x00
