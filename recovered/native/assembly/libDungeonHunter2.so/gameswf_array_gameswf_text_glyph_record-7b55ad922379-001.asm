; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078a5f4, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::text_glyph_record>
; alias: _ZN7gameswf5arrayINS_17text_glyph_recordEE7reserveEi
; demangled: gameswf::array<gameswf::text_glyph_record>::reserve(int)
; decoder-mode: arm
0078a5f4  10 40 2d e9                                      push {r4, lr}
0078a5f8  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0078a5fc  00 40 a0 e1                                      mov r4, r0
0078a600  00 00 53 e3                                      cmp r3, #0
0078a604  11 00 00 1a                                      bne #0x78a650
0078a608  00 00 51 e3                                      cmp r1, #0
0078a60c  08 20 90 e5                                      ldr r2, [r0, #8]
0078a610  08 10 80 e5                                      str r1, [r0, #8]
0078a614  0e 00 00 1a                                      bne #0x78a654
0078a618  00 00 90 e5                                      ldr r0, [r0]
0078a61c  00 00 50 e3                                      cmp r0, #0
0078a620  02 00 00 0a                                      beq #0x78a630
0078a624  30 10 a0 e3                                      mov r1, #0x30
0078a628  91 02 01 e0                                      mul r1, r1, r2
0078a62c  41 21 ff eb                                      bl #0x752b38
0078a630  00 30 a0 e3                                      mov r3, #0
0078a634  00 30 84 e5                                      str r3, [r4]
0078a638  10 80 bd e8                                      pop {r4, pc}
0078a63c  30 00 a0 e3                                      mov r0, #0x30
0078a640  90 01 00 e0                                      mul r0, r0, r1
0078a644  0c 10 a0 e1                                      mov r1, ip
0078a648  53 21 ff eb                                      bl #0x752b9c
0078a64c  00 00 84 e5                                      str r0, [r4]
0078a650  10 80 bd e8                                      pop {r4, pc}
0078a654  00 c0 90 e5                                      ldr ip, [r0]
0078a658  00 00 5c e3                                      cmp ip, #0
0078a65c  f6 ff ff 0a                                      beq #0x78a63c
0078a660  30 e0 a0 e3                                      mov lr, #0x30
0078a664  9e 02 02 e0                                      mul r2, lr, r2
0078a668  0c 00 a0 e1                                      mov r0, ip
0078a66c  9e 01 01 e0                                      mul r1, lr, r1
0078a670  4d 21 ff eb                                      bl #0x752bac
0078a674  00 00 84 e5                                      str r0, [r4]
0078a678  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078bccc, declared_size=276, range_size=276, mode=arm
; class-group: gameswf::array<gameswf::text_glyph_record>
; alias: _ZN7gameswf5arrayINS_17text_glyph_recordEE6resizeEi
; demangled: gameswf::array<gameswf::text_glyph_record>::resize(int)
; decoder-mode: arm
0078bccc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0078bcd0  04 60 90 e5                                      ldr r6, [r0, #4]
0078bcd4  00 40 a0 e1                                      mov r4, r0
0078bcd8  01 50 a0 e1                                      mov r5, r1
0078bcdc  01 00 56 e1                                      cmp r6, r1
0078bce0  09 00 00 da                                      ble #0x78bd0c
0078bce4  30 80 a0 e3                                      mov r8, #0x30
0078bce8  98 01 08 e0                                      mul r8, r8, r1
0078bcec  01 70 a0 e1                                      mov r7, r1
0078bcf0  00 00 94 e5                                      ldr r0, [r4]
0078bcf4  01 70 87 e2                                      add r7, r7, #1
0078bcf8  08 00 80 e0                                      add r0, r0, r8
0078bcfc  2d fa ff eb                                      bl #0x78a5b8
0078bd00  06 00 57 e1                                      cmp r7, r6
0078bd04  30 80 88 e2                                      add r8, r8, #0x30
0078bd08  f8 ff ff 1a                                      bne #0x78bcf0
0078bd0c  00 00 55 e3                                      cmp r5, #0
0078bd10  02 00 00 0a                                      beq #0x78bd20
0078bd14  08 30 94 e5                                      ldr r3, [r4, #8]
0078bd18  03 00 55 e1                                      cmp r5, r3
0078bd1c  2b 00 00 ca                                      bgt #0x78bdd0
0078bd20  05 00 56 e1                                      cmp r6, r5
0078bd24  27 00 00 aa                                      bge #0x78bdc8
0078bd28  30 c0 a0 e3                                      mov ip, #0x30
0078bd2c  9c 06 0c e0                                      mul ip, ip, r6
0078bd30  00 80 a0 e3                                      mov r8, #0
0078bd34  fe a5 a0 e3                                      mov sl, #0x3f800000
0078bd38  00 10 a0 e3                                      mov r1, #0
0078bd3c  00 00 e0 e3                                      mvn r0, #0
0078bd40  01 90 a0 e3                                      mov sb, #1
0078bd44  00 70 94 e5                                      ldr r7, [r4]
0078bd48  01 60 86 e2                                      add r6, r6, #1
0078bd4c  05 00 56 e1                                      cmp r6, r5
0078bd50  0c 30 87 e0                                      add r3, r7, ip
0078bd54  0c 20 83 e2                                      add r2, r3, #0xc
0078bd58  04 10 82 e4                                      str r1, [r2], #4
0078bd5c  04 10 82 e4                                      str r1, [r2], #4
0078bd60  04 10 82 e4                                      str r1, [r2], #4
0078bd64  04 10 82 e4                                      str r1, [r2], #4
0078bd68  04 10 82 e4                                      str r1, [r2], #4
0078bd6c  04 10 82 e4                                      str r1, [r2], #4
0078bd70  04 10 82 e4                                      str r1, [r2], #4
0078bd74  04 10 82 e4                                      str r1, [r2], #4
0078bd78  00 10 82 e5                                      str r1, [r2]
0078bd7c  0c 00 87 e7                                      str r0, [r7, ip]
0078bd80  2c 10 c3 e5                                      strb r1, [r3, #0x2c]
0078bd84  04 10 83 e5                                      str r1, [r3, #4]
0078bd88  08 00 c3 e5                                      strb r0, [r3, #8]
0078bd8c  09 00 c3 e5                                      strb r0, [r3, #9]
0078bd90  0a 00 c3 e5                                      strb r0, [r3, #0xa]
0078bd94  0b 00 c3 e5                                      strb r0, [r3, #0xb]
0078bd98  0c 10 c3 e5                                      strb r1, [r3, #0xc]
0078bd9c  10 80 83 e5                                      str r8, [r3, #0x10]
0078bda0  14 80 83 e5                                      str r8, [r3, #0x14]
0078bda4  18 a0 83 e5                                      str sl, [r3, #0x18]
0078bda8  1c 10 c3 e5                                      strb r1, [r3, #0x1c]
0078bdac  1d 10 c3 e5                                      strb r1, [r3, #0x1d]
0078bdb0  1e 90 c3 e5                                      strb sb, [r3, #0x1e]
0078bdb4  20 10 83 e5                                      str r1, [r3, #0x20]
0078bdb8  24 10 83 e5                                      str r1, [r3, #0x24]
0078bdbc  28 10 83 e5                                      str r1, [r3, #0x28]
0078bdc0  30 c0 8c e2                                      add ip, ip, #0x30
0078bdc4  de ff ff 1a                                      bne #0x78bd44
0078bdc8  04 50 84 e5                                      str r5, [r4, #4]
0078bdcc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0078bdd0  04 00 a0 e1                                      mov r0, r4
0078bdd4  c5 10 85 e0                                      add r1, r5, r5, asr #1
0078bdd8  05 fa ff eb                                      bl #0x78a5f4
0078bddc  cf ff ff ea                                      b #0x78bd20
