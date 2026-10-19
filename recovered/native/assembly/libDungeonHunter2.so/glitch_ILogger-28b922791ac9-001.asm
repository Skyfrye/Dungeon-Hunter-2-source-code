; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a08b0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ILogger
; alias: _ZN6glitch7ILoggerD1Ev
; demangled: glitch::ILogger::~ILogger()
; decoder-mode: arm
006a08b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a097c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ILogger
; alias: _ZN6glitch7ILoggerD0Ev
; demangled: glitch::ILogger::~ILogger()
; decoder-mode: arm
006a097c  10 40 2d e9                                      push {r4, lr}
006a0980  00 40 a0 e1                                      mov r4, r0
006a0984  49 b6 f1 eb                                      bl #0x30e2b0
006a0988  04 00 a0 e1                                      mov r0, r4
006a098c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a0a48, declared_size=52, range_size=52, mode=arm
; class-group: glitch::ILogger
; alias: _ZN6glitch7ILogger4logfENS_10ELOG_LEVELEPKcz
; demangled: glitch::ILogger::logf(glitch::ELOG_LEVEL, char const*, ...)
; decoder-mode: arm
006a0a48  0c 00 2d e9                                      push {r2, r3}
006a0a4c  04 e0 2d e5                                      str lr, [sp, #-4]!
006a0a50  0c d0 4d e2                                      sub sp, sp, #0xc
006a0a54  14 30 8d e2                                      add r3, sp, #0x14
006a0a58  04 30 8d e5                                      str r3, [sp, #4]
006a0a5c  00 c0 90 e5                                      ldr ip, [r0]
006a0a60  10 20 9d e5                                      ldr r2, [sp, #0x10]
006a0a64  0f e0 a0 e1                                      mov lr, pc
006a0a68  24 f0 9c e5                                      ldr pc, [ip, #0x24]
006a0a6c  0c d0 8d e2                                      add sp, sp, #0xc
006a0a70  04 e0 9d e4                                      pop {lr}
006a0a74  08 d0 8d e2                                      add sp, sp, #8
006a0a78  1e ff 2f e1                                      bx lr
