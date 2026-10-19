; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060aca0, declared_size=72, range_size=72, mode=arm
; class-group: glitch::os::Printer
; alias: _ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE
; demangled: glitch::os::Printer::log(char const*, glitch::ELOG_LEVEL)
; decoder-mode: arm
0060aca0  38 30 9f e5                                      ldr r3, [pc, #0x38]
0060aca4  38 20 9f e5                                      ldr r2, [pc, #0x38]
0060aca8  10 40 2d e9                                      push {r4, lr}
0060acac  03 30 8f e0                                      add r3, pc, r3
0060acb0  00 c0 a0 e1                                      mov ip, r0
0060acb4  02 00 93 e7                                      ldr r0, [r3, r2]
0060acb8  01 20 a0 e1                                      mov r2, r1
0060acbc  00 30 90 e5                                      ldr r3, [r0]
0060acc0  00 00 53 e3                                      cmp r3, #0
0060acc4  04 00 00 0a                                      beq #0x60acdc
0060acc8  03 00 a0 e1                                      mov r0, r3
0060accc  0c 10 a0 e1                                      mov r1, ip
0060acd0  00 30 93 e5                                      ldr r3, [r3]
0060acd4  0f e0 a0 e1                                      mov lr, pc
0060acd8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0060acdc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060ace0  e4 9d 38 00 3c 1c 00 00                          .byte 0xe4, 0x9d, 0x38, 0x00, 0x3c, 0x1c, 0x00, 0x00

; FUNCTION 0x0060ace8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::os::Printer
; alias: _ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE
; demangled: glitch::os::Printer::log(char const*, char const*, glitch::ELOG_LEVEL)
; decoder-mode: arm
0060ace8  40 30 9f e5                                      ldr r3, [pc, #0x40]
0060acec  70 40 2d e9                                      push {r4, r5, r6, lr}
0060acf0  00 50 a0 e1                                      mov r5, r0
0060acf4  38 00 9f e5                                      ldr r0, [pc, #0x38]
0060acf8  03 30 8f e0                                      add r3, pc, r3
0060acfc  01 40 a0 e1                                      mov r4, r1
0060ad00  00 00 93 e7                                      ldr r0, [r3, r0]
0060ad04  02 30 a0 e1                                      mov r3, r2
0060ad08  00 c0 90 e5                                      ldr ip, [r0]
0060ad0c  00 00 5c e3                                      cmp ip, #0
0060ad10  05 00 00 0a                                      beq #0x60ad2c
0060ad14  0c 00 a0 e1                                      mov r0, ip
0060ad18  05 10 a0 e1                                      mov r1, r5
0060ad1c  04 20 a0 e1                                      mov r2, r4
0060ad20  00 c0 9c e5                                      ldr ip, [ip]
0060ad24  0f e0 a0 e1                                      mov lr, pc
0060ad28  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0060ad2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060ad30  98 9d 38 00 3c 1c 00 00                          .byte 0x98, 0x9d, 0x38, 0x00, 0x3c, 0x1c, 0x00, 0x00

; FUNCTION 0x0060ad38, declared_size=72, range_size=72, mode=arm
; class-group: glitch::os::Printer
; alias: _ZN6glitch2os7Printer3logEPKwNS_10ELOG_LEVELE
; demangled: glitch::os::Printer::log(wchar_t const*, glitch::ELOG_LEVEL)
; decoder-mode: arm
0060ad38  38 30 9f e5                                      ldr r3, [pc, #0x38]
0060ad3c  38 20 9f e5                                      ldr r2, [pc, #0x38]
0060ad40  10 40 2d e9                                      push {r4, lr}
0060ad44  03 30 8f e0                                      add r3, pc, r3
0060ad48  00 c0 a0 e1                                      mov ip, r0
0060ad4c  02 00 93 e7                                      ldr r0, [r3, r2]
0060ad50  01 20 a0 e1                                      mov r2, r1
0060ad54  00 30 90 e5                                      ldr r3, [r0]
0060ad58  00 00 53 e3                                      cmp r3, #0
0060ad5c  04 00 00 0a                                      beq #0x60ad74
0060ad60  03 00 a0 e1                                      mov r0, r3
0060ad64  0c 10 a0 e1                                      mov r1, ip
0060ad68  00 30 93 e5                                      ldr r3, [r3]
0060ad6c  0f e0 a0 e1                                      mov lr, pc
0060ad70  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0060ad74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060ad78  4c 9d 38 00 3c 1c 00 00                          .byte 0x4c, 0x9d, 0x38, 0x00, 0x3c, 0x1c, 0x00, 0x00

; FUNCTION 0x0060ad80, declared_size=64, range_size=64, mode=arm
; class-group: glitch::os::Printer
; alias: _ZN6glitch2os7Printer11setLogLevelENS_10ELOG_LEVELE
; demangled: glitch::os::Printer::setLogLevel(glitch::ELOG_LEVEL)
; decoder-mode: arm
0060ad80  30 30 9f e5                                      ldr r3, [pc, #0x30]
0060ad84  30 20 9f e5                                      ldr r2, [pc, #0x30]
0060ad88  10 40 2d e9                                      push {r4, lr}
0060ad8c  03 30 8f e0                                      add r3, pc, r3
0060ad90  02 20 93 e7                                      ldr r2, [r3, r2]
0060ad94  00 10 a0 e1                                      mov r1, r0
0060ad98  00 30 92 e5                                      ldr r3, [r2]
0060ad9c  00 00 53 e3                                      cmp r3, #0
0060ada0  03 00 00 0a                                      beq #0x60adb4
0060ada4  03 00 a0 e1                                      mov r0, r3
0060ada8  00 30 93 e5                                      ldr r3, [r3]
0060adac  0f e0 a0 e1                                      mov lr, pc
0060adb0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0060adb4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060adb8  04 9d 38 00 3c 1c 00 00                          .byte 0x04, 0x9d, 0x38, 0x00, 0x3c, 0x1c, 0x00, 0x00

; FUNCTION 0x0060adc0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::os::Printer
; alias: _ZN6glitch2os7Printer11getLogLevelEv
; demangled: glitch::os::Printer::getLogLevel()
; decoder-mode: arm
0060adc0  34 30 9f e5                                      ldr r3, [pc, #0x34]
0060adc4  34 20 9f e5                                      ldr r2, [pc, #0x34]
0060adc8  10 40 2d e9                                      push {r4, lr}
0060adcc  03 30 8f e0                                      add r3, pc, r3
0060add0  02 20 93 e7                                      ldr r2, [r3, r2]
0060add4  00 30 92 e5                                      ldr r3, [r2]
0060add8  00 00 53 e3                                      cmp r3, #0
0060addc  04 00 00 0a                                      beq #0x60adf4
0060ade0  03 00 a0 e1                                      mov r0, r3
0060ade4  00 30 93 e5                                      ldr r3, [r3]
0060ade8  0f e0 a0 e1                                      mov lr, pc
0060adec  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060adf0  10 80 bd e8                                      pop {r4, pc}
0060adf4  04 00 a0 e3                                      mov r0, #4
0060adf8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060adfc  c4 9c 38 00 3c 1c 00 00                          .byte 0xc4, 0x9c, 0x38, 0x00, 0x3c, 0x1c, 0x00, 0x00

; FUNCTION 0x0060afd4, declared_size=96, range_size=96, mode=arm
; class-group: glitch::os::Printer
; alias: _ZN6glitch2os7Printer4logfEPKcz
; demangled: glitch::os::Printer::logf(char const*, ...)
; decoder-mode: arm
0060afd4  0f 00 2d e9                                      push {r0, r1, r2, r3}
0060afd8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0060afdc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0060afe0  04 e0 2d e5                                      str lr, [sp, #-4]!
0060afe4  03 30 8f e0                                      add r3, pc, r3
0060afe8  02 20 93 e7                                      ldr r2, [r3, r2]
0060afec  0c d0 4d e2                                      sub sp, sp, #0xc
0060aff0  00 10 92 e5                                      ldr r1, [r2]
0060aff4  00 00 51 e3                                      cmp r1, #0
0060aff8  07 00 00 0a                                      beq #0x60b01c
0060affc  14 30 8d e2                                      add r3, sp, #0x14
0060b000  04 30 8d e5                                      str r3, [sp, #4]
0060b004  01 00 a0 e1                                      mov r0, r1
0060b008  00 c0 91 e5                                      ldr ip, [r1]
0060b00c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0060b010  01 10 a0 e3                                      mov r1, #1
0060b014  0f e0 a0 e1                                      mov lr, pc
0060b018  24 f0 9c e5                                      ldr pc, [ip, #0x24]
0060b01c  0c d0 8d e2                                      add sp, sp, #0xc
0060b020  04 e0 9d e4                                      pop {lr}
0060b024  10 d0 8d e2                                      add sp, sp, #0x10
0060b028  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0060b02c  ac 9a 38 00 3c 1c 00 00                          .byte 0xac, 0x9a, 0x38, 0x00, 0x3c, 0x1c, 0x00, 0x00

; FUNCTION 0x0060b034, declared_size=96, range_size=96, mode=arm
; class-group: glitch::os::Printer
; alias: _ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz
; demangled: glitch::os::Printer::logf(glitch::ELOG_LEVEL, char const*, ...)
; decoder-mode: arm
0060b034  0e 00 2d e9                                      push {r1, r2, r3}
0060b038  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0060b03c  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0060b040  04 e0 2d e5                                      str lr, [sp, #-4]!
0060b044  03 30 8f e0                                      add r3, pc, r3
0060b048  02 20 93 e7                                      ldr r2, [r3, r2]
0060b04c  08 d0 4d e2                                      sub sp, sp, #8
0060b050  00 10 a0 e1                                      mov r1, r0
0060b054  00 c0 92 e5                                      ldr ip, [r2]
0060b058  00 00 5c e3                                      cmp ip, #0
0060b05c  06 00 00 0a                                      beq #0x60b07c
0060b060  10 30 8d e2                                      add r3, sp, #0x10
0060b064  04 30 8d e5                                      str r3, [sp, #4]
0060b068  0c 00 a0 e1                                      mov r0, ip
0060b06c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0060b070  00 c0 9c e5                                      ldr ip, [ip]
0060b074  0f e0 a0 e1                                      mov lr, pc
0060b078  24 f0 9c e5                                      ldr pc, [ip, #0x24]
0060b07c  08 d0 8d e2                                      add sp, sp, #8
0060b080  04 e0 9d e4                                      pop {lr}
0060b084  0c d0 8d e2                                      add sp, sp, #0xc
0060b088  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0060b08c  4c 9a 38 00 3c 1c 00 00                          .byte 0x4c, 0x9a, 0x38, 0x00, 0x3c, 0x1c, 0x00, 0x00

; FUNCTION 0x0060b26c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::os::Printer
; alias: _ZN6glitch2os7Printer6vprintEPKcSt9__va_list
; demangled: glitch::os::Printer::vprint(char const*, std::__va_list)
; decoder-mode: arm
0060b26c  10 40 2d e9                                      push {r4, lr}
0060b270  88 0d f4 eb                                      bl #0x30e898
0060b274  0a 00 a0 e3                                      mov r0, #0xa
0060b278  10 40 bd e8                                      pop {r4, lr}
0060b27c  bb 0d f4 ea                                      b #0x30e970

; FUNCTION 0x0060b280, declared_size=48, range_size=48, mode=arm
; class-group: glitch::os::Printer
; alias: _ZN6glitch2os7Printer5printEPKcz
; demangled: glitch::os::Printer::print(char const*, ...)
; decoder-mode: arm
0060b280  0f 00 2d e9                                      push {r0, r1, r2, r3}
0060b284  04 e0 2d e5                                      str lr, [sp, #-4]!
0060b288  0c d0 4d e2                                      sub sp, sp, #0xc
0060b28c  14 30 8d e2                                      add r3, sp, #0x14
0060b290  03 10 a0 e1                                      mov r1, r3
0060b294  10 00 9d e5                                      ldr r0, [sp, #0x10]
0060b298  04 30 8d e5                                      str r3, [sp, #4]
0060b29c  f2 ff ff eb                                      bl #0x60b26c
0060b2a0  0c d0 8d e2                                      add sp, sp, #0xc
0060b2a4  04 e0 9d e4                                      pop {lr}
0060b2a8  10 d0 8d e2                                      add sp, sp, #0x10
0060b2ac  1e ff 2f e1                                      bx lr
