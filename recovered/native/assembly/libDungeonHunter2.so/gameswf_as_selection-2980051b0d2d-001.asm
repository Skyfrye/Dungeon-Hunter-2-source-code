; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a4a88, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_selection
; alias: _ZNK7gameswf12as_selection2isEi
; demangled: gameswf::as_selection::is(int) const
; decoder-mode: arm
007a4a88  18 00 51 e3                                      cmp r1, #0x18
007a4a8c  01 00 a0 03                                      moveq r0, #1
007a4a90  1e ff 2f 01                                      bxeq lr
007a4a94  01 00 71 e2                                      rsbs r0, r1, #1
007a4a98  00 00 a0 33                                      movlo r0, #0
007a4a9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a4aa0, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_selection
; alias: _ZN7gameswf12as_selectionC1EPNS_6playerE
; demangled: gameswf::as_selection::as_selection(gameswf::player*)
; decoder-mode: arm
007a4aa0  70 40 2d e9                                      push {r4, r5, r6, lr}
007a4aa4  20 40 9f e5                                      ldr r4, [pc, #0x20]
007a4aa8  00 50 a0 e1                                      mov r5, r0
007a4aac  8b 1c ff eb                                      bl #0x76bce0
007a4ab0  18 30 9f e5                                      ldr r3, [pc, #0x18]
007a4ab4  04 40 8f e0                                      add r4, pc, r4
007a4ab8  05 00 a0 e1                                      mov r0, r5
007a4abc  03 30 94 e7                                      ldr r3, [r4, r3]
007a4ac0  08 30 83 e2                                      add r3, r3, #8
007a4ac4  00 30 85 e5                                      str r3, [r5]
007a4ac8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a4acc  dc ff 1e 00 ec 3f 00 00                          .byte 0xdc, 0xff, 0x1e, 0x00, 0xec, 0x3f, 0x00, 0x00

; FUNCTION 0x007a4ad4, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_selection
; alias: _ZN7gameswf12as_selectionC2EPNS_6playerE
; demangled: gameswf::as_selection::as_selection(gameswf::player*)
; decoder-mode: arm
007a4ad4  70 40 2d e9                                      push {r4, r5, r6, lr}
007a4ad8  20 40 9f e5                                      ldr r4, [pc, #0x20]
007a4adc  00 50 a0 e1                                      mov r5, r0
007a4ae0  7e 1c ff eb                                      bl #0x76bce0
007a4ae4  18 30 9f e5                                      ldr r3, [pc, #0x18]
007a4ae8  04 40 8f e0                                      add r4, pc, r4
007a4aec  05 00 a0 e1                                      mov r0, r5
007a4af0  03 30 94 e7                                      ldr r3, [r4, r3]
007a4af4  08 30 83 e2                                      add r3, r3, #8
007a4af8  00 30 85 e5                                      str r3, [r5]
007a4afc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a4b00  a8 ff 1e 00 ec 3f 00 00                          .byte 0xa8, 0xff, 0x1e, 0x00, 0xec, 0x3f, 0x00, 0x00

; FUNCTION 0x007a4b08, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_selection
; alias: _ZN7gameswf12as_selectionD1Ev
; demangled: gameswf::as_selection::~as_selection()
; decoder-mode: arm
007a4b08  24 30 9f e5                                      ldr r3, [pc, #0x24]
007a4b0c  24 20 9f e5                                      ldr r2, [pc, #0x24]
007a4b10  10 40 2d e9                                      push {r4, lr}
007a4b14  03 30 8f e0                                      add r3, pc, r3
007a4b18  02 20 93 e7                                      ldr r2, [r3, r2]
007a4b1c  00 40 a0 e1                                      mov r4, r0
007a4b20  08 20 82 e2                                      add r2, r2, #8
007a4b24  00 20 80 e5                                      str r2, [r0]
007a4b28  db 13 ff eb                                      bl #0x769a9c
007a4b2c  04 00 a0 e1                                      mov r0, r4
007a4b30  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a4b34  7c ff 1e 00 ec 3f 00 00                          .byte 0x7c, 0xff, 0x1e, 0x00, 0xec, 0x3f, 0x00, 0x00

; FUNCTION 0x007a4d20, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_selection
; alias: _ZN7gameswf12as_selectionD0Ev
; demangled: gameswf::as_selection::~as_selection()
; decoder-mode: arm
007a4d20  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007a4d24  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007a4d28  10 40 2d e9                                      push {r4, lr}
007a4d2c  03 30 8f e0                                      add r3, pc, r3
007a4d30  02 20 93 e7                                      ldr r2, [r3, r2]
007a4d34  00 40 a0 e1                                      mov r4, r0
007a4d38  08 20 82 e2                                      add r2, r2, #8
007a4d3c  00 20 80 e5                                      str r2, [r0]
007a4d40  55 13 ff eb                                      bl #0x769a9c
007a4d44  04 00 a0 e1                                      mov r0, r4
007a4d48  58 a5 ed eb                                      bl #0x30e2b0
007a4d4c  04 00 a0 e1                                      mov r0, r4
007a4d50  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a4d54  64 fd 1e 00 ec 3f 00 00                          .byte 0x64, 0xfd, 0x1e, 0x00, 0xec, 0x3f, 0x00, 0x00
