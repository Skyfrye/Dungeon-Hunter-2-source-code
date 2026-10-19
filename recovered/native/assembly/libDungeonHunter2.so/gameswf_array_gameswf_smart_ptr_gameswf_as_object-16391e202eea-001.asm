; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00437cec, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_9as_objectEEEE7reserveEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::as_object> >::reserve(int)
; decoder-mode: arm
00437cec  10 40 2d e9                                      push {r4, lr}
00437cf0  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00437cf4  00 40 a0 e1                                      mov r4, r0
00437cf8  00 00 53 e3                                      cmp r3, #0
00437cfc  0f 00 00 1a                                      bne #0x437d40
00437d00  00 00 51 e3                                      cmp r1, #0
00437d04  08 20 90 e5                                      ldr r2, [r0, #8]
00437d08  08 10 80 e5                                      str r1, [r0, #8]
00437d0c  0c 00 00 1a                                      bne #0x437d44
00437d10  00 00 90 e5                                      ldr r0, [r0]
00437d14  00 00 50 e3                                      cmp r0, #0
00437d18  01 00 00 0a                                      beq #0x437d24
00437d1c  02 11 a0 e1                                      lsl r1, r2, #2
00437d20  84 6b 0c eb                                      bl #0x752b38
00437d24  00 30 a0 e3                                      mov r3, #0
00437d28  00 30 84 e5                                      str r3, [r4]
00437d2c  10 80 bd e8                                      pop {r4, pc}
00437d30  01 01 a0 e1                                      lsl r0, r1, #2
00437d34  0c 10 a0 e1                                      mov r1, ip
00437d38  97 6b 0c eb                                      bl #0x752b9c
00437d3c  00 00 84 e5                                      str r0, [r4]
00437d40  10 80 bd e8                                      pop {r4, pc}
00437d44  00 c0 90 e5                                      ldr ip, [r0]
00437d48  00 00 5c e3                                      cmp ip, #0
00437d4c  f7 ff ff 0a                                      beq #0x437d30
00437d50  0c 00 a0 e1                                      mov r0, ip
00437d54  01 11 a0 e1                                      lsl r1, r1, #2
00437d58  02 21 a0 e1                                      lsl r2, r2, #2
00437d5c  92 6b 0c eb                                      bl #0x752bac
00437d60  00 00 84 e5                                      str r0, [r4]
00437d64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00437f24, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_9as_objectEEEE6resizeEi.clone.0
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::as_object> >::resize(int) [clone .clone.0]
; decoder-mode: arm
00437f24  70 40 2d e9                                      push {r4, r5, r6, lr}
00437f28  04 40 90 e5                                      ldr r4, [r0, #4]
00437f2c  00 60 a0 e1                                      mov r6, r0
00437f30  00 00 54 e3                                      cmp r4, #0
00437f34  0b 00 00 da                                      ble #0x437f68
00437f38  00 50 a0 e3                                      mov r5, #0
00437f3c  00 30 96 e5                                      ldr r3, [r6]
00437f40  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00437f44  01 50 85 e2                                      add r5, r5, #1
00437f48  00 00 50 e3                                      cmp r0, #0
00437f4c  00 00 00 0a                                      beq #0x437f54
00437f50  ba 88 0c eb                                      bl #0x75a240
00437f54  04 00 55 e1                                      cmp r5, r4
00437f58  f7 ff ff 1a                                      bne #0x437f3c
00437f5c  00 30 a0 e3                                      mov r3, #0
00437f60  04 30 86 e5                                      str r3, [r6, #4]
00437f64  70 80 bd e8                                      pop {r4, r5, r6, pc}
00437f68  fb ff ff aa                                      bge #0x437f5c
00437f6c  04 31 a0 e1                                      lsl r3, r4, #2
00437f70  00 10 a0 e3                                      mov r1, #0
00437f74  00 20 96 e5                                      ldr r2, [r6]
00437f78  01 40 94 e2                                      adds r4, r4, #1
00437f7c  03 10 82 e7                                      str r1, [r2, r3]
00437f80  04 30 83 e2                                      add r3, r3, #4
00437f84  fa ff ff 1a                                      bne #0x437f74
00437f88  00 30 a0 e3                                      mov r3, #0
00437f8c  04 30 86 e5                                      str r3, [r6, #4]
00437f90  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0076d218, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_9as_objectEEEE6resizeEi.clone.4
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::as_object> >::resize(int) [clone .clone.4]
; decoder-mode: arm
0076d218  70 40 2d e9                                      push {r4, r5, r6, lr}
0076d21c  04 40 90 e5                                      ldr r4, [r0, #4]
0076d220  00 60 a0 e1                                      mov r6, r0
0076d224  00 00 54 e3                                      cmp r4, #0
0076d228  0b 00 00 da                                      ble #0x76d25c
0076d22c  00 50 a0 e3                                      mov r5, #0
0076d230  00 30 96 e5                                      ldr r3, [r6]
0076d234  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0076d238  01 50 85 e2                                      add r5, r5, #1
0076d23c  00 00 50 e3                                      cmp r0, #0
0076d240  00 00 00 0a                                      beq #0x76d248
0076d244  fd b3 ff eb                                      bl #0x75a240
0076d248  04 00 55 e1                                      cmp r5, r4
0076d24c  f7 ff ff 1a                                      bne #0x76d230
0076d250  00 30 a0 e3                                      mov r3, #0
0076d254  04 30 86 e5                                      str r3, [r6, #4]
0076d258  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076d25c  fb ff ff aa                                      bge #0x76d250
0076d260  04 31 a0 e1                                      lsl r3, r4, #2
0076d264  00 10 a0 e3                                      mov r1, #0
0076d268  00 20 96 e5                                      ldr r2, [r6]
0076d26c  01 40 94 e2                                      adds r4, r4, #1
0076d270  03 10 82 e7                                      str r1, [r2, r3]
0076d274  04 30 83 e2                                      add r3, r3, #4
0076d278  fa ff ff 1a                                      bne #0x76d268
0076d27c  00 30 a0 e3                                      mov r3, #0
0076d280  04 30 86 e5                                      str r3, [r6, #4]
0076d284  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0076d288, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_9as_objectEEEE6removeEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::as_object> >::remove(int)
; decoder-mode: arm
0076d288  70 40 2d e9                                      push {r4, r5, r6, lr}
0076d28c  04 30 90 e5                                      ldr r3, [r0, #4]
0076d290  00 40 a0 e1                                      mov r4, r0
0076d294  01 50 a0 e1                                      mov r5, r1
0076d298  01 00 53 e3                                      cmp r3, #1
0076d29c  13 00 00 0a                                      beq #0x76d2f0
0076d2a0  00 20 90 e5                                      ldr r2, [r0]
0076d2a4  01 61 a0 e1                                      lsl r6, r1, #2
0076d2a8  01 11 92 e7                                      ldr r1, [r2, r1, lsl #2]
0076d2ac  06 00 82 e0                                      add r0, r2, r6
0076d2b0  00 00 51 e3                                      cmp r1, #0
0076d2b4  03 00 00 0a                                      beq #0x76d2c8
0076d2b8  01 00 a0 e1                                      mov r0, r1
0076d2bc  df b3 ff eb                                      bl #0x75a240
0076d2c0  0c 00 94 e8                                      ldm r4, {r2, r3}
0076d2c4  06 00 82 e0                                      add r0, r2, r6
0076d2c8  05 10 e0 e1                                      mvn r1, r5
0076d2cc  03 30 81 e0                                      add r3, r1, r3
0076d2d0  01 10 85 e2                                      add r1, r5, #1
0076d2d4  01 11 82 e0                                      add r1, r2, r1, lsl #2
0076d2d8  03 21 a0 e1                                      lsl r2, r3, #2
0076d2dc  15 83 ee eb                                      bl #0x30df38
0076d2e0  04 30 94 e5                                      ldr r3, [r4, #4]
0076d2e4  01 30 43 e2                                      sub r3, r3, #1
0076d2e8  04 30 84 e5                                      str r3, [r4, #4]
0076d2ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076d2f0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0076d2f4  c7 ff ff ea                                      b #0x76d218
