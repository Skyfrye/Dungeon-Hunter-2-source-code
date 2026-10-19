; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060e1d4, declared_size=184, range_size=184, mode=arm
; class-group: glitch::collada::CImage
; alias: _ZN6glitch7collada6CImageC1ERKNS0_16CColladaDatabaseERNS0_6SImageE
; demangled: glitch::collada::CImage::CImage(glitch::collada::CColladaDatabase const&, glitch::collada::SImage&)
; decoder-mode: arm
0060e1d4  10 40 2d e9                                      push {r4, lr}
0060e1d8  00 30 91 e5                                      ldr r3, [r1]
0060e1dc  00 40 a0 e1                                      mov r4, r0
0060e1e0  98 00 9f e5                                      ldr r0, [pc, #0x98]
0060e1e4  0c 30 84 e5                                      str r3, [r4, #0xc]
0060e1e8  04 10 91 e5                                      ldr r1, [r1, #4]
0060e1ec  00 00 53 e3                                      cmp r3, #0
0060e1f0  00 00 8f e0                                      add r0, pc, r0
0060e1f4  10 10 84 e5                                      str r1, [r4, #0x10]
0060e1f8  03 00 00 0a                                      beq #0x60e20c
0060e1fc  04 10 93 e5                                      ldr r1, [r3, #4]
0060e200  00 00 51 e3                                      cmp r1, #0
0060e204  01 10 81 12                                      addne r1, r1, #1
0060e208  04 10 83 15                                      strne r1, [r3, #4]
0060e20c  70 10 9f e5                                      ldr r1, [pc, #0x70]
0060e210  70 30 9f e5                                      ldr r3, [pc, #0x70]
0060e214  18 20 84 e5                                      str r2, [r4, #0x18]
0060e218  01 10 90 e7                                      ldr r1, [r0, r1]
0060e21c  03 30 90 e7                                      ldr r3, [r0, r3]
0060e220  04 10 81 e2                                      add r1, r1, #4
0060e224  08 30 83 e2                                      add r3, r3, #8
0060e228  08 10 84 e5                                      str r1, [r4, #8]
0060e22c  00 30 84 e5                                      str r3, [r4]
0060e230  01 10 a0 e3                                      mov r1, #1
0060e234  00 30 a0 e3                                      mov r3, #0
0060e238  14 30 84 e5                                      str r3, [r4, #0x14]
0060e23c  04 10 84 e5                                      str r1, [r4, #4]
0060e240  00 30 92 e5                                      ldr r3, [r2]
0060e244  08 30 84 e5                                      str r3, [r4, #8]
0060e248  10 30 92 e5                                      ldr r3, [r2, #0x10]
0060e24c  00 00 53 e3                                      cmp r3, #0
0060e250  14 30 84 05                                      streq r3, [r4, #0x14]
0060e254  07 00 00 0a                                      beq #0x60e278
0060e258  04 20 93 e5                                      ldr r2, [r3, #4]
0060e25c  01 20 82 e0                                      add r2, r2, r1
0060e260  04 20 83 e5                                      str r2, [r3, #4]
0060e264  14 00 94 e5                                      ldr r0, [r4, #0x14]
0060e268  14 30 84 e5                                      str r3, [r4, #0x14]
0060e26c  00 00 50 e3                                      cmp r0, #0
0060e270  00 00 00 0a                                      beq #0x60e278
0060e274  c2 3c f4 eb                                      bl #0x31d584
0060e278  04 00 a0 e1                                      mov r0, r4
0060e27c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060e280  a0 68 38 00 b4 17 00 00 88 3d 00 00              .byte 0xa0, 0x68, 0x38, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x88, 0x3d, 0x00, 0x00

; FUNCTION 0x00619728, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CImage
; alias: _ZN6glitch7collada6CImageD1Ev
; demangled: glitch::collada::CImage::~CImage()
; decoder-mode: arm
00619728  70 40 2d e9                                      push {r4, r5, r6, lr}
0061972c  44 40 9f e5                                      ldr r4, [pc, #0x44]
00619730  44 30 9f e5                                      ldr r3, [pc, #0x44]
00619734  00 50 a0 e1                                      mov r5, r0
00619738  04 40 8f e0                                      add r4, pc, r4
0061973c  14 00 90 e5                                      ldr r0, [r0, #0x14]
00619740  03 30 94 e7                                      ldr r3, [r4, r3]
00619744  00 00 50 e3                                      cmp r0, #0
00619748  08 30 83 e2                                      add r3, r3, #8
0061974c  00 30 85 e5                                      str r3, [r5]
00619750  00 00 00 0a                                      beq #0x619758
00619754  8a 0f f4 eb                                      bl #0x31d584
00619758  20 30 9f e5                                      ldr r3, [pc, #0x20]
0061975c  05 00 a0 e1                                      mov r0, r5
00619760  03 30 94 e7                                      ldr r3, [r4, r3]
00619764  08 30 83 e2                                      add r3, r3, #8
00619768  0c 30 80 e4                                      str r3, [r0], #0xc
0061976c  40 ff ff eb                                      bl #0x619474
00619770  05 00 a0 e1                                      mov r0, r5
00619774  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00619778  58 b3 37 00 88 3d 00 00 44 2b 00 00              .byte 0x58, 0xb3, 0x37, 0x00, 0x88, 0x3d, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x006202f8, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::CImage
; alias: _ZN6glitch7collada6CImageD0Ev
; demangled: glitch::collada::CImage::~CImage()
; decoder-mode: arm
006202f8  70 40 2d e9                                      push {r4, r5, r6, lr}
006202fc  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
00620300  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00620304  00 40 a0 e1                                      mov r4, r0
00620308  05 50 8f e0                                      add r5, pc, r5
0062030c  14 00 90 e5                                      ldr r0, [r0, #0x14]
00620310  03 30 95 e7                                      ldr r3, [r5, r3]
00620314  00 00 50 e3                                      cmp r0, #0
00620318  08 30 83 e2                                      add r3, r3, #8
0062031c  00 30 84 e5                                      str r3, [r4]
00620320  00 00 00 0a                                      beq #0x620328
00620324  96 f4 f3 eb                                      bl #0x31d584
00620328  28 30 9f e5                                      ldr r3, [pc, #0x28]
0062032c  04 00 a0 e1                                      mov r0, r4
00620330  03 30 95 e7                                      ldr r3, [r5, r3]
00620334  08 30 83 e2                                      add r3, r3, #8
00620338  0c 30 80 e4                                      str r3, [r0], #0xc
0062033c  4c e4 ff eb                                      bl #0x619474
00620340  04 00 a0 e1                                      mov r0, r4
00620344  d9 b7 f3 eb                                      bl #0x30e2b0
00620348  04 00 a0 e1                                      mov r0, r4
0062034c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00620350  88 47 37 00 88 3d 00 00 44 2b 00 00              .byte 0x88, 0x47, 0x37, 0x00, 0x88, 0x3d, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00
