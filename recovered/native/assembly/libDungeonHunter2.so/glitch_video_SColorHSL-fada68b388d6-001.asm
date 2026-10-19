; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a8438, declared_size=328, range_size=328, mode=arm
; class-group: glitch::video::SColorHSL
; alias: _ZNK6glitch5video9SColorHSL6toRGB1Efff
; demangled: glitch::video::SColorHSL::toRGB1(float, float, float) const
; decoder-mode: arm
006a8438  70 40 2d e9                                      push {r4, r5, r6, lr}
006a843c  01 50 a0 e1                                      mov r5, r1
006a8440  db 1f 00 e3                                      movw r1, #0xfdb
006a8444  03 00 a0 e1                                      mov r0, r3
006a8448  c9 10 44 e3                                      movt r1, #0x40c9
006a844c  03 40 a0 e1                                      mov r4, r3
006a8450  02 60 a0 e1                                      mov r6, r2
006a8454  a7 97 f1 eb                                      bl #0x30e2f8
006a8458  00 00 50 e3                                      cmp r0, #0
006a845c  09 00 00 0a                                      beq #0x6a8488
006a8460  db 1f 00 e3                                      movw r1, #0xfdb
006a8464  04 00 a0 e1                                      mov r0, r4
006a8468  c9 10 44 e3                                      movt r1, #0x40c9
006a846c  ce 97 f1 eb                                      bl #0x30e3ac
006a8470  db 1f 00 e3                                      movw r1, #0xfdb
006a8474  c9 10 44 e3                                      movt r1, #0x40c9
006a8478  00 40 a0 e1                                      mov r4, r0
006a847c  9d 97 f1 eb                                      bl #0x30e2f8
006a8480  00 00 50 e3                                      cmp r0, #0
006a8484  f5 ff ff 1a                                      bne #0x6a8460
006a8488  04 00 a0 e1                                      mov r0, r4
006a848c  00 10 a0 e3                                      mov r1, #0
006a8490  9d 98 f1 eb                                      bl #0x30e70c
006a8494  00 00 50 e3                                      cmp r0, #0
006a8498  08 00 00 0a                                      beq #0x6a84c0
006a849c  db 1f 00 e3                                      movw r1, #0xfdb
006a84a0  04 00 a0 e1                                      mov r0, r4
006a84a4  c9 10 44 e3                                      movt r1, #0x40c9
006a84a8  bd 99 f1 eb                                      bl #0x30eba4
006a84ac  00 10 a0 e3                                      mov r1, #0
006a84b0  00 40 a0 e1                                      mov r4, r0
006a84b4  94 98 f1 eb                                      bl #0x30e70c
006a84b8  00 00 50 e3                                      cmp r0, #0
006a84bc  f6 ff ff 1a                                      bne #0x6a849c
006a84c0  92 1a 00 e3                                      movw r1, #0xa92
006a84c4  04 00 a0 e1                                      mov r0, r4
006a84c8  86 1f 43 e3                                      movt r1, #0x3f86
006a84cc  8e 98 f1 eb                                      bl #0x30e70c
006a84d0  00 00 50 e3                                      cmp r0, #0
006a84d4  24 00 00 1a                                      bne #0x6a856c
006a84d8  db 1f 00 e3                                      movw r1, #0xfdb
006a84dc  04 00 a0 e1                                      mov r0, r4
006a84e0  49 10 44 e3                                      movt r1, #0x4049
006a84e4  88 98 f1 eb                                      bl #0x30e70c
006a84e8  00 00 50 e3                                      cmp r0, #0
006a84ec  06 50 a0 11                                      movne r5, r6
006a84f0  17 00 00 1a                                      bne #0x6a8554
006a84f4  92 1a 00 e3                                      movw r1, #0xa92
006a84f8  04 00 a0 e1                                      mov r0, r4
006a84fc  86 10 44 e3                                      movt r1, #0x4086
006a8500  81 98 f1 eb                                      bl #0x30e70c
006a8504  00 00 50 e3                                      cmp r0, #0
006a8508  11 00 00 0a                                      beq #0x6a8554
006a850c  06 00 a0 e1                                      mov r0, r6
006a8510  05 10 a0 e1                                      mov r1, r5
006a8514  a4 97 f1 eb                                      bl #0x30e3ac
006a8518  00 60 a0 e1                                      mov r6, r0
006a851c  92 0a 00 e3                                      movw r0, #0xa92
006a8520  04 10 a0 e1                                      mov r1, r4
006a8524  86 00 44 e3                                      movt r0, #0x4086
006a8528  9f 97 f1 eb                                      bl #0x30e3ac
006a852c  00 10 a0 e1                                      mov r1, r0
006a8530  06 00 a0 e1                                      mov r0, r6
006a8534  0c 9a f1 eb                                      bl #0x30ed6c
006a8538  92 1a 00 e3                                      movw r1, #0xa92
006a853c  86 1f 43 e3                                      movt r1, #0x3f86
006a8540  d3 99 f1 eb                                      bl #0x30ec94
006a8544  00 10 a0 e1                                      mov r1, r0
006a8548  05 00 a0 e1                                      mov r0, r5
006a854c  94 99 f1 eb                                      bl #0x30eba4
006a8550  00 50 a0 e1                                      mov r5, r0
006a8554  43 14 a0 e3                                      mov r1, #0x43000000
006a8558  7f 18 81 e2                                      add r1, r1, #0x7f0000
006a855c  05 00 a0 e1                                      mov r0, r5
006a8560  01 9a f1 eb                                      bl #0x30ed6c
006a8564  4d 57 08 eb                                      bl #0x8be2a0
006a8568  70 80 bd e8                                      pop {r4, r5, r6, pc}
006a856c  05 10 a0 e1                                      mov r1, r5
006a8570  06 00 a0 e1                                      mov r0, r6
006a8574  8c 97 f1 eb                                      bl #0x30e3ac
006a8578  04 10 a0 e1                                      mov r1, r4
006a857c  ec ff ff ea                                      b #0x6a8534

