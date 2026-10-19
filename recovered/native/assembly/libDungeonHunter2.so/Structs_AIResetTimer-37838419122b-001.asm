; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7470, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AIResetTimer
; alias: _ZN7Structs12AIResetTimerD2Ev
; demangled: Structs::AIResetTimer::~AIResetTimer()
; decoder-mode: arm
004c7470  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7474  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7478  10 40 2d e9                                      push {r4, lr}
004c747c  03 30 8f e0                                      add r3, pc, r3
004c7480  02 20 93 e7                                      ldr r2, [r3, r2]
004c7484  00 40 a0 e1                                      mov r4, r0
004c7488  08 20 82 e2                                      add r2, r2, #8
004c748c  00 20 80 e5                                      str r2, [r0]
004c7490  f2 fd ff eb                                      bl #0x4c6c60
004c7494  04 00 a0 e1                                      mov r0, r4
004c7498  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c749c  14 d6 4c 00 28 4c 00 00                          .byte 0x14, 0xd6, 0x4c, 0x00, 0x28, 0x4c, 0x00, 0x00

; FUNCTION 0x004c74a4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AIResetTimer
; alias: _ZN7Structs12AIResetTimerD1Ev
; demangled: Structs::AIResetTimer::~AIResetTimer()
; decoder-mode: arm
004c74a4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c74a8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c74ac  10 40 2d e9                                      push {r4, lr}
004c74b0  03 30 8f e0                                      add r3, pc, r3
004c74b4  02 20 93 e7                                      ldr r2, [r3, r2]
004c74b8  00 40 a0 e1                                      mov r4, r0
004c74bc  08 20 82 e2                                      add r2, r2, #8
004c74c0  00 20 80 e5                                      str r2, [r0]
004c74c4  e5 fd ff eb                                      bl #0x4c6c60
004c74c8  04 00 a0 e1                                      mov r0, r4
004c74cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c74d0  e0 d5 4c 00 28 4c 00 00                          .byte 0xe0, 0xd5, 0x4c, 0x00, 0x28, 0x4c, 0x00, 0x00

; FUNCTION 0x004c74d8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AIResetTimer
; alias: _ZN7Structs12AIResetTimer8finalizeEv
; demangled: Structs::AIResetTimer::finalize()
; decoder-mode: arm
004c74d8  e2 fd ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdf30, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AIResetTimer
; alias: _ZN7Structs12AIResetTimerD0Ev
; demangled: Structs::AIResetTimer::~AIResetTimer()
; decoder-mode: arm
004cdf30  10 40 2d e9                                      push {r4, lr}
004cdf34  00 40 a0 e1                                      mov r4, r0
004cdf38  59 e5 ff eb                                      bl #0x4c74a4
004cdf3c  04 00 a0 e1                                      mov r0, r4
004cdf40  3e 09 f9 eb                                      bl #0x310440
004cdf44  04 00 a0 e1                                      mov r0, r4
004cdf48  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8c4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AIResetTimer
; alias: _ZN7Structs12AIResetTimer4readEP11IStreamBase
; demangled: Structs::AIResetTimer::read(IStreamBase*)
; decoder-mode: arm
004ff8c4  d7 ff ff ea                                      b #0x4ff828
