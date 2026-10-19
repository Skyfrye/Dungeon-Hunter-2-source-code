; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a1ed8, declared_size=356, range_size=356, mode=arm
; class-group: glitch::video::SVertexStream
; alias: _ZN6glitch5video13SVertexStream10copyStreamERKS1_jji
; demangled: glitch::video::SVertexStream::copyStream(glitch::video::SVertexStream const&, unsigned int, unsigned int, int)
; decoder-mode: arm
005a1ed8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a1edc  01 50 a0 e1                                      mov r5, r1
005a1ee0  00 40 a0 e1                                      mov r4, r0
005a1ee4  01 10 a0 e3                                      mov r1, #1
005a1ee8  00 00 95 e5                                      ldr r0, [r5]
005a1eec  02 70 a0 e1                                      mov r7, r2
005a1ef0  03 b0 a0 e1                                      mov fp, r3
005a1ef4  f8 fe ff eb                                      bl #0x5a1adc
005a1ef8  04 90 95 e5                                      ldr sb, [r5, #4]
005a1efc  04 10 a0 e3                                      mov r1, #4
005a1f00  2c a1 9f e5                                      ldr sl, [pc, #0x12c]
005a1f04  09 90 80 e0                                      add sb, r0, sb
005a1f08  00 00 94 e5                                      ldr r0, [r4]
005a1f0c  b7 fe ff eb                                      bl #0x5a19f0
005a1f10  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
005a1f14  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
005a1f18  0a a0 8f e0                                      add sl, pc, sl
005a1f1c  93 97 26 e0                                      mla r6, r3, r7, sb
005a1f20  02 10 9a e7                                      ldr r1, [sl, r2]
005a1f24  ba 20 d4 e1                                      ldrh r2, [r4, #0xa]
005a1f28  0b 80 67 e0                                      rsb r8, r7, fp
005a1f2c  93 68 28 e0                                      mla r8, r3, r8, r6
005a1f30  04 b0 94 e5                                      ldr fp, [r4, #4]
005a1f34  02 30 d1 e7                                      ldrb r3, [r1, r2]
005a1f38  bc a0 d4 e1                                      ldrh sl, [r4, #0xc]
005a1f3c  08 00 56 e1                                      cmp r6, r8
005a1f40  0b b0 80 e0                                      add fp, r0, fp
005a1f44  9a 03 0a e0                                      mul sl, sl, r3
005a1f48  be 30 d4 e1                                      ldrh r3, [r4, #0xe]
005a1f4c  0b 00 00 0a                                      beq #0x5a1f80
005a1f50  28 70 9d e5                                      ldr r7, [sp, #0x28]
005a1f54  93 b7 27 e0                                      mla r7, r3, r7, fp
005a1f58  07 00 a0 e1                                      mov r0, r7
005a1f5c  06 10 a0 e1                                      mov r1, r6
005a1f60  0a 20 a0 e1                                      mov r2, sl
005a1f64  3f b2 f5 eb                                      bl #0x30e868
005a1f68  be 20 d5 e1                                      ldrh r2, [r5, #0xe]
005a1f6c  be 30 d4 e1                                      ldrh r3, [r4, #0xe]
005a1f70  02 60 86 e0                                      add r6, r6, r2
005a1f74  06 00 58 e1                                      cmp r8, r6
005a1f78  03 70 87 e0                                      add r7, r7, r3
005a1f7c  f5 ff ff 1a                                      bne #0x5a1f58
005a1f80  00 00 5b e3                                      cmp fp, #0
005a1f84  08 00 00 0a                                      beq #0x5a1fac
005a1f88  00 40 94 e5                                      ldr r4, [r4]
005a1f8c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005a1f90  1f 20 03 e2                                      and r2, r3, #0x1f
005a1f94  01 00 52 e3                                      cmp r2, #1
005a1f98  15 00 00 9a                                      bls #0x5a1ff4
005a1f9c  01 20 42 e2                                      sub r2, r2, #1
005a1fa0  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a1fa4  03 30 82 e1                                      orr r3, r2, r3
005a1fa8  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a1fac  00 00 59 e3                                      cmp sb, #0
005a1fb0  0e 00 00 0a                                      beq #0x5a1ff0
005a1fb4  00 40 95 e5                                      ldr r4, [r5]
005a1fb8  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005a1fbc  1f 20 03 e2                                      and r2, r3, #0x1f
005a1fc0  01 00 52 e3                                      cmp r2, #1
005a1fc4  04 00 00 9a                                      bls #0x5a1fdc
005a1fc8  01 20 42 e2                                      sub r2, r2, #1
005a1fcc  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a1fd0  03 30 82 e1                                      orr r3, r2, r3
005a1fd4  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a1fd8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005a1fdc  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005a1fe0  20 00 13 e3                                      tst r3, #0x20
005a1fe4  0d 00 00 1a                                      bne #0x5a2020
005a1fe8  00 30 a0 e3                                      mov r3, #0
005a1fec  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a1ff0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005a1ff4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005a1ff8  20 00 13 e3                                      tst r3, #0x20
005a1ffc  02 00 00 1a                                      bne #0x5a200c
005a2000  00 30 a0 e3                                      mov r3, #0
005a2004  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a2008  e7 ff ff ea                                      b #0x5a1fac
005a200c  00 30 94 e5                                      ldr r3, [r4]
005a2010  04 00 a0 e1                                      mov r0, r4
005a2014  0f e0 a0 e1                                      mov lr, pc
005a2018  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a201c  f7 ff ff ea                                      b #0x5a2000
005a2020  00 30 94 e5                                      ldr r3, [r4]
005a2024  04 00 a0 e1                                      mov r0, r4
005a2028  0f e0 a0 e1                                      mov lr, pc
005a202c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a2030  ec ff ff ea                                      b #0x5a1fe8
; mapping-symbol data/literal pool
005a2034  78 2b 3f 00 08 11 00 00                          .byte 0x78, 0x2b, 0x3f, 0x00, 0x08, 0x11, 0x00, 0x00

; FUNCTION 0x005a203c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::SVertexStream
; alias: _ZN6glitch5video13SVertexStream6appendERKS1_jjj
; demangled: glitch::video::SVertexStream::append(glitch::video::SVertexStream const&, unsigned int, unsigned int, unsigned int)
; decoder-mode: arm
005a203c  a5 ff ff ea                                      b #0x5a1ed8

; FUNCTION 0x0062fe18, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::SVertexStream
; alias: _ZNK6glitch5video13SVertexStream11unmapBufferEv
; demangled: glitch::video::SVertexStream::unmapBuffer() const
; decoder-mode: arm
0062fe18  10 40 2d e9                                      push {r4, lr}
0062fe1c  00 40 90 e5                                      ldr r4, [r0]
0062fe20  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0062fe24  1f 20 03 e2                                      and r2, r3, #0x1f
0062fe28  01 00 52 e3                                      cmp r2, #1
0062fe2c  04 00 00 9a                                      bls #0x62fe44
0062fe30  01 20 42 e2                                      sub r2, r2, #1
0062fe34  1f 30 c3 e3                                      bic r3, r3, #0x1f
0062fe38  03 30 82 e1                                      orr r3, r2, r3
0062fe3c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0062fe40  10 80 bd e8                                      pop {r4, pc}
0062fe44  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0062fe48  20 00 13 e3                                      tst r3, #0x20
0062fe4c  02 00 00 1a                                      bne #0x62fe5c
0062fe50  00 30 a0 e3                                      mov r3, #0
0062fe54  13 30 c4 e5                                      strb r3, [r4, #0x13]
0062fe58  10 80 bd e8                                      pop {r4, pc}
0062fe5c  00 30 94 e5                                      ldr r3, [r4]
0062fe60  04 00 a0 e1                                      mov r0, r4
0062fe64  0f e0 a0 e1                                      mov lr, pc
0062fe68  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0062fe6c  00 30 a0 e3                                      mov r3, #0
0062fe70  13 30 c4 e5                                      strb r3, [r4, #0x13]
0062fe74  10 80 bd e8                                      pop {r4, pc}
