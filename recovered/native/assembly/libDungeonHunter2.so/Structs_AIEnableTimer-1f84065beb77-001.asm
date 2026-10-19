; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7404, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AIEnableTimer
; alias: _ZN7Structs13AIEnableTimerD2Ev
; demangled: Structs::AIEnableTimer::~AIEnableTimer()
; decoder-mode: arm
004c7404  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7408  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c740c  10 40 2d e9                                      push {r4, lr}
004c7410  03 30 8f e0                                      add r3, pc, r3
004c7414  02 20 93 e7                                      ldr r2, [r3, r2]
004c7418  00 40 a0 e1                                      mov r4, r0
004c741c  08 20 82 e2                                      add r2, r2, #8
004c7420  00 20 80 e5                                      str r2, [r0]
004c7424  0d fe ff eb                                      bl #0x4c6c60
004c7428  04 00 a0 e1                                      mov r0, r4
004c742c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7430  80 d6 4c 00 50 22 00 00                          .byte 0x80, 0xd6, 0x4c, 0x00, 0x50, 0x22, 0x00, 0x00

; FUNCTION 0x004c7438, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AIEnableTimer
; alias: _ZN7Structs13AIEnableTimerD1Ev
; demangled: Structs::AIEnableTimer::~AIEnableTimer()
; decoder-mode: arm
004c7438  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c743c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7440  10 40 2d e9                                      push {r4, lr}
004c7444  03 30 8f e0                                      add r3, pc, r3
004c7448  02 20 93 e7                                      ldr r2, [r3, r2]
004c744c  00 40 a0 e1                                      mov r4, r0
004c7450  08 20 82 e2                                      add r2, r2, #8
004c7454  00 20 80 e5                                      str r2, [r0]
004c7458  00 fe ff eb                                      bl #0x4c6c60
004c745c  04 00 a0 e1                                      mov r0, r4
004c7460  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7464  4c d6 4c 00 50 22 00 00                          .byte 0x4c, 0xd6, 0x4c, 0x00, 0x50, 0x22, 0x00, 0x00

; FUNCTION 0x004c746c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AIEnableTimer
; alias: _ZN7Structs13AIEnableTimer8finalizeEv
; demangled: Structs::AIEnableTimer::finalize()
; decoder-mode: arm
004c746c  fd fd ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdf4c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AIEnableTimer
; alias: _ZN7Structs13AIEnableTimerD0Ev
; demangled: Structs::AIEnableTimer::~AIEnableTimer()
; decoder-mode: arm
004cdf4c  10 40 2d e9                                      push {r4, lr}
004cdf50  00 40 a0 e1                                      mov r4, r0
004cdf54  37 e5 ff eb                                      bl #0x4c7438
004cdf58  04 00 a0 e1                                      mov r0, r4
004cdf5c  37 09 f9 eb                                      bl #0x310440
004cdf60  04 00 a0 e1                                      mov r0, r4
004cdf64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff9b4, declared_size=32, range_size=32, mode=arm
; class-group: Structs::AIEnableTimer
; alias: _ZN7Structs13AIEnableTimer4readEP11IStreamBase
; demangled: Structs::AIEnableTimer::read(IStreamBase*)
; decoder-mode: arm
004ff9b4  70 40 2d e9                                      push {r4, r5, r6, lr}
004ff9b8  00 40 a0 e1                                      mov r4, r0
004ff9bc  01 50 a0 e1                                      mov r5, r1
004ff9c0  98 ff ff eb                                      bl #0x4ff828
004ff9c4  05 00 a0 e1                                      mov r0, r5
004ff9c8  08 10 84 e2                                      add r1, r4, #8
004ff9cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
004ff9d0  b1 6f ff ea                                      b #0x4db89c
