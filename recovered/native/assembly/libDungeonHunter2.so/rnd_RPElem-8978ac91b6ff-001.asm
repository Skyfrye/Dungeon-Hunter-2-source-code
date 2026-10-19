; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048bc00, declared_size=32, range_size=32, mode=arm
; class-group: rnd::RPElem
; alias: _ZN3rnd6RPElem9FillSizesEii
; demangled: rnd::RPElem::FillSizes(int, int)
; decoder-mode: arm
0048bc00  01 30 92 e1                                      orrs r3, r2, r1
0048bc04  1e ff 2f 41                                      bxmi lr
0048bc08  01 00 52 e1                                      cmp r2, r1
0048bc0c  10 20 80 a5                                      strge r2, [r0, #0x10]
0048bc10  10 10 80 b5                                      strlt r1, [r0, #0x10]
0048bc14  14 10 80 e5                                      str r1, [r0, #0x14]
0048bc18  0c 10 80 e5                                      str r1, [r0, #0xc]
0048bc1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048c48c, declared_size=144, range_size=144, mode=arm
; class-group: rnd::RPElem
; alias: _ZN3rnd6RPElem11LoadFromXmlEP9TiXmlNode
; demangled: rnd::RPElem::LoadFromXml(TiXmlNode*)
; decoder-mode: arm
0048c48c  70 40 2d e9                                      push {r4, r5, r6, lr}
0048c490  00 40 a0 e1                                      mov r4, r0
0048c494  00 30 91 e5                                      ldr r3, [r1]
0048c498  01 00 a0 e1                                      mov r0, r1
0048c49c  0f e0 a0 e1                                      mov lr, pc
0048c4a0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0048c4a4  00 50 50 e2                                      subs r5, r0, #0
0048c4a8  17 00 00 0a                                      beq #0x48c50c
0048c4ac  00 30 94 e5                                      ldr r3, [r4]
0048c4b0  00 00 53 e3                                      cmp r3, #0
0048c4b4  14 00 00 0a                                      beq #0x48c50c
0048c4b8  50 10 9f e5                                      ldr r1, [pc, #0x50]
0048c4bc  01 10 8f e0                                      add r1, pc, r1
0048c4c0  ea 21 02 eb                                      bl #0x514c70
0048c4c4  00 10 50 e2                                      subs r1, r0, #0
0048c4c8  03 00 00 0a                                      beq #0x48c4dc
0048c4cc  00 30 94 e5                                      ldr r3, [r4]
0048c4d0  10 00 93 e5                                      ldr r0, [r3, #0x10]
0048c4d4  8e dd ff eb                                      bl #0x483b14
0048c4d8  04 00 84 e5                                      str r0, [r4, #4]
0048c4dc  30 10 9f e5                                      ldr r1, [pc, #0x30]
0048c4e0  05 00 a0 e1                                      mov r0, r5
0048c4e4  01 10 8f e0                                      add r1, pc, r1
0048c4e8  e0 21 02 eb                                      bl #0x514c70
0048c4ec  00 30 50 e2                                      subs r3, r0, #0
0048c4f0  04 00 00 0a                                      beq #0x48c508
0048c4f4  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0048c4f8  01 10 8f e0                                      add r1, pc, r1
0048c4fc  86 07 fa eb                                      bl #0x30e31c
0048c500  01 30 70 e2                                      rsbs r3, r0, #1
0048c504  00 30 a0 33                                      movlo r3, #0
0048c508  08 30 c4 e5                                      strb r3, [r4, #8]
0048c50c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048c510  d4 f1 47 00 fc 88 44 00 f8 23 43 00              .byte 0xd4, 0xf1, 0x47, 0x00, 0xfc, 0x88, 0x44, 0x00, 0xf8, 0x23, 0x43, 0x00
