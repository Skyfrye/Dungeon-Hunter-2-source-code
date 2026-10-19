; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d30ec, declared_size=48, range_size=48, mode=arm
; class-group: Structs::HideHUD
; alias: _ZN7Structs7HideHUD8finalizeEv
; demangled: Structs::HideHUD::finalize()
; decoder-mode: arm
004d30ec  10 40 2d e9                                      push {r4, lr}
004d30f0  00 40 a0 e1                                      mov r4, r0
004d30f4  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d30f8  00 00 50 e3                                      cmp r0, #0
004d30fc  03 00 00 0a                                      beq #0x4d3110
004d3100  ce f4 f8 eb                                      bl #0x310440
004d3104  00 30 a0 e3                                      mov r3, #0
004d3108  0c 30 84 e5                                      str r3, [r4, #0xc]
004d310c  10 30 84 e5                                      str r3, [r4, #0x10]
004d3110  04 00 a0 e1                                      mov r0, r4
004d3114  10 40 bd e8                                      pop {r4, lr}
004d3118  e7 ff ff ea                                      b #0x4d30bc

; FUNCTION 0x004d31c8, declared_size=72, range_size=72, mode=arm
; class-group: Structs::HideHUD
; alias: _ZN7Structs7HideHUDD1Ev
; demangled: Structs::HideHUD::~HideHUD()
; decoder-mode: arm
004d31c8  10 40 2d e9                                      push {r4, lr}
004d31cc  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d31d0  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d31d4  00 40 a0 e1                                      mov r4, r0
004d31d8  03 30 8f e0                                      add r3, pc, r3
004d31dc  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d31e0  02 20 93 e7                                      ldr r2, [r3, r2]
004d31e4  00 00 50 e3                                      cmp r0, #0
004d31e8  08 20 82 e2                                      add r2, r2, #8
004d31ec  00 20 84 e5                                      str r2, [r4]
004d31f0  00 00 00 0a                                      beq #0x4d31f8
004d31f4  91 f4 f8 eb                                      bl #0x310440
004d31f8  04 00 a0 e1                                      mov r0, r4
004d31fc  df ff ff eb                                      bl #0x4d3180
004d3200  04 00 a0 e1                                      mov r0, r4
004d3204  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3208  b8 18 4c 00 08 08 00 00                          .byte 0xb8, 0x18, 0x4c, 0x00, 0x08, 0x08, 0x00, 0x00

; FUNCTION 0x004d3210, declared_size=28, range_size=28, mode=arm
; class-group: Structs::HideHUD
; alias: _ZN7Structs7HideHUDD0Ev
; demangled: Structs::HideHUD::~HideHUD()
; decoder-mode: arm
004d3210  10 40 2d e9                                      push {r4, lr}
004d3214  00 40 a0 e1                                      mov r4, r0
004d3218  ea ff ff eb                                      bl #0x4d31c8
004d321c  04 00 a0 e1                                      mov r0, r4
004d3220  86 f4 f8 eb                                      bl #0x310440
004d3224  04 00 a0 e1                                      mov r0, r4
004d3228  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d322c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::HideHUD
; alias: _ZN7Structs7HideHUDD2Ev
; demangled: Structs::HideHUD::~HideHUD()
; decoder-mode: arm
004d322c  10 40 2d e9                                      push {r4, lr}
004d3230  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d3234  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d3238  00 40 a0 e1                                      mov r4, r0
004d323c  03 30 8f e0                                      add r3, pc, r3
004d3240  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d3244  02 20 93 e7                                      ldr r2, [r3, r2]
004d3248  00 00 50 e3                                      cmp r0, #0
004d324c  08 20 82 e2                                      add r2, r2, #8
004d3250  00 20 84 e5                                      str r2, [r4]
004d3254  00 00 00 0a                                      beq #0x4d325c
004d3258  78 f4 f8 eb                                      bl #0x310440
004d325c  04 00 a0 e1                                      mov r0, r4
004d3260  c6 ff ff eb                                      bl #0x4d3180
004d3264  04 00 a0 e1                                      mov r0, r4
004d3268  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d326c  54 18 4c 00 08 08 00 00                          .byte 0x54, 0x18, 0x4c, 0x00, 0x08, 0x08, 0x00, 0x00

; FUNCTION 0x005021b4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::HideHUD
; alias: _ZN7Structs7HideHUD4readEP11IStreamBase
; demangled: Structs::HideHUD::read(IStreamBase*)
; decoder-mode: arm
005021b4  b4 ff ff ea                                      b #0x50208c
