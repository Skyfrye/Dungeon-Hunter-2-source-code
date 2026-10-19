; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00759c04, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::ref_counted
; alias: _ZN7gameswf11ref_countedC2Ev
; demangled: gameswf::ref_counted::ref_counted()
; decoder-mode: arm
00759c04  20 30 9f e5                                      ldr r3, [pc, #0x20]
00759c08  20 10 9f e5                                      ldr r1, [pc, #0x20]
00759c0c  00 c0 a0 e3                                      mov ip, #0
00759c10  03 30 8f e0                                      add r3, pc, r3
00759c14  01 10 93 e7                                      ldr r1, [r3, r1]
00759c18  08 c0 80 e5                                      str ip, [r0, #8]
00759c1c  04 c0 80 e5                                      str ip, [r0, #4]
00759c20  08 10 81 e2                                      add r1, r1, #8
00759c24  00 10 80 e5                                      str r1, [r0]
00759c28  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00759c2c  80 ae 23 00 90 31 00 00                          .byte 0x80, 0xae, 0x23, 0x00, 0x90, 0x31, 0x00, 0x00

; FUNCTION 0x00759c34, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::ref_counted
; alias: _ZN7gameswf11ref_countedC1Ev
; demangled: gameswf::ref_counted::ref_counted()
; decoder-mode: arm
00759c34  20 30 9f e5                                      ldr r3, [pc, #0x20]
00759c38  20 10 9f e5                                      ldr r1, [pc, #0x20]
00759c3c  00 c0 a0 e3                                      mov ip, #0
00759c40  03 30 8f e0                                      add r3, pc, r3
00759c44  01 10 93 e7                                      ldr r1, [r3, r1]
00759c48  08 c0 80 e5                                      str ip, [r0, #8]
00759c4c  04 c0 80 e5                                      str ip, [r0, #4]
00759c50  08 10 81 e2                                      add r1, r1, #8
00759c54  00 10 80 e5                                      str r1, [r0]
00759c58  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00759c5c  50 ae 23 00 90 31 00 00                          .byte 0x50, 0xae, 0x23, 0x00, 0x90, 0x31, 0x00, 0x00

; FUNCTION 0x00759c64, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::ref_counted
; alias: _ZNK7gameswf11ref_counted7add_refEv
; demangled: gameswf::ref_counted::add_ref() const
; decoder-mode: arm
00759c64  04 30 90 e5                                      ldr r3, [r0, #4]
00759c68  01 30 83 e2                                      add r3, r3, #1
00759c6c  04 30 80 e5                                      str r3, [r0, #4]
00759c70  1e ff 2f e1                                      bx lr

; FUNCTION 0x0075a240, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::ref_counted
; alias: _ZN7gameswf11ref_counted8drop_refEv
; demangled: gameswf::ref_counted::drop_ref()
; decoder-mode: arm
0075a240  04 20 90 e5                                      ldr r2, [r0, #4]
0075a244  01 20 42 e2                                      sub r2, r2, #1
0075a248  00 00 52 e3                                      cmp r2, #0
0075a24c  04 20 80 e5                                      str r2, [r0, #4]
0075a250  1e ff 2f 11                                      bxne lr
0075a254  ee ff ff ea                                      b #0x75a214

; FUNCTION 0x0075a88c, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::ref_counted
; alias: _ZNK7gameswf11ref_counted14get_weak_proxyEv
; demangled: gameswf::ref_counted::get_weak_proxy() const
; decoder-mode: arm
0075a88c  70 40 2d e9                                      push {r4, r5, r6, lr}
0075a890  08 40 90 e5                                      ldr r4, [r0, #8]
0075a894  00 50 a0 e1                                      mov r5, r0
0075a898  00 00 54 e3                                      cmp r4, #0
0075a89c  01 00 00 0a                                      beq #0x75a8a8
0075a8a0  04 00 a0 e1                                      mov r0, r4
0075a8a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075a8a8  04 10 a0 e1                                      mov r1, r4
0075a8ac  08 00 a0 e3                                      mov r0, #8
0075a8b0  bc e0 ff eb                                      bl #0x752ba8
0075a8b4  01 30 a0 e3                                      mov r3, #1
0075a8b8  00 40 80 e5                                      str r4, [r0]
0075a8bc  04 30 c0 e5                                      strb r3, [r0, #4]
0075a8c0  08 00 85 e5                                      str r0, [r5, #8]
0075a8c4  00 30 90 e5                                      ldr r3, [r0]
0075a8c8  01 30 83 e2                                      add r3, r3, #1
0075a8cc  00 30 80 e5                                      str r3, [r0]
0075a8d0  08 40 95 e5                                      ldr r4, [r5, #8]
0075a8d4  04 00 a0 e1                                      mov r0, r4
0075a8d8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0075dbe4, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::ref_counted
; alias: _ZN7gameswf11ref_counted17detach_weak_proxyEv
; demangled: gameswf::ref_counted::detach_weak_proxy()
; decoder-mode: arm
0075dbe4  10 40 2d e9                                      push {r4, lr}
0075dbe8  08 30 90 e5                                      ldr r3, [r0, #8]
0075dbec  00 40 a0 e1                                      mov r4, r0
0075dbf0  00 00 53 e3                                      cmp r3, #0
0075dbf4  0a 00 00 0a                                      beq #0x75dc24
0075dbf8  00 20 a0 e3                                      mov r2, #0
0075dbfc  04 20 c3 e5                                      strb r2, [r3, #4]
0075dc00  08 00 90 e5                                      ldr r0, [r0, #8]
0075dc04  00 10 90 e5                                      ldr r1, [r0]
0075dc08  01 10 41 e2                                      sub r1, r1, #1
0075dc0c  02 00 51 e1                                      cmp r1, r2
0075dc10  00 10 80 e5                                      str r1, [r0]
0075dc14  00 00 00 1a                                      bne #0x75dc1c
0075dc18  c6 d3 ff eb                                      bl #0x752b38
0075dc1c  00 30 a0 e3                                      mov r3, #0
0075dc20  08 30 84 e5                                      str r3, [r4, #8]
0075dc24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075dc28, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::ref_counted
; alias: _ZN7gameswf11ref_countedD1Ev
; demangled: gameswf::ref_counted::~ref_counted()
; decoder-mode: arm
0075dc28  10 40 2d e9                                      push {r4, lr}
0075dc2c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0075dc30  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0075dc34  08 10 90 e5                                      ldr r1, [r0, #8]
0075dc38  03 30 8f e0                                      add r3, pc, r3
0075dc3c  02 20 93 e7                                      ldr r2, [r3, r2]
0075dc40  00 00 51 e3                                      cmp r1, #0
0075dc44  00 40 a0 e1                                      mov r4, r0
0075dc48  08 20 82 e2                                      add r2, r2, #8
0075dc4c  00 20 80 e5                                      str r2, [r0]
0075dc50  08 00 00 0a                                      beq #0x75dc78
0075dc54  00 30 a0 e3                                      mov r3, #0
0075dc58  04 30 c1 e5                                      strb r3, [r1, #4]
0075dc5c  08 00 90 e5                                      ldr r0, [r0, #8]
0075dc60  00 10 90 e5                                      ldr r1, [r0]
0075dc64  01 10 41 e2                                      sub r1, r1, #1
0075dc68  03 00 51 e1                                      cmp r1, r3
0075dc6c  00 10 80 e5                                      str r1, [r0]
0075dc70  00 00 00 1a                                      bne #0x75dc78
0075dc74  af d3 ff eb                                      bl #0x752b38
0075dc78  04 00 a0 e1                                      mov r0, r4
0075dc7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0075dc80  58 6e 23 00 90 31 00 00                          .byte 0x58, 0x6e, 0x23, 0x00, 0x90, 0x31, 0x00, 0x00

; FUNCTION 0x0075dc88, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::ref_counted
; alias: _ZN7gameswf11ref_countedD0Ev
; demangled: gameswf::ref_counted::~ref_counted()
; decoder-mode: arm
0075dc88  10 40 2d e9                                      push {r4, lr}
0075dc8c  00 40 a0 e1                                      mov r4, r0
0075dc90  e4 ff ff eb                                      bl #0x75dc28
0075dc94  04 00 a0 e1                                      mov r0, r4
0075dc98  84 c1 ee eb                                      bl #0x30e2b0
0075dc9c  04 00 a0 e1                                      mov r0, r4
0075dca0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075dca4, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::ref_counted
; alias: _ZN7gameswf11ref_countedD2Ev
; demangled: gameswf::ref_counted::~ref_counted()
; decoder-mode: arm
0075dca4  10 40 2d e9                                      push {r4, lr}
0075dca8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0075dcac  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0075dcb0  08 10 90 e5                                      ldr r1, [r0, #8]
0075dcb4  03 30 8f e0                                      add r3, pc, r3
0075dcb8  02 20 93 e7                                      ldr r2, [r3, r2]
0075dcbc  00 00 51 e3                                      cmp r1, #0
0075dcc0  00 40 a0 e1                                      mov r4, r0
0075dcc4  08 20 82 e2                                      add r2, r2, #8
0075dcc8  00 20 80 e5                                      str r2, [r0]
0075dccc  08 00 00 0a                                      beq #0x75dcf4
0075dcd0  00 30 a0 e3                                      mov r3, #0
0075dcd4  04 30 c1 e5                                      strb r3, [r1, #4]
0075dcd8  08 00 90 e5                                      ldr r0, [r0, #8]
0075dcdc  00 10 90 e5                                      ldr r1, [r0]
0075dce0  01 10 41 e2                                      sub r1, r1, #1
0075dce4  03 00 51 e1                                      cmp r1, r3
0075dce8  00 10 80 e5                                      str r1, [r0]
0075dcec  00 00 00 1a                                      bne #0x75dcf4
0075dcf0  90 d3 ff eb                                      bl #0x752b38
0075dcf4  04 00 a0 e1                                      mov r0, r4
0075dcf8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0075dcfc  dc 6d 23 00 90 31 00 00                          .byte 0xdc, 0x6d, 0x23, 0x00, 0x90, 0x31, 0x00, 0x00
