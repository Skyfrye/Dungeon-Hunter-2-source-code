; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078a5b8, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::text_glyph_record
; alias: _ZN7gameswf17text_glyph_recordD1Ev
; demangled: gameswf::text_glyph_record::~text_glyph_record()
; decoder-mode: arm
0078a5b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0078a5bc  20 50 80 e2                                      add r5, r0, #0x20
0078a5c0  00 40 a0 e1                                      mov r4, r0
0078a5c4  00 10 a0 e3                                      mov r1, #0
0078a5c8  05 00 a0 e1                                      mov r0, r5
0078a5cc  c6 ff ff eb                                      bl #0x78a4ec
0078a5d0  05 00 a0 e1                                      mov r0, r5
0078a5d4  00 10 a0 e3                                      mov r1, #0
0078a5d8  a1 ff ff eb                                      bl #0x78a464
0078a5dc  04 00 94 e5                                      ldr r0, [r4, #4]
0078a5e0  00 00 50 e3                                      cmp r0, #0
0078a5e4  00 00 00 0a                                      beq #0x78a5ec
0078a5e8  14 3f ff eb                                      bl #0x75a240
0078a5ec  04 00 a0 e1                                      mov r0, r4
0078a5f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0078a8b8, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::text_glyph_record
; alias: _ZN7gameswf17text_glyph_recordC1ERKS0_
; demangled: gameswf::text_glyph_record::text_glyph_record(gameswf::text_glyph_record const&)
; decoder-mode: arm
0078a8b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0078a8bc  00 30 91 e5                                      ldr r3, [r1]
0078a8c0  00 40 a0 e1                                      mov r4, r0
0078a8c4  01 50 a0 e1                                      mov r5, r1
0078a8c8  00 30 80 e5                                      str r3, [r0]
0078a8cc  04 00 91 e5                                      ldr r0, [r1, #4]
0078a8d0  00 00 50 e3                                      cmp r0, #0
0078a8d4  04 00 84 e5                                      str r0, [r4, #4]
0078a8d8  00 00 00 0a                                      beq #0x78a8e0
0078a8dc  e0 3c ff eb                                      bl #0x759c64
0078a8e0  08 20 95 e5                                      ldr r2, [r5, #8]
0078a8e4  00 30 a0 e3                                      mov r3, #0
0078a8e8  20 00 84 e2                                      add r0, r4, #0x20
0078a8ec  08 20 84 e5                                      str r2, [r4, #8]
0078a8f0  0c 20 d5 e5                                      ldrb r2, [r5, #0xc]
0078a8f4  20 10 85 e2                                      add r1, r5, #0x20
0078a8f8  0c 20 c4 e5                                      strb r2, [r4, #0xc]
0078a8fc  10 20 95 e5                                      ldr r2, [r5, #0x10]
0078a900  10 20 84 e5                                      str r2, [r4, #0x10]
0078a904  14 20 95 e5                                      ldr r2, [r5, #0x14]
0078a908  14 20 84 e5                                      str r2, [r4, #0x14]
0078a90c  18 20 95 e5                                      ldr r2, [r5, #0x18]
0078a910  18 20 84 e5                                      str r2, [r4, #0x18]
0078a914  1c 20 d5 e5                                      ldrb r2, [r5, #0x1c]
0078a918  1c 20 c4 e5                                      strb r2, [r4, #0x1c]
0078a91c  1d 20 d5 e5                                      ldrb r2, [r5, #0x1d]
0078a920  1d 20 c4 e5                                      strb r2, [r4, #0x1d]
0078a924  1e 20 d5 e5                                      ldrb r2, [r5, #0x1e]
0078a928  2c 30 c4 e5                                      strb r3, [r4, #0x2c]
0078a92c  20 30 84 e5                                      str r3, [r4, #0x20]
0078a930  1e 20 c4 e5                                      strb r2, [r4, #0x1e]
0078a934  24 30 84 e5                                      str r3, [r4, #0x24]
0078a938  28 30 84 e5                                      str r3, [r4, #0x28]
0078a93c  8f ff ff eb                                      bl #0x78a780
0078a940  04 00 a0 e1                                      mov r0, r4
0078a944  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0078b858, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::text_glyph_record
; alias: _ZN7gameswf17text_glyph_record4readEPNS_6streamEiii
; demangled: gameswf::text_glyph_record::read(gameswf::stream*, int, int, int)
; decoder-mode: arm
0078b858  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078b85c  02 60 a0 e1                                      mov r6, r2
0078b860  00 40 a0 e1                                      mov r4, r0
0078b864  01 50 a0 e1                                      mov r5, r1
0078b868  20 00 80 e2                                      add r0, r0, #0x20
0078b86c  02 10 a0 e1                                      mov r1, r2
0078b870  03 90 a0 e1                                      mov sb, r3
0078b874  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0078b878  1b fb ff eb                                      bl #0x78a4ec
0078b87c  00 00 56 e3                                      cmp r6, #0
0078b880  11 00 00 da                                      ble #0x78b8cc
0078b884  00 70 a0 e3                                      mov r7, #0
0078b888  07 80 a0 e1                                      mov r8, r7
0078b88c  09 10 a0 e1                                      mov r1, sb
0078b890  05 00 a0 e1                                      mov r0, r5
0078b894  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0078b898  41 e0 ff eb                                      bl #0x7839a4
0078b89c  07 a0 8a e0                                      add sl, sl, r7
0078b8a0  be 01 ca e1                                      strh r0, [sl, #0x1e]
0078b8a4  0b 10 a0 e1                                      mov r1, fp
0078b8a8  05 00 a0 e1                                      mov r0, r5
0078b8ac  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0078b8b0  6c e0 ff eb                                      bl #0x783a68
0078b8b4  2a 0c ee eb                                      bl #0x30e964
0078b8b8  01 80 88 e2                                      add r8, r8, #1
0078b8bc  06 00 58 e1                                      cmp r8, r6
0078b8c0  07 00 8a e7                                      str r0, [sl, r7]
0078b8c4  24 70 87 e2                                      add r7, r7, #0x24
0078b8c8  ef ff ff 1a                                      bne #0x78b88c
0078b8cc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
