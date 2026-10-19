; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c287c, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_function
; alias: _ZNK7gameswf11as_function2isEi
; demangled: gameswf::as_function::is(int) const
; decoder-mode: arm
007c287c  04 00 51 e3                                      cmp r1, #4
007c2880  01 00 a0 03                                      moveq r0, #1
007c2884  1e ff 2f 01                                      bxeq lr
007c2888  01 00 71 e2                                      rsbs r0, r1, #1
007c288c  00 00 a0 33                                      movlo r0, #0
007c2890  1e ff 2f e1                                      bx lr

; FUNCTION 0x007c2894, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::as_function
; alias: _ZN7gameswf11as_function7_typeofEv
; demangled: gameswf::as_function::_typeof()
; decoder-mode: arm
007c2894  04 00 9f e5                                      ldr r0, [pc, #4]
007c2898  00 00 8f e0                                      add r0, pc, r0
007c289c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007c28a0  00 88 14 00                                      .byte 0x00, 0x88, 0x14, 0x00

; FUNCTION 0x007c28c8, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::as_function
; alias: _ZN7gameswf11as_function10clear_refsEPNS_4hashIPNS_9as_objectEbNS_15fixed_size_hashIS3_EEEES3_
; demangled: gameswf::as_function::clear_refs(gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >*, gameswf::as_object*)
; decoder-mode: arm
007c28c8  70 40 2d e9                                      push {r4, r5, r6, lr}
007c28cc  08 d0 4d e2                                      sub sp, sp, #8
007c28d0  08 30 8d e2                                      add r3, sp, #8
007c28d4  04 00 23 e5                                      str r0, [r3, #-4]!
007c28d8  01 40 a0 e1                                      mov r4, r1
007c28dc  00 50 a0 e1                                      mov r5, r0
007c28e0  03 10 a0 e1                                      mov r1, r3
007c28e4  04 00 a0 e1                                      mov r0, r4
007c28e8  02 60 a0 e1                                      mov r6, r2
007c28ec  a5 98 fe eb                                      bl #0x768b88
007c28f0  00 00 50 e3                                      cmp r0, #0
007c28f4  01 00 00 ba                                      blt #0x7c2900
007c28f8  08 d0 8d e2                                      add sp, sp, #8
007c28fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c2900  05 00 a0 e1                                      mov r0, r5
007c2904  04 10 a0 e1                                      mov r1, r4
007c2908  06 20 a0 e1                                      mov r2, r6
007c290c  27 9d fe eb                                      bl #0x769db0
007c2910  38 30 95 e5                                      ldr r3, [r5, #0x38]
007c2914  00 00 53 e3                                      cmp r3, #0
007c2918  f6 ff ff 0a                                      beq #0x7c28f8
007c291c  03 00 56 e1                                      cmp r6, r3
007c2920  06 00 00 0a                                      beq #0x7c2940
007c2924  03 00 a0 e1                                      mov r0, r3
007c2928  04 10 a0 e1                                      mov r1, r4
007c292c  06 20 a0 e1                                      mov r2, r6
007c2930  00 30 93 e5                                      ldr r3, [r3]
007c2934  0f e0 a0 e1                                      mov lr, pc
007c2938  40 f0 93 e5                                      ldr pc, [r3, #0x40]
007c293c  ed ff ff ea                                      b #0x7c28f8
007c2940  38 00 85 e2                                      add r0, r5, #0x38
007c2944  00 10 a0 e3                                      mov r1, #0
007c2948  de 98 fe eb                                      bl #0x768cc8
007c294c  e9 ff ff ea                                      b #0x7c28f8

; FUNCTION 0x007c2990, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::as_function
; alias: _ZN7gameswf11as_function10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::as_function::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
007c2990  70 40 2d e9                                      push {r4, r5, r6, lr}
007c2994  d0 30 d1 e1                                      ldrsb r3, [r1]
007c2998  00 50 a0 e1                                      mov r5, r0
007c299c  01 40 a0 e1                                      mov r4, r1
007c29a0  01 00 73 e3                                      cmn r3, #1
007c29a4  01 00 81 12                                      addne r0, r1, #1
007c29a8  0c 00 91 05                                      ldreq r0, [r1, #0xc]
007c29ac  38 10 9f e5                                      ldr r1, [pc, #0x38]
007c29b0  02 60 a0 e1                                      mov r6, r2
007c29b4  01 10 8f e0                                      add r1, pc, r1
007c29b8  d4 3c fe eb                                      bl #0x751d10
007c29bc  00 00 50 e3                                      cmp r0, #0
007c29c0  04 00 00 0a                                      beq #0x7c29d8
007c29c4  05 00 a0 e1                                      mov r0, r5
007c29c8  04 10 a0 e1                                      mov r1, r4
007c29cc  06 20 a0 e1                                      mov r2, r6
007c29d0  70 40 bd e8                                      pop {r4, r5, r6, lr}
007c29d4  de 99 fe ea                                      b #0x769154
007c29d8  06 00 a0 e1                                      mov r0, r6
007c29dc  38 10 95 e5                                      ldr r1, [r5, #0x38]
007c29e0  1a 52 ff eb                                      bl #0x797250
007c29e4  01 00 a0 e3                                      mov r0, #1
007c29e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007c29ec  7c 66 14 00                                      .byte 0x7c, 0x66, 0x14, 0x00

; FUNCTION 0x007c29f0, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::as_function
; alias: _ZN7gameswf11as_function10set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::as_function::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
007c29f0  70 40 2d e9                                      push {r4, r5, r6, lr}
007c29f4  d0 30 d1 e1                                      ldrsb r3, [r1]
007c29f8  00 50 a0 e1                                      mov r5, r0
007c29fc  01 40 a0 e1                                      mov r4, r1
007c2a00  01 00 73 e3                                      cmn r3, #1
007c2a04  01 00 81 12                                      addne r0, r1, #1
007c2a08  0c 00 91 05                                      ldreq r0, [r1, #0xc]
007c2a0c  40 10 9f e5                                      ldr r1, [pc, #0x40]
007c2a10  02 60 a0 e1                                      mov r6, r2
007c2a14  01 10 8f e0                                      add r1, pc, r1
007c2a18  bc 3c fe eb                                      bl #0x751d10
007c2a1c  00 10 50 e2                                      subs r1, r0, #0
007c2a20  06 00 00 1a                                      bne #0x7c2a40
007c2a24  d1 30 d6 e1                                      ldrsb r3, [r6, #1]
007c2a28  38 00 85 e2                                      add r0, r5, #0x38
007c2a2c  05 00 53 e3                                      cmp r3, #5
007c2a30  04 10 96 05                                      ldreq r1, [r6, #4]
007c2a34  a3 98 fe eb                                      bl #0x768cc8
007c2a38  01 00 a0 e3                                      mov r0, #1
007c2a3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c2a40  05 00 a0 e1                                      mov r0, r5
007c2a44  04 10 a0 e1                                      mov r1, r4
007c2a48  06 20 a0 e1                                      mov r2, r6
007c2a4c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007c2a50  e2 a5 fe ea                                      b #0x76c1e0
; mapping-symbol data/literal pool
007c2a54  1c 66 14 00                                      .byte 0x1c, 0x66, 0x14, 0x00

; FUNCTION 0x007c2a58, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::as_function
; alias: _ZN7gameswf11as_function9to_stringEv
; demangled: gameswf::as_function::to_string()
; decoder-mode: arm
007c2a58  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
007c2a5c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007c2a60  10 40 2d e9                                      push {r4, lr}
007c2a64  0c c0 8f e0                                      add ip, pc, ip
007c2a68  03 40 9c e7                                      ldr r4, [ip, r3]
007c2a6c  20 20 9f e5                                      ldr r2, [pc, #0x20]
007c2a70  00 30 a0 e1                                      mov r3, r0
007c2a74  32 10 a0 e3                                      mov r1, #0x32
007c2a78  02 20 8f e0                                      add r2, pc, r2
007c2a7c  04 00 a0 e1                                      mov r0, r4
007c2a80  ef 2d ed eb                                      bl #0x30e244
007c2a84  04 00 a0 e1                                      mov r0, r4
007c2a88  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007c2a8c  2c 20 1d 00 a0 31 00 00 30 86 14 00              .byte 0x2c, 0x20, 0x1d, 0x00, 0xa0, 0x31, 0x00, 0x00, 0x30, 0x86, 0x14, 0x00

; FUNCTION 0x007c2fc4, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::as_function
; alias: _ZN7gameswf11as_functionD1Ev
; demangled: gameswf::as_function::~as_function()
; decoder-mode: arm
007c2fc4  10 40 2d e9                                      push {r4, lr}
007c2fc8  34 30 9f e5                                      ldr r3, [pc, #0x34]
007c2fcc  34 20 9f e5                                      ldr r2, [pc, #0x34]
007c2fd0  00 40 a0 e1                                      mov r4, r0
007c2fd4  03 30 8f e0                                      add r3, pc, r3
007c2fd8  38 00 90 e5                                      ldr r0, [r0, #0x38]
007c2fdc  02 20 93 e7                                      ldr r2, [r3, r2]
007c2fe0  00 00 50 e3                                      cmp r0, #0
007c2fe4  08 20 82 e2                                      add r2, r2, #8
007c2fe8  00 20 84 e5                                      str r2, [r4]
007c2fec  00 00 00 0a                                      beq #0x7c2ff4
007c2ff0  92 5c fe eb                                      bl #0x75a240
007c2ff4  04 00 a0 e1                                      mov r0, r4
007c2ff8  a7 9a fe eb                                      bl #0x769a9c
007c2ffc  04 00 a0 e1                                      mov r0, r4
007c3000  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007c3004  bc 1a 1d 00 88 27 00 00                          .byte 0xbc, 0x1a, 0x1d, 0x00, 0x88, 0x27, 0x00, 0x00

; FUNCTION 0x007c316c, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::as_function
; alias: _ZN7gameswf11as_functionD0Ev
; demangled: gameswf::as_function::~as_function()
; decoder-mode: arm
007c316c  10 40 2d e9                                      push {r4, lr}
007c3170  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
007c3174  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
007c3178  00 40 a0 e1                                      mov r4, r0
007c317c  03 30 8f e0                                      add r3, pc, r3
007c3180  38 00 90 e5                                      ldr r0, [r0, #0x38]
007c3184  02 20 93 e7                                      ldr r2, [r3, r2]
007c3188  00 00 50 e3                                      cmp r0, #0
007c318c  08 20 82 e2                                      add r2, r2, #8
007c3190  00 20 84 e5                                      str r2, [r4]
007c3194  00 00 00 0a                                      beq #0x7c319c
007c3198  28 5c fe eb                                      bl #0x75a240
007c319c  04 00 a0 e1                                      mov r0, r4
007c31a0  3d 9a fe eb                                      bl #0x769a9c
007c31a4  04 00 a0 e1                                      mov r0, r4
007c31a8  40 2c ed eb                                      bl #0x30e2b0
007c31ac  04 00 a0 e1                                      mov r0, r4
007c31b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007c31b4  14 19 1d 00 88 27 00 00                          .byte 0x14, 0x19, 0x1d, 0x00, 0x88, 0x27, 0x00, 0x00

; FUNCTION 0x007c40a4, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::as_function
; alias: _ZN7gameswf11as_function10this_aliveEv
; demangled: gameswf::as_function::this_alive()
; decoder-mode: arm
007c40a4  10 40 2d e9                                      push {r4, lr}
007c40a8  30 30 90 e5                                      ldr r3, [r0, #0x30]
007c40ac  00 40 a0 e1                                      mov r4, r0
007c40b0  00 00 53 e3                                      cmp r3, #0
007c40b4  07 00 00 0a                                      beq #0x7c40d8
007c40b8  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
007c40bc  04 20 d0 e5                                      ldrb r2, [r0, #4]
007c40c0  00 00 52 e3                                      cmp r2, #0
007c40c4  0f 00 00 0a                                      beq #0x7c4108
007c40c8  30 30 93 e5                                      ldr r3, [r3, #0x30]
007c40cc  34 20 94 e5                                      ldr r2, [r4, #0x34]
007c40d0  03 00 52 e1                                      cmp r2, r3
007c40d4  0a 00 00 0a                                      beq #0x7c4104
007c40d8  04 00 a0 e1                                      mov r0, r4
007c40dc  0d a1 fe eb                                      bl #0x76c518
007c40e0  38 30 94 e5                                      ldr r3, [r4, #0x38]
007c40e4  00 00 53 e3                                      cmp r3, #0
007c40e8  04 00 00 0a                                      beq #0x7c4100
007c40ec  03 00 a0 e1                                      mov r0, r3
007c40f0  00 30 93 e5                                      ldr r3, [r3]
007c40f4  0f e0 a0 e1                                      mov lr, pc
007c40f8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
007c40fc  10 80 bd e8                                      pop {r4, pc}
007c4100  10 80 bd e8                                      pop {r4, pc}
007c4104  10 80 bd e8                                      pop {r4, pc}
007c4108  00 10 90 e5                                      ldr r1, [r0]
007c410c  01 10 41 e2                                      sub r1, r1, #1
007c4110  00 00 51 e3                                      cmp r1, #0
007c4114  00 10 80 e5                                      str r1, [r0]
007c4118  00 00 00 1a                                      bne #0x7c4120
007c411c  85 3a fe eb                                      bl #0x752b38
007c4120  00 30 a0 e3                                      mov r3, #0
007c4124  30 30 84 e5                                      str r3, [r4, #0x30]
007c4128  2c 30 84 e5                                      str r3, [r4, #0x2c]
007c412c  e9 ff ff ea                                      b #0x7c40d8
