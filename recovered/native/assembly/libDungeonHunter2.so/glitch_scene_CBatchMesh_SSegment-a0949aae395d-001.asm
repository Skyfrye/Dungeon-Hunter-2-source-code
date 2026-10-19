; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00578ee0, declared_size=816, range_size=816, mode=arm
; class-group: glitch::scene::CBatchMesh::SSegment
; alias: _ZNK6glitch5scene10CBatchMesh8SSegment4saveEPNS_2io10IWriteFileEb
; demangled: glitch::scene::CBatchMesh::SSegment::save(glitch::io::IWriteFile*, bool) const
; decoder-mode: arm
00578ee0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00578ee4  00 00 52 e3                                      cmp r2, #0
00578ee8  2c d0 4d e2                                      sub sp, sp, #0x2c
00578eec  00 50 a0 e1                                      mov r5, r0
00578ef0  01 40 a0 e1                                      mov r4, r1
00578ef4  3d 00 00 1a                                      bne #0x578ff0
00578ef8  04 10 80 e2                                      add r1, r0, #4
00578efc  04 20 a0 e3                                      mov r2, #4
00578f00  00 30 94 e5                                      ldr r3, [r4]
00578f04  04 00 a0 e1                                      mov r0, r4
00578f08  0f e0 a0 e1                                      mov lr, pc
00578f0c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00578f10  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00578f14  18 20 a0 e3                                      mov r2, #0x18
00578f18  00 30 94 e5                                      ldr r3, [r4]
00578f1c  04 00 a0 e1                                      mov r0, r4
00578f20  0f e0 a0 e1                                      mov lr, pc
00578f24  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00578f28  10 10 85 e2                                      add r1, r5, #0x10
00578f2c  04 20 a0 e3                                      mov r2, #4
00578f30  00 30 94 e5                                      ldr r3, [r4]
00578f34  04 00 a0 e1                                      mov r0, r4
00578f38  0f e0 a0 e1                                      mov lr, pc
00578f3c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00578f40  14 10 85 e2                                      add r1, r5, #0x14
00578f44  04 20 a0 e3                                      mov r2, #4
00578f48  00 30 94 e5                                      ldr r3, [r4]
00578f4c  04 00 a0 e1                                      mov r0, r4
00578f50  0f e0 a0 e1                                      mov lr, pc
00578f54  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00578f58  18 10 85 e2                                      add r1, r5, #0x18
00578f5c  04 20 a0 e3                                      mov r2, #4
00578f60  00 30 94 e5                                      ldr r3, [r4]
00578f64  04 00 a0 e1                                      mov r0, r4
00578f68  0f e0 a0 e1                                      mov lr, pc
00578f6c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00578f70  20 10 85 e2                                      add r1, r5, #0x20
00578f74  01 20 a0 e3                                      mov r2, #1
00578f78  00 30 94 e5                                      ldr r3, [r4]
00578f7c  04 00 a0 e1                                      mov r0, r4
00578f80  0f e0 a0 e1                                      mov lr, pc
00578f84  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00578f88  22 10 85 e2                                      add r1, r5, #0x22
00578f8c  02 20 a0 e3                                      mov r2, #2
00578f90  00 30 94 e5                                      ldr r3, [r4]
00578f94  04 00 a0 e1                                      mov r0, r4
00578f98  0f e0 a0 e1                                      mov lr, pc
00578f9c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00578fa0  24 10 85 e2                                      add r1, r5, #0x24
00578fa4  02 20 a0 e3                                      mov r2, #2
00578fa8  00 30 94 e5                                      ldr r3, [r4]
00578fac  04 00 a0 e1                                      mov r0, r4
00578fb0  0f e0 a0 e1                                      mov lr, pc
00578fb4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00578fb8  26 10 85 e2                                      add r1, r5, #0x26
00578fbc  02 20 a0 e3                                      mov r2, #2
00578fc0  00 30 94 e5                                      ldr r3, [r4]
00578fc4  04 00 a0 e1                                      mov r0, r4
00578fc8  0f e0 a0 e1                                      mov lr, pc
00578fcc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00578fd0  04 00 a0 e1                                      mov r0, r4
00578fd4  28 10 85 e2                                      add r1, r5, #0x28
00578fd8  00 30 94 e5                                      ldr r3, [r4]
00578fdc  02 20 a0 e3                                      mov r2, #2
00578fe0  0f e0 a0 e1                                      mov lr, pc
00578fe4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00578fe8  2c d0 8d e2                                      add sp, sp, #0x2c
00578fec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00578ff0  04 30 90 e5                                      ldr r3, [r0, #4]
00578ff4  1c 60 8d e2                                      add r6, sp, #0x1c
00578ff8  06 10 a0 e1                                      mov r1, r6
00578ffc  23 cc a0 e1                                      lsr ip, r3, #0x18
00579000  53 08 e7 e7                                      ubfx r0, r3, #0x10, #8
00579004  53 24 e7 e7                                      ubfx r2, r3, #8, #8
00579008  18 c0 cd e5                                      strb ip, [sp, #0x18]
0057900c  19 00 cd e5                                      strb r0, [sp, #0x19]
00579010  1a 20 cd e5                                      strb r2, [sp, #0x1a]
00579014  1b 30 cd e5                                      strb r3, [sp, #0x1b]
00579018  18 30 9d e5                                      ldr r3, [sp, #0x18]
0057901c  04 20 a0 e3                                      mov r2, #4
00579020  04 00 a0 e1                                      mov r0, r4
00579024  1c 30 8d e5                                      str r3, [sp, #0x1c]
00579028  00 30 94 e5                                      ldr r3, [r4]
0057902c  0f e0 a0 e1                                      mov lr, pc
00579030  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00579034  0d 00 a0 e1                                      mov r0, sp
00579038  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0057903c  8f ff ff eb                                      bl #0x578e80
00579040  0d 10 a0 e1                                      mov r1, sp
00579044  00 30 94 e5                                      ldr r3, [r4]
00579048  04 00 a0 e1                                      mov r0, r4
0057904c  18 20 a0 e3                                      mov r2, #0x18
00579050  0f e0 a0 e1                                      mov lr, pc
00579054  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00579058  10 30 85 e2                                      add r3, r5, #0x10
0057905c  01 20 d3 e5                                      ldrb r2, [r3, #1]
00579060  03 00 d3 e5                                      ldrb r0, [r3, #3]
00579064  02 10 d3 e5                                      ldrb r1, [r3, #2]
00579068  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
0057906c  18 00 cd e5                                      strb r0, [sp, #0x18]
00579070  19 10 cd e5                                      strb r1, [sp, #0x19]
00579074  1a 20 cd e5                                      strb r2, [sp, #0x1a]
00579078  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0057907c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00579080  00 30 94 e5                                      ldr r3, [r4]
00579084  06 10 a0 e1                                      mov r1, r6
00579088  1c 20 8d e5                                      str r2, [sp, #0x1c]
0057908c  04 00 a0 e1                                      mov r0, r4
00579090  04 20 a0 e3                                      mov r2, #4
00579094  0f e0 a0 e1                                      mov lr, pc
00579098  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057909c  14 30 85 e2                                      add r3, r5, #0x14
005790a0  01 20 d3 e5                                      ldrb r2, [r3, #1]
005790a4  03 00 d3 e5                                      ldrb r0, [r3, #3]
005790a8  02 10 d3 e5                                      ldrb r1, [r3, #2]
005790ac  14 30 d5 e5                                      ldrb r3, [r5, #0x14]
005790b0  18 00 cd e5                                      strb r0, [sp, #0x18]
005790b4  19 10 cd e5                                      strb r1, [sp, #0x19]
005790b8  1a 20 cd e5                                      strb r2, [sp, #0x1a]
005790bc  1b 30 cd e5                                      strb r3, [sp, #0x1b]
005790c0  18 20 9d e5                                      ldr r2, [sp, #0x18]
005790c4  00 30 94 e5                                      ldr r3, [r4]
005790c8  06 10 a0 e1                                      mov r1, r6
005790cc  1c 20 8d e5                                      str r2, [sp, #0x1c]
005790d0  04 00 a0 e1                                      mov r0, r4
005790d4  04 20 a0 e3                                      mov r2, #4
005790d8  0f e0 a0 e1                                      mov lr, pc
005790dc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005790e0  18 30 85 e2                                      add r3, r5, #0x18
005790e4  01 20 d3 e5                                      ldrb r2, [r3, #1]
005790e8  03 00 d3 e5                                      ldrb r0, [r3, #3]
005790ec  02 10 d3 e5                                      ldrb r1, [r3, #2]
005790f0  18 30 d5 e5                                      ldrb r3, [r5, #0x18]
005790f4  18 00 cd e5                                      strb r0, [sp, #0x18]
005790f8  19 10 cd e5                                      strb r1, [sp, #0x19]
005790fc  1a 20 cd e5                                      strb r2, [sp, #0x1a]
00579100  1b 30 cd e5                                      strb r3, [sp, #0x1b]
00579104  18 20 9d e5                                      ldr r2, [sp, #0x18]
00579108  00 30 94 e5                                      ldr r3, [r4]
0057910c  06 10 a0 e1                                      mov r1, r6
00579110  1c 20 8d e5                                      str r2, [sp, #0x1c]
00579114  04 00 a0 e1                                      mov r0, r4
00579118  04 20 a0 e3                                      mov r2, #4
0057911c  0f e0 a0 e1                                      mov lr, pc
00579120  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00579124  20 20 d5 e5                                      ldrb r2, [r5, #0x20]
00579128  28 10 8d e2                                      add r1, sp, #0x28
0057912c  00 30 94 e5                                      ldr r3, [r4]
00579130  04 00 a0 e1                                      mov r0, r4
00579134  01 20 61 e5                                      strb r2, [r1, #-1]!
00579138  01 20 a0 e3                                      mov r2, #1
0057913c  0f e0 a0 e1                                      mov lr, pc
00579140  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00579144  23 20 d5 e5                                      ldrb r2, [r5, #0x23]
00579148  22 30 d5 e5                                      ldrb r3, [r5, #0x22]
0057914c  28 10 8d e2                                      add r1, sp, #0x28
00579150  18 20 cd e5                                      strb r2, [sp, #0x18]
00579154  19 30 cd e5                                      strb r3, [sp, #0x19]
00579158  b8 31 dd e1                                      ldrh r3, [sp, #0x18]
0057915c  04 00 a0 e1                                      mov r0, r4
00579160  02 20 a0 e3                                      mov r2, #2
00579164  b4 30 61 e1                                      strh r3, [r1, #-4]!
00579168  00 30 94 e5                                      ldr r3, [r4]
0057916c  0f e0 a0 e1                                      mov lr, pc
00579170  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00579174  25 20 d5 e5                                      ldrb r2, [r5, #0x25]
00579178  24 30 d5 e5                                      ldrb r3, [r5, #0x24]
0057917c  28 60 8d e2                                      add r6, sp, #0x28
00579180  18 20 cd e5                                      strb r2, [sp, #0x18]
00579184  19 30 cd e5                                      strb r3, [sp, #0x19]
00579188  b8 31 dd e1                                      ldrh r3, [sp, #0x18]
0057918c  04 00 a0 e1                                      mov r0, r4
00579190  02 20 a0 e3                                      mov r2, #2
00579194  b6 30 66 e1                                      strh r3, [r6, #-6]!
00579198  06 10 a0 e1                                      mov r1, r6
0057919c  00 30 94 e5                                      ldr r3, [r4]
005791a0  0f e0 a0 e1                                      mov lr, pc
005791a4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005791a8  27 20 d5 e5                                      ldrb r2, [r5, #0x27]
005791ac  26 30 d5 e5                                      ldrb r3, [r5, #0x26]
005791b0  06 10 a0 e1                                      mov r1, r6
005791b4  18 20 cd e5                                      strb r2, [sp, #0x18]
005791b8  19 30 cd e5                                      strb r3, [sp, #0x19]
005791bc  b8 31 dd e1                                      ldrh r3, [sp, #0x18]
005791c0  04 00 a0 e1                                      mov r0, r4
005791c4  02 20 a0 e3                                      mov r2, #2
005791c8  b2 32 cd e1                                      strh r3, [sp, #0x22]
005791cc  00 30 94 e5                                      ldr r3, [r4]
005791d0  0f e0 a0 e1                                      mov lr, pc
005791d4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005791d8  28 20 d5 e5                                      ldrb r2, [r5, #0x28]
005791dc  29 30 d5 e5                                      ldrb r3, [r5, #0x29]
005791e0  04 00 a0 e1                                      mov r0, r4
005791e4  19 20 cd e5                                      strb r2, [sp, #0x19]
005791e8  18 30 cd e5                                      strb r3, [sp, #0x18]
005791ec  b8 31 dd e1                                      ldrh r3, [sp, #0x18]
005791f0  06 10 a0 e1                                      mov r1, r6
005791f4  02 20 a0 e3                                      mov r2, #2
005791f8  b2 32 cd e1                                      strh r3, [sp, #0x22]
005791fc  00 30 94 e5                                      ldr r3, [r4]
00579200  0d 70 a0 e1                                      mov r7, sp
00579204  0f e0 a0 e1                                      mov lr, pc
00579208  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057920c  75 ff ff ea                                      b #0x578fe8

; FUNCTION 0x0057b3d8, declared_size=676, range_size=676, mode=arm
; class-group: glitch::scene::CBatchMesh::SSegment
; alias: _ZN6glitch5scene10CBatchMesh8SSegment4loadEPNS_2io9IReadFileEb
; demangled: glitch::scene::CBatchMesh::SSegment::load(glitch::io::IReadFile*, bool)
; decoder-mode: arm
0057b3d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057b3dc  02 c0 a0 e1                                      mov ip, r2
0057b3e0  01 40 a0 e1                                      mov r4, r1
0057b3e4  34 d0 4d e2                                      sub sp, sp, #0x34
0057b3e8  04 80 80 e2                                      add r8, r0, #4
0057b3ec  00 50 a0 e1                                      mov r5, r0
0057b3f0  00 30 94 e5                                      ldr r3, [r4]
0057b3f4  08 10 a0 e1                                      mov r1, r8
0057b3f8  00 c0 8d e5                                      str ip, [sp]
0057b3fc  04 20 a0 e3                                      mov r2, #4
0057b400  04 00 a0 e1                                      mov r0, r4
0057b404  0f e0 a0 e1                                      mov lr, pc
0057b408  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057b40c  d6 ff ff eb                                      bl #0x57b36c
0057b410  01 a0 a0 e3                                      mov sl, #1
0057b414  21 a0 c5 e5                                      strb sl, [r5, #0x21]
0057b418  00 10 a0 e1                                      mov r1, r0
0057b41c  00 60 a0 e1                                      mov r6, r0
0057b420  18 20 a0 e3                                      mov r2, #0x18
0057b424  00 30 94 e5                                      ldr r3, [r4]
0057b428  04 00 a0 e1                                      mov r0, r4
0057b42c  0f e0 a0 e1                                      mov lr, pc
0057b430  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057b434  10 70 85 e2                                      add r7, r5, #0x10
0057b438  0c 60 85 e5                                      str r6, [r5, #0xc]
0057b43c  07 10 a0 e1                                      mov r1, r7
0057b440  04 20 a0 e3                                      mov r2, #4
0057b444  00 30 94 e5                                      ldr r3, [r4]
0057b448  04 00 a0 e1                                      mov r0, r4
0057b44c  14 90 85 e2                                      add sb, r5, #0x14
0057b450  0f e0 a0 e1                                      mov lr, pc
0057b454  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057b458  18 b0 85 e2                                      add fp, r5, #0x18
0057b45c  09 10 a0 e1                                      mov r1, sb
0057b460  04 20 a0 e3                                      mov r2, #4
0057b464  00 30 94 e5                                      ldr r3, [r4]
0057b468  04 00 a0 e1                                      mov r0, r4
0057b46c  0f e0 a0 e1                                      mov lr, pc
0057b470  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057b474  0b 10 a0 e1                                      mov r1, fp
0057b478  04 20 a0 e3                                      mov r2, #4
0057b47c  00 30 94 e5                                      ldr r3, [r4]
0057b480  04 00 a0 e1                                      mov r0, r4
0057b484  0f e0 a0 e1                                      mov lr, pc
0057b488  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057b48c  22 e0 85 e2                                      add lr, r5, #0x22
0057b490  0a 20 a0 e1                                      mov r2, sl
0057b494  00 30 94 e5                                      ldr r3, [r4]
0057b498  20 10 85 e2                                      add r1, r5, #0x20
0057b49c  0c e0 8d e5                                      str lr, [sp, #0xc]
0057b4a0  04 00 a0 e1                                      mov r0, r4
0057b4a4  0f e0 a0 e1                                      mov lr, pc
0057b4a8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057b4ac  24 00 85 e2                                      add r0, r5, #0x24
0057b4b0  08 00 8d e5                                      str r0, [sp, #8]
0057b4b4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0057b4b8  02 20 a0 e3                                      mov r2, #2
0057b4bc  00 30 94 e5                                      ldr r3, [r4]
0057b4c0  04 00 a0 e1                                      mov r0, r4
0057b4c4  0f e0 a0 e1                                      mov lr, pc
0057b4c8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057b4cc  26 30 85 e2                                      add r3, r5, #0x26
0057b4d0  04 30 8d e5                                      str r3, [sp, #4]
0057b4d4  08 10 9d e5                                      ldr r1, [sp, #8]
0057b4d8  02 20 a0 e3                                      mov r2, #2
0057b4dc  00 30 94 e5                                      ldr r3, [r4]
0057b4e0  04 00 a0 e1                                      mov r0, r4
0057b4e4  0f e0 a0 e1                                      mov lr, pc
0057b4e8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057b4ec  28 a0 85 e2                                      add sl, r5, #0x28
0057b4f0  04 10 9d e5                                      ldr r1, [sp, #4]
0057b4f4  02 20 a0 e3                                      mov r2, #2
0057b4f8  00 30 94 e5                                      ldr r3, [r4]
0057b4fc  04 00 a0 e1                                      mov r0, r4
0057b500  0f e0 a0 e1                                      mov lr, pc
0057b504  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057b508  04 00 a0 e1                                      mov r0, r4
0057b50c  00 30 94 e5                                      ldr r3, [r4]
0057b510  0a 10 a0 e1                                      mov r1, sl
0057b514  02 20 a0 e3                                      mov r2, #2
0057b518  0f e0 a0 e1                                      mov lr, pc
0057b51c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057b520  00 c0 9d e5                                      ldr ip, [sp]
0057b524  00 00 5c e3                                      cmp ip, #0
0057b528  51 00 00 0a                                      beq #0x57b674
0057b52c  01 20 d8 e5                                      ldrb r2, [r8, #1]
0057b530  03 00 d8 e5                                      ldrb r0, [r8, #3]
0057b534  02 10 d8 e5                                      ldrb r1, [r8, #2]
0057b538  04 30 d5 e5                                      ldrb r3, [r5, #4]
0057b53c  2c 00 cd e5                                      strb r0, [sp, #0x2c]
0057b540  2d 10 cd e5                                      strb r1, [sp, #0x2d]
0057b544  2e 20 cd e5                                      strb r2, [sp, #0x2e]
0057b548  2f 30 cd e5                                      strb r3, [sp, #0x2f]
0057b54c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0057b550  14 00 8d e2                                      add r0, sp, #0x14
0057b554  06 10 a0 e1                                      mov r1, r6
0057b558  04 30 85 e5                                      str r3, [r5, #4]
0057b55c  47 f6 ff eb                                      bl #0x578e80
0057b560  14 30 9d e5                                      ldr r3, [sp, #0x14]
0057b564  00 30 86 e5                                      str r3, [r6]
0057b568  18 30 9d e5                                      ldr r3, [sp, #0x18]
0057b56c  04 30 86 e5                                      str r3, [r6, #4]
0057b570  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0057b574  08 30 86 e5                                      str r3, [r6, #8]
0057b578  20 30 9d e5                                      ldr r3, [sp, #0x20]
0057b57c  0c 30 86 e5                                      str r3, [r6, #0xc]
0057b580  24 30 9d e5                                      ldr r3, [sp, #0x24]
0057b584  10 30 86 e5                                      str r3, [r6, #0x10]
0057b588  28 30 9d e5                                      ldr r3, [sp, #0x28]
0057b58c  14 30 86 e5                                      str r3, [r6, #0x14]
0057b590  01 20 d7 e5                                      ldrb r2, [r7, #1]
0057b594  03 00 d7 e5                                      ldrb r0, [r7, #3]
0057b598  02 10 d7 e5                                      ldrb r1, [r7, #2]
0057b59c  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
0057b5a0  2c 00 cd e5                                      strb r0, [sp, #0x2c]
0057b5a4  2d 10 cd e5                                      strb r1, [sp, #0x2d]
0057b5a8  2e 20 cd e5                                      strb r2, [sp, #0x2e]
0057b5ac  2f 30 cd e5                                      strb r3, [sp, #0x2f]
0057b5b0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0057b5b4  14 30 d5 e5                                      ldrb r3, [r5, #0x14]
0057b5b8  10 20 85 e5                                      str r2, [r5, #0x10]
0057b5bc  01 00 d9 e5                                      ldrb r0, [sb, #1]
0057b5c0  03 10 d9 e5                                      ldrb r1, [sb, #3]
0057b5c4  02 20 d9 e5                                      ldrb r2, [sb, #2]
0057b5c8  2e 00 cd e5                                      strb r0, [sp, #0x2e]
0057b5cc  2c 10 cd e5                                      strb r1, [sp, #0x2c]
0057b5d0  2d 20 cd e5                                      strb r2, [sp, #0x2d]
0057b5d4  2f 30 cd e5                                      strb r3, [sp, #0x2f]
0057b5d8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0057b5dc  14 30 85 e5                                      str r3, [r5, #0x14]
0057b5e0  03 30 db e5                                      ldrb r3, [fp, #3]
0057b5e4  2c 30 cd e5                                      strb r3, [sp, #0x2c]
0057b5e8  01 10 db e5                                      ldrb r1, [fp, #1]
0057b5ec  02 20 db e5                                      ldrb r2, [fp, #2]
0057b5f0  18 30 d5 e5                                      ldrb r3, [r5, #0x18]
0057b5f4  2e 10 cd e5                                      strb r1, [sp, #0x2e]
0057b5f8  2d 20 cd e5                                      strb r2, [sp, #0x2d]
0057b5fc  2f 30 cd e5                                      strb r3, [sp, #0x2f]
0057b600  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0057b604  22 10 d5 e5                                      ldrb r1, [r5, #0x22]
0057b608  24 20 d5 e5                                      ldrb r2, [r5, #0x24]
0057b60c  18 30 85 e5                                      str r3, [r5, #0x18]
0057b610  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0057b614  01 30 d0 e5                                      ldrb r3, [r0, #1]
0057b618  2d 10 cd e5                                      strb r1, [sp, #0x2d]
0057b61c  26 10 d5 e5                                      ldrb r1, [r5, #0x26]
0057b620  2c 30 cd e5                                      strb r3, [sp, #0x2c]
0057b624  bc 32 dd e1                                      ldrh r3, [sp, #0x2c]
0057b628  b2 32 c5 e1                                      strh r3, [r5, #0x22]
0057b62c  08 00 9d e5                                      ldr r0, [sp, #8]
0057b630  01 30 d0 e5                                      ldrb r3, [r0, #1]
0057b634  2d 20 cd e5                                      strb r2, [sp, #0x2d]
0057b638  28 20 d5 e5                                      ldrb r2, [r5, #0x28]
0057b63c  2c 30 cd e5                                      strb r3, [sp, #0x2c]
0057b640  bc 32 dd e1                                      ldrh r3, [sp, #0x2c]
0057b644  b4 32 c5 e1                                      strh r3, [r5, #0x24]
0057b648  04 00 9d e5                                      ldr r0, [sp, #4]
0057b64c  01 30 d0 e5                                      ldrb r3, [r0, #1]
0057b650  2d 10 cd e5                                      strb r1, [sp, #0x2d]
0057b654  2c 30 cd e5                                      strb r3, [sp, #0x2c]
0057b658  bc 32 dd e1                                      ldrh r3, [sp, #0x2c]
0057b65c  b6 32 c5 e1                                      strh r3, [r5, #0x26]
0057b660  01 30 da e5                                      ldrb r3, [sl, #1]
0057b664  2d 20 cd e5                                      strb r2, [sp, #0x2d]
0057b668  2c 30 cd e5                                      strb r3, [sp, #0x2c]
0057b66c  bc 02 dd e1                                      ldrh r0, [sp, #0x2c]
0057b670  b8 02 c5 e1                                      strh r0, [r5, #0x28]
0057b674  34 d0 8d e2                                      add sp, sp, #0x34
0057b678  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0057b67c, declared_size=204, range_size=204, mode=arm
; class-group: glitch::scene::CBatchMesh::SSegment
; alias: _ZN6glitch5scene10CBatchMesh8SSegment5cloneERKS2_
; demangled: glitch::scene::CBatchMesh::SSegment::clone(glitch::scene::CBatchMesh::SSegment const&)
; decoder-mode: arm
0057b67c  00 30 91 e5                                      ldr r3, [r1]
0057b680  70 40 2d e9                                      push {r4, r5, r6, lr}
0057b684  00 30 80 e5                                      str r3, [r0]
0057b688  04 30 91 e5                                      ldr r3, [r1, #4]
0057b68c  01 40 a0 e1                                      mov r4, r1
0057b690  00 50 a0 e1                                      mov r5, r0
0057b694  04 30 80 e5                                      str r3, [r0, #4]
0057b698  08 30 91 e5                                      ldr r3, [r1, #8]
0057b69c  08 30 80 e5                                      str r3, [r0, #8]
0057b6a0  21 30 d1 e5                                      ldrb r3, [r1, #0x21]
0057b6a4  00 00 53 e3                                      cmp r3, #0
0057b6a8  16 00 00 1a                                      bne #0x57b708
0057b6ac  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0057b6b0  0c 30 80 e5                                      str r3, [r0, #0xc]
0057b6b4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0057b6b8  10 30 85 e5                                      str r3, [r5, #0x10]
0057b6bc  14 30 94 e5                                      ldr r3, [r4, #0x14]
0057b6c0  14 30 85 e5                                      str r3, [r5, #0x14]
0057b6c4  18 30 94 e5                                      ldr r3, [r4, #0x18]
0057b6c8  18 30 85 e5                                      str r3, [r5, #0x18]
0057b6cc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0057b6d0  1c 30 85 e5                                      str r3, [r5, #0x1c]
0057b6d4  20 30 d4 e5                                      ldrb r3, [r4, #0x20]
0057b6d8  20 30 c5 e5                                      strb r3, [r5, #0x20]
0057b6dc  21 30 d4 e5                                      ldrb r3, [r4, #0x21]
0057b6e0  21 30 c5 e5                                      strb r3, [r5, #0x21]
0057b6e4  b2 32 d4 e1                                      ldrh r3, [r4, #0x22]
0057b6e8  b2 32 c5 e1                                      strh r3, [r5, #0x22]
0057b6ec  b4 32 d4 e1                                      ldrh r3, [r4, #0x24]
0057b6f0  b4 32 c5 e1                                      strh r3, [r5, #0x24]
0057b6f4  b6 32 d4 e1                                      ldrh r3, [r4, #0x26]
0057b6f8  b6 32 c5 e1                                      strh r3, [r5, #0x26]
0057b6fc  b8 42 d4 e1                                      ldrh r4, [r4, #0x28]
0057b700  b8 42 c5 e1                                      strh r4, [r5, #0x28]
0057b704  70 80 bd e8                                      pop {r4, r5, r6, pc}
0057b708  17 ff ff eb                                      bl #0x57b36c
0057b70c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0057b710  00 20 93 e5                                      ldr r2, [r3]
0057b714  00 20 80 e5                                      str r2, [r0]
0057b718  04 20 93 e5                                      ldr r2, [r3, #4]
0057b71c  04 20 80 e5                                      str r2, [r0, #4]
0057b720  08 20 93 e5                                      ldr r2, [r3, #8]
0057b724  08 20 80 e5                                      str r2, [r0, #8]
0057b728  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0057b72c  0c 20 80 e5                                      str r2, [r0, #0xc]
0057b730  10 20 93 e5                                      ldr r2, [r3, #0x10]
0057b734  10 20 80 e5                                      str r2, [r0, #0x10]
0057b738  14 30 93 e5                                      ldr r3, [r3, #0x14]
0057b73c  14 30 80 e5                                      str r3, [r0, #0x14]
0057b740  0c 00 85 e5                                      str r0, [r5, #0xc]
0057b744  da ff ff ea                                      b #0x57b6b4

; FUNCTION 0x00588e80, declared_size=256, range_size=256, mode=arm
; class-group: glitch::scene::CBatchMesh::SSegment
; alias: _ZN6glitch5scene10CBatchMesh8SSegment15setSourceBufferEPKNS0_11CMeshBufferEPKNS_4core8aabbox3dIfEE
; demangled: glitch::scene::CBatchMesh::SSegment::setSourceBuffer(glitch::scene::CMeshBuffer const*, glitch::core::aabbox3d<float> const*)
; decoder-mode: arm
00588e80  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
00588e84  00 00 51 e3                                      cmp r1, #0
00588e88  30 00 2d e9                                      push {r4, r5}
00588e8c  03 30 8f e0                                      add r3, pc, r3
00588e90  1c 00 00 0a                                      beq #0x588f08
00588e94  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00588e98  04 00 52 e1                                      cmp r2, r4
00588e9c  14 00 00 0a                                      beq #0x588ef4
00588ea0  21 c0 d0 e5                                      ldrb ip, [r0, #0x21]
00588ea4  00 00 5c e3                                      cmp ip, #0
00588ea8  10 00 00 0a                                      beq #0x588ef0
00588eac  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
00588eb0  05 c0 93 e7                                      ldr ip, [r3, r5]
00588eb4  00 c0 9c e5                                      ldr ip, [ip]
00588eb8  00 00 5c e3                                      cmp ip, #0
00588ebc  0f 00 00 0a                                      beq #0x588f00
00588ec0  0c 00 54 e1                                      cmp r4, ip
00588ec4  0d 00 00 3a                                      blo #0x588f00
00588ec8  0c 30 a0 e1                                      mov r3, ip
00588ecc  00 c0 9c e5                                      ldr ip, [ip]
00588ed0  00 00 5c e3                                      cmp ip, #0
00588ed4  01 00 00 0a                                      beq #0x588ee0
00588ed8  0c 00 54 e1                                      cmp r4, ip
00588edc  f9 ff ff 2a                                      bhs #0x588ec8
00588ee0  00 c0 84 e5                                      str ip, [r4]
00588ee4  00 40 83 e5                                      str r4, [r3]
00588ee8  00 30 a0 e3                                      mov r3, #0
00588eec  21 30 c0 e5                                      strb r3, [r0, #0x21]
00588ef0  0c 20 80 e5                                      str r2, [r0, #0xc]
00588ef4  08 10 80 e5                                      str r1, [r0, #8]
00588ef8  30 00 bd e8                                      pop {r4, r5}
00588efc  1e ff 2f e1                                      bx lr
00588f00  05 30 93 e7                                      ldr r3, [r3, r5]
00588f04  f5 ff ff ea                                      b #0x588ee0
00588f08  0c c0 90 e5                                      ldr ip, [r0, #0xc]
00588f0c  00 00 5c e3                                      cmp ip, #0
00588f10  f7 ff ff 0a                                      beq #0x588ef4
00588f14  21 20 d0 e5                                      ldrb r2, [r0, #0x21]
00588f18  00 00 52 e3                                      cmp r2, #0
00588f1c  10 00 00 0a                                      beq #0x588f64
00588f20  54 50 9f e5                                      ldr r5, [pc, #0x54]
00588f24  05 20 93 e7                                      ldr r2, [r3, r5]
00588f28  00 20 92 e5                                      ldr r2, [r2]
00588f2c  00 00 52 e3                                      cmp r2, #0
00588f30  0e 00 00 0a                                      beq #0x588f70
00588f34  02 00 5c e1                                      cmp ip, r2
00588f38  0c 00 00 3a                                      blo #0x588f70
00588f3c  02 30 a0 e1                                      mov r3, r2
00588f40  00 20 92 e5                                      ldr r2, [r2]
00588f44  00 00 52 e3                                      cmp r2, #0
00588f48  01 00 00 0a                                      beq #0x588f54
00588f4c  02 00 5c e1                                      cmp ip, r2
00588f50  f9 ff ff 2a                                      bhs #0x588f3c
00588f54  00 20 8c e5                                      str r2, [ip]
00588f58  00 c0 83 e5                                      str ip, [r3]
00588f5c  00 30 a0 e3                                      mov r3, #0
00588f60  21 30 c0 e5                                      strb r3, [r0, #0x21]
00588f64  00 30 a0 e3                                      mov r3, #0
00588f68  0c 30 80 e5                                      str r3, [r0, #0xc]
00588f6c  e0 ff ff ea                                      b #0x588ef4
00588f70  05 30 93 e7                                      ldr r3, [r3, r5]
00588f74  f6 ff ff ea                                      b #0x588f54
; mapping-symbol data/literal pool
00588f78  04 bc 40 00 60 20 00 00                          .byte 0x04, 0xbc, 0x40, 0x00, 0x60, 0x20, 0x00, 0x00
