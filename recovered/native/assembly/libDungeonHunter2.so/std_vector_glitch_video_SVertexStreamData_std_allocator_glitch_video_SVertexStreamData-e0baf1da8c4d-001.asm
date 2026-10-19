; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00589ed4, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<glitch::video::SVertexStreamData, std::allocator<glitch::video::SVertexStreamData> >
; alias: _ZNSt6vectorIN6glitch5video17SVertexStreamDataESaIS2_EED1Ev
; demangled: std::vector<glitch::video::SVertexStreamData, std::allocator<glitch::video::SVertexStreamData> >::~vector()
; decoder-mode: arm
00589ed4  70 40 2d e9                                      push {r4, r5, r6, lr}
00589ed8  04 50 90 e5                                      ldr r5, [r0, #4]
00589edc  00 60 90 e5                                      ldr r6, [r0]
00589ee0  00 40 a0 e1                                      mov r4, r0
00589ee4  06 00 55 e1                                      cmp r5, r6
00589ee8  06 00 00 0a                                      beq #0x589f08
00589eec  10 00 15 e5                                      ldr r0, [r5, #-0x10]
00589ef0  10 50 45 e2                                      sub r5, r5, #0x10
00589ef4  00 00 50 e3                                      cmp r0, #0
00589ef8  00 00 00 0a                                      beq #0x589f00
00589efc  a0 4d f6 eb                                      bl #0x31d584
00589f00  05 00 56 e1                                      cmp r6, r5
00589f04  f8 ff ff 1a                                      bne #0x589eec
00589f08  00 00 94 e5                                      ldr r0, [r4]
00589f0c  00 00 50 e3                                      cmp r0, #0
00589f10  05 00 00 0a                                      beq #0x589f2c
00589f14  08 10 94 e5                                      ldr r1, [r4, #8]
00589f18  01 10 60 e0                                      rsb r1, r0, r1
00589f1c  0f 10 c1 e3                                      bic r1, r1, #0xf
00589f20  80 00 51 e3                                      cmp r1, #0x80
00589f24  02 00 00 8a                                      bhi #0x589f34
00589f28  f4 fb 05 eb                                      bl #0x708f00
00589f2c  04 00 a0 e1                                      mov r0, r4
00589f30  70 80 bd e8                                      pop {r4, r5, r6, pc}
00589f34  dd 10 f6 eb                                      bl #0x30e2b0
00589f38  04 00 a0 e1                                      mov r0, r4
00589f3c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0058cbec, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<glitch::video::SVertexStreamData, std::allocator<glitch::video::SVertexStreamData> >
; alias: _ZNSt6vectorIN6glitch5video17SVertexStreamDataESaIS2_EEC1Ej
; demangled: std::vector<glitch::video::SVertexStreamData, std::allocator<glitch::video::SVertexStreamData> >::vector(unsigned int)
; decoder-mode: arm
0058cbec  70 40 2d e9                                      push {r4, r5, r6, lr}
0058cbf0  08 d0 4d e2                                      sub sp, sp, #8
0058cbf4  00 40 a0 e1                                      mov r4, r0
0058cbf8  00 50 a0 e3                                      mov r5, #0
0058cbfc  08 20 8d e2                                      add r2, sp, #8
0058cc00  04 10 22 e5                                      str r1, [r2, #-4]!
0058cc04  00 50 84 e5                                      str r5, [r4]
0058cc08  04 50 84 e5                                      str r5, [r4, #4]
0058cc0c  08 50 a0 e5                                      str r5, [r0, #8]!
0058cc10  01 60 a0 e1                                      mov r6, r1
0058cc14  d8 ff ff eb                                      bl #0x58cb7c
0058cc18  04 20 9d e5                                      ldr r2, [sp, #4]
0058cc1c  56 30 bb e7                                      sbfx r3, r6, #0, #0x1c
0058cc20  05 00 53 e1                                      cmp r3, r5
0058cc24  02 22 80 e0                                      add r2, r0, r2, lsl #4
0058cc28  08 20 84 e5                                      str r2, [r4, #8]
0058cc2c  00 00 84 e5                                      str r0, [r4]
0058cc30  04 00 84 e5                                      str r0, [r4, #4]
0058cc34  06 62 80 e0                                      add r6, r0, r6, lsl #4
0058cc38  09 00 00 da                                      ble #0x58cc64
0058cc3c  ff 20 a0 e3                                      mov r2, #0xff
0058cc40  00 00 00 ea                                      b #0x58cc48
0058cc44  10 00 80 e2                                      add r0, r0, #0x10
0058cc48  01 30 53 e2                                      subs r3, r3, #1
0058cc4c  00 50 80 e5                                      str r5, [r0]
0058cc50  04 50 80 e5                                      str r5, [r0, #4]
0058cc54  08 20 80 e5                                      str r2, [r0, #8]
0058cc58  bc 50 c0 e1                                      strh r5, [r0, #0xc]
0058cc5c  be 50 c0 e1                                      strh r5, [r0, #0xe]
0058cc60  f7 ff ff 1a                                      bne #0x58cc44
0058cc64  04 60 84 e5                                      str r6, [r4, #4]
0058cc68  04 00 a0 e1                                      mov r0, r4
0058cc6c  08 d0 8d e2                                      add sp, sp, #8
0058cc70  70 80 bd e8                                      pop {r4, r5, r6, pc}
