; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007f1d5c, declared_size=296, range_size=296, mode=arm
; class-group: b2RevoluteJointDef
; alias: _ZN18b2RevoluteJointDef10InitializeEP6b2BodyS1_RK6b2Vec2
; demangled: b2RevoluteJointDef::Initialize(b2Body*, b2Body*, b2Vec2 const&)
; decoder-mode: arm
007f1d5c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007f1d60  00 60 a0 e1                                      mov r6, r0
007f1d64  0c 20 86 e5                                      str r2, [r6, #0xc]
007f1d68  08 10 86 e5                                      str r1, [r6, #8]
007f1d6c  00 00 93 e5                                      ldr r0, [r3]
007f1d70  01 40 a0 e1                                      mov r4, r1
007f1d74  04 10 91 e5                                      ldr r1, [r1, #4]
007f1d78  02 50 a0 e1                                      mov r5, r2
007f1d7c  03 70 a0 e1                                      mov r7, r3
007f1d80  89 71 ec eb                                      bl #0x30e3ac
007f1d84  08 10 94 e5                                      ldr r1, [r4, #8]
007f1d88  00 a0 a0 e1                                      mov sl, r0
007f1d8c  04 00 97 e5                                      ldr r0, [r7, #4]
007f1d90  85 71 ec eb                                      bl #0x30e3ac
007f1d94  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007f1d98  00 80 a0 e1                                      mov r8, r0
007f1d9c  0a 00 a0 e1                                      mov r0, sl
007f1da0  f1 73 ec eb                                      bl #0x30ed6c
007f1da4  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f1da8  00 90 a0 e1                                      mov sb, r0
007f1dac  08 00 a0 e1                                      mov r0, r8
007f1db0  ed 73 ec eb                                      bl #0x30ed6c
007f1db4  00 10 a0 e1                                      mov r1, r0
007f1db8  09 00 a0 e1                                      mov r0, sb
007f1dbc  78 73 ec eb                                      bl #0x30eba4
007f1dc0  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f1dc4  00 90 a0 e1                                      mov sb, r0
007f1dc8  0a 00 a0 e1                                      mov r0, sl
007f1dcc  e6 73 ec eb                                      bl #0x30ed6c
007f1dd0  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f1dd4  00 a0 a0 e1                                      mov sl, r0
007f1dd8  08 00 a0 e1                                      mov r0, r8
007f1ddc  e2 73 ec eb                                      bl #0x30ed6c
007f1de0  00 10 a0 e1                                      mov r1, r0
007f1de4  0a 00 a0 e1                                      mov r0, sl
007f1de8  6d 73 ec eb                                      bl #0x30eba4
007f1dec  14 90 86 e5                                      str sb, [r6, #0x14]
007f1df0  18 00 86 e5                                      str r0, [r6, #0x18]
007f1df4  04 10 95 e5                                      ldr r1, [r5, #4]
007f1df8  00 00 97 e5                                      ldr r0, [r7]
007f1dfc  6a 71 ec eb                                      bl #0x30e3ac
007f1e00  08 10 95 e5                                      ldr r1, [r5, #8]
007f1e04  00 80 a0 e1                                      mov r8, r0
007f1e08  04 00 97 e5                                      ldr r0, [r7, #4]
007f1e0c  66 71 ec eb                                      bl #0x30e3ac
007f1e10  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f1e14  00 70 a0 e1                                      mov r7, r0
007f1e18  08 00 a0 e1                                      mov r0, r8
007f1e1c  d2 73 ec eb                                      bl #0x30ed6c
007f1e20  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f1e24  00 a0 a0 e1                                      mov sl, r0
007f1e28  07 00 a0 e1                                      mov r0, r7
007f1e2c  ce 73 ec eb                                      bl #0x30ed6c
007f1e30  00 10 a0 e1                                      mov r1, r0
007f1e34  0a 00 a0 e1                                      mov r0, sl
007f1e38  59 73 ec eb                                      bl #0x30eba4
007f1e3c  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f1e40  00 a0 a0 e1                                      mov sl, r0
007f1e44  08 00 a0 e1                                      mov r0, r8
007f1e48  c7 73 ec eb                                      bl #0x30ed6c
007f1e4c  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f1e50  00 80 a0 e1                                      mov r8, r0
007f1e54  07 00 a0 e1                                      mov r0, r7
007f1e58  c3 73 ec eb                                      bl #0x30ed6c
007f1e5c  00 10 a0 e1                                      mov r1, r0
007f1e60  08 00 a0 e1                                      mov r0, r8
007f1e64  4e 73 ec eb                                      bl #0x30eba4
007f1e68  20 00 86 e5                                      str r0, [r6, #0x20]
007f1e6c  1c a0 86 e5                                      str sl, [r6, #0x1c]
007f1e70  38 00 95 e5                                      ldr r0, [r5, #0x38]
007f1e74  38 10 94 e5                                      ldr r1, [r4, #0x38]
007f1e78  4b 71 ec eb                                      bl #0x30e3ac
007f1e7c  24 00 86 e5                                      str r0, [r6, #0x24]
007f1e80  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
