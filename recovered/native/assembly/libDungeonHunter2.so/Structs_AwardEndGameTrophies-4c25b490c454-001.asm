; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7764, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AwardEndGameTrophies
; alias: _ZN7Structs20AwardEndGameTrophiesD2Ev
; demangled: Structs::AwardEndGameTrophies::~AwardEndGameTrophies()
; decoder-mode: arm
004c7764  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7768  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c776c  10 40 2d e9                                      push {r4, lr}
004c7770  03 30 8f e0                                      add r3, pc, r3
004c7774  02 20 93 e7                                      ldr r2, [r3, r2]
004c7778  00 40 a0 e1                                      mov r4, r0
004c777c  08 20 82 e2                                      add r2, r2, #8
004c7780  00 20 80 e5                                      str r2, [r0]
004c7784  35 fd ff eb                                      bl #0x4c6c60
004c7788  04 00 a0 e1                                      mov r0, r4
004c778c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7790  20 d3 4c 00 40 2b 00 00                          .byte 0x20, 0xd3, 0x4c, 0x00, 0x40, 0x2b, 0x00, 0x00

; FUNCTION 0x004c7798, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AwardEndGameTrophies
; alias: _ZN7Structs20AwardEndGameTrophiesD1Ev
; demangled: Structs::AwardEndGameTrophies::~AwardEndGameTrophies()
; decoder-mode: arm
004c7798  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c779c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c77a0  10 40 2d e9                                      push {r4, lr}
004c77a4  03 30 8f e0                                      add r3, pc, r3
004c77a8  02 20 93 e7                                      ldr r2, [r3, r2]
004c77ac  00 40 a0 e1                                      mov r4, r0
004c77b0  08 20 82 e2                                      add r2, r2, #8
004c77b4  00 20 80 e5                                      str r2, [r0]
004c77b8  28 fd ff eb                                      bl #0x4c6c60
004c77bc  04 00 a0 e1                                      mov r0, r4
004c77c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c77c4  ec d2 4c 00 40 2b 00 00                          .byte 0xec, 0xd2, 0x4c, 0x00, 0x40, 0x2b, 0x00, 0x00

; FUNCTION 0x004c77cc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AwardEndGameTrophies
; alias: _ZN7Structs20AwardEndGameTrophies8finalizeEv
; demangled: Structs::AwardEndGameTrophies::finalize()
; decoder-mode: arm
004c77cc  25 fd ff ea                                      b #0x4c6c68

; FUNCTION 0x004cde6c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AwardEndGameTrophies
; alias: _ZN7Structs20AwardEndGameTrophiesD0Ev
; demangled: Structs::AwardEndGameTrophies::~AwardEndGameTrophies()
; decoder-mode: arm
004cde6c  10 40 2d e9                                      push {r4, lr}
004cde70  00 40 a0 e1                                      mov r4, r0
004cde74  47 e6 ff eb                                      bl #0x4c7798
004cde78  04 00 a0 e1                                      mov r0, r4
004cde7c  6f 09 f9 eb                                      bl #0x310440
004cde80  04 00 a0 e1                                      mov r0, r4
004cde84  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8b8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AwardEndGameTrophies
; alias: _ZN7Structs20AwardEndGameTrophies4readEP11IStreamBase
; demangled: Structs::AwardEndGameTrophies::read(IStreamBase*)
; decoder-mode: arm
004ff8b8  da ff ff ea                                      b #0x4ff828
