; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a6b7c, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_timer
; alias: _ZNK7gameswf8as_timer2isEi
; demangled: gameswf::as_timer::is(int) const
; decoder-mode: arm
007a6b7c  25 00 51 e3                                      cmp r1, #0x25
007a6b80  01 00 a0 03                                      moveq r0, #1
007a6b84  1e ff 2f 01                                      bxeq lr
007a6b88  01 00 71 e2                                      rsbs r0, r1, #1
007a6b8c  00 00 a0 33                                      movlo r0, #0
007a6b90  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a6b94, declared_size=532, range_size=532, mode=arm
; class-group: gameswf::as_timer
; alias: _ZN7gameswf8as_timer10clear_refsEPNS_4hashIPNS_9as_objectEbNS_15fixed_size_hashIS3_EEEES3_
; demangled: gameswf::as_timer::clear_refs(gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >*, gameswf::as_object*)
; decoder-mode: arm
007a6b94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007a6b98  3c d0 4d e2                                      sub sp, sp, #0x3c
007a6b9c  38 30 8d e2                                      add r3, sp, #0x38
007a6ba0  04 00 23 e5                                      str r0, [r3, #-4]!
007a6ba4  01 80 a0 e1                                      mov r8, r1
007a6ba8  00 60 a0 e1                                      mov r6, r0
007a6bac  03 10 a0 e1                                      mov r1, r3
007a6bb0  08 00 a0 e1                                      mov r0, r8
007a6bb4  02 70 a0 e1                                      mov r7, r2
007a6bb8  f2 07 ff eb                                      bl #0x768b88
007a6bbc  00 00 50 e3                                      cmp r0, #0
007a6bc0  01 00 00 ba                                      blt #0x7a6bcc
007a6bc4  3c d0 8d e2                                      add sp, sp, #0x3c
007a6bc8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007a6bcc  06 00 a0 e1                                      mov r0, r6
007a6bd0  08 10 a0 e1                                      mov r1, r8
007a6bd4  07 20 a0 e1                                      mov r2, r7
007a6bd8  74 0c ff eb                                      bl #0x769db0
007a6bdc  dd 33 d6 e1                                      ldrsb r3, [r6, #0x3d]
007a6be0  05 00 53 e3                                      cmp r3, #5
007a6be4  31 00 00 0a                                      beq #0x7a6cb0
007a6be8  d9 34 d6 e1                                      ldrsb r3, [r6, #0x49]
007a6bec  05 00 53 e3                                      cmp r3, #5
007a6bf0  3c 00 00 0a                                      beq #0x7a6ce8
007a6bf4  5c c0 96 e5                                      ldr ip, [r6, #0x5c]
007a6bf8  00 00 5c e3                                      cmp ip, #0
007a6bfc  f0 ff ff da                                      ble #0x7a6bc4
007a6c00  00 40 a0 e3                                      mov r4, #0
007a6c04  04 a0 8d e2                                      add sl, sp, #4
007a6c08  04 50 a0 e1                                      mov r5, r4
007a6c0c  04 90 8a e2                                      add sb, sl, #4
007a6c10  28 b0 8d e2                                      add fp, sp, #0x28
007a6c14  03 00 00 ea                                      b #0x7a6c28
007a6c18  01 50 85 e2                                      add r5, r5, #1
007a6c1c  0c 00 55 e1                                      cmp r5, ip
007a6c20  0c 40 84 e2                                      add r4, r4, #0xc
007a6c24  e6 ff ff aa                                      bge #0x7a6bc4
007a6c28  58 00 96 e5                                      ldr r0, [r6, #0x58]
007a6c2c  04 00 80 e0                                      add r0, r0, r4
007a6c30  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
007a6c34  05 00 53 e3                                      cmp r3, #5
007a6c38  f6 ff ff 1a                                      bne #0x7a6c18
007a6c3c  04 30 90 e5                                      ldr r3, [r0, #4]
007a6c40  08 10 a0 e1                                      mov r1, r8
007a6c44  07 20 a0 e1                                      mov r2, r7
007a6c48  00 00 53 e3                                      cmp r3, #0
007a6c4c  f1 ff ff 0a                                      beq #0x7a6c18
007a6c50  03 00 57 e1                                      cmp r7, r3
007a6c54  05 00 00 0a                                      beq #0x7a6c70
007a6c58  03 00 a0 e1                                      mov r0, r3
007a6c5c  00 30 93 e5                                      ldr r3, [r3]
007a6c60  0f e0 a0 e1                                      mov lr, pc
007a6c64  40 f0 93 e5                                      ldr pc, [r3, #0x40]
007a6c68  5c c0 96 e5                                      ldr ip, [r6, #0x5c]
007a6c6c  e9 ff ff ea                                      b #0x7a6c18
007a6c70  00 20 a0 e3                                      mov r2, #0
007a6c74  00 30 a0 e3                                      mov r3, #0
007a6c78  f8 22 cd e1                                      strd r2, r3, [sp, #0x28]
007a6c7c  04 30 9b e5                                      ldr r3, [fp, #4]
007a6c80  00 20 a0 e3                                      mov r2, #0
007a6c84  0a 10 a0 e1                                      mov r1, sl
007a6c88  0c 00 89 e8                                      stm sb, {r2, r3}
007a6c8c  02 20 a0 e3                                      mov r2, #2
007a6c90  00 30 a0 e3                                      mov r3, #0
007a6c94  04 30 cd e5                                      strb r3, [sp, #4]
007a6c98  05 20 cd e5                                      strb r2, [sp, #5]
007a6c9c  a6 c2 ff eb                                      bl #0x79773c
007a6ca0  0a 00 a0 e1                                      mov r0, sl
007a6ca4  1e c1 ff eb                                      bl #0x797124
007a6ca8  5c c0 96 e5                                      ldr ip, [r6, #0x5c]
007a6cac  d9 ff ff ea                                      b #0x7a6c18
007a6cb0  40 30 96 e5                                      ldr r3, [r6, #0x40]
007a6cb4  00 00 53 e3                                      cmp r3, #0
007a6cb8  ca ff ff 0a                                      beq #0x7a6be8
007a6cbc  03 00 57 e1                                      cmp r7, r3
007a6cc0  14 00 00 0a                                      beq #0x7a6d18
007a6cc4  03 00 a0 e1                                      mov r0, r3
007a6cc8  08 10 a0 e1                                      mov r1, r8
007a6ccc  00 30 93 e5                                      ldr r3, [r3]
007a6cd0  07 20 a0 e1                                      mov r2, r7
007a6cd4  0f e0 a0 e1                                      mov lr, pc
007a6cd8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
007a6cdc  d9 34 d6 e1                                      ldrsb r3, [r6, #0x49]
007a6ce0  05 00 53 e3                                      cmp r3, #5
007a6ce4  c2 ff ff 1a                                      bne #0x7a6bf4
007a6ce8  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
007a6cec  00 00 53 e3                                      cmp r3, #0
007a6cf0  bf ff ff 0a                                      beq #0x7a6bf4
007a6cf4  03 00 57 e1                                      cmp r7, r3
007a6cf8  18 00 00 0a                                      beq #0x7a6d60
007a6cfc  03 00 a0 e1                                      mov r0, r3
007a6d00  08 10 a0 e1                                      mov r1, r8
007a6d04  00 30 93 e5                                      ldr r3, [r3]
007a6d08  07 20 a0 e1                                      mov r2, r7
007a6d0c  0f e0 a0 e1                                      mov lr, pc
007a6d10  40 f0 93 e5                                      ldr pc, [r3, #0x40]
007a6d14  b6 ff ff ea                                      b #0x7a6bf4
007a6d18  00 20 a0 e3                                      mov r2, #0
007a6d1c  00 30 a0 e3                                      mov r3, #0
007a6d20  f8 22 cd e1                                      strd r2, r3, [sp, #0x28]
007a6d24  00 30 a0 e3                                      mov r3, #0
007a6d28  1c 30 cd e5                                      strb r3, [sp, #0x1c]
007a6d2c  02 30 a0 e3                                      mov r3, #2
007a6d30  1d 30 cd e5                                      strb r3, [sp, #0x1d]
007a6d34  00 30 a0 e3                                      mov r3, #0
007a6d38  20 30 8d e5                                      str r3, [sp, #0x20]
007a6d3c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007a6d40  1c 40 8d e2                                      add r4, sp, #0x1c
007a6d44  3c 00 86 e2                                      add r0, r6, #0x3c
007a6d48  04 10 a0 e1                                      mov r1, r4
007a6d4c  08 30 84 e5                                      str r3, [r4, #8]
007a6d50  79 c2 ff eb                                      bl #0x79773c
007a6d54  04 00 a0 e1                                      mov r0, r4
007a6d58  f1 c0 ff eb                                      bl #0x797124
007a6d5c  a1 ff ff ea                                      b #0x7a6be8
007a6d60  00 20 a0 e3                                      mov r2, #0
007a6d64  00 30 a0 e3                                      mov r3, #0
007a6d68  f8 22 cd e1                                      strd r2, r3, [sp, #0x28]
007a6d6c  00 30 a0 e3                                      mov r3, #0
007a6d70  10 30 cd e5                                      strb r3, [sp, #0x10]
007a6d74  02 30 a0 e3                                      mov r3, #2
007a6d78  11 30 cd e5                                      strb r3, [sp, #0x11]
007a6d7c  00 30 a0 e3                                      mov r3, #0
007a6d80  14 30 8d e5                                      str r3, [sp, #0x14]
007a6d84  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007a6d88  10 40 8d e2                                      add r4, sp, #0x10
007a6d8c  48 00 86 e2                                      add r0, r6, #0x48
007a6d90  04 10 a0 e1                                      mov r1, r4
007a6d94  08 30 84 e5                                      str r3, [r4, #8]
007a6d98  67 c2 ff eb                                      bl #0x79773c
007a6d9c  04 00 a0 e1                                      mov r0, r4
007a6da0  df c0 ff eb                                      bl #0x797124
007a6da4  92 ff ff ea                                      b #0x7a6bf4

; FUNCTION 0x007a6da8, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::as_timer
; alias: _ZN7gameswf8as_timer5clearEv
; demangled: gameswf::as_timer::clear()
; decoder-mode: arm
007a6da8  10 40 2d e9                                      push {r4, lr}
007a6dac  00 30 90 e5                                      ldr r3, [r0]
007a6db0  00 40 a0 e1                                      mov r4, r0
007a6db4  0f e0 a0 e1                                      mov lr, pc
007a6db8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
007a6dbc  04 10 a0 e1                                      mov r1, r4
007a6dc0  b8 00 80 e2                                      add r0, r0, #0xb8
007a6dc4  10 40 bd e8                                      pop {r4, lr}
007a6dc8  1d e8 fe ea                                      b #0x760e44

; FUNCTION 0x007a6e48, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::as_timer
; alias: _ZN7gameswf8as_timerD1Ev
; demangled: gameswf::as_timer::~as_timer()
; decoder-mode: arm
007a6e48  50 30 9f e5                                      ldr r3, [pc, #0x50]
007a6e4c  50 20 9f e5                                      ldr r2, [pc, #0x50]
007a6e50  70 40 2d e9                                      push {r4, r5, r6, lr}
007a6e54  03 30 8f e0                                      add r3, pc, r3
007a6e58  02 20 93 e7                                      ldr r2, [r3, r2]
007a6e5c  00 50 a0 e1                                      mov r5, r0
007a6e60  00 40 a0 e1                                      mov r4, r0
007a6e64  08 20 82 e2                                      add r2, r2, #8
007a6e68  58 20 85 e4                                      str r2, [r5], #0x58
007a6e6c  05 00 a0 e1                                      mov r0, r5
007a6e70  d5 ff ff eb                                      bl #0x7a6dcc
007a6e74  00 10 a0 e3                                      mov r1, #0
007a6e78  05 00 a0 e1                                      mov r0, r5
007a6e7c  62 cd fe eb                                      bl #0x75a40c
007a6e80  48 00 84 e2                                      add r0, r4, #0x48
007a6e84  a6 c0 ff eb                                      bl #0x797124
007a6e88  3c 00 84 e2                                      add r0, r4, #0x3c
007a6e8c  a4 c0 ff eb                                      bl #0x797124
007a6e90  04 00 a0 e1                                      mov r0, r4
007a6e94  00 0b ff eb                                      bl #0x769a9c
007a6e98  04 00 a0 e1                                      mov r0, r4
007a6e9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a6ea0  3c dc 1e 00 fc 16 00 00                          .byte 0x3c, 0xdc, 0x1e, 0x00, 0xfc, 0x16, 0x00, 0x00

; FUNCTION 0x007a6ea8, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_timer
; alias: _ZN7gameswf8as_timerD0Ev
; demangled: gameswf::as_timer::~as_timer()
; decoder-mode: arm
007a6ea8  10 40 2d e9                                      push {r4, lr}
007a6eac  00 40 a0 e1                                      mov r4, r0
007a6eb0  e4 ff ff eb                                      bl #0x7a6e48
007a6eb4  04 00 a0 e1                                      mov r0, r4
007a6eb8  fc 9c ed eb                                      bl #0x30e2b0
007a6ebc  04 00 a0 e1                                      mov r0, r4
007a6ec0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a6ec4, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::as_timer
; alias: _ZN7gameswf8as_timerD2Ev
; demangled: gameswf::as_timer::~as_timer()
; decoder-mode: arm
007a6ec4  50 30 9f e5                                      ldr r3, [pc, #0x50]
007a6ec8  50 20 9f e5                                      ldr r2, [pc, #0x50]
007a6ecc  70 40 2d e9                                      push {r4, r5, r6, lr}
007a6ed0  03 30 8f e0                                      add r3, pc, r3
007a6ed4  02 20 93 e7                                      ldr r2, [r3, r2]
007a6ed8  00 50 a0 e1                                      mov r5, r0
007a6edc  00 40 a0 e1                                      mov r4, r0
007a6ee0  08 20 82 e2                                      add r2, r2, #8
007a6ee4  58 20 85 e4                                      str r2, [r5], #0x58
007a6ee8  05 00 a0 e1                                      mov r0, r5
007a6eec  b6 ff ff eb                                      bl #0x7a6dcc
007a6ef0  00 10 a0 e3                                      mov r1, #0
007a6ef4  05 00 a0 e1                                      mov r0, r5
007a6ef8  43 cd fe eb                                      bl #0x75a40c
007a6efc  48 00 84 e2                                      add r0, r4, #0x48
007a6f00  87 c0 ff eb                                      bl #0x797124
007a6f04  3c 00 84 e2                                      add r0, r4, #0x3c
007a6f08  85 c0 ff eb                                      bl #0x797124
007a6f0c  04 00 a0 e1                                      mov r0, r4
007a6f10  e1 0a ff eb                                      bl #0x769a9c
007a6f14  04 00 a0 e1                                      mov r0, r4
007a6f18  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a6f1c  c0 db 1e 00 fc 16 00 00                          .byte 0xc0, 0xdb, 0x1e, 0x00, 0xfc, 0x16, 0x00, 0x00

; FUNCTION 0x007a6f24, declared_size=320, range_size=320, mode=arm
; class-group: gameswf::as_timer
; alias: _ZN7gameswf8as_timerC2ERNS_8as_valueES2_dRKNS_7fn_callEi
; demangled: gameswf::as_timer::as_timer(gameswf::as_value&, gameswf::as_value&, double, gameswf::fn_call const&, int)
; decoder-mode: arm
007a6f24  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007a6f28  28 40 9d e5                                      ldr r4, [sp, #0x28]
007a6f2c  01 80 a0 e1                                      mov r8, r1
007a6f30  24 61 9f e5                                      ldr r6, [pc, #0x124]
007a6f34  0c 70 94 e5                                      ldr r7, [r4, #0xc]
007a6f38  00 50 a0 e1                                      mov r5, r0
007a6f3c  06 60 8f e0                                      add r6, pc, r6
007a6f40  68 10 97 e5                                      ldr r1, [r7, #0x68]
007a6f44  02 90 a0 e1                                      mov sb, r2
007a6f48  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
007a6f4c  00 00 51 e3                                      cmp r1, #0
007a6f50  03 00 00 0a                                      beq #0x7a6f64
007a6f54  64 00 97 e5                                      ldr r0, [r7, #0x64]
007a6f58  04 30 d0 e5                                      ldrb r3, [r0, #4]
007a6f5c  00 00 53 e3                                      cmp r3, #0
007a6f60  33 00 00 0a                                      beq #0x7a7034
007a6f64  05 00 a0 e1                                      mov r0, r5
007a6f68  5c 13 ff eb                                      bl #0x76bce0
007a6f6c  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
007a6f70  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
007a6f74  00 70 a0 e3                                      mov r7, #0
007a6f78  03 30 96 e7                                      ldr r3, [r6, r3]
007a6f7c  08 30 83 e2                                      add r3, r3, #8
007a6f80  00 30 85 e5                                      str r3, [r5]
007a6f84  c5 9d ed eb                                      bl #0x30e6a0
007a6f88  11 13 a0 e3                                      mov r1, #0x44000000
007a6f8c  7a 18 81 e2                                      add r1, r1, #0x7a0000
007a6f90  3f 9f ed eb                                      bl #0x30ec94
007a6f94  08 10 a0 e1                                      mov r1, r8
007a6f98  38 00 85 e5                                      str r0, [r5, #0x38]
007a6f9c  3c 70 c5 e5                                      strb r7, [r5, #0x3c]
007a6fa0  3c 00 85 e2                                      add r0, r5, #0x3c
007a6fa4  3d 70 c5 e5                                      strb r7, [r5, #0x3d]
007a6fa8  e3 c1 ff eb                                      bl #0x79773c
007a6fac  48 70 c5 e5                                      strb r7, [r5, #0x48]
007a6fb0  49 70 c5 e5                                      strb r7, [r5, #0x49]
007a6fb4  09 10 a0 e1                                      mov r1, sb
007a6fb8  48 00 85 e2                                      add r0, r5, #0x48
007a6fbc  de c1 ff eb                                      bl #0x79773c
007a6fc0  00 30 a0 e3                                      mov r3, #0
007a6fc4  64 70 c5 e5                                      strb r7, [r5, #0x64]
007a6fc8  58 70 85 e5                                      str r7, [r5, #0x58]
007a6fcc  54 30 85 e5                                      str r3, [r5, #0x54]
007a6fd0  5c 70 85 e5                                      str r7, [r5, #0x5c]
007a6fd4  60 70 85 e5                                      str r7, [r5, #0x60]
007a6fd8  10 30 94 e5                                      ldr r3, [r4, #0x10]
007a6fdc  03 00 5a e1                                      cmp sl, r3
007a6fe0  0c 00 00 aa                                      bge #0x7a7018
007a6fe4  58 70 85 e2                                      add r7, r5, #0x58
007a6fe8  0c 60 a0 e3                                      mov r6, #0xc
007a6fec  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007a6ff0  14 10 94 e5                                      ldr r1, [r4, #0x14]
007a6ff4  07 00 a0 e1                                      mov r0, r7
007a6ff8  00 30 93 e5                                      ldr r3, [r3]
007a6ffc  01 10 6a e0                                      rsb r1, sl, r1
007a7000  01 a0 8a e2                                      add sl, sl, #1
007a7004  96 31 21 e0                                      mla r1, r6, r1, r3
007a7008  22 08 ff eb                                      bl #0x769098
007a700c  10 30 94 e5                                      ldr r3, [r4, #0x10]
007a7010  0a 00 53 e1                                      cmp r3, sl
007a7014  f4 ff ff ca                                      bgt #0x7a6fec
007a7018  05 00 a0 e1                                      mov r0, r5
007a701c  22 11 ff eb                                      bl #0x76b4ac
007a7020  05 10 a0 e1                                      mov r1, r5
007a7024  b8 00 80 e2                                      add r0, r0, #0xb8
007a7028  c7 e7 fe eb                                      bl #0x760f4c
007a702c  05 00 a0 e1                                      mov r0, r5
007a7030  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007a7034  00 10 90 e5                                      ldr r1, [r0]
007a7038  01 10 41 e2                                      sub r1, r1, #1
007a703c  00 00 51 e3                                      cmp r1, #0
007a7040  00 10 80 e5                                      str r1, [r0]
007a7044  00 00 00 1a                                      bne #0x7a704c
007a7048  ba ae fe eb                                      bl #0x752b38
007a704c  00 10 a0 e3                                      mov r1, #0
007a7050  68 10 87 e5                                      str r1, [r7, #0x68]
007a7054  64 10 87 e5                                      str r1, [r7, #0x64]
007a7058  c1 ff ff ea                                      b #0x7a6f64
; mapping-symbol data/literal pool
007a705c  54 db 1e 00 fc 16 00 00                          .byte 0x54, 0xdb, 0x1e, 0x00, 0xfc, 0x16, 0x00, 0x00

; FUNCTION 0x007a7064, declared_size=320, range_size=320, mode=arm
; class-group: gameswf::as_timer
; alias: _ZN7gameswf8as_timerC1ERNS_8as_valueES2_dRKNS_7fn_callEi
; demangled: gameswf::as_timer::as_timer(gameswf::as_value&, gameswf::as_value&, double, gameswf::fn_call const&, int)
; decoder-mode: arm
007a7064  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007a7068  28 40 9d e5                                      ldr r4, [sp, #0x28]
007a706c  01 80 a0 e1                                      mov r8, r1
007a7070  24 61 9f e5                                      ldr r6, [pc, #0x124]
007a7074  0c 70 94 e5                                      ldr r7, [r4, #0xc]
007a7078  00 50 a0 e1                                      mov r5, r0
007a707c  06 60 8f e0                                      add r6, pc, r6
007a7080  68 10 97 e5                                      ldr r1, [r7, #0x68]
007a7084  02 90 a0 e1                                      mov sb, r2
007a7088  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
007a708c  00 00 51 e3                                      cmp r1, #0
007a7090  03 00 00 0a                                      beq #0x7a70a4
007a7094  64 00 97 e5                                      ldr r0, [r7, #0x64]
007a7098  04 30 d0 e5                                      ldrb r3, [r0, #4]
007a709c  00 00 53 e3                                      cmp r3, #0
007a70a0  33 00 00 0a                                      beq #0x7a7174
007a70a4  05 00 a0 e1                                      mov r0, r5
007a70a8  0c 13 ff eb                                      bl #0x76bce0
007a70ac  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
007a70b0  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
007a70b4  00 70 a0 e3                                      mov r7, #0
007a70b8  03 30 96 e7                                      ldr r3, [r6, r3]
007a70bc  08 30 83 e2                                      add r3, r3, #8
007a70c0  00 30 85 e5                                      str r3, [r5]
007a70c4  75 9d ed eb                                      bl #0x30e6a0
007a70c8  11 13 a0 e3                                      mov r1, #0x44000000
007a70cc  7a 18 81 e2                                      add r1, r1, #0x7a0000
007a70d0  ef 9e ed eb                                      bl #0x30ec94
007a70d4  08 10 a0 e1                                      mov r1, r8
007a70d8  38 00 85 e5                                      str r0, [r5, #0x38]
007a70dc  3c 70 c5 e5                                      strb r7, [r5, #0x3c]
007a70e0  3c 00 85 e2                                      add r0, r5, #0x3c
007a70e4  3d 70 c5 e5                                      strb r7, [r5, #0x3d]
007a70e8  93 c1 ff eb                                      bl #0x79773c
007a70ec  48 70 c5 e5                                      strb r7, [r5, #0x48]
007a70f0  49 70 c5 e5                                      strb r7, [r5, #0x49]
007a70f4  09 10 a0 e1                                      mov r1, sb
007a70f8  48 00 85 e2                                      add r0, r5, #0x48
007a70fc  8e c1 ff eb                                      bl #0x79773c
007a7100  00 30 a0 e3                                      mov r3, #0
007a7104  64 70 c5 e5                                      strb r7, [r5, #0x64]
007a7108  58 70 85 e5                                      str r7, [r5, #0x58]
007a710c  54 30 85 e5                                      str r3, [r5, #0x54]
007a7110  5c 70 85 e5                                      str r7, [r5, #0x5c]
007a7114  60 70 85 e5                                      str r7, [r5, #0x60]
007a7118  10 30 94 e5                                      ldr r3, [r4, #0x10]
007a711c  03 00 5a e1                                      cmp sl, r3
007a7120  0c 00 00 aa                                      bge #0x7a7158
007a7124  58 70 85 e2                                      add r7, r5, #0x58
007a7128  0c 60 a0 e3                                      mov r6, #0xc
007a712c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007a7130  14 10 94 e5                                      ldr r1, [r4, #0x14]
007a7134  07 00 a0 e1                                      mov r0, r7
007a7138  00 30 93 e5                                      ldr r3, [r3]
007a713c  01 10 6a e0                                      rsb r1, sl, r1
007a7140  01 a0 8a e2                                      add sl, sl, #1
007a7144  96 31 21 e0                                      mla r1, r6, r1, r3
007a7148  d2 07 ff eb                                      bl #0x769098
007a714c  10 30 94 e5                                      ldr r3, [r4, #0x10]
007a7150  0a 00 53 e1                                      cmp r3, sl
007a7154  f4 ff ff ca                                      bgt #0x7a712c
007a7158  05 00 a0 e1                                      mov r0, r5
007a715c  d2 10 ff eb                                      bl #0x76b4ac
007a7160  05 10 a0 e1                                      mov r1, r5
007a7164  b8 00 80 e2                                      add r0, r0, #0xb8
007a7168  77 e7 fe eb                                      bl #0x760f4c
007a716c  05 00 a0 e1                                      mov r0, r5
007a7170  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007a7174  00 10 90 e5                                      ldr r1, [r0]
007a7178  01 10 41 e2                                      sub r1, r1, #1
007a717c  00 00 51 e3                                      cmp r1, #0
007a7180  00 10 80 e5                                      str r1, [r0]
007a7184  00 00 00 1a                                      bne #0x7a718c
007a7188  6a ae fe eb                                      bl #0x752b38
007a718c  00 10 a0 e3                                      mov r1, #0
007a7190  68 10 87 e5                                      str r1, [r7, #0x68]
007a7194  64 10 87 e5                                      str r1, [r7, #0x64]
007a7198  c1 ff ff ea                                      b #0x7a70a4
; mapping-symbol data/literal pool
007a719c  14 da 1e 00 fc 16 00 00                          .byte 0x14, 0xda, 0x1e, 0x00, 0xfc, 0x16, 0x00, 0x00

; FUNCTION 0x007a71a4, declared_size=300, range_size=300, mode=arm
; class-group: gameswf::as_timer
; alias: _ZN7gameswf8as_timer7advanceEf
; demangled: gameswf::as_timer::advance(float)
; decoder-mode: arm
007a71a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a71a8  00 80 a0 e1                                      mov r8, r0
007a71ac  98 d0 4d e2                                      sub sp, sp, #0x98
007a71b0  01 00 a0 e1                                      mov r0, r1
007a71b4  54 10 98 e5                                      ldr r1, [r8, #0x54]
007a71b8  79 9e ed eb                                      bl #0x30eba4
007a71bc  38 10 98 e5                                      ldr r1, [r8, #0x38]
007a71c0  54 00 88 e5                                      str r0, [r8, #0x54]
007a71c4  ba 9c ed eb                                      bl #0x30e4b4
007a71c8  00 00 50 e3                                      cmp r0, #0
007a71cc  32 00 00 0a                                      beq #0x7a729c
007a71d0  30 10 98 e5                                      ldr r1, [r8, #0x30]
007a71d4  00 30 a0 e3                                      mov r3, #0
007a71d8  54 30 88 e5                                      str r3, [r8, #0x54]
007a71dc  00 00 51 e3                                      cmp r1, #0
007a71e0  03 00 00 0a                                      beq #0x7a71f4
007a71e4  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
007a71e8  04 30 d0 e5                                      ldrb r3, [r0, #4]
007a71ec  00 00 53 e3                                      cmp r3, #0
007a71f0  2b 00 00 0a                                      beq #0x7a72a4
007a71f4  14 40 8d e2                                      add r4, sp, #0x14
007a71f8  04 00 a0 e1                                      mov r0, r4
007a71fc  52 de fe eb                                      bl #0x75eb4c
007a7200  5c 50 98 e5                                      ldr r5, [r8, #0x5c]
007a7204  00 00 55 e3                                      cmp r5, #0
007a7208  09 00 00 da                                      ble #0x7a7234
007a720c  00 60 a0 e3                                      mov r6, #0
007a7210  06 70 a0 e1                                      mov r7, r6
007a7214  58 10 98 e5                                      ldr r1, [r8, #0x58]
007a7218  01 70 87 e2                                      add r7, r7, #1
007a721c  04 00 a0 e1                                      mov r0, r4
007a7220  06 10 81 e0                                      add r1, r1, r6
007a7224  9b 07 ff eb                                      bl #0x769098
007a7228  05 00 57 e1                                      cmp r7, r5
007a722c  0c 60 86 e2                                      add r6, r6, #0xc
007a7230  f7 ff ff 1a                                      bne #0x7a7214
007a7234  8c 60 8d e2                                      add r6, sp, #0x8c
007a7238  00 30 a0 e3                                      mov r3, #0
007a723c  06 00 a0 e1                                      mov r0, r6
007a7240  3c 10 88 e2                                      add r1, r8, #0x3c
007a7244  8d 30 cd e5                                      strb r3, [sp, #0x8d]
007a7248  8c 30 cd e5                                      strb r3, [sp, #0x8c]
007a724c  3a c1 ff eb                                      bl #0x79773c
007a7250  18 e0 9d e5                                      ldr lr, [sp, #0x18]
007a7254  70 c0 9f e5                                      ldr ip, [pc, #0x70]
007a7258  80 70 8d e2                                      add r7, sp, #0x80
007a725c  01 e0 4e e2                                      sub lr, lr, #1
007a7260  0c c0 8f e0                                      add ip, pc, ip
007a7264  48 10 88 e2                                      add r1, r8, #0x48
007a7268  04 20 a0 e1                                      mov r2, r4
007a726c  06 30 a0 e1                                      mov r3, r6
007a7270  07 00 a0 e1                                      mov r0, r7
007a7274  04 e0 8d e5                                      str lr, [sp, #4]
007a7278  08 c0 8d e5                                      str ip, [sp, #8]
007a727c  00 50 8d e5                                      str r5, [sp]
007a7280  9f 4d 00 eb                                      bl #0x7ba904
007a7284  07 00 a0 e1                                      mov r0, r7
007a7288  a5 bf ff eb                                      bl #0x797124
007a728c  06 00 a0 e1                                      mov r0, r6
007a7290  a3 bf ff eb                                      bl #0x797124
007a7294  04 00 a0 e1                                      mov r0, r4
007a7298  67 db fe eb                                      bl #0x75e03c
007a729c  98 d0 8d e2                                      add sp, sp, #0x98
007a72a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a72a4  00 10 90 e5                                      ldr r1, [r0]
007a72a8  01 10 41 e2                                      sub r1, r1, #1
007a72ac  00 00 51 e3                                      cmp r1, #0
007a72b0  00 10 80 e5                                      str r1, [r0]
007a72b4  00 00 00 1a                                      bne #0x7a72bc
007a72b8  1e ae fe eb                                      bl #0x752b38
007a72bc  00 10 a0 e3                                      mov r1, #0
007a72c0  2c 10 88 e5                                      str r1, [r8, #0x2c]
007a72c4  30 10 88 e5                                      str r1, [r8, #0x30]
007a72c8  c9 ff ff ea                                      b #0x7a71f4
; mapping-symbol data/literal pool
007a72cc  d0 ea 11 00                                      .byte 0xd0, 0xea, 0x11, 0x00
