; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a08b4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::CLogger
; alias: _ZN6glitch7CLoggerC2EPNS_14IEventReceiverE
; demangled: glitch::CLogger::CLogger(glitch::IEventReceiver*)
; decoder-mode: arm
006a08b4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006a08b8  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
006a08bc  04 40 2d e5                                      str r4, [sp, #-4]!
006a08c0  02 20 8f e0                                      add r2, pc, r2
006a08c4  0c c0 92 e7                                      ldr ip, [r2, ip]
006a08c8  01 40 a0 e3                                      mov r4, #1
006a08cc  0c 10 80 e5                                      str r1, [r0, #0xc]
006a08d0  08 c0 8c e2                                      add ip, ip, #8
006a08d4  00 c0 80 e5                                      str ip, [r0]
006a08d8  08 40 80 e5                                      str r4, [r0, #8]
006a08dc  04 40 80 e5                                      str r4, [r0, #4]
006a08e0  10 00 bd e8                                      ldm sp!, {r4}
006a08e4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006a08e8  d0 41 2f 00 cc 46 00 00                          .byte 0xd0, 0x41, 0x2f, 0x00, 0xcc, 0x46, 0x00, 0x00

; FUNCTION 0x006a08f0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::CLogger
; alias: _ZN6glitch7CLoggerC1EPNS_14IEventReceiverE
; demangled: glitch::CLogger::CLogger(glitch::IEventReceiver*)
; decoder-mode: arm
006a08f0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006a08f4  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
006a08f8  04 40 2d e5                                      str r4, [sp, #-4]!
006a08fc  02 20 8f e0                                      add r2, pc, r2
006a0900  0c c0 92 e7                                      ldr ip, [r2, ip]
006a0904  01 40 a0 e3                                      mov r4, #1
006a0908  0c 10 80 e5                                      str r1, [r0, #0xc]
006a090c  08 c0 8c e2                                      add ip, ip, #8
006a0910  00 c0 80 e5                                      str ip, [r0]
006a0914  08 40 80 e5                                      str r4, [r0, #8]
006a0918  04 40 80 e5                                      str r4, [r0, #4]
006a091c  10 00 bd e8                                      ldm sp!, {r4}
006a0920  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006a0924  94 41 2f 00 cc 46 00 00                          .byte 0x94, 0x41, 0x2f, 0x00, 0xcc, 0x46, 0x00, 0x00

; FUNCTION 0x006a092c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CLogger
; alias: _ZNK6glitch7CLogger11getLogLevelEv
; demangled: glitch::CLogger::getLogLevel() const
; decoder-mode: arm
006a092c  08 00 90 e5                                      ldr r0, [r0, #8]
006a0930  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0934, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CLogger
; alias: _ZN6glitch7CLogger11setLogLevelENS_10ELOG_LEVELE
; demangled: glitch::CLogger::setLogLevel(glitch::ELOG_LEVEL)
; decoder-mode: arm
006a0934  08 10 80 e5                                      str r1, [r0, #8]
006a0938  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a093c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CLogger
; alias: _ZN6glitch7CLogger11setReceiverEPNS_14IEventReceiverE
; demangled: glitch::CLogger::setReceiver(glitch::IEventReceiver*)
; decoder-mode: arm
006a093c  0c 10 80 e5                                      str r1, [r0, #0xc]
006a0940  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0944, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CLogger
; alias: _ZN6glitch7CLoggerD1Ev
; demangled: glitch::CLogger::~CLogger()
; decoder-mode: arm
006a0944  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0968, declared_size=20, range_size=20, mode=arm
; class-group: glitch::CLogger
; alias: _ZN6glitch7CLoggerD0Ev
; demangled: glitch::CLogger::~CLogger()
; decoder-mode: arm
006a0968  10 40 2d e9                                      push {r4, lr}
006a096c  00 40 a0 e1                                      mov r4, r0
006a0970  4e b6 f1 eb                                      bl #0x30e2b0
006a0974  04 00 a0 e1                                      mov r0, r4
006a0978  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a0990, declared_size=184, range_size=184, mode=arm
; class-group: glitch::CLogger
; alias: _ZN6glitch7CLogger5vlogfENS_10ELOG_LEVELEPKcSt9__va_list
; demangled: glitch::CLogger::vlogf(glitch::ELOG_LEVEL, char const*, std::__va_list)
; decoder-mode: arm
006a0990  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a0994  00 40 a0 e1                                      mov r4, r0
006a0998  08 00 90 e5                                      ldr r0, [r0, #8]
006a099c  18 d0 4d e2                                      sub sp, sp, #0x18
006a09a0  01 50 a0 e1                                      mov r5, r1
006a09a4  00 00 51 e1                                      cmp r1, r0
006a09a8  02 70 a0 e1                                      mov r7, r2
006a09ac  03 80 a0 e1                                      mov r8, r3
006a09b0  1a 00 00 ba                                      blt #0x6a0a20
006a09b4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006a09b8  00 00 53 e3                                      cmp r3, #0
006a09bc  1d 00 00 0a                                      beq #0x6a0a38
006a09c0  00 10 a0 e3                                      mov r1, #0
006a09c4  fa 0e a0 e3                                      mov r0, #0xfa0
006a09c8  f6 4d fa eb                                      bl #0x5341a8
006a09cc  9e 1f 00 e3                                      movw r1, #0xf9e
006a09d0  07 20 a0 e1                                      mov r2, r7
006a09d4  08 30 a0 e1                                      mov r3, r8
006a09d8  00 60 a0 e1                                      mov r6, r0
006a09dc  46 b8 f1 eb                                      bl #0x30eafc
006a09e0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006a09e4  03 20 a0 e3                                      mov r2, #3
006a09e8  00 20 8d e5                                      str r2, [sp]
006a09ec  0c 50 8d e5                                      str r5, [sp, #0xc]
006a09f0  08 60 8d e5                                      str r6, [sp, #8]
006a09f4  03 00 a0 e1                                      mov r0, r3
006a09f8  0d 10 a0 e1                                      mov r1, sp
006a09fc  00 30 93 e5                                      ldr r3, [r3]
006a0a00  0f e0 a0 e1                                      mov lr, pc
006a0a04  08 f0 93 e5                                      ldr pc, [r3, #8]
006a0a08  00 00 50 e3                                      cmp r0, #0
006a0a0c  05 00 00 0a                                      beq #0x6a0a28
006a0a10  00 00 56 e3                                      cmp r6, #0
006a0a14  01 00 00 0a                                      beq #0x6a0a20
006a0a18  06 00 a0 e1                                      mov r0, r6
006a0a1c  a5 b5 f1 eb                                      bl #0x30e0b8
006a0a20  18 d0 8d e2                                      add sp, sp, #0x18
006a0a24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a0a28  00 00 56 e3                                      cmp r6, #0
006a0a2c  01 00 00 0a                                      beq #0x6a0a38
006a0a30  06 00 a0 e1                                      mov r0, r6
006a0a34  9f b5 f1 eb                                      bl #0x30e0b8
006a0a38  07 00 a0 e1                                      mov r0, r7
006a0a3c  08 10 a0 e1                                      mov r1, r8
006a0a40  09 aa fd eb                                      bl #0x60b26c
006a0a44  f5 ff ff ea                                      b #0x6a0a20

; FUNCTION 0x006a0a7c, declared_size=48, range_size=48, mode=arm
; class-group: glitch::CLogger
; alias: _ZN6glitch7CLogger3logEPKcS2_NS_10ELOG_LEVELE
; demangled: glitch::CLogger::log(char const*, char const*, glitch::ELOG_LEVEL)
; decoder-mode: arm
006a0a7c  04 e0 2d e5                                      str lr, [sp, #-4]!
006a0a80  0c d0 4d e2                                      sub sp, sp, #0xc
006a0a84  00 20 8d e5                                      str r2, [sp]
006a0a88  18 20 9f e5                                      ldr r2, [pc, #0x18]
006a0a8c  01 c0 a0 e1                                      mov ip, r1
006a0a90  03 10 a0 e1                                      mov r1, r3
006a0a94  02 20 8f e0                                      add r2, pc, r2
006a0a98  0c 30 a0 e1                                      mov r3, ip
006a0a9c  e9 ff ff eb                                      bl #0x6a0a48
006a0aa0  0c d0 8d e2                                      add sp, sp, #0xc
006a0aa4  00 80 bd e8                                      ldm sp!, {pc}
; mapping-symbol data/literal pool
006a0aa8  1c a5 24 00                                      .byte 0x1c, 0xa5, 0x24, 0x00

; FUNCTION 0x006a0aac, declared_size=96, range_size=96, mode=arm
; class-group: glitch::CLogger
; alias: _ZN6glitch7CLogger3logEPKcNS_10ELOG_LEVELE
; demangled: glitch::CLogger::log(char const*, glitch::ELOG_LEVEL)
; decoder-mode: arm
006a0aac  10 40 2d e9                                      push {r4, lr}
006a0ab0  08 30 90 e5                                      ldr r3, [r0, #8]
006a0ab4  18 d0 4d e2                                      sub sp, sp, #0x18
006a0ab8  01 40 a0 e1                                      mov r4, r1
006a0abc  03 00 52 e1                                      cmp r2, r3
006a0ac0  0f 00 00 ba                                      blt #0x6a0b04
006a0ac4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006a0ac8  00 00 53 e3                                      cmp r3, #0
006a0acc  0a 00 00 0a                                      beq #0x6a0afc
006a0ad0  03 10 a0 e3                                      mov r1, #3
006a0ad4  00 10 8d e5                                      str r1, [sp]
006a0ad8  0c 20 8d e5                                      str r2, [sp, #0xc]
006a0adc  08 40 8d e5                                      str r4, [sp, #8]
006a0ae0  03 00 a0 e1                                      mov r0, r3
006a0ae4  0d 10 a0 e1                                      mov r1, sp
006a0ae8  00 30 93 e5                                      ldr r3, [r3]
006a0aec  0f e0 a0 e1                                      mov lr, pc
006a0af0  08 f0 93 e5                                      ldr pc, [r3, #8]
006a0af4  00 00 50 e3                                      cmp r0, #0
006a0af8  01 00 00 1a                                      bne #0x6a0b04
006a0afc  04 00 a0 e1                                      mov r0, r4
006a0b00  de a9 fd eb                                      bl #0x60b280
006a0b04  18 d0 8d e2                                      add sp, sp, #0x18
006a0b08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a0b0c, declared_size=156, range_size=156, mode=arm
; class-group: glitch::CLogger
; alias: _ZN6glitch7CLogger3logEPKwNS_10ELOG_LEVELE
; demangled: glitch::CLogger::log(wchar_t const*, glitch::ELOG_LEVEL)
; decoder-mode: arm
006a0b0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a0b10  88 40 9f e5                                      ldr r4, [pc, #0x88]
006a0b14  88 50 9f e5                                      ldr r5, [pc, #0x88]
006a0b18  00 60 a0 e1                                      mov r6, r0
006a0b1c  04 40 8f e0                                      add r4, pc, r4
006a0b20  05 00 94 e7                                      ldr r0, [r4, r5]
006a0b24  08 30 96 e5                                      ldr r3, [r6, #8]
006a0b28  02 80 a0 e1                                      mov r8, r2
006a0b2c  00 20 90 e5                                      ldr r2, [r0]
006a0b30  20 d0 4d e2                                      sub sp, sp, #0x20
006a0b34  03 00 58 e1                                      cmp r8, r3
006a0b38  1c 20 8d e5                                      str r2, [sp, #0x1c]
006a0b3c  06 00 00 aa                                      bge #0x6a0b5c
006a0b40  05 30 94 e7                                      ldr r3, [r4, r5]
006a0b44  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006a0b48  00 30 93 e5                                      ldr r3, [r3]
006a0b4c  03 00 52 e1                                      cmp r2, r3
006a0b50  11 00 00 1a                                      bne #0x6a0b9c
006a0b54  20 d0 8d e2                                      add sp, sp, #0x20
006a0b58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a0b5c  04 70 8d e2                                      add r7, sp, #4
006a0b60  07 00 a0 e1                                      mov r0, r7
006a0b64  3b 18 f2 eb                                      bl #0x326c58
006a0b68  06 00 a0 e1                                      mov r0, r6
006a0b6c  08 20 a0 e1                                      mov r2, r8
006a0b70  00 30 96 e5                                      ldr r3, [r6]
006a0b74  18 10 9d e5                                      ldr r1, [sp, #0x18]
006a0b78  0f e0 a0 e1                                      mov lr, pc
006a0b7c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006a0b80  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a0b84  07 00 50 e1                                      cmp r0, r7
006a0b88  ec ff ff 0a                                      beq #0x6a0b40
006a0b8c  00 00 50 e3                                      cmp r0, #0
006a0b90  ea ff ff 0a                                      beq #0x6a0b40
006a0b94  2d be f1 eb                                      bl #0x310450
006a0b98  e8 ff ff ea                                      b #0x6a0b40
006a0b9c  db b5 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006a0ba0  74 3f 2f 00 ac 40 00 00                          .byte 0x74, 0x3f, 0x2f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x006a0ba8, declared_size=212, range_size=212, mode=arm
; class-group: glitch::CLogger
; alias: _ZN6glitch7CLogger3logEPKwS2_NS_10ELOG_LEVELE
; demangled: glitch::CLogger::log(wchar_t const*, wchar_t const*, glitch::ELOG_LEVEL)
; decoder-mode: arm
006a0ba8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006a0bac  bc 40 9f e5                                      ldr r4, [pc, #0xbc]
006a0bb0  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
006a0bb4  00 60 a0 e1                                      mov r6, r0
006a0bb8  04 40 8f e0                                      add r4, pc, r4
006a0bbc  05 c0 94 e7                                      ldr ip, [r4, r5]
006a0bc0  08 00 90 e5                                      ldr r0, [r0, #8]
006a0bc4  03 a0 a0 e1                                      mov sl, r3
006a0bc8  00 30 9c e5                                      ldr r3, [ip]
006a0bcc  40 d0 4d e2                                      sub sp, sp, #0x40
006a0bd0  00 00 5a e1                                      cmp sl, r0
006a0bd4  02 90 a0 e1                                      mov sb, r2
006a0bd8  3c 30 8d e5                                      str r3, [sp, #0x3c]
006a0bdc  06 00 00 aa                                      bge #0x6a0bfc
006a0be0  05 30 94 e7                                      ldr r3, [r4, r5]
006a0be4  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006a0be8  00 30 93 e5                                      ldr r3, [r3]
006a0bec  03 00 52 e1                                      cmp r2, r3
006a0bf0  1d 00 00 1a                                      bne #0x6a0c6c
006a0bf4  40 d0 8d e2                                      add sp, sp, #0x40
006a0bf8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006a0bfc  24 80 8d e2                                      add r8, sp, #0x24
006a0c00  08 00 a0 e1                                      mov r0, r8
006a0c04  0c 70 8d e2                                      add r7, sp, #0xc
006a0c08  12 18 f2 eb                                      bl #0x326c58
006a0c0c  09 10 a0 e1                                      mov r1, sb
006a0c10  07 00 a0 e1                                      mov r0, r7
006a0c14  0f 18 f2 eb                                      bl #0x326c58
006a0c18  58 20 9f e5                                      ldr r2, [pc, #0x58]
006a0c1c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006a0c20  06 00 a0 e1                                      mov r0, r6
006a0c24  0a 10 a0 e1                                      mov r1, sl
006a0c28  02 20 8f e0                                      add r2, pc, r2
006a0c2c  38 30 9d e5                                      ldr r3, [sp, #0x38]
006a0c30  00 c0 8d e5                                      str ip, [sp]
006a0c34  83 ff ff eb                                      bl #0x6a0a48
006a0c38  20 00 9d e5                                      ldr r0, [sp, #0x20]
006a0c3c  07 00 50 e1                                      cmp r0, r7
006a0c40  02 00 00 0a                                      beq #0x6a0c50
006a0c44  00 00 50 e3                                      cmp r0, #0
006a0c48  00 00 00 0a                                      beq #0x6a0c50
006a0c4c  ff bd f1 eb                                      bl #0x310450
006a0c50  38 00 9d e5                                      ldr r0, [sp, #0x38]
006a0c54  08 00 50 e1                                      cmp r0, r8
006a0c58  e0 ff ff 0a                                      beq #0x6a0be0
006a0c5c  00 00 50 e3                                      cmp r0, #0
006a0c60  de ff ff 0a                                      beq #0x6a0be0
006a0c64  f9 bd f1 eb                                      bl #0x310450
006a0c68  dc ff ff ea                                      b #0x6a0be0
006a0c6c  a7 b5 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006a0c70  d8 3e 2f 00 ac 40 00 00 88 a3 24 00              .byte 0xd8, 0x3e, 0x2f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0xa3, 0x24, 0x00
