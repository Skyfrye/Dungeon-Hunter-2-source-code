; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00752bf4, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object9to_stringEv
; demangled: gameswf::as_object::to_string()
; decoder-mode: arm
00752bf4  04 00 9f e5                                      ldr r0, [pc, #4]
00752bf8  00 00 8f e0                                      add r0, pc, r0
00752bfc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00752c00  a8 5c 1b 00                                      .byte 0xa8, 0x5c, 0x1b, 0x00

; FUNCTION 0x00752c04, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object7to_boolEv
; demangled: gameswf::as_object::to_bool()
; decoder-mode: arm
00752c04  01 00 a0 e3                                      mov r0, #1
00752c08  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752c0c, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object7_typeofEv
; demangled: gameswf::as_object::_typeof()
; decoder-mode: arm
00752c0c  04 00 9f e5                                      ldr r0, [pc, #4]
00752c10  00 00 8f e0                                      add r0, pc, r0
00752c14  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00752c18  b8 8b 1b 00                                      .byte 0xb8, 0x8b, 0x1b, 0x00

; FUNCTION 0x00752c1c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object15get_environmentEv
; demangled: gameswf::as_object::get_environment()
; decoder-mode: arm
00752c1c  00 00 a0 e3                                      mov r0, #0
00752c20  1e ff 2f e1                                      bx lr

; FUNCTION 0x00752c24, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object17notify_set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::as_object::notify_set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
00752c24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00768b44, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::as_object
; alias: _ZNK7gameswf9as_object2isEi
; demangled: gameswf::as_object::is(int) const
; decoder-mode: arm
00768b44  01 00 71 e2                                      rsbs r0, r1, #1
00768b48  00 00 a0 33                                      movlo r0, #0
00768b4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00768b50, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object7advanceEf
; demangled: gameswf::as_object::advance(float)
; decoder-mode: arm
00768b50  1e ff 2f e1                                      bx lr

; FUNCTION 0x00768b54, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object14builtin_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::as_object::builtin_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
00768b54  10 40 2d e9                                      push {r4, lr}
00768b58  01 30 a0 e3                                      mov r3, #1
00768b5c  00 30 c2 e5                                      strb r3, [r2]
00768b60  00 30 90 e5                                      ldr r3, [r0]
00768b64  0f e0 a0 e1                                      mov lr, pc
00768b68  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00768b6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00768b70, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_object
; alias: _ZNK7gameswf9as_object9get_protoEv
; demangled: gameswf::as_object::get_proto() const
; decoder-mode: arm
00768b70  28 00 90 e5                                      ldr r0, [r0, #0x28]
00768b74  1e ff 2f e1                                      bx lr

; FUNCTION 0x00768b78, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object10set_memberEiRKNS_8as_valueE
; demangled: gameswf::as_object::set_member(int, gameswf::as_value const&)
; decoder-mode: arm
00768b78  00 00 a0 e3                                      mov r0, #0
00768b7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00768b80, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object10get_memberEiPNS_8as_valueE
; demangled: gameswf::as_object::get_member(int, gameswf::as_value*)
; decoder-mode: arm
00768b80  00 00 a0 e3                                      mov r0, #0
00768b84  1e ff 2f e1                                      bx lr

; FUNCTION 0x00768d08, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object8set_ctorERKNS_8as_valueE
; demangled: gameswf::as_object::set_ctor(gameswf::as_value const&)
; decoder-mode: arm
00768d08  10 00 80 e2                                      add r0, r0, #0x10
00768d0c  8a ba 00 ea                                      b #0x79773c

; FUNCTION 0x00768d10, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::as_object
; alias: _ZNK7gameswf9as_object8get_ctorEPNS_8as_valueE
; demangled: gameswf::as_object::get_ctor(gameswf::as_value*) const
; decoder-mode: arm
00768d10  70 40 2d e9                                      push {r4, r5, r6, lr}
00768d14  10 40 80 e2                                      add r4, r0, #0x10
00768d18  04 00 a0 e1                                      mov r0, r4
00768d1c  01 50 a0 e1                                      mov r5, r1
00768d20  96 b7 00 eb                                      bl #0x796b80
00768d24  00 00 50 e3                                      cmp r0, #0
00768d28  03 00 00 0a                                      beq #0x768d3c
00768d2c  05 00 a0 e1                                      mov r0, r5
00768d30  04 10 a0 e1                                      mov r1, r4
00768d34  80 ba 00 eb                                      bl #0x79773c
00768d38  01 00 a0 e3                                      mov r0, #1
00768d3c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00768d40, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::as_object
; alias: _ZNK7gameswf9as_object14is_instance_ofEPKNS_11as_functionE
; demangled: gameswf::as_object::is_instance_of(gameswf::as_function const*) const
; decoder-mode: arm
00768d40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00768d44  10 d0 4d e2                                      sub sp, sp, #0x10
00768d48  04 50 8d e2                                      add r5, sp, #4
00768d4c  00 30 a0 e3                                      mov r3, #0
00768d50  01 40 a0 e1                                      mov r4, r1
00768d54  05 10 a0 e1                                      mov r1, r5
00768d58  05 30 cd e5                                      strb r3, [sp, #5]
00768d5c  04 30 cd e5                                      strb r3, [sp, #4]
00768d60  00 60 a0 e1                                      mov r6, r0
00768d64  e9 ff ff eb                                      bl #0x768d10
00768d68  d5 20 dd e1                                      ldrsb r2, [sp, #5]
00768d6c  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
00768d70  00 00 52 e3                                      cmp r2, #0
00768d74  03 30 8f e0                                      add r3, pc, r3
00768d78  3f 00 00 0a                                      beq #0x768e7c
00768d7c  00 00 54 e3                                      cmp r4, #0
00768d80  33 00 00 0a                                      beq #0x768e54
00768d84  00 30 94 e5                                      ldr r3, [r4]
00768d88  04 00 a0 e1                                      mov r0, r4
00768d8c  06 10 a0 e3                                      mov r1, #6
00768d90  0f e0 a0 e1                                      mov lr, pc
00768d94  08 f0 93 e5                                      ldr pc, [r3, #8]
00768d98  00 00 50 e3                                      cmp r0, #0
00768d9c  0b 00 00 0a                                      beq #0x768dd0
00768da0  05 00 a0 e1                                      mov r0, r5
00768da4  80 b7 00 eb                                      bl #0x796bac
00768da8  00 70 50 e2                                      subs r7, r0, #0
00768dac  07 00 00 0a                                      beq #0x768dd0
00768db0  00 30 97 e5                                      ldr r3, [r7]
00768db4  06 10 a0 e3                                      mov r1, #6
00768db8  0f e0 a0 e1                                      mov lr, pc
00768dbc  08 f0 93 e5                                      ldr pc, [r3, #8]
00768dc0  00 00 50 e3                                      cmp r0, #0
00768dc4  01 00 00 0a                                      beq #0x768dd0
00768dc8  07 00 54 e1                                      cmp r4, r7
00768dcc  28 00 00 0a                                      beq #0x768e74
00768dd0  00 30 94 e5                                      ldr r3, [r4]
00768dd4  04 00 a0 e1                                      mov r0, r4
00768dd8  05 10 a0 e3                                      mov r1, #5
00768ddc  0f e0 a0 e1                                      mov lr, pc
00768de0  08 f0 93 e5                                      ldr pc, [r3, #8]
00768de4  00 00 50 e3                                      cmp r0, #0
00768de8  04 80 a0 11                                      movne r8, r4
00768dec  18 00 00 0a                                      beq #0x768e54
00768df0  05 00 a0 e1                                      mov r0, r5
00768df4  6c b7 00 eb                                      bl #0x796bac
00768df8  00 70 50 e2                                      subs r7, r0, #0
00768dfc  05 00 00 0a                                      beq #0x768e18
00768e00  00 30 97 e5                                      ldr r3, [r7]
00768e04  05 10 a0 e3                                      mov r1, #5
00768e08  0f e0 a0 e1                                      mov lr, pc
00768e0c  08 f0 93 e5                                      ldr pc, [r3, #8]
00768e10  00 00 50 e3                                      cmp r0, #0
00768e14  10 00 00 1a                                      bne #0x768e5c
00768e18  00 30 96 e5                                      ldr r3, [r6]
00768e1c  06 00 a0 e1                                      mov r0, r6
00768e20  0f e0 a0 e1                                      mov lr, pc
00768e24  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00768e28  00 30 50 e2                                      subs r3, r0, #0
00768e2c  03 40 a0 01                                      moveq r4, r3
00768e30  02 00 00 0a                                      beq #0x768e40
00768e34  04 10 a0 e1                                      mov r1, r4
00768e38  c0 ff ff eb                                      bl #0x768d40
00768e3c  00 40 a0 e1                                      mov r4, r0
00768e40  05 00 a0 e1                                      mov r0, r5
00768e44  b6 b8 00 eb                                      bl #0x797124
00768e48  04 00 a0 e1                                      mov r0, r4
00768e4c  10 d0 8d e2                                      add sp, sp, #0x10
00768e50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00768e54  00 80 a0 e3                                      mov r8, #0
00768e58  e4 ff ff ea                                      b #0x768df0
00768e5c  00 00 58 e3                                      cmp r8, #0
00768e60  ec ff ff 0a                                      beq #0x768e18
00768e64  3c 20 98 e5                                      ldr r2, [r8, #0x3c]
00768e68  3c 30 97 e5                                      ldr r3, [r7, #0x3c]
00768e6c  03 00 52 e1                                      cmp r2, r3
00768e70  e8 ff ff 1a                                      bne #0x768e18
00768e74  01 40 a0 e3                                      mov r4, #1
00768e78  f0 ff ff ea                                      b #0x768e40
00768e7c  10 20 9f e5                                      ldr r2, [pc, #0x10]
00768e80  05 00 a0 e1                                      mov r0, r5
00768e84  02 10 93 e7                                      ldr r1, [r3, r2]
00768e88  04 b9 00 eb                                      bl #0x7972a0
00768e8c  ba ff ff ea                                      b #0x768d7c
; mapping-symbol data/literal pool
00768e90  1c bd 22 00 94 30 00 00                          .byte 0x1c, 0xbd, 0x22, 0x00, 0x94, 0x30, 0x00, 0x00

; FUNCTION 0x00768e98, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object9to_numberEv
; demangled: gameswf::as_object::to_number()
; decoder-mode: arm
00768e98  30 40 2d e9                                      push {r4, r5, lr}
00768e9c  0c d0 4d e2                                      sub sp, sp, #0xc
00768ea0  00 30 90 e5                                      ldr r3, [r0]
00768ea4  0f e0 a0 e1                                      mov lr, pc
00768ea8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00768eac  00 40 a0 e3                                      mov r4, #0
00768eb0  08 30 8d e2                                      add r3, sp, #8
00768eb4  00 50 a0 e3                                      mov r5, #0
00768eb8  00 10 a0 e1                                      mov r1, r0
00768ebc  f8 40 63 e1                                      strd r4, r5, [r3, #-8]!
00768ec0  0d 00 a0 e1                                      mov r0, sp
00768ec4  bf f2 00 eb                                      bl #0x7a59c8
00768ec8  00 30 50 e2                                      subs r3, r0, #0
00768ecc  04 00 00 1a                                      bne #0x768ee4
00768ed0  02 11 a0 e3                                      mov r1, #0x80000000
00768ed4  41 16 a0 e1                                      asr r1, r1, #0xc
00768ed8  03 00 a0 e1                                      mov r0, r3
00768edc  0c d0 8d e2                                      add sp, sp, #0xc
00768ee0  30 80 bd e8                                      pop {r4, r5, pc}
00768ee4  d0 00 cd e1                                      ldrd r0, r1, [sp]
00768ee8  fb ff ff ea                                      b #0x768edc

; FUNCTION 0x00769154, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::as_object::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
00769154  70 40 2d e9                                      push {r4, r5, r6, lr}
00769158  00 50 a0 e1                                      mov r5, r0
0076915c  00 00 a0 e3                                      mov r0, #0
00769160  01 60 a0 e1                                      mov r6, r1
00769164  02 40 a0 e1                                      mov r4, r2
00769168  26 0f 00 eb                                      bl #0x76ce08
0076916c  00 00 50 e3                                      cmp r0, #0
00769170  01 00 00 0a                                      beq #0x76917c
00769174  01 00 a0 e3                                      mov r0, #1
00769178  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076917c  0c 00 85 e2                                      add r0, r5, #0xc
00769180  06 10 a0 e1                                      mov r1, r6
00769184  04 20 a0 e1                                      mov r2, r4
00769188  ae ff ff eb                                      bl #0x769048
0076918c  00 00 50 e3                                      cmp r0, #0
00769190  07 00 00 0a                                      beq #0x7691b4
00769194  d1 30 d4 e1                                      ldrsb r3, [r4, #1]
00769198  06 00 53 e3                                      cmp r3, #6
0076919c  f4 ff ff 1a                                      bne #0x769174
007691a0  04 00 a0 e1                                      mov r0, r4
007691a4  05 10 a0 e1                                      mov r1, r5
007691a8  93 b6 00 eb                                      bl #0x796bfc
007691ac  01 00 a0 e3                                      mov r0, #1
007691b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007691b4  00 30 95 e5                                      ldr r3, [r5]
007691b8  05 00 a0 e1                                      mov r0, r5
007691bc  0f e0 a0 e1                                      mov lr, pc
007691c0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
007691c4  00 30 50 e2                                      subs r3, r0, #0
007691c8  06 00 00 0a                                      beq #0x7691e8
007691cc  00 30 93 e5                                      ldr r3, [r3]
007691d0  06 10 a0 e1                                      mov r1, r6
007691d4  04 20 a0 e1                                      mov r2, r4
007691d8  0f e0 a0 e1                                      mov lr, pc
007691dc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
007691e0  00 00 50 e3                                      cmp r0, #0
007691e4  ea ff ff 1a                                      bne #0x769194
007691e8  00 00 a0 e3                                      mov r0, #0
007691ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00769a9c, declared_size=212, range_size=212, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_objectD2Ev
; demangled: gameswf::as_object::~as_object()
; decoder-mode: arm
00769a9c  70 40 2d e9                                      push {r4, r5, r6, lr}
00769aa0  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
00769aa4  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00769aa8  1c 60 90 e5                                      ldr r6, [r0, #0x1c]
00769aac  05 50 8f e0                                      add r5, pc, r5
00769ab0  03 30 95 e7                                      ldr r3, [r5, r3]
00769ab4  00 00 56 e3                                      cmp r6, #0
00769ab8  00 40 a0 e1                                      mov r4, r0
00769abc  08 30 83 e2                                      add r3, r3, #8
00769ac0  00 30 80 e5                                      str r3, [r0]
00769ac4  04 00 00 0a                                      beq #0x769adc
00769ac8  06 00 a0 e1                                      mov r0, r6
00769acc  c7 ff ff eb                                      bl #0x7699f0
00769ad0  06 00 a0 e1                                      mov r0, r6
00769ad4  00 10 a0 e3                                      mov r1, #0
00769ad8  16 a4 ff eb                                      bl #0x752b38
00769adc  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00769ae0  00 00 50 e3                                      cmp r0, #0
00769ae4  05 00 00 0a                                      beq #0x769b00
00769ae8  00 10 90 e5                                      ldr r1, [r0]
00769aec  01 10 41 e2                                      sub r1, r1, #1
00769af0  00 00 51 e3                                      cmp r1, #0
00769af4  00 10 80 e5                                      str r1, [r0]
00769af8  00 00 00 1a                                      bne #0x769b00
00769afc  0d a4 ff eb                                      bl #0x752b38
00769b00  28 00 94 e5                                      ldr r0, [r4, #0x28]
00769b04  00 00 50 e3                                      cmp r0, #0
00769b08  00 00 00 0a                                      beq #0x769b10
00769b0c  cb c1 ff eb                                      bl #0x75a240
00769b10  20 00 94 e5                                      ldr r0, [r4, #0x20]
00769b14  00 00 50 e3                                      cmp r0, #0
00769b18  05 00 00 0a                                      beq #0x769b34
00769b1c  00 10 90 e5                                      ldr r1, [r0]
00769b20  01 10 41 e2                                      sub r1, r1, #1
00769b24  00 00 51 e3                                      cmp r1, #0
00769b28  00 10 80 e5                                      str r1, [r0]
00769b2c  00 00 00 1a                                      bne #0x769b34
00769b30  00 a4 ff eb                                      bl #0x752b38
00769b34  10 00 84 e2                                      add r0, r4, #0x10
00769b38  79 b5 00 eb                                      bl #0x797124
00769b3c  0c 00 84 e2                                      add r0, r4, #0xc
00769b40  7f ff ff eb                                      bl #0x769944
00769b44  20 30 9f e5                                      ldr r3, [pc, #0x20]
00769b48  04 00 a0 e1                                      mov r0, r4
00769b4c  03 30 95 e7                                      ldr r3, [r5, r3]
00769b50  08 30 83 e2                                      add r3, r3, #8
00769b54  00 30 84 e5                                      str r3, [r4]
00769b58  51 d0 ff eb                                      bl #0x75dca4
00769b5c  04 00 a0 e1                                      mov r0, r4
00769b60  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00769b64  e4 af 22 00 08 10 00 00 28 20 00 00              .byte 0xe4, 0xaf, 0x22, 0x00, 0x08, 0x10, 0x00, 0x00, 0x28, 0x20, 0x00, 0x00

; FUNCTION 0x00769b70, declared_size=212, range_size=212, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_objectD1Ev
; demangled: gameswf::as_object::~as_object()
; decoder-mode: arm
00769b70  70 40 2d e9                                      push {r4, r5, r6, lr}
00769b74  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
00769b78  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00769b7c  1c 60 90 e5                                      ldr r6, [r0, #0x1c]
00769b80  05 50 8f e0                                      add r5, pc, r5
00769b84  03 30 95 e7                                      ldr r3, [r5, r3]
00769b88  00 00 56 e3                                      cmp r6, #0
00769b8c  00 40 a0 e1                                      mov r4, r0
00769b90  08 30 83 e2                                      add r3, r3, #8
00769b94  00 30 80 e5                                      str r3, [r0]
00769b98  04 00 00 0a                                      beq #0x769bb0
00769b9c  06 00 a0 e1                                      mov r0, r6
00769ba0  92 ff ff eb                                      bl #0x7699f0
00769ba4  06 00 a0 e1                                      mov r0, r6
00769ba8  00 10 a0 e3                                      mov r1, #0
00769bac  e1 a3 ff eb                                      bl #0x752b38
00769bb0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00769bb4  00 00 50 e3                                      cmp r0, #0
00769bb8  05 00 00 0a                                      beq #0x769bd4
00769bbc  00 10 90 e5                                      ldr r1, [r0]
00769bc0  01 10 41 e2                                      sub r1, r1, #1
00769bc4  00 00 51 e3                                      cmp r1, #0
00769bc8  00 10 80 e5                                      str r1, [r0]
00769bcc  00 00 00 1a                                      bne #0x769bd4
00769bd0  d8 a3 ff eb                                      bl #0x752b38
00769bd4  28 00 94 e5                                      ldr r0, [r4, #0x28]
00769bd8  00 00 50 e3                                      cmp r0, #0
00769bdc  00 00 00 0a                                      beq #0x769be4
00769be0  96 c1 ff eb                                      bl #0x75a240
00769be4  20 00 94 e5                                      ldr r0, [r4, #0x20]
00769be8  00 00 50 e3                                      cmp r0, #0
00769bec  05 00 00 0a                                      beq #0x769c08
00769bf0  00 10 90 e5                                      ldr r1, [r0]
00769bf4  01 10 41 e2                                      sub r1, r1, #1
00769bf8  00 00 51 e3                                      cmp r1, #0
00769bfc  00 10 80 e5                                      str r1, [r0]
00769c00  00 00 00 1a                                      bne #0x769c08
00769c04  cb a3 ff eb                                      bl #0x752b38
00769c08  10 00 84 e2                                      add r0, r4, #0x10
00769c0c  44 b5 00 eb                                      bl #0x797124
00769c10  0c 00 84 e2                                      add r0, r4, #0xc
00769c14  4a ff ff eb                                      bl #0x769944
00769c18  20 30 9f e5                                      ldr r3, [pc, #0x20]
00769c1c  04 00 a0 e1                                      mov r0, r4
00769c20  03 30 95 e7                                      ldr r3, [r5, r3]
00769c24  08 30 83 e2                                      add r3, r3, #8
00769c28  00 30 84 e5                                      str r3, [r4]
00769c2c  1c d0 ff eb                                      bl #0x75dca4
00769c30  04 00 a0 e1                                      mov r0, r4
00769c34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00769c38  10 af 22 00 08 10 00 00 28 20 00 00              .byte 0x10, 0xaf, 0x22, 0x00, 0x08, 0x10, 0x00, 0x00, 0x28, 0x20, 0x00, 0x00

; FUNCTION 0x00769c44, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_objectD0Ev
; demangled: gameswf::as_object::~as_object()
; decoder-mode: arm
00769c44  10 40 2d e9                                      push {r4, lr}
00769c48  00 40 a0 e1                                      mov r4, r0
00769c4c  c7 ff ff eb                                      bl #0x769b70
00769c50  04 00 a0 e1                                      mov r0, r4
00769c54  95 91 ee eb                                      bl #0x30e2b0
00769c58  04 00 a0 e1                                      mov r0, r4
00769c5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00769c60, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object4dumpEv
; demangled: gameswf::as_object::dump()
; decoder-mode: arm
00769c60  30 40 2d e9                                      push {r4, r5, lr}
00769c64  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
00769c68  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
00769c6c  1c d0 4d e2                                      sub sp, sp, #0x1c
00769c70  04 40 8f e0                                      add r4, pc, r4
00769c74  05 20 94 e7                                      ldr r2, [r4, r5]
00769c78  10 30 9d e5                                      ldr r3, [sp, #0x10]
00769c7c  00 10 e0 e3                                      mvn r1, #0
00769c80  00 c0 92 e5                                      ldr ip, [r2]
00769c84  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
00769c88  00 20 a0 e3                                      mov r2, #0
00769c8c  23 1c a0 e1                                      lsr r1, r3, #0x18
00769c90  12 10 c0 e7                                      bfi r1, r2, #0, #1
00769c94  14 c0 8d e5                                      str ip, [sp, #0x14]
00769c98  01 c0 a0 e3                                      mov ip, #1
00769c9c  10 30 8d e5                                      str r3, [sp, #0x10]
00769ca0  00 c0 cd e5                                      strb ip, [sp]
00769ca4  13 10 cd e5                                      strb r1, [sp, #0x13]
00769ca8  01 20 cd e5                                      strb r2, [sp, #1]
00769cac  00 30 90 e5                                      ldr r3, [r0]
00769cb0  0d 10 a0 e1                                      mov r1, sp
00769cb4  0f e0 a0 e1                                      mov lr, pc
00769cb8  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00769cbc  d0 30 dd e1                                      ldrsb r3, [sp]
00769cc0  01 00 73 e3                                      cmn r3, #1
00769cc4  06 00 00 0a                                      beq #0x769ce4
00769cc8  05 30 94 e7                                      ldr r3, [r4, r5]
00769ccc  14 20 9d e5                                      ldr r2, [sp, #0x14]
00769cd0  00 30 93 e5                                      ldr r3, [r3]
00769cd4  03 00 52 e1                                      cmp r2, r3
00769cd8  05 00 00 1a                                      bne #0x769cf4
00769cdc  1c d0 8d e2                                      add sp, sp, #0x1c
00769ce0  30 80 bd e8                                      pop {r4, r5, pc}
00769ce4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00769ce8  08 10 9d e5                                      ldr r1, [sp, #8]
00769cec  91 a3 ff eb                                      bl #0x752b38
00769cf0  f4 ff ff ea                                      b #0x769cc8
00769cf4  85 91 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00769cf8  20 ae 22 00 ac 40 00 00                          .byte 0x20, 0xae, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00769db0, declared_size=608, range_size=608, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object10clear_refsEPNS_4hashIPS0_bNS_15fixed_size_hashIS2_EEEES2_
; demangled: gameswf::as_object::clear_refs(gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >*, gameswf::as_object*)
; decoder-mode: arm
00769db0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00769db4  1c d0 4d e2                                      sub sp, sp, #0x1c
00769db8  18 30 8d e2                                      add r3, sp, #0x18
00769dbc  08 00 23 e5                                      str r0, [r3, #-8]!
00769dc0  01 60 a0 e1                                      mov r6, r1
00769dc4  00 a0 a0 e1                                      mov sl, r0
00769dc8  03 10 a0 e1                                      mov r1, r3
00769dcc  06 00 a0 e1                                      mov r0, r6
00769dd0  02 50 a0 e1                                      mov r5, r2
00769dd4  6b fb ff eb                                      bl #0x768b88
00769dd8  00 00 50 e3                                      cmp r0, #0
00769ddc  01 00 00 ba                                      blt #0x769de8
00769de0  1c d0 8d e2                                      add sp, sp, #0x1c
00769de4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00769de8  17 20 8d e2                                      add r2, sp, #0x17
00769dec  01 30 a0 e3                                      mov r3, #1
00769df0  06 00 a0 e1                                      mov r0, r6
00769df4  0c 10 8d e2                                      add r1, sp, #0xc
00769df8  17 30 cd e5                                      strb r3, [sp, #0x17]
00769dfc  0c a0 8d e5                                      str sl, [sp, #0xc]
00769e00  be fe ff eb                                      bl #0x769900
00769e04  0c 20 9a e5                                      ldr r2, [sl, #0xc]
00769e08  00 40 a0 e3                                      mov r4, #0
00769e0c  00 40 cd e5                                      strb r4, [sp]
00769e10  04 00 52 e1                                      cmp r2, r4
00769e14  01 40 cd e5                                      strb r4, [sp, #1]
00769e18  04 00 00 0a                                      beq #0x769e30
00769e1c  04 10 92 e5                                      ldr r1, [r2, #4]
00769e20  04 00 51 e1                                      cmp r1, r4
00769e24  12 00 00 aa                                      bge #0x769e74
00769e28  0c 80 9a e2                                      adds r8, sl, #0xc
00769e2c  32 00 00 1a                                      bne #0x769efc
00769e30  28 30 9a e5                                      ldr r3, [sl, #0x28]
00769e34  00 00 53 e3                                      cmp r3, #0
00769e38  07 00 00 0a                                      beq #0x769e5c
00769e3c  03 00 55 e1                                      cmp r5, r3
00769e40  24 00 00 0a                                      beq #0x769ed8
00769e44  03 00 a0 e1                                      mov r0, r3
00769e48  06 10 a0 e1                                      mov r1, r6
00769e4c  00 30 93 e5                                      ldr r3, [r3]
00769e50  05 20 a0 e1                                      mov r2, r5
00769e54  0f e0 a0 e1                                      mov lr, pc
00769e58  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00769e5c  d1 31 da e1                                      ldrsb r3, [sl, #0x11]
00769e60  05 00 53 e3                                      cmp r3, #5
00769e64  0f 00 00 0a                                      beq #0x769ea8
00769e68  0d 00 a0 e1                                      mov r0, sp
00769e6c  ac b4 00 eb                                      bl #0x797124
00769e70  da ff ff ea                                      b #0x769de0
00769e74  08 30 a0 e3                                      mov r3, #8
00769e78  03 00 92 e7                                      ldr r0, [r2, r3]
00769e7c  03 c0 82 e0                                      add ip, r2, r3
00769e80  28 30 83 e2                                      add r3, r3, #0x28
00769e84  02 00 70 e3                                      cmn r0, #2
00769e88  02 00 00 0a                                      beq #0x769e98
00769e8c  04 00 9c e5                                      ldr r0, [ip, #4]
00769e90  01 00 70 e3                                      cmn r0, #1
00769e94  e3 ff ff 1a                                      bne #0x769e28
00769e98  01 40 84 e2                                      add r4, r4, #1
00769e9c  04 00 51 e1                                      cmp r1, r4
00769ea0  f4 ff ff aa                                      bge #0x769e78
00769ea4  df ff ff ea                                      b #0x769e28
00769ea8  14 30 9a e5                                      ldr r3, [sl, #0x14]
00769eac  00 00 53 e3                                      cmp r3, #0
00769eb0  ec ff ff 0a                                      beq #0x769e68
00769eb4  03 00 55 e1                                      cmp r5, r3
00769eb8  0a 00 00 0a                                      beq #0x769ee8
00769ebc  03 00 a0 e1                                      mov r0, r3
00769ec0  06 10 a0 e1                                      mov r1, r6
00769ec4  05 20 a0 e1                                      mov r2, r5
00769ec8  00 30 93 e5                                      ldr r3, [r3]
00769ecc  0f e0 a0 e1                                      mov lr, pc
00769ed0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00769ed4  e3 ff ff ea                                      b #0x769e68
00769ed8  28 00 8a e2                                      add r0, sl, #0x28
00769edc  00 10 a0 e3                                      mov r1, #0
00769ee0  78 fb ff eb                                      bl #0x768cc8
00769ee4  dc ff ff ea                                      b #0x769e5c
00769ee8  10 00 8a e2                                      add r0, sl, #0x10
00769eec  8c b4 00 eb                                      bl #0x797124
00769ef0  00 30 a0 e3                                      mov r3, #0
00769ef4  11 30 ca e5                                      strb r3, [sl, #0x11]
00769ef8  da ff ff ea                                      b #0x769e68
00769efc  00 b0 98 e5                                      ldr fp, [r8]
00769f00  00 90 a0 e3                                      mov sb, #0
00769f04  02 00 00 ea                                      b #0x769f14
00769f08  04 20 91 e5                                      ldr r2, [r1, #4]
00769f0c  01 00 72 e3                                      cmn r2, #1
00769f10  24 00 00 0a                                      beq #0x769fa8
00769f14  04 71 84 e0                                      add r7, r4, r4, lsl #2
00769f18  01 70 87 e2                                      add r7, r7, #1
00769f1c  87 71 a0 e1                                      lsl r7, r7, #3
00769f20  00 00 5b e3                                      cmp fp, #0
00769f24  c1 ff ff 0a                                      beq #0x769e30
00769f28  04 30 9b e5                                      ldr r3, [fp, #4]
00769f2c  03 00 54 e1                                      cmp r4, r3
00769f30  be ff ff ca                                      bgt #0x769e30
00769f34  07 b0 8b e0                                      add fp, fp, r7
00769f38  dd 31 db e1                                      ldrsb r3, [fp, #0x1d]
00769f3c  05 00 53 e3                                      cmp r3, #5
00769f40  1c 00 00 0a                                      beq #0x769fb8
00769f44  1c 00 8b e2                                      add r0, fp, #0x1c
00769f48  da b2 00 eb                                      bl #0x796ab8
00769f4c  00 00 50 e3                                      cmp r0, #0
00769f50  05 00 00 0a                                      beq #0x769f6c
00769f54  00 00 98 e5                                      ldr r0, [r8]
00769f58  07 00 80 e0                                      add r0, r0, r7
00769f5c  1c 00 80 e2                                      add r0, r0, #0x1c
00769f60  d9 b2 00 eb                                      bl #0x796acc
00769f64  00 00 55 e1                                      cmp r5, r0
00769f68  22 00 00 0a                                      beq #0x769ff8
00769f6c  00 b0 98 e5                                      ldr fp, [r8]
00769f70  04 00 9b e5                                      ldr r0, [fp, #4]
00769f74  04 00 50 e1                                      cmp r0, r4
00769f78  e8 ff ff ba                                      blt #0x769f20
00769f7c  01 40 84 e2                                      add r4, r4, #1
00769f80  04 00 50 e1                                      cmp r0, r4
00769f84  e2 ff ff ba                                      blt #0x769f14
00769f88  04 31 84 e0                                      add r3, r4, r4, lsl #2
00769f8c  01 30 83 e2                                      add r3, r3, #1
00769f90  83 31 a0 e1                                      lsl r3, r3, #3
00769f94  03 20 9b e7                                      ldr r2, [fp, r3]
00769f98  03 10 8b e0                                      add r1, fp, r3
00769f9c  28 30 83 e2                                      add r3, r3, #0x28
00769fa0  02 00 72 e3                                      cmn r2, #2
00769fa4  d7 ff ff 1a                                      bne #0x769f08
00769fa8  01 40 84 e2                                      add r4, r4, #1
00769fac  04 00 50 e1                                      cmp r0, r4
00769fb0  d7 ff ff ba                                      blt #0x769f14
00769fb4  f6 ff ff ea                                      b #0x769f94
00769fb8  20 30 9b e5                                      ldr r3, [fp, #0x20]
00769fbc  00 00 53 e3                                      cmp r3, #0
00769fc0  df ff ff 0a                                      beq #0x769f44
00769fc4  03 00 55 e1                                      cmp r5, r3
00769fc8  06 00 00 0a                                      beq #0x769fe8
00769fcc  03 00 a0 e1                                      mov r0, r3
00769fd0  06 10 a0 e1                                      mov r1, r6
00769fd4  00 30 93 e5                                      ldr r3, [r3]
00769fd8  05 20 a0 e1                                      mov r2, r5
00769fdc  0f e0 a0 e1                                      mov lr, pc
00769fe0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00769fe4  e0 ff ff ea                                      b #0x769f6c
00769fe8  1c 00 8b e2                                      add r0, fp, #0x1c
00769fec  4c b4 00 eb                                      bl #0x797124
00769ff0  1d 90 cb e5                                      strb sb, [fp, #0x1d]
00769ff4  dc ff ff ea                                      b #0x769f6c
00769ff8  00 00 98 e5                                      ldr r0, [r8]
00769ffc  00 10 a0 e3                                      mov r1, #0
0076a000  07 00 80 e0                                      add r0, r0, r7
0076a004  1c 00 80 e2                                      add r0, r0, #0x1c
0076a008  fb b2 00 eb                                      bl #0x796bfc
0076a00c  d6 ff ff ea                                      b #0x769f6c

; FUNCTION 0x0076a8a8, declared_size=1016, range_size=1016, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object4dumpERNS_9tu_stringE
; demangled: gameswf::as_object::dump(gameswf::tu_string&)
; decoder-mode: arm
0076a8a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076a8ac  d0 40 d1 e1                                      ldrsb r4, [r1]
0076a8b0  1c d0 4d e2                                      sub sp, sp, #0x1c
0076a8b4  04 00 8d e5                                      str r0, [sp, #4]
0076a8b8  01 00 74 e3                                      cmn r4, #1
0076a8bc  04 40 91 05                                      ldreq r4, [r1, #4]
0076a8c0  01 60 a0 e1                                      mov r6, r1
0076a8c4  01 00 a0 e1                                      mov r0, r1
0076a8c8  01 40 44 e2                                      sub r4, r4, #1
0076a8cc  02 10 84 e2                                      add r1, r4, #2
0076a8d0  0f 9d ff eb                                      bl #0x751d14
0076a8d4  d0 30 d6 e1                                      ldrsb r3, [r6]
0076a8d8  20 20 a0 e3                                      mov r2, #0x20
0076a8dc  01 00 73 e3                                      cmn r3, #1
0076a8e0  0c 10 96 05                                      ldreq r1, [r6, #0xc]
0076a8e4  01 10 86 12                                      addne r1, r6, #1
0076a8e8  04 30 81 e0                                      add r3, r1, r4
0076a8ec  04 20 c1 e7                                      strb r2, [r1, r4]
0076a8f0  02 00 83 e2                                      add r0, r3, #2
0076a8f4  01 20 c3 e5                                      strb r2, [r3, #1]
0076a8f8  00 30 a0 e3                                      mov r3, #0
0076a8fc  00 30 c0 e5                                      strb r3, [r0]
0076a900  10 30 96 e5                                      ldr r3, [r6, #0x10]
0076a904  d0 20 d6 e1                                      ldrsb r2, [r6]
0076a908  00 10 e0 e3                                      mvn r1, #0
0076a90c  74 03 9f e5                                      ldr r0, [pc, #0x374]
0076a910  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
0076a914  01 00 52 e1                                      cmp r2, r1
0076a918  10 30 86 e5                                      str r3, [r6, #0x10]
0076a91c  01 10 86 12                                      addne r1, r6, #1
0076a920  0c 10 96 05                                      ldreq r1, [r6, #0xc]
0076a924  04 20 9d e5                                      ldr r2, [sp, #4]
0076a928  00 00 8f e0                                      add r0, pc, r0
0076a92c  54 8d ee eb                                      bl #0x30de84
0076a930  04 20 9d e5                                      ldr r2, [sp, #4]
0076a934  0c 80 92 e5                                      ldr r8, [r2, #0xc]
0076a938  00 00 58 e3                                      cmp r8, #0
0076a93c  06 00 00 0a                                      beq #0x76a95c
0076a940  04 30 98 e5                                      ldr r3, [r8, #4]
0076a944  00 00 53 e3                                      cmp r3, #0
0076a948  00 40 a0 b3                                      movlt r4, #0
0076a94c  14 00 00 aa                                      bge #0x76a9a4
0076a950  04 30 9d e5                                      ldr r3, [sp, #4]
0076a954  0c 50 93 e2                                      adds r5, r3, #0xc
0076a958  1f 00 00 1a                                      bne #0x76a9dc
0076a95c  04 20 9d e5                                      ldr r2, [sp, #4]
0076a960  28 30 92 e5                                      ldr r3, [r2, #0x28]
0076a964  00 00 53 e3                                      cmp r3, #0
0076a968  04 00 00 0a                                      beq #0x76a980
0076a96c  03 00 a0 e1                                      mov r0, r3
0076a970  06 10 a0 e1                                      mov r1, r6
0076a974  00 30 93 e5                                      ldr r3, [r3]
0076a978  0f e0 a0 e1                                      mov lr, pc
0076a97c  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0076a980  d0 10 d6 e1                                      ldrsb r1, [r6]
0076a984  06 00 a0 e1                                      mov r0, r6
0076a988  01 00 71 e3                                      cmn r1, #1
0076a98c  04 10 96 05                                      ldreq r1, [r6, #4]
0076a990  01 10 41 e2                                      sub r1, r1, #1
0076a994  02 10 41 e2                                      sub r1, r1, #2
0076a998  1c d0 8d e2                                      add sp, sp, #0x1c
0076a99c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076a9a0  db 9c ff ea                                      b #0x751d14
0076a9a4  08 20 a0 e3                                      mov r2, #8
0076a9a8  00 40 a0 e3                                      mov r4, #0
0076a9ac  02 10 98 e7                                      ldr r1, [r8, r2]
0076a9b0  02 00 88 e0                                      add r0, r8, r2
0076a9b4  02 00 71 e3                                      cmn r1, #2
0076a9b8  02 00 00 0a                                      beq #0x76a9c8
0076a9bc  04 10 90 e5                                      ldr r1, [r0, #4]
0076a9c0  01 00 71 e3                                      cmn r1, #1
0076a9c4  e1 ff ff 1a                                      bne #0x76a950
0076a9c8  01 40 84 e2                                      add r4, r4, #1
0076a9cc  03 00 54 e1                                      cmp r4, r3
0076a9d0  28 20 82 e2                                      add r2, r2, #0x28
0076a9d4  f4 ff ff da                                      ble #0x76a9ac
0076a9d8  dc ff ff ea                                      b #0x76a950
0076a9dc  a8 32 9f e5                                      ldr r3, [pc, #0x2a8]
0076a9e0  a8 b2 9f e5                                      ldr fp, [pc, #0x2a8]
0076a9e4  01 70 86 e2                                      add r7, r6, #1
0076a9e8  03 30 8f e0                                      add r3, pc, r3
0076a9ec  08 30 8d e5                                      str r3, [sp, #8]
0076a9f0  9c 32 9f e5                                      ldr r3, [pc, #0x29c]
0076a9f4  03 30 8f e0                                      add r3, pc, r3
0076a9f8  0c 30 8d e5                                      str r3, [sp, #0xc]
0076a9fc  94 32 9f e5                                      ldr r3, [pc, #0x294]
0076aa00  03 30 8f e0                                      add r3, pc, r3
0076aa04  14 30 8d e5                                      str r3, [sp, #0x14]
0076aa08  8c 32 9f e5                                      ldr r3, [pc, #0x28c]
0076aa0c  03 30 8f e0                                      add r3, pc, r3
0076aa10  10 30 8d e5                                      str r3, [sp, #0x10]
0076aa14  00 00 58 e3                                      cmp r8, #0
0076aa18  cf ff ff 0a                                      beq #0x76a95c
0076aa1c  04 30 98 e5                                      ldr r3, [r8, #4]
0076aa20  04 00 53 e1                                      cmp r3, r4
0076aa24  cc ff ff ba                                      blt #0x76a95c
0076aa28  04 a1 84 e0                                      add sl, r4, r4, lsl #2
0076aa2c  01 a0 8a e2                                      add sl, sl, #1
0076aa30  8a a1 a0 e1                                      lsl sl, sl, #3
0076aa34  0a 80 88 e0                                      add r8, r8, sl
0076aa38  dd 31 d8 e1                                      ldrsb r3, [r8, #0x1d]
0076aa3c  1c 00 88 e2                                      add r0, r8, #0x1c
0076aa40  06 00 53 e3                                      cmp r3, #6
0076aa44  8a 00 00 0a                                      beq #0x76ac74
0076aa48  4c b0 00 eb                                      bl #0x796b80
0076aa4c  00 00 50 e3                                      cmp r0, #0
0076aa50  51 00 00 0a                                      beq #0x76ab9c
0076aa54  1d 90 d8 e5                                      ldrb sb, [r8, #0x1d]
0076aa58  05 00 59 e3                                      cmp sb, #5
0076aa5c  25 00 00 0a                                      beq #0x76aaf8
0076aa60  79 30 af e6                                      sxtb r3, sb
0076aa64  d0 20 d6 e1                                      ldrsb r2, [r6]
0076aa68  01 00 72 e3                                      cmn r2, #1
0076aa6c  07 10 a0 11                                      movne r1, r7
0076aa70  7d 00 00 0a                                      beq #0x76ac6c
0076aa74  00 20 95 e5                                      ldr r2, [r5]
0076aa78  0a 20 82 e0                                      add r2, r2, sl
0076aa7c  d8 00 d2 e1                                      ldrsb r0, [r2, #8]
0076aa80  01 00 70 e3                                      cmn r0, #1
0076aa84  09 20 82 12                                      addne r2, r2, #9
0076aa88  14 20 92 05                                      ldreq r2, [r2, #0x14]
0076aa8c  05 00 53 e3                                      cmp r3, #5
0076aa90  00 30 a0 13                                      movne r3, #0
0076aa94  20 30 98 05                                      ldreq r3, [r8, #0x20]
0076aa98  14 00 9d e5                                      ldr r0, [sp, #0x14]
0076aa9c  f8 8c ee eb                                      bl #0x30de84
0076aaa0  00 80 95 e5                                      ldr r8, [r5]
0076aaa4  04 00 98 e5                                      ldr r0, [r8, #4]
0076aaa8  04 00 50 e1                                      cmp r0, r4
0076aaac  d8 ff ff ba                                      blt #0x76aa14
0076aab0  01 40 84 e2                                      add r4, r4, #1
0076aab4  04 00 50 e1                                      cmp r0, r4
0076aab8  d5 ff ff ba                                      blt #0x76aa14
0076aabc  04 31 84 e0                                      add r3, r4, r4, lsl #2
0076aac0  01 30 83 e2                                      add r3, r3, #1
0076aac4  83 31 a0 e1                                      lsl r3, r3, #3
0076aac8  03 20 98 e7                                      ldr r2, [r8, r3]
0076aacc  03 10 88 e0                                      add r1, r8, r3
0076aad0  02 00 72 e3                                      cmn r2, #2
0076aad4  02 00 00 0a                                      beq #0x76aae4
0076aad8  04 20 91 e5                                      ldr r2, [r1, #4]
0076aadc  01 00 72 e3                                      cmn r2, #1
0076aae0  cb ff ff 1a                                      bne #0x76aa14
0076aae4  01 40 84 e2                                      add r4, r4, #1
0076aae8  04 00 50 e1                                      cmp r0, r4
0076aaec  28 30 83 e2                                      add r3, r3, #0x28
0076aaf0  f4 ff ff aa                                      bge #0x76aac8
0076aaf4  c6 ff ff ea                                      b #0x76aa14
0076aaf8  20 30 98 e5                                      ldr r3, [r8, #0x20]
0076aafc  00 00 53 e3                                      cmp r3, #0
0076ab00  0a 00 00 0a                                      beq #0x76ab30
0076ab04  03 00 a0 e1                                      mov r0, r3
0076ab08  06 10 a0 e3                                      mov r1, #6
0076ab0c  00 30 93 e5                                      ldr r3, [r3]
0076ab10  0f e0 a0 e1                                      mov lr, pc
0076ab14  08 f0 93 e5                                      ldr pc, [r3, #8]
0076ab18  00 00 50 e3                                      cmp r0, #0
0076ab1c  33 00 00 1a                                      bne #0x76abf0
0076ab20  dd 31 d8 e1                                      ldrsb r3, [r8, #0x1d]
0076ab24  05 00 53 e3                                      cmp r3, #5
0076ab28  20 30 98 05                                      ldreq r3, [r8, #0x20]
0076ab2c  cc ff ff 1a                                      bne #0x76aa64
0076ab30  00 00 53 e3                                      cmp r3, #0
0076ab34  c9 ff ff 0a                                      beq #0x76aa60
0076ab38  03 00 a0 e1                                      mov r0, r3
0076ab3c  07 10 a0 e3                                      mov r1, #7
0076ab40  00 30 93 e5                                      ldr r3, [r3]
0076ab44  0f e0 a0 e1                                      mov lr, pc
0076ab48  08 f0 93 e5                                      ldr pc, [r3, #8]
0076ab4c  00 00 50 e3                                      cmp r0, #0
0076ab50  dd 31 d8 01                                      ldrsbeq r3, [r8, #0x1d]
0076ab54  c2 ff ff 0a                                      beq #0x76aa64
0076ab58  00 20 95 e5                                      ldr r2, [r5]
0076ab5c  d0 30 d6 e1                                      ldrsb r3, [r6]
0076ab60  10 00 9d e5                                      ldr r0, [sp, #0x10]
0076ab64  0a 20 82 e0                                      add r2, r2, sl
0076ab68  01 00 73 e3                                      cmn r3, #1
0076ab6c  d8 30 d2 e1                                      ldrsb r3, [r2, #8]
0076ab70  07 10 a0 11                                      movne r1, r7
0076ab74  0c 10 96 05                                      ldreq r1, [r6, #0xc]
0076ab78  01 00 73 e3                                      cmn r3, #1
0076ab7c  dd 31 d8 e1                                      ldrsb r3, [r8, #0x1d]
0076ab80  09 20 82 12                                      addne r2, r2, #9
0076ab84  14 20 92 05                                      ldreq r2, [r2, #0x14]
0076ab88  05 00 53 e3                                      cmp r3, #5
0076ab8c  00 30 a0 13                                      movne r3, #0
0076ab90  20 30 98 05                                      ldreq r3, [r8, #0x20]
0076ab94  ba 8c ee eb                                      bl #0x30de84
0076ab98  c0 ff ff ea                                      b #0x76aaa0
0076ab9c  dd 31 d8 e1                                      ldrsb r3, [r8, #0x1d]
0076aba0  05 00 53 e3                                      cmp r3, #5
0076aba4  22 00 00 0a                                      beq #0x76ac34
0076aba8  00 00 95 e5                                      ldr r0, [r5]
0076abac  d0 30 d6 e1                                      ldrsb r3, [r6]
0076abb0  0a 00 80 e0                                      add r0, r0, sl
0076abb4  01 00 73 e3                                      cmn r3, #1
0076abb8  d8 30 d0 e1                                      ldrsb r3, [r0, #8]
0076abbc  0c 90 96 05                                      ldreq sb, [r6, #0xc]
0076abc0  07 90 a0 11                                      movne sb, r7
0076abc4  01 00 73 e3                                      cmn r3, #1
0076abc8  09 80 80 12                                      addne r8, r0, #9
0076abcc  14 80 90 05                                      ldreq r8, [r0, #0x14]
0076abd0  1c 00 80 e2                                      add r0, r0, #0x1c
0076abd4  f6 b0 00 eb                                      bl #0x796fb4
0076abd8  09 10 a0 e1                                      mov r1, sb
0076abdc  00 30 a0 e1                                      mov r3, r0
0076abe0  08 20 a0 e1                                      mov r2, r8
0076abe4  08 00 9d e5                                      ldr r0, [sp, #8]
0076abe8  a5 8c ee eb                                      bl #0x30de84
0076abec  ab ff ff ea                                      b #0x76aaa0
0076abf0  00 20 95 e5                                      ldr r2, [r5]
0076abf4  d0 30 d6 e1                                      ldrsb r3, [r6]
0076abf8  0b 00 8f e0                                      add r0, pc, fp
0076abfc  0a a0 82 e0                                      add sl, r2, sl
0076ac00  01 00 73 e3                                      cmn r3, #1
0076ac04  d8 30 da e1                                      ldrsb r3, [sl, #8]
0076ac08  07 10 a0 11                                      movne r1, r7
0076ac0c  0c 10 96 05                                      ldreq r1, [r6, #0xc]
0076ac10  01 00 73 e3                                      cmn r3, #1
0076ac14  dd 31 d8 e1                                      ldrsb r3, [r8, #0x1d]
0076ac18  09 20 8a 12                                      addne r2, sl, #9
0076ac1c  14 20 9a 05                                      ldreq r2, [sl, #0x14]
0076ac20  05 00 53 e3                                      cmp r3, #5
0076ac24  00 30 a0 13                                      movne r3, #0
0076ac28  20 30 98 05                                      ldreq r3, [r8, #0x20]
0076ac2c  94 8c ee eb                                      bl #0x30de84
0076ac30  9a ff ff ea                                      b #0x76aaa0
0076ac34  00 20 95 e5                                      ldr r2, [r5]
0076ac38  d0 30 d6 e1                                      ldrsb r3, [r6]
0076ac3c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0076ac40  0a a0 82 e0                                      add sl, r2, sl
0076ac44  01 00 73 e3                                      cmn r3, #1
0076ac48  d8 30 da e1                                      ldrsb r3, [sl, #8]
0076ac4c  07 10 a0 11                                      movne r1, r7
0076ac50  0c 10 96 05                                      ldreq r1, [r6, #0xc]
0076ac54  01 00 73 e3                                      cmn r3, #1
0076ac58  09 20 8a 12                                      addne r2, sl, #9
0076ac5c  14 20 9a 05                                      ldreq r2, [sl, #0x14]
0076ac60  20 30 98 e5                                      ldr r3, [r8, #0x20]
0076ac64  86 8c ee eb                                      bl #0x30de84
0076ac68  8c ff ff ea                                      b #0x76aaa0
0076ac6c  0c 10 96 e5                                      ldr r1, [r6, #0xc]
0076ac70  7f ff ff ea                                      b #0x76aa74
0076ac74  00 90 a0 e1                                      mov sb, r0
0076ac78  8e af 00 eb                                      bl #0x796ab8
0076ac7c  09 00 a0 e1                                      mov r0, sb
0076ac80  91 af 00 eb                                      bl #0x796acc
0076ac84  9f 8c ee eb                                      bl #0x30df08
; mapping-symbol data/literal pool
0076ac88  50 e6 19 00 20 e6 19 00 98 e3 19 00 fc e5 19 00  .byte 0x50, 0xe6, 0x19, 0x00, 0x20, 0xe6, 0x19, 0x00, 0x98, 0xe3, 0x19, 0x00, 0xfc, 0xe5, 0x19, 0x00
0076ac98  d0 e5 19 00 a4 e5 19 00                          .byte 0xd0, 0xe5, 0x19, 0x00, 0xa4, 0xe5, 0x19, 0x00

; FUNCTION 0x0076aca0, declared_size=260, range_size=260, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object9enumerateEPNS_14as_environmentE
; demangled: gameswf::as_object::enumerate(gameswf::as_environment*)
; decoder-mode: arm
0076aca0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0076aca4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0076aca8  01 70 a0 e1                                      mov r7, r1
0076acac  00 00 53 e3                                      cmp r3, #0
0076acb0  06 00 00 0a                                      beq #0x76acd0
0076acb4  04 10 93 e5                                      ldr r1, [r3, #4]
0076acb8  00 00 51 e3                                      cmp r1, #0
0076acbc  00 40 a0 b3                                      movlt r4, #0
0076acc0  29 00 00 aa                                      bge #0x76ad6c
0076acc4  0c 60 90 e2                                      adds r6, r0, #0xc
0076acc8  00 20 96 15                                      ldrne r2, [r6]
0076accc  18 00 00 1a                                      bne #0x76ad34
0076acd0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076acd4  1c 30 d1 e5                                      ldrb r3, [r1, #0x1c]
0076acd8  01 00 13 e3                                      tst r3, #1
0076acdc  06 00 00 1a                                      bne #0x76acfc
0076ace0  08 10 81 e2                                      add r1, r1, #8
0076ace4  07 00 a0 e1                                      mov r0, r7
0076ace8  01 f9 ff eb                                      bl #0x7690f4
0076acec  00 20 96 e5                                      ldr r2, [r6]
0076acf0  04 c0 92 e5                                      ldr ip, [r2, #4]
0076acf4  0c 00 54 e1                                      cmp r4, ip
0076acf8  10 00 00 ca                                      bgt #0x76ad40
0076acfc  01 40 84 e2                                      add r4, r4, #1
0076ad00  04 00 5c e1                                      cmp ip, r4
0076ad04  0a 00 00 ba                                      blt #0x76ad34
0076ad08  04 31 84 e0                                      add r3, r4, r4, lsl #2
0076ad0c  01 30 83 e2                                      add r3, r3, #1
0076ad10  83 31 a0 e1                                      lsl r3, r3, #3
0076ad14  03 10 92 e7                                      ldr r1, [r2, r3]
0076ad18  03 00 82 e0                                      add r0, r2, r3
0076ad1c  28 30 83 e2                                      add r3, r3, #0x28
0076ad20  02 00 71 e3                                      cmn r1, #2
0076ad24  0c 00 00 0a                                      beq #0x76ad5c
0076ad28  04 10 90 e5                                      ldr r1, [r0, #4]
0076ad2c  01 00 71 e3                                      cmn r1, #1
0076ad30  09 00 00 0a                                      beq #0x76ad5c
0076ad34  04 51 84 e0                                      add r5, r4, r4, lsl #2
0076ad38  01 50 85 e2                                      add r5, r5, #1
0076ad3c  85 51 a0 e1                                      lsl r5, r5, #3
0076ad40  00 00 52 e3                                      cmp r2, #0
0076ad44  05 10 82 e0                                      add r1, r2, r5
0076ad48  e0 ff ff 0a                                      beq #0x76acd0
0076ad4c  04 c0 92 e5                                      ldr ip, [r2, #4]
0076ad50  0c 00 54 e1                                      cmp r4, ip
0076ad54  de ff ff da                                      ble #0x76acd4
0076ad58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076ad5c  01 40 84 e2                                      add r4, r4, #1
0076ad60  0c 00 54 e1                                      cmp r4, ip
0076ad64  ea ff ff da                                      ble #0x76ad14
0076ad68  f1 ff ff ea                                      b #0x76ad34
0076ad6c  08 20 a0 e3                                      mov r2, #8
0076ad70  00 40 a0 e3                                      mov r4, #0
0076ad74  02 c0 93 e7                                      ldr ip, [r3, r2]
0076ad78  02 50 83 e0                                      add r5, r3, r2
0076ad7c  28 20 82 e2                                      add r2, r2, #0x28
0076ad80  02 00 7c e3                                      cmn ip, #2
0076ad84  02 00 00 0a                                      beq #0x76ad94
0076ad88  04 c0 95 e5                                      ldr ip, [r5, #4]
0076ad8c  01 00 7c e3                                      cmn ip, #1
0076ad90  cb ff ff 1a                                      bne #0x76acc4
0076ad94  01 40 84 e2                                      add r4, r4, #1
0076ad98  01 00 54 e1                                      cmp r4, r1
0076ad9c  f4 ff ff da                                      ble #0x76ad74
0076ada0  c7 ff ff ea                                      b #0x76acc4

; FUNCTION 0x0076aea0, declared_size=260, range_size=260, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object7copy_toEPS0_
; demangled: gameswf::as_object::copy_to(gameswf::as_object*)
; decoder-mode: arm
0076aea0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0076aea4  00 50 51 e2                                      subs r5, r1, #0
0076aea8  09 00 00 0a                                      beq #0x76aed4
0076aeac  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0076aeb0  00 00 52 e3                                      cmp r2, #0
0076aeb4  06 00 00 0a                                      beq #0x76aed4
0076aeb8  04 10 92 e5                                      ldr r1, [r2, #4]
0076aebc  00 00 51 e3                                      cmp r1, #0
0076aec0  00 40 a0 b3                                      movlt r4, #0
0076aec4  28 00 00 aa                                      bge #0x76af6c
0076aec8  0c 70 90 e2                                      adds r7, r0, #0xc
0076aecc  00 30 97 15                                      ldrne r3, [r7]
0076aed0  03 00 00 1a                                      bne #0x76aee4
0076aed4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076aed8  04 10 90 e5                                      ldr r1, [r0, #4]
0076aedc  01 00 71 e3                                      cmn r1, #1
0076aee0  1d 00 00 0a                                      beq #0x76af5c
0076aee4  04 61 84 e0                                      add r6, r4, r4, lsl #2
0076aee8  01 60 86 e2                                      add r6, r6, #1
0076aeec  86 61 a0 e1                                      lsl r6, r6, #3
0076aef0  06 10 83 e0                                      add r1, r3, r6
0076aef4  00 00 53 e3                                      cmp r3, #0
0076aef8  1c 20 81 e2                                      add r2, r1, #0x1c
0076aefc  05 00 a0 e1                                      mov r0, r5
0076af00  08 10 81 e2                                      add r1, r1, #8
0076af04  f2 ff ff 0a                                      beq #0x76aed4
0076af08  04 30 93 e5                                      ldr r3, [r3, #4]
0076af0c  03 00 54 e1                                      cmp r4, r3
0076af10  ef ff ff ca                                      bgt #0x76aed4
0076af14  00 30 95 e5                                      ldr r3, [r5]
0076af18  0f e0 a0 e1                                      mov lr, pc
0076af1c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0076af20  00 30 97 e5                                      ldr r3, [r7]
0076af24  04 c0 93 e5                                      ldr ip, [r3, #4]
0076af28  0c 00 54 e1                                      cmp r4, ip
0076af2c  ef ff ff ca                                      bgt #0x76aef0
0076af30  01 40 84 e2                                      add r4, r4, #1
0076af34  04 00 5c e1                                      cmp ip, r4
0076af38  e9 ff ff ba                                      blt #0x76aee4
0076af3c  04 21 84 e0                                      add r2, r4, r4, lsl #2
0076af40  01 20 82 e2                                      add r2, r2, #1
0076af44  82 21 a0 e1                                      lsl r2, r2, #3
0076af48  02 10 93 e7                                      ldr r1, [r3, r2]
0076af4c  02 00 83 e0                                      add r0, r3, r2
0076af50  28 20 82 e2                                      add r2, r2, #0x28
0076af54  02 00 71 e3                                      cmn r1, #2
0076af58  de ff ff 1a                                      bne #0x76aed8
0076af5c  01 40 84 e2                                      add r4, r4, #1
0076af60  04 00 5c e1                                      cmp ip, r4
0076af64  f7 ff ff aa                                      bge #0x76af48
0076af68  dd ff ff ea                                      b #0x76aee4
0076af6c  08 30 a0 e3                                      mov r3, #8
0076af70  00 40 a0 e3                                      mov r4, #0
0076af74  03 c0 92 e7                                      ldr ip, [r2, r3]
0076af78  03 60 82 e0                                      add r6, r2, r3
0076af7c  28 30 83 e2                                      add r3, r3, #0x28
0076af80  02 00 7c e3                                      cmn ip, #2
0076af84  02 00 00 0a                                      beq #0x76af94
0076af88  04 c0 96 e5                                      ldr ip, [r6, #4]
0076af8c  01 00 7c e3                                      cmn ip, #1
0076af90  cc ff ff 1a                                      bne #0x76aec8
0076af94  01 40 84 e2                                      add r4, r4, #1
0076af98  01 00 54 e1                                      cmp r4, r1
0076af9c  f4 ff ff da                                      ble #0x76af74
0076afa0  c8 ff ff ea                                      b #0x76aec8

; FUNCTION 0x0076b284, declared_size=472, range_size=472, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object11find_targetEPKc
; demangled: gameswf::as_object::find_target(char const*)
; decoder-mode: arm
0076b284  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0076b288  c4 41 9f e5                                      ldr r4, [pc, #0x1c4]
0076b28c  c4 61 9f e5                                      ldr r6, [pc, #0x1c4]
0076b290  d0 30 d1 e1                                      ldrsb r3, [r1]
0076b294  04 40 8f e0                                      add r4, pc, r4
0076b298  06 20 94 e7                                      ldr r2, [r4, r6]
0076b29c  3c d0 4d e2                                      sub sp, sp, #0x3c
0076b2a0  00 00 53 e3                                      cmp r3, #0
0076b2a4  00 20 92 e5                                      ldr r2, [r2]
0076b2a8  01 70 a0 e1                                      mov r7, r1
0076b2ac  00 50 a0 e1                                      mov r5, r0
0076b2b0  34 20 8d e5                                      str r2, [sp, #0x34]
0076b2b4  1d 00 00 0a                                      beq #0x76b330
0076b2b8  2f 00 53 e3                                      cmp r3, #0x2f
0076b2bc  00 30 a0 e3                                      mov r3, #0
0076b2c0  01 30 cd e5                                      strb r3, [sp, #1]
0076b2c4  00 30 cd e5                                      strb r3, [sp]
0076b2c8  47 00 00 0a                                      beq #0x76b3ec
0076b2cc  01 00 a0 e1                                      mov r0, r1
0076b2d0  2f 10 a0 e3                                      mov r1, #0x2f
0076b2d4  53 8e ee eb                                      bl #0x30ec28
0076b2d8  00 80 50 e2                                      subs r8, r0, #0
0076b2dc  1b 00 00 0a                                      beq #0x76b350
0076b2e0  20 a0 8d e2                                      add sl, sp, #0x20
0076b2e4  07 10 a0 e1                                      mov r1, r7
0076b2e8  08 20 67 e0                                      rsb r2, r7, r8
0076b2ec  0a 00 a0 e1                                      mov r0, sl
0076b2f0  ef 9a ff eb                                      bl #0x751eb4
0076b2f4  00 30 95 e5                                      ldr r3, [r5]
0076b2f8  05 00 a0 e1                                      mov r0, r5
0076b2fc  0a 10 a0 e1                                      mov r1, sl
0076b300  0d 20 a0 e1                                      mov r2, sp
0076b304  0f e0 a0 e1                                      mov lr, pc
0076b308  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0076b30c  d1 30 dd e1                                      ldrsb r3, [sp, #1]
0076b310  0d 70 a0 e1                                      mov r7, sp
0076b314  05 00 53 e3                                      cmp r3, #5
0076b318  26 00 00 0a                                      beq #0x76b3b8
0076b31c  0a 00 a0 e1                                      mov r0, sl
0076b320  ec d2 f2 eb                                      bl #0x41fed8
0076b324  00 50 a0 e3                                      mov r5, #0
0076b328  0d 00 a0 e1                                      mov r0, sp
0076b32c  7c af 00 eb                                      bl #0x797124
0076b330  06 30 94 e7                                      ldr r3, [r4, r6]
0076b334  34 20 9d e5                                      ldr r2, [sp, #0x34]
0076b338  05 00 a0 e1                                      mov r0, r5
0076b33c  00 30 93 e5                                      ldr r3, [r3]
0076b340  03 00 52 e1                                      cmp r2, r3
0076b344  41 00 00 1a                                      bne #0x76b450
0076b348  3c d0 8d e2                                      add sp, sp, #0x3c
0076b34c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0076b350  07 00 a0 e1                                      mov r0, r7
0076b354  2e 10 a0 e3                                      mov r1, #0x2e
0076b358  32 8e ee eb                                      bl #0x30ec28
0076b35c  00 80 50 e2                                      subs r8, r0, #0
0076b360  02 00 00 0a                                      beq #0x76b370
0076b364  d1 30 d8 e1                                      ldrsb r3, [r8, #1]
0076b368  2e 00 53 e3                                      cmp r3, #0x2e
0076b36c  db ff ff 1a                                      bne #0x76b2e0
0076b370  0c 80 8d e2                                      add r8, sp, #0xc
0076b374  07 10 a0 e1                                      mov r1, r7
0076b378  08 00 a0 e1                                      mov r0, r8
0076b37c  be a1 f2 eb                                      bl #0x413a7c
0076b380  00 30 95 e5                                      ldr r3, [r5]
0076b384  05 00 a0 e1                                      mov r0, r5
0076b388  08 10 a0 e1                                      mov r1, r8
0076b38c  0d 20 a0 e1                                      mov r2, sp
0076b390  0f e0 a0 e1                                      mov lr, pc
0076b394  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0076b398  d1 30 dd e1                                      ldrsb r3, [sp, #1]
0076b39c  0d 70 a0 e1                                      mov r7, sp
0076b3a0  05 00 53 e3                                      cmp r3, #5
0076b3a4  00 50 a0 13                                      movne r5, #0
0076b3a8  04 50 9d 05                                      ldreq r5, [sp, #4]
0076b3ac  08 00 a0 e1                                      mov r0, r8
0076b3b0  c8 d2 f2 eb                                      bl #0x41fed8
0076b3b4  db ff ff ea                                      b #0x76b328
0076b3b8  04 00 9d e5                                      ldr r0, [sp, #4]
0076b3bc  00 00 50 e3                                      cmp r0, #0
0076b3c0  d5 ff ff 0a                                      beq #0x76b31c
0076b3c4  01 10 88 e2                                      add r1, r8, #1
0076b3c8  ad ff ff eb                                      bl #0x76b284
0076b3cc  d0 32 dd e1                                      ldrsb r3, [sp, #0x20]
0076b3d0  00 50 a0 e1                                      mov r5, r0
0076b3d4  01 00 73 e3                                      cmn r3, #1
0076b3d8  d2 ff ff 1a                                      bne #0x76b328
0076b3dc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0076b3e0  28 10 9d e5                                      ldr r1, [sp, #0x28]
0076b3e4  d3 9d ff eb                                      bl #0x752b38
0076b3e8  ce ff ff ea                                      b #0x76b328
0076b3ec  30 00 90 e5                                      ldr r0, [r0, #0x30]
0076b3f0  03 00 50 e1                                      cmp r0, r3
0076b3f4  03 00 00 0a                                      beq #0x76b408
0076b3f8  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
0076b3fc  04 20 d3 e5                                      ldrb r2, [r3, #4]
0076b400  00 00 52 e3                                      cmp r2, #0
0076b404  06 00 00 0a                                      beq #0x76b424
0076b408  69 08 00 eb                                      bl #0x76d5b4
0076b40c  50 23 00 eb                                      bl #0x774154
0076b410  01 10 87 e2                                      add r1, r7, #1
0076b414  9a ff ff eb                                      bl #0x76b284
0076b418  0d 70 a0 e1                                      mov r7, sp
0076b41c  00 50 a0 e1                                      mov r5, r0
0076b420  c0 ff ff ea                                      b #0x76b328
0076b424  00 10 93 e5                                      ldr r1, [r3]
0076b428  01 10 41 e2                                      sub r1, r1, #1
0076b42c  00 00 51 e3                                      cmp r1, #0
0076b430  00 10 83 e5                                      str r1, [r3]
0076b434  01 00 00 1a                                      bne #0x76b440
0076b438  03 00 a0 e1                                      mov r0, r3
0076b43c  bd 9d ff eb                                      bl #0x752b38
0076b440  00 00 a0 e3                                      mov r0, #0
0076b444  30 00 85 e5                                      str r0, [r5, #0x30]
0076b448  2c 00 85 e5                                      str r0, [r5, #0x2c]
0076b44c  ed ff ff ea                                      b #0x76b408
0076b450  ae 8b ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0076b454  fc 97 22 00 ac 40 00 00                          .byte 0xfc, 0x97, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0076b45c, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object11find_targetERKNS_8as_valueE
; demangled: gameswf::as_object::find_target(gameswf::as_value const&)
; decoder-mode: arm
0076b45c  10 40 2d e9                                      push {r4, lr}
0076b460  01 30 d1 e5                                      ldrb r3, [r1, #1]
0076b464  00 40 a0 e1                                      mov r4, r0
0076b468  03 20 43 e2                                      sub r2, r3, #3
0076b46c  72 20 ef e6                                      uxtb r2, r2
0076b470  01 00 52 e3                                      cmp r2, #1
0076b474  03 00 00 9a                                      bls #0x76b488
0076b478  05 00 53 e3                                      cmp r3, #5
0076b47c  00 00 a0 13                                      movne r0, #0
0076b480  04 00 91 05                                      ldreq r0, [r1, #4]
0076b484  10 80 bd e8                                      pop {r4, pc}
0076b488  01 00 a0 e1                                      mov r0, r1
0076b48c  7c d5 f2 eb                                      bl #0x420a84
0076b490  d0 30 d0 e1                                      ldrsb r3, [r0]
0076b494  01 00 73 e3                                      cmn r3, #1
0076b498  0c 10 90 05                                      ldreq r1, [r0, #0xc]
0076b49c  01 10 80 12                                      addne r1, r0, #1
0076b4a0  04 00 a0 e1                                      mov r0, r4
0076b4a4  10 40 bd e8                                      pop {r4, lr}
0076b4a8  75 ff ff ea                                      b #0x76b284

; FUNCTION 0x0076b4ac, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::as_object
; alias: _ZNK7gameswf9as_object8get_rootEv
; demangled: gameswf::as_object::get_root() const
; decoder-mode: arm
0076b4ac  10 40 2d e9                                      push {r4, lr}
0076b4b0  00 40 a0 e1                                      mov r4, r0
0076b4b4  30 00 90 e5                                      ldr r0, [r0, #0x30]
0076b4b8  00 00 50 e3                                      cmp r0, #0
0076b4bc  03 00 00 0a                                      beq #0x76b4d0
0076b4c0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0076b4c4  04 20 d3 e5                                      ldrb r2, [r3, #4]
0076b4c8  00 00 52 e3                                      cmp r2, #0
0076b4cc  01 00 00 0a                                      beq #0x76b4d8
0076b4d0  10 40 bd e8                                      pop {r4, lr}
0076b4d4  36 08 00 ea                                      b #0x76d5b4
0076b4d8  00 10 93 e5                                      ldr r1, [r3]
0076b4dc  01 10 41 e2                                      sub r1, r1, #1
0076b4e0  00 00 51 e3                                      cmp r1, #0
0076b4e4  00 10 83 e5                                      str r1, [r3]
0076b4e8  01 00 00 1a                                      bne #0x76b4f4
0076b4ec  03 00 a0 e1                                      mov r0, r3
0076b4f0  90 9d ff eb                                      bl #0x752b38
0076b4f4  00 00 a0 e3                                      mov r0, #0
0076b4f8  30 00 84 e5                                      str r0, [r4, #0x30]
0076b4fc  2c 00 84 e5                                      str r0, [r4, #0x2c]
0076b500  f2 ff ff ea                                      b #0x76b4d0

; FUNCTION 0x0076b504, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::as_object
; alias: _ZNK7gameswf9as_object10get_globalEv
; demangled: gameswf::as_object::get_global() const
; decoder-mode: arm
0076b504  10 40 2d e9                                      push {r4, lr}
0076b508  00 40 a0 e1                                      mov r4, r0
0076b50c  30 00 90 e5                                      ldr r0, [r0, #0x30]
0076b510  00 00 50 e3                                      cmp r0, #0
0076b514  03 00 00 0a                                      beq #0x76b528
0076b518  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0076b51c  04 20 d3 e5                                      ldrb r2, [r3, #4]
0076b520  00 00 52 e3                                      cmp r2, #0
0076b524  01 00 00 0a                                      beq #0x76b530
0076b528  10 40 bd e8                                      pop {r4, lr}
0076b52c  aa 04 00 ea                                      b #0x76c7dc
0076b530  00 10 93 e5                                      ldr r1, [r3]
0076b534  01 10 41 e2                                      sub r1, r1, #1
0076b538  00 00 51 e3                                      cmp r1, #0
0076b53c  00 10 83 e5                                      str r1, [r3]
0076b540  01 00 00 1a                                      bne #0x76b54c
0076b544  03 00 a0 e1                                      mov r0, r3
0076b548  7a 9d ff eb                                      bl #0x752b38
0076b54c  00 00 a0 e3                                      mov r0, #0
0076b550  30 00 84 e5                                      str r0, [r4, #0x30]
0076b554  2c 00 84 e5                                      str r0, [r4, #0x2c]
0076b558  f2 ff ff ea                                      b #0x76b528

; FUNCTION 0x0076b694, declared_size=396, range_size=396, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object8on_eventERKNS_8event_idE
; demangled: gameswf::as_object::on_event(gameswf::event_id const&)
; decoder-mode: arm
0076b694  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0076b698  00 80 a0 e1                                      mov r8, r0
0076b69c  a0 d0 4d e2                                      sub sp, sp, #0xa0
0076b6a0  01 00 a0 e1                                      mov r0, r1
0076b6a4  01 70 a0 e1                                      mov r7, r1
0076b6a8  12 3e 01 eb                                      bl #0x7baef8
0076b6ac  d0 30 d0 e1                                      ldrsb r3, [r0]
0076b6b0  01 00 73 e3                                      cmn r3, #1
0076b6b4  04 30 90 05                                      ldreq r3, [r0, #4]
0076b6b8  01 30 43 e2                                      sub r3, r3, #1
0076b6bc  00 00 53 e3                                      cmp r3, #0
0076b6c0  00 40 a0 d3                                      movle r4, #0
0076b6c4  47 00 00 da                                      ble #0x76b7e8
0076b6c8  00 30 a0 e3                                      mov r3, #0
0076b6cc  95 30 cd e5                                      strb r3, [sp, #0x95]
0076b6d0  94 30 cd e5                                      strb r3, [sp, #0x94]
0076b6d4  94 60 8d e2                                      add r6, sp, #0x94
0076b6d8  00 10 a0 e1                                      mov r1, r0
0076b6dc  00 30 98 e5                                      ldr r3, [r8]
0076b6e0  08 00 a0 e1                                      mov r0, r8
0076b6e4  06 20 a0 e1                                      mov r2, r6
0076b6e8  0f e0 a0 e1                                      mov lr, pc
0076b6ec  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0076b6f0  00 40 50 e2                                      subs r4, r0, #0
0076b6f4  39 00 00 0a                                      beq #0x76b7e0
0076b6f8  30 10 98 e5                                      ldr r1, [r8, #0x30]
0076b6fc  00 00 51 e3                                      cmp r1, #0
0076b700  03 00 00 0a                                      beq #0x76b714
0076b704  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
0076b708  04 30 d0 e5                                      ldrb r3, [r0, #4]
0076b70c  00 00 53 e3                                      cmp r3, #0
0076b710  37 00 00 0a                                      beq #0x76b7f4
0076b714  10 40 8d e2                                      add r4, sp, #0x10
0076b718  04 00 a0 e1                                      mov r0, r4
0076b71c  0a cd ff eb                                      bl #0x75eb4c
0076b720  04 30 97 e5                                      ldr r3, [r7, #4]
0076b724  00 00 53 e3                                      cmp r3, #0
0076b728  03 50 a0 01                                      moveq r5, r3
0076b72c  0f 00 00 0a                                      beq #0x76b770
0076b730  04 50 93 e5                                      ldr r5, [r3, #4]
0076b734  01 20 55 e2                                      subs r2, r5, #1
0076b738  0c 00 00 4a                                      bmi #0x76b770
0076b73c  0c 90 a0 e3                                      mov sb, #0xc
0076b740  99 02 09 e0                                      mul sb, sb, r2
0076b744  00 a0 a0 e3                                      mov sl, #0
0076b748  00 00 00 ea                                      b #0x76b750
0076b74c  04 30 97 e5                                      ldr r3, [r7, #4]
0076b750  00 10 93 e5                                      ldr r1, [r3]
0076b754  01 a0 8a e2                                      add sl, sl, #1
0076b758  04 00 a0 e1                                      mov r0, r4
0076b75c  09 10 81 e0                                      add r1, r1, sb
0076b760  4c f6 ff eb                                      bl #0x769098
0076b764  05 00 5a e1                                      cmp sl, r5
0076b768  0c 90 49 e2                                      sub sb, sb, #0xc
0076b76c  f6 ff ff 1a                                      bne #0x76b74c
0076b770  00 30 a0 e3                                      mov r3, #0
0076b774  08 00 a0 e1                                      mov r0, r8
0076b778  88 30 cd e5                                      strb r3, [sp, #0x88]
0076b77c  05 30 a0 e3                                      mov r3, #5
0076b780  89 30 cd e5                                      strb r3, [sp, #0x89]
0076b784  8c 80 8d e5                                      str r8, [sp, #0x8c]
0076b788  35 b9 ff eb                                      bl #0x759c64
0076b78c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0076b790  84 c0 9f e5                                      ldr ip, [pc, #0x84]
0076b794  7c 70 8d e2                                      add r7, sp, #0x7c
0076b798  88 80 8d e2                                      add r8, sp, #0x88
0076b79c  01 e0 4e e2                                      sub lr, lr, #1
0076b7a0  0c c0 8f e0                                      add ip, pc, ip
0076b7a4  04 20 a0 e1                                      mov r2, r4
0076b7a8  06 10 a0 e1                                      mov r1, r6
0076b7ac  08 30 a0 e1                                      mov r3, r8
0076b7b0  07 00 a0 e1                                      mov r0, r7
0076b7b4  04 e0 8d e5                                      str lr, [sp, #4]
0076b7b8  08 c0 8d e5                                      str ip, [sp, #8]
0076b7bc  00 50 8d e5                                      str r5, [sp]
0076b7c0  4f 3c 01 eb                                      bl #0x7ba904
0076b7c4  07 00 a0 e1                                      mov r0, r7
0076b7c8  55 ae 00 eb                                      bl #0x797124
0076b7cc  08 00 a0 e1                                      mov r0, r8
0076b7d0  53 ae 00 eb                                      bl #0x797124
0076b7d4  04 00 a0 e1                                      mov r0, r4
0076b7d8  17 ca ff eb                                      bl #0x75e03c
0076b7dc  01 40 a0 e3                                      mov r4, #1
0076b7e0  06 00 a0 e1                                      mov r0, r6
0076b7e4  4e ae 00 eb                                      bl #0x797124
0076b7e8  04 00 a0 e1                                      mov r0, r4
0076b7ec  a0 d0 8d e2                                      add sp, sp, #0xa0
0076b7f0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0076b7f4  00 10 90 e5                                      ldr r1, [r0]
0076b7f8  01 10 41 e2                                      sub r1, r1, #1
0076b7fc  00 00 51 e3                                      cmp r1, #0
0076b800  00 10 80 e5                                      str r1, [r0]
0076b804  00 00 00 1a                                      bne #0x76b80c
0076b808  ca 9c ff eb                                      bl #0x752b38
0076b80c  00 10 a0 e3                                      mov r1, #0
0076b810  2c 10 88 e5                                      str r1, [r8, #0x2c]
0076b814  30 10 88 e5                                      str r1, [r8, #0x30]
0076b818  bd ff ff ea                                      b #0x76b714
; mapping-symbol data/literal pool
0076b81c  98 1e 16 00                                      .byte 0x98, 0x1e, 0x16, 0x00

; FUNCTION 0x0076b820, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_objectC1EPNS_6playerE
; demangled: gameswf::as_object::as_object(gameswf::player*)
; decoder-mode: arm
0076b820  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0076b824  7c 60 9f e5                                      ldr r6, [pc, #0x7c]
0076b828  0c d0 4d e2                                      sub sp, sp, #0xc
0076b82c  00 40 a0 e1                                      mov r4, r0
0076b830  01 70 a0 e1                                      mov r7, r1
0076b834  f2 b8 ff eb                                      bl #0x759c04
0076b838  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0076b83c  06 60 8f e0                                      add r6, pc, r6
0076b840  00 50 a0 e3                                      mov r5, #0
0076b844  03 30 96 e7                                      ldr r3, [r6, r3]
0076b848  0c 50 84 e5                                      str r5, [r4, #0xc]
0076b84c  10 50 c4 e5                                      strb r5, [r4, #0x10]
0076b850  08 30 83 e2                                      add r3, r3, #8
0076b854  00 30 84 e5                                      str r3, [r4]
0076b858  11 50 c4 e5                                      strb r5, [r4, #0x11]
0076b85c  1c 50 84 e5                                      str r5, [r4, #0x1c]
0076b860  20 50 84 e5                                      str r5, [r4, #0x20]
0076b864  24 50 84 e5                                      str r5, [r4, #0x24]
0076b868  28 50 84 e5                                      str r5, [r4, #0x28]
0076b86c  2c 50 84 e5                                      str r5, [r4, #0x2c]
0076b870  30 50 84 e5                                      str r5, [r4, #0x30]
0076b874  2c 00 84 e2                                      add r0, r4, #0x2c
0076b878  07 10 a0 e1                                      mov r1, r7
0076b87c  4a cc ff eb                                      bl #0x75e9ac
0076b880  05 00 57 e1                                      cmp r7, r5
0076b884  34 50 84 e5                                      str r5, [r4, #0x34]
0076b888  03 00 00 0a                                      beq #0x76b89c
0076b88c  08 10 8d e2                                      add r1, sp, #8
0076b890  04 40 21 e5                                      str r4, [r1, #-4]!
0076b894  0c 00 87 e2                                      add r0, r7, #0xc
0076b898  4a 3c f3 eb                                      bl #0x43a9c8
0076b89c  04 00 a0 e1                                      mov r0, r4
0076b8a0  0c d0 8d e2                                      add sp, sp, #0xc
0076b8a4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0076b8a8  54 92 22 00 08 10 00 00                          .byte 0x54, 0x92, 0x22, 0x00, 0x08, 0x10, 0x00, 0x00

; FUNCTION 0x0076b8b0, declared_size=952, range_size=952, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object12create_protoERKNS_8as_valueE
; demangled: gameswf::as_object::create_proto(gameswf::as_value const&)
; decoder-mode: arm
0076b8b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076b8b4  a0 23 9f e5                                      ldr r2, [pc, #0x3a0]
0076b8b8  a0 33 9f e5                                      ldr r3, [pc, #0x3a0]
0076b8bc  54 d0 4d e2                                      sub sp, sp, #0x54
0076b8c0  02 20 8f e0                                      add r2, pc, r2
0076b8c4  08 30 8d e5                                      str r3, [sp, #8]
0076b8c8  03 30 92 e7                                      ldr r3, [r2, r3]
0076b8cc  00 20 8d e5                                      str r2, [sp]
0076b8d0  30 40 90 e5                                      ldr r4, [r0, #0x30]
0076b8d4  00 30 93 e5                                      ldr r3, [r3]
0076b8d8  00 50 a0 e1                                      mov r5, r0
0076b8dc  00 00 54 e3                                      cmp r4, #0
0076b8e0  04 10 8d e5                                      str r1, [sp, #4]
0076b8e4  28 70 80 e2                                      add r7, r0, #0x28
0076b8e8  4c 30 8d e5                                      str r3, [sp, #0x4c]
0076b8ec  03 00 00 0a                                      beq #0x76b900
0076b8f0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0076b8f4  04 30 d0 e5                                      ldrb r3, [r0, #4]
0076b8f8  00 00 53 e3                                      cmp r3, #0
0076b8fc  c7 00 00 0a                                      beq #0x76bc20
0076b900  00 10 a0 e3                                      mov r1, #0
0076b904  38 00 a0 e3                                      mov r0, #0x38
0076b908  a6 9c ff eb                                      bl #0x752ba8
0076b90c  04 10 a0 e1                                      mov r1, r4
0076b910  00 60 a0 e1                                      mov r6, r0
0076b914  c1 ff ff eb                                      bl #0x76b820
0076b918  07 00 a0 e1                                      mov r0, r7
0076b91c  06 10 a0 e1                                      mov r1, r6
0076b920  e8 f4 ff eb                                      bl #0x768cc8
0076b924  28 60 95 e5                                      ldr r6, [r5, #0x28]
0076b928  20 40 95 e5                                      ldr r4, [r5, #0x20]
0076b92c  20 00 96 e5                                      ldr r0, [r6, #0x20]
0076b930  00 00 54 e1                                      cmp r4, r0
0076b934  0b 00 00 0a                                      beq #0x76b968
0076b938  00 00 50 e3                                      cmp r0, #0
0076b93c  04 00 00 0a                                      beq #0x76b954
0076b940  00 10 90 e5                                      ldr r1, [r0]
0076b944  01 10 41 e2                                      sub r1, r1, #1
0076b948  00 00 51 e3                                      cmp r1, #0
0076b94c  00 10 80 e5                                      str r1, [r0]
0076b950  17 00 00 0a                                      beq #0x76b9b4
0076b954  00 00 54 e3                                      cmp r4, #0
0076b958  20 40 86 e5                                      str r4, [r6, #0x20]
0076b95c  00 30 94 15                                      ldrne r3, [r4]
0076b960  01 30 83 12                                      addne r3, r3, #1
0076b964  00 30 84 15                                      strne r3, [r4]
0076b968  24 30 95 e5                                      ldr r3, [r5, #0x24]
0076b96c  24 30 86 e5                                      str r3, [r6, #0x24]
0076b970  04 00 9d e5                                      ldr r0, [sp, #4]
0076b974  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
0076b978  05 00 53 e3                                      cmp r3, #5
0076b97c  0e 00 00 0a                                      beq #0x76b9bc
0076b980  04 10 9d e5                                      ldr r1, [sp, #4]
0076b984  05 00 a0 e1                                      mov r0, r5
0076b988  de f4 ff eb                                      bl #0x768d08
0076b98c  08 00 9d e5                                      ldr r0, [sp, #8]
0076b990  00 10 9d e5                                      ldr r1, [sp]
0076b994  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0076b998  00 30 91 e7                                      ldr r3, [r1, r0]
0076b99c  28 00 95 e5                                      ldr r0, [r5, #0x28]
0076b9a0  00 30 93 e5                                      ldr r3, [r3]
0076b9a4  03 00 52 e1                                      cmp r2, r3
0076b9a8  aa 00 00 1a                                      bne #0x76bc58
0076b9ac  54 d0 8d e2                                      add sp, sp, #0x54
0076b9b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0076b9b4  5f 9c ff eb                                      bl #0x752b38
0076b9b8  e5 ff ff ea                                      b #0x76b954
0076b9bc  04 70 90 e5                                      ldr r7, [r0, #4]
0076b9c0  00 00 57 e3                                      cmp r7, #0
0076b9c4  ed ff ff 0a                                      beq #0x76b980
0076b9c8  00 30 a0 e3                                      mov r3, #0
0076b9cc  29 30 cd e5                                      strb r3, [sp, #0x29]
0076b9d0  28 30 cd e5                                      strb r3, [sp, #0x28]
0076b9d4  88 12 9f e5                                      ldr r1, [pc, #0x288]
0076b9d8  00 30 97 e5                                      ldr r3, [r7]
0076b9dc  28 20 8d e2                                      add r2, sp, #0x28
0076b9e0  38 60 8d e2                                      add r6, sp, #0x38
0076b9e4  0c 20 8d e5                                      str r2, [sp, #0xc]
0076b9e8  01 10 8f e0                                      add r1, pc, r1
0076b9ec  06 00 a0 e1                                      mov r0, r6
0076b9f0  20 40 93 e5                                      ldr r4, [r3, #0x20]
0076b9f4  20 a0 f2 eb                                      bl #0x413a7c
0076b9f8  07 00 a0 e1                                      mov r0, r7
0076b9fc  06 10 a0 e1                                      mov r1, r6
0076ba00  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0076ba04  34 ff 2f e1                                      blx r4
0076ba08  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
0076ba0c  01 00 73 e3                                      cmn r3, #1
0076ba10  8c 00 00 0a                                      beq #0x76bc48
0076ba14  d9 32 dd e1                                      ldrsb r3, [sp, #0x29]
0076ba18  50 70 8d e2                                      add r7, sp, #0x50
0076ba1c  00 40 a0 e3                                      mov r4, #0
0076ba20  05 00 53 e3                                      cmp r3, #5
0076ba24  2c b0 9d 05                                      ldreq fp, [sp, #0x2c]
0076ba28  1c 40 27 e5                                      str r4, [r7, #-0x1c]!
0076ba2c  00 b0 a0 13                                      movne fp, #0
0076ba30  07 00 a0 e1                                      mov r0, r7
0076ba34  0c 10 85 e2                                      add r1, r5, #0xc
0076ba38  59 fd ff eb                                      bl #0x76afa4
0076ba3c  00 30 9b e5                                      ldr r3, [fp]
0076ba40  0b 00 a0 e1                                      mov r0, fp
0076ba44  05 10 a0 e1                                      mov r1, r5
0076ba48  0f e0 a0 e1                                      mov lr, pc
0076ba4c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0076ba50  34 30 9d e5                                      ldr r3, [sp, #0x34]
0076ba54  04 00 53 e1                                      cmp r3, r4
0076ba58  07 00 00 0a                                      beq #0x76ba7c
0076ba5c  04 20 93 e5                                      ldr r2, [r3, #4]
0076ba60  04 00 52 e1                                      cmp r2, r4
0076ba64  4a 00 00 aa                                      bge #0x76bb94
0076ba68  00 00 57 e3                                      cmp r7, #0
0076ba6c  00 a0 97 15                                      ldrne sl, [r7]
0076ba70  00 90 a0 13                                      movne sb, #0
0076ba74  1c 60 8d 12                                      addne r6, sp, #0x1c
0076ba78  12 00 00 1a                                      bne #0x76bac8
0076ba7c  10 40 8d e2                                      add r4, sp, #0x10
0076ba80  00 30 a0 e3                                      mov r3, #0
0076ba84  0b 00 a0 e1                                      mov r0, fp
0076ba88  04 10 a0 e1                                      mov r1, r4
0076ba8c  11 30 cd e5                                      strb r3, [sp, #0x11]
0076ba90  10 30 cd e5                                      strb r3, [sp, #0x10]
0076ba94  9d f4 ff eb                                      bl #0x768d10
0076ba98  00 00 50 e3                                      cmp r0, #0
0076ba9c  5b 00 00 1a                                      bne #0x76bc10
0076baa0  04 00 a0 e1                                      mov r0, r4
0076baa4  9e ad 00 eb                                      bl #0x797124
0076baa8  07 00 a0 e1                                      mov r0, r7
0076baac  a4 f7 ff eb                                      bl #0x769944
0076bab0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0076bab4  9a ad 00 eb                                      bl #0x797124
0076bab8  b0 ff ff ea                                      b #0x76b980
0076babc  04 20 90 e5                                      ldr r2, [r0, #4]
0076bac0  01 00 72 e3                                      cmn r2, #1
0076bac4  2d 00 00 0a                                      beq #0x76bb80
0076bac8  04 81 84 e0                                      add r8, r4, r4, lsl #2
0076bacc  01 80 88 e2                                      add r8, r8, #1
0076bad0  88 81 a0 e1                                      lsl r8, r8, #3
0076bad4  00 00 5a e3                                      cmp sl, #0
0076bad8  e7 ff ff 0a                                      beq #0x76ba7c
0076badc  04 30 9a e5                                      ldr r3, [sl, #4]
0076bae0  03 00 54 e1                                      cmp r4, r3
0076bae4  e4 ff ff ca                                      bgt #0x76ba7c
0076bae8  08 a0 8a e0                                      add sl, sl, r8
0076baec  1c 90 cd e5                                      strb sb, [sp, #0x1c]
0076baf0  1d 90 cd e5                                      strb sb, [sp, #0x1d]
0076baf4  08 a0 8a e2                                      add sl, sl, #8
0076baf8  00 30 95 e5                                      ldr r3, [r5]
0076bafc  05 00 a0 e1                                      mov r0, r5
0076bb00  0a 10 a0 e1                                      mov r1, sl
0076bb04  06 20 a0 e1                                      mov r2, r6
0076bb08  0f e0 a0 e1                                      mov lr, pc
0076bb0c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0076bb10  00 00 50 e3                                      cmp r0, #0
0076bb14  09 00 00 0a                                      beq #0x76bb40
0076bb18  dd 31 dd e1                                      ldrsb r3, [sp, #0x1d]
0076bb1c  06 00 53 e3                                      cmp r3, #6
0076bb20  28 00 00 0a                                      beq #0x76bbc8
0076bb24  00 10 97 e5                                      ldr r1, [r7]
0076bb28  08 10 81 e0                                      add r1, r1, r8
0076bb2c  1c 10 81 e2                                      add r1, r1, #0x1c
0076bb30  06 00 a0 e1                                      mov r0, r6
0076bb34  41 b1 00 eb                                      bl #0x798040
0076bb38  00 00 50 e3                                      cmp r0, #0
0076bb3c  2a 00 00 1a                                      bne #0x76bbec
0076bb40  06 00 a0 e1                                      mov r0, r6
0076bb44  76 ad 00 eb                                      bl #0x797124
0076bb48  00 a0 97 e5                                      ldr sl, [r7]
0076bb4c  04 10 9a e5                                      ldr r1, [sl, #4]
0076bb50  01 00 54 e1                                      cmp r4, r1
0076bb54  de ff ff ca                                      bgt #0x76bad4
0076bb58  01 40 84 e2                                      add r4, r4, #1
0076bb5c  01 00 54 e1                                      cmp r4, r1
0076bb60  d8 ff ff ca                                      bgt #0x76bac8
0076bb64  04 31 84 e0                                      add r3, r4, r4, lsl #2
0076bb68  01 30 83 e2                                      add r3, r3, #1
0076bb6c  83 31 a0 e1                                      lsl r3, r3, #3
0076bb70  03 20 9a e7                                      ldr r2, [sl, r3]
0076bb74  03 00 8a e0                                      add r0, sl, r3
0076bb78  02 00 72 e3                                      cmn r2, #2
0076bb7c  ce ff ff 1a                                      bne #0x76babc
0076bb80  01 40 84 e2                                      add r4, r4, #1
0076bb84  01 00 54 e1                                      cmp r4, r1
0076bb88  28 30 83 e2                                      add r3, r3, #0x28
0076bb8c  f7 ff ff da                                      ble #0x76bb70
0076bb90  cc ff ff ea                                      b #0x76bac8
0076bb94  08 10 a0 e3                                      mov r1, #8
0076bb98  01 00 93 e7                                      ldr r0, [r3, r1]
0076bb9c  01 c0 83 e0                                      add ip, r3, r1
0076bba0  02 00 70 e3                                      cmn r0, #2
0076bba4  02 00 00 0a                                      beq #0x76bbb4
0076bba8  04 00 9c e5                                      ldr r0, [ip, #4]
0076bbac  01 00 70 e3                                      cmn r0, #1
0076bbb0  ac ff ff 1a                                      bne #0x76ba68
0076bbb4  01 40 84 e2                                      add r4, r4, #1
0076bbb8  02 00 54 e1                                      cmp r4, r2
0076bbbc  28 10 81 e2                                      add r1, r1, #0x28
0076bbc0  f4 ff ff da                                      ble #0x76bb98
0076bbc4  a7 ff ff ea                                      b #0x76ba68
0076bbc8  00 10 97 e5                                      ldr r1, [r7]
0076bbcc  08 10 81 e0                                      add r1, r1, r8
0076bbd0  dd 31 d1 e1                                      ldrsb r3, [r1, #0x1d]
0076bbd4  06 00 53 e3                                      cmp r3, #6
0076bbd8  d3 ff ff 0a                                      beq #0x76bb2c
0076bbdc  1c 10 81 e2                                      add r1, r1, #0x1c
0076bbe0  06 00 a0 e1                                      mov r0, r6
0076bbe4  59 af 00 eb                                      bl #0x797950
0076bbe8  d4 ff ff ea                                      b #0x76bb40
0076bbec  00 20 97 e5                                      ldr r2, [r7]
0076bbf0  0a 10 a0 e1                                      mov r1, sl
0076bbf4  00 30 95 e5                                      ldr r3, [r5]
0076bbf8  08 20 82 e0                                      add r2, r2, r8
0076bbfc  1c 20 82 e2                                      add r2, r2, #0x1c
0076bc00  05 00 a0 e1                                      mov r0, r5
0076bc04  0f e0 a0 e1                                      mov lr, pc
0076bc08  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0076bc0c  cb ff ff ea                                      b #0x76bb40
0076bc10  28 00 95 e5                                      ldr r0, [r5, #0x28]
0076bc14  04 10 a0 e1                                      mov r1, r4
0076bc18  3a f4 ff eb                                      bl #0x768d08
0076bc1c  9f ff ff ea                                      b #0x76baa0
0076bc20  00 10 90 e5                                      ldr r1, [r0]
0076bc24  01 10 41 e2                                      sub r1, r1, #1
0076bc28  00 00 51 e3                                      cmp r1, #0
0076bc2c  00 10 80 e5                                      str r1, [r0]
0076bc30  00 00 00 1a                                      bne #0x76bc38
0076bc34  bf 9b ff eb                                      bl #0x752b38
0076bc38  00 40 a0 e3                                      mov r4, #0
0076bc3c  2c 40 85 e5                                      str r4, [r5, #0x2c]
0076bc40  30 40 85 e5                                      str r4, [r5, #0x30]
0076bc44  2d ff ff ea                                      b #0x76b900
0076bc48  44 00 9d e5                                      ldr r0, [sp, #0x44]
0076bc4c  40 10 9d e5                                      ldr r1, [sp, #0x40]
0076bc50  b8 9b ff eb                                      bl #0x752b38
0076bc54  6e ff ff ea                                      b #0x76ba14
0076bc58  ac 89 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0076bc5c  d0 91 22 00 ac 40 00 00 48 d6 19 00              .byte 0xd0, 0x91, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0xd6, 0x19, 0x00

; FUNCTION 0x0076bce0, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_objectC2EPNS_6playerE
; demangled: gameswf::as_object::as_object(gameswf::player*)
; decoder-mode: arm
0076bce0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0076bce4  7c 60 9f e5                                      ldr r6, [pc, #0x7c]
0076bce8  0c d0 4d e2                                      sub sp, sp, #0xc
0076bcec  00 40 a0 e1                                      mov r4, r0
0076bcf0  01 70 a0 e1                                      mov r7, r1
0076bcf4  c2 b7 ff eb                                      bl #0x759c04
0076bcf8  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0076bcfc  06 60 8f e0                                      add r6, pc, r6
0076bd00  00 50 a0 e3                                      mov r5, #0
0076bd04  03 30 96 e7                                      ldr r3, [r6, r3]
0076bd08  0c 50 84 e5                                      str r5, [r4, #0xc]
0076bd0c  10 50 c4 e5                                      strb r5, [r4, #0x10]
0076bd10  08 30 83 e2                                      add r3, r3, #8
0076bd14  00 30 84 e5                                      str r3, [r4]
0076bd18  11 50 c4 e5                                      strb r5, [r4, #0x11]
0076bd1c  1c 50 84 e5                                      str r5, [r4, #0x1c]
0076bd20  20 50 84 e5                                      str r5, [r4, #0x20]
0076bd24  24 50 84 e5                                      str r5, [r4, #0x24]
0076bd28  28 50 84 e5                                      str r5, [r4, #0x28]
0076bd2c  2c 50 84 e5                                      str r5, [r4, #0x2c]
0076bd30  30 50 84 e5                                      str r5, [r4, #0x30]
0076bd34  2c 00 84 e2                                      add r0, r4, #0x2c
0076bd38  07 10 a0 e1                                      mov r1, r7
0076bd3c  1a cb ff eb                                      bl #0x75e9ac
0076bd40  05 00 57 e1                                      cmp r7, r5
0076bd44  34 50 84 e5                                      str r5, [r4, #0x34]
0076bd48  03 00 00 0a                                      beq #0x76bd5c
0076bd4c  08 10 8d e2                                      add r1, sp, #8
0076bd50  04 40 21 e5                                      str r4, [r1, #-4]!
0076bd54  0c 00 87 e2                                      add r0, r7, #0xc
0076bd58  1a 3b f3 eb                                      bl #0x43a9c8
0076bd5c  04 00 a0 e1                                      mov r0, r4
0076bd60  0c d0 8d e2                                      add sp, sp, #0xc
0076bd64  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0076bd68  94 8d 22 00 08 10 00 00                          .byte 0x94, 0x8d, 0x22, 0x00, 0x08, 0x10, 0x00, 0x00

; FUNCTION 0x0076bf8c, declared_size=268, range_size=268, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object7unwatchERKNS_9tu_stringE
; demangled: gameswf::as_object::unwatch(gameswf::tu_string const&)
; decoder-mode: arm
0076bf8c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0076bf90  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
0076bf94  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
0076bf98  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
0076bf9c  04 40 8f e0                                      add r4, pc, r4
0076bfa0  05 30 94 e7                                      ldr r3, [r4, r5]
0076bfa4  40 d0 4d e2                                      sub sp, sp, #0x40
0076bfa8  00 00 5a e3                                      cmp sl, #0
0076bfac  00 30 93 e5                                      ldr r3, [r3]
0076bfb0  00 70 a0 e1                                      mov r7, r0
0076bfb4  01 80 a0 e1                                      mov r8, r1
0076bfb8  3c 30 8d e5                                      str r3, [sp, #0x3c]
0076bfbc  22 00 00 0a                                      beq #0x76c04c
0076bfc0  28 90 8d e2                                      add sb, sp, #0x28
0076bfc4  00 30 a0 e3                                      mov r3, #0
0076bfc8  09 00 a0 e1                                      mov r0, sb
0076bfcc  04 60 8d e2                                      add r6, sp, #4
0076bfd0  09 30 cd e5                                      strb r3, [sp, #9]
0076bfd4  04 30 8d e5                                      str r3, [sp, #4]
0076bfd8  08 30 cd e5                                      strb r3, [sp, #8]
0076bfdc  12 9c ff eb                                      bl #0x75302c
0076bfe0  0a 00 a0 e1                                      mov r0, sl
0076bfe4  09 10 a0 e1                                      mov r1, sb
0076bfe8  06 20 a0 e1                                      mov r2, r6
0076bfec  b8 ff ff eb                                      bl #0x76bed4
0076bff0  d8 32 dd e1                                      ldrsb r3, [sp, #0x28]
0076bff4  00 a0 a0 e1                                      mov sl, r0
0076bff8  01 00 73 e3                                      cmn r3, #1
0076bffc  1a 00 00 0a                                      beq #0x76c06c
0076c000  00 00 5a e3                                      cmp sl, #0
0076c004  0e 00 00 0a                                      beq #0x76c044
0076c008  1c 70 97 e5                                      ldr r7, [r7, #0x1c]
0076c00c  14 a0 8d e2                                      add sl, sp, #0x14
0076c010  08 10 a0 e1                                      mov r1, r8
0076c014  0a 00 a0 e1                                      mov r0, sl
0076c018  03 9c ff eb                                      bl #0x75302c
0076c01c  07 00 a0 e1                                      mov r0, r7
0076c020  0a 10 a0 e1                                      mov r1, sl
0076c024  c2 ff ff eb                                      bl #0x76bf34
0076c028  d4 31 dd e1                                      ldrsb r3, [sp, #0x14]
0076c02c  01 00 73 e3                                      cmn r3, #1
0076c030  11 00 00 0a                                      beq #0x76c07c
0076c034  04 00 86 e2                                      add r0, r6, #4
0076c038  39 ac 00 eb                                      bl #0x797124
0076c03c  01 00 a0 e3                                      mov r0, #1
0076c040  02 00 00 ea                                      b #0x76c050
0076c044  04 00 86 e2                                      add r0, r6, #4
0076c048  35 ac 00 eb                                      bl #0x797124
0076c04c  0a 00 a0 e1                                      mov r0, sl
0076c050  05 30 94 e7                                      ldr r3, [r4, r5]
0076c054  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0076c058  00 30 93 e5                                      ldr r3, [r3]
0076c05c  03 00 52 e1                                      cmp r2, r3
0076c060  09 00 00 1a                                      bne #0x76c08c
0076c064  40 d0 8d e2                                      add sp, sp, #0x40
0076c068  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0076c06c  34 00 9d e5                                      ldr r0, [sp, #0x34]
0076c070  30 10 9d e5                                      ldr r1, [sp, #0x30]
0076c074  af 9a ff eb                                      bl #0x752b38
0076c078  e0 ff ff ea                                      b #0x76c000
0076c07c  20 00 9d e5                                      ldr r0, [sp, #0x20]
0076c080  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0076c084  ab 9a ff eb                                      bl #0x752b38
0076c088  e9 ff ff ea                                      b #0x76c034
0076c08c  9f 88 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0076c090  f4 8a 22 00 ac 40 00 00                          .byte 0xf4, 0x8a, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0076c0f4, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object5watchERKNS_9tu_stringEPNS_11as_functionERKNS_8as_valueE
; demangled: gameswf::as_object::watch(gameswf::tu_string const&, gameswf::as_function*, gameswf::as_value const&)
; decoder-mode: arm
0076c0f4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0076c0f8  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0076c0fc  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
0076c100  00 70 a0 e1                                      mov r7, r0
0076c104  04 40 8f e0                                      add r4, pc, r4
0076c108  05 c0 94 e7                                      ldr ip, [r4, r5]
0076c10c  28 d0 4d e2                                      sub sp, sp, #0x28
0076c110  00 00 52 e3                                      cmp r2, #0
0076c114  00 00 9c e5                                      ldr r0, [ip]
0076c118  01 80 a0 e1                                      mov r8, r1
0076c11c  24 00 8d e5                                      str r0, [sp, #0x24]
0076c120  02 00 a0 01                                      moveq r0, r2
0076c124  18 00 00 0a                                      beq #0x76c18c
0076c128  28 60 8d e2                                      add r6, sp, #0x28
0076c12c  28 20 26 e5                                      str r2, [r6, #-0x28]!
0076c130  00 90 a0 e3                                      mov sb, #0
0076c134  03 10 a0 e1                                      mov r1, r3
0076c138  04 00 86 e2                                      add r0, r6, #4
0076c13c  04 90 cd e5                                      strb sb, [sp, #4]
0076c140  05 90 cd e5                                      strb sb, [sp, #5]
0076c144  7c ad 00 eb                                      bl #0x79773c
0076c148  1c a0 97 e5                                      ldr sl, [r7, #0x1c]
0076c14c  09 00 5a e1                                      cmp sl, sb
0076c150  18 00 00 0a                                      beq #0x76c1b8
0076c154  10 70 8d e2                                      add r7, sp, #0x10
0076c158  08 10 a0 e1                                      mov r1, r8
0076c15c  07 00 a0 e1                                      mov r0, r7
0076c160  b1 9b ff eb                                      bl #0x75302c
0076c164  0a 00 a0 e1                                      mov r0, sl
0076c168  07 10 a0 e1                                      mov r1, r7
0076c16c  0d 20 a0 e1                                      mov r2, sp
0076c170  c8 ff ff eb                                      bl #0x76c098
0076c174  d0 31 dd e1                                      ldrsb r3, [sp, #0x10]
0076c178  01 00 73 e3                                      cmn r3, #1
0076c17c  09 00 00 0a                                      beq #0x76c1a8
0076c180  04 00 86 e2                                      add r0, r6, #4
0076c184  e6 ab 00 eb                                      bl #0x797124
0076c188  01 00 a0 e3                                      mov r0, #1
0076c18c  05 30 94 e7                                      ldr r3, [r4, r5]
0076c190  24 10 9d e5                                      ldr r1, [sp, #0x24]
0076c194  00 30 93 e5                                      ldr r3, [r3]
0076c198  03 00 51 e1                                      cmp r1, r3
0076c19c  0c 00 00 1a                                      bne #0x76c1d4
0076c1a0  28 d0 8d e2                                      add sp, sp, #0x28
0076c1a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0076c1a8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0076c1ac  18 10 9d e5                                      ldr r1, [sp, #0x18]
0076c1b0  60 9a ff eb                                      bl #0x752b38
0076c1b4  f1 ff ff ea                                      b #0x76c180
0076c1b8  0a 10 a0 e1                                      mov r1, sl
0076c1bc  04 00 a0 e3                                      mov r0, #4
0076c1c0  78 9a ff eb                                      bl #0x752ba8
0076c1c4  00 90 80 e5                                      str sb, [r0]
0076c1c8  00 a0 a0 e1                                      mov sl, r0
0076c1cc  1c 00 87 e5                                      str r0, [r7, #0x1c]
0076c1d0  df ff ff ea                                      b #0x76c154
0076c1d4  4d 88 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0076c1d8  8c 89 22 00 ac 40 00 00                          .byte 0x8c, 0x89, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0076c1e0, declared_size=824, range_size=824, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object10set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::as_object::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
0076c1e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076c1e4  0c a0 80 e2                                      add sl, r0, #0xc
0076c1e8  ec d0 4d e2                                      sub sp, sp, #0xec
0076c1ec  00 40 a0 e1                                      mov r4, r0
0076c1f0  0a 00 a0 e1                                      mov r0, sl
0076c1f4  02 b0 a0 e1                                      mov fp, r2
0076c1f8  01 50 a0 e1                                      mov r5, r1
0076c1fc  3a f3 ff eb                                      bl #0x768eec
0076c200  00 60 50 e2                                      subs r6, r0, #0
0076c204  00 60 a0 b3                                      movlt r6, #0
0076c208  10 60 8d b5                                      strlt r6, [sp, #0x10]
0076c20c  08 00 00 ba                                      blt #0x76c234
0076c210  00 00 5a e3                                      cmp sl, #0
0076c214  05 00 00 0a                                      beq #0x76c230
0076c218  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0076c21c  00 00 53 e3                                      cmp r3, #0
0076c220  02 00 00 0a                                      beq #0x76c230
0076c224  04 20 93 e5                                      ldr r2, [r3, #4]
0076c228  02 00 56 e1                                      cmp r6, r2
0076c22c  80 00 00 da                                      ble #0x76c434
0076c230  10 a0 8d e5                                      str sl, [sp, #0x10]
0076c234  00 90 a0 e3                                      mov sb, #0
0076c238  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0076c23c  00 00 53 e3                                      cmp r3, #0
0076c240  68 00 00 0a                                      beq #0x76c3e8
0076c244  00 00 59 e3                                      cmp sb, #0
0076c248  97 00 00 1a                                      bne #0x76c4ac
0076c24c  cc 30 8d e2                                      add r3, sp, #0xcc
0076c250  cc 90 cd e5                                      strb sb, [sp, #0xcc]
0076c254  cd 90 cd e5                                      strb sb, [sp, #0xcd]
0076c258  0c 30 8d e5                                      str r3, [sp, #0xc]
0076c25c  c0 80 8d e2                                      add r8, sp, #0xc0
0076c260  00 70 a0 e3                                      mov r7, #0
0076c264  a4 20 8d e2                                      add r2, sp, #0xa4
0076c268  08 00 a0 e1                                      mov r0, r8
0076c26c  0b 10 a0 e1                                      mov r1, fp
0076c270  08 20 8d e5                                      str r2, [sp, #8]
0076c274  c0 70 cd e5                                      strb r7, [sp, #0xc0]
0076c278  c1 70 cd e5                                      strb r7, [sp, #0xc1]
0076c27c  2e ad 00 eb                                      bl #0x79773c
0076c280  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0076c284  05 10 a0 e1                                      mov r1, r5
0076c288  08 20 9d e5                                      ldr r2, [sp, #8]
0076c28c  a9 70 cd e5                                      strb r7, [sp, #0xa9]
0076c290  a4 70 8d e5                                      str r7, [sp, #0xa4]
0076c294  a8 70 cd e5                                      strb r7, [sp, #0xa8]
0076c298  0d ff ff eb                                      bl #0x76bed4
0076c29c  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
0076c2a0  07 00 53 e1                                      cmp r3, r7
0076c2a4  48 00 00 0a                                      beq #0x76c3cc
0076c2a8  30 10 94 e5                                      ldr r1, [r4, #0x30]
0076c2ac  07 00 51 e1                                      cmp r1, r7
0076c2b0  03 00 00 0a                                      beq #0x76c2c4
0076c2b4  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0076c2b8  04 30 d0 e5                                      ldrb r3, [r0, #4]
0076c2bc  07 00 53 e1                                      cmp r3, r7
0076c2c0  8a 00 00 0a                                      beq #0x76c4f0
0076c2c4  1c 70 8d e2                                      add r7, sp, #0x1c
0076c2c8  07 00 a0 e1                                      mov r0, r7
0076c2cc  1e ca ff eb                                      bl #0x75eb4c
0076c2d0  08 30 9d e5                                      ldr r3, [sp, #8]
0076c2d4  07 00 a0 e1                                      mov r0, r7
0076c2d8  04 10 83 e2                                      add r1, r3, #4
0076c2dc  6d f3 ff eb                                      bl #0x769098
0076c2e0  07 00 a0 e1                                      mov r0, r7
0076c2e4  08 10 a0 e1                                      mov r1, r8
0076c2e8  6a f3 ff eb                                      bl #0x769098
0076c2ec  07 00 a0 e1                                      mov r0, r7
0076c2f0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0076c2f4  67 f3 ff eb                                      bl #0x769098
0076c2f8  d0 30 d5 e1                                      ldrsb r3, [r5]
0076c2fc  e8 10 8d e2                                      add r1, sp, #0xe8
0076c300  07 00 a0 e1                                      mov r0, r7
0076c304  01 00 73 e3                                      cmn r3, #1
0076c308  0c 30 95 05                                      ldreq r3, [r5, #0xc]
0076c30c  01 30 85 12                                      addne r3, r5, #1
0076c310  04 30 21 e5                                      str r3, [r1, #-4]!
0076c314  b5 f3 ff eb                                      bl #0x7691f0
0076c318  08 00 a0 e1                                      mov r0, r8
0076c31c  80 ab 00 eb                                      bl #0x797124
0076c320  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
0076c324  00 20 a0 e3                                      mov r2, #0
0076c328  c1 20 cd e5                                      strb r2, [sp, #0xc1]
0076c32c  00 10 93 e5                                      ldr r1, [r3]
0076c330  04 00 a0 e1                                      mov r0, r4
0076c334  64 10 91 e5                                      ldr r1, [r1, #0x64]
0076c338  b4 20 cd e5                                      strb r2, [sp, #0xb4]
0076c33c  05 20 a0 e3                                      mov r2, #5
0076c340  14 10 8d e5                                      str r1, [sp, #0x14]
0076c344  b5 20 cd e5                                      strb r2, [sp, #0xb5]
0076c348  04 30 8d e5                                      str r3, [sp, #4]
0076c34c  b8 40 8d e5                                      str r4, [sp, #0xb8]
0076c350  43 b6 ff eb                                      bl #0x759c64
0076c354  d0 20 d5 e1                                      ldrsb r2, [r5]
0076c358  d5 0b dd e1                                      ldrsb r0, [sp, #0xb5]
0076c35c  20 10 9d e5                                      ldr r1, [sp, #0x20]
0076c360  01 00 72 e3                                      cmn r2, #1
0076c364  0c c0 95 05                                      ldreq ip, [r5, #0xc]
0076c368  01 10 41 e2                                      sub r1, r1, #1
0076c36c  01 c0 85 12                                      addne ip, r5, #1
0076c370  05 00 50 e3                                      cmp r0, #5
0076c374  04 30 9d e5                                      ldr r3, [sp, #4]
0076c378  9c 10 8d e5                                      str r1, [sp, #0x9c]
0076c37c  b8 10 9d 05                                      ldreq r1, [sp, #0xb8]
0076c380  b4 20 8d e2                                      add r2, sp, #0xb4
0076c384  00 10 a0 13                                      movne r1, #0
0076c388  04 00 a0 e3                                      mov r0, #4
0076c38c  98 00 8d e5                                      str r0, [sp, #0x98]
0076c390  a0 c0 8d e5                                      str ip, [sp, #0xa0]
0076c394  03 00 a0 e1                                      mov r0, r3
0076c398  90 20 8d e5                                      str r2, [sp, #0x90]
0076c39c  8c 10 8d e5                                      str r1, [sp, #0x8c]
0076c3a0  04 20 8d e5                                      str r2, [sp, #4]
0076c3a4  88 10 8d e2                                      add r1, sp, #0x88
0076c3a8  14 30 9d e5                                      ldr r3, [sp, #0x14]
0076c3ac  88 80 8d e5                                      str r8, [sp, #0x88]
0076c3b0  94 70 8d e5                                      str r7, [sp, #0x94]
0076c3b4  33 ff 2f e1                                      blx r3
0076c3b8  04 20 9d e5                                      ldr r2, [sp, #4]
0076c3bc  02 00 a0 e1                                      mov r0, r2
0076c3c0  57 ab 00 eb                                      bl #0x797124
0076c3c4  07 00 a0 e1                                      mov r0, r7
0076c3c8  1b c7 ff eb                                      bl #0x75e03c
0076c3cc  08 20 9d e5                                      ldr r2, [sp, #8]
0076c3d0  04 00 82 e2                                      add r0, r2, #4
0076c3d4  52 ab 00 eb                                      bl #0x797124
0076c3d8  08 00 a0 e1                                      mov r0, r8
0076c3dc  50 ab 00 eb                                      bl #0x797124
0076c3e0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0076c3e4  4e ab 00 eb                                      bl #0x797124
0076c3e8  04 00 a0 e1                                      mov r0, r4
0076c3ec  00 30 94 e5                                      ldr r3, [r4]
0076c3f0  05 10 a0 e1                                      mov r1, r5
0076c3f4  0b 20 a0 e1                                      mov r2, fp
0076c3f8  0f e0 a0 e1                                      mov lr, pc
0076c3fc  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0076c400  00 00 59 e3                                      cmp sb, #0
0076c404  23 00 00 0a                                      beq #0x76c498
0076c408  10 20 9d e5                                      ldr r2, [sp, #0x10]
0076c40c  06 61 86 e0                                      add r6, r6, r6, lsl #2
0076c410  01 00 86 e2                                      add r0, r6, #1
0076c414  00 30 92 e5                                      ldr r3, [r2]
0076c418  80 01 83 e0                                      add r0, r3, r0, lsl #3
0076c41c  1c 30 d0 e5                                      ldrb r3, [r0, #0x1c]
0076c420  04 00 13 e3                                      tst r3, #4
0076c424  2d 00 00 0a                                      beq #0x76c4e0
0076c428  01 00 a0 e3                                      mov r0, #1
0076c42c  ec d0 8d e2                                      add sp, sp, #0xec
0076c430  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0076c434  06 21 86 e0                                      add r2, r6, r6, lsl #2
0076c438  82 31 83 e0                                      add r3, r3, r2, lsl #3
0076c43c  d5 32 d3 e1                                      ldrsb r3, [r3, #0x25]
0076c440  06 00 53 e3                                      cmp r3, #6
0076c444  10 a0 8d 15                                      strne sl, [sp, #0x10]
0076c448  01 90 a0 13                                      movne sb, #1
0076c44c  79 ff ff 1a                                      bne #0x76c238
0076c450  00 30 a0 e3                                      mov r3, #0
0076c454  d9 30 cd e5                                      strb r3, [sp, #0xd9]
0076c458  d8 30 cd e5                                      strb r3, [sp, #0xd8]
0076c45c  d8 60 8d e2                                      add r6, sp, #0xd8
0076c460  04 00 a0 e1                                      mov r0, r4
0076c464  05 10 a0 e1                                      mov r1, r5
0076c468  00 30 94 e5                                      ldr r3, [r4]
0076c46c  06 20 a0 e1                                      mov r2, r6
0076c470  0f e0 a0 e1                                      mov lr, pc
0076c474  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0076c478  00 00 50 e3                                      cmp r0, #0
0076c47c  02 00 00 0a                                      beq #0x76c48c
0076c480  0b 10 a0 e1                                      mov r1, fp
0076c484  06 00 a0 e1                                      mov r0, r6
0076c488  30 ad 00 eb                                      bl #0x797950
0076c48c  06 00 a0 e1                                      mov r0, r6
0076c490  23 ab 00 eb                                      bl #0x797124
0076c494  e3 ff ff ea                                      b #0x76c428
0076c498  0a 00 a0 e1                                      mov r0, sl
0076c49c  05 10 a0 e1                                      mov r1, r5
0076c4a0  0b 20 a0 e1                                      mov r2, fp
0076c4a4  04 f8 ff eb                                      bl #0x76a4bc
0076c4a8  de ff ff ea                                      b #0x76c428
0076c4ac  10 20 9d e5                                      ldr r2, [sp, #0x10]
0076c4b0  06 11 86 e0                                      add r1, r6, r6, lsl #2
0076c4b4  00 30 92 e5                                      ldr r3, [r2]
0076c4b8  cc 20 8d e2                                      add r2, sp, #0xcc
0076c4bc  02 00 a0 e1                                      mov r0, r2
0076c4c0  81 11 83 e0                                      add r1, r3, r1, lsl #3
0076c4c4  24 10 81 e2                                      add r1, r1, #0x24
0076c4c8  00 30 a0 e3                                      mov r3, #0
0076c4cc  0c 20 8d e5                                      str r2, [sp, #0xc]
0076c4d0  cd 30 cd e5                                      strb r3, [sp, #0xcd]
0076c4d4  cc 30 cd e5                                      strb r3, [sp, #0xcc]
0076c4d8  97 ac 00 eb                                      bl #0x79773c
0076c4dc  5e ff ff ea                                      b #0x76c25c
0076c4e0  1c 00 80 e2                                      add r0, r0, #0x1c
0076c4e4  0b 10 a0 e1                                      mov r1, fp
0076c4e8  93 ac 00 eb                                      bl #0x79773c
0076c4ec  cd ff ff ea                                      b #0x76c428
0076c4f0  00 10 90 e5                                      ldr r1, [r0]
0076c4f4  01 10 41 e2                                      sub r1, r1, #1
0076c4f8  07 00 51 e1                                      cmp r1, r7
0076c4fc  00 10 80 e5                                      str r1, [r0]
0076c500  00 00 00 1a                                      bne #0x76c508
0076c504  8b 99 ff eb                                      bl #0x752b38
0076c508  00 10 a0 e3                                      mov r1, #0
0076c50c  2c 10 84 e5                                      str r1, [r4, #0x2c]
0076c510  30 10 84 e5                                      str r1, [r4, #0x30]
0076c514  6a ff ff ea                                      b #0x76c2c4

; FUNCTION 0x0076c518, declared_size=528, range_size=528, mode=arm
; class-group: gameswf::as_object
; alias: _ZN7gameswf9as_object10this_aliveEv
; demangled: gameswf::as_object::this_alive()
; decoder-mode: arm
0076c518  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0076c51c  30 30 90 e5                                      ldr r3, [r0, #0x30]
0076c520  00 50 a0 e1                                      mov r5, r0
0076c524  00 00 53 e3                                      cmp r3, #0
0076c528  1b 00 00 0a                                      beq #0x76c59c
0076c52c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0076c530  04 20 d0 e5                                      ldrb r2, [r0, #4]
0076c534  00 00 52 e3                                      cmp r2, #0
0076c538  26 00 00 0a                                      beq #0x76c5d8
0076c53c  30 30 93 e5                                      ldr r3, [r3, #0x30]
0076c540  34 20 95 e5                                      ldr r2, [r5, #0x34]
0076c544  03 00 52 e1                                      cmp r2, r3
0076c548  13 00 00 0a                                      beq #0x76c59c
0076c54c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0076c550  34 30 85 e5                                      str r3, [r5, #0x34]
0076c554  00 00 52 e3                                      cmp r2, #0
0076c558  05 00 00 0a                                      beq #0x76c574
0076c55c  04 10 92 e5                                      ldr r1, [r2, #4]
0076c560  00 00 51 e3                                      cmp r1, #0
0076c564  00 40 a0 b3                                      movlt r4, #0
0076c568  0c 00 00 aa                                      bge #0x76c5a0
0076c56c  0c a0 95 e2                                      adds sl, r5, #0xc
0076c570  2a 00 00 1a                                      bne #0x76c620
0076c574  28 30 95 e5                                      ldr r3, [r5, #0x28]
0076c578  00 00 53 e3                                      cmp r3, #0
0076c57c  03 00 00 0a                                      beq #0x76c590
0076c580  03 00 a0 e1                                      mov r0, r3
0076c584  00 30 93 e5                                      ldr r3, [r3]
0076c588  0f e0 a0 e1                                      mov lr, pc
0076c58c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0076c590  d1 31 d5 e1                                      ldrsb r3, [r5, #0x11]
0076c594  05 00 53 e3                                      cmp r3, #5
0076c598  18 00 00 0a                                      beq #0x76c600
0076c59c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0076c5a0  08 30 a0 e3                                      mov r3, #8
0076c5a4  00 40 a0 e3                                      mov r4, #0
0076c5a8  03 00 92 e7                                      ldr r0, [r2, r3]
0076c5ac  03 c0 82 e0                                      add ip, r2, r3
0076c5b0  28 30 83 e2                                      add r3, r3, #0x28
0076c5b4  02 00 70 e3                                      cmn r0, #2
0076c5b8  02 00 00 0a                                      beq #0x76c5c8
0076c5bc  04 00 9c e5                                      ldr r0, [ip, #4]
0076c5c0  01 00 70 e3                                      cmn r0, #1
0076c5c4  e8 ff ff 1a                                      bne #0x76c56c
0076c5c8  01 40 84 e2                                      add r4, r4, #1
0076c5cc  01 00 54 e1                                      cmp r4, r1
0076c5d0  f4 ff ff da                                      ble #0x76c5a8
0076c5d4  e4 ff ff ea                                      b #0x76c56c
0076c5d8  00 10 90 e5                                      ldr r1, [r0]
0076c5dc  01 10 41 e2                                      sub r1, r1, #1
0076c5e0  00 00 51 e3                                      cmp r1, #0
0076c5e4  00 10 80 e5                                      str r1, [r0]
0076c5e8  00 00 00 1a                                      bne #0x76c5f0
0076c5ec  51 99 ff eb                                      bl #0x752b38
0076c5f0  00 30 a0 e3                                      mov r3, #0
0076c5f4  30 30 85 e5                                      str r3, [r5, #0x30]
0076c5f8  2c 30 85 e5                                      str r3, [r5, #0x2c]
0076c5fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0076c600  14 30 95 e5                                      ldr r3, [r5, #0x14]
0076c604  00 00 53 e3                                      cmp r3, #0
0076c608  e3 ff ff 0a                                      beq #0x76c59c
0076c60c  03 00 a0 e1                                      mov r0, r3
0076c610  00 30 93 e5                                      ldr r3, [r3]
0076c614  0f e0 a0 e1                                      mov lr, pc
0076c618  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0076c61c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0076c620  00 20 9a e5                                      ldr r2, [sl]
0076c624  00 80 a0 e3                                      mov r8, #0
0076c628  02 00 00 ea                                      b #0x76c638
0076c62c  04 10 90 e5                                      ldr r1, [r0, #4]
0076c630  01 00 71 e3                                      cmn r1, #1
0076c634  16 00 00 0a                                      beq #0x76c694
0076c638  04 71 84 e0                                      add r7, r4, r4, lsl #2
0076c63c  01 70 87 e2                                      add r7, r7, #1
0076c640  87 71 a0 e1                                      lsl r7, r7, #3
0076c644  00 00 52 e3                                      cmp r2, #0
0076c648  c9 ff ff 0a                                      beq #0x76c574
0076c64c  04 c0 92 e5                                      ldr ip, [r2, #4]
0076c650  0c 00 54 e1                                      cmp r4, ip
0076c654  c6 ff ff ca                                      bgt #0x76c574
0076c658  07 30 82 e0                                      add r3, r2, r7
0076c65c  dd 11 d3 e1                                      ldrsb r1, [r3, #0x1d]
0076c660  05 00 51 e3                                      cmp r1, #5
0076c664  0e 00 00 0a                                      beq #0x76c6a4
0076c668  01 40 84 e2                                      add r4, r4, #1
0076c66c  0c 00 54 e1                                      cmp r4, ip
0076c670  f0 ff ff ca                                      bgt #0x76c638
0076c674  04 31 84 e0                                      add r3, r4, r4, lsl #2
0076c678  01 30 83 e2                                      add r3, r3, #1
0076c67c  83 31 a0 e1                                      lsl r3, r3, #3
0076c680  03 10 92 e7                                      ldr r1, [r2, r3]
0076c684  03 00 82 e0                                      add r0, r2, r3
0076c688  28 30 83 e2                                      add r3, r3, #0x28
0076c68c  02 00 71 e3                                      cmn r1, #2
0076c690  e5 ff ff 1a                                      bne #0x76c62c
0076c694  01 40 84 e2                                      add r4, r4, #1
0076c698  04 00 5c e1                                      cmp ip, r4
0076c69c  e5 ff ff ba                                      blt #0x76c638
0076c6a0  f6 ff ff ea                                      b #0x76c680
0076c6a4  20 60 93 e5                                      ldr r6, [r3, #0x20]
0076c6a8  00 00 56 e3                                      cmp r6, #0
0076c6ac  ed ff ff 0a                                      beq #0x76c668
0076c6b0  30 30 95 e5                                      ldr r3, [r5, #0x30]
0076c6b4  00 00 53 e3                                      cmp r3, #0
0076c6b8  03 00 00 0a                                      beq #0x76c6cc
0076c6bc  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0076c6c0  04 20 d0 e5                                      ldrb r2, [r0, #4]
0076c6c4  00 00 52 e3                                      cmp r2, #0
0076c6c8  0c 00 00 0a                                      beq #0x76c700
0076c6cc  30 30 93 e5                                      ldr r3, [r3, #0x30]
0076c6d0  34 20 96 e5                                      ldr r2, [r6, #0x34]
0076c6d4  03 00 52 e1                                      cmp r2, r3
0076c6d8  03 00 00 0a                                      beq #0x76c6ec
0076c6dc  06 00 a0 e1                                      mov r0, r6
0076c6e0  00 30 96 e5                                      ldr r3, [r6]
0076c6e4  0f e0 a0 e1                                      mov lr, pc
0076c6e8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0076c6ec  00 20 9a e5                                      ldr r2, [sl]
0076c6f0  04 c0 92 e5                                      ldr ip, [r2, #4]
0076c6f4  0c 00 54 e1                                      cmp r4, ip
0076c6f8  d1 ff ff ca                                      bgt #0x76c644
0076c6fc  d9 ff ff ea                                      b #0x76c668
0076c700  00 10 90 e5                                      ldr r1, [r0]
0076c704  01 10 41 e2                                      sub r1, r1, #1
0076c708  00 00 51 e3                                      cmp r1, #0
0076c70c  00 10 80 e5                                      str r1, [r0]
0076c710  00 00 00 1a                                      bne #0x76c718
0076c714  07 99 ff eb                                      bl #0x752b38
0076c718  2c 80 85 e5                                      str r8, [r5, #0x2c]
0076c71c  30 80 85 e5                                      str r8, [r5, #0x30]
0076c720  08 30 a0 e1                                      mov r3, r8
0076c724  e8 ff ff ea                                      b #0x76c6cc

; FUNCTION 0x00780374, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::as_object
; alias: _ZNK7gameswf9as_object10get_playerEv
; demangled: gameswf::as_object::get_player() const
; decoder-mode: arm
00780374  10 40 2d e9                                      push {r4, lr}
00780378  00 40 a0 e1                                      mov r4, r0
0078037c  30 00 90 e5                                      ldr r0, [r0, #0x30]
00780380  00 00 50 e3                                      cmp r0, #0
00780384  03 00 00 0a                                      beq #0x780398
00780388  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0078038c  04 20 d3 e5                                      ldrb r2, [r3, #4]
00780390  00 00 52 e3                                      cmp r2, #0
00780394  00 00 00 0a                                      beq #0x78039c
00780398  10 80 bd e8                                      pop {r4, pc}
0078039c  00 10 93 e5                                      ldr r1, [r3]
007803a0  01 10 41 e2                                      sub r1, r1, #1
007803a4  00 00 51 e3                                      cmp r1, #0
007803a8  00 10 83 e5                                      str r1, [r3]
007803ac  01 00 00 1a                                      bne #0x7803b8
007803b0  03 00 a0 e1                                      mov r0, r3
007803b4  df 49 ff eb                                      bl #0x752b38
007803b8  00 00 a0 e3                                      mov r0, #0
007803bc  30 00 84 e5                                      str r0, [r4, #0x30]
007803c0  2c 00 84 e5                                      str r0, [r4, #0x2c]
007803c4  10 80 bd e8                                      pop {r4, pc}
