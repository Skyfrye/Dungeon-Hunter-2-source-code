; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a2584, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_mcloader
; alias: _ZNK7gameswf11as_mcloader2isEi
; demangled: gameswf::as_mcloader::is(int) const
; decoder-mode: arm
007a2584  24 00 51 e3                                      cmp r1, #0x24
007a2588  01 00 a0 03                                      moveq r0, #1
007a258c  1e ff 2f 01                                      bxeq lr
007a2590  01 00 71 e2                                      rsbs r0, r1, #1
007a2594  00 00 a0 33                                      movlo r0, #0
007a2598  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a2aec, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::as_mcloader
; alias: _ZN7gameswf11as_mcloaderD2Ev
; demangled: gameswf::as_mcloader::~as_mcloader()
; decoder-mode: arm
007a2aec  58 30 9f e5                                      ldr r3, [pc, #0x58]
007a2af0  58 20 9f e5                                      ldr r2, [pc, #0x58]
007a2af4  70 40 2d e9                                      push {r4, r5, r6, lr}
007a2af8  03 30 8f e0                                      add r3, pc, r3
007a2afc  02 20 93 e7                                      ldr r2, [r3, r2]
007a2b00  00 60 a0 e1                                      mov r6, r0
007a2b04  00 40 a0 e1                                      mov r4, r0
007a2b08  08 20 82 e2                                      add r2, r2, #8
007a2b0c  48 20 86 e4                                      str r2, [r6], #0x48
007a2b10  38 50 80 e2                                      add r5, r0, #0x38
007a2b14  06 00 a0 e1                                      mov r0, r6
007a2b18  79 ff ff eb                                      bl #0x7a2904
007a2b1c  06 00 a0 e1                                      mov r0, r6
007a2b20  00 10 a0 e3                                      mov r1, #0
007a2b24  a9 fe ff eb                                      bl #0x7a25d0
007a2b28  05 00 a0 e1                                      mov r0, r5
007a2b2c  c9 ff ff eb                                      bl #0x7a2a58
007a2b30  05 00 a0 e1                                      mov r0, r5
007a2b34  00 10 a0 e3                                      mov r1, #0
007a2b38  88 f6 fe eb                                      bl #0x760560
007a2b3c  04 00 a0 e1                                      mov r0, r4
007a2b40  d5 1b ff eb                                      bl #0x769a9c
007a2b44  04 00 a0 e1                                      mov r0, r4
007a2b48  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a2b4c  98 1f 1f 00 88 17 00 00                          .byte 0x98, 0x1f, 0x1f, 0x00, 0x88, 0x17, 0x00, 0x00

; FUNCTION 0x007a2b54, declared_size=696, range_size=696, mode=arm
; class-group: gameswf::as_mcloader
; alias: _ZN7gameswf11as_mcloaderC2EPNS_6playerE
; demangled: gameswf::as_mcloader::as_mcloader(gameswf::player*)
; decoder-mode: arm
007a2b54  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007a2b58  78 52 9f e5                                      ldr r5, [pc, #0x278]
007a2b5c  78 72 9f e5                                      ldr r7, [pc, #0x278]
007a2b60  ac d0 4d e2                                      sub sp, sp, #0xac
007a2b64  05 50 8f e0                                      add r5, pc, r5
007a2b68  07 30 95 e7                                      ldr r3, [r5, r7]
007a2b6c  00 40 a0 e1                                      mov r4, r0
007a2b70  00 80 a0 e3                                      mov r8, #0
007a2b74  00 30 93 e5                                      ldr r3, [r3]
007a2b78  90 a0 8d e2                                      add sl, sp, #0x90
007a2b7c  34 60 8d e2                                      add r6, sp, #0x34
007a2b80  a4 30 8d e5                                      str r3, [sp, #0xa4]
007a2b84  55 24 ff eb                                      bl #0x76bce0
007a2b88  50 32 9f e5                                      ldr r3, [pc, #0x250]
007a2b8c  50 12 9f e5                                      ldr r1, [pc, #0x250]
007a2b90  38 80 84 e5                                      str r8, [r4, #0x38]
007a2b94  03 30 95 e7                                      ldr r3, [r5, r3]
007a2b98  01 10 8f e0                                      add r1, pc, r1
007a2b9c  3c 80 84 e5                                      str r8, [r4, #0x3c]
007a2ba0  08 30 83 e2                                      add r3, r3, #8
007a2ba4  00 30 84 e5                                      str r3, [r4]
007a2ba8  40 80 84 e5                                      str r8, [r4, #0x40]
007a2bac  44 80 c4 e5                                      strb r8, [r4, #0x44]
007a2bb0  48 80 84 e5                                      str r8, [r4, #0x48]
007a2bb4  4c 80 84 e5                                      str r8, [r4, #0x4c]
007a2bb8  50 80 84 e5                                      str r8, [r4, #0x50]
007a2bbc  54 80 c4 e5                                      strb r8, [r4, #0x54]
007a2bc0  0a 00 a0 e1                                      mov r0, sl
007a2bc4  ac c3 f1 eb                                      bl #0x413a7c
007a2bc8  18 32 9f e5                                      ldr r3, [pc, #0x218]
007a2bcc  06 00 a0 e1                                      mov r0, r6
007a2bd0  35 80 cd e5                                      strb r8, [sp, #0x35]
007a2bd4  03 10 95 e7                                      ldr r1, [r5, r3]
007a2bd8  34 80 cd e5                                      strb r8, [sp, #0x34]
007a2bdc  af d1 ff eb                                      bl #0x7972a0
007a2be0  04 00 a0 e1                                      mov r0, r4
007a2be4  0a 10 a0 e1                                      mov r1, sl
007a2be8  06 20 a0 e1                                      mov r2, r6
007a2bec  d8 17 ff eb                                      bl #0x768b54
007a2bf0  06 00 a0 e1                                      mov r0, r6
007a2bf4  4a d1 ff eb                                      bl #0x797124
007a2bf8  d0 39 dd e1                                      ldrsb r3, [sp, #0x90]
007a2bfc  01 00 73 e3                                      cmn r3, #1
007a2c00  5f 00 00 0a                                      beq #0x7a2d84
007a2c04  e0 11 9f e5                                      ldr r1, [pc, #0x1e0]
007a2c08  7c 80 8d e2                                      add r8, sp, #0x7c
007a2c0c  08 00 a0 e1                                      mov r0, r8
007a2c10  01 10 8f e0                                      add r1, pc, r1
007a2c14  98 c3 f1 eb                                      bl #0x413a7c
007a2c18  d0 21 9f e5                                      ldr r2, [pc, #0x1d0]
007a2c1c  28 60 8d e2                                      add r6, sp, #0x28
007a2c20  00 30 a0 e3                                      mov r3, #0
007a2c24  02 10 95 e7                                      ldr r1, [r5, r2]
007a2c28  06 00 a0 e1                                      mov r0, r6
007a2c2c  29 30 cd e5                                      strb r3, [sp, #0x29]
007a2c30  28 30 cd e5                                      strb r3, [sp, #0x28]
007a2c34  99 d1 ff eb                                      bl #0x7972a0
007a2c38  04 00 a0 e1                                      mov r0, r4
007a2c3c  08 10 a0 e1                                      mov r1, r8
007a2c40  06 20 a0 e1                                      mov r2, r6
007a2c44  c2 17 ff eb                                      bl #0x768b54
007a2c48  06 00 a0 e1                                      mov r0, r6
007a2c4c  34 d1 ff eb                                      bl #0x797124
007a2c50  dc 37 dd e1                                      ldrsb r3, [sp, #0x7c]
007a2c54  01 00 73 e3                                      cmn r3, #1
007a2c58  4d 00 00 0a                                      beq #0x7a2d94
007a2c5c  90 11 9f e5                                      ldr r1, [pc, #0x190]
007a2c60  68 80 8d e2                                      add r8, sp, #0x68
007a2c64  08 00 a0 e1                                      mov r0, r8
007a2c68  01 10 8f e0                                      add r1, pc, r1
007a2c6c  82 c3 f1 eb                                      bl #0x413a7c
007a2c70  80 21 9f e5                                      ldr r2, [pc, #0x180]
007a2c74  1c 60 8d e2                                      add r6, sp, #0x1c
007a2c78  00 30 a0 e3                                      mov r3, #0
007a2c7c  02 10 95 e7                                      ldr r1, [r5, r2]
007a2c80  06 00 a0 e1                                      mov r0, r6
007a2c84  1d 30 cd e5                                      strb r3, [sp, #0x1d]
007a2c88  1c 30 cd e5                                      strb r3, [sp, #0x1c]
007a2c8c  83 d1 ff eb                                      bl #0x7972a0
007a2c90  04 00 a0 e1                                      mov r0, r4
007a2c94  08 10 a0 e1                                      mov r1, r8
007a2c98  06 20 a0 e1                                      mov r2, r6
007a2c9c  ac 17 ff eb                                      bl #0x768b54
007a2ca0  06 00 a0 e1                                      mov r0, r6
007a2ca4  1e d1 ff eb                                      bl #0x797124
007a2ca8  d8 36 dd e1                                      ldrsb r3, [sp, #0x68]
007a2cac  01 00 73 e3                                      cmn r3, #1
007a2cb0  3b 00 00 0a                                      beq #0x7a2da4
007a2cb4  40 11 9f e5                                      ldr r1, [pc, #0x140]
007a2cb8  54 80 8d e2                                      add r8, sp, #0x54
007a2cbc  08 00 a0 e1                                      mov r0, r8
007a2cc0  01 10 8f e0                                      add r1, pc, r1
007a2cc4  6c c3 f1 eb                                      bl #0x413a7c
007a2cc8  30 21 9f e5                                      ldr r2, [pc, #0x130]
007a2ccc  10 60 8d e2                                      add r6, sp, #0x10
007a2cd0  00 30 a0 e3                                      mov r3, #0
007a2cd4  02 10 95 e7                                      ldr r1, [r5, r2]
007a2cd8  06 00 a0 e1                                      mov r0, r6
007a2cdc  11 30 cd e5                                      strb r3, [sp, #0x11]
007a2ce0  10 30 cd e5                                      strb r3, [sp, #0x10]
007a2ce4  6d d1 ff eb                                      bl #0x7972a0
007a2ce8  04 00 a0 e1                                      mov r0, r4
007a2cec  08 10 a0 e1                                      mov r1, r8
007a2cf0  06 20 a0 e1                                      mov r2, r6
007a2cf4  96 17 ff eb                                      bl #0x768b54
007a2cf8  06 00 a0 e1                                      mov r0, r6
007a2cfc  08 d1 ff eb                                      bl #0x797124
007a2d00  d4 35 dd e1                                      ldrsb r3, [sp, #0x54]
007a2d04  01 00 73 e3                                      cmn r3, #1
007a2d08  29 00 00 0a                                      beq #0x7a2db4
007a2d0c  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
007a2d10  40 80 8d e2                                      add r8, sp, #0x40
007a2d14  08 00 a0 e1                                      mov r0, r8
007a2d18  01 10 8f e0                                      add r1, pc, r1
007a2d1c  56 c3 f1 eb                                      bl #0x413a7c
007a2d20  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
007a2d24  04 60 8d e2                                      add r6, sp, #4
007a2d28  00 30 a0 e3                                      mov r3, #0
007a2d2c  02 10 95 e7                                      ldr r1, [r5, r2]
007a2d30  06 00 a0 e1                                      mov r0, r6
007a2d34  05 30 cd e5                                      strb r3, [sp, #5]
007a2d38  04 30 cd e5                                      strb r3, [sp, #4]
007a2d3c  57 d1 ff eb                                      bl #0x7972a0
007a2d40  04 00 a0 e1                                      mov r0, r4
007a2d44  08 10 a0 e1                                      mov r1, r8
007a2d48  06 20 a0 e1                                      mov r2, r6
007a2d4c  80 17 ff eb                                      bl #0x768b54
007a2d50  06 00 a0 e1                                      mov r0, r6
007a2d54  f2 d0 ff eb                                      bl #0x797124
007a2d58  d0 34 dd e1                                      ldrsb r3, [sp, #0x40]
007a2d5c  01 00 73 e3                                      cmn r3, #1
007a2d60  17 00 00 0a                                      beq #0x7a2dc4
007a2d64  07 30 95 e7                                      ldr r3, [r5, r7]
007a2d68  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
007a2d6c  04 00 a0 e1                                      mov r0, r4
007a2d70  00 30 93 e5                                      ldr r3, [r3]
007a2d74  03 00 52 e1                                      cmp r2, r3
007a2d78  15 00 00 1a                                      bne #0x7a2dd4
007a2d7c  ac d0 8d e2                                      add sp, sp, #0xac
007a2d80  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007a2d84  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
007a2d88  98 10 9d e5                                      ldr r1, [sp, #0x98]
007a2d8c  69 bf fe eb                                      bl #0x752b38
007a2d90  9b ff ff ea                                      b #0x7a2c04
007a2d94  88 00 9d e5                                      ldr r0, [sp, #0x88]
007a2d98  84 10 9d e5                                      ldr r1, [sp, #0x84]
007a2d9c  65 bf fe eb                                      bl #0x752b38
007a2da0  ad ff ff ea                                      b #0x7a2c5c
007a2da4  74 00 9d e5                                      ldr r0, [sp, #0x74]
007a2da8  70 10 9d e5                                      ldr r1, [sp, #0x70]
007a2dac  61 bf fe eb                                      bl #0x752b38
007a2db0  bf ff ff ea                                      b #0x7a2cb4
007a2db4  60 00 9d e5                                      ldr r0, [sp, #0x60]
007a2db8  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
007a2dbc  5d bf fe eb                                      bl #0x752b38
007a2dc0  d1 ff ff ea                                      b #0x7a2d0c
007a2dc4  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007a2dc8  48 10 9d e5                                      ldr r1, [sp, #0x48]
007a2dcc  59 bf fe eb                                      bl #0x752b38
007a2dd0  e3 ff ff ea                                      b #0x7a2d64
007a2dd4  4d ad ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007a2dd8  2c 1f 1f 00 ac 40 00 00 88 17 00 00 98 75 16 00  .byte 0x2c, 0x1f, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0x17, 0x00, 0x00, 0x98, 0x75, 0x16, 0x00
007a2de8  80 30 00 00 30 75 16 00 4c 2f 00 00 f0 78 16 00  .byte 0x80, 0x30, 0x00, 0x00, 0x30, 0x75, 0x16, 0x00, 0x4c, 0x2f, 0x00, 0x00, 0xf0, 0x78, 0x16, 0x00
007a2df8  24 18 00 00 a8 78 16 00 90 24 00 00 60 78 16 00  .byte 0x24, 0x18, 0x00, 0x00, 0xa8, 0x78, 0x16, 0x00, 0x90, 0x24, 0x00, 0x00, 0x60, 0x78, 0x16, 0x00
007a2e08  e8 31 00 00                                      .byte 0xe8, 0x31, 0x00, 0x00

; FUNCTION 0x007a2e0c, declared_size=696, range_size=696, mode=arm
; class-group: gameswf::as_mcloader
; alias: _ZN7gameswf11as_mcloaderC1EPNS_6playerE
; demangled: gameswf::as_mcloader::as_mcloader(gameswf::player*)
; decoder-mode: arm
007a2e0c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007a2e10  78 52 9f e5                                      ldr r5, [pc, #0x278]
007a2e14  78 72 9f e5                                      ldr r7, [pc, #0x278]
007a2e18  ac d0 4d e2                                      sub sp, sp, #0xac
007a2e1c  05 50 8f e0                                      add r5, pc, r5
007a2e20  07 30 95 e7                                      ldr r3, [r5, r7]
007a2e24  00 40 a0 e1                                      mov r4, r0
007a2e28  00 80 a0 e3                                      mov r8, #0
007a2e2c  00 30 93 e5                                      ldr r3, [r3]
007a2e30  90 a0 8d e2                                      add sl, sp, #0x90
007a2e34  34 60 8d e2                                      add r6, sp, #0x34
007a2e38  a4 30 8d e5                                      str r3, [sp, #0xa4]
007a2e3c  a7 23 ff eb                                      bl #0x76bce0
007a2e40  50 32 9f e5                                      ldr r3, [pc, #0x250]
007a2e44  50 12 9f e5                                      ldr r1, [pc, #0x250]
007a2e48  38 80 84 e5                                      str r8, [r4, #0x38]
007a2e4c  03 30 95 e7                                      ldr r3, [r5, r3]
007a2e50  01 10 8f e0                                      add r1, pc, r1
007a2e54  3c 80 84 e5                                      str r8, [r4, #0x3c]
007a2e58  08 30 83 e2                                      add r3, r3, #8
007a2e5c  00 30 84 e5                                      str r3, [r4]
007a2e60  40 80 84 e5                                      str r8, [r4, #0x40]
007a2e64  44 80 c4 e5                                      strb r8, [r4, #0x44]
007a2e68  48 80 84 e5                                      str r8, [r4, #0x48]
007a2e6c  4c 80 84 e5                                      str r8, [r4, #0x4c]
007a2e70  50 80 84 e5                                      str r8, [r4, #0x50]
007a2e74  54 80 c4 e5                                      strb r8, [r4, #0x54]
007a2e78  0a 00 a0 e1                                      mov r0, sl
007a2e7c  fe c2 f1 eb                                      bl #0x413a7c
007a2e80  18 32 9f e5                                      ldr r3, [pc, #0x218]
007a2e84  06 00 a0 e1                                      mov r0, r6
007a2e88  35 80 cd e5                                      strb r8, [sp, #0x35]
007a2e8c  03 10 95 e7                                      ldr r1, [r5, r3]
007a2e90  34 80 cd e5                                      strb r8, [sp, #0x34]
007a2e94  01 d1 ff eb                                      bl #0x7972a0
007a2e98  04 00 a0 e1                                      mov r0, r4
007a2e9c  0a 10 a0 e1                                      mov r1, sl
007a2ea0  06 20 a0 e1                                      mov r2, r6
007a2ea4  2a 17 ff eb                                      bl #0x768b54
007a2ea8  06 00 a0 e1                                      mov r0, r6
007a2eac  9c d0 ff eb                                      bl #0x797124
007a2eb0  d0 39 dd e1                                      ldrsb r3, [sp, #0x90]
007a2eb4  01 00 73 e3                                      cmn r3, #1
007a2eb8  5f 00 00 0a                                      beq #0x7a303c
007a2ebc  e0 11 9f e5                                      ldr r1, [pc, #0x1e0]
007a2ec0  7c 80 8d e2                                      add r8, sp, #0x7c
007a2ec4  08 00 a0 e1                                      mov r0, r8
007a2ec8  01 10 8f e0                                      add r1, pc, r1
007a2ecc  ea c2 f1 eb                                      bl #0x413a7c
007a2ed0  d0 21 9f e5                                      ldr r2, [pc, #0x1d0]
007a2ed4  28 60 8d e2                                      add r6, sp, #0x28
007a2ed8  00 30 a0 e3                                      mov r3, #0
007a2edc  02 10 95 e7                                      ldr r1, [r5, r2]
007a2ee0  06 00 a0 e1                                      mov r0, r6
007a2ee4  29 30 cd e5                                      strb r3, [sp, #0x29]
007a2ee8  28 30 cd e5                                      strb r3, [sp, #0x28]
007a2eec  eb d0 ff eb                                      bl #0x7972a0
007a2ef0  04 00 a0 e1                                      mov r0, r4
007a2ef4  08 10 a0 e1                                      mov r1, r8
007a2ef8  06 20 a0 e1                                      mov r2, r6
007a2efc  14 17 ff eb                                      bl #0x768b54
007a2f00  06 00 a0 e1                                      mov r0, r6
007a2f04  86 d0 ff eb                                      bl #0x797124
007a2f08  dc 37 dd e1                                      ldrsb r3, [sp, #0x7c]
007a2f0c  01 00 73 e3                                      cmn r3, #1
007a2f10  4d 00 00 0a                                      beq #0x7a304c
007a2f14  90 11 9f e5                                      ldr r1, [pc, #0x190]
007a2f18  68 80 8d e2                                      add r8, sp, #0x68
007a2f1c  08 00 a0 e1                                      mov r0, r8
007a2f20  01 10 8f e0                                      add r1, pc, r1
007a2f24  d4 c2 f1 eb                                      bl #0x413a7c
007a2f28  80 21 9f e5                                      ldr r2, [pc, #0x180]
007a2f2c  1c 60 8d e2                                      add r6, sp, #0x1c
007a2f30  00 30 a0 e3                                      mov r3, #0
007a2f34  02 10 95 e7                                      ldr r1, [r5, r2]
007a2f38  06 00 a0 e1                                      mov r0, r6
007a2f3c  1d 30 cd e5                                      strb r3, [sp, #0x1d]
007a2f40  1c 30 cd e5                                      strb r3, [sp, #0x1c]
007a2f44  d5 d0 ff eb                                      bl #0x7972a0
007a2f48  04 00 a0 e1                                      mov r0, r4
007a2f4c  08 10 a0 e1                                      mov r1, r8
007a2f50  06 20 a0 e1                                      mov r2, r6
007a2f54  fe 16 ff eb                                      bl #0x768b54
007a2f58  06 00 a0 e1                                      mov r0, r6
007a2f5c  70 d0 ff eb                                      bl #0x797124
007a2f60  d8 36 dd e1                                      ldrsb r3, [sp, #0x68]
007a2f64  01 00 73 e3                                      cmn r3, #1
007a2f68  3b 00 00 0a                                      beq #0x7a305c
007a2f6c  40 11 9f e5                                      ldr r1, [pc, #0x140]
007a2f70  54 80 8d e2                                      add r8, sp, #0x54
007a2f74  08 00 a0 e1                                      mov r0, r8
007a2f78  01 10 8f e0                                      add r1, pc, r1
007a2f7c  be c2 f1 eb                                      bl #0x413a7c
007a2f80  30 21 9f e5                                      ldr r2, [pc, #0x130]
007a2f84  10 60 8d e2                                      add r6, sp, #0x10
007a2f88  00 30 a0 e3                                      mov r3, #0
007a2f8c  02 10 95 e7                                      ldr r1, [r5, r2]
007a2f90  06 00 a0 e1                                      mov r0, r6
007a2f94  11 30 cd e5                                      strb r3, [sp, #0x11]
007a2f98  10 30 cd e5                                      strb r3, [sp, #0x10]
007a2f9c  bf d0 ff eb                                      bl #0x7972a0
007a2fa0  04 00 a0 e1                                      mov r0, r4
007a2fa4  08 10 a0 e1                                      mov r1, r8
007a2fa8  06 20 a0 e1                                      mov r2, r6
007a2fac  e8 16 ff eb                                      bl #0x768b54
007a2fb0  06 00 a0 e1                                      mov r0, r6
007a2fb4  5a d0 ff eb                                      bl #0x797124
007a2fb8  d4 35 dd e1                                      ldrsb r3, [sp, #0x54]
007a2fbc  01 00 73 e3                                      cmn r3, #1
007a2fc0  29 00 00 0a                                      beq #0x7a306c
007a2fc4  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
007a2fc8  40 80 8d e2                                      add r8, sp, #0x40
007a2fcc  08 00 a0 e1                                      mov r0, r8
007a2fd0  01 10 8f e0                                      add r1, pc, r1
007a2fd4  a8 c2 f1 eb                                      bl #0x413a7c
007a2fd8  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
007a2fdc  04 60 8d e2                                      add r6, sp, #4
007a2fe0  00 30 a0 e3                                      mov r3, #0
007a2fe4  02 10 95 e7                                      ldr r1, [r5, r2]
007a2fe8  06 00 a0 e1                                      mov r0, r6
007a2fec  05 30 cd e5                                      strb r3, [sp, #5]
007a2ff0  04 30 cd e5                                      strb r3, [sp, #4]
007a2ff4  a9 d0 ff eb                                      bl #0x7972a0
007a2ff8  04 00 a0 e1                                      mov r0, r4
007a2ffc  08 10 a0 e1                                      mov r1, r8
007a3000  06 20 a0 e1                                      mov r2, r6
007a3004  d2 16 ff eb                                      bl #0x768b54
007a3008  06 00 a0 e1                                      mov r0, r6
007a300c  44 d0 ff eb                                      bl #0x797124
007a3010  d0 34 dd e1                                      ldrsb r3, [sp, #0x40]
007a3014  01 00 73 e3                                      cmn r3, #1
007a3018  17 00 00 0a                                      beq #0x7a307c
007a301c  07 30 95 e7                                      ldr r3, [r5, r7]
007a3020  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
007a3024  04 00 a0 e1                                      mov r0, r4
007a3028  00 30 93 e5                                      ldr r3, [r3]
007a302c  03 00 52 e1                                      cmp r2, r3
007a3030  15 00 00 1a                                      bne #0x7a308c
007a3034  ac d0 8d e2                                      add sp, sp, #0xac
007a3038  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007a303c  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
007a3040  98 10 9d e5                                      ldr r1, [sp, #0x98]
007a3044  bb be fe eb                                      bl #0x752b38
007a3048  9b ff ff ea                                      b #0x7a2ebc
007a304c  88 00 9d e5                                      ldr r0, [sp, #0x88]
007a3050  84 10 9d e5                                      ldr r1, [sp, #0x84]
007a3054  b7 be fe eb                                      bl #0x752b38
007a3058  ad ff ff ea                                      b #0x7a2f14
007a305c  74 00 9d e5                                      ldr r0, [sp, #0x74]
007a3060  70 10 9d e5                                      ldr r1, [sp, #0x70]
007a3064  b3 be fe eb                                      bl #0x752b38
007a3068  bf ff ff ea                                      b #0x7a2f6c
007a306c  60 00 9d e5                                      ldr r0, [sp, #0x60]
007a3070  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
007a3074  af be fe eb                                      bl #0x752b38
007a3078  d1 ff ff ea                                      b #0x7a2fc4
007a307c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007a3080  48 10 9d e5                                      ldr r1, [sp, #0x48]
007a3084  ab be fe eb                                      bl #0x752b38
007a3088  e3 ff ff ea                                      b #0x7a301c
007a308c  9f ac ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007a3090  74 1c 1f 00 ac 40 00 00 88 17 00 00 e0 72 16 00  .byte 0x74, 0x1c, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0x17, 0x00, 0x00, 0xe0, 0x72, 0x16, 0x00
007a30a0  80 30 00 00 78 72 16 00 4c 2f 00 00 38 76 16 00  .byte 0x80, 0x30, 0x00, 0x00, 0x78, 0x72, 0x16, 0x00, 0x4c, 0x2f, 0x00, 0x00, 0x38, 0x76, 0x16, 0x00
007a30b0  24 18 00 00 f0 75 16 00 90 24 00 00 a8 75 16 00  .byte 0x24, 0x18, 0x00, 0x00, 0xf0, 0x75, 0x16, 0x00, 0x90, 0x24, 0x00, 0x00, 0xa8, 0x75, 0x16, 0x00
007a30c0  e8 31 00 00                                      .byte 0xe8, 0x31, 0x00, 0x00

; FUNCTION 0x007a30c4, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::as_mcloader
; alias: _ZN7gameswf11as_mcloaderD1Ev
; demangled: gameswf::as_mcloader::~as_mcloader()
; decoder-mode: arm
007a30c4  58 30 9f e5                                      ldr r3, [pc, #0x58]
007a30c8  58 20 9f e5                                      ldr r2, [pc, #0x58]
007a30cc  70 40 2d e9                                      push {r4, r5, r6, lr}
007a30d0  03 30 8f e0                                      add r3, pc, r3
007a30d4  02 20 93 e7                                      ldr r2, [r3, r2]
007a30d8  00 60 a0 e1                                      mov r6, r0
007a30dc  00 40 a0 e1                                      mov r4, r0
007a30e0  08 20 82 e2                                      add r2, r2, #8
007a30e4  48 20 86 e4                                      str r2, [r6], #0x48
007a30e8  38 50 80 e2                                      add r5, r0, #0x38
007a30ec  06 00 a0 e1                                      mov r0, r6
007a30f0  03 fe ff eb                                      bl #0x7a2904
007a30f4  06 00 a0 e1                                      mov r0, r6
007a30f8  00 10 a0 e3                                      mov r1, #0
007a30fc  33 fd ff eb                                      bl #0x7a25d0
007a3100  05 00 a0 e1                                      mov r0, r5
007a3104  53 fe ff eb                                      bl #0x7a2a58
007a3108  05 00 a0 e1                                      mov r0, r5
007a310c  00 10 a0 e3                                      mov r1, #0
007a3110  12 f5 fe eb                                      bl #0x760560
007a3114  04 00 a0 e1                                      mov r0, r4
007a3118  5f 1a ff eb                                      bl #0x769a9c
007a311c  04 00 a0 e1                                      mov r0, r4
007a3120  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a3124  c0 19 1f 00 88 17 00 00                          .byte 0xc0, 0x19, 0x1f, 0x00, 0x88, 0x17, 0x00, 0x00

; FUNCTION 0x007a312c, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_mcloader
; alias: _ZN7gameswf11as_mcloaderD0Ev
; demangled: gameswf::as_mcloader::~as_mcloader()
; decoder-mode: arm
007a312c  10 40 2d e9                                      push {r4, lr}
007a3130  00 40 a0 e1                                      mov r4, r0
007a3134  e2 ff ff eb                                      bl #0x7a30c4
007a3138  04 00 a0 e1                                      mov r0, r4
007a313c  5b ac ed eb                                      bl #0x30e2b0
007a3140  04 00 a0 e1                                      mov r0, r4
007a3144  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a3148, declared_size=620, range_size=620, mode=arm
; class-group: gameswf::as_mcloader
; alias: _ZN7gameswf11as_mcloader7advanceEf
; demangled: gameswf::as_mcloader::advance(float)
; decoder-mode: arm
007a3148  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007a314c  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
007a3150  54 d0 4d e2                                      sub sp, sp, #0x54
007a3154  00 60 a0 e1                                      mov r6, r0
007a3158  00 00 53 e3                                      cmp r3, #0
007a315c  8d 00 00 0a                                      beq #0x7a3398
007a3160  48 20 80 e2                                      add r2, r0, #0x48
007a3164  04 20 8d e5                                      str r2, [sp, #4]
007a3168  40 20 8d e2                                      add r2, sp, #0x40
007a316c  08 20 8d e5                                      str r2, [sp, #8]
007a3170  48 20 8d e2                                      add r2, sp, #0x48
007a3174  00 20 8d e5                                      str r2, [sp]
007a3178  30 20 8d e2                                      add r2, sp, #0x30
007a317c  00 70 a0 e3                                      mov r7, #0
007a3180  0c 20 8d e5                                      str r2, [sp, #0xc]
007a3184  28 20 8d e2                                      add r2, sp, #0x28
007a3188  10 20 8d e5                                      str r2, [sp, #0x10]
007a318c  03 00 57 e1                                      cmp r7, r3
007a3190  38 20 8d e2                                      add r2, sp, #0x38
007a3194  38 90 80 e2                                      add sb, r0, #0x38
007a3198  07 50 a0 e1                                      mov r5, r7
007a319c  18 40 8d e2                                      add r4, sp, #0x18
007a31a0  4c b0 8d e2                                      add fp, sp, #0x4c
007a31a4  14 20 8d e5                                      str r2, [sp, #0x14]
007a31a8  34 00 00 aa                                      bge #0x7a3280
007a31ac  48 10 96 e5                                      ldr r1, [r6, #0x48]
007a31b0  07 82 a0 e1                                      lsl r8, r7, #4
007a31b4  04 00 a0 e1                                      mov r0, r4
007a31b8  08 10 81 e0                                      add r1, r1, r8
007a31bc  0c 10 81 e2                                      add r1, r1, #0xc
007a31c0  18 50 8d e5                                      str r5, [sp, #0x18]
007a31c4  1c 50 8d e5                                      str r5, [sp, #0x1c]
007a31c8  20 50 8d e5                                      str r5, [sp, #0x20]
007a31cc  24 50 cd e5                                      strb r5, [sp, #0x24]
007a31d0  1d fd ff eb                                      bl #0x7a264c
007a31d4  48 a0 96 e5                                      ldr sl, [r6, #0x48]
007a31d8  07 12 9a e7                                      ldr r1, [sl, r7, lsl #4]
007a31dc  08 a0 8a e0                                      add sl, sl, r8
007a31e0  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
007a31e4  00 00 53 e3                                      cmp r3, #0
007a31e8  02 00 00 da                                      ble #0x7a31f8
007a31ec  0c 30 9a e5                                      ldr r3, [sl, #0xc]
007a31f0  00 00 53 e3                                      cmp r3, #0
007a31f4  45 00 00 0a                                      beq #0x7a3310
007a31f8  01 00 a0 e1                                      mov r0, r1
007a31fc  3a 01 ff eb                                      bl #0x7636ec
007a3200  48 30 96 e5                                      ldr r3, [r6, #0x48]
007a3204  4c 00 8d e5                                      str r0, [sp, #0x4c]
007a3208  08 00 93 e7                                      ldr r0, [r3, r8]
007a320c  34 01 ff eb                                      bl #0x7636e4
007a3210  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
007a3214  48 00 8d e5                                      str r0, [sp, #0x48]
007a3218  03 00 50 e1                                      cmp r0, r3
007a321c  19 00 00 da                                      ble #0x7a3288
007a3220  04 00 a0 e1                                      mov r0, r4
007a3224  0b 10 a0 e1                                      mov r1, fp
007a3228  1b f5 fe eb                                      bl #0x76069c
007a322c  04 00 a0 e1                                      mov r0, r4
007a3230  00 10 9d e5                                      ldr r1, [sp]
007a3234  18 f5 fe eb                                      bl #0x76069c
007a3238  19 30 a0 e3                                      mov r3, #0x19
007a323c  14 10 9d e5                                      ldr r1, [sp, #0x14]
007a3240  09 00 a0 e1                                      mov r0, sb
007a3244  38 30 cd e5                                      strb r3, [sp, #0x38]
007a3248  00 30 a0 e3                                      mov r3, #0
007a324c  ba 33 cd e1                                      strh r3, [sp, #0x3a]
007a3250  39 50 cd e5                                      strb r5, [sp, #0x39]
007a3254  3c 40 8d e5                                      str r4, [sp, #0x3c]
007a3258  56 f5 fe eb                                      bl #0x7607b8
007a325c  04 00 a0 e1                                      mov r0, r4
007a3260  dd fd ff eb                                      bl #0x7a29dc
007a3264  04 00 a0 e1                                      mov r0, r4
007a3268  00 10 a0 e3                                      mov r1, #0
007a326c  66 dc fe eb                                      bl #0x75a40c
007a3270  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
007a3274  01 70 87 e2                                      add r7, r7, #1
007a3278  03 00 57 e1                                      cmp r7, r3
007a327c  ca ff ff ba                                      blt #0x7a31ac
007a3280  54 d0 8d e2                                      add sp, sp, #0x54
007a3284  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007a3288  04 00 a0 e1                                      mov r0, r4
007a328c  0b 10 a0 e1                                      mov r1, fp
007a3290  01 f5 fe eb                                      bl #0x76069c
007a3294  04 00 a0 e1                                      mov r0, r4
007a3298  00 10 9d e5                                      ldr r1, [sp]
007a329c  fe f4 fe eb                                      bl #0x76069c
007a32a0  00 20 a0 e3                                      mov r2, #0
007a32a4  19 30 a0 e3                                      mov r3, #0x19
007a32a8  09 00 a0 e1                                      mov r0, sb
007a32ac  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007a32b0  b2 23 cd e1                                      strh r2, [sp, #0x32]
007a32b4  30 30 cd e5                                      strb r3, [sp, #0x30]
007a32b8  31 50 cd e5                                      strb r5, [sp, #0x31]
007a32bc  34 40 8d e5                                      str r4, [sp, #0x34]
007a32c0  3c f5 fe eb                                      bl #0x7607b8
007a32c4  16 30 a0 e3                                      mov r3, #0x16
007a32c8  09 00 a0 e1                                      mov r0, sb
007a32cc  10 10 9d e5                                      ldr r1, [sp, #0x10]
007a32d0  28 30 cd e5                                      strb r3, [sp, #0x28]
007a32d4  00 30 a0 e3                                      mov r3, #0
007a32d8  ba 32 cd e1                                      strh r3, [sp, #0x2a]
007a32dc  29 50 cd e5                                      strb r5, [sp, #0x29]
007a32e0  2c 40 8d e5                                      str r4, [sp, #0x2c]
007a32e4  33 f5 fe eb                                      bl #0x7607b8
007a32e8  07 10 a0 e1                                      mov r1, r7
007a32ec  04 00 9d e5                                      ldr r0, [sp, #4]
007a32f0  a1 fd ff eb                                      bl #0x7a297c
007a32f4  04 00 a0 e1                                      mov r0, r4
007a32f8  b7 fd ff eb                                      bl #0x7a29dc
007a32fc  04 00 a0 e1                                      mov r0, r4
007a3300  00 10 a0 e3                                      mov r1, #0
007a3304  40 dc fe eb                                      bl #0x75a40c
007a3308  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
007a330c  d9 ff ff ea                                      b #0x7a3278
007a3310  08 30 9a e5                                      ldr r3, [sl, #8]
007a3314  00 00 53 e3                                      cmp r3, #0
007a3318  08 00 00 0a                                      beq #0x7a3340
007a331c  04 00 9a e5                                      ldr r0, [sl, #4]
007a3320  04 20 d0 e5                                      ldrb r2, [r0, #4]
007a3324  00 00 52 e3                                      cmp r2, #0
007a3328  10 00 00 0a                                      beq #0x7a3370
007a332c  03 00 a0 e1                                      mov r0, r3
007a3330  00 30 93 e5                                      ldr r3, [r3]
007a3334  0f e0 a0 e1                                      mov lr, pc
007a3338  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
007a333c  0c 00 8a e5                                      str r0, [sl, #0xc]
007a3340  18 30 a0 e3                                      mov r3, #0x18
007a3344  08 10 9d e5                                      ldr r1, [sp, #8]
007a3348  00 20 a0 e3                                      mov r2, #0
007a334c  09 00 a0 e1                                      mov r0, sb
007a3350  40 30 cd e5                                      strb r3, [sp, #0x40]
007a3354  41 50 cd e5                                      strb r5, [sp, #0x41]
007a3358  b2 24 cd e1                                      strh r2, [sp, #0x42]
007a335c  44 40 8d e5                                      str r4, [sp, #0x44]
007a3360  14 f5 fe eb                                      bl #0x7607b8
007a3364  48 30 96 e5                                      ldr r3, [r6, #0x48]
007a3368  08 10 93 e7                                      ldr r1, [r3, r8]
007a336c  a1 ff ff ea                                      b #0x7a31f8
007a3370  00 30 90 e5                                      ldr r3, [r0]
007a3374  01 30 43 e2                                      sub r3, r3, #1
007a3378  00 00 53 e3                                      cmp r3, #0
007a337c  00 30 80 e5                                      str r3, [r0]
007a3380  01 00 00 1a                                      bne #0x7a338c
007a3384  05 10 a0 e1                                      mov r1, r5
007a3388  ea bd fe eb                                      bl #0x752b38
007a338c  08 50 8a e5                                      str r5, [sl, #8]
007a3390  04 50 8a e5                                      str r5, [sl, #4]
007a3394  e9 ff ff ea                                      b #0x7a3340
007a3398  00 30 90 e5                                      ldr r3, [r0]
007a339c  0f e0 a0 e1                                      mov lr, pc
007a33a0  54 f0 93 e5                                      ldr pc, [r3, #0x54]
007a33a4  06 10 a0 e1                                      mov r1, r6
007a33a8  b8 00 80 e2                                      add r0, r0, #0xb8
007a33ac  a4 f6 fe eb                                      bl #0x760e44
007a33b0  b2 ff ff ea                                      b #0x7a3280
