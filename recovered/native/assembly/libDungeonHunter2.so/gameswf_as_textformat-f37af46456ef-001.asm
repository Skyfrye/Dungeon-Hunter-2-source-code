; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a67b4, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_textformat
; alias: _ZNK7gameswf13as_textformat2isEi
; demangled: gameswf::as_textformat::is(int) const
; decoder-mode: arm
007a67b4  23 00 51 e3                                      cmp r1, #0x23
007a67b8  01 00 a0 03                                      moveq r0, #1
007a67bc  1e ff 2f 01                                      bxeq lr
007a67c0  01 00 71 e2                                      rsbs r0, r1, #1
007a67c4  00 00 a0 33                                      movlo r0, #0
007a67c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a681c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_textformat
; alias: _ZN7gameswf13as_textformatC1EPNS_6playerE
; demangled: gameswf::as_textformat::as_textformat(gameswf::player*)
; decoder-mode: arm
007a681c  70 40 2d e9                                      push {r4, r5, r6, lr}
007a6820  20 40 9f e5                                      ldr r4, [pc, #0x20]
007a6824  00 50 a0 e1                                      mov r5, r0
007a6828  2c 15 ff eb                                      bl #0x76bce0
007a682c  18 30 9f e5                                      ldr r3, [pc, #0x18]
007a6830  04 40 8f e0                                      add r4, pc, r4
007a6834  05 00 a0 e1                                      mov r0, r5
007a6838  03 30 94 e7                                      ldr r3, [r4, r3]
007a683c  08 30 83 e2                                      add r3, r3, #8
007a6840  00 30 85 e5                                      str r3, [r5]
007a6844  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a6848  60 e2 1e 00 14 19 00 00                          .byte 0x60, 0xe2, 0x1e, 0x00, 0x14, 0x19, 0x00, 0x00

; FUNCTION 0x007a6850, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_textformat
; alias: _ZN7gameswf13as_textformatC2EPNS_6playerE
; demangled: gameswf::as_textformat::as_textformat(gameswf::player*)
; decoder-mode: arm
007a6850  70 40 2d e9                                      push {r4, r5, r6, lr}
007a6854  20 40 9f e5                                      ldr r4, [pc, #0x20]
007a6858  00 50 a0 e1                                      mov r5, r0
007a685c  1f 15 ff eb                                      bl #0x76bce0
007a6860  18 30 9f e5                                      ldr r3, [pc, #0x18]
007a6864  04 40 8f e0                                      add r4, pc, r4
007a6868  05 00 a0 e1                                      mov r0, r5
007a686c  03 30 94 e7                                      ldr r3, [r4, r3]
007a6870  08 30 83 e2                                      add r3, r3, #8
007a6874  00 30 85 e5                                      str r3, [r5]
007a6878  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a687c  2c e2 1e 00 14 19 00 00                          .byte 0x2c, 0xe2, 0x1e, 0x00, 0x14, 0x19, 0x00, 0x00

; FUNCTION 0x007a6884, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_textformat
; alias: _ZN7gameswf13as_textformatD1Ev
; demangled: gameswf::as_textformat::~as_textformat()
; decoder-mode: arm
007a6884  24 30 9f e5                                      ldr r3, [pc, #0x24]
007a6888  24 20 9f e5                                      ldr r2, [pc, #0x24]
007a688c  10 40 2d e9                                      push {r4, lr}
007a6890  03 30 8f e0                                      add r3, pc, r3
007a6894  02 20 93 e7                                      ldr r2, [r3, r2]
007a6898  00 40 a0 e1                                      mov r4, r0
007a689c  08 20 82 e2                                      add r2, r2, #8
007a68a0  00 20 80 e5                                      str r2, [r0]
007a68a4  7c 0c ff eb                                      bl #0x769a9c
007a68a8  04 00 a0 e1                                      mov r0, r4
007a68ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a68b0  00 e2 1e 00 14 19 00 00                          .byte 0x00, 0xe2, 0x1e, 0x00, 0x14, 0x19, 0x00, 0x00

; FUNCTION 0x007a6b40, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_textformat
; alias: _ZN7gameswf13as_textformatD0Ev
; demangled: gameswf::as_textformat::~as_textformat()
; decoder-mode: arm
007a6b40  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007a6b44  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007a6b48  10 40 2d e9                                      push {r4, lr}
007a6b4c  03 30 8f e0                                      add r3, pc, r3
007a6b50  02 20 93 e7                                      ldr r2, [r3, r2]
007a6b54  00 40 a0 e1                                      mov r4, r0
007a6b58  08 20 82 e2                                      add r2, r2, #8
007a6b5c  00 20 80 e5                                      str r2, [r0]
007a6b60  cd 0b ff eb                                      bl #0x769a9c
007a6b64  04 00 a0 e1                                      mov r0, r4
007a6b68  d0 9d ed eb                                      bl #0x30e2b0
007a6b6c  04 00 a0 e1                                      mov r0, r4
007a6b70  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a6b74  44 df 1e 00 14 19 00 00                          .byte 0x44, 0xdf, 0x1e, 0x00, 0x14, 0x19, 0x00, 0x00
