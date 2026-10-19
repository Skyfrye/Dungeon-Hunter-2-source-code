; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d32a4, declared_size=48, range_size=48, mode=arm
; class-group: Structs::ShowHUD
; alias: _ZN7Structs7ShowHUD8finalizeEv
; demangled: Structs::ShowHUD::finalize()
; decoder-mode: arm
004d32a4  10 40 2d e9                                      push {r4, lr}
004d32a8  00 40 a0 e1                                      mov r4, r0
004d32ac  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d32b0  00 00 50 e3                                      cmp r0, #0
004d32b4  03 00 00 0a                                      beq #0x4d32c8
004d32b8  60 f4 f8 eb                                      bl #0x310440
004d32bc  00 30 a0 e3                                      mov r3, #0
004d32c0  0c 30 84 e5                                      str r3, [r4, #0xc]
004d32c4  10 30 84 e5                                      str r3, [r4, #0x10]
004d32c8  04 00 a0 e1                                      mov r0, r4
004d32cc  10 40 bd e8                                      pop {r4, lr}
004d32d0  e7 ff ff ea                                      b #0x4d3274

; FUNCTION 0x004d3380, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ShowHUD
; alias: _ZN7Structs7ShowHUDD1Ev
; demangled: Structs::ShowHUD::~ShowHUD()
; decoder-mode: arm
004d3380  10 40 2d e9                                      push {r4, lr}
004d3384  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d3388  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d338c  00 40 a0 e1                                      mov r4, r0
004d3390  03 30 8f e0                                      add r3, pc, r3
004d3394  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d3398  02 20 93 e7                                      ldr r2, [r3, r2]
004d339c  00 00 50 e3                                      cmp r0, #0
004d33a0  08 20 82 e2                                      add r2, r2, #8
004d33a4  00 20 84 e5                                      str r2, [r4]
004d33a8  00 00 00 0a                                      beq #0x4d33b0
004d33ac  23 f4 f8 eb                                      bl #0x310440
004d33b0  04 00 a0 e1                                      mov r0, r4
004d33b4  df ff ff eb                                      bl #0x4d3338
004d33b8  04 00 a0 e1                                      mov r0, r4
004d33bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d33c0  00 17 4c 00 d4 16 00 00                          .byte 0x00, 0x17, 0x4c, 0x00, 0xd4, 0x16, 0x00, 0x00

; FUNCTION 0x004d33c8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ShowHUD
; alias: _ZN7Structs7ShowHUDD0Ev
; demangled: Structs::ShowHUD::~ShowHUD()
; decoder-mode: arm
004d33c8  10 40 2d e9                                      push {r4, lr}
004d33cc  00 40 a0 e1                                      mov r4, r0
004d33d0  ea ff ff eb                                      bl #0x4d3380
004d33d4  04 00 a0 e1                                      mov r0, r4
004d33d8  18 f4 f8 eb                                      bl #0x310440
004d33dc  04 00 a0 e1                                      mov r0, r4
004d33e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d33e4, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ShowHUD
; alias: _ZN7Structs7ShowHUDD2Ev
; demangled: Structs::ShowHUD::~ShowHUD()
; decoder-mode: arm
004d33e4  10 40 2d e9                                      push {r4, lr}
004d33e8  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d33ec  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d33f0  00 40 a0 e1                                      mov r4, r0
004d33f4  03 30 8f e0                                      add r3, pc, r3
004d33f8  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d33fc  02 20 93 e7                                      ldr r2, [r3, r2]
004d3400  00 00 50 e3                                      cmp r0, #0
004d3404  08 20 82 e2                                      add r2, r2, #8
004d3408  00 20 84 e5                                      str r2, [r4]
004d340c  00 00 00 0a                                      beq #0x4d3414
004d3410  0a f4 f8 eb                                      bl #0x310440
004d3414  04 00 a0 e1                                      mov r0, r4
004d3418  c6 ff ff eb                                      bl #0x4d3338
004d341c  04 00 a0 e1                                      mov r0, r4
004d3420  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3424  9c 16 4c 00 d4 16 00 00                          .byte 0x9c, 0x16, 0x4c, 0x00, 0xd4, 0x16, 0x00, 0x00

; FUNCTION 0x005022e0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ShowHUD
; alias: _ZN7Structs7ShowHUD4readEP11IStreamBase
; demangled: Structs::ShowHUD::read(IStreamBase*)
; decoder-mode: arm
005022e0  b4 ff ff ea                                      b #0x5021b8
