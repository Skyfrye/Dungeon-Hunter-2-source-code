; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005606a8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZN6glitch2io15CLightAttribute8getLightEv
; demangled: glitch::io::CLightAttribute::getLight()
; decoder-mode: arm
005606a8  24 30 91 e5                                      ldr r3, [r1, #0x24]
005606ac  00 00 53 e3                                      cmp r3, #0
005606b0  00 30 80 e5                                      str r3, [r0]
005606b4  00 20 93 15                                      ldrne r2, [r3]
005606b8  01 20 82 12                                      addne r2, r2, #1
005606bc  00 20 83 15                                      strne r2, [r3]
005606c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005606c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZN6glitch2io15CLightAttribute7getBoolEv
; demangled: glitch::io::CLightAttribute::getBool()
; decoder-mode: arm
005606c4  24 00 90 e5                                      ldr r0, [r0, #0x24]
005606c8  00 00 50 e2                                      subs r0, r0, #0
005606cc  01 00 a0 13                                      movne r0, #1
005606d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005606d4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZN6glitch2io15CLightAttribute9setStringEPKc
; demangled: glitch::io::CLightAttribute::setString(char const*)
; decoder-mode: arm
005606d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005606d8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZNK6glitch2io15CLightAttribute7getTypeEv
; demangled: glitch::io::CLightAttribute::getType() const
; decoder-mode: arm
005606d8  1b 00 a0 e3                                      mov r0, #0x1b
005606dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005606e0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZNK6glitch2io15CLightAttribute13getTypeStringEv
; demangled: glitch::io::CLightAttribute::getTypeString() const
; decoder-mode: arm
005606e0  04 00 9f e5                                      ldr r0, [pc, #4]
005606e4  00 00 8f e0                                      add r0, pc, r0
005606e8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005606ec  0c e8 37 00                                      .byte 0x0c, 0xe8, 0x37, 0x00

; FUNCTION 0x00561dd8, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZN6glitch2io15CLightAttribute9getStringEPc
; demangled: glitch::io::CLightAttribute::getString(char*)
; decoder-mode: arm
00561dd8  24 30 90 e5                                      ldr r3, [r0, #0x24]
00561ddc  00 00 53 e3                                      cmp r3, #0
00561de0  00 30 c1 05                                      strbeq r3, [r1]
00561de4  1e ff 2f 01                                      bxeq lr
00561de8  01 00 a0 e1                                      mov r0, r1
00561dec  08 10 9f e5                                      ldr r1, [pc, #8]
00561df0  06 20 a0 e3                                      mov r2, #6
00561df4  01 10 8f e0                                      add r1, pc, r1
00561df8  9a b2 f6 ea                                      b #0x30e868
; mapping-symbol data/literal pool
00561dfc  3c 0d 38 00                                      .byte 0x3c, 0x0d, 0x38, 0x00

; FUNCTION 0x00562ae4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZN6glitch2io15CLightAttribute9getStringEv
; demangled: glitch::io::CLightAttribute::getString()
; decoder-mode: arm
00562ae4  10 40 2d e9                                      push {r4, lr}
00562ae8  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00562aec  08 d0 4d e2                                      sub sp, sp, #8
00562af0  00 40 a0 e1                                      mov r4, r0
00562af4  04 20 8d e2                                      add r2, sp, #4
00562af8  01 10 8f e0                                      add r1, pc, r1
00562afc  4e 0d f7 eb                                      bl #0x32603c
00562b00  04 00 a0 e1                                      mov r0, r4
00562b04  08 d0 8d e2                                      add sp, sp, #8
00562b08  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00562b0c  38 00 38 00                                      .byte 0x38, 0x00, 0x38, 0x00

; FUNCTION 0x005633ec, declared_size=124, range_size=124, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZN6glitch2io15CLightAttribute8setLightERKN5boost13intrusive_ptrINS_5video6CLightEEE
; demangled: glitch::io::CLightAttribute::setLight(boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
005633ec  00 30 91 e5                                      ldr r3, [r1]
005633f0  68 20 9f e5                                      ldr r2, [pc, #0x68]
005633f4  00 00 53 e3                                      cmp r3, #0
005633f8  00 10 93 15                                      ldrne r1, [r3]
005633fc  02 20 8f e0                                      add r2, pc, r2
00563400  01 10 81 12                                      addne r1, r1, #1
00563404  00 10 83 15                                      strne r1, [r3]
00563408  24 10 90 e5                                      ldr r1, [r0, #0x24]
0056340c  24 30 80 e5                                      str r3, [r0, #0x24]
00563410  00 00 51 e3                                      cmp r1, #0
00563414  1e ff 2f 01                                      bxeq lr
00563418  00 30 91 e5                                      ldr r3, [r1]
0056341c  01 30 43 e2                                      sub r3, r3, #1
00563420  00 00 53 e3                                      cmp r3, #0
00563424  00 30 81 e5                                      str r3, [r1]
00563428  1e ff 2f 11                                      bxne lr
0056342c  54 30 d1 e5                                      ldrb r3, [r1, #0x54]
00563430  00 00 53 e3                                      cmp r3, #0
00563434  05 00 00 1a                                      bne #0x563450
00563438  24 30 9f e5                                      ldr r3, [pc, #0x24]
0056343c  50 00 91 e5                                      ldr r0, [r1, #0x50]
00563440  03 30 92 e7                                      ldr r3, [r2, r3]
00563444  00 20 93 e5                                      ldr r2, [r3]
00563448  00 20 80 e5                                      str r2, [r0]
0056344c  00 00 83 e5                                      str r0, [r3]
00563450  00 30 a0 e3                                      mov r3, #0
00563454  01 00 a0 e1                                      mov r0, r1
00563458  50 30 81 e5                                      str r3, [r1, #0x50]
0056345c  93 ab f6 ea                                      b #0x30e2b0
; mapping-symbol data/literal pool
00563460  94 16 43 00 c0 3c 00 00                          .byte 0x94, 0x16, 0x43, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x0056377c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZN6glitch2io15CLightAttribute10getStringWEv
; demangled: glitch::io::CLightAttribute::getStringW()
; decoder-mode: arm
0056377c  10 40 2d e9                                      push {r4, lr}
00563780  24 30 91 e5                                      ldr r3, [r1, #0x24]
00563784  00 40 a0 e1                                      mov r4, r0
00563788  00 00 53 e3                                      cmp r3, #0
0056378c  04 00 00 0a                                      beq #0x5637a4
00563790  20 10 9f e5                                      ldr r1, [pc, #0x20]
00563794  01 10 8f e0                                      add r1, pc, r1
00563798  ca 0a f7 eb                                      bl #0x3262c8
0056379c  04 00 a0 e1                                      mov r0, r4
005637a0  10 80 bd e8                                      pop {r4, pc}
005637a4  10 10 9f e5                                      ldr r1, [pc, #0x10]
005637a8  01 10 8f e0                                      add r1, pc, r1
005637ac  c5 0a f7 eb                                      bl #0x3262c8
005637b0  04 00 a0 e1                                      mov r0, r4
005637b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005637b8  9c f3 37 00 60 80 36 00                          .byte 0x9c, 0xf3, 0x37, 0x00, 0x60, 0x80, 0x36, 0x00

; FUNCTION 0x0056514c, declared_size=196, range_size=196, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZN6glitch2io15CLightAttributeD1Ev
; demangled: glitch::io::CLightAttribute::~CLightAttribute()
; decoder-mode: arm
0056514c  70 40 2d e9                                      push {r4, r5, r6, lr}
00565150  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
00565154  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00565158  00 50 a0 e1                                      mov r5, r0
0056515c  04 40 8f e0                                      add r4, pc, r4
00565160  28 00 90 e5                                      ldr r0, [r0, #0x28]
00565164  03 30 94 e7                                      ldr r3, [r4, r3]
00565168  00 00 50 e3                                      cmp r0, #0
0056516c  08 30 83 e2                                      add r3, r3, #8
00565170  00 30 85 e5                                      str r3, [r5]
00565174  00 00 00 0a                                      beq #0x56517c
00565178  01 e1 f6 eb                                      bl #0x31d584
0056517c  24 00 95 e5                                      ldr r0, [r5, #0x24]
00565180  00 00 50 e3                                      cmp r0, #0
00565184  10 00 00 0a                                      beq #0x5651cc
00565188  00 30 90 e5                                      ldr r3, [r0]
0056518c  01 30 43 e2                                      sub r3, r3, #1
00565190  00 00 53 e3                                      cmp r3, #0
00565194  00 30 80 e5                                      str r3, [r0]
00565198  0b 00 00 1a                                      bne #0x5651cc
0056519c  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005651a0  00 00 53 e3                                      cmp r3, #0
005651a4  05 00 00 1a                                      bne #0x5651c0
005651a8  58 30 9f e5                                      ldr r3, [pc, #0x58]
005651ac  50 20 90 e5                                      ldr r2, [r0, #0x50]
005651b0  03 30 94 e7                                      ldr r3, [r4, r3]
005651b4  00 10 93 e5                                      ldr r1, [r3]
005651b8  00 10 82 e5                                      str r1, [r2]
005651bc  00 20 83 e5                                      str r2, [r3]
005651c0  00 30 a0 e3                                      mov r3, #0
005651c4  50 30 80 e5                                      str r3, [r0, #0x50]
005651c8  38 a4 f6 eb                                      bl #0x30e2b0
005651cc  38 20 9f e5                                      ldr r2, [pc, #0x38]
005651d0  05 30 a0 e1                                      mov r3, r5
005651d4  02 20 94 e7                                      ldr r2, [r4, r2]
005651d8  08 20 82 e2                                      add r2, r2, #8
005651dc  08 20 83 e4                                      str r2, [r3], #8
005651e0  14 00 93 e5                                      ldr r0, [r3, #0x14]
005651e4  03 00 50 e1                                      cmp r0, r3
005651e8  02 00 00 0a                                      beq #0x5651f8
005651ec  00 00 50 e3                                      cmp r0, #0
005651f0  00 00 00 0a                                      beq #0x5651f8
005651f4  95 ac f6 eb                                      bl #0x310450
005651f8  05 00 a0 e1                                      mov r0, r5
005651fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00565200  34 f9 42 00 04 41 00 00 c0 3c 00 00 44 2c 00 00  .byte 0x34, 0xf9, 0x42, 0x00, 0x04, 0x41, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x00565210, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZN6glitch2io15CLightAttributeD0Ev
; demangled: glitch::io::CLightAttribute::~CLightAttribute()
; decoder-mode: arm
00565210  10 40 2d e9                                      push {r4, lr}
00565214  00 40 a0 e1                                      mov r4, r0
00565218  cb ff ff eb                                      bl #0x56514c
0056521c  04 00 a0 e1                                      mov r0, r4
00565220  22 a4 f6 eb                                      bl #0x30e2b0
00565224  04 00 a0 e1                                      mov r0, r4
00565228  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00566c90, declared_size=288, range_size=288, mode=arm
; class-group: glitch::io::CLightAttribute
; alias: _ZN6glitch2io15CLightAttributeC1EPKcRKN5boost13intrusive_ptrINS_5video6CLightEEEPNS6_12IVideoDriverEb
; demangled: glitch::io::CLightAttribute::CLightAttribute(char const*, boost::intrusive_ptr<glitch::video::CLight> const&, glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
00566c90  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00566c94  04 61 9f e5                                      ldr r6, [pc, #0x104]
00566c98  04 c1 9f e5                                      ldr ip, [pc, #0x104]
00566c9c  00 40 a0 e1                                      mov r4, r0
00566ca0  06 60 8f e0                                      add r6, pc, r6
00566ca4  0c c0 96 e7                                      ldr ip, [r6, ip]
00566ca8  00 50 a0 e1                                      mov r5, r0
00566cac  01 00 a0 e3                                      mov r0, #1
00566cb0  08 c0 8c e2                                      add ip, ip, #8
00566cb4  04 00 84 e5                                      str r0, [r4, #4]
00566cb8  08 c0 85 e4                                      str ip, [r5], #8
00566cbc  01 70 a0 e1                                      mov r7, r1
00566cc0  18 50 84 e5                                      str r5, [r4, #0x18]
00566cc4  1c 50 84 e5                                      str r5, [r4, #0x1c]
00566cc8  05 00 a0 e1                                      mov r0, r5
00566ccc  10 10 a0 e3                                      mov r1, #0x10
00566cd0  03 80 a0 e1                                      mov r8, r3
00566cd4  02 a0 a0 e1                                      mov sl, r2
00566cd8  20 90 dd e5                                      ldrb sb, [sp, #0x20]
00566cdc  31 e7 f6 eb                                      bl #0x3209a8
00566ce0  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00566ce4  18 10 94 e5                                      ldr r1, [r4, #0x18]
00566ce8  00 20 a0 e3                                      mov r2, #0
00566cec  03 30 96 e7                                      ldr r3, [r6, r3]
00566cf0  00 20 c1 e5                                      strb r2, [r1]
00566cf4  00 00 58 e3                                      cmp r8, #0
00566cf8  08 30 83 e2                                      add r3, r3, #8
00566cfc  00 30 84 e5                                      str r3, [r4]
00566d00  24 20 84 e5                                      str r2, [r4, #0x24]
00566d04  20 90 c4 e5                                      strb sb, [r4, #0x20]
00566d08  28 80 84 e5                                      str r8, [r4, #0x28]
00566d0c  04 30 98 15                                      ldrne r3, [r8, #4]
00566d10  07 00 a0 e1                                      mov r0, r7
00566d14  01 30 83 12                                      addne r3, r3, #1
00566d18  04 30 88 15                                      strne r3, [r8, #4]
00566d1c  4c 9c f6 eb                                      bl #0x30de54
00566d20  07 10 a0 e1                                      mov r1, r7
00566d24  00 20 87 e0                                      add r2, r7, r0
00566d28  05 00 a0 e1                                      mov r0, r5
00566d2c  95 e7 f6 eb                                      bl #0x320b88
00566d30  00 30 9a e5                                      ldr r3, [sl]
00566d34  00 00 53 e3                                      cmp r3, #0
00566d38  00 20 93 15                                      ldrne r2, [r3]
00566d3c  01 20 82 12                                      addne r2, r2, #1
00566d40  00 20 83 15                                      strne r2, [r3]
00566d44  24 00 94 e5                                      ldr r0, [r4, #0x24]
00566d48  24 30 84 e5                                      str r3, [r4, #0x24]
00566d4c  00 00 50 e3                                      cmp r0, #0
00566d50  10 00 00 0a                                      beq #0x566d98
00566d54  00 30 90 e5                                      ldr r3, [r0]
00566d58  01 30 43 e2                                      sub r3, r3, #1
00566d5c  00 00 53 e3                                      cmp r3, #0
00566d60  00 30 80 e5                                      str r3, [r0]
00566d64  0b 00 00 1a                                      bne #0x566d98
00566d68  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
00566d6c  00 00 53 e3                                      cmp r3, #0
00566d70  05 00 00 1a                                      bne #0x566d8c
00566d74  30 30 9f e5                                      ldr r3, [pc, #0x30]
00566d78  50 20 90 e5                                      ldr r2, [r0, #0x50]
00566d7c  03 30 96 e7                                      ldr r3, [r6, r3]
00566d80  00 10 93 e5                                      ldr r1, [r3]
00566d84  00 10 82 e5                                      str r1, [r2]
00566d88  00 20 83 e5                                      str r2, [r3]
00566d8c  00 30 a0 e3                                      mov r3, #0
00566d90  50 30 80 e5                                      str r3, [r0, #0x50]
00566d94  45 9d f6 eb                                      bl #0x30e2b0
00566d98  04 00 a0 e1                                      mov r0, r4
00566d9c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00566da0  f0 dd 42 00 44 2c 00 00 04 41 00 00 c0 3c 00 00  .byte 0xf0, 0xdd, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x04, 0x41, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00
