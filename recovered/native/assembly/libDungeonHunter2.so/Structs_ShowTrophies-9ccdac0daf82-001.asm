; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c77d0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::ShowTrophies
; alias: _ZN7Structs12ShowTrophiesD2Ev
; demangled: Structs::ShowTrophies::~ShowTrophies()
; decoder-mode: arm
004c77d0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c77d4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c77d8  10 40 2d e9                                      push {r4, lr}
004c77dc  03 30 8f e0                                      add r3, pc, r3
004c77e0  02 20 93 e7                                      ldr r2, [r3, r2]
004c77e4  00 40 a0 e1                                      mov r4, r0
004c77e8  08 20 82 e2                                      add r2, r2, #8
004c77ec  00 20 80 e5                                      str r2, [r0]
004c77f0  1a fd ff eb                                      bl #0x4c6c60
004c77f4  04 00 a0 e1                                      mov r0, r4
004c77f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c77fc  b4 d2 4c 00 0c 46 00 00                          .byte 0xb4, 0xd2, 0x4c, 0x00, 0x0c, 0x46, 0x00, 0x00

; FUNCTION 0x004c7804, declared_size=52, range_size=52, mode=arm
; class-group: Structs::ShowTrophies
; alias: _ZN7Structs12ShowTrophiesD1Ev
; demangled: Structs::ShowTrophies::~ShowTrophies()
; decoder-mode: arm
004c7804  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7808  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c780c  10 40 2d e9                                      push {r4, lr}
004c7810  03 30 8f e0                                      add r3, pc, r3
004c7814  02 20 93 e7                                      ldr r2, [r3, r2]
004c7818  00 40 a0 e1                                      mov r4, r0
004c781c  08 20 82 e2                                      add r2, r2, #8
004c7820  00 20 80 e5                                      str r2, [r0]
004c7824  0d fd ff eb                                      bl #0x4c6c60
004c7828  04 00 a0 e1                                      mov r0, r4
004c782c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7830  80 d2 4c 00 0c 46 00 00                          .byte 0x80, 0xd2, 0x4c, 0x00, 0x0c, 0x46, 0x00, 0x00

; FUNCTION 0x004c7838, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ShowTrophies
; alias: _ZN7Structs12ShowTrophies8finalizeEv
; demangled: Structs::ShowTrophies::finalize()
; decoder-mode: arm
004c7838  0a fd ff ea                                      b #0x4c6c68

; FUNCTION 0x004cde50, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ShowTrophies
; alias: _ZN7Structs12ShowTrophiesD0Ev
; demangled: Structs::ShowTrophies::~ShowTrophies()
; decoder-mode: arm
004cde50  10 40 2d e9                                      push {r4, lr}
004cde54  00 40 a0 e1                                      mov r4, r0
004cde58  69 e6 ff eb                                      bl #0x4c7804
004cde5c  04 00 a0 e1                                      mov r0, r4
004cde60  76 09 f9 eb                                      bl #0x310440
004cde64  04 00 a0 e1                                      mov r0, r4
004cde68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8b4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ShowTrophies
; alias: _ZN7Structs12ShowTrophies4readEP11IStreamBase
; demangled: Structs::ShowTrophies::read(IStreamBase*)
; decoder-mode: arm
004ff8b4  db ff ff ea                                      b #0x4ff828
