; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00420a84, declared_size=196, range_size=196, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value12to_tu_stringEv
; demangled: gameswf::as_value::to_tu_string() const
; decoder-mode: arm
00420a84  70 40 2d e9                                      push {r4, r5, r6, lr}
00420a88  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00420a8c  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
00420a90  03 00 53 e3                                      cmp r3, #3
00420a94  05 50 8f e0                                      add r5, pc, r5
00420a98  23 00 00 0a                                      beq #0x420b2c
00420a9c  04 00 53 e3                                      cmp r3, #4
00420aa0  21 00 00 0a                                      beq #0x420b2c
00420aa4  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00420aa8  03 40 95 e7                                      ldr r4, [r5, r3]
00420aac  00 60 94 e5                                      ldr r6, [r4]
00420ab0  01 60 16 e2                                      ands r6, r6, #1
00420ab4  02 00 00 0a                                      beq #0x420ac4
00420ab8  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00420abc  03 00 95 e7                                      ldr r0, [r5, r3]
00420ac0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00420ac4  04 00 a0 e1                                      mov r0, r4
00420ac8  27 b7 fb eb                                      bl #0x30e76c
00420acc  00 00 50 e3                                      cmp r0, #0
00420ad0  f8 ff ff 0a                                      beq #0x420ab8
00420ad4  60 30 9f e5                                      ldr r3, [pc, #0x60]
00420ad8  04 00 a0 e1                                      mov r0, r4
00420adc  01 20 a0 e3                                      mov r2, #1
00420ae0  03 40 95 e7                                      ldr r4, [r5, r3]
00420ae4  10 30 94 e5                                      ldr r3, [r4, #0x10]
00420ae8  00 20 c4 e5                                      strb r2, [r4]
00420aec  00 20 e0 e3                                      mvn r2, #0
00420af0  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00420af4  23 2c a0 e1                                      lsr r2, r3, #0x18
00420af8  16 20 c0 e7                                      bfi r2, r6, #0, #1
00420afc  10 30 84 e5                                      str r3, [r4, #0x10]
00420b00  01 60 c4 e5                                      strb r6, [r4, #1]
00420b04  13 20 c4 e5                                      strb r2, [r4, #0x13]
00420b08  cb b7 fb eb                                      bl #0x30ea3c
00420b0c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00420b10  04 00 a0 e1                                      mov r0, r4
00420b14  03 10 95 e7                                      ldr r1, [r5, r3]
00420b18  24 30 9f e5                                      ldr r3, [pc, #0x24]
00420b1c  03 20 95 e7                                      ldr r2, [r5, r3]
00420b20  f7 b5 fb eb                                      bl #0x30e304
00420b24  04 00 a0 e1                                      mov r0, r4
00420b28  70 80 bd e8                                      pop {r4, r5, r6, pc}
00420b2c  04 00 90 e5                                      ldr r0, [r0, #4]
00420b30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00420b34  fc 3f 57 00 c8 3d 00 00 04 3d 00 00 84 1f 00 00  .byte 0xfc, 0x3f, 0x57, 0x00, 0xc8, 0x3d, 0x00, 0x00, 0x04, 0x3d, 0x00, 0x00, 0x84, 0x1f, 0x00, 0x00
00420b44  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00439d50, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_valueC1Ei
; demangled: gameswf::as_value::as_value(int)
; decoder-mode: arm
00439d50  10 40 2d e9                                      push {r4, lr}
00439d54  00 30 a0 e3                                      mov r3, #0
00439d58  00 30 c0 e5                                      strb r3, [r0]
00439d5c  02 30 a0 e3                                      mov r3, #2
00439d60  08 d0 4d e2                                      sub sp, sp, #8
00439d64  00 40 a0 e1                                      mov r4, r0
00439d68  01 30 c0 e5                                      strb r3, [r0, #1]
00439d6c  01 00 a0 e1                                      mov r0, r1
00439d70  ee 53 fb eb                                      bl #0x30ed30
00439d74  f0 00 cd e1                                      strd r0, r1, [sp]
00439d78  0c 00 9d e8                                      ldm sp, {r2, r3}
00439d7c  04 00 a0 e1                                      mov r0, r4
00439d80  0c 00 84 e9                                      stmib r4, {r2, r3}
00439d84  08 d0 8d e2                                      add sp, sp, #8
00439d88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00439d8c, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value9is_numberEv
; demangled: gameswf::as_value::is_number() const
; decoder-mode: arm
00439d8c  04 e0 2d e5                                      str lr, [sp, #-4]!
00439d90  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00439d94  14 d0 4d e2                                      sub sp, sp, #0x14
00439d98  02 00 53 e3                                      cmp r3, #2
00439d9c  00 00 a0 13                                      movne r0, #0
00439da0  01 00 00 0a                                      beq #0x439dac
00439da4  14 d0 8d e2                                      add sp, sp, #0x14
00439da8  00 80 bd e8                                      ldm sp!, {pc}
00439dac  08 20 90 e5                                      ldr r2, [r0, #8]
00439db0  04 30 90 e5                                      ldr r3, [r0, #4]
00439db4  0c 20 8d e5                                      str r2, [sp, #0xc]
00439db8  08 30 8d e5                                      str r3, [sp, #8]
00439dbc  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
00439dc0  00 20 a0 e1                                      mov r2, r0
00439dc4  01 30 a0 e1                                      mov r3, r1
00439dc8  3b 51 fb eb                                      bl #0x30e2bc
00439dcc  01 00 70 e2                                      rsbs r0, r0, #1
00439dd0  00 00 a0 33                                      movlo r0, #0
00439dd4  f2 ff ff ea                                      b #0x439da4

; FUNCTION 0x0043a1b8, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value6to_intEv
; demangled: gameswf::as_value::to_int() const
; decoder-mode: arm
0043a1b8  10 40 2d e9                                      push {r4, lr}
0043a1bc  24 76 0d eb                                      bl #0x797a54
0043a1c0  17 52 fb eb                                      bl #0x30ea24
0043a1c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0043a2ac, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_valueC1EPKc
; demangled: gameswf::as_value::as_value(char const*)
; decoder-mode: arm
0043a2ac  00 30 a0 e3                                      mov r3, #0
0043a2b0  10 40 2d e9                                      push {r4, lr}
0043a2b4  00 40 a0 e1                                      mov r4, r0
0043a2b8  01 30 c0 e5                                      strb r3, [r0, #1]
0043a2bc  00 30 c0 e5                                      strb r3, [r0]
0043a2c0  22 74 0d eb                                      bl #0x797350
0043a2c4  04 00 a0 e1                                      mov r0, r4
0043a2c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00769540, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_valueC1ERKS0_S2_
; demangled: gameswf::as_value::as_value(gameswf::as_value const&, gameswf::as_value const&)
; decoder-mode: arm
00769540  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00769544  00 30 a0 e3                                      mov r3, #0
00769548  00 40 a0 e1                                      mov r4, r0
0076954c  06 00 a0 e3                                      mov r0, #6
00769550  00 30 c4 e5                                      strb r3, [r4]
00769554  04 30 84 e5                                      str r3, [r4, #4]
00769558  01 00 c4 e5                                      strb r0, [r4, #1]
0076955c  01 60 a0 e1                                      mov r6, r1
00769560  14 00 a0 e3                                      mov r0, #0x14
00769564  03 10 a0 e1                                      mov r1, r3
00769568  02 70 a0 e1                                      mov r7, r2
0076956c  8d a5 ff eb                                      bl #0x752ba8
00769570  06 10 a0 e1                                      mov r1, r6
00769574  00 50 a0 e1                                      mov r5, r0
00769578  07 20 a0 e1                                      mov r2, r7
0076957c  dc b5 00 eb                                      bl #0x796cf4
00769580  05 00 a0 e1                                      mov r0, r5
00769584  08 50 84 e5                                      str r5, [r4, #8]
00769588  b5 c1 ff eb                                      bl #0x759c64
0076958c  04 00 a0 e1                                      mov r0, r4
00769590  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0077eb90, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_valueD1Ev
; demangled: gameswf::as_value::~as_value()
; decoder-mode: arm
0077eb90  10 40 2d e9                                      push {r4, lr}
0077eb94  00 40 a0 e1                                      mov r4, r0
0077eb98  61 61 00 eb                                      bl #0x797124
0077eb9c  04 00 a0 e1                                      mov r0, r4
0077eba0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00796ab8, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value11to_propertyEv
; demangled: gameswf::as_value::to_property() const
; decoder-mode: arm
00796ab8  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00796abc  06 00 53 e3                                      cmp r3, #6
00796ac0  00 00 a0 13                                      movne r0, #0
00796ac4  08 00 90 05                                      ldreq r0, [r0, #8]
00796ac8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00796acc, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value19get_property_targetEv
; demangled: gameswf::as_value::get_property_target() const
; decoder-mode: arm
00796acc  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00796ad0  06 00 53 e3                                      cmp r3, #6
00796ad4  00 00 a0 13                                      movne r0, #0
00796ad8  04 00 90 05                                      ldreq r0, [r0, #4]
00796adc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00796b44, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value12get_propertyERKS0_PS0_
; demangled: gameswf::as_value::get_property(gameswf::as_value const&, gameswf::as_value*) const
; decoder-mode: arm
00796b44  08 00 90 e5                                      ldr r0, [r0, #8]
00796b48  e4 ff ff ea                                      b #0x796ae0

; FUNCTION 0x00796b80, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value11is_functionEv
; demangled: gameswf::as_value::is_function() const
; decoder-mode: arm
00796b80  10 40 2d e9                                      push {r4, lr}
00796b84  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00796b88  05 00 53 e3                                      cmp r3, #5
00796b8c  01 00 00 0a                                      beq #0x796b98
00796b90  00 00 a0 e3                                      mov r0, #0
00796b94  10 80 bd e8                                      pop {r4, pc}
00796b98  04 00 90 e5                                      ldr r0, [r0, #4]
00796b9c  ea ff ff eb                                      bl #0x796b4c
00796ba0  00 00 50 e2                                      subs r0, r0, #0
00796ba4  01 00 a0 13                                      movne r0, #1
00796ba8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00796bac, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value11to_functionEv
; demangled: gameswf::as_value::to_function() const
; decoder-mode: arm
00796bac  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00796bb0  05 00 53 e3                                      cmp r3, #5
00796bb4  01 00 00 0a                                      beq #0x796bc0
00796bb8  00 00 a0 e3                                      mov r0, #0
00796bbc  1e ff 2f e1                                      bx lr
00796bc0  04 00 90 e5                                      ldr r0, [r0, #4]
00796bc4  e0 ff ff ea                                      b #0x796b4c

; FUNCTION 0x00796bfc, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_value19set_property_targetEPNS_9as_objectE
; demangled: gameswf::as_value::set_property_target(gameswf::as_object*)
; decoder-mode: arm
00796bfc  70 40 2d e9                                      push {r4, r5, r6, lr}
00796c00  00 40 a0 e1                                      mov r4, r0
00796c04  04 00 90 e5                                      ldr r0, [r0, #4]
00796c08  01 50 a0 e1                                      mov r5, r1
00796c0c  00 00 50 e3                                      cmp r0, #0
00796c10  00 00 00 0a                                      beq #0x796c18
00796c14  89 0d ff eb                                      bl #0x75a240
00796c18  05 00 a0 e1                                      mov r0, r5
00796c1c  04 50 84 e5                                      str r5, [r4, #4]
00796c20  70 40 bd e8                                      pop {r4, r5, r6, lr}
00796c24  0e 0c ff ea                                      b #0x759c64

; FUNCTION 0x00796e0c, declared_size=268, range_size=268, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value14is_instance_ofEPKNS_11as_functionE
; demangled: gameswf::as_value::is_instance_of(gameswf::as_function const*) const
; decoder-mode: arm
00796e0c  10 40 2d e9                                      push {r4, lr}
00796e10  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00796e14  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
00796e18  01 30 43 e2                                      sub r3, r3, #1
00796e1c  04 40 8f e0                                      add r4, pc, r4
00796e20  04 00 53 e3                                      cmp r3, #4
00796e24  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00796e28  07 00 00 ea                                      b #0x796e4c
00796e2c  24 00 00 ea                                      b #0x796ec4
00796e30  15 00 00 ea                                      b #0x796e8c
00796e34  06 00 00 ea                                      b #0x796e54
00796e38  05 00 00 ea                                      b #0x796e54
00796e3c  ff ff ff ea                                      b #0x796e40
00796e40  04 00 90 e5                                      ldr r0, [r0, #4]
00796e44  00 00 50 e3                                      cmp r0, #0
00796e48  2b 00 00 1a                                      bne #0x796efc
00796e4c  00 00 a0 e3                                      mov r0, #0
00796e50  10 80 bd e8                                      pop {r4, pc}
00796e54  01 00 a0 e1                                      mov r0, r1
00796e58  5a ff ff eb                                      bl #0x796bc8
00796e5c  00 00 50 e3                                      cmp r0, #0
00796e60  f9 ff ff 0a                                      beq #0x796e4c
00796e64  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
00796e68  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00796e6c  02 00 94 e7                                      ldr r0, [r4, r2]
00796e70  94 20 9f e5                                      ldr r2, [pc, #0x94]
00796e74  02 20 94 e7                                      ldr r2, [r4, r2]
00796e78  02 00 53 e1                                      cmp r3, r2
00796e7c  00 00 53 11                                      cmpne r3, r0
00796e80  00 00 a0 13                                      movne r0, #0
00796e84  01 00 a0 03                                      moveq r0, #1
00796e88  10 80 bd e8                                      pop {r4, pc}
00796e8c  01 00 a0 e1                                      mov r0, r1
00796e90  4c ff ff eb                                      bl #0x796bc8
00796e94  00 00 50 e3                                      cmp r0, #0
00796e98  eb ff ff 0a                                      beq #0x796e4c
00796e9c  64 20 9f e5                                      ldr r2, [pc, #0x64]
00796ea0  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00796ea4  02 00 94 e7                                      ldr r0, [r4, r2]
00796ea8  60 20 9f e5                                      ldr r2, [pc, #0x60]
00796eac  02 20 94 e7                                      ldr r2, [r4, r2]
00796eb0  02 00 53 e1                                      cmp r3, r2
00796eb4  00 00 53 11                                      cmpne r3, r0
00796eb8  00 00 a0 13                                      movne r0, #0
00796ebc  01 00 a0 03                                      moveq r0, #1
00796ec0  10 80 bd e8                                      pop {r4, pc}
00796ec4  01 00 a0 e1                                      mov r0, r1
00796ec8  3e ff ff eb                                      bl #0x796bc8
00796ecc  00 00 50 e3                                      cmp r0, #0
00796ed0  dd ff ff 0a                                      beq #0x796e4c
00796ed4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00796ed8  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00796edc  02 00 94 e7                                      ldr r0, [r4, r2]
00796ee0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00796ee4  02 20 94 e7                                      ldr r2, [r4, r2]
00796ee8  02 00 53 e1                                      cmp r3, r2
00796eec  00 00 53 11                                      cmpne r3, r0
00796ef0  00 00 a0 13                                      movne r0, #0
00796ef4  01 00 a0 03                                      moveq r0, #1
00796ef8  10 80 bd e8                                      pop {r4, pc}
00796efc  10 40 bd e8                                      pop {r4, lr}
00796f00  8e 47 ff ea                                      b #0x768d40
; mapping-symbol data/literal pool
00796f04  74 dc 1f 00 94 30 00 00 dc 20 00 00 e0 0d 00 00  .byte 0x74, 0xdc, 0x1f, 0x00, 0x94, 0x30, 0x00, 0x00, 0xdc, 0x20, 0x00, 0x00, 0xe0, 0x0d, 0x00, 0x00
00796f14  a0 3b 00 00                                      .byte 0xa0, 0x3b, 0x00, 0x00

; FUNCTION 0x00796f5c, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value10to_xstringEv
; demangled: gameswf::as_value::to_xstring() const
; decoder-mode: arm
00796f5c  10 40 2d e9                                      push {r4, lr}
00796f60  d1 20 d0 e1                                      ldrsb r2, [r0, #1]
00796f64  05 00 52 e3                                      cmp r2, #5
00796f68  05 00 00 0a                                      beq #0x796f84
00796f6c  c4 26 f2 eb                                      bl #0x420a84
00796f70  d0 30 d0 e1                                      ldrsb r3, [r0]
00796f74  01 00 73 e3                                      cmn r3, #1
00796f78  01 00 80 12                                      addne r0, r0, #1
00796f7c  0c 00 90 05                                      ldreq r0, [r0, #0xc]
00796f80  10 80 bd e8                                      pop {r4, pc}
00796f84  20 40 9f e5                                      ldr r4, [pc, #0x20]
00796f88  20 20 9f e5                                      ldr r2, [pc, #0x20]
00796f8c  04 30 90 e5                                      ldr r3, [r0, #4]
00796f90  04 40 8f e0                                      add r4, pc, r4
00796f94  02 20 8f e0                                      add r2, pc, r2
00796f98  04 00 a0 e1                                      mov r0, r4
00796f9c  10 10 a0 e3                                      mov r1, #0x10
00796fa0  a7 dc ed eb                                      bl #0x30e244
00796fa4  04 00 a0 e1                                      mov r0, r4
00796fa8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00796fac  e4 5a 29 00 fc 30 17 00                          .byte 0xe4, 0x5a, 0x29, 0x00, 0xfc, 0x30, 0x17, 0x00

; FUNCTION 0x00796fb4, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value9to_stringEv
; demangled: gameswf::as_value::to_string() const
; decoder-mode: arm
00796fb4  10 40 2d e9                                      push {r4, lr}
00796fb8  b1 26 f2 eb                                      bl #0x420a84
00796fbc  d0 30 d0 e1                                      ldrsb r3, [r0]
00796fc0  01 00 73 e3                                      cmn r3, #1
00796fc4  01 00 80 12                                      addne r0, r0, #1
00796fc8  0c 00 90 05                                      ldreq r0, [r0, #0xc]
00796fcc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00796fd0, declared_size=340, range_size=340, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_value10get_memberERKNS_9tu_stringEPS0_
; demangled: gameswf::as_value::get_member(gameswf::tu_string const&, gameswf::as_value*)
; decoder-mode: arm
00796fd0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00796fd4  40 41 9f e5                                      ldr r4, [pc, #0x140]
00796fd8  40 51 9f e5                                      ldr r5, [pc, #0x140]
00796fdc  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00796fe0  04 40 8f e0                                      add r4, pc, r4
00796fe4  05 c0 94 e7                                      ldr ip, [r4, r5]
00796fe8  44 d0 4d e2                                      sub sp, sp, #0x44
00796fec  01 30 43 e2                                      sub r3, r3, #1
00796ff0  00 c0 9c e5                                      ldr ip, [ip]
00796ff4  02 60 a0 e1                                      mov r6, r2
00796ff8  3c c0 8d e5                                      str ip, [sp, #0x3c]
00796ffc  04 00 53 e3                                      cmp r3, #4
00797000  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00797004  07 00 00 ea                                      b #0x797028
00797008  2d 00 00 ea                                      b #0x7970c4
0079700c  1d 00 00 ea                                      b #0x797088
00797010  0d 00 00 ea                                      b #0x79704c
00797014  0c 00 00 ea                                      b #0x79704c
00797018  ff ff ff ea                                      b #0x79701c
0079701c  04 30 90 e5                                      ldr r3, [r0, #4]
00797020  00 00 53 e3                                      cmp r3, #0
00797024  35 00 00 1a                                      bne #0x797100
00797028  00 60 a0 e3                                      mov r6, #0
0079702c  05 30 94 e7                                      ldr r3, [r4, r5]
00797030  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00797034  06 00 a0 e1                                      mov r0, r6
00797038  00 30 93 e5                                      ldr r3, [r3]
0079703c  03 00 52 e1                                      cmp r2, r3
00797040  34 00 00 1a                                      bne #0x797118
00797044  44 d0 8d e2                                      add sp, sp, #0x44
00797048  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0079704c  28 70 8d e2                                      add r7, sp, #0x28
00797050  07 00 a0 e1                                      mov r0, r7
00797054  f4 ef fe eb                                      bl #0x75302c
00797058  06 20 a0 e1                                      mov r2, r6
0079705c  07 10 a0 e1                                      mov r1, r7
00797060  04 00 a0 e3                                      mov r0, #4
00797064  67 57 ff eb                                      bl #0x76ce08
00797068  d8 32 dd e1                                      ldrsb r3, [sp, #0x28]
0079706c  00 60 a0 e1                                      mov r6, r0
00797070  01 00 73 e3                                      cmn r3, #1
00797074  ec ff ff 1a                                      bne #0x79702c
00797078  34 00 9d e5                                      ldr r0, [sp, #0x34]
0079707c  30 10 9d e5                                      ldr r1, [sp, #0x30]
00797080  ac ee fe eb                                      bl #0x752b38
00797084  e8 ff ff ea                                      b #0x79702c
00797088  14 70 8d e2                                      add r7, sp, #0x14
0079708c  07 00 a0 e1                                      mov r0, r7
00797090  e5 ef fe eb                                      bl #0x75302c
00797094  06 20 a0 e1                                      mov r2, r6
00797098  07 10 a0 e1                                      mov r1, r7
0079709c  02 00 a0 e3                                      mov r0, #2
007970a0  58 57 ff eb                                      bl #0x76ce08
007970a4  d4 31 dd e1                                      ldrsb r3, [sp, #0x14]
007970a8  00 60 a0 e1                                      mov r6, r0
007970ac  01 00 73 e3                                      cmn r3, #1
007970b0  dd ff ff 1a                                      bne #0x79702c
007970b4  20 00 9d e5                                      ldr r0, [sp, #0x20]
007970b8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007970bc  9d ee fe eb                                      bl #0x752b38
007970c0  d9 ff ff ea                                      b #0x79702c
007970c4  0d 00 a0 e1                                      mov r0, sp
007970c8  d7 ef fe eb                                      bl #0x75302c
007970cc  06 20 a0 e1                                      mov r2, r6
007970d0  0d 10 a0 e1                                      mov r1, sp
007970d4  03 00 a0 e3                                      mov r0, #3
007970d8  4a 57 ff eb                                      bl #0x76ce08
007970dc  d0 30 dd e1                                      ldrsb r3, [sp]
007970e0  0d 70 a0 e1                                      mov r7, sp
007970e4  00 60 a0 e1                                      mov r6, r0
007970e8  01 00 73 e3                                      cmn r3, #1
007970ec  ce ff ff 1a                                      bne #0x79702c
007970f0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007970f4  08 10 9d e5                                      ldr r1, [sp, #8]
007970f8  8e ee fe eb                                      bl #0x752b38
007970fc  ca ff ff ea                                      b #0x79702c
00797100  03 00 a0 e1                                      mov r0, r3
00797104  00 30 93 e5                                      ldr r3, [r3]
00797108  0f e0 a0 e1                                      mov lr, pc
0079710c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00797110  00 60 a0 e1                                      mov r6, r0
00797114  c4 ff ff ea                                      b #0x79702c
00797118  7c dc ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0079711c  b0 da 1f 00 ac 40 00 00                          .byte 0xb0, 0xda, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00797124, declared_size=216, range_size=216, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_value9drop_refsEv
; demangled: gameswf::as_value::drop_refs()
; decoder-mode: arm
00797124  70 40 2d e9                                      push {r4, r5, r6, lr}
00797128  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
0079712c  00 40 a0 e1                                      mov r4, r0
00797130  03 30 43 e2                                      sub r3, r3, #3
00797134  03 00 53 e3                                      cmp r3, #3
00797138  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0079713c  0f 00 00 ea                                      b #0x797180
00797140  22 00 00 ea                                      b #0x7971d0
00797144  15 00 00 ea                                      b #0x7971a0
00797148  0d 00 00 ea                                      b #0x797184
0079714c  ff ff ff ea                                      b #0x797150
00797150  08 00 90 e5                                      ldr r0, [r0, #8]
00797154  00 00 50 e3                                      cmp r0, #0
00797158  02 00 00 0a                                      beq #0x797168
0079715c  37 0c ff eb                                      bl #0x75a240
00797160  00 30 a0 e3                                      mov r3, #0
00797164  08 30 84 e5                                      str r3, [r4, #8]
00797168  04 00 94 e5                                      ldr r0, [r4, #4]
0079716c  00 00 50 e3                                      cmp r0, #0
00797170  02 00 00 0a                                      beq #0x797180
00797174  31 0c ff eb                                      bl #0x75a240
00797178  00 30 a0 e3                                      mov r3, #0
0079717c  04 30 84 e5                                      str r3, [r4, #4]
00797180  70 80 bd e8                                      pop {r4, r5, r6, pc}
00797184  04 00 90 e5                                      ldr r0, [r0, #4]
00797188  00 00 50 e3                                      cmp r0, #0
0079718c  fb ff ff 0a                                      beq #0x797180
00797190  2a 0c ff eb                                      bl #0x75a240
00797194  00 30 a0 e3                                      mov r3, #0
00797198  04 30 84 e5                                      str r3, [r4, #4]
0079719c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007971a0  04 50 90 e5                                      ldr r5, [r0, #4]
007971a4  00 00 55 e3                                      cmp r5, #0
007971a8  f4 ff ff 0a                                      beq #0x797180
007971ac  d0 30 d5 e1                                      ldrsb r3, [r5]
007971b0  01 00 73 e3                                      cmn r3, #1
007971b4  0c 00 00 0a                                      beq #0x7971ec
007971b8  05 00 a0 e1                                      mov r0, r5
007971bc  00 10 a0 e3                                      mov r1, #0
007971c0  5c ee fe eb                                      bl #0x752b38
007971c4  00 30 a0 e3                                      mov r3, #0
007971c8  04 30 84 e5                                      str r3, [r4, #4]
007971cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
007971d0  08 00 90 e5                                      ldr r0, [r0, #8]
007971d4  00 00 50 e3                                      cmp r0, #0
007971d8  e8 ff ff 0a                                      beq #0x797180
007971dc  17 0c ff eb                                      bl #0x75a240
007971e0  00 30 a0 e3                                      mov r3, #0
007971e4  08 30 84 e5                                      str r3, [r4, #8]
007971e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007971ec  0c 00 95 e5                                      ldr r0, [r5, #0xc]
007971f0  08 10 95 e5                                      ldr r1, [r5, #8]
007971f4  4f ee fe eb                                      bl #0x752b38
007971f8  ee ff ff ea                                      b #0x7971b8

; FUNCTION 0x007971fc, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_value10set_stringEPNS_9as_stringE
; demangled: gameswf::as_value::set_string(gameswf::as_string*)
; decoder-mode: arm
007971fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00797200  00 40 a0 e1                                      mov r4, r0
00797204  01 00 a0 e1                                      mov r0, r1
00797208  01 50 a0 e1                                      mov r5, r1
0079720c  94 0a ff eb                                      bl #0x759c64
00797210  04 00 a0 e1                                      mov r0, r4
00797214  c2 ff ff eb                                      bl #0x797124
00797218  0c 30 85 e2                                      add r3, r5, #0xc
0079721c  03 20 a0 e3                                      mov r2, #3
00797220  08 50 84 e5                                      str r5, [r4, #8]
00797224  01 20 c4 e5                                      strb r2, [r4, #1]
00797228  04 30 84 e5                                      str r3, [r4, #4]
0079722c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00797230, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_value8set_boolEb
; demangled: gameswf::as_value::set_bool(bool)
; decoder-mode: arm
00797230  70 40 2d e9                                      push {r4, r5, r6, lr}
00797234  00 40 a0 e1                                      mov r4, r0
00797238  01 50 a0 e1                                      mov r5, r1
0079723c  b8 ff ff eb                                      bl #0x797124
00797240  01 30 a0 e3                                      mov r3, #1
00797244  04 50 c4 e5                                      strb r5, [r4, #4]
00797248  01 30 c4 e5                                      strb r3, [r4, #1]
0079724c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00797250, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_value13set_as_objectEPNS_9as_objectE
; demangled: gameswf::as_value::set_as_object(gameswf::as_object*)
; decoder-mode: arm
00797250  70 40 2d e9                                      push {r4, r5, r6, lr}
00797254  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00797258  00 40 a0 e1                                      mov r4, r0
0079725c  01 50 a0 e1                                      mov r5, r1
00797260  05 00 53 e3                                      cmp r3, #5
00797264  09 00 00 0a                                      beq #0x797290
00797268  04 00 a0 e1                                      mov r0, r4
0079726c  ac ff ff eb                                      bl #0x797124
00797270  05 30 a0 e3                                      mov r3, #5
00797274  00 00 55 e3                                      cmp r5, #0
00797278  01 30 c4 e5                                      strb r3, [r4, #1]
0079727c  04 50 84 e5                                      str r5, [r4, #4]
00797280  05 00 00 0a                                      beq #0x79729c
00797284  05 00 a0 e1                                      mov r0, r5
00797288  70 40 bd e8                                      pop {r4, r5, r6, lr}
0079728c  74 0a ff ea                                      b #0x759c64
00797290  04 30 90 e5                                      ldr r3, [r0, #4]
00797294  01 00 53 e1                                      cmp r3, r1
00797298  f2 ff ff 1a                                      bne #0x797268
0079729c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007972a0, declared_size=56, range_size=56, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_value17set_as_c_functionEPFvRKNS_7fn_callEE
; demangled: gameswf::as_value::set_as_c_function(void (*)(gameswf::fn_call const&))
; decoder-mode: arm
007972a0  70 40 2d e9                                      push {r4, r5, r6, lr}
007972a4  00 50 a0 e1                                      mov r5, r0
007972a8  01 60 a0 e1                                      mov r6, r1
007972ac  40 00 a0 e3                                      mov r0, #0x40
007972b0  00 10 a0 e3                                      mov r1, #0
007972b4  3b ee fe eb                                      bl #0x752ba8
007972b8  06 20 a0 e1                                      mov r2, r6
007972bc  00 10 a0 e3                                      mov r1, #0
007972c0  00 40 a0 e1                                      mov r4, r0
007972c4  7a ed 00 eb                                      bl #0x7d28b4
007972c8  05 00 a0 e1                                      mov r0, r5
007972cc  04 10 a0 e1                                      mov r1, r4
007972d0  70 40 bd e8                                      pop {r4, r5, r6, lr}
007972d4  dd ff ff ea                                      b #0x797250

; FUNCTION 0x007972d8, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_value13set_tu_stringERKNS_9tu_stringE
; demangled: gameswf::as_value::set_tu_string(gameswf::tu_string const&)
; decoder-mode: arm
007972d8  70 40 2d e9                                      push {r4, r5, r6, lr}
007972dc  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
007972e0  00 40 a0 e1                                      mov r4, r0
007972e4  01 50 a0 e1                                      mov r5, r1
007972e8  04 00 53 e3                                      cmp r3, #4
007972ec  0a 00 00 0a                                      beq #0x79731c
007972f0  04 00 a0 e1                                      mov r0, r4
007972f4  8a ff ff eb                                      bl #0x797124
007972f8  13 10 d5 e5                                      ldrb r1, [r5, #0x13]
007972fc  01 10 11 e2                                      ands r1, r1, #1
00797300  09 00 00 0a                                      beq #0x79732c
00797304  00 30 a0 e3                                      mov r3, #0
00797308  08 30 84 e5                                      str r3, [r4, #8]
0079730c  03 30 a0 e3                                      mov r3, #3
00797310  01 30 c4 e5                                      strb r3, [r4, #1]
00797314  04 50 84 e5                                      str r5, [r4, #4]
00797318  70 80 bd e8                                      pop {r4, r5, r6, pc}
0079731c  04 30 90 e5                                      ldr r3, [r0, #4]
00797320  01 00 53 e1                                      cmp r3, r1
00797324  f1 ff ff 1a                                      bne #0x7972f0
00797328  70 80 bd e8                                      pop {r4, r5, r6, pc}
0079732c  04 30 a0 e3                                      mov r3, #4
00797330  01 30 c4 e5                                      strb r3, [r4, #1]
00797334  14 00 a0 e3                                      mov r0, #0x14
00797338  1a ee fe eb                                      bl #0x752ba8
0079733c  05 10 a0 e1                                      mov r1, r5
00797340  00 60 a0 e1                                      mov r6, r0
00797344  38 ef fe eb                                      bl #0x75302c
00797348  04 60 84 e5                                      str r6, [r4, #4]
0079734c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00797350, declared_size=184, range_size=184, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_value10set_stringEPKc
; demangled: gameswf::as_value::set_string(char const*)
; decoder-mode: arm
00797350  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00797354  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
00797358  a4 60 9f e5                                      ldr r6, [pc, #0xa4]
0079735c  d1 20 d0 e1                                      ldrsb r2, [r0, #1]
00797360  04 40 8f e0                                      add r4, pc, r4
00797364  06 30 94 e7                                      ldr r3, [r4, r6]
00797368  18 d0 4d e2                                      sub sp, sp, #0x18
0079736c  04 00 52 e3                                      cmp r2, #4
00797370  00 30 93 e5                                      ldr r3, [r3]
00797374  00 50 a0 e1                                      mov r5, r0
00797378  01 70 a0 e1                                      mov r7, r1
0079737c  14 30 8d e5                                      str r3, [sp, #0x14]
00797380  10 00 00 0a                                      beq #0x7973c8
00797384  66 ff ff eb                                      bl #0x797124
00797388  04 30 a0 e3                                      mov r3, #4
0079738c  01 30 c5 e5                                      strb r3, [r5, #1]
00797390  00 10 a0 e3                                      mov r1, #0
00797394  14 00 a0 e3                                      mov r0, #0x14
00797398  02 ee fe eb                                      bl #0x752ba8
0079739c  07 10 a0 e1                                      mov r1, r7
007973a0  00 80 a0 e1                                      mov r8, r0
007973a4  b4 f1 f1 eb                                      bl #0x413a7c
007973a8  04 80 85 e5                                      str r8, [r5, #4]
007973ac  06 30 94 e7                                      ldr r3, [r4, r6]
007973b0  14 20 9d e5                                      ldr r2, [sp, #0x14]
007973b4  00 30 93 e5                                      ldr r3, [r3]
007973b8  03 00 52 e1                                      cmp r2, r3
007973bc  0e 00 00 1a                                      bne #0x7973fc
007973c0  18 d0 8d e2                                      add sp, sp, #0x18
007973c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007973c8  0d 00 a0 e1                                      mov r0, sp
007973cc  aa f1 f1 eb                                      bl #0x413a7c
007973d0  04 00 95 e5                                      ldr r0, [r5, #4]
007973d4  0d 10 a0 e1                                      mov r1, sp
007973d8  dc ee fe eb                                      bl #0x752f50
007973dc  d0 30 dd e1                                      ldrsb r3, [sp]
007973e0  0d 70 a0 e1                                      mov r7, sp
007973e4  01 00 73 e3                                      cmn r3, #1
007973e8  ef ff ff 1a                                      bne #0x7973ac
007973ec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007973f0  08 10 9d e5                                      ldr r1, [sp, #8]
007973f4  cf ed fe eb                                      bl #0x752b38
007973f8  eb ff ff ea                                      b #0x7973ac
007973fc  c3 db ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00797400  30 d7 1f 00 ac 40 00 00                          .byte 0x30, 0xd7, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00797408, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_valueC1EPKw
; demangled: gameswf::as_value::as_value(wchar_t const*)
; decoder-mode: arm
00797408  70 40 2d e9                                      push {r4, r5, r6, lr}
0079740c  01 50 a0 e1                                      mov r5, r1
00797410  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00797414  00 30 a0 e3                                      mov r3, #0
00797418  00 30 c0 e5                                      strb r3, [r0]
0079741c  04 30 a0 e3                                      mov r3, #4
00797420  00 40 a0 e1                                      mov r4, r0
00797424  01 30 c0 e5                                      strb r3, [r0, #1]
00797428  01 10 8f e0                                      add r1, pc, r1
0079742c  c7 ff ff eb                                      bl #0x797350
00797430  04 00 94 e5                                      ldr r0, [r4, #4]
00797434  05 10 a0 e1                                      mov r1, r5
00797438  28 eb fe eb                                      bl #0x7520e0
0079743c  04 00 a0 e1                                      mov r0, r4
00797440  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00797444  e0 43 13 00                                      .byte 0xe0, 0x43, 0x13, 0x00

; FUNCTION 0x00797448, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_valueC2EPKw
; demangled: gameswf::as_value::as_value(wchar_t const*)
; decoder-mode: arm
00797448  70 40 2d e9                                      push {r4, r5, r6, lr}
0079744c  01 50 a0 e1                                      mov r5, r1
00797450  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00797454  00 30 a0 e3                                      mov r3, #0
00797458  00 30 c0 e5                                      strb r3, [r0]
0079745c  04 30 a0 e3                                      mov r3, #4
00797460  00 40 a0 e1                                      mov r4, r0
00797464  01 30 c0 e5                                      strb r3, [r0, #1]
00797468  01 10 8f e0                                      add r1, pc, r1
0079746c  b7 ff ff eb                                      bl #0x797350
00797470  04 00 94 e5                                      ldr r0, [r4, #4]
00797474  05 10 a0 e1                                      mov r1, r5
00797478  18 eb fe eb                                      bl #0x7520e0
0079747c  04 00 a0 e1                                      mov r0, r4
00797480  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00797484  a0 43 13 00                                      .byte 0xa0, 0x43, 0x13, 0x00

; FUNCTION 0x00797488, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_value10set_doubleEd
; demangled: gameswf::as_value::set_double(double)
; decoder-mode: arm
00797488  d0 40 2d e9                                      push {r4, r6, r7, lr}
0079748c  02 60 a0 e1                                      mov r6, r2
00797490  08 d0 4d e2                                      sub sp, sp, #8
00797494  03 70 a0 e1                                      mov r7, r3
00797498  00 40 a0 e1                                      mov r4, r0
0079749c  20 ff ff eb                                      bl #0x797124
007974a0  f0 60 cd e1                                      strd r6, r7, [sp]
007974a4  00 30 9d e5                                      ldr r3, [sp]
007974a8  04 20 9d e5                                      ldr r2, [sp, #4]
007974ac  02 10 a0 e3                                      mov r1, #2
007974b0  01 10 c4 e5                                      strb r1, [r4, #1]
007974b4  08 20 84 e5                                      str r2, [r4, #8]
007974b8  04 30 84 e5                                      str r3, [r4, #4]
007974bc  08 d0 8d e2                                      add sp, sp, #8
007974c0  d0 80 bd e8                                      pop {r4, r6, r7, pc}

; FUNCTION 0x00797644, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value12get_propertyEPS0_
; demangled: gameswf::as_value::get_property(gameswf::as_value*) const
; decoder-mode: arm
00797644  01 20 a0 e1                                      mov r2, r1
00797648  04 10 90 e5                                      ldr r1, [r0, #4]
0079764c  08 00 90 e5                                      ldr r0, [r0, #8]
00797650  ba ff ff ea                                      b #0x797540

; FUNCTION 0x00797654, declared_size=232, range_size=232, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value7_typeofEv
; demangled: gameswf::as_value::_typeof() const
; decoder-mode: arm
00797654  30 40 2d e9                                      push {r4, r5, lr}
00797658  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
0079765c  14 d0 4d e2                                      sub sp, sp, #0x14
00797660  06 00 53 e3                                      cmp r3, #6
00797664  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00797668  14 00 00 ea                                      b #0x7976c0
0079766c  15 00 00 ea                                      b #0x7976c8
00797670  17 00 00 ea                                      b #0x7976d4
00797674  19 00 00 ea                                      b #0x7976e0
00797678  1b 00 00 ea                                      b #0x7976ec
0079767c  1a 00 00 ea                                      b #0x7976ec
00797680  1c 00 00 ea                                      b #0x7976f8
00797684  ff ff ff ea                                      b #0x797688
00797688  04 40 8d e2                                      add r4, sp, #4
0079768c  00 30 a0 e3                                      mov r3, #0
00797690  04 10 a0 e1                                      mov r1, r4
00797694  05 30 cd e5                                      strb r3, [sp, #5]
00797698  04 30 cd e5                                      strb r3, [sp, #4]
0079769c  e8 ff ff eb                                      bl #0x797644
007976a0  04 00 a0 e1                                      mov r0, r4
007976a4  ea ff ff eb                                      bl #0x797654
007976a8  00 50 a0 e1                                      mov r5, r0
007976ac  04 00 a0 e1                                      mov r0, r4
007976b0  9b fe ff eb                                      bl #0x797124
007976b4  05 00 a0 e1                                      mov r0, r5
007976b8  14 d0 8d e2                                      add sp, sp, #0x14
007976bc  30 80 bd e8                                      pop {r4, r5, pc}
007976c0  00 50 a0 e3                                      mov r5, #0
007976c4  fa ff ff ea                                      b #0x7976b4
007976c8  58 50 9f e5                                      ldr r5, [pc, #0x58]
007976cc  05 50 8f e0                                      add r5, pc, r5
007976d0  f7 ff ff ea                                      b #0x7976b4
007976d4  50 50 9f e5                                      ldr r5, [pc, #0x50]
007976d8  05 50 8f e0                                      add r5, pc, r5
007976dc  f4 ff ff ea                                      b #0x7976b4
007976e0  48 50 9f e5                                      ldr r5, [pc, #0x48]
007976e4  05 50 8f e0                                      add r5, pc, r5
007976e8  f1 ff ff ea                                      b #0x7976b4
007976ec  40 50 9f e5                                      ldr r5, [pc, #0x40]
007976f0  05 50 8f e0                                      add r5, pc, r5
007976f4  ee ff ff ea                                      b #0x7976b4
007976f8  04 30 90 e5                                      ldr r3, [r0, #4]
007976fc  00 00 53 e3                                      cmp r3, #0
00797700  05 00 00 0a                                      beq #0x79771c
00797704  03 00 a0 e1                                      mov r0, r3
00797708  00 30 93 e5                                      ldr r3, [r3]
0079770c  0f e0 a0 e1                                      mov lr, pc
00797710  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00797714  00 50 a0 e1                                      mov r5, r0
00797718  e5 ff ff ea                                      b #0x7976b4
0079771c  14 50 9f e5                                      ldr r5, [pc, #0x14]
00797720  05 50 8f e0                                      add r5, pc, r5
00797724  e2 ff ff ea                                      b #0x7976b4
; mapping-symbol data/literal pool
00797728  e4 18 13 00 c8 29 17 00 b4 29 17 00 a8 96 17 00  .byte 0xe4, 0x18, 0x13, 0x00, 0xc8, 0x29, 0x17, 0x00, 0xb4, 0x29, 0x17, 0x00, 0xa8, 0x96, 0x17, 0x00
00797738  88 29 17 00                                      .byte 0x88, 0x29, 0x17, 0x00

; FUNCTION 0x0079773c, declared_size=248, range_size=248, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_valueaSERKS0_
; demangled: gameswf::as_value::operator=(gameswf::as_value const&)
; decoder-mode: arm
0079773c  30 40 2d e9                                      push {r4, r5, lr}
00797740  00 30 d1 e5                                      ldrb r3, [r1]
00797744  14 d0 4d e2                                      sub sp, sp, #0x14
00797748  00 40 a0 e1                                      mov r4, r0
0079774c  00 30 c0 e5                                      strb r3, [r0]
00797750  d1 30 d1 e1                                      ldrsb r3, [r1, #1]
00797754  06 00 53 e3                                      cmp r3, #6
00797758  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0079775c  0f 00 00 ea                                      b #0x7977a0
00797760  17 00 00 ea                                      b #0x7977c4
00797764  1b 00 00 ea                                      b #0x7977d8
00797768  1d 00 00 ea                                      b #0x7977e4
0079776c  23 00 00 ea                                      b #0x797800
00797770  0c 00 00 ea                                      b #0x7977a8
00797774  0f 00 00 ea                                      b #0x7977b8
00797778  ff ff ff ea                                      b #0x79777c
0079777c  04 10 8d e5                                      str r1, [sp, #4]
00797780  67 fe ff eb                                      bl #0x797124
00797784  04 10 9d e5                                      ldr r1, [sp, #4]
00797788  04 50 91 e5                                      ldr r5, [r1, #4]
0079778c  00 00 55 e3                                      cmp r5, #0
00797790  20 00 00 0a                                      beq #0x797818
00797794  01 00 a0 e1                                      mov r0, r1
00797798  04 10 a0 e1                                      mov r1, r4
0079779c  a8 ff ff eb                                      bl #0x797644
007977a0  14 d0 8d e2                                      add sp, sp, #0x14
007977a4  30 80 bd e8                                      pop {r4, r5, pc}
007977a8  04 00 a0 e1                                      mov r0, r4
007977ac  04 10 91 e5                                      ldr r1, [r1, #4]
007977b0  c8 fe ff eb                                      bl #0x7972d8
007977b4  f9 ff ff ea                                      b #0x7977a0
007977b8  04 10 91 e5                                      ldr r1, [r1, #4]
007977bc  a3 fe ff eb                                      bl #0x797250
007977c0  f6 ff ff ea                                      b #0x7977a0
007977c4  00 50 a0 e3                                      mov r5, #0
007977c8  00 50 c0 e5                                      strb r5, [r0]
007977cc  54 fe ff eb                                      bl #0x797124
007977d0  01 50 c4 e5                                      strb r5, [r4, #1]
007977d4  f1 ff ff ea                                      b #0x7977a0
007977d8  04 10 d1 e5                                      ldrb r1, [r1, #4]
007977dc  93 fe ff eb                                      bl #0x797230
007977e0  ee ff ff ea                                      b #0x7977a0
007977e4  08 20 91 e5                                      ldr r2, [r1, #8]
007977e8  04 30 91 e5                                      ldr r3, [r1, #4]
007977ec  0c 20 8d e5                                      str r2, [sp, #0xc]
007977f0  08 30 8d e5                                      str r3, [sp, #8]
007977f4  d8 20 cd e1                                      ldrd r2, r3, [sp, #8]
007977f8  22 ff ff eb                                      bl #0x797488
007977fc  e7 ff ff ea                                      b #0x7977a0
00797800  08 30 91 e5                                      ldr r3, [r1, #8]
00797804  00 00 53 e3                                      cmp r3, #0
00797808  e6 ff ff 0a                                      beq #0x7977a8
0079780c  03 10 a0 e1                                      mov r1, r3
00797810  79 fe ff eb                                      bl #0x7971fc
00797814  e1 ff ff ea                                      b #0x7977a0
00797818  06 30 a0 e3                                      mov r3, #6
0079781c  01 30 c4 e5                                      strb r3, [r4, #1]
00797820  08 00 91 e5                                      ldr r0, [r1, #8]
00797824  08 00 84 e5                                      str r0, [r4, #8]
00797828  0d 09 ff eb                                      bl #0x759c64
0079782c  04 50 84 e5                                      str r5, [r4, #4]
00797830  da ff ff ea                                      b #0x7977a0

; FUNCTION 0x00797950, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_value12set_propertyERKS0_
; demangled: gameswf::as_value::set_property(gameswf::as_value const&)
; decoder-mode: arm
00797950  01 20 a0 e1                                      mov r2, r1
00797954  04 10 90 e5                                      ldr r1, [r0, #4]
00797958  08 00 90 e5                                      ldr r0, [r0, #8]
0079795c  b4 ff ff ea                                      b #0x797834

; FUNCTION 0x00797960, declared_size=244, range_size=244, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value7to_boolEv
; demangled: gameswf::as_value::to_bool() const
; decoder-mode: arm
00797960  30 40 2d e9                                      push {r4, r5, lr}
00797964  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00797968  1c d0 4d e2                                      sub sp, sp, #0x1c
0079796c  01 30 43 e2                                      sub r3, r3, #1
00797970  05 00 53 e3                                      cmp r3, #5
00797974  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00797978  10 00 00 ea                                      b #0x7979c0
0079797c  11 00 00 ea                                      b #0x7979c8
00797980  12 00 00 ea                                      b #0x7979d0
00797984  02 00 00 ea                                      b #0x797994
00797988  01 00 00 ea                                      b #0x797994
0079798c  27 00 00 ea                                      b #0x797a30
00797990  1a 00 00 ea                                      b #0x797a00
00797994  04 30 90 e5                                      ldr r3, [r0, #4]
00797998  d0 50 d3 e1                                      ldrsb r5, [r3]
0079799c  01 00 75 e3                                      cmn r5, #1
007979a0  04 50 93 05                                      ldreq r5, [r3, #4]
007979a4  01 50 45 e2                                      sub r5, r5, #1
007979a8  00 00 55 e3                                      cmp r5, #0
007979ac  00 50 a0 d3                                      movle r5, #0
007979b0  01 50 a0 c3                                      movgt r5, #1
007979b4  05 00 a0 e1                                      mov r0, r5
007979b8  1c d0 8d e2                                      add sp, sp, #0x1c
007979bc  30 80 bd e8                                      pop {r4, r5, pc}
007979c0  00 50 a0 e3                                      mov r5, #0
007979c4  fa ff ff ea                                      b #0x7979b4
007979c8  04 50 d0 e5                                      ldrb r5, [r0, #4]
007979cc  f8 ff ff ea                                      b #0x7979b4
007979d0  02 10 90 e9                                      ldmib r0, {r1, ip}
007979d4  00 20 a0 e3                                      mov r2, #0
007979d8  14 c0 8d e5                                      str ip, [sp, #0x14]
007979dc  10 10 8d e5                                      str r1, [sp, #0x10]
007979e0  00 30 a0 e3                                      mov r3, #0
007979e4  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
007979e8  8c db ed eb                                      bl #0x30e820
007979ec  00 00 50 e3                                      cmp r0, #0
007979f0  00 50 a0 e3                                      mov r5, #0
007979f4  01 50 a0 03                                      moveq r5, #1
007979f8  75 50 ef e6                                      uxtb r5, r5
007979fc  ec ff ff ea                                      b #0x7979b4
00797a00  04 40 8d e2                                      add r4, sp, #4
00797a04  00 30 a0 e3                                      mov r3, #0
00797a08  04 10 a0 e1                                      mov r1, r4
00797a0c  05 30 cd e5                                      strb r3, [sp, #5]
00797a10  04 30 cd e5                                      strb r3, [sp, #4]
00797a14  0a ff ff eb                                      bl #0x797644
00797a18  04 00 a0 e1                                      mov r0, r4
00797a1c  cf ff ff eb                                      bl #0x797960
00797a20  00 50 a0 e1                                      mov r5, r0
00797a24  04 00 a0 e1                                      mov r0, r4
00797a28  bd fd ff eb                                      bl #0x797124
00797a2c  e0 ff ff ea                                      b #0x7979b4
00797a30  04 30 90 e5                                      ldr r3, [r0, #4]
00797a34  00 00 53 e3                                      cmp r3, #0
00797a38  e0 ff ff 0a                                      beq #0x7979c0
00797a3c  03 00 a0 e1                                      mov r0, r3
00797a40  00 30 93 e5                                      ldr r3, [r3]
00797a44  0f e0 a0 e1                                      mov lr, pc
00797a48  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00797a4c  00 50 a0 e1                                      mov r5, r0
00797a50  d7 ff ff ea                                      b #0x7979b4

; FUNCTION 0x00797a54, declared_size=296, range_size=296, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value9to_numberEv
; demangled: gameswf::as_value::to_number() const
; decoder-mode: arm
00797a54  d0 40 2d e9                                      push {r4, r6, r7, lr}
00797a58  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00797a5c  18 d0 4d e2                                      sub sp, sp, #0x18
00797a60  06 00 53 e3                                      cmp r3, #6
00797a64  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00797a68  1c 00 00 ea                                      b #0x797ae0
00797a6c  31 00 00 ea                                      b #0x797b38
00797a70  14 00 00 ea                                      b #0x797ac8
00797a74  1c 00 00 ea                                      b #0x797aec
00797a78  02 00 00 ea                                      b #0x797a88
00797a7c  01 00 00 ea                                      b #0x797a88
00797a80  30 00 00 ea                                      b #0x797b48
00797a84  1e 00 00 ea                                      b #0x797b04
00797a88  04 10 90 e5                                      ldr r1, [r0, #4]
00797a8c  10 00 8d e2                                      add r0, sp, #0x10
00797a90  d0 30 d1 e1                                      ldrsb r3, [r1]
00797a94  01 00 73 e3                                      cmn r3, #1
00797a98  01 10 81 12                                      addne r1, r1, #1
00797a9c  0c 10 91 05                                      ldreq r1, [r1, #0xc]
00797aa0  c8 37 00 eb                                      bl #0x7a59c8
00797aa4  00 00 50 e3                                      cmp r0, #0
00797aa8  02 71 a0 03                                      moveq r7, #0x80000000
00797aac  47 76 a0 01                                      asreq r7, r7, #0xc
00797ab0  00 60 a0 01                                      moveq r6, r0
00797ab4  10 00 00 1a                                      bne #0x797afc
00797ab8  06 00 a0 e1                                      mov r0, r6
00797abc  07 10 a0 e1                                      mov r1, r7
00797ac0  18 d0 8d e2                                      add sp, sp, #0x18
00797ac4  d0 80 bd e8                                      pop {r4, r6, r7, pc}
00797ac8  04 30 d0 e5                                      ldrb r3, [r0, #4]
00797acc  00 00 53 e3                                      cmp r3, #0
00797ad0  ff 75 a0 13                                      movne r7, #0x3fc00000
00797ad4  00 60 a0 13                                      movne r6, #0
00797ad8  03 76 87 12                                      addne r7, r7, #0x300000
00797adc  f5 ff ff 1a                                      bne #0x797ab8
00797ae0  00 60 a0 e3                                      mov r6, #0
00797ae4  00 70 a0 e3                                      mov r7, #0
00797ae8  f2 ff ff ea                                      b #0x797ab8
00797aec  08 20 90 e5                                      ldr r2, [r0, #8]
00797af0  04 30 90 e5                                      ldr r3, [r0, #4]
00797af4  14 20 8d e5                                      str r2, [sp, #0x14]
00797af8  10 30 8d e5                                      str r3, [sp, #0x10]
00797afc  d0 61 cd e1                                      ldrd r6, r7, [sp, #0x10]
00797b00  ec ff ff ea                                      b #0x797ab8
00797b04  04 40 8d e2                                      add r4, sp, #4
00797b08  00 30 a0 e3                                      mov r3, #0
00797b0c  04 10 a0 e1                                      mov r1, r4
00797b10  05 30 cd e5                                      strb r3, [sp, #5]
00797b14  04 30 cd e5                                      strb r3, [sp, #4]
00797b18  c9 fe ff eb                                      bl #0x797644
00797b1c  04 00 a0 e1                                      mov r0, r4
00797b20  cb ff ff eb                                      bl #0x797a54
00797b24  00 60 a0 e1                                      mov r6, r0
00797b28  04 00 a0 e1                                      mov r0, r4
00797b2c  01 70 a0 e1                                      mov r7, r1
00797b30  7b fd ff eb                                      bl #0x797124
00797b34  df ff ff ea                                      b #0x797ab8
00797b38  02 71 a0 e3                                      mov r7, #0x80000000
00797b3c  00 60 a0 e3                                      mov r6, #0
00797b40  47 76 a0 e1                                      asr r7, r7, #0xc
00797b44  db ff ff ea                                      b #0x797ab8
00797b48  04 30 90 e5                                      ldr r3, [r0, #4]
00797b4c  00 00 53 e3                                      cmp r3, #0
00797b50  02 71 a0 03                                      moveq r7, #0x80000000
00797b54  47 76 a0 01                                      asreq r7, r7, #0xc
00797b58  03 60 a0 01                                      moveq r6, r3
00797b5c  d5 ff ff 0a                                      beq #0x797ab8
00797b60  03 00 a0 e1                                      mov r0, r3
00797b64  00 30 93 e5                                      ldr r3, [r3]
00797b68  0f e0 a0 e1                                      mov lr, pc
00797b6c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00797b70  00 60 a0 e1                                      mov r6, r0
00797b74  01 70 a0 e1                                      mov r7, r1
00797b78  ce ff ff ea                                      b #0x797ab8

; FUNCTION 0x00797b7c, declared_size=580, range_size=580, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_value9to_stringERNS_9tu_stringE
; demangled: gameswf::as_value::to_string(gameswf::tu_string&) const
; decoder-mode: arm
00797b7c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00797b80  14 42 9f e5                                      ldr r4, [pc, #0x214]
00797b84  14 52 9f e5                                      ldr r5, [pc, #0x214]
00797b88  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00797b8c  04 40 8f e0                                      add r4, pc, r4
00797b90  05 20 94 e7                                      ldr r2, [r4, r5]
00797b94  6b df 4d e2                                      sub sp, sp, #0x1ac
00797b98  00 70 a0 e1                                      mov r7, r0
00797b9c  00 20 92 e5                                      ldr r2, [r2]
00797ba0  01 60 a0 e1                                      mov r6, r1
00797ba4  a4 21 8d e5                                      str r2, [sp, #0x1a4]
00797ba8  06 00 53 e3                                      cmp r3, #6
00797bac  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00797bb0  37 00 00 ea                                      b #0x797c94
00797bb4  3b 00 00 ea                                      b #0x797ca8
00797bb8  3f 00 00 ea                                      b #0x797cbc
00797bbc  44 00 00 ea                                      b #0x797cd4
00797bc0  02 00 00 ea                                      b #0x797bd0
00797bc4  01 00 00 ea                                      b #0x797bd0
00797bc8  26 00 00 ea                                      b #0x797c68
00797bcc  08 00 00 ea                                      b #0x797bf4
00797bd0  04 60 90 e5                                      ldr r6, [r0, #4]
00797bd4  05 30 94 e7                                      ldr r3, [r4, r5]
00797bd8  a4 21 9d e5                                      ldr r2, [sp, #0x1a4]
00797bdc  06 00 a0 e1                                      mov r0, r6
00797be0  00 30 93 e5                                      ldr r3, [r3]
00797be4  03 00 52 e1                                      cmp r2, r3
00797be8  6a 00 00 1a                                      bne #0x797d98
00797bec  6b df 8d e2                                      add sp, sp, #0x1ac
00797bf0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00797bf4  14 80 8d e2                                      add r8, sp, #0x14
00797bf8  00 70 a0 e3                                      mov r7, #0
00797bfc  08 10 a0 e1                                      mov r1, r8
00797c00  14 70 cd e5                                      strb r7, [sp, #0x14]
00797c04  15 70 cd e5                                      strb r7, [sp, #0x15]
00797c08  8d fe ff eb                                      bl #0x797644
00797c0c  a0 31 9d e5                                      ldr r3, [sp, #0x1a0]
00797c10  00 20 e0 e3                                      mvn r2, #0
00797c14  01 c0 a0 e3                                      mov ip, #1
00797c18  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00797c1c  23 2c a0 e1                                      lsr r2, r3, #0x18
00797c20  17 20 c0 e7                                      bfi r2, r7, #0, #1
00797c24  19 1e 8d e2                                      add r1, sp, #0x190
00797c28  08 00 a0 e1                                      mov r0, r8
00797c2c  a0 31 8d e5                                      str r3, [sp, #0x1a0]
00797c30  90 c1 cd e5                                      strb ip, [sp, #0x190]
00797c34  a3 21 cd e5                                      strb r2, [sp, #0x1a3]
00797c38  91 71 cd e5                                      strb r7, [sp, #0x191]
00797c3c  ce ff ff eb                                      bl #0x797b7c
00797c40  00 10 a0 e1                                      mov r1, r0
00797c44  06 00 a0 e1                                      mov r0, r6
00797c48  c0 ec fe eb                                      bl #0x752f50
00797c4c  90 c1 dd e5                                      ldrb ip, [sp, #0x190]
00797c50  7c 30 af e6                                      sxtb r3, ip
00797c54  01 00 73 e3                                      cmn r3, #1
00797c58  40 00 00 0a                                      beq #0x797d60
00797c5c  08 00 a0 e1                                      mov r0, r8
00797c60  2f fd ff eb                                      bl #0x797124
00797c64  da ff ff ea                                      b #0x797bd4
00797c68  04 30 90 e5                                      ldr r3, [r0, #4]
00797c6c  00 00 53 e3                                      cmp r3, #0
00797c70  3e 00 00 0a                                      beq #0x797d70
00797c74  03 00 a0 e1                                      mov r0, r3
00797c78  00 30 93 e5                                      ldr r3, [r3]
00797c7c  0f e0 a0 e1                                      mov lr, pc
00797c80  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00797c84  00 10 a0 e1                                      mov r1, r0
00797c88  06 00 a0 e1                                      mov r0, r6
00797c8c  e1 52 ff eb                                      bl #0x76c818
00797c90  cf ff ff ea                                      b #0x797bd4
00797c94  01 00 a0 e1                                      mov r0, r1
00797c98  04 11 9f e5                                      ldr r1, [pc, #0x104]
00797c9c  01 10 8f e0                                      add r1, pc, r1
00797ca0  dc 52 ff eb                                      bl #0x76c818
00797ca4  ca ff ff ea                                      b #0x797bd4
00797ca8  01 00 a0 e1                                      mov r0, r1
00797cac  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
00797cb0  01 10 8f e0                                      add r1, pc, r1
00797cb4  d7 52 ff eb                                      bl #0x76c818
00797cb8  c5 ff ff ea                                      b #0x797bd4
00797cbc  04 30 d0 e5                                      ldrb r3, [r0, #4]
00797cc0  00 00 53 e3                                      cmp r3, #0
00797cc4  22 00 00 1a                                      bne #0x797d54
00797cc8  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00797ccc  01 10 8f e0                                      add r1, pc, r1
00797cd0  ec ff ff ea                                      b #0x797c88
00797cd4  08 20 90 e5                                      ldr r2, [r0, #8]
00797cd8  04 90 90 e5                                      ldr sb, [r0, #4]
00797cdc  6a 3f 8d e2                                      add r3, sp, #0x1a8
00797ce0  2c 20 8d e5                                      str r2, [sp, #0x2c]
00797ce4  80 91 23 e5                                      str sb, [r3, #-0x180]!
00797ce8  9e 84 a0 e3                                      mov r8, #0x9e000000
00797cec  d0 00 c3 e1                                      ldrd r0, r1, [r3]
00797cf0  48 8b a0 e1                                      asr r8, r8, #0x16
00797cf4  00 20 a0 e1                                      mov r2, r0
00797cf8  01 30 a0 e1                                      mov r3, r1
00797cfc  6a af 8d e2                                      add sl, sp, #0x1a8
00797d00  f8 00 cd e1                                      strd r0, r1, [sp, #8]
00797d04  f8 00 8a e1                                      strd r0, r1, [sl, r8]
00797d08  6b d9 ed eb                                      bl #0x30e2bc
00797d0c  00 00 50 e3                                      cmp r0, #0
00797d10  1b 00 00 1a                                      bne #0x797d84
00797d14  08 30 97 e5                                      ldr r3, [r7, #8]
00797d18  90 20 9f e5                                      ldr r2, [pc, #0x90]
00797d1c  30 70 8d e2                                      add r7, sp, #0x30
00797d20  20 90 8d e5                                      str sb, [sp, #0x20]
00797d24  24 30 8d e5                                      str r3, [sp, #0x24]
00797d28  02 20 8f e0                                      add r2, pc, r2
00797d2c  07 00 a0 e1                                      mov r0, r7
00797d30  32 10 a0 e3                                      mov r1, #0x32
00797d34  6a bf 8d e2                                      add fp, sp, #0x1a8
00797d38  db 80 88 e1                                      ldrd r8, sb, [r8, fp]
00797d3c  f0 80 cd e1                                      strd r8, sb, [sp]
00797d40  3f d9 ed eb                                      bl #0x30e244
00797d44  06 00 a0 e1                                      mov r0, r6
00797d48  07 10 a0 e1                                      mov r1, r7
00797d4c  b1 52 ff eb                                      bl #0x76c818
00797d50  9f ff ff ea                                      b #0x797bd4
00797d54  58 10 9f e5                                      ldr r1, [pc, #0x58]
00797d58  01 10 8f e0                                      add r1, pc, r1
00797d5c  c9 ff ff ea                                      b #0x797c88
00797d60  9c 01 9d e5                                      ldr r0, [sp, #0x19c]
00797d64  98 11 9d e5                                      ldr r1, [sp, #0x198]
00797d68  72 eb fe eb                                      bl #0x752b38
00797d6c  ba ff ff ea                                      b #0x797c5c
00797d70  01 00 a0 e1                                      mov r0, r1
00797d74  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00797d78  01 10 8f e0                                      add r1, pc, r1
00797d7c  a5 52 ff eb                                      bl #0x76c818
00797d80  93 ff ff ea                                      b #0x797bd4
00797d84  30 10 9f e5                                      ldr r1, [pc, #0x30]
00797d88  06 00 a0 e1                                      mov r0, r6
00797d8c  01 10 8f e0                                      add r1, pc, r1
00797d90  a0 52 ff eb                                      bl #0x76c818
00797d94  8e ff ff ea                                      b #0x797bd4
00797d98  5c d9 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00797d9c  04 cf 1f 00 ac 40 00 00 6c 3b 13 00 00 13 13 00  .byte 0x04, 0xcf, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x6c, 0x3b, 0x13, 0x00, 0x00, 0x13, 0x13, 0x00
00797dac  9c 68 12 00 90 23 17 00 98 6b 12 00 30 23 17 00  .byte 0x9c, 0x68, 0x12, 0x00, 0x90, 0x23, 0x17, 0x00, 0x98, 0x6b, 0x12, 0x00, 0x30, 0x23, 0x17, 0x00
00797dbc  24 23 17 00                                      .byte 0x24, 0x23, 0x17, 0x00

; FUNCTION 0x00797dc0, declared_size=640, range_size=640, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_valueeqERKS0_
; demangled: gameswf::as_value::operator==(gameswf::as_value const&) const
; decoder-mode: arm
00797dc0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00797dc4  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00797dc8  1c d0 4d e2                                      sub sp, sp, #0x1c
00797dcc  00 60 a0 e1                                      mov r6, r0
00797dd0  01 70 a0 e1                                      mov r7, r1
00797dd4  06 00 53 e3                                      cmp r3, #6
00797dd8  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00797ddc  15 00 00 ea                                      b #0x797e38
00797de0  18 00 00 ea                                      b #0x797e48
00797de4  20 00 00 ea                                      b #0x797e6c
00797de8  28 00 00 ea                                      b #0x797e90
00797dec  02 00 00 ea                                      b #0x797dfc
00797df0  01 00 00 ea                                      b #0x797dfc
00797df4  09 00 00 ea                                      b #0x797e20
00797df8  2d 00 00 ea                                      b #0x797eb4
00797dfc  d1 30 d1 e1                                      ldrsb r3, [r1, #1]
00797e00  01 30 43 e2                                      sub r3, r3, #1
00797e04  03 00 53 e3                                      cmp r3, #3
00797e08  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00797e0c  09 00 00 ea                                      b #0x797e38
00797e10  62 00 00 ea                                      b #0x797fa0
00797e14  56 00 00 ea                                      b #0x797f74
00797e18  32 00 00 ea                                      b #0x797ee8
00797e1c  31 00 00 ea                                      b #0x797ee8
00797e20  d1 40 d1 e1                                      ldrsb r4, [r1, #1]
00797e24  05 00 54 e3                                      cmp r4, #5
00797e28  04 30 90 15                                      ldrne r3, [r0, #4]
00797e2c  60 00 00 0a                                      beq #0x797fb4
00797e30  00 00 53 e3                                      cmp r3, #0
00797e34  7e 00 00 0a                                      beq #0x798034
00797e38  00 40 a0 e3                                      mov r4, #0
00797e3c  04 00 a0 e1                                      mov r0, r4
00797e40  1c d0 8d e2                                      add sp, sp, #0x1c
00797e44  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00797e48  01 30 d1 e5                                      ldrb r3, [r1, #1]
00797e4c  00 00 53 e3                                      cmp r3, #0
00797e50  5b 00 00 0a                                      beq #0x797fc4
00797e54  05 00 53 e3                                      cmp r3, #5
00797e58  f6 ff ff 1a                                      bne #0x797e38
00797e5c  04 40 91 e5                                      ldr r4, [r1, #4]
00797e60  01 40 74 e2                                      rsbs r4, r4, #1
00797e64  00 40 a0 33                                      movlo r4, #0
00797e68  f3 ff ff ea                                      b #0x797e3c
00797e6c  d1 30 d1 e1                                      ldrsb r3, [r1, #1]
00797e70  01 30 43 e2                                      sub r3, r3, #1
00797e74  03 00 53 e3                                      cmp r3, #3
00797e78  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00797e7c  ed ff ff ea                                      b #0x797e38
00797e80  65 00 00 ea                                      b #0x79801c
00797e84  5d 00 00 ea                                      b #0x798000
00797e88  2a 00 00 ea                                      b #0x797f38
00797e8c  29 00 00 ea                                      b #0x797f38
00797e90  d1 30 d1 e1                                      ldrsb r3, [r1, #1]
00797e94  01 30 43 e2                                      sub r3, r3, #1
00797e98  03 00 53 e3                                      cmp r3, #3
00797e9c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00797ea0  e4 ff ff ea                                      b #0x797e38
00797ea4  14 00 00 ea                                      b #0x797efc
00797ea8  47 00 00 ea                                      b #0x797fcc
00797eac  12 00 00 ea                                      b #0x797efc
00797eb0  11 00 00 ea                                      b #0x797efc
00797eb4  04 50 8d e2                                      add r5, sp, #4
00797eb8  00 30 a0 e3                                      mov r3, #0
00797ebc  05 10 a0 e1                                      mov r1, r5
00797ec0  05 30 cd e5                                      strb r3, [sp, #5]
00797ec4  04 30 cd e5                                      strb r3, [sp, #4]
00797ec8  dd fd ff eb                                      bl #0x797644
00797ecc  05 00 a0 e1                                      mov r0, r5
00797ed0  07 10 a0 e1                                      mov r1, r7
00797ed4  b9 ff ff eb                                      bl #0x797dc0
00797ed8  00 40 a0 e1                                      mov r4, r0
00797edc  05 00 a0 e1                                      mov r0, r5
00797ee0  8f fc ff eb                                      bl #0x797124
00797ee4  d4 ff ff ea                                      b #0x797e3c
00797ee8  04 00 90 e5                                      ldr r0, [r0, #4]
00797eec  04 10 91 e5                                      ldr r1, [r1, #4]
00797ef0  08 fc ff eb                                      bl #0x796f18
00797ef4  00 40 a0 e1                                      mov r4, r0
00797ef8  cf ff ff ea                                      b #0x797e3c
00797efc  08 20 90 e5                                      ldr r2, [r0, #8]
00797f00  04 30 90 e5                                      ldr r3, [r0, #4]
00797f04  01 00 a0 e1                                      mov r0, r1
00797f08  14 20 8d e5                                      str r2, [sp, #0x14]
00797f0c  10 30 8d e5                                      str r3, [sp, #0x10]
00797f10  d0 41 cd e1                                      ldrd r4, r5, [sp, #0x10]
00797f14  ce fe ff eb                                      bl #0x797a54
00797f18  04 20 a0 e1                                      mov r2, r4
00797f1c  05 30 a0 e1                                      mov r3, r5
00797f20  3e da ed eb                                      bl #0x30e820
00797f24  00 00 50 e3                                      cmp r0, #0
00797f28  00 40 a0 e3                                      mov r4, #0
00797f2c  01 40 a0 13                                      movne r4, #1
00797f30  74 40 ef e6                                      uxtb r4, r4
00797f34  c0 ff ff ea                                      b #0x797e3c
00797f38  01 00 a0 e1                                      mov r0, r1
00797f3c  c4 fe ff eb                                      bl #0x797a54
00797f40  00 40 a0 e1                                      mov r4, r0
00797f44  01 50 a0 e1                                      mov r5, r1
00797f48  06 00 a0 e1                                      mov r0, r6
00797f4c  c0 fe ff eb                                      bl #0x797a54
00797f50  00 20 a0 e1                                      mov r2, r0
00797f54  01 30 a0 e1                                      mov r3, r1
00797f58  04 00 a0 e1                                      mov r0, r4
00797f5c  05 10 a0 e1                                      mov r1, r5
00797f60  2e da ed eb                                      bl #0x30e820
00797f64  00 00 50 e3                                      cmp r0, #0
00797f68  00 40 a0 e3                                      mov r4, #0
00797f6c  01 40 a0 13                                      movne r4, #1
00797f70  ee ff ff ea                                      b #0x797f30
00797f74  b6 fe ff eb                                      bl #0x797a54
00797f78  08 20 97 e5                                      ldr r2, [r7, #8]
00797f7c  04 30 97 e5                                      ldr r3, [r7, #4]
00797f80  00 40 a0 e3                                      mov r4, #0
00797f84  14 20 8d e5                                      str r2, [sp, #0x14]
00797f88  10 30 8d e5                                      str r3, [sp, #0x10]
00797f8c  d0 21 cd e1                                      ldrd r2, r3, [sp, #0x10]
00797f90  22 da ed eb                                      bl #0x30e820
00797f94  00 00 50 e3                                      cmp r0, #0
00797f98  01 40 a0 13                                      movne r4, #1
00797f9c  e3 ff ff ea                                      b #0x797f30
00797fa0  ab fe ff eb                                      bl #0x797a54
00797fa4  00 40 a0 e1                                      mov r4, r0
00797fa8  01 50 a0 e1                                      mov r5, r1
00797fac  07 00 a0 e1                                      mov r0, r7
00797fb0  e5 ff ff ea                                      b #0x797f4c
00797fb4  04 30 90 e5                                      ldr r3, [r0, #4]
00797fb8  04 20 91 e5                                      ldr r2, [r1, #4]
00797fbc  02 00 53 e1                                      cmp r3, r2
00797fc0  9a ff ff 1a                                      bne #0x797e30
00797fc4  01 40 a0 e3                                      mov r4, #1
00797fc8  9b ff ff ea                                      b #0x797e3c
00797fcc  03 00 90 e9                                      ldmib r0, {r0, r1}
00797fd0  0c 00 97 e9                                      ldmib r7, {r2, r3}
00797fd4  10 00 8d e5                                      str r0, [sp, #0x10]
00797fd8  14 10 8d e5                                      str r1, [sp, #0x14]
00797fdc  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
00797fe0  10 20 8d e5                                      str r2, [sp, #0x10]
00797fe4  14 30 8d e5                                      str r3, [sp, #0x14]
00797fe8  d0 21 cd e1                                      ldrd r2, r3, [sp, #0x10]
00797fec  0b da ed eb                                      bl #0x30e820
00797ff0  00 00 50 e3                                      cmp r0, #0
00797ff4  00 40 a0 e3                                      mov r4, #0
00797ff8  01 40 a0 13                                      movne r4, #1
00797ffc  cb ff ff ea                                      b #0x797f30
00798000  01 00 a0 e1                                      mov r0, r1
00798004  04 40 d6 e5                                      ldrb r4, [r6, #4]
00798008  54 fe ff eb                                      bl #0x797960
0079800c  00 00 54 e1                                      cmp r4, r0
00798010  00 40 a0 13                                      movne r4, #0
00798014  01 40 a0 03                                      moveq r4, #1
00798018  87 ff ff ea                                      b #0x797e3c
0079801c  04 40 d0 e5                                      ldrb r4, [r0, #4]
00798020  04 30 d1 e5                                      ldrb r3, [r1, #4]
00798024  03 00 54 e1                                      cmp r4, r3
00798028  00 40 a0 13                                      movne r4, #0
0079802c  01 40 a0 03                                      moveq r4, #1
00798030  81 ff ff ea                                      b #0x797e3c
00798034  01 40 74 e2                                      rsbs r4, r4, #1
00798038  00 40 a0 33                                      movlo r4, #0
0079803c  7e ff ff ea                                      b #0x797e3c

; FUNCTION 0x00798040, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::as_value
; alias: _ZNK7gameswf8as_valueneERKS0_
; demangled: gameswf::as_value::operator!=(gameswf::as_value const&) const
; decoder-mode: arm
00798040  10 40 2d e9                                      push {r4, lr}
00798044  5d ff ff eb                                      bl #0x797dc0
00798048  01 00 20 e2                                      eor r0, r0, #1
0079804c  70 00 ef e6                                      uxtb r0, r0
00798050  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007ba984, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_valuedVEd
; demangled: gameswf::as_value::operator/=(double)
; decoder-mode: arm
007ba984  d0 40 2d e9                                      push {r4, r6, r7, lr}
007ba988  02 60 a0 e1                                      mov r6, r2
007ba98c  03 70 a0 e1                                      mov r7, r3
007ba990  00 40 a0 e1                                      mov r4, r0
007ba994  2e 74 ff eb                                      bl #0x797a54
007ba998  06 20 a0 e1                                      mov r2, r6
007ba99c  07 30 a0 e1                                      mov r3, r7
007ba9a0  66 4e ed eb                                      bl #0x30e340
007ba9a4  00 20 a0 e1                                      mov r2, r0
007ba9a8  01 30 a0 e1                                      mov r3, r1
007ba9ac  04 00 a0 e1                                      mov r0, r4
007ba9b0  d0 40 bd e8                                      pop {r4, r6, r7, lr}
007ba9b4  b3 72 ff ea                                      b #0x797488

; FUNCTION 0x007babb0, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_value
; alias: _ZN7gameswf8as_valueC1EPNS_9as_objectE
; demangled: gameswf::as_value::as_value(gameswf::as_object*)
; decoder-mode: arm
007babb0  00 30 a0 e3                                      mov r3, #0
007babb4  10 40 2d e9                                      push {r4, lr}
007babb8  00 00 51 e3                                      cmp r1, #0
007babbc  00 30 c0 e5                                      strb r3, [r0]
007babc0  05 30 a0 e3                                      mov r3, #5
007babc4  00 40 a0 e1                                      mov r4, r0
007babc8  01 30 c0 e5                                      strb r3, [r0, #1]
007babcc  04 10 80 e5                                      str r1, [r0, #4]
007babd0  01 00 00 0a                                      beq #0x7babdc
007babd4  01 00 a0 e1                                      mov r0, r1
007babd8  21 7c fe eb                                      bl #0x759c64
007babdc  04 00 a0 e1                                      mov r0, r4
007babe0  10 80 bd e8                                      pop {r4, pc}
