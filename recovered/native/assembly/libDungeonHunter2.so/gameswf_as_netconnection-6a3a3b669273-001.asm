; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a399c, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_netconnection
; alias: _ZNK7gameswf16as_netconnection2isEi
; demangled: gameswf::as_netconnection::is(int) const
; decoder-mode: arm
007a399c  1d 00 51 e3                                      cmp r1, #0x1d
007a39a0  01 00 a0 03                                      moveq r0, #1
007a39a4  1e ff 2f 01                                      bxeq lr
007a39a8  01 00 71 e2                                      rsbs r0, r1, #1
007a39ac  00 00 a0 33                                      movlo r0, #0
007a39b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a39b4, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_netconnection
; alias: _ZN7gameswf16as_netconnectionD1Ev
; demangled: gameswf::as_netconnection::~as_netconnection()
; decoder-mode: arm
007a39b4  24 30 9f e5                                      ldr r3, [pc, #0x24]
007a39b8  24 20 9f e5                                      ldr r2, [pc, #0x24]
007a39bc  10 40 2d e9                                      push {r4, lr}
007a39c0  03 30 8f e0                                      add r3, pc, r3
007a39c4  02 20 93 e7                                      ldr r2, [r3, r2]
007a39c8  00 40 a0 e1                                      mov r4, r0
007a39cc  08 20 82 e2                                      add r2, r2, #8
007a39d0  00 20 80 e5                                      str r2, [r0]
007a39d4  30 18 ff eb                                      bl #0x769a9c
007a39d8  04 00 a0 e1                                      mov r0, r4
007a39dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a39e0  d0 10 1f 00 f0 42 00 00                          .byte 0xd0, 0x10, 0x1f, 0x00, 0xf0, 0x42, 0x00, 0x00

; FUNCTION 0x007a3acc, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::as_netconnection
; alias: _ZN7gameswf16as_netconnectionC2EPNS_6playerE
; demangled: gameswf::as_netconnection::as_netconnection(gameswf::player*)
; decoder-mode: arm
007a3acc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a3ad0  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
007a3ad4  b0 70 9f e5                                      ldr r7, [pc, #0xb0]
007a3ad8  28 d0 4d e2                                      sub sp, sp, #0x28
007a3adc  04 40 8f e0                                      add r4, pc, r4
007a3ae0  07 30 94 e7                                      ldr r3, [r4, r7]
007a3ae4  00 50 a0 e1                                      mov r5, r0
007a3ae8  10 80 8d e2                                      add r8, sp, #0x10
007a3aec  00 30 93 e5                                      ldr r3, [r3]
007a3af0  04 60 8d e2                                      add r6, sp, #4
007a3af4  24 30 8d e5                                      str r3, [sp, #0x24]
007a3af8  78 20 ff eb                                      bl #0x76bce0
007a3afc  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
007a3b00  08 00 a0 e1                                      mov r0, r8
007a3b04  03 30 94 e7                                      ldr r3, [r4, r3]
007a3b08  08 30 83 e2                                      add r3, r3, #8
007a3b0c  00 30 85 e5                                      str r3, [r5]
007a3b10  d3 ff ff eb                                      bl #0x7a3a64
007a3b14  78 20 9f e5                                      ldr r2, [pc, #0x78]
007a3b18  00 30 a0 e3                                      mov r3, #0
007a3b1c  06 00 a0 e1                                      mov r0, r6
007a3b20  02 10 94 e7                                      ldr r1, [r4, r2]
007a3b24  05 30 cd e5                                      strb r3, [sp, #5]
007a3b28  04 30 cd e5                                      strb r3, [sp, #4]
007a3b2c  db cd ff eb                                      bl #0x7972a0
007a3b30  08 10 a0 e1                                      mov r1, r8
007a3b34  06 20 a0 e1                                      mov r2, r6
007a3b38  05 00 a0 e1                                      mov r0, r5
007a3b3c  a7 21 ff eb                                      bl #0x76c1e0
007a3b40  06 00 a0 e1                                      mov r0, r6
007a3b44  76 cd ff eb                                      bl #0x797124
007a3b48  d0 31 dd e1                                      ldrsb r3, [sp, #0x10]
007a3b4c  01 00 73 e3                                      cmn r3, #1
007a3b50  07 00 00 0a                                      beq #0x7a3b74
007a3b54  07 30 94 e7                                      ldr r3, [r4, r7]
007a3b58  24 20 9d e5                                      ldr r2, [sp, #0x24]
007a3b5c  05 00 a0 e1                                      mov r0, r5
007a3b60  00 30 93 e5                                      ldr r3, [r3]
007a3b64  03 00 52 e1                                      cmp r2, r3
007a3b68  05 00 00 1a                                      bne #0x7a3b84
007a3b6c  28 d0 8d e2                                      add sp, sp, #0x28
007a3b70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a3b74  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007a3b78  18 10 9d e5                                      ldr r1, [sp, #0x18]
007a3b7c  ed bb fe eb                                      bl #0x752b38
007a3b80  f3 ff ff ea                                      b #0x7a3b54
007a3b84  e1 a9 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007a3b88  b4 0f 1f 00 ac 40 00 00 f0 42 00 00 90 29 00 00  .byte 0xb4, 0x0f, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0x42, 0x00, 0x00, 0x90, 0x29, 0x00, 0x00

; FUNCTION 0x007a3b98, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::as_netconnection
; alias: _ZN7gameswf16as_netconnectionC1EPNS_6playerE
; demangled: gameswf::as_netconnection::as_netconnection(gameswf::player*)
; decoder-mode: arm
007a3b98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a3b9c  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
007a3ba0  b0 70 9f e5                                      ldr r7, [pc, #0xb0]
007a3ba4  28 d0 4d e2                                      sub sp, sp, #0x28
007a3ba8  04 40 8f e0                                      add r4, pc, r4
007a3bac  07 30 94 e7                                      ldr r3, [r4, r7]
007a3bb0  00 50 a0 e1                                      mov r5, r0
007a3bb4  10 80 8d e2                                      add r8, sp, #0x10
007a3bb8  00 30 93 e5                                      ldr r3, [r3]
007a3bbc  04 60 8d e2                                      add r6, sp, #4
007a3bc0  24 30 8d e5                                      str r3, [sp, #0x24]
007a3bc4  45 20 ff eb                                      bl #0x76bce0
007a3bc8  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
007a3bcc  08 00 a0 e1                                      mov r0, r8
007a3bd0  03 30 94 e7                                      ldr r3, [r4, r3]
007a3bd4  08 30 83 e2                                      add r3, r3, #8
007a3bd8  00 30 85 e5                                      str r3, [r5]
007a3bdc  a0 ff ff eb                                      bl #0x7a3a64
007a3be0  78 20 9f e5                                      ldr r2, [pc, #0x78]
007a3be4  00 30 a0 e3                                      mov r3, #0
007a3be8  06 00 a0 e1                                      mov r0, r6
007a3bec  02 10 94 e7                                      ldr r1, [r4, r2]
007a3bf0  05 30 cd e5                                      strb r3, [sp, #5]
007a3bf4  04 30 cd e5                                      strb r3, [sp, #4]
007a3bf8  a8 cd ff eb                                      bl #0x7972a0
007a3bfc  08 10 a0 e1                                      mov r1, r8
007a3c00  06 20 a0 e1                                      mov r2, r6
007a3c04  05 00 a0 e1                                      mov r0, r5
007a3c08  74 21 ff eb                                      bl #0x76c1e0
007a3c0c  06 00 a0 e1                                      mov r0, r6
007a3c10  43 cd ff eb                                      bl #0x797124
007a3c14  d0 31 dd e1                                      ldrsb r3, [sp, #0x10]
007a3c18  01 00 73 e3                                      cmn r3, #1
007a3c1c  07 00 00 0a                                      beq #0x7a3c40
007a3c20  07 30 94 e7                                      ldr r3, [r4, r7]
007a3c24  24 20 9d e5                                      ldr r2, [sp, #0x24]
007a3c28  05 00 a0 e1                                      mov r0, r5
007a3c2c  00 30 93 e5                                      ldr r3, [r3]
007a3c30  03 00 52 e1                                      cmp r2, r3
007a3c34  05 00 00 1a                                      bne #0x7a3c50
007a3c38  28 d0 8d e2                                      add sp, sp, #0x28
007a3c3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a3c40  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007a3c44  18 10 9d e5                                      ldr r1, [sp, #0x18]
007a3c48  ba bb fe eb                                      bl #0x752b38
007a3c4c  f3 ff ff ea                                      b #0x7a3c20
007a3c50  ae a9 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007a3c54  e8 0e 1f 00 ac 40 00 00 f0 42 00 00 90 29 00 00  .byte 0xe8, 0x0e, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0x42, 0x00, 0x00, 0x90, 0x29, 0x00, 0x00

; FUNCTION 0x007a3ca4, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_netconnection
; alias: _ZN7gameswf16as_netconnectionD0Ev
; demangled: gameswf::as_netconnection::~as_netconnection()
; decoder-mode: arm
007a3ca4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007a3ca8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007a3cac  10 40 2d e9                                      push {r4, lr}
007a3cb0  03 30 8f e0                                      add r3, pc, r3
007a3cb4  02 20 93 e7                                      ldr r2, [r3, r2]
007a3cb8  00 40 a0 e1                                      mov r4, r0
007a3cbc  08 20 82 e2                                      add r2, r2, #8
007a3cc0  00 20 80 e5                                      str r2, [r0]
007a3cc4  74 17 ff eb                                      bl #0x769a9c
007a3cc8  04 00 a0 e1                                      mov r0, r4
007a3ccc  77 a9 ed eb                                      bl #0x30e2b0
007a3cd0  04 00 a0 e1                                      mov r0, r4
007a3cd4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a3cd8  e0 0d 1f 00 f0 42 00 00                          .byte 0xe0, 0x0d, 0x1f, 0x00, 0xf0, 0x42, 0x00, 0x00