; FUNCTION 0x006a8580, declared_size=308, range_size=308, mode=arm
; class-group: glitch::video::SColorHSL
; alias: _ZNK6glitch5video9SColorHSL5toRGBERNS0_6SColorE
; demangled: glitch::video::SColorHSL::toRGB(glitch::video::SColor&) const
; decoder-mode: arm
006a8580  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a8584  04 60 90 e5                                      ldr r6, [r0, #4]
006a8588  00 40 a0 e1                                      mov r4, r0
006a858c  01 50 a0 e1                                      mov r5, r1
006a8590  06 00 a0 e1                                      mov r0, r6
006a8594  00 10 a0 e3                                      mov r1, #0
006a8598  7b 96 f1 eb                                      bl #0x30df8c
006a859c  00 00 50 e3                                      cmp r0, #0
006a85a0  39 00 00 1a                                      bne #0x6a868c
006a85a4  08 70 94 e5                                      ldr r7, [r4, #8]
006a85a8  3f 14 a0 e3                                      mov r1, #0x3f000000
006a85ac  07 00 a0 e1                                      mov r0, r7
006a85b0  fd 98 f1 eb                                      bl #0x30e9ac
006a85b4  00 00 50 e3                                      cmp r0, #0
006a85b8  2b 00 00 1a                                      bne #0x6a866c
006a85bc  06 00 a0 e1                                      mov r0, r6
006a85c0  07 10 a0 e1                                      mov r1, r7
006a85c4  76 99 f1 eb                                      bl #0x30eba4
006a85c8  07 10 a0 e1                                      mov r1, r7
006a85cc  00 80 a0 e1                                      mov r8, r0
006a85d0  06 00 a0 e1                                      mov r0, r6
006a85d4  e4 99 f1 eb                                      bl #0x30ed6c
006a85d8  00 10 a0 e1                                      mov r1, r0
006a85dc  08 00 a0 e1                                      mov r0, r8
006a85e0  71 97 f1 eb                                      bl #0x30e3ac
006a85e4  00 60 a0 e1                                      mov r6, r0
006a85e8  07 10 a0 e1                                      mov r1, r7
006a85ec  07 00 a0 e1                                      mov r0, r7
006a85f0  6b 99 f1 eb                                      bl #0x30eba4
006a85f4  06 10 a0 e1                                      mov r1, r6
006a85f8  6b 97 f1 eb                                      bl #0x30e3ac
006a85fc  92 1a 00 e3                                      movw r1, #0xa92
006a8600  00 70 a0 e1                                      mov r7, r0
006a8604  06 10 44 e3                                      movt r1, #0x4006
006a8608  00 00 94 e5                                      ldr r0, [r4]
006a860c  64 99 f1 eb                                      bl #0x30eba4
006a8610  07 10 a0 e1                                      mov r1, r7
006a8614  00 30 a0 e1                                      mov r3, r0
006a8618  06 20 a0 e1                                      mov r2, r6
006a861c  04 00 a0 e1                                      mov r0, r4
006a8620  84 ff ff eb                                      bl #0x6a8438
006a8624  00 00 c5 e5                                      strb r0, [r5]
006a8628  06 20 a0 e1                                      mov r2, r6
006a862c  00 30 94 e5                                      ldr r3, [r4]
006a8630  07 10 a0 e1                                      mov r1, r7
006a8634  04 00 a0 e1                                      mov r0, r4
006a8638  7e ff ff eb                                      bl #0x6a8438
006a863c  92 1a 00 e3                                      movw r1, #0xa92
006a8640  01 00 c5 e5                                      strb r0, [r5, #1]
006a8644  00 00 94 e5                                      ldr r0, [r4]
006a8648  06 10 44 e3                                      movt r1, #0x4006
006a864c  56 97 f1 eb                                      bl #0x30e3ac
006a8650  07 10 a0 e1                                      mov r1, r7
006a8654  00 30 a0 e1                                      mov r3, r0
006a8658  06 20 a0 e1                                      mov r2, r6
006a865c  04 00 a0 e1                                      mov r0, r4
006a8660  74 ff ff eb                                      bl #0x6a8438
006a8664  02 00 c5 e5                                      strb r0, [r5, #2]
006a8668  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a866c  06 00 a0 e1                                      mov r0, r6
006a8670  07 10 a0 e1                                      mov r1, r7
006a8674  bc 99 f1 eb                                      bl #0x30ed6c
006a8678  00 10 a0 e1                                      mov r1, r0
006a867c  07 00 a0 e1                                      mov r0, r7
006a8680  47 99 f1 eb                                      bl #0x30eba4
006a8684  00 60 a0 e1                                      mov r6, r0
006a8688  d6 ff ff ea                                      b #0x6a85e8
006a868c  43 14 a0 e3                                      mov r1, #0x43000000
006a8690  08 00 94 e5                                      ldr r0, [r4, #8]
006a8694  7f 18 81 e2                                      add r1, r1, #0x7f0000
006a8698  b3 99 f1 eb                                      bl #0x30ed6c
006a869c  ff 56 08 eb                                      bl #0x8be2a0
006a86a0  70 00 ef e6                                      uxtb r0, r0
006a86a4  02 00 c5 e5                                      strb r0, [r5, #2]
006a86a8  00 00 c5 e5                                      strb r0, [r5]
006a86ac  01 00 c5 e5                                      strb r0, [r5, #1]
006a86b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
