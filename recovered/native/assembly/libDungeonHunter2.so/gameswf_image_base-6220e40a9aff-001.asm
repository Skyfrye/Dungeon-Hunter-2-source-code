; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b51dc, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::image_base
; alias: _ZN7gameswf10image_baseC2EPhiiiNS0_8id_imageE
; demangled: gameswf::image_base::image_base(unsigned char*, int, int, int, gameswf::image_base::id_image)
; decoder-mode: arm
007b51dc  70 00 2d e9                                      push {r4, r5, r6}
007b51e0  34 40 9f e5                                      ldr r4, [pc, #0x34]
007b51e4  34 50 9f e5                                      ldr r5, [pc, #0x34]
007b51e8  0c 60 9d e5                                      ldr r6, [sp, #0xc]
007b51ec  04 40 8f e0                                      add r4, pc, r4
007b51f0  05 50 94 e7                                      ldr r5, [r4, r5]
007b51f4  14 60 80 e5                                      str r6, [r0, #0x14]
007b51f8  08 10 80 e5                                      str r1, [r0, #8]
007b51fc  08 50 85 e2                                      add r5, r5, #8
007b5200  00 50 80 e5                                      str r5, [r0]
007b5204  10 50 9d e5                                      ldr r5, [sp, #0x10]
007b5208  0c 20 80 e5                                      str r2, [r0, #0xc]
007b520c  10 30 80 e5                                      str r3, [r0, #0x10]
007b5210  04 50 80 e5                                      str r5, [r0, #4]
007b5214  70 00 bd e8                                      pop {r4, r5, r6}
007b5218  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007b521c  a4 f8 1d 00 cc 44 00 00                          .byte 0xa4, 0xf8, 0x1d, 0x00, 0xcc, 0x44, 0x00, 0x00

; FUNCTION 0x007b5224, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::image_base
; alias: _ZN7gameswf10image_baseC1EPhiiiNS0_8id_imageE
; demangled: gameswf::image_base::image_base(unsigned char*, int, int, int, gameswf::image_base::id_image)
; decoder-mode: arm
007b5224  70 00 2d e9                                      push {r4, r5, r6}
007b5228  34 40 9f e5                                      ldr r4, [pc, #0x34]
007b522c  34 50 9f e5                                      ldr r5, [pc, #0x34]
007b5230  0c 60 9d e5                                      ldr r6, [sp, #0xc]
007b5234  04 40 8f e0                                      add r4, pc, r4
007b5238  05 50 94 e7                                      ldr r5, [r4, r5]
007b523c  14 60 80 e5                                      str r6, [r0, #0x14]
007b5240  08 10 80 e5                                      str r1, [r0, #8]
007b5244  08 50 85 e2                                      add r5, r5, #8
007b5248  00 50 80 e5                                      str r5, [r0]
007b524c  10 50 9d e5                                      ldr r5, [sp, #0x10]
007b5250  0c 20 80 e5                                      str r2, [r0, #0xc]
007b5254  10 30 80 e5                                      str r3, [r0, #0x10]
007b5258  04 50 80 e5                                      str r5, [r0, #4]
007b525c  70 00 bd e8                                      pop {r4, r5, r6}
007b5260  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007b5264  5c f8 1d 00 cc 44 00 00                          .byte 0x5c, 0xf8, 0x1d, 0x00, 0xcc, 0x44, 0x00, 0x00

; FUNCTION 0x007b59bc, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::image_base
; alias: _ZN7gameswf10image_baseD1Ev
; demangled: gameswf::image_base::~image_base()
; decoder-mode: arm
007b59bc  10 40 2d e9                                      push {r4, lr}
007b59c0  38 30 9f e5                                      ldr r3, [pc, #0x38]
007b59c4  38 20 9f e5                                      ldr r2, [pc, #0x38]
007b59c8  00 40 a0 e1                                      mov r4, r0
007b59cc  03 30 8f e0                                      add r3, pc, r3
007b59d0  08 00 90 e5                                      ldr r0, [r0, #8]
007b59d4  02 20 93 e7                                      ldr r2, [r3, r2]
007b59d8  00 00 50 e3                                      cmp r0, #0
007b59dc  08 20 82 e2                                      add r2, r2, #8
007b59e0  00 20 84 e5                                      str r2, [r4]
007b59e4  03 00 00 0a                                      beq #0x7b59f8
007b59e8  00 10 a0 e3                                      mov r1, #0
007b59ec  51 74 fe eb                                      bl #0x752b38
007b59f0  00 30 a0 e3                                      mov r3, #0
007b59f4  08 30 84 e5                                      str r3, [r4, #8]
007b59f8  04 00 a0 e1                                      mov r0, r4
007b59fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007b5a00  c4 f0 1d 00 cc 44 00 00                          .byte 0xc4, 0xf0, 0x1d, 0x00, 0xcc, 0x44, 0x00, 0x00

; FUNCTION 0x007b5a08, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::image_base
; alias: _ZN7gameswf10image_baseD2Ev
; demangled: gameswf::image_base::~image_base()
; decoder-mode: arm
007b5a08  10 40 2d e9                                      push {r4, lr}
007b5a0c  38 30 9f e5                                      ldr r3, [pc, #0x38]
007b5a10  38 20 9f e5                                      ldr r2, [pc, #0x38]
007b5a14  00 40 a0 e1                                      mov r4, r0
007b5a18  03 30 8f e0                                      add r3, pc, r3
007b5a1c  08 00 90 e5                                      ldr r0, [r0, #8]
007b5a20  02 20 93 e7                                      ldr r2, [r3, r2]
007b5a24  00 00 50 e3                                      cmp r0, #0
007b5a28  08 20 82 e2                                      add r2, r2, #8
007b5a2c  00 20 84 e5                                      str r2, [r4]
007b5a30  03 00 00 0a                                      beq #0x7b5a44
007b5a34  00 10 a0 e3                                      mov r1, #0
007b5a38  3e 74 fe eb                                      bl #0x752b38
007b5a3c  00 30 a0 e3                                      mov r3, #0
007b5a40  08 30 84 e5                                      str r3, [r4, #8]
007b5a44  04 00 a0 e1                                      mov r0, r4
007b5a48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007b5a4c  78 f0 1d 00 cc 44 00 00                          .byte 0x78, 0xf0, 0x1d, 0x00, 0xcc, 0x44, 0x00, 0x00

; FUNCTION 0x007b5c14, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::image_base
; alias: _ZN7gameswf10image_baseD0Ev
; demangled: gameswf::image_base::~image_base()
; decoder-mode: arm
007b5c14  10 40 2d e9                                      push {r4, lr}
007b5c18  00 40 a0 e1                                      mov r4, r0
007b5c1c  66 ff ff eb                                      bl #0x7b59bc
007b5c20  04 00 a0 e1                                      mov r0, r4
007b5c24  a1 61 ed eb                                      bl #0x30e2b0
007b5c28  04 00 a0 e1                                      mov r0, r4
007b5c2c  10 80 bd e8                                      pop {r4, pc}
