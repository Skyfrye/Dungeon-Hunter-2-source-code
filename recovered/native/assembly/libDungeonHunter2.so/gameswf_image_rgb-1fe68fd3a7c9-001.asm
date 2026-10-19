; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b58cc, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::image_rgb
; alias: _ZN7gameswf9image_rgbC1Eii
; demangled: gameswf::image_rgb::image_rgb(int, int)
; decoder-mode: arm
007b58cc  30 40 2d e9                                      push {r4, r5, lr}
007b58d0  01 c0 81 e2                                      add ip, r1, #1
007b58d4  8c c0 8c e0                                      add ip, ip, ip, lsl #1
007b58d8  0c d0 4d e2                                      sub sp, sp, #0xc
007b58dc  03 c0 cc e3                                      bic ip, ip, #3
007b58e0  02 30 a0 e1                                      mov r3, r2
007b58e4  00 c0 8d e5                                      str ip, [sp]
007b58e8  01 20 a0 e1                                      mov r2, r1
007b58ec  01 c0 a0 e3                                      mov ip, #1
007b58f0  00 10 a0 e3                                      mov r1, #0
007b58f4  40 50 9f e5                                      ldr r5, [pc, #0x40]
007b58f8  00 40 a0 e1                                      mov r4, r0
007b58fc  04 c0 8d e5                                      str ip, [sp, #4]
007b5900  35 fe ff eb                                      bl #0x7b51dc
007b5904  34 30 9f e5                                      ldr r3, [pc, #0x34]
007b5908  05 50 8f e0                                      add r5, pc, r5
007b590c  10 20 94 e5                                      ldr r2, [r4, #0x10]
007b5910  03 30 95 e7                                      ldr r3, [r5, r3]
007b5914  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b5918  00 10 a0 e3                                      mov r1, #0
007b591c  08 30 83 e2                                      add r3, r3, #8
007b5920  00 30 84 e5                                      str r3, [r4]
007b5924  90 02 00 e0                                      mul r0, r0, r2
007b5928  9d 74 fe eb                                      bl #0x752ba4
007b592c  08 00 84 e5                                      str r0, [r4, #8]
007b5930  04 00 a0 e1                                      mov r0, r4
007b5934  0c d0 8d e2                                      add sp, sp, #0xc
007b5938  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
007b593c  88 f1 1d 00 d0 47 00 00                          .byte 0x88, 0xf1, 0x1d, 0x00, 0xd0, 0x47, 0x00, 0x00

; FUNCTION 0x007b5944, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::image_rgb
; alias: _ZN7gameswf9image_rgbC2Eii
; demangled: gameswf::image_rgb::image_rgb(int, int)
; decoder-mode: arm
007b5944  30 40 2d e9                                      push {r4, r5, lr}
007b5948  01 c0 81 e2                                      add ip, r1, #1
007b594c  8c c0 8c e0                                      add ip, ip, ip, lsl #1
007b5950  0c d0 4d e2                                      sub sp, sp, #0xc
007b5954  03 c0 cc e3                                      bic ip, ip, #3
007b5958  02 30 a0 e1                                      mov r3, r2
007b595c  00 c0 8d e5                                      str ip, [sp]
007b5960  01 20 a0 e1                                      mov r2, r1
007b5964  01 c0 a0 e3                                      mov ip, #1
007b5968  00 10 a0 e3                                      mov r1, #0
007b596c  40 50 9f e5                                      ldr r5, [pc, #0x40]
007b5970  00 40 a0 e1                                      mov r4, r0
007b5974  04 c0 8d e5                                      str ip, [sp, #4]
007b5978  17 fe ff eb                                      bl #0x7b51dc
007b597c  34 30 9f e5                                      ldr r3, [pc, #0x34]
007b5980  05 50 8f e0                                      add r5, pc, r5
007b5984  10 20 94 e5                                      ldr r2, [r4, #0x10]
007b5988  03 30 95 e7                                      ldr r3, [r5, r3]
007b598c  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b5990  00 10 a0 e3                                      mov r1, #0
007b5994  08 30 83 e2                                      add r3, r3, #8
007b5998  00 30 84 e5                                      str r3, [r4]
007b599c  90 02 00 e0                                      mul r0, r0, r2
007b59a0  7f 74 fe eb                                      bl #0x752ba4
007b59a4  08 00 84 e5                                      str r0, [r4, #8]
007b59a8  04 00 a0 e1                                      mov r0, r4
007b59ac  0c d0 8d e2                                      add sp, sp, #0xc
007b59b0  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
007b59b4  10 f1 1d 00 d0 47 00 00                          .byte 0x10, 0xf1, 0x1d, 0x00, 0xd0, 0x47, 0x00, 0x00

; FUNCTION 0x007b5b24, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::image_rgb
; alias: _ZN7gameswf9image_rgbD1Ev
; demangled: gameswf::image_rgb::~image_rgb()
; decoder-mode: arm
007b5b24  24 30 9f e5                                      ldr r3, [pc, #0x24]
007b5b28  24 20 9f e5                                      ldr r2, [pc, #0x24]
007b5b2c  10 40 2d e9                                      push {r4, lr}
007b5b30  03 30 8f e0                                      add r3, pc, r3
007b5b34  02 20 93 e7                                      ldr r2, [r3, r2]
007b5b38  00 40 a0 e1                                      mov r4, r0
007b5b3c  08 20 82 e2                                      add r2, r2, #8
007b5b40  00 20 80 e5                                      str r2, [r0]
007b5b44  af ff ff eb                                      bl #0x7b5a08
007b5b48  04 00 a0 e1                                      mov r0, r4
007b5b4c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007b5b50  60 ef 1d 00 d0 47 00 00                          .byte 0x60, 0xef, 0x1d, 0x00, 0xd0, 0x47, 0x00, 0x00

; FUNCTION 0x007b5b58, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::image_rgb
; alias: _ZN7gameswf9image_rgbD2Ev
; demangled: gameswf::image_rgb::~image_rgb()
; decoder-mode: arm
007b5b58  24 30 9f e5                                      ldr r3, [pc, #0x24]
007b5b5c  24 20 9f e5                                      ldr r2, [pc, #0x24]
007b5b60  10 40 2d e9                                      push {r4, lr}
007b5b64  03 30 8f e0                                      add r3, pc, r3
007b5b68  02 20 93 e7                                      ldr r2, [r3, r2]
007b5b6c  00 40 a0 e1                                      mov r4, r0
007b5b70  08 20 82 e2                                      add r2, r2, #8
007b5b74  00 20 80 e5                                      str r2, [r0]
007b5b78  a2 ff ff eb                                      bl #0x7b5a08
007b5b7c  04 00 a0 e1                                      mov r0, r4
007b5b80  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007b5b84  2c ef 1d 00 d0 47 00 00                          .byte 0x2c, 0xef, 0x1d, 0x00, 0xd0, 0x47, 0x00, 0x00

; FUNCTION 0x007b5c68, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::image_rgb
; alias: _ZN7gameswf9image_rgbD0Ev
; demangled: gameswf::image_rgb::~image_rgb()
; decoder-mode: arm
007b5c68  10 40 2d e9                                      push {r4, lr}
007b5c6c  00 40 a0 e1                                      mov r4, r0
007b5c70  ab ff ff eb                                      bl #0x7b5b24
007b5c74  04 00 a0 e1                                      mov r0, r4
007b5c78  8c 61 ed eb                                      bl #0x30e2b0
007b5c7c  04 00 a0 e1                                      mov r0, r4
007b5c80  10 80 bd e8                                      pop {r4, pc}
