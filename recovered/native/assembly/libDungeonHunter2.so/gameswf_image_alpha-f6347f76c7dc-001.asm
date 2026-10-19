; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b52c4, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::image_alpha
; alias: _ZN7gameswf11image_alpha9set_pixelEiih
; demangled: gameswf::image_alpha::set_pixel(int, int, unsigned char)
; decoder-mode: arm
007b52c4  70 40 2d e9                                      push {r4, r5, r6, lr}
007b52c8  01 40 a0 e1                                      mov r4, r1
007b52cc  02 10 a0 e1                                      mov r1, r2
007b52d0  03 50 a0 e1                                      mov r5, r3
007b52d4  e4 ff ff eb                                      bl #0x7b526c
007b52d8  04 50 c0 e7                                      strb r5, [r0, r4]
007b52dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007b52e0, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::image_alpha
; alias: _ZNK7gameswf11image_alpha12compute_hashEv
; demangled: gameswf::image_alpha::compute_hash() const
; decoder-mode: arm
007b52e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b52e4  0c 10 80 e2                                      add r1, r0, #0xc
007b52e8  00 60 a0 e1                                      mov r6, r0
007b52ec  05 45 01 e3                                      movw r4, #0x1505
007b52f0  04 30 a0 e3                                      mov r3, #4
007b52f4  01 30 43 e2                                      sub r3, r3, #1
007b52f8  03 20 d1 e7                                      ldrb r2, [r1, r3]
007b52fc  84 42 84 e0                                      add r4, r4, r4, lsl #5
007b5300  00 00 53 e3                                      cmp r3, #0
007b5304  02 40 24 e0                                      eor r4, r4, r2
007b5308  f9 ff ff 1a                                      bne #0x7b52f4
007b530c  10 20 86 e2                                      add r2, r6, #0x10
007b5310  04 50 a0 e3                                      mov r5, #4
007b5314  01 50 45 e2                                      sub r5, r5, #1
007b5318  05 30 d2 e7                                      ldrb r3, [r2, r5]
007b531c  84 42 84 e0                                      add r4, r4, r4, lsl #5
007b5320  00 00 55 e3                                      cmp r5, #0
007b5324  03 40 24 e0                                      eor r4, r4, r3
007b5328  f9 ff ff 1a                                      bne #0x7b5314
007b532c  10 70 96 e5                                      ldr r7, [r6, #0x10]
007b5330  00 00 57 e3                                      cmp r7, #0
007b5334  0e 00 00 da                                      ble #0x7b5374
007b5338  06 00 a0 e1                                      mov r0, r6
007b533c  05 10 a0 e1                                      mov r1, r5
007b5340  cd ff ff eb                                      bl #0x7b527c
007b5344  0c 30 96 e5                                      ldr r3, [r6, #0xc]
007b5348  00 00 53 e3                                      cmp r3, #0
007b534c  05 00 00 da                                      ble #0x7b5368
007b5350  01 30 43 e2                                      sub r3, r3, #1
007b5354  03 20 d0 e7                                      ldrb r2, [r0, r3]
007b5358  84 42 84 e0                                      add r4, r4, r4, lsl #5
007b535c  00 00 53 e3                                      cmp r3, #0
007b5360  02 40 24 e0                                      eor r4, r4, r2
007b5364  f9 ff ff 1a                                      bne #0x7b5350
007b5368  01 50 85 e2                                      add r5, r5, #1
007b536c  07 00 55 e1                                      cmp r5, r7
007b5370  f0 ff ff 1a                                      bne #0x7b5338
007b5374  04 00 a0 e1                                      mov r0, r4
007b5378  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007b5714, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::image_alpha
; alias: _ZN7gameswf11image_alphaC1Eii
; demangled: gameswf::image_alpha::image_alpha(int, int)
; decoder-mode: arm
007b5714  30 40 2d e9                                      push {r4, r5, lr}
007b5718  01 c0 a0 e1                                      mov ip, r1
007b571c  0c d0 4d e2                                      sub sp, sp, #0xc
007b5720  03 e0 a0 e3                                      mov lr, #3
007b5724  02 30 a0 e1                                      mov r3, r2
007b5728  48 50 9f e5                                      ldr r5, [pc, #0x48]
007b572c  01 20 a0 e1                                      mov r2, r1
007b5730  00 10 a0 e3                                      mov r1, #0
007b5734  00 40 a0 e1                                      mov r4, r0
007b5738  00 50 8d e8                                      stm sp, {ip, lr}
007b573c  a6 fe ff eb                                      bl #0x7b51dc
007b5740  34 30 9f e5                                      ldr r3, [pc, #0x34]
007b5744  05 50 8f e0                                      add r5, pc, r5
007b5748  10 20 94 e5                                      ldr r2, [r4, #0x10]
007b574c  03 30 95 e7                                      ldr r3, [r5, r3]
007b5750  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b5754  00 10 a0 e3                                      mov r1, #0
007b5758  08 30 83 e2                                      add r3, r3, #8
007b575c  00 30 84 e5                                      str r3, [r4]
007b5760  90 02 00 e0                                      mul r0, r0, r2
007b5764  0e 75 fe eb                                      bl #0x752ba4
007b5768  08 00 84 e5                                      str r0, [r4, #8]
007b576c  04 00 a0 e1                                      mov r0, r4
007b5770  0c d0 8d e2                                      add sp, sp, #0xc
007b5774  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
007b5778  4c f3 1d 00 74 18 00 00                          .byte 0x4c, 0xf3, 0x1d, 0x00, 0x74, 0x18, 0x00, 0x00

; FUNCTION 0x007b5780, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::image_alpha
; alias: _ZN7gameswf11image_alphaC2Eii
; demangled: gameswf::image_alpha::image_alpha(int, int)
; decoder-mode: arm
007b5780  30 40 2d e9                                      push {r4, r5, lr}
007b5784  01 c0 a0 e1                                      mov ip, r1
007b5788  0c d0 4d e2                                      sub sp, sp, #0xc
007b578c  03 e0 a0 e3                                      mov lr, #3
007b5790  02 30 a0 e1                                      mov r3, r2
007b5794  48 50 9f e5                                      ldr r5, [pc, #0x48]
007b5798  01 20 a0 e1                                      mov r2, r1
007b579c  00 10 a0 e3                                      mov r1, #0
007b57a0  00 40 a0 e1                                      mov r4, r0
007b57a4  00 50 8d e8                                      stm sp, {ip, lr}
007b57a8  8b fe ff eb                                      bl #0x7b51dc
007b57ac  34 30 9f e5                                      ldr r3, [pc, #0x34]
007b57b0  05 50 8f e0                                      add r5, pc, r5
007b57b4  10 20 94 e5                                      ldr r2, [r4, #0x10]
007b57b8  03 30 95 e7                                      ldr r3, [r5, r3]
007b57bc  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b57c0  00 10 a0 e3                                      mov r1, #0
007b57c4  08 30 83 e2                                      add r3, r3, #8
007b57c8  00 30 84 e5                                      str r3, [r4]
007b57cc  90 02 00 e0                                      mul r0, r0, r2
007b57d0  f3 74 fe eb                                      bl #0x752ba4
007b57d4  08 00 84 e5                                      str r0, [r4, #8]
007b57d8  04 00 a0 e1                                      mov r0, r4
007b57dc  0c d0 8d e2                                      add sp, sp, #0xc
007b57e0  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
007b57e4  e0 f2 1d 00 74 18 00 00                          .byte 0xe0, 0xf2, 0x1d, 0x00, 0x74, 0x18, 0x00, 0x00

; FUNCTION 0x007b5a54, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::image_alpha
; alias: _ZN7gameswf11image_alphaD1Ev
; demangled: gameswf::image_alpha::~image_alpha()
; decoder-mode: arm
007b5a54  24 30 9f e5                                      ldr r3, [pc, #0x24]
007b5a58  24 20 9f e5                                      ldr r2, [pc, #0x24]
007b5a5c  10 40 2d e9                                      push {r4, lr}
007b5a60  03 30 8f e0                                      add r3, pc, r3
007b5a64  02 20 93 e7                                      ldr r2, [r3, r2]
007b5a68  00 40 a0 e1                                      mov r4, r0
007b5a6c  08 20 82 e2                                      add r2, r2, #8
007b5a70  00 20 80 e5                                      str r2, [r0]
007b5a74  e3 ff ff eb                                      bl #0x7b5a08
007b5a78  04 00 a0 e1                                      mov r0, r4
007b5a7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007b5a80  30 f0 1d 00 74 18 00 00                          .byte 0x30, 0xf0, 0x1d, 0x00, 0x74, 0x18, 0x00, 0x00

; FUNCTION 0x007b5a88, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::image_alpha
; alias: _ZN7gameswf11image_alphaD2Ev
; demangled: gameswf::image_alpha::~image_alpha()
; decoder-mode: arm
007b5a88  24 30 9f e5                                      ldr r3, [pc, #0x24]
007b5a8c  24 20 9f e5                                      ldr r2, [pc, #0x24]
007b5a90  10 40 2d e9                                      push {r4, lr}
007b5a94  03 30 8f e0                                      add r3, pc, r3
007b5a98  02 20 93 e7                                      ldr r2, [r3, r2]
007b5a9c  00 40 a0 e1                                      mov r4, r0
007b5aa0  08 20 82 e2                                      add r2, r2, #8
007b5aa4  00 20 80 e5                                      str r2, [r0]
007b5aa8  d6 ff ff eb                                      bl #0x7b5a08
007b5aac  04 00 a0 e1                                      mov r0, r4
007b5ab0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007b5ab4  fc ef 1d 00 74 18 00 00                          .byte 0xfc, 0xef, 0x1d, 0x00, 0x74, 0x18, 0x00, 0x00

; FUNCTION 0x007b5b8c, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::image_alpha
; alias: _ZNK7gameswf11image_alphaeqERKS0_
; demangled: gameswf::image_alpha::operator==(gameswf::image_alpha const&) const
; decoder-mode: arm
007b5b8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b5b90  0c 20 90 e5                                      ldr r2, [r0, #0xc]
007b5b94  0c 30 91 e5                                      ldr r3, [r1, #0xc]
007b5b98  00 50 a0 e1                                      mov r5, r0
007b5b9c  01 60 a0 e1                                      mov r6, r1
007b5ba0  03 00 52 e1                                      cmp r2, r3
007b5ba4  01 00 00 0a                                      beq #0x7b5bb0
007b5ba8  00 00 a0 e3                                      mov r0, #0
007b5bac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b5bb0  10 70 90 e5                                      ldr r7, [r0, #0x10]
007b5bb4  10 30 91 e5                                      ldr r3, [r1, #0x10]
007b5bb8  03 00 57 e1                                      cmp r7, r3
007b5bbc  f9 ff ff 1a                                      bne #0x7b5ba8
007b5bc0  00 00 57 e3                                      cmp r7, #0
007b5bc4  10 00 00 da                                      ble #0x7b5c0c
007b5bc8  00 40 a0 e3                                      mov r4, #0
007b5bcc  04 10 a0 e1                                      mov r1, r4
007b5bd0  05 00 a0 e1                                      mov r0, r5
007b5bd4  a8 fd ff eb                                      bl #0x7b527c
007b5bd8  04 10 a0 e1                                      mov r1, r4
007b5bdc  00 80 a0 e1                                      mov r8, r0
007b5be0  06 00 a0 e1                                      mov r0, r6
007b5be4  a4 fd ff eb                                      bl #0x7b527c
007b5be8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
007b5bec  00 10 a0 e1                                      mov r1, r0
007b5bf0  08 00 a0 e1                                      mov r0, r8
007b5bf4  79 62 ed eb                                      bl #0x30e5e0
007b5bf8  00 00 50 e3                                      cmp r0, #0
007b5bfc  01 40 84 e2                                      add r4, r4, #1
007b5c00  e8 ff ff 1a                                      bne #0x7b5ba8
007b5c04  07 00 54 e1                                      cmp r4, r7
007b5c08  ef ff ff 1a                                      bne #0x7b5bcc
007b5c0c  01 00 a0 e3                                      mov r0, #1
007b5c10  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007b5c30, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::image_alpha
; alias: _ZN7gameswf11image_alphaD0Ev
; demangled: gameswf::image_alpha::~image_alpha()
; decoder-mode: arm
007b5c30  10 40 2d e9                                      push {r4, lr}
007b5c34  00 40 a0 e1                                      mov r4, r0
007b5c38  85 ff ff eb                                      bl #0x7b5a54
007b5c3c  04 00 a0 e1                                      mov r0, r4
007b5c40  9a 61 ed eb                                      bl #0x30e2b0
007b5c44  04 00 a0 e1                                      mov r0, r4
007b5c48  10 80 bd e8                                      pop {r4, pc}
