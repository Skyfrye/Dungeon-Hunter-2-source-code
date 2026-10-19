; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7620, declared_size=52, range_size=52, mode=arm
; class-group: Structs::RestartLevel
; alias: _ZN7Structs12RestartLevelD2Ev
; demangled: Structs::RestartLevel::~RestartLevel()
; decoder-mode: arm
004c7620  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7624  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7628  10 40 2d e9                                      push {r4, lr}
004c762c  03 30 8f e0                                      add r3, pc, r3
004c7630  02 20 93 e7                                      ldr r2, [r3, r2]
004c7634  00 40 a0 e1                                      mov r4, r0
004c7638  08 20 82 e2                                      add r2, r2, #8
004c763c  00 20 80 e5                                      str r2, [r0]
004c7640  86 fd ff eb                                      bl #0x4c6c60
004c7644  04 00 a0 e1                                      mov r0, r4
004c7648  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c764c  64 d4 4c 00 08 4a 00 00                          .byte 0x64, 0xd4, 0x4c, 0x00, 0x08, 0x4a, 0x00, 0x00

; FUNCTION 0x004c7654, declared_size=52, range_size=52, mode=arm
; class-group: Structs::RestartLevel
; alias: _ZN7Structs12RestartLevelD1Ev
; demangled: Structs::RestartLevel::~RestartLevel()
; decoder-mode: arm
004c7654  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7658  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c765c  10 40 2d e9                                      push {r4, lr}
004c7660  03 30 8f e0                                      add r3, pc, r3
004c7664  02 20 93 e7                                      ldr r2, [r3, r2]
004c7668  00 40 a0 e1                                      mov r4, r0
004c766c  08 20 82 e2                                      add r2, r2, #8
004c7670  00 20 80 e5                                      str r2, [r0]
004c7674  79 fd ff eb                                      bl #0x4c6c60
004c7678  04 00 a0 e1                                      mov r0, r4
004c767c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7680  30 d4 4c 00 08 4a 00 00                          .byte 0x30, 0xd4, 0x4c, 0x00, 0x08, 0x4a, 0x00, 0x00

; FUNCTION 0x004c7688, declared_size=4, range_size=4, mode=arm
; class-group: Structs::RestartLevel
; alias: _ZN7Structs12RestartLevel8finalizeEv
; demangled: Structs::RestartLevel::finalize()
; decoder-mode: arm
004c7688  76 fd ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdec0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::RestartLevel
; alias: _ZN7Structs12RestartLevelD0Ev
; demangled: Structs::RestartLevel::~RestartLevel()
; decoder-mode: arm
004cdec0  10 40 2d e9                                      push {r4, lr}
004cdec4  00 40 a0 e1                                      mov r4, r0
004cdec8  e1 e5 ff eb                                      bl #0x4c7654
004cdecc  04 00 a0 e1                                      mov r0, r4
004cded0  5a 09 f9 eb                                      bl #0x310440
004cded4  04 00 a0 e1                                      mov r0, r4
004cded8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8c0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::RestartLevel
; alias: _ZN7Structs12RestartLevel4readEP11IStreamBase
; demangled: Structs::RestartLevel::read(IStreamBase*)
; decoder-mode: arm
004ff8c0  d8 ff ff ea                                      b #0x4ff828
