; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007843b0, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::line_style
; alias: _ZNK7gameswf10line_style5applyEf
; demangled: gameswf::line_style::apply(float) const
; decoder-mode: arm
007843b0  30 40 2d e9                                      push {r4, r5, lr}
007843b4  70 30 9f e5                                      ldr r3, [pc, #0x70]
007843b8  70 20 9f e5                                      ldr r2, [pc, #0x70]
007843bc  0c d0 4d e2                                      sub sp, sp, #0xc
007843c0  03 30 8f e0                                      add r3, pc, r3
007843c4  02 50 93 e7                                      ldr r5, [r3, r2]
007843c8  b6 30 d0 e1                                      ldrh r3, [r0, #6]
007843cc  00 40 a0 e1                                      mov r4, r0
007843d0  b4 30 cd e1                                      strh r3, [sp, #4]
007843d4  b8 30 d0 e1                                      ldrh r3, [r0, #8]
007843d8  b6 30 cd e1                                      strh r3, [sp, #6]
007843dc  00 30 95 e5                                      ldr r3, [r5]
007843e0  00 00 53 e3                                      cmp r3, #0
007843e4  0e 00 00 0a                                      beq #0x784424
007843e8  03 00 a0 e1                                      mov r0, r3
007843ec  04 10 9d e5                                      ldr r1, [sp, #4]
007843f0  00 30 93 e5                                      ldr r3, [r3]
007843f4  0f e0 a0 e1                                      mov lr, pc
007843f8  78 f0 93 e5                                      ldr pc, [r3, #0x78]
007843fc  00 50 95 e5                                      ldr r5, [r5]
00784400  b4 00 d4 e1                                      ldrh r0, [r4, #4]
00784404  00 00 55 e3                                      cmp r5, #0
00784408  05 00 00 0a                                      beq #0x784424
0078440c  b3 27 ee eb                                      bl #0x30e2e0
00784410  00 40 95 e5                                      ldr r4, [r5]
00784414  00 10 a0 e1                                      mov r1, r0
00784418  05 00 a0 e1                                      mov r0, r5
0078441c  0f e0 a0 e1                                      mov lr, pc
00784420  7c f0 94 e5                                      ldr pc, [r4, #0x7c]
00784424  0c d0 8d e2                                      add sp, sp, #0xc
00784428  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0078442c  d0 06 21 00 b4 39 00 00                          .byte 0xd0, 0x06, 0x21, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x00784b20, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::line_style
; alias: _ZN7gameswf10line_styleC1Ev
; demangled: gameswf::line_style::line_style()
; decoder-mode: arm
00784b20  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00784b24  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00784b28  70 40 2d e9                                      push {r4, r5, r6, lr}
00784b2c  03 30 8f e0                                      add r3, pc, r3
00784b30  02 20 93 e7                                      ldr r2, [r3, r2]
00784b34  00 60 a0 e3                                      mov r6, #0
00784b38  00 10 e0 e3                                      mvn r1, #0
00784b3c  08 20 82 e2                                      add r2, r2, #8
00784b40  00 40 a0 e1                                      mov r4, r0
00784b44  00 20 80 e5                                      str r2, [r0]
00784b48  09 10 c0 e5                                      strb r1, [r0, #9]
00784b4c  b4 60 c0 e1                                      strh r6, [r0, #4]
00784b50  06 10 c0 e5                                      strb r1, [r0, #6]
00784b54  07 10 c0 e5                                      strb r1, [r0, #7]
00784b58  08 10 c0 e5                                      strb r1, [r0, #8]
00784b5c  0c 00 80 e2                                      add r0, r0, #0xc
00784b60  06 50 a0 e1                                      mov r5, r6
00784b64  c8 ff ff eb                                      bl #0x784a8c
00784b68  67 60 c4 e5                                      strb r6, [r4, #0x67]
00784b6c  b8 66 c4 e1                                      strh r6, [r4, #0x68]
00784b70  60 60 c4 e5                                      strb r6, [r4, #0x60]
00784b74  61 60 c4 e5                                      strb r6, [r4, #0x61]
00784b78  62 60 c4 e5                                      strb r6, [r4, #0x62]
00784b7c  63 60 c4 e5                                      strb r6, [r4, #0x63]
00784b80  64 60 c4 e5                                      strb r6, [r4, #0x64]
00784b84  65 60 c4 e5                                      strb r6, [r4, #0x65]
00784b88  66 60 c4 e5                                      strb r6, [r4, #0x66]
00784b8c  04 00 a0 e1                                      mov r0, r4
00784b90  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00784b94  64 ff 20 00 30 25 00 00                          .byte 0x64, 0xff, 0x20, 0x00, 0x30, 0x25, 0x00, 0x00

; FUNCTION 0x00784b9c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::line_style
; alias: _ZN7gameswf10line_styleC2Ev
; demangled: gameswf::line_style::line_style()
; decoder-mode: arm
00784b9c  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00784ba0  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00784ba4  70 40 2d e9                                      push {r4, r5, r6, lr}
00784ba8  03 30 8f e0                                      add r3, pc, r3
00784bac  02 20 93 e7                                      ldr r2, [r3, r2]
00784bb0  00 60 a0 e3                                      mov r6, #0
00784bb4  00 10 e0 e3                                      mvn r1, #0
00784bb8  08 20 82 e2                                      add r2, r2, #8
00784bbc  00 40 a0 e1                                      mov r4, r0
00784bc0  00 20 80 e5                                      str r2, [r0]
00784bc4  09 10 c0 e5                                      strb r1, [r0, #9]
00784bc8  b4 60 c0 e1                                      strh r6, [r0, #4]
00784bcc  06 10 c0 e5                                      strb r1, [r0, #6]
00784bd0  07 10 c0 e5                                      strb r1, [r0, #7]
00784bd4  08 10 c0 e5                                      strb r1, [r0, #8]
00784bd8  0c 00 80 e2                                      add r0, r0, #0xc
00784bdc  06 50 a0 e1                                      mov r5, r6
00784be0  a9 ff ff eb                                      bl #0x784a8c
00784be4  67 60 c4 e5                                      strb r6, [r4, #0x67]
00784be8  b8 66 c4 e1                                      strh r6, [r4, #0x68]
00784bec  60 60 c4 e5                                      strb r6, [r4, #0x60]
00784bf0  61 60 c4 e5                                      strb r6, [r4, #0x61]
00784bf4  62 60 c4 e5                                      strb r6, [r4, #0x62]
00784bf8  63 60 c4 e5                                      strb r6, [r4, #0x63]
00784bfc  64 60 c4 e5                                      strb r6, [r4, #0x64]
00784c00  65 60 c4 e5                                      strb r6, [r4, #0x65]
00784c04  66 60 c4 e5                                      strb r6, [r4, #0x66]
00784c08  04 00 a0 e1                                      mov r0, r4
00784c0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00784c10  e8 fe 20 00 30 25 00 00                          .byte 0xe8, 0xfe, 0x20, 0x00, 0x30, 0x25, 0x00, 0x00

; FUNCTION 0x00784d18, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::line_style
; alias: _ZN7gameswf10line_styleD1Ev
; demangled: gameswf::line_style::~line_style()
; decoder-mode: arm
00784d18  24 30 9f e5                                      ldr r3, [pc, #0x24]
00784d1c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00784d20  10 40 2d e9                                      push {r4, lr}
00784d24  03 30 8f e0                                      add r3, pc, r3
00784d28  02 20 93 e7                                      ldr r2, [r3, r2]
00784d2c  00 40 a0 e1                                      mov r4, r0
00784d30  08 20 82 e2                                      add r2, r2, #8
00784d34  0c 20 80 e4                                      str r2, [r0], #0xc
00784d38  db ff ff eb                                      bl #0x784cac
00784d3c  04 00 a0 e1                                      mov r0, r4
00784d40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00784d44  6c fd 20 00 30 25 00 00                          .byte 0x6c, 0xfd, 0x20, 0x00, 0x30, 0x25, 0x00, 0x00

; FUNCTION 0x00784d68, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::line_style
; alias: _ZN7gameswf10line_styleD0Ev
; demangled: gameswf::line_style::~line_style()
; decoder-mode: arm
00784d68  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00784d6c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00784d70  10 40 2d e9                                      push {r4, lr}
00784d74  03 30 8f e0                                      add r3, pc, r3
00784d78  02 20 93 e7                                      ldr r2, [r3, r2]
00784d7c  00 40 a0 e1                                      mov r4, r0
00784d80  08 20 82 e2                                      add r2, r2, #8
00784d84  0c 20 80 e4                                      str r2, [r0], #0xc
00784d88  c7 ff ff eb                                      bl #0x784cac
00784d8c  04 00 a0 e1                                      mov r0, r4
00784d90  46 25 ee eb                                      bl #0x30e2b0
00784d94  04 00 a0 e1                                      mov r0, r4
00784d98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00784d9c  1c fd 20 00 30 25 00 00                          .byte 0x1c, 0xfd, 0x20, 0x00, 0x30, 0x25, 0x00, 0x00

; FUNCTION 0x007851c4, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::line_style
; alias: _ZN7gameswf10line_style4readEPNS_6streamEiPNS_20movie_definition_subE
; demangled: gameswf::line_style::read(gameswf::stream*, int, gameswf::movie_definition_sub*)
; decoder-mode: arm
007851c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007851c8  00 40 a0 e1                                      mov r4, r0
007851cc  01 00 a0 e1                                      mov r0, r1
007851d0  02 60 a0 e1                                      mov r6, r2
007851d4  01 50 a0 e1                                      mov r5, r1
007851d8  03 70 a0 e1                                      mov r7, r3
007851dc  8c fa ff eb                                      bl #0x783c14
007851e0  53 00 56 e3                                      cmp r6, #0x53
007851e4  b4 00 c4 e1                                      strh r0, [r4, #4]
007851e8  04 00 00 0a                                      beq #0x785200
007851ec  06 00 84 e2                                      add r0, r4, #6
007851f0  05 10 a0 e1                                      mov r1, r5
007851f4  06 20 a0 e1                                      mov r2, r6
007851f8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007851fc  a9 45 00 ea                                      b #0x7968a8
00785200  02 10 a0 e3                                      mov r1, #2
00785204  05 00 a0 e1                                      mov r0, r5
00785208  e5 f9 ff eb                                      bl #0x7839a4
0078520c  02 10 a0 e3                                      mov r1, #2
00785210  60 00 c4 e5                                      strb r0, [r4, #0x60]
00785214  05 00 a0 e1                                      mov r0, r5
00785218  e1 f9 ff eb                                      bl #0x7839a4
0078521c  01 10 a0 e3                                      mov r1, #1
00785220  61 00 c4 e5                                      strb r0, [r4, #0x61]
00785224  05 00 a0 e1                                      mov r0, r5
00785228  dd f9 ff eb                                      bl #0x7839a4
0078522c  01 00 50 e3                                      cmp r0, #1
00785230  00 00 a0 13                                      movne r0, #0
00785234  01 00 a0 03                                      moveq r0, #1
00785238  62 00 c4 e5                                      strb r0, [r4, #0x62]
0078523c  01 10 a0 e3                                      mov r1, #1
00785240  05 00 a0 e1                                      mov r0, r5
00785244  d6 f9 ff eb                                      bl #0x7839a4
00785248  01 00 50 e3                                      cmp r0, #1
0078524c  00 00 a0 13                                      movne r0, #0
00785250  01 00 a0 03                                      moveq r0, #1
00785254  63 00 c4 e5                                      strb r0, [r4, #0x63]
00785258  01 10 a0 e3                                      mov r1, #1
0078525c  05 00 a0 e1                                      mov r0, r5
00785260  cf f9 ff eb                                      bl #0x7839a4
00785264  01 00 50 e3                                      cmp r0, #1
00785268  00 00 a0 13                                      movne r0, #0
0078526c  01 00 a0 03                                      moveq r0, #1
00785270  64 00 c4 e5                                      strb r0, [r4, #0x64]
00785274  01 10 a0 e3                                      mov r1, #1
00785278  05 00 a0 e1                                      mov r0, r5
0078527c  c8 f9 ff eb                                      bl #0x7839a4
00785280  01 00 50 e3                                      cmp r0, #1
00785284  00 00 a0 13                                      movne r0, #0
00785288  01 00 a0 03                                      moveq r0, #1
0078528c  65 00 c4 e5                                      strb r0, [r4, #0x65]
00785290  05 10 a0 e3                                      mov r1, #5
00785294  05 00 a0 e1                                      mov r0, r5
00785298  c1 f9 ff eb                                      bl #0x7839a4
0078529c  01 10 a0 e3                                      mov r1, #1
007852a0  05 00 a0 e1                                      mov r0, r5
007852a4  be f9 ff eb                                      bl #0x7839a4
007852a8  01 00 50 e3                                      cmp r0, #1
007852ac  00 00 a0 13                                      movne r0, #0
007852b0  01 00 a0 03                                      moveq r0, #1
007852b4  66 00 c4 e5                                      strb r0, [r4, #0x66]
007852b8  02 10 a0 e3                                      mov r1, #2
007852bc  05 00 a0 e1                                      mov r0, r5
007852c0  b7 f9 ff eb                                      bl #0x7839a4
007852c4  61 30 d4 e5                                      ldrb r3, [r4, #0x61]
007852c8  67 00 c4 e5                                      strb r0, [r4, #0x67]
007852cc  02 00 53 e3                                      cmp r3, #2
007852d0  0d 00 00 0a                                      beq #0x78530c
007852d4  62 30 d4 e5                                      ldrb r3, [r4, #0x62]
007852d8  00 00 53 e3                                      cmp r3, #0
007852dc  05 00 00 0a                                      beq #0x7852f8
007852e0  0c 00 84 e2                                      add r0, r4, #0xc
007852e4  05 10 a0 e1                                      mov r1, r5
007852e8  07 30 a0 e1                                      mov r3, r7
007852ec  53 20 a0 e3                                      mov r2, #0x53
007852f0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007852f4  aa fe ff ea                                      b #0x784da4
007852f8  06 00 84 e2                                      add r0, r4, #6
007852fc  05 10 a0 e1                                      mov r1, r5
00785300  53 20 a0 e3                                      mov r2, #0x53
00785304  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00785308  66 45 00 ea                                      b #0x7968a8
0078530c  05 00 a0 e1                                      mov r0, r5
00785310  3f fa ff eb                                      bl #0x783c14
00785314  b8 06 c4 e1                                      strh r0, [r4, #0x68]
00785318  ed ff ff ea                                      b #0x7852d4
