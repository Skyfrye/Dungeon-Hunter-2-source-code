; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b7b60, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::zlib_adapter
; alias: _ZN7gameswf12zlib_adapter13inflate_writeEPKviPv
; demangled: gameswf::zlib_adapter::inflate_write(void const*, int, void*)
; decoder-mode: arm
007b7b60  00 00 a0 e3                                      mov r0, #0
007b7b64  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b7b68, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::zlib_adapter
; alias: _ZN7gameswf12zlib_adapter12inflate_tellEPKv
; demangled: gameswf::zlib_adapter::inflate_tell(void const*)
; decoder-mode: arm
007b7b68  40 00 90 e5                                      ldr r0, [r0, #0x40]
007b7b6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b7b70, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::zlib_adapter
; alias: _ZN7gameswf12zlib_adapter15inflate_get_eofEPv
; demangled: gameswf::zlib_adapter::inflate_get_eof(void*)
; decoder-mode: arm
007b7b70  44 00 d0 e5                                      ldrb r0, [r0, #0x44]
007b7b74  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b7bf0, declared_size=188, range_size=188, mode=arm
; class-group: gameswf::zlib_adapter
; alias: _ZN7gameswf12zlib_adapter13make_inflaterEPNS_7tu_fileE
; demangled: gameswf::zlib_adapter::make_inflater(gameswf::tu_file*)
; decoder-mode: arm
007b7bf0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007b7bf4  00 10 a0 e3                                      mov r1, #0
007b7bf8  1c d0 4d e2                                      sub sp, sp, #0x1c
007b7bfc  00 40 a0 e1                                      mov r4, r0
007b7c00  4c 00 01 e3                                      movw r0, #0x104c
007b7c04  e7 6b fe eb                                      bl #0x752ba8
007b7c08  04 10 a0 e1                                      mov r1, r4
007b7c0c  00 80 a0 e1                                      mov r8, r0
007b7c10  d8 ff ff eb                                      bl #0x7b7b78
007b7c14  00 10 a0 e3                                      mov r1, #0
007b7c18  28 00 a0 e3                                      mov r0, #0x28
007b7c1c  e1 6b fe eb                                      bl #0x752ba8
007b7c20  64 40 9f e5                                      ldr r4, [pc, #0x64]
007b7c24  64 10 9f e5                                      ldr r1, [pc, #0x64]
007b7c28  64 30 9f e5                                      ldr r3, [pc, #0x64]
007b7c2c  04 40 8f e0                                      add r4, pc, r4
007b7c30  01 c0 94 e7                                      ldr ip, [r4, r1]
007b7c34  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
007b7c38  03 20 94 e7                                      ldr r2, [r4, r3]
007b7c3c  58 30 9f e5                                      ldr r3, [pc, #0x58]
007b7c40  01 70 94 e7                                      ldr r7, [r4, r1]
007b7c44  54 10 9f e5                                      ldr r1, [pc, #0x54]
007b7c48  00 a0 a0 e1                                      mov sl, r0
007b7c4c  03 30 94 e7                                      ldr r3, [r4, r3]
007b7c50  01 60 94 e7                                      ldr r6, [r4, r1]
007b7c54  48 10 9f e5                                      ldr r1, [pc, #0x48]
007b7c58  00 70 8d e5                                      str r7, [sp]
007b7c5c  04 60 8d e5                                      str r6, [sp, #4]
007b7c60  01 50 94 e7                                      ldr r5, [r4, r1]
007b7c64  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
007b7c68  10 c0 8d e5                                      str ip, [sp, #0x10]
007b7c6c  08 50 8d e5                                      str r5, [sp, #8]
007b7c70  01 e0 94 e7                                      ldr lr, [r4, r1]
007b7c74  08 10 a0 e1                                      mov r1, r8
007b7c78  0c e0 8d e5                                      str lr, [sp, #0xc]
007b7c7c  80 fa ff eb                                      bl #0x7b6684
007b7c80  0a 00 a0 e1                                      mov r0, sl
007b7c84  1c d0 8d e2                                      add sp, sp, #0x1c
007b7c88  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
007b7c8c  64 ce 1d 00 18 2c 00 00 48 0c 00 00 1c 4b 00 00  .byte 0x64, 0xce, 0x1d, 0x00, 0x18, 0x2c, 0x00, 0x00, 0x48, 0x0c, 0x00, 0x00, 0x1c, 0x4b, 0x00, 0x00
007b7c9c  d4 2a 00 00 38 3f 00 00 10 44 00 00 98 18 00 00  .byte 0xd4, 0x2a, 0x00, 0x00, 0x38, 0x3f, 0x00, 0x00, 0x10, 0x44, 0x00, 0x00, 0x98, 0x18, 0x00, 0x00

; FUNCTION 0x007b7cac, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::zlib_adapter
; alias: _ZN7gameswf12zlib_adapter13inflate_closeEPv
; demangled: gameswf::zlib_adapter::inflate_close(void*)
; decoder-mode: arm
007b7cac  70 40 2d e9                                      push {r4, r5, r6, lr}
007b7cb0  00 50 a0 e1                                      mov r5, r0
007b7cb4  99 ff ff eb                                      bl #0x7b7b20
007b7cb8  04 00 85 e2                                      add r0, r5, #4
007b7cbc  f4 ea fa eb                                      bl #0x672894
007b7cc0  00 00 55 e3                                      cmp r5, #0
007b7cc4  00 40 a0 e1                                      mov r4, r0
007b7cc8  02 00 00 0a                                      beq #0x7b7cd8
007b7ccc  05 00 a0 e1                                      mov r0, r5
007b7cd0  00 10 a0 e3                                      mov r1, #0
007b7cd4  97 6b fe eb                                      bl #0x752b38
007b7cd8  00 00 54 e3                                      cmp r4, #0
007b7cdc  04 00 a0 01                                      moveq r0, r4
007b7ce0  05 00 a0 13                                      movne r0, #5
007b7ce4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007b7dbc, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::zlib_adapter
; alias: _ZN7gameswf12zlib_adapter19inflate_seek_to_endEPv
; demangled: gameswf::zlib_adapter::inflate_seek_to_end(void*)
; decoder-mode: arm
007b7dbc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007b7dc0  7c 60 9f e5                                      ldr r6, [pc, #0x7c]
007b7dc4  7c 70 9f e5                                      ldr r7, [pc, #0x7c]
007b7dc8  48 20 01 e3                                      movw r2, #0x1048
007b7dcc  06 60 8f e0                                      add r6, pc, r6
007b7dd0  07 30 96 e7                                      ldr r3, [r6, r7]
007b7dd4  02 20 90 e7                                      ldr r2, [r0, r2]
007b7dd8  01 da 4d e2                                      sub sp, sp, #0x1000
007b7ddc  00 30 93 e5                                      ldr r3, [r3]
007b7de0  0c d0 4d e2                                      sub sp, sp, #0xc
007b7de4  01 1a 8d e2                                      add r1, sp, #0x1000
007b7de8  00 00 52 e3                                      cmp r2, #0
007b7dec  00 40 a0 e1                                      mov r4, r0
007b7df0  04 30 81 e5                                      str r3, [r1, #4]
007b7df4  07 00 00 1a                                      bne #0x7b7e18
007b7df8  08 50 8d e2                                      add r5, sp, #8
007b7dfc  04 50 45 e2                                      sub r5, r5, #4
007b7e00  04 00 a0 e1                                      mov r0, r4
007b7e04  05 10 a0 e1                                      mov r1, r5
007b7e08  01 2a a0 e3                                      mov r2, #0x1000
007b7e0c  b5 ff ff eb                                      bl #0x7b7ce8
007b7e10  00 00 50 e3                                      cmp r0, #0
007b7e14  f9 ff ff 1a                                      bne #0x7b7e00
007b7e18  07 30 96 e7                                      ldr r3, [r6, r7]
007b7e1c  01 1a 8d e2                                      add r1, sp, #0x1000
007b7e20  04 20 91 e5                                      ldr r2, [r1, #4]
007b7e24  00 30 93 e5                                      ldr r3, [r3]
007b7e28  40 00 94 e5                                      ldr r0, [r4, #0x40]
007b7e2c  03 00 52 e1                                      cmp r2, r3
007b7e30  02 00 00 1a                                      bne #0x7b7e40
007b7e34  0c d0 8d e2                                      add sp, sp, #0xc
007b7e38  01 da 8d e2                                      add sp, sp, #0x1000
007b7e3c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007b7e40  32 59 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007b7e44  c4 cc 1d 00 ac 40 00 00                          .byte 0xc4, 0xcc, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007b7e4c, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::zlib_adapter
; alias: _ZN7gameswf12zlib_adapter12inflate_readEPviS1_
; demangled: gameswf::zlib_adapter::inflate_read(void*, int, void*)
; decoder-mode: arm
007b7e4c  04 40 2d e5                                      str r4, [sp, #-4]!
007b7e50  48 30 01 e3                                      movw r3, #0x1048
007b7e54  03 30 92 e7                                      ldr r3, [r2, r3]
007b7e58  00 40 a0 e1                                      mov r4, r0
007b7e5c  01 c0 a0 e1                                      mov ip, r1
007b7e60  00 00 53 e3                                      cmp r3, #0
007b7e64  02 00 00 0a                                      beq #0x7b7e74
007b7e68  00 00 a0 e3                                      mov r0, #0
007b7e6c  10 00 bd e8                                      ldm sp!, {r4}
007b7e70  1e ff 2f e1                                      bx lr
007b7e74  02 00 a0 e1                                      mov r0, r2
007b7e78  04 10 a0 e1                                      mov r1, r4
007b7e7c  0c 20 a0 e1                                      mov r2, ip
007b7e80  10 00 bd e8                                      ldm sp!, {r4}
007b7e84  97 ff ff ea                                      b #0x7b7ce8

; FUNCTION 0x007b7ee8, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::zlib_adapter
; alias: _ZN7gameswf12zlib_adapter12inflate_seekEiPv
; demangled: gameswf::zlib_adapter::inflate_seek(int, void*)
; decoder-mode: arm
007b7ee8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b7eec  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
007b7ef0  b4 80 9f e5                                      ldr r8, [pc, #0xb4]
007b7ef4  48 20 01 e3                                      movw r2, #0x1048
007b7ef8  06 60 8f e0                                      add r6, pc, r6
007b7efc  08 30 96 e7                                      ldr r3, [r6, r8]
007b7f00  02 20 91 e7                                      ldr r2, [r1, r2]
007b7f04  01 da 4d e2                                      sub sp, sp, #0x1000
007b7f08  00 30 93 e5                                      ldr r3, [r3]
007b7f0c  08 d0 4d e2                                      sub sp, sp, #8
007b7f10  00 00 52 e3                                      cmp r2, #0
007b7f14  01 2a 8d e2                                      add r2, sp, #0x1000
007b7f18  01 40 a0 e1                                      mov r4, r1
007b7f1c  00 50 a0 e1                                      mov r5, r0
007b7f20  04 30 82 e5                                      str r3, [r2, #4]
007b7f24  10 00 00 1a                                      bne #0x7b7f6c
007b7f28  40 00 91 e5                                      ldr r0, [r1, #0x40]
007b7f2c  05 00 50 e1                                      cmp r0, r5
007b7f30  17 00 00 ca                                      bgt #0x7b7f94
007b7f34  08 70 8d e2                                      add r7, sp, #8
007b7f38  04 70 47 e2                                      sub r7, r7, #4
007b7f3c  00 00 00 ea                                      b #0x7b7f44
007b7f40  40 00 94 e5                                      ldr r0, [r4, #0x40]
007b7f44  00 00 55 e1                                      cmp r5, r0
007b7f48  08 00 00 da                                      ble #0x7b7f70
007b7f4c  05 20 60 e0                                      rsb r2, r0, r5
007b7f50  01 0a 52 e3                                      cmp r2, #0x1000
007b7f54  01 2a a0 a3                                      movge r2, #0x1000
007b7f58  04 00 a0 e1                                      mov r0, r4
007b7f5c  07 10 a0 e1                                      mov r1, r7
007b7f60  60 ff ff eb                                      bl #0x7b7ce8
007b7f64  00 00 50 e3                                      cmp r0, #0
007b7f68  f4 ff ff 1a                                      bne #0x7b7f40
007b7f6c  40 00 94 e5                                      ldr r0, [r4, #0x40]
007b7f70  08 30 96 e7                                      ldr r3, [r6, r8]
007b7f74  01 2a 8d e2                                      add r2, sp, #0x1000
007b7f78  04 10 92 e5                                      ldr r1, [r2, #4]
007b7f7c  00 30 93 e5                                      ldr r3, [r3]
007b7f80  03 00 51 e1                                      cmp r1, r3
007b7f84  06 00 00 1a                                      bne #0x7b7fa4
007b7f88  08 d0 8d e2                                      add sp, sp, #8
007b7f8c  01 da 8d e2                                      add sp, sp, #0x1000
007b7f90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b7f94  01 00 a0 e1                                      mov r0, r1
007b7f98  ba ff ff eb                                      bl #0x7b7e88
007b7f9c  40 00 94 e5                                      ldr r0, [r4, #0x40]
007b7fa0  e3 ff ff ea                                      b #0x7b7f34
007b7fa4  d9 58 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007b7fa8  98 cb 1d 00 ac 40 00 00                          .byte 0x98, 0xcb, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00
