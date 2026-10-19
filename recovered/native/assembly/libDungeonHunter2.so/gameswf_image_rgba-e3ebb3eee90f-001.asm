; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b528c, declared_size=56, range_size=56, mode=arm
; class-group: gameswf::image_rgba
; alias: _ZN7gameswf10image_rgba9set_pixelEiihhhh
; demangled: gameswf::image_rgba::set_pixel(int, int, unsigned char, unsigned char, unsigned char, unsigned char)
; decoder-mode: arm
007b528c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b5290  01 40 a0 e1                                      mov r4, r1
007b5294  02 10 a0 e1                                      mov r1, r2
007b5298  03 80 a0 e1                                      mov r8, r3
007b529c  18 60 dd e5                                      ldrb r6, [sp, #0x18]
007b52a0  1c 50 dd e5                                      ldrb r5, [sp, #0x1c]
007b52a4  20 70 dd e5                                      ldrb r7, [sp, #0x20]
007b52a8  ef ff ff eb                                      bl #0x7b526c
007b52ac  04 31 80 e0                                      add r3, r0, r4, lsl #2
007b52b0  04 81 c0 e7                                      strb r8, [r0, r4, lsl #2]
007b52b4  03 70 c3 e5                                      strb r7, [r3, #3]
007b52b8  01 60 c3 e5                                      strb r6, [r3, #1]
007b52bc  02 50 c3 e5                                      strb r5, [r3, #2]
007b52c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007b57ec, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::image_rgba
; alias: _ZN7gameswf10image_rgbaC1Eii
; demangled: gameswf::image_rgba::image_rgba(int, int)
; decoder-mode: arm
007b57ec  30 40 2d e9                                      push {r4, r5, lr}
007b57f0  01 c1 a0 e1                                      lsl ip, r1, #2
007b57f4  0c d0 4d e2                                      sub sp, sp, #0xc
007b57f8  02 30 a0 e1                                      mov r3, r2
007b57fc  00 c0 8d e5                                      str ip, [sp]
007b5800  01 20 a0 e1                                      mov r2, r1
007b5804  02 c0 a0 e3                                      mov ip, #2
007b5808  00 10 a0 e3                                      mov r1, #0
007b580c  40 50 9f e5                                      ldr r5, [pc, #0x40]
007b5810  00 40 a0 e1                                      mov r4, r0
007b5814  04 c0 8d e5                                      str ip, [sp, #4]
007b5818  6f fe ff eb                                      bl #0x7b51dc
007b581c  34 30 9f e5                                      ldr r3, [pc, #0x34]
007b5820  05 50 8f e0                                      add r5, pc, r5
007b5824  10 20 94 e5                                      ldr r2, [r4, #0x10]
007b5828  03 30 95 e7                                      ldr r3, [r5, r3]
007b582c  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b5830  00 10 a0 e3                                      mov r1, #0
007b5834  08 30 83 e2                                      add r3, r3, #8
007b5838  00 30 84 e5                                      str r3, [r4]
007b583c  90 02 00 e0                                      mul r0, r0, r2
007b5840  d7 74 fe eb                                      bl #0x752ba4
007b5844  08 00 84 e5                                      str r0, [r4, #8]
007b5848  04 00 a0 e1                                      mov r0, r4
007b584c  0c d0 8d e2                                      add sp, sp, #0xc
007b5850  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
007b5854  70 f2 1d 00 f4 1d 00 00                          .byte 0x70, 0xf2, 0x1d, 0x00, 0xf4, 0x1d, 0x00, 0x00

; FUNCTION 0x007b585c, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::image_rgba
; alias: _ZN7gameswf10image_rgbaC2Eii
; demangled: gameswf::image_rgba::image_rgba(int, int)
; decoder-mode: arm
007b585c  30 40 2d e9                                      push {r4, r5, lr}
007b5860  01 c1 a0 e1                                      lsl ip, r1, #2
007b5864  0c d0 4d e2                                      sub sp, sp, #0xc
007b5868  02 30 a0 e1                                      mov r3, r2
007b586c  00 c0 8d e5                                      str ip, [sp]
007b5870  01 20 a0 e1                                      mov r2, r1
007b5874  02 c0 a0 e3                                      mov ip, #2
007b5878  00 10 a0 e3                                      mov r1, #0
007b587c  40 50 9f e5                                      ldr r5, [pc, #0x40]
007b5880  00 40 a0 e1                                      mov r4, r0
007b5884  04 c0 8d e5                                      str ip, [sp, #4]
007b5888  53 fe ff eb                                      bl #0x7b51dc
007b588c  34 30 9f e5                                      ldr r3, [pc, #0x34]
007b5890  05 50 8f e0                                      add r5, pc, r5
007b5894  10 20 94 e5                                      ldr r2, [r4, #0x10]
007b5898  03 30 95 e7                                      ldr r3, [r5, r3]
007b589c  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b58a0  00 10 a0 e3                                      mov r1, #0
007b58a4  08 30 83 e2                                      add r3, r3, #8
007b58a8  00 30 84 e5                                      str r3, [r4]
007b58ac  90 02 00 e0                                      mul r0, r0, r2
007b58b0  bb 74 fe eb                                      bl #0x752ba4
007b58b4  08 00 84 e5                                      str r0, [r4, #8]
007b58b8  04 00 a0 e1                                      mov r0, r4
007b58bc  0c d0 8d e2                                      add sp, sp, #0xc
007b58c0  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
007b58c4  00 f2 1d 00 f4 1d 00 00                          .byte 0x00, 0xf2, 0x1d, 0x00, 0xf4, 0x1d, 0x00, 0x00

; FUNCTION 0x007b5abc, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::image_rgba
; alias: _ZN7gameswf10image_rgbaD1Ev
; demangled: gameswf::image_rgba::~image_rgba()
; decoder-mode: arm
007b5abc  24 30 9f e5                                      ldr r3, [pc, #0x24]
007b5ac0  24 20 9f e5                                      ldr r2, [pc, #0x24]
007b5ac4  10 40 2d e9                                      push {r4, lr}
007b5ac8  03 30 8f e0                                      add r3, pc, r3
007b5acc  02 20 93 e7                                      ldr r2, [r3, r2]
007b5ad0  00 40 a0 e1                                      mov r4, r0
007b5ad4  08 20 82 e2                                      add r2, r2, #8
007b5ad8  00 20 80 e5                                      str r2, [r0]
007b5adc  c9 ff ff eb                                      bl #0x7b5a08
007b5ae0  04 00 a0 e1                                      mov r0, r4
007b5ae4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007b5ae8  c8 ef 1d 00 f4 1d 00 00                          .byte 0xc8, 0xef, 0x1d, 0x00, 0xf4, 0x1d, 0x00, 0x00

; FUNCTION 0x007b5af0, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::image_rgba
; alias: _ZN7gameswf10image_rgbaD2Ev
; demangled: gameswf::image_rgba::~image_rgba()
; decoder-mode: arm
007b5af0  24 30 9f e5                                      ldr r3, [pc, #0x24]
007b5af4  24 20 9f e5                                      ldr r2, [pc, #0x24]
007b5af8  10 40 2d e9                                      push {r4, lr}
007b5afc  03 30 8f e0                                      add r3, pc, r3
007b5b00  02 20 93 e7                                      ldr r2, [r3, r2]
007b5b04  00 40 a0 e1                                      mov r4, r0
007b5b08  08 20 82 e2                                      add r2, r2, #8
007b5b0c  00 20 80 e5                                      str r2, [r0]
007b5b10  bc ff ff eb                                      bl #0x7b5a08
007b5b14  04 00 a0 e1                                      mov r0, r4
007b5b18  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007b5b1c  94 ef 1d 00 f4 1d 00 00                          .byte 0x94, 0xef, 0x1d, 0x00, 0xf4, 0x1d, 0x00, 0x00

; FUNCTION 0x007b5c4c, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::image_rgba
; alias: _ZN7gameswf10image_rgbaD0Ev
; demangled: gameswf::image_rgba::~image_rgba()
; decoder-mode: arm
007b5c4c  10 40 2d e9                                      push {r4, lr}
007b5c50  00 40 a0 e1                                      mov r4, r0
007b5c54  98 ff ff eb                                      bl #0x7b5abc
007b5c58  04 00 a0 e1                                      mov r0, r4
007b5c5c  93 61 ed eb                                      bl #0x30e2b0
007b5c60  04 00 a0 e1                                      mov r0, r4
007b5c64  10 80 bd e8                                      pop {r4, pc}
