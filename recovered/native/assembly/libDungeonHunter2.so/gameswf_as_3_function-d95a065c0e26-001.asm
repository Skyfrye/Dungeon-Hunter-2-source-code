; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c28a4, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::as_3_function
; alias: _ZNK7gameswf13as_3_function2isEi
; demangled: gameswf::as_3_function::is(int) const
; decoder-mode: arm
007c28a4  07 00 51 e3                                      cmp r1, #7
007c28a8  04 00 00 0a                                      beq #0x7c28c0
007c28ac  04 00 51 e3                                      cmp r1, #4
007c28b0  02 00 00 0a                                      beq #0x7c28c0
007c28b4  01 00 71 e2                                      rsbs r0, r1, #1
007c28b8  00 00 a0 33                                      movlo r0, #0
007c28bc  1e ff 2f e1                                      bx lr
007c28c0  01 00 a0 e3                                      mov r0, #1
007c28c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007c2c60, declared_size=496, range_size=496, mode=arm
; class-group: gameswf::as_3_function
; alias: _ZN7gameswf13as_3_function9read_bodyEPNS_6streamE
; demangled: gameswf::as_3_function::read_body(gameswf::stream*)
; decoder-mode: arm
007c2c60  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c2c64  00 60 a0 e1                                      mov r6, r0
007c2c68  01 00 a0 e1                                      mov r0, r1
007c2c6c  01 80 a0 e1                                      mov r8, r1
007c2c70  b9 03 ff eb                                      bl #0x783b5c
007c2c74  78 00 86 e5                                      str r0, [r6, #0x78]
007c2c78  08 00 a0 e1                                      mov r0, r8
007c2c7c  b6 03 ff eb                                      bl #0x783b5c
007c2c80  7c 00 86 e5                                      str r0, [r6, #0x7c]
007c2c84  08 00 a0 e1                                      mov r0, r8
007c2c88  b3 03 ff eb                                      bl #0x783b5c
007c2c8c  80 00 86 e5                                      str r0, [r6, #0x80]
007c2c90  08 00 a0 e1                                      mov r0, r8
007c2c94  b0 03 ff eb                                      bl #0x783b5c
007c2c98  84 00 86 e5                                      str r0, [r6, #0x84]
007c2c9c  08 00 a0 e1                                      mov r0, r8
007c2ca0  ad 03 ff eb                                      bl #0x783b5c
007c2ca4  98 a1 9f e5                                      ldr sl, [pc, #0x198]
007c2ca8  00 40 a0 e1                                      mov r4, r0
007c2cac  00 10 a0 e1                                      mov r1, r0
007c2cb0  88 00 86 e2                                      add r0, r6, #0x88
007c2cb4  68 60 fe eb                                      bl #0x75ae5c
007c2cb8  00 00 54 e3                                      cmp r4, #0
007c2cbc  0a a0 8f e0                                      add sl, pc, sl
007c2cc0  07 00 00 da                                      ble #0x7c2ce4
007c2cc4  00 50 a0 e3                                      mov r5, #0
007c2cc8  08 00 a0 e1                                      mov r0, r8
007c2ccc  90 70 96 e5                                      ldr r7, [r6, #0x90]
007c2cd0  94 03 ff eb                                      bl #0x783b28
007c2cd4  05 00 c7 e7                                      strb r0, [r7, r5]
007c2cd8  01 50 85 e2                                      add r5, r5, #1
007c2cdc  04 00 55 e1                                      cmp r5, r4
007c2ce0  f8 ff ff 1a                                      bne #0x7c2cc8
007c2ce4  08 00 a0 e1                                      mov r0, r8
007c2ce8  9b 03 ff eb                                      bl #0x783b5c
007c2cec  00 90 a0 e1                                      mov sb, r0
007c2cf0  00 10 a0 e1                                      mov r1, r0
007c2cf4  98 00 86 e2                                      add r0, r6, #0x98
007c2cf8  85 ff ff eb                                      bl #0x7c2b14
007c2cfc  00 00 59 e3                                      cmp sb, #0
007c2d00  1d 00 00 da                                      ble #0x7c2d7c
007c2d04  3c b1 9f e5                                      ldr fp, [pc, #0x13c]
007c2d08  00 70 a0 e3                                      mov r7, #0
007c2d0c  07 50 a0 e1                                      mov r5, r7
007c2d10  00 10 a0 e3                                      mov r1, #0
007c2d14  20 00 a0 e3                                      mov r0, #0x20
007c2d18  a2 3f fe eb                                      bl #0x752ba8
007c2d1c  00 50 80 e5                                      str r5, [r0]
007c2d20  04 50 80 e5                                      str r5, [r0, #4]
007c2d24  08 50 80 e5                                      str r5, [r0, #8]
007c2d28  0c 50 80 e5                                      str r5, [r0, #0xc]
007c2d2c  10 50 80 e5                                      str r5, [r0, #0x10]
007c2d30  14 50 80 e5                                      str r5, [r0, #0x14]
007c2d34  18 50 80 e5                                      str r5, [r0, #0x18]
007c2d38  1c 50 80 e5                                      str r5, [r0, #0x1c]
007c2d3c  00 40 a0 e1                                      mov r4, r0
007c2d40  af 5b fe eb                                      bl #0x759c04
007c2d44  0b 30 9a e7                                      ldr r3, [sl, fp]
007c2d48  04 00 a0 e1                                      mov r0, r4
007c2d4c  08 10 a0 e1                                      mov r1, r8
007c2d50  08 30 83 e2                                      add r3, r3, #8
007c2d54  00 30 84 e5                                      str r3, [r4]
007c2d58  44 20 96 e5                                      ldr r2, [r6, #0x44]
007c2d5c  9f d4 ff eb                                      bl #0x7b7fe0
007c2d60  98 00 96 e5                                      ldr r0, [r6, #0x98]
007c2d64  04 10 a0 e1                                      mov r1, r4
007c2d68  07 01 80 e0                                      add r0, r0, r7, lsl #2
007c2d6c  01 70 87 e2                                      add r7, r7, #1
007c2d70  f6 fe ff eb                                      bl #0x7c2950
007c2d74  09 00 57 e1                                      cmp r7, sb
007c2d78  e4 ff ff 1a                                      bne #0x7c2d10
007c2d7c  08 00 a0 e1                                      mov r0, r8
007c2d80  75 03 ff eb                                      bl #0x783b5c
007c2d84  00 90 a0 e1                                      mov sb, r0
007c2d88  00 10 a0 e1                                      mov r1, r0
007c2d8c  a8 00 86 e2                                      add r0, r6, #0xa8
007c2d90  46 d7 ff eb                                      bl #0x7b8ab0
007c2d94  00 00 59 e3                                      cmp sb, #0
007c2d98  28 00 00 da                                      ble #0x7c2e40
007c2d9c  a8 b0 9f e5                                      ldr fp, [pc, #0xa8]
007c2da0  00 70 a0 e3                                      mov r7, #0
007c2da4  07 40 a0 e1                                      mov r4, r7
007c2da8  00 10 a0 e3                                      mov r1, #0
007c2dac  34 00 a0 e3                                      mov r0, #0x34
007c2db0  7c 3f fe eb                                      bl #0x752ba8
007c2db4  00 30 a0 e1                                      mov r3, r0
007c2db8  04 40 83 e4                                      str r4, [r3], #4
007c2dbc  04 30 83 e2                                      add r3, r3, #4
007c2dc0  04 40 80 e5                                      str r4, [r0, #4]
007c2dc4  04 40 83 e4                                      str r4, [r3], #4
007c2dc8  04 40 83 e4                                      str r4, [r3], #4
007c2dcc  04 40 83 e4                                      str r4, [r3], #4
007c2dd0  04 40 83 e4                                      str r4, [r3], #4
007c2dd4  04 40 83 e4                                      str r4, [r3], #4
007c2dd8  04 40 83 e4                                      str r4, [r3], #4
007c2ddc  04 40 83 e4                                      str r4, [r3], #4
007c2de0  04 40 83 e4                                      str r4, [r3], #4
007c2de4  04 40 83 e4                                      str r4, [r3], #4
007c2de8  04 40 83 e4                                      str r4, [r3], #4
007c2dec  00 40 83 e5                                      str r4, [r3]
007c2df0  00 50 a0 e1                                      mov r5, r0
007c2df4  82 5b fe eb                                      bl #0x759c04
007c2df8  0b 30 9a e7                                      ldr r3, [sl, fp]
007c2dfc  24 40 85 e5                                      str r4, [r5, #0x24]
007c2e00  28 40 85 e5                                      str r4, [r5, #0x28]
007c2e04  08 30 83 e2                                      add r3, r3, #8
007c2e08  00 30 85 e5                                      str r3, [r5]
007c2e0c  2c 40 85 e5                                      str r4, [r5, #0x2c]
007c2e10  30 40 c5 e5                                      strb r4, [r5, #0x30]
007c2e14  05 00 a0 e1                                      mov r0, r5
007c2e18  08 10 a0 e1                                      mov r1, r8
007c2e1c  44 20 96 e5                                      ldr r2, [r6, #0x44]
007c2e20  57 d5 ff eb                                      bl #0x7b8384
007c2e24  a8 00 96 e5                                      ldr r0, [r6, #0xa8]
007c2e28  05 10 a0 e1                                      mov r1, r5
007c2e2c  07 01 80 e0                                      add r0, r0, r7, lsl #2
007c2e30  01 70 87 e2                                      add r7, r7, #1
007c2e34  e2 d7 ff eb                                      bl #0x7b8dc4
007c2e38  09 00 57 e1                                      cmp r7, sb
007c2e3c  d9 ff ff 1a                                      bne #0x7c2da8
007c2e40  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007c2e44  d4 1d 1d 00 20 3b 00 00 44 36 00 00              .byte 0xd4, 0x1d, 0x1d, 0x00, 0x20, 0x3b, 0x00, 0x00, 0x44, 0x36, 0x00, 0x00

; FUNCTION 0x007c2e50, declared_size=372, range_size=372, mode=arm
; class-group: gameswf::as_3_function
; alias: _ZN7gameswf13as_3_function4readEPNS_6streamE
; demangled: gameswf::as_3_function::read(gameswf::stream*)
; decoder-mode: arm
007c2e50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c2e54  00 50 a0 e1                                      mov r5, r0
007c2e58  01 00 a0 e1                                      mov r0, r1
007c2e5c  01 70 a0 e1                                      mov r7, r1
007c2e60  3d 03 ff eb                                      bl #0x783b5c
007c2e64  00 60 a0 e1                                      mov r6, r0
007c2e68  07 00 a0 e1                                      mov r0, r7
007c2e6c  3a 03 ff eb                                      bl #0x783b5c
007c2e70  00 00 56 e3                                      cmp r6, #0
007c2e74  48 00 85 e5                                      str r0, [r5, #0x48]
007c2e78  4c 80 85 e2                                      add r8, r5, #0x4c
007c2e7c  50 40 95 e5                                      ldr r4, [r5, #0x50]
007c2e80  02 00 00 0a                                      beq #0x7c2e90
007c2e84  54 30 95 e5                                      ldr r3, [r5, #0x54]
007c2e88  03 00 56 e1                                      cmp r6, r3
007c2e8c  48 00 00 ca                                      bgt #0x7c2fb4
007c2e90  04 00 56 e1                                      cmp r6, r4
007c2e94  07 00 00 da                                      ble #0x7c2eb8
007c2e98  04 31 a0 e1                                      lsl r3, r4, #2
007c2e9c  00 10 a0 e3                                      mov r1, #0
007c2ea0  00 20 98 e5                                      ldr r2, [r8]
007c2ea4  01 40 84 e2                                      add r4, r4, #1
007c2ea8  04 00 56 e1                                      cmp r6, r4
007c2eac  03 10 82 e7                                      str r1, [r2, r3]
007c2eb0  04 30 83 e2                                      add r3, r3, #4
007c2eb4  f9 ff ff 1a                                      bne #0x7c2ea0
007c2eb8  00 00 56 e3                                      cmp r6, #0
007c2ebc  50 60 85 e5                                      str r6, [r5, #0x50]
007c2ec0  07 00 00 da                                      ble #0x7c2ee4
007c2ec4  00 40 a0 e3                                      mov r4, #0
007c2ec8  07 00 a0 e1                                      mov r0, r7
007c2ecc  4c 80 95 e5                                      ldr r8, [r5, #0x4c]
007c2ed0  21 03 ff eb                                      bl #0x783b5c
007c2ed4  04 01 88 e7                                      str r0, [r8, r4, lsl #2]
007c2ed8  01 40 84 e2                                      add r4, r4, #1
007c2edc  06 00 54 e1                                      cmp r4, r6
007c2ee0  f8 ff ff 1a                                      bne #0x7c2ec8
007c2ee4  07 00 a0 e1                                      mov r0, r7
007c2ee8  1b 03 ff eb                                      bl #0x783b5c
007c2eec  5c 00 85 e5                                      str r0, [r5, #0x5c]
007c2ef0  07 00 a0 e1                                      mov r0, r7
007c2ef4  0b 03 ff eb                                      bl #0x783b28
007c2ef8  08 00 10 e3                                      tst r0, #8
007c2efc  60 00 c5 e5                                      strb r0, [r5, #0x60]
007c2f00  00 00 00 1a                                      bne #0x7c2f08
007c2f04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c2f08  07 00 a0 e1                                      mov r0, r7
007c2f0c  12 03 ff eb                                      bl #0x783b5c
007c2f10  00 60 50 e2                                      subs r6, r0, #0
007c2f14  64 80 85 e2                                      add r8, r5, #0x64
007c2f18  68 40 95 e5                                      ldr r4, [r5, #0x68]
007c2f1c  1d 00 00 1a                                      bne #0x7c2f98
007c2f20  04 00 56 e1                                      cmp r6, r4
007c2f24  09 00 00 da                                      ble #0x7c2f50
007c2f28  84 31 a0 e1                                      lsl r3, r4, #3
007c2f2c  00 10 a0 e3                                      mov r1, #0
007c2f30  00 20 98 e5                                      ldr r2, [r8]
007c2f34  01 40 84 e2                                      add r4, r4, #1
007c2f38  04 00 56 e1                                      cmp r6, r4
007c2f3c  03 00 82 e0                                      add r0, r2, r3
007c2f40  03 10 82 e7                                      str r1, [r2, r3]
007c2f44  04 10 c0 e5                                      strb r1, [r0, #4]
007c2f48  08 30 83 e2                                      add r3, r3, #8
007c2f4c  f7 ff ff 1a                                      bne #0x7c2f30
007c2f50  00 00 56 e3                                      cmp r6, #0
007c2f54  68 60 85 e5                                      str r6, [r5, #0x68]
007c2f58  e9 ff ff da                                      ble #0x7c2f04
007c2f5c  00 40 a0 e3                                      mov r4, #0
007c2f60  07 00 a0 e1                                      mov r0, r7
007c2f64  64 80 95 e5                                      ldr r8, [r5, #0x64]
007c2f68  fb 02 ff eb                                      bl #0x783b5c
007c2f6c  84 01 88 e7                                      str r0, [r8, r4, lsl #3]
007c2f70  64 80 95 e5                                      ldr r8, [r5, #0x64]
007c2f74  84 31 a0 e1                                      lsl r3, r4, #3
007c2f78  07 00 a0 e1                                      mov r0, r7
007c2f7c  03 80 88 e0                                      add r8, r8, r3
007c2f80  e8 02 ff eb                                      bl #0x783b28
007c2f84  01 40 84 e2                                      add r4, r4, #1
007c2f88  06 00 54 e1                                      cmp r4, r6
007c2f8c  04 00 c8 e5                                      strb r0, [r8, #4]
007c2f90  f2 ff ff 1a                                      bne #0x7c2f60
007c2f94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c2f98  6c 30 95 e5                                      ldr r3, [r5, #0x6c]
007c2f9c  03 00 56 e1                                      cmp r6, r3
007c2fa0  de ff ff da                                      ble #0x7c2f20
007c2fa4  08 00 a0 e1                                      mov r0, r8
007c2fa8  c6 10 86 e0                                      add r1, r6, r6, asr #1
007c2fac  ff fe ff eb                                      bl #0x7c2bb0
007c2fb0  da ff ff ea                                      b #0x7c2f20
007c2fb4  08 00 a0 e1                                      mov r0, r8
007c2fb8  c6 10 86 e0                                      add r1, r6, r6, asr #1
007c2fbc  ff 84 fe eb                                      bl #0x7643c0
007c2fc0  b2 ff ff ea                                      b #0x7c2e90

; FUNCTION 0x007c3048, declared_size=292, range_size=292, mode=arm
; class-group: gameswf::as_3_function
; alias: _ZN7gameswf13as_3_functionD2Ev
; demangled: gameswf::as_3_function::~as_3_function()
; decoder-mode: arm
007c3048  70 40 2d e9                                      push {r4, r5, r6, lr}
007c304c  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
007c3050  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
007c3054  00 60 a0 e1                                      mov r6, r0
007c3058  05 50 8f e0                                      add r5, pc, r5
007c305c  03 30 95 e7                                      ldr r3, [r5, r3]
007c3060  00 40 a0 e1                                      mov r4, r0
007c3064  00 10 a0 e3                                      mov r1, #0
007c3068  08 30 83 e2                                      add r3, r3, #8
007c306c  a8 30 86 e4                                      str r3, [r6], #0xa8
007c3070  06 00 a0 e1                                      mov r0, r6
007c3074  8d d6 ff eb                                      bl #0x7b8ab0
007c3078  06 00 a0 e1                                      mov r0, r6
007c307c  00 10 a0 e3                                      mov r1, #0
007c3080  98 60 84 e2                                      add r6, r4, #0x98
007c3084  b7 d5 ff eb                                      bl #0x7b8768
007c3088  00 10 a0 e3                                      mov r1, #0
007c308c  06 00 a0 e1                                      mov r0, r6
007c3090  9f fe ff eb                                      bl #0x7c2b14
007c3094  06 00 a0 e1                                      mov r0, r6
007c3098  00 10 a0 e3                                      mov r1, #0
007c309c  7d fe ff eb                                      bl #0x7c2a98
007c30a0  88 00 84 e2                                      add r0, r4, #0x88
007c30a4  27 cd ff eb                                      bl #0x7b6548
007c30a8  68 20 94 e5                                      ldr r2, [r4, #0x68]
007c30ac  64 00 84 e2                                      add r0, r4, #0x64
007c30b0  00 00 52 e3                                      cmp r2, #0
007c30b4  1e 00 00 da                                      ble #0x7c3134
007c30b8  00 30 a0 e3                                      mov r3, #0
007c30bc  03 10 a0 e1                                      mov r1, r3
007c30c0  68 30 84 e5                                      str r3, [r4, #0x68]
007c30c4  b9 fe ff eb                                      bl #0x7c2bb0
007c30c8  4c 00 84 e2                                      add r0, r4, #0x4c
007c30cc  00 da ff eb                                      bl #0x7b98d4
007c30d0  44 00 94 e5                                      ldr r0, [r4, #0x44]
007c30d4  00 00 50 e3                                      cmp r0, #0
007c30d8  00 00 00 0a                                      beq #0x7c30e0
007c30dc  57 5c fe eb                                      bl #0x75a240
007c30e0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007c30e4  00 00 50 e3                                      cmp r0, #0
007c30e8  05 00 00 0a                                      beq #0x7c3104
007c30ec  00 10 90 e5                                      ldr r1, [r0]
007c30f0  01 10 41 e2                                      sub r1, r1, #1
007c30f4  00 00 51 e3                                      cmp r1, #0
007c30f8  00 10 80 e5                                      str r1, [r0]
007c30fc  00 00 00 1a                                      bne #0x7c3104
007c3100  8c 3e fe eb                                      bl #0x752b38
007c3104  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
007c3108  38 00 94 e5                                      ldr r0, [r4, #0x38]
007c310c  03 30 95 e7                                      ldr r3, [r5, r3]
007c3110  00 00 50 e3                                      cmp r0, #0
007c3114  08 30 83 e2                                      add r3, r3, #8
007c3118  00 30 84 e5                                      str r3, [r4]
007c311c  00 00 00 0a                                      beq #0x7c3124
007c3120  46 5c fe eb                                      bl #0x75a240
007c3124  04 00 a0 e1                                      mov r0, r4
007c3128  5b 9a fe eb                                      bl #0x769a9c
007c312c  04 00 a0 e1                                      mov r0, r4
007c3130  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c3134  df ff ff aa                                      bge #0x7c30b8
007c3138  82 31 a0 e1                                      lsl r3, r2, #3
007c313c  00 c0 a0 e3                                      mov ip, #0
007c3140  00 10 90 e5                                      ldr r1, [r0]
007c3144  01 20 92 e2                                      adds r2, r2, #1
007c3148  03 e0 81 e0                                      add lr, r1, r3
007c314c  03 c0 81 e7                                      str ip, [r1, r3]
007c3150  04 c0 ce e5                                      strb ip, [lr, #4]
007c3154  08 30 83 e2                                      add r3, r3, #8
007c3158  f8 ff ff 1a                                      bne #0x7c3140
007c315c  d5 ff ff ea                                      b #0x7c30b8
; mapping-symbol data/literal pool
007c3160  38 1a 1d 00 1c 47 00 00 88 27 00 00              .byte 0x38, 0x1a, 0x1d, 0x00, 0x1c, 0x47, 0x00, 0x00, 0x88, 0x27, 0x00, 0x00

; FUNCTION 0x007c31bc, declared_size=292, range_size=292, mode=arm
; class-group: gameswf::as_3_function
; alias: _ZN7gameswf13as_3_functionD1Ev
; demangled: gameswf::as_3_function::~as_3_function()
; decoder-mode: arm
007c31bc  70 40 2d e9                                      push {r4, r5, r6, lr}
007c31c0  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
007c31c4  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
007c31c8  00 60 a0 e1                                      mov r6, r0
007c31cc  05 50 8f e0                                      add r5, pc, r5
007c31d0  03 30 95 e7                                      ldr r3, [r5, r3]
007c31d4  00 40 a0 e1                                      mov r4, r0
007c31d8  00 10 a0 e3                                      mov r1, #0
007c31dc  08 30 83 e2                                      add r3, r3, #8
007c31e0  a8 30 86 e4                                      str r3, [r6], #0xa8
007c31e4  06 00 a0 e1                                      mov r0, r6
007c31e8  30 d6 ff eb                                      bl #0x7b8ab0
007c31ec  06 00 a0 e1                                      mov r0, r6
007c31f0  00 10 a0 e3                                      mov r1, #0
007c31f4  98 60 84 e2                                      add r6, r4, #0x98
007c31f8  5a d5 ff eb                                      bl #0x7b8768
007c31fc  00 10 a0 e3                                      mov r1, #0
007c3200  06 00 a0 e1                                      mov r0, r6
007c3204  42 fe ff eb                                      bl #0x7c2b14
007c3208  06 00 a0 e1                                      mov r0, r6
007c320c  00 10 a0 e3                                      mov r1, #0
007c3210  20 fe ff eb                                      bl #0x7c2a98
007c3214  88 00 84 e2                                      add r0, r4, #0x88
007c3218  ca cc ff eb                                      bl #0x7b6548
007c321c  68 20 94 e5                                      ldr r2, [r4, #0x68]
007c3220  64 00 84 e2                                      add r0, r4, #0x64
007c3224  00 00 52 e3                                      cmp r2, #0
007c3228  1e 00 00 da                                      ble #0x7c32a8
007c322c  00 30 a0 e3                                      mov r3, #0
007c3230  03 10 a0 e1                                      mov r1, r3
007c3234  68 30 84 e5                                      str r3, [r4, #0x68]
007c3238  5c fe ff eb                                      bl #0x7c2bb0
007c323c  4c 00 84 e2                                      add r0, r4, #0x4c
007c3240  a3 d9 ff eb                                      bl #0x7b98d4
007c3244  44 00 94 e5                                      ldr r0, [r4, #0x44]
007c3248  00 00 50 e3                                      cmp r0, #0
007c324c  00 00 00 0a                                      beq #0x7c3254
007c3250  fa 5b fe eb                                      bl #0x75a240
007c3254  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007c3258  00 00 50 e3                                      cmp r0, #0
007c325c  05 00 00 0a                                      beq #0x7c3278
007c3260  00 10 90 e5                                      ldr r1, [r0]
007c3264  01 10 41 e2                                      sub r1, r1, #1
007c3268  00 00 51 e3                                      cmp r1, #0
007c326c  00 10 80 e5                                      str r1, [r0]
007c3270  00 00 00 1a                                      bne #0x7c3278
007c3274  2f 3e fe eb                                      bl #0x752b38
007c3278  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
007c327c  38 00 94 e5                                      ldr r0, [r4, #0x38]
007c3280  03 30 95 e7                                      ldr r3, [r5, r3]
007c3284  00 00 50 e3                                      cmp r0, #0
007c3288  08 30 83 e2                                      add r3, r3, #8
007c328c  00 30 84 e5                                      str r3, [r4]
007c3290  00 00 00 0a                                      beq #0x7c3298
007c3294  e9 5b fe eb                                      bl #0x75a240
007c3298  04 00 a0 e1                                      mov r0, r4
007c329c  fe 99 fe eb                                      bl #0x769a9c
007c32a0  04 00 a0 e1                                      mov r0, r4
007c32a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c32a8  df ff ff aa                                      bge #0x7c322c
007c32ac  82 31 a0 e1                                      lsl r3, r2, #3
007c32b0  00 c0 a0 e3                                      mov ip, #0
007c32b4  00 10 90 e5                                      ldr r1, [r0]
007c32b8  01 20 92 e2                                      adds r2, r2, #1
007c32bc  03 e0 81 e0                                      add lr, r1, r3
007c32c0  03 c0 81 e7                                      str ip, [r1, r3]
007c32c4  04 c0 ce e5                                      strb ip, [lr, #4]
007c32c8  08 30 83 e2                                      add r3, r3, #8
007c32cc  f8 ff ff 1a                                      bne #0x7c32b4
007c32d0  d5 ff ff ea                                      b #0x7c322c
; mapping-symbol data/literal pool
007c32d4  c4 18 1d 00 1c 47 00 00 88 27 00 00              .byte 0xc4, 0x18, 0x1d, 0x00, 0x1c, 0x47, 0x00, 0x00, 0x88, 0x27, 0x00, 0x00

; FUNCTION 0x007c32e0, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_3_function
; alias: _ZN7gameswf13as_3_functionD0Ev
; demangled: gameswf::as_3_function::~as_3_function()
; decoder-mode: arm
007c32e0  10 40 2d e9                                      push {r4, lr}
007c32e4  00 40 a0 e1                                      mov r4, r0
007c32e8  b3 ff ff eb                                      bl #0x7c31bc
007c32ec  04 00 a0 e1                                      mov r0, r4
007c32f0  ee 2b ed eb                                      bl #0x30e2b0
007c32f4  04 00 a0 e1                                      mov r0, r4
007c32f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c32fc, declared_size=384, range_size=384, mode=arm
; class-group: gameswf::as_3_function
; alias: _ZN7gameswf13as_3_functionC1EPNS_7abc_defEiPNS_6playerE
; demangled: gameswf::as_3_function::as_3_function(gameswf::abc_def*, int, gameswf::player*)
; decoder-mode: arm
007c32fc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007c3300  64 41 9f e5                                      ldr r4, [pc, #0x164]
007c3304  64 51 9f e5                                      ldr r5, [pc, #0x164]
007c3308  03 80 a0 e1                                      mov r8, r3
007c330c  04 40 8f e0                                      add r4, pc, r4
007c3310  05 30 94 e7                                      ldr r3, [r4, r5]
007c3314  01 70 a0 e1                                      mov r7, r1
007c3318  28 d0 4d e2                                      sub sp, sp, #0x28
007c331c  00 30 93 e5                                      ldr r3, [r3]
007c3320  08 10 a0 e1                                      mov r1, r8
007c3324  00 60 a0 e1                                      mov r6, r0
007c3328  02 a0 a0 e1                                      mov sl, r2
007c332c  24 30 8d e5                                      str r3, [sp, #0x24]
007c3330  6a a2 fe eb                                      bl #0x76bce0
007c3334  38 21 9f e5                                      ldr r2, [pc, #0x138]
007c3338  00 30 a0 e3                                      mov r3, #0
007c333c  00 00 57 e3                                      cmp r7, #0
007c3340  02 20 94 e7                                      ldr r2, [r4, r2]
007c3344  40 30 86 e5                                      str r3, [r6, #0x40]
007c3348  38 30 86 e5                                      str r3, [r6, #0x38]
007c334c  08 20 82 e2                                      add r2, r2, #8
007c3350  00 20 86 e5                                      str r2, [r6]
007c3354  3c 30 86 e5                                      str r3, [r6, #0x3c]
007c3358  44 70 86 e5                                      str r7, [r6, #0x44]
007c335c  01 00 00 0a                                      beq #0x7c3368
007c3360  07 00 a0 e1                                      mov r0, r7
007c3364  3e 5a fe eb                                      bl #0x759c64
007c3368  00 70 a0 e3                                      mov r7, #0
007c336c  74 a0 86 e5                                      str sl, [r6, #0x74]
007c3370  4c 70 86 e5                                      str r7, [r6, #0x4c]
007c3374  50 70 86 e5                                      str r7, [r6, #0x50]
007c3378  54 70 86 e5                                      str r7, [r6, #0x54]
007c337c  58 70 c6 e5                                      strb r7, [r6, #0x58]
007c3380  64 70 86 e5                                      str r7, [r6, #0x64]
007c3384  68 70 86 e5                                      str r7, [r6, #0x68]
007c3388  6c 70 86 e5                                      str r7, [r6, #0x6c]
007c338c  70 70 c6 e5                                      strb r7, [r6, #0x70]
007c3390  88 00 86 e2                                      add r0, r6, #0x88
007c3394  bc cb ff eb                                      bl #0x7b628c
007c3398  20 00 86 e2                                      add r0, r6, #0x20
007c339c  06 10 a0 e1                                      mov r1, r6
007c33a0  98 70 86 e5                                      str r7, [r6, #0x98]
007c33a4  9c 70 86 e5                                      str r7, [r6, #0x9c]
007c33a8  a0 70 86 e5                                      str r7, [r6, #0xa0]
007c33ac  a4 70 c6 e5                                      strb r7, [r6, #0xa4]
007c33b0  a8 70 86 e5                                      str r7, [r6, #0xa8]
007c33b4  ac 70 86 e5                                      str r7, [r6, #0xac]
007c33b8  b0 70 86 e5                                      str r7, [r6, #0xb0]
007c33bc  b4 70 c6 e5                                      strb r7, [r6, #0xb4]
007c33c0  30 6e fe eb                                      bl #0x75ec88
007c33c4  ac 10 9f e5                                      ldr r1, [pc, #0xac]
007c33c8  10 90 8d e2                                      add sb, sp, #0x10
007c33cc  09 00 a0 e1                                      mov r0, sb
007c33d0  01 10 8f e0                                      add r1, pc, r1
007c33d4  a8 41 f1 eb                                      bl #0x413a7c
007c33d8  07 10 a0 e1                                      mov r1, r7
007c33dc  38 00 a0 e3                                      mov r0, #0x38
007c33e0  f0 3d fe eb                                      bl #0x752ba8
007c33e4  08 10 a0 e1                                      mov r1, r8
007c33e8  00 a0 a0 e1                                      mov sl, r0
007c33ec  0b a1 fe eb                                      bl #0x76b820
007c33f0  05 30 a0 e3                                      mov r3, #5
007c33f4  07 00 5a e1                                      cmp sl, r7
007c33f8  04 70 cd e5                                      strb r7, [sp, #4]
007c33fc  05 30 cd e5                                      strb r3, [sp, #5]
007c3400  08 a0 8d e5                                      str sl, [sp, #8]
007c3404  01 00 00 0a                                      beq #0x7c3410
007c3408  0a 00 a0 e1                                      mov r0, sl
007c340c  14 5a fe eb                                      bl #0x759c64
007c3410  04 70 8d e2                                      add r7, sp, #4
007c3414  09 10 a0 e1                                      mov r1, sb
007c3418  07 20 a0 e1                                      mov r2, r7
007c341c  06 00 a0 e1                                      mov r0, r6
007c3420  cb 95 fe eb                                      bl #0x768b54
007c3424  07 00 a0 e1                                      mov r0, r7
007c3428  3d 4f ff eb                                      bl #0x797124
007c342c  d0 31 dd e1                                      ldrsb r3, [sp, #0x10]
007c3430  01 00 73 e3                                      cmn r3, #1
007c3434  07 00 00 0a                                      beq #0x7c3458
007c3438  05 30 94 e7                                      ldr r3, [r4, r5]
007c343c  24 20 9d e5                                      ldr r2, [sp, #0x24]
007c3440  06 00 a0 e1                                      mov r0, r6
007c3444  00 30 93 e5                                      ldr r3, [r3]
007c3448  03 00 52 e1                                      cmp r2, r3
007c344c  05 00 00 1a                                      bne #0x7c3468
007c3450  28 d0 8d e2                                      add sp, sp, #0x28
007c3454  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007c3458  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007c345c  18 10 9d e5                                      ldr r1, [sp, #0x18]
007c3460  b4 3d fe eb                                      bl #0x752b38
007c3464  f3 ff ff ea                                      b #0x7c3438
007c3468  a8 2b ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007c346c  84 17 1d 00 ac 40 00 00 1c 47 00 00 60 5c 14 00  .byte 0x84, 0x17, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0x47, 0x00, 0x00, 0x60, 0x5c, 0x14, 0x00

; FUNCTION 0x007c347c, declared_size=384, range_size=384, mode=arm
; class-group: gameswf::as_3_function
; alias: _ZN7gameswf13as_3_functionC2EPNS_7abc_defEiPNS_6playerE
; demangled: gameswf::as_3_function::as_3_function(gameswf::abc_def*, int, gameswf::player*)
; decoder-mode: arm
007c347c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007c3480  64 41 9f e5                                      ldr r4, [pc, #0x164]
007c3484  64 51 9f e5                                      ldr r5, [pc, #0x164]
007c3488  03 80 a0 e1                                      mov r8, r3
007c348c  04 40 8f e0                                      add r4, pc, r4
007c3490  05 30 94 e7                                      ldr r3, [r4, r5]
007c3494  01 70 a0 e1                                      mov r7, r1
007c3498  28 d0 4d e2                                      sub sp, sp, #0x28
007c349c  00 30 93 e5                                      ldr r3, [r3]
007c34a0  08 10 a0 e1                                      mov r1, r8
007c34a4  00 60 a0 e1                                      mov r6, r0
007c34a8  02 a0 a0 e1                                      mov sl, r2
007c34ac  24 30 8d e5                                      str r3, [sp, #0x24]
007c34b0  0a a2 fe eb                                      bl #0x76bce0
007c34b4  38 21 9f e5                                      ldr r2, [pc, #0x138]
007c34b8  00 30 a0 e3                                      mov r3, #0
007c34bc  00 00 57 e3                                      cmp r7, #0
007c34c0  02 20 94 e7                                      ldr r2, [r4, r2]
007c34c4  40 30 86 e5                                      str r3, [r6, #0x40]
007c34c8  38 30 86 e5                                      str r3, [r6, #0x38]
007c34cc  08 20 82 e2                                      add r2, r2, #8
007c34d0  00 20 86 e5                                      str r2, [r6]
007c34d4  3c 30 86 e5                                      str r3, [r6, #0x3c]
007c34d8  44 70 86 e5                                      str r7, [r6, #0x44]
007c34dc  01 00 00 0a                                      beq #0x7c34e8
007c34e0  07 00 a0 e1                                      mov r0, r7
007c34e4  de 59 fe eb                                      bl #0x759c64
007c34e8  00 70 a0 e3                                      mov r7, #0
007c34ec  74 a0 86 e5                                      str sl, [r6, #0x74]
007c34f0  4c 70 86 e5                                      str r7, [r6, #0x4c]
007c34f4  50 70 86 e5                                      str r7, [r6, #0x50]
007c34f8  54 70 86 e5                                      str r7, [r6, #0x54]
007c34fc  58 70 c6 e5                                      strb r7, [r6, #0x58]
007c3500  64 70 86 e5                                      str r7, [r6, #0x64]
007c3504  68 70 86 e5                                      str r7, [r6, #0x68]
007c3508  6c 70 86 e5                                      str r7, [r6, #0x6c]
007c350c  70 70 c6 e5                                      strb r7, [r6, #0x70]
007c3510  88 00 86 e2                                      add r0, r6, #0x88
007c3514  5c cb ff eb                                      bl #0x7b628c
007c3518  20 00 86 e2                                      add r0, r6, #0x20
007c351c  06 10 a0 e1                                      mov r1, r6
007c3520  98 70 86 e5                                      str r7, [r6, #0x98]
007c3524  9c 70 86 e5                                      str r7, [r6, #0x9c]
007c3528  a0 70 86 e5                                      str r7, [r6, #0xa0]
007c352c  a4 70 c6 e5                                      strb r7, [r6, #0xa4]
007c3530  a8 70 86 e5                                      str r7, [r6, #0xa8]
007c3534  ac 70 86 e5                                      str r7, [r6, #0xac]
007c3538  b0 70 86 e5                                      str r7, [r6, #0xb0]
007c353c  b4 70 c6 e5                                      strb r7, [r6, #0xb4]
007c3540  d0 6d fe eb                                      bl #0x75ec88
007c3544  ac 10 9f e5                                      ldr r1, [pc, #0xac]
007c3548  10 90 8d e2                                      add sb, sp, #0x10
007c354c  09 00 a0 e1                                      mov r0, sb
007c3550  01 10 8f e0                                      add r1, pc, r1
007c3554  48 41 f1 eb                                      bl #0x413a7c
007c3558  07 10 a0 e1                                      mov r1, r7
007c355c  38 00 a0 e3                                      mov r0, #0x38
007c3560  90 3d fe eb                                      bl #0x752ba8
007c3564  08 10 a0 e1                                      mov r1, r8
007c3568  00 a0 a0 e1                                      mov sl, r0
007c356c  ab a0 fe eb                                      bl #0x76b820
007c3570  05 30 a0 e3                                      mov r3, #5
007c3574  07 00 5a e1                                      cmp sl, r7
007c3578  04 70 cd e5                                      strb r7, [sp, #4]
007c357c  05 30 cd e5                                      strb r3, [sp, #5]
007c3580  08 a0 8d e5                                      str sl, [sp, #8]
007c3584  01 00 00 0a                                      beq #0x7c3590
007c3588  0a 00 a0 e1                                      mov r0, sl
007c358c  b4 59 fe eb                                      bl #0x759c64
007c3590  04 70 8d e2                                      add r7, sp, #4
007c3594  09 10 a0 e1                                      mov r1, sb
007c3598  07 20 a0 e1                                      mov r2, r7
007c359c  06 00 a0 e1                                      mov r0, r6
007c35a0  6b 95 fe eb                                      bl #0x768b54
007c35a4  07 00 a0 e1                                      mov r0, r7
007c35a8  dd 4e ff eb                                      bl #0x797124
007c35ac  d0 31 dd e1                                      ldrsb r3, [sp, #0x10]
007c35b0  01 00 73 e3                                      cmn r3, #1
007c35b4  07 00 00 0a                                      beq #0x7c35d8
007c35b8  05 30 94 e7                                      ldr r3, [r4, r5]
007c35bc  24 20 9d e5                                      ldr r2, [sp, #0x24]
007c35c0  06 00 a0 e1                                      mov r0, r6
007c35c4  00 30 93 e5                                      ldr r3, [r3]
007c35c8  03 00 52 e1                                      cmp r2, r3
007c35cc  05 00 00 1a                                      bne #0x7c35e8
007c35d0  28 d0 8d e2                                      add sp, sp, #0x28
007c35d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007c35d8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007c35dc  18 10 9d e5                                      ldr r1, [sp, #0x18]
007c35e0  54 3d fe eb                                      bl #0x752b38
007c35e4  f3 ff ff ea                                      b #0x7c35b8
007c35e8  48 2b ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007c35ec  04 16 1d 00 ac 40 00 00 1c 47 00 00 e0 5a 14 00  .byte 0x04, 0x16, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0x47, 0x00, 0x00, 0xe0, 0x5a, 0x14, 0x00

; FUNCTION 0x007c35fc, declared_size=2728, range_size=2728, mode=arm
; class-group: gameswf::as_3_function
; alias: _ZN7gameswf13as_3_function7executeERNS_5arrayINS_8as_valueEEES4_S4_PS2_
; demangled: gameswf::as_3_function::execute(gameswf::array<gameswf::as_value>&, gameswf::array<gameswf::as_value>&, gameswf::array<gameswf::as_value>&, gameswf::as_value*)
; decoder-mode: arm
007c35fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c3600  8c 4a 9f e5                                      ldr r4, [pc, #0xa8c]
007c3604  8c ca 9f e5                                      ldr ip, [pc, #0xa8c]
007c3608  65 df 4d e2                                      sub sp, sp, #0x194
007c360c  04 40 8f e0                                      add r4, pc, r4
007c3610  0c e0 94 e7                                      ldr lr, [r4, ip]
007c3614  03 70 a0 e1                                      mov r7, r3
007c3618  7c 3a 9f e5                                      ldr r3, [pc, #0xa7c]
007c361c  20 40 8d e5                                      str r4, [sp, #0x20]
007c3620  00 e0 9e e5                                      ldr lr, [lr]
007c3624  b8 41 9d e5                                      ldr r4, [sp, #0x1b8]
007c3628  44 10 8d e5                                      str r1, [sp, #0x44]
007c362c  00 60 a0 e1                                      mov r6, r0
007c3630  03 30 8f e0                                      add r3, pc, r3
007c3634  42 1f 8d e2                                      add r1, sp, #0x108
007c3638  02 50 a0 e1                                      mov r5, r2
007c363c  11 0e 8d e2                                      add r0, sp, #0x110
007c3640  54 20 8d e2                                      add r2, sp, #0x54
007c3644  2c c0 8d e5                                      str ip, [sp, #0x2c]
007c3648  40 40 8d e5                                      str r4, [sp, #0x40]
007c364c  8c e1 8d e5                                      str lr, [sp, #0x18c]
007c3650  4c 30 8d e5                                      str r3, [sp, #0x4c]
007c3654  24 00 8d e5                                      str r0, [sp, #0x24]
007c3658  28 10 8d e5                                      str r1, [sp, #0x28]
007c365c  34 20 8d e5                                      str r2, [sp, #0x34]
007c3660  90 30 96 e5                                      ldr r3, [r6, #0x90]
007c3664  00 c0 a0 e3                                      mov ip, #0
007c3668  0c 80 a0 e1                                      mov r8, ip
007c366c  0c 10 d3 e7                                      ldrb r1, [r3, ip]
007c3670  01 40 8c e2                                      add r4, ip, #1
007c3674  4f 00 51 e3                                      cmp r1, #0x4f
007c3678  eb 00 00 0a                                      beq #0x7c3a2c
007c367c  10 00 00 8a                                      bhi #0x7c36c4
007c3680  2f 00 51 e3                                      cmp r1, #0x2f
007c3684  c8 01 00 0a                                      beq #0x7c3dac
007c3688  68 00 00 8a                                      bhi #0x7c3830
007c368c  2c 00 51 e3                                      cmp r1, #0x2c
007c3690  42 01 00 0a                                      beq #0x7c3ba0
007c3694  2d 00 51 e3                                      cmp r1, #0x2d
007c3698  6f 01 00 0a                                      beq #0x7c3c5c
007c369c  24 00 51 e3                                      cmp r1, #0x24
007c36a0  68 00 00 1a                                      bne #0x7c3848
007c36a4  04 10 83 e0                                      add r1, r3, r4
007c36a8  24 00 9d e5                                      ldr r0, [sp, #0x24]
007c36ac  a6 15 00 eb                                      bl #0x7c8d4c
007c36b0  24 10 9d e5                                      ldr r1, [sp, #0x24]
007c36b4  00 40 84 e0                                      add r4, r4, r0
007c36b8  05 00 a0 e1                                      mov r0, r5
007c36bc  f6 73 fe eb                                      bl #0x76069c
007c36c0  d0 00 00 ea                                      b #0x7c3a08
007c36c4  66 00 51 e3                                      cmp r1, #0x66
007c36c8  e8 01 00 0a                                      beq #0x7c3e70
007c36cc  69 00 00 8a                                      bhi #0x7c3878
007c36d0  5e 00 51 e3                                      cmp r1, #0x5e
007c36d4  75 00 00 0a                                      beq #0x7c38b0
007c36d8  60 00 51 e3                                      cmp r1, #0x60
007c36dc  6b 01 00 0a                                      beq #0x7c3c90
007c36e0  5d 00 51 e3                                      cmp r1, #0x5d
007c36e4  57 00 00 1a                                      bne #0x7c3848
007c36e8  04 10 83 e0                                      add r1, r3, r4
007c36ec  28 00 9d e5                                      ldr r0, [sp, #0x28]
007c36f0  95 15 00 eb                                      bl #0x7c8d4c
007c36f4  44 30 96 e5                                      ldr r3, [r6, #0x44]
007c36f8  00 40 84 e0                                      add r4, r4, r0
007c36fc  08 01 9d e5                                      ldr r0, [sp, #0x108]
007c3700  6c 10 93 e5                                      ldr r1, [r3, #0x6c]
007c3704  14 20 a0 e3                                      mov r2, #0x14
007c3708  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
007c370c  92 10 21 e0                                      mla r1, r2, r0, r1
007c3710  04 00 97 e5                                      ldr r0, [r7, #4]
007c3714  10 10 91 e5                                      ldr r1, [r1, #0x10]
007c3718  92 01 02 e0                                      mul r2, r2, r1
007c371c  d2 10 93 e1                                      ldrsb r1, [r3, r2]
007c3720  02 20 83 e0                                      add r2, r3, r2
007c3724  01 00 71 e3                                      cmn r1, #1
007c3728  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007c372c  01 20 82 12                                      addne r2, r2, #1
007c3730  00 10 a0 e3                                      mov r1, #0
007c3734  01 a0 50 e2                                      subs sl, r0, #1
007c3738  1c 00 8d e5                                      str r0, [sp, #0x1c]
007c373c  10 11 8d e5                                      str r1, [sp, #0x110]
007c3740  36 00 00 4a                                      bmi #0x7c3820
007c3744  0c 30 a0 e3                                      mov r3, #0xc
007c3748  d8 c0 8d e2                                      add ip, sp, #0xd8
007c374c  93 0a 0a e0                                      mul sl, r3, sl
007c3750  59 3f 8d e2                                      add r3, sp, #0x164
007c3754  38 40 8d e5                                      str r4, [sp, #0x38]
007c3758  3c 60 8d e5                                      str r6, [sp, #0x3c]
007c375c  48 50 8d e5                                      str r5, [sp, #0x48]
007c3760  01 90 a0 e1                                      mov sb, r1
007c3764  30 c0 8d e5                                      str ip, [sp, #0x30]
007c3768  02 60 a0 e1                                      mov r6, r2
007c376c  03 40 a0 e1                                      mov r4, r3
007c3770  0c 50 a0 e1                                      mov r5, ip
007c3774  08 00 00 ea                                      b #0x7c379c
007c3778  00 00 5b e3                                      cmp fp, #0
007c377c  1b 00 00 1a                                      bne #0x7c37f0
007c3780  05 00 a0 e1                                      mov r0, r5
007c3784  66 4e ff eb                                      bl #0x797124
007c3788  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007c378c  01 90 89 e2                                      add sb, sb, #1
007c3790  0c a0 4a e2                                      sub sl, sl, #0xc
007c3794  01 00 59 e1                                      cmp sb, r1
007c3798  ea 01 00 0a                                      beq #0x7c3f48
007c379c  00 b0 97 e5                                      ldr fp, [r7]
007c37a0  06 10 a0 e1                                      mov r1, r6
007c37a4  04 00 a0 e1                                      mov r0, r4
007c37a8  0a b0 8b e0                                      add fp, fp, sl
007c37ac  d8 80 cd e5                                      strb r8, [sp, #0xd8]
007c37b0  d9 80 cd e5                                      strb r8, [sp, #0xd9]
007c37b4  b0 40 f1 eb                                      bl #0x413a7c
007c37b8  0b 00 a0 e1                                      mov r0, fp
007c37bc  04 10 a0 e1                                      mov r1, r4
007c37c0  05 20 a0 e1                                      mov r2, r5
007c37c4  01 4e ff eb                                      bl #0x796fd0
007c37c8  00 b0 a0 e1                                      mov fp, r0
007c37cc  64 01 dd e5                                      ldrb r0, [sp, #0x164]
007c37d0  70 30 af e6                                      sxtb r3, r0
007c37d4  01 00 73 e3                                      cmn r3, #1
007c37d8  e6 ff ff 1a                                      bne #0x7c3778
007c37dc  70 01 9d e5                                      ldr r0, [sp, #0x170]
007c37e0  6c 11 9d e5                                      ldr r1, [sp, #0x16c]
007c37e4  d3 3c fe eb                                      bl #0x752b38
007c37e8  00 00 5b e3                                      cmp fp, #0
007c37ec  e3 ff ff 0a                                      beq #0x7c3780
007c37f0  00 30 97 e5                                      ldr r3, [r7]
007c37f4  30 00 9d e5                                      ldr r0, [sp, #0x30]
007c37f8  38 40 9d e5                                      ldr r4, [sp, #0x38]
007c37fc  0a a0 83 e0                                      add sl, r3, sl
007c3800  d1 30 da e1                                      ldrsb r3, [sl, #1]
007c3804  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
007c3808  48 50 9d e5                                      ldr r5, [sp, #0x48]
007c380c  05 00 53 e3                                      cmp r3, #5
007c3810  04 30 9a 05                                      ldreq r3, [sl, #4]
007c3814  00 30 a0 13                                      movne r3, #0
007c3818  10 31 8d e5                                      str r3, [sp, #0x110]
007c381c  40 4e ff eb                                      bl #0x797124
007c3820  05 00 a0 e1                                      mov r0, r5
007c3824  24 10 9d e5                                      ldr r1, [sp, #0x24]
007c3828  a3 de ff eb                                      bl #0x7bb2bc
007c382c  75 00 00 ea                                      b #0x7c3a08
007c3830  47 00 51 e3                                      cmp r1, #0x47
007c3834  6f 00 00 0a                                      beq #0x7c39f8
007c3838  49 00 51 e3                                      cmp r1, #0x49
007c383c  76 01 00 0a                                      beq #0x7c3e1c
007c3840  30 00 51 e3                                      cmp r1, #0x30
007c3844  68 01 00 0a                                      beq #0x7c3dec
007c3848  50 08 9f e5                                      ldr r0, [pc, #0x850]
007c384c  00 00 8f e0                                      add r0, pc, r0
007c3850  66 76 fe eb                                      bl #0x7611f0
007c3854  20 10 9d e5                                      ldr r1, [sp, #0x20]
007c3858  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007c385c  8c 21 9d e5                                      ldr r2, [sp, #0x18c]
007c3860  00 30 91 e7                                      ldr r3, [r1, r0]
007c3864  00 30 93 e5                                      ldr r3, [r3]
007c3868  03 00 52 e1                                      cmp r2, r3
007c386c  07 02 00 1a                                      bne #0x7c4090
007c3870  65 df 8d e2                                      add sp, sp, #0x194
007c3874  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c3878  68 00 51 e3                                      cmp r1, #0x68
007c387c  da 00 00 0a                                      beq #0x7c3bec
007c3880  f0 ff ff 3a                                      blo #0x7c3848
007c3884  d0 30 41 e2                                      sub r3, r1, #0xd0
007c3888  03 00 53 e3                                      cmp r3, #3
007c388c  ed ff ff 8a                                      bhi #0x7c3848
007c3890  44 20 9d e5                                      ldr r2, [sp, #0x44]
007c3894  0c c0 a0 e3                                      mov ip, #0xc
007c3898  03 10 01 e2                                      and r1, r1, #3
007c389c  00 30 92 e5                                      ldr r3, [r2]
007c38a0  05 00 a0 e1                                      mov r0, r5
007c38a4  9c 31 21 e0                                      mla r1, ip, r1, r3
007c38a8  fa 95 fe eb                                      bl #0x769098
007c38ac  55 00 00 ea                                      b #0x7c3a08
007c38b0  04 10 83 e0                                      add r1, r3, r4
007c38b4  24 00 9d e5                                      ldr r0, [sp, #0x24]
007c38b8  23 15 00 eb                                      bl #0x7c8d4c
007c38bc  44 30 96 e5                                      ldr r3, [r6, #0x44]
007c38c0  00 40 84 e0                                      add r4, r4, r0
007c38c4  10 01 9d e5                                      ldr r0, [sp, #0x110]
007c38c8  6c 10 93 e5                                      ldr r1, [r3, #0x6c]
007c38cc  14 20 a0 e3                                      mov r2, #0x14
007c38d0  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
007c38d4  92 10 21 e0                                      mla r1, r2, r0, r1
007c38d8  00 c0 a0 e3                                      mov ip, #0
007c38dc  10 10 91 e5                                      ldr r1, [r1, #0x10]
007c38e0  92 01 02 e0                                      mul r2, r2, r1
007c38e4  d2 10 93 e1                                      ldrsb r1, [r3, r2]
007c38e8  02 20 83 e0                                      add r2, r3, r2
007c38ec  04 30 97 e5                                      ldr r3, [r7, #4]
007c38f0  01 00 71 e3                                      cmn r1, #1
007c38f4  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007c38f8  01 20 82 12                                      addne r2, r2, #1
007c38fc  01 a0 53 e2                                      subs sl, r3, #1
007c3900  1c 30 8d e5                                      str r3, [sp, #0x1c]
007c3904  08 c1 8d e5                                      str ip, [sp, #0x108]
007c3908  36 00 00 4a                                      bmi #0x7c39e8
007c390c  cc 10 8d e2                                      add r1, sp, #0xcc
007c3910  0c 00 a0 e3                                      mov r0, #0xc
007c3914  15 3e 8d e2                                      add r3, sp, #0x150
007c3918  38 40 8d e5                                      str r4, [sp, #0x38]
007c391c  3c 60 8d e5                                      str r6, [sp, #0x3c]
007c3920  48 50 8d e5                                      str r5, [sp, #0x48]
007c3924  90 0a 0a e0                                      mul sl, r0, sl
007c3928  0c 90 a0 e1                                      mov sb, ip
007c392c  30 10 8d e5                                      str r1, [sp, #0x30]
007c3930  02 60 a0 e1                                      mov r6, r2
007c3934  03 40 a0 e1                                      mov r4, r3
007c3938  01 50 a0 e1                                      mov r5, r1
007c393c  08 00 00 ea                                      b #0x7c3964
007c3940  00 00 5b e3                                      cmp fp, #0
007c3944  1b 00 00 1a                                      bne #0x7c39b8
007c3948  05 00 a0 e1                                      mov r0, r5
007c394c  f4 4d ff eb                                      bl #0x797124
007c3950  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007c3954  01 90 89 e2                                      add sb, sb, #1
007c3958  0c a0 4a e2                                      sub sl, sl, #0xc
007c395c  03 00 59 e1                                      cmp sb, r3
007c3960  7f 01 00 0a                                      beq #0x7c3f64
007c3964  00 b0 97 e5                                      ldr fp, [r7]
007c3968  06 10 a0 e1                                      mov r1, r6
007c396c  04 00 a0 e1                                      mov r0, r4
007c3970  0a b0 8b e0                                      add fp, fp, sl
007c3974  cc 80 cd e5                                      strb r8, [sp, #0xcc]
007c3978  cd 80 cd e5                                      strb r8, [sp, #0xcd]
007c397c  3e 40 f1 eb                                      bl #0x413a7c
007c3980  0b 00 a0 e1                                      mov r0, fp
007c3984  05 20 a0 e1                                      mov r2, r5
007c3988  04 10 a0 e1                                      mov r1, r4
007c398c  8f 4d ff eb                                      bl #0x796fd0
007c3990  50 21 dd e5                                      ldrb r2, [sp, #0x150]
007c3994  00 b0 a0 e1                                      mov fp, r0
007c3998  72 30 af e6                                      sxtb r3, r2
007c399c  01 00 73 e3                                      cmn r3, #1
007c39a0  e6 ff ff 1a                                      bne #0x7c3940
007c39a4  5c 01 9d e5                                      ldr r0, [sp, #0x15c]
007c39a8  58 11 9d e5                                      ldr r1, [sp, #0x158]
007c39ac  61 3c fe eb                                      bl #0x752b38
007c39b0  00 00 5b e3                                      cmp fp, #0
007c39b4  e3 ff ff 0a                                      beq #0x7c3948
007c39b8  00 30 97 e5                                      ldr r3, [r7]
007c39bc  30 00 9d e5                                      ldr r0, [sp, #0x30]
007c39c0  38 40 9d e5                                      ldr r4, [sp, #0x38]
007c39c4  0a a0 83 e0                                      add sl, r3, sl
007c39c8  d1 30 da e1                                      ldrsb r3, [sl, #1]
007c39cc  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
007c39d0  48 50 9d e5                                      ldr r5, [sp, #0x48]
007c39d4  05 00 53 e3                                      cmp r3, #5
007c39d8  04 30 9a 05                                      ldreq r3, [sl, #4]
007c39dc  00 30 a0 13                                      movne r3, #0
007c39e0  08 31 8d e5                                      str r3, [sp, #0x108]
007c39e4  ce 4d ff eb                                      bl #0x797124
007c39e8  05 00 a0 e1                                      mov r0, r5
007c39ec  28 10 9d e5                                      ldr r1, [sp, #0x28]
007c39f0  31 de ff eb                                      bl #0x7bb2bc
007c39f4  03 00 00 ea                                      b #0x7c3a08
007c39f8  40 00 9d e5                                      ldr r0, [sp, #0x40]
007c39fc  c8 4d ff eb                                      bl #0x797124
007c3a00  40 30 9d e5                                      ldr r3, [sp, #0x40]
007c3a04  01 80 c3 e5                                      strb r8, [r3, #1]
007c3a08  88 30 96 e5                                      ldr r3, [r6, #0x88]
007c3a0c  03 00 54 e1                                      cmp r4, r3
007c3a10  8f ff ff aa                                      bge #0x7c3854
007c3a14  90 30 96 e5                                      ldr r3, [r6, #0x90]
007c3a18  04 c0 a0 e1                                      mov ip, r4
007c3a1c  01 40 8c e2                                      add r4, ip, #1
007c3a20  0c 10 d3 e7                                      ldrb r1, [r3, ip]
007c3a24  4f 00 51 e3                                      cmp r1, #0x4f
007c3a28  13 ff ff 1a                                      bne #0x7c367c
007c3a2c  04 10 83 e0                                      add r1, r3, r4
007c3a30  24 00 9d e5                                      ldr r0, [sp, #0x24]
007c3a34  c4 14 00 eb                                      bl #0x7c8d4c
007c3a38  44 30 96 e5                                      ldr r3, [r6, #0x44]
007c3a3c  04 40 80 e0                                      add r4, r0, r4
007c3a40  10 01 9d e5                                      ldr r0, [sp, #0x110]
007c3a44  6c 10 93 e5                                      ldr r1, [r3, #0x6c]
007c3a48  14 20 a0 e3                                      mov r2, #0x14
007c3a4c  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
007c3a50  92 10 21 e0                                      mla r1, r2, r0, r1
007c3a54  28 00 9d e5                                      ldr r0, [sp, #0x28]
007c3a58  10 a0 91 e5                                      ldr sl, [r1, #0x10]
007c3a5c  92 0a 02 e0                                      mul r2, r2, sl
007c3a60  d2 10 93 e1                                      ldrsb r1, [r3, r2]
007c3a64  02 20 83 e0                                      add r2, r3, r2
007c3a68  01 00 71 e3                                      cmn r1, #1
007c3a6c  90 10 96 e5                                      ldr r1, [r6, #0x90]
007c3a70  01 a0 82 12                                      addne sl, r2, #1
007c3a74  0c a0 92 05                                      ldreq sl, [r2, #0xc]
007c3a78  04 10 81 e0                                      add r1, r1, r4
007c3a7c  b2 14 00 eb                                      bl #0x7c8d4c
007c3a80  30 10 96 e5                                      ldr r1, [r6, #0x30]
007c3a84  04 40 80 e0                                      add r4, r0, r4
007c3a88  00 00 51 e3                                      cmp r1, #0
007c3a8c  03 00 00 0a                                      beq #0x7c3aa0
007c3a90  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
007c3a94  04 30 d0 e5                                      ldrb r3, [r0, #4]
007c3a98  00 00 53 e3                                      cmp r3, #0
007c3a9c  69 01 00 0a                                      beq #0x7c4048
007c3aa0  34 00 9d e5                                      ldr r0, [sp, #0x34]
007c3aa4  28 6c fe eb                                      bl #0x75eb4c
007c3aa8  08 31 9d e5                                      ldr r3, [sp, #0x108]
007c3aac  00 00 53 e3                                      cmp r3, #0
007c3ab0  0d 00 00 da                                      ble #0x7c3aec
007c3ab4  34 b0 9d e5                                      ldr fp, [sp, #0x34]
007c3ab8  00 90 a0 e3                                      mov sb, #0
007c3abc  04 10 95 e5                                      ldr r1, [r5, #4]
007c3ac0  00 30 95 e5                                      ldr r3, [r5]
007c3ac4  0c c0 a0 e3                                      mov ip, #0xc
007c3ac8  01 10 41 e2                                      sub r1, r1, #1
007c3acc  01 10 69 e0                                      rsb r1, sb, r1
007c3ad0  9c 31 21 e0                                      mla r1, ip, r1, r3
007c3ad4  0b 00 a0 e1                                      mov r0, fp
007c3ad8  6e 95 fe eb                                      bl #0x769098
007c3adc  08 31 9d e5                                      ldr r3, [sp, #0x108]
007c3ae0  01 90 89 e2                                      add sb, sb, #1
007c3ae4  09 00 53 e1                                      cmp r3, sb
007c3ae8  f3 ff ff ca                                      bgt #0x7c3abc
007c3aec  04 10 95 e5                                      ldr r1, [r5, #4]
007c3af0  05 00 a0 e1                                      mov r0, r5
007c3af4  01 10 63 e0                                      rsb r1, r3, r1
007c3af8  29 ec fe eb                                      bl #0x77eba4
007c3afc  04 10 95 e5                                      ldr r1, [r5, #4]
007c3b00  00 30 95 e5                                      ldr r3, [r5]
007c3b04  0c 00 a0 e3                                      mov r0, #0xc
007c3b08  01 10 41 e2                                      sub r1, r1, #1
007c3b0c  90 31 23 e0                                      mla r3, r0, r1, r3
007c3b10  05 00 a0 e1                                      mov r0, r5
007c3b14  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
007c3b18  05 00 52 e3                                      cmp r2, #5
007c3b1c  04 90 93 05                                      ldreq sb, [r3, #4]
007c3b20  00 90 a0 13                                      movne sb, #0
007c3b24  1e ec fe eb                                      bl #0x77eba4
007c3b28  00 00 59 e3                                      cmp sb, #0
007c3b2c  fc 80 cd e5                                      strb r8, [sp, #0xfc]
007c3b30  fd 80 cd e5                                      strb r8, [sp, #0xfd]
007c3b34  fc b0 8d 02                                      addeq fp, sp, #0xfc
007c3b38  13 00 00 0a                                      beq #0x7c3b8c
007c3b3c  00 20 99 e5                                      ldr r2, [sb]
007c3b40  5e 3f 8d e2                                      add r3, sp, #0x178
007c3b44  0a 10 a0 e1                                      mov r1, sl
007c3b48  03 00 a0 e1                                      mov r0, r3
007c3b4c  20 a0 92 e5                                      ldr sl, [r2, #0x20]
007c3b50  14 30 8d e5                                      str r3, [sp, #0x14]
007c3b54  c8 3f f1 eb                                      bl #0x413a7c
007c3b58  14 30 9d e5                                      ldr r3, [sp, #0x14]
007c3b5c  fc b0 8d e2                                      add fp, sp, #0xfc
007c3b60  09 00 a0 e1                                      mov r0, sb
007c3b64  03 10 a0 e1                                      mov r1, r3
007c3b68  0b 20 a0 e1                                      mov r2, fp
007c3b6c  3a ff 2f e1                                      blx sl
007c3b70  78 11 dd e5                                      ldrb r1, [sp, #0x178]
007c3b74  00 a0 a0 e1                                      mov sl, r0
007c3b78  71 30 af e6                                      sxtb r3, r1
007c3b7c  01 00 73 e3                                      cmn r3, #1
007c3b80  3a 01 00 0a                                      beq #0x7c4070
007c3b84  00 00 5a e3                                      cmp sl, #0
007c3b88  d5 00 00 1a                                      bne #0x7c3ee4
007c3b8c  0b 00 a0 e1                                      mov r0, fp
007c3b90  63 4d ff eb                                      bl #0x797124
007c3b94  34 00 9d e5                                      ldr r0, [sp, #0x34]
007c3b98  27 69 fe eb                                      bl #0x75e03c
007c3b9c  99 ff ff ea                                      b #0x7c3a08
007c3ba0  04 10 83 e0                                      add r1, r3, r4
007c3ba4  28 00 9d e5                                      ldr r0, [sp, #0x28]
007c3ba8  67 14 00 eb                                      bl #0x7c8d4c
007c3bac  44 30 96 e5                                      ldr r3, [r6, #0x44]
007c3bb0  14 10 a0 e3                                      mov r1, #0x14
007c3bb4  00 40 84 e0                                      add r4, r4, r0
007c3bb8  3c 20 93 e5                                      ldr r2, [r3, #0x3c]
007c3bbc  08 31 9d e5                                      ldr r3, [sp, #0x108]
007c3bc0  91 03 03 e0                                      mul r3, r1, r3
007c3bc4  24 10 9d e5                                      ldr r1, [sp, #0x24]
007c3bc8  d3 00 92 e1                                      ldrsb r0, [r2, r3]
007c3bcc  03 30 82 e0                                      add r3, r2, r3
007c3bd0  01 00 70 e3                                      cmn r0, #1
007c3bd4  0c 30 93 05                                      ldreq r3, [r3, #0xc]
007c3bd8  01 30 83 12                                      addne r3, r3, #1
007c3bdc  05 00 a0 e1                                      mov r0, r5
007c3be0  10 31 8d e5                                      str r3, [sp, #0x110]
007c3be4  81 95 fe eb                                      bl #0x7691f0
007c3be8  86 ff ff ea                                      b #0x7c3a08
007c3bec  04 10 83 e0                                      add r1, r3, r4
007c3bf0  28 00 9d e5                                      ldr r0, [sp, #0x28]
007c3bf4  54 14 00 eb                                      bl #0x7c8d4c
007c3bf8  44 30 96 e5                                      ldr r3, [r6, #0x44]
007c3bfc  00 40 84 e0                                      add r4, r4, r0
007c3c00  08 01 9d e5                                      ldr r0, [sp, #0x108]
007c3c04  6c 10 93 e5                                      ldr r1, [r3, #0x6c]
007c3c08  14 20 a0 e3                                      mov r2, #0x14
007c3c0c  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
007c3c10  92 10 21 e0                                      mla r1, r2, r0, r1
007c3c14  04 b0 95 e5                                      ldr fp, [r5, #4]
007c3c18  10 00 91 e5                                      ldr r0, [r1, #0x10]
007c3c1c  00 90 95 e5                                      ldr sb, [r5]
007c3c20  92 00 02 e0                                      mul r2, r2, r0
007c3c24  d2 10 93 e1                                      ldrsb r1, [r3, r2]
007c3c28  02 20 83 e0                                      add r2, r3, r2
007c3c2c  01 00 71 e3                                      cmn r1, #1
007c3c30  01 00 82 12                                      addne r0, r2, #1
007c3c34  0c 00 92 05                                      ldreq r0, [r2, #0xc]
007c3c38  02 10 4b e2                                      sub r1, fp, #2
007c3c3c  0c 20 a0 e3                                      mov r2, #0xc
007c3c40  92 91 23 e0                                      mla r3, r2, r1, sb
007c3c44  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
007c3c48  05 00 52 e3                                      cmp r2, #5
007c3c4c  cb 00 00 0a                                      beq #0x7c3f80
007c3c50  05 00 a0 e1                                      mov r0, r5
007c3c54  d2 eb fe eb                                      bl #0x77eba4
007c3c58  6a ff ff ea                                      b #0x7c3a08
007c3c5c  04 10 83 e0                                      add r1, r3, r4
007c3c60  24 00 9d e5                                      ldr r0, [sp, #0x24]
007c3c64  38 14 00 eb                                      bl #0x7c8d4c
007c3c68  44 30 96 e5                                      ldr r3, [r6, #0x44]
007c3c6c  10 21 9d e5                                      ldr r2, [sp, #0x110]
007c3c70  00 40 84 e0                                      add r4, r4, r0
007c3c74  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007c3c78  05 00 a0 e1                                      mov r0, r5
007c3c7c  28 10 9d e5                                      ldr r1, [sp, #0x28]
007c3c80  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007c3c84  08 31 8d e5                                      str r3, [sp, #0x108]
007c3c88  83 72 fe eb                                      bl #0x76069c
007c3c8c  5d ff ff ea                                      b #0x7c3a08
007c3c90  04 10 83 e0                                      add r1, r3, r4
007c3c94  28 00 9d e5                                      ldr r0, [sp, #0x28]
007c3c98  2b 14 00 eb                                      bl #0x7c8d4c
007c3c9c  44 30 96 e5                                      ldr r3, [r6, #0x44]
007c3ca0  00 40 84 e0                                      add r4, r4, r0
007c3ca4  08 01 9d e5                                      ldr r0, [sp, #0x108]
007c3ca8  6c 10 93 e5                                      ldr r1, [r3, #0x6c]
007c3cac  14 20 a0 e3                                      mov r2, #0x14
007c3cb0  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
007c3cb4  92 10 21 e0                                      mla r1, r2, r0, r1
007c3cb8  10 10 91 e5                                      ldr r1, [r1, #0x10]
007c3cbc  92 01 02 e0                                      mul r2, r2, r1
007c3cc0  d2 10 93 e1                                      ldrsb r1, [r3, r2]
007c3cc4  02 20 83 e0                                      add r2, r3, r2
007c3cc8  01 00 71 e3                                      cmn r1, #1
007c3ccc  0c 10 92 05                                      ldreq r1, [r2, #0xc]
007c3cd0  01 10 82 12                                      addne r1, r2, #1
007c3cd4  04 20 97 e5                                      ldr r2, [r7, #4]
007c3cd8  c0 80 cd e5                                      strb r8, [sp, #0xc0]
007c3cdc  c1 80 cd e5                                      strb r8, [sp, #0xc1]
007c3ce0  01 a0 52 e2                                      subs sl, r2, #1
007c3ce4  c0 c0 8d 42                                      addmi ip, sp, #0xc0
007c3ce8  1c c0 8d 45                                      strmi ip, [sp, #0x1c]
007c3cec  28 00 00 4a                                      bmi #0x7c3d94
007c3cf0  0c 00 a0 e3                                      mov r0, #0xc
007c3cf4  4f 3f 8d e2                                      add r3, sp, #0x13c
007c3cf8  c0 c0 8d e2                                      add ip, sp, #0xc0
007c3cfc  30 40 8d e5                                      str r4, [sp, #0x30]
007c3d00  38 60 8d e5                                      str r6, [sp, #0x38]
007c3d04  3c 50 8d e5                                      str r5, [sp, #0x3c]
007c3d08  90 0a 0a e0                                      mul sl, r0, sl
007c3d0c  00 90 a0 e3                                      mov sb, #0
007c3d10  1c c0 8d e5                                      str ip, [sp, #0x1c]
007c3d14  02 60 a0 e1                                      mov r6, r2
007c3d18  01 50 a0 e1                                      mov r5, r1
007c3d1c  03 40 a0 e1                                      mov r4, r3
007c3d20  05 00 00 ea                                      b #0x7c3d3c
007c3d24  00 00 5b e3                                      cmp fp, #0
007c3d28  16 00 00 1a                                      bne #0x7c3d88
007c3d2c  01 90 89 e2                                      add sb, sb, #1
007c3d30  06 00 59 e1                                      cmp sb, r6
007c3d34  0c a0 4a e2                                      sub sl, sl, #0xc
007c3d38  12 00 00 0a                                      beq #0x7c3d88
007c3d3c  00 b0 97 e5                                      ldr fp, [r7]
007c3d40  05 10 a0 e1                                      mov r1, r5
007c3d44  04 00 a0 e1                                      mov r0, r4
007c3d48  0a b0 8b e0                                      add fp, fp, sl
007c3d4c  4a 3f f1 eb                                      bl #0x413a7c
007c3d50  0b 00 a0 e1                                      mov r0, fp
007c3d54  04 10 a0 e1                                      mov r1, r4
007c3d58  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007c3d5c  9b 4c ff eb                                      bl #0x796fd0
007c3d60  00 b0 a0 e1                                      mov fp, r0
007c3d64  3c 01 dd e5                                      ldrb r0, [sp, #0x13c]
007c3d68  70 30 af e6                                      sxtb r3, r0
007c3d6c  01 00 73 e3                                      cmn r3, #1
007c3d70  eb ff ff 1a                                      bne #0x7c3d24
007c3d74  48 01 9d e5                                      ldr r0, [sp, #0x148]
007c3d78  44 11 9d e5                                      ldr r1, [sp, #0x144]
007c3d7c  6d 3b fe eb                                      bl #0x752b38
007c3d80  00 00 5b e3                                      cmp fp, #0
007c3d84  e8 ff ff 0a                                      beq #0x7c3d2c
007c3d88  30 40 9d e5                                      ldr r4, [sp, #0x30]
007c3d8c  38 60 9d e5                                      ldr r6, [sp, #0x38]
007c3d90  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
007c3d94  05 00 a0 e1                                      mov r0, r5
007c3d98  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007c3d9c  bd 94 fe eb                                      bl #0x769098
007c3da0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007c3da4  de 4c ff eb                                      bl #0x797124
007c3da8  16 ff ff ea                                      b #0x7c3a08
007c3dac  04 10 83 e0                                      add r1, r3, r4
007c3db0  24 00 9d e5                                      ldr r0, [sp, #0x24]
007c3db4  e4 13 00 eb                                      bl #0x7c8d4c
007c3db8  44 30 96 e5                                      ldr r3, [r6, #0x44]
007c3dbc  11 ce 8d e2                                      add ip, sp, #0x110
007c3dc0  00 40 84 e0                                      add r4, r4, r0
007c3dc4  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
007c3dc8  10 31 9d e5                                      ldr r3, [sp, #0x110]
007c3dcc  05 00 a0 e1                                      mov r0, r5
007c3dd0  28 10 9d e5                                      ldr r1, [sp, #0x28]
007c3dd4  83 31 a0 e1                                      lsl r3, r3, #3
007c3dd8  02 30 83 e0                                      add r3, r3, r2
007c3ddc  d0 20 c3 e1                                      ldrd r2, r3, [r3]
007c3de0  f8 20 4c e1                                      strd r2, r3, [ip, #-8]
007c3de4  12 db ff eb                                      bl #0x7baa34
007c3de8  06 ff ff ea                                      b #0x7c3a08
007c3dec  04 10 95 e5                                      ldr r1, [r5, #4]
007c3df0  00 30 95 e5                                      ldr r3, [r5]
007c3df4  0c 20 a0 e3                                      mov r2, #0xc
007c3df8  01 10 41 e2                                      sub r1, r1, #1
007c3dfc  07 00 a0 e1                                      mov r0, r7
007c3e00  92 31 21 e0                                      mla r1, r2, r1, r3
007c3e04  a3 94 fe eb                                      bl #0x769098
007c3e08  04 10 95 e5                                      ldr r1, [r5, #4]
007c3e0c  05 00 a0 e1                                      mov r0, r5
007c3e10  01 10 41 e2                                      sub r1, r1, #1
007c3e14  62 eb fe eb                                      bl #0x77eba4
007c3e18  fa fe ff ea                                      b #0x7c3a08
007c3e1c  04 10 83 e0                                      add r1, r3, r4
007c3e20  24 00 9d e5                                      ldr r0, [sp, #0x24]
007c3e24  c8 13 00 eb                                      bl #0x7c8d4c
007c3e28  04 10 95 e5                                      ldr r1, [r5, #4]
007c3e2c  00 40 84 e0                                      add r4, r4, r0
007c3e30  05 00 a0 e1                                      mov r0, r5
007c3e34  01 10 41 e2                                      sub r1, r1, #1
007c3e38  59 eb fe eb                                      bl #0x77eba4
007c3e3c  10 31 9d e5                                      ldr r3, [sp, #0x110]
007c3e40  00 00 53 e3                                      cmp r3, #0
007c3e44  ef fe ff da                                      ble #0x7c3a08
007c3e48  00 a0 a0 e3                                      mov sl, #0
007c3e4c  04 10 95 e5                                      ldr r1, [r5, #4]
007c3e50  05 00 a0 e1                                      mov r0, r5
007c3e54  01 a0 8a e2                                      add sl, sl, #1
007c3e58  01 10 41 e2                                      sub r1, r1, #1
007c3e5c  50 eb fe eb                                      bl #0x77eba4
007c3e60  10 31 9d e5                                      ldr r3, [sp, #0x110]
007c3e64  0a 00 53 e1                                      cmp r3, sl
007c3e68  f7 ff ff ca                                      bgt #0x7c3e4c
007c3e6c  e5 fe ff ea                                      b #0x7c3a08
007c3e70  04 10 83 e0                                      add r1, r3, r4
007c3e74  28 00 9d e5                                      ldr r0, [sp, #0x28]
007c3e78  b3 13 00 eb                                      bl #0x7c8d4c
007c3e7c  44 30 96 e5                                      ldr r3, [r6, #0x44]
007c3e80  00 40 84 e0                                      add r4, r4, r0
007c3e84  08 01 9d e5                                      ldr r0, [sp, #0x108]
007c3e88  6c 10 93 e5                                      ldr r1, [r3, #0x6c]
007c3e8c  14 20 a0 e3                                      mov r2, #0x14
007c3e90  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
007c3e94  92 10 21 e0                                      mla r1, r2, r0, r1
007c3e98  04 a0 95 e5                                      ldr sl, [r5, #4]
007c3e9c  10 10 91 e5                                      ldr r1, [r1, #0x10]
007c3ea0  01 a0 4a e2                                      sub sl, sl, #1
007c3ea4  92 01 02 e0                                      mul r2, r2, r1
007c3ea8  d2 00 93 e1                                      ldrsb r0, [r3, r2]
007c3eac  02 20 83 e0                                      add r2, r3, r2
007c3eb0  00 30 95 e5                                      ldr r3, [r5]
007c3eb4  01 00 70 e3                                      cmn r0, #1
007c3eb8  01 10 82 12                                      addne r1, r2, #1
007c3ebc  0c 10 92 05                                      ldreq r1, [r2, #0xc]
007c3ec0  0c 20 a0 e3                                      mov r2, #0xc
007c3ec4  92 3a 2a e0                                      mla sl, r2, sl, r3
007c3ec8  d1 30 da e1                                      ldrsb r3, [sl, #1]
007c3ecc  05 00 53 e3                                      cmp r3, #5
007c3ed0  44 00 00 0a                                      beq #0x7c3fe8
007c3ed4  0a 00 a0 e1                                      mov r0, sl
007c3ed8  91 4c ff eb                                      bl #0x797124
007c3edc  01 80 ca e5                                      strb r8, [sl, #1]
007c3ee0  c8 fe ff ea                                      b #0x7c3a08
007c3ee4  09 00 a0 e1                                      mov r0, sb
007c3ee8  05 30 a0 e3                                      mov r3, #5
007c3eec  f1 30 cd e5                                      strb r3, [sp, #0xf1]
007c3ef0  f4 90 8d e5                                      str sb, [sp, #0xf4]
007c3ef4  f0 80 cd e5                                      strb r8, [sp, #0xf0]
007c3ef8  59 57 fe eb                                      bl #0x759c64
007c3efc  58 c0 9d e5                                      ldr ip, [sp, #0x58]
007c3f00  08 e1 9d e5                                      ldr lr, [sp, #0x108]
007c3f04  e4 a0 8d e2                                      add sl, sp, #0xe4
007c3f08  01 c0 4c e2                                      sub ip, ip, #1
007c3f0c  04 c0 8d e5                                      str ip, [sp, #4]
007c3f10  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
007c3f14  f0 90 8d e2                                      add sb, sp, #0xf0
007c3f18  0b 10 a0 e1                                      mov r1, fp
007c3f1c  34 20 9d e5                                      ldr r2, [sp, #0x34]
007c3f20  09 30 a0 e1                                      mov r3, sb
007c3f24  0a 00 a0 e1                                      mov r0, sl
007c3f28  00 e0 8d e5                                      str lr, [sp]
007c3f2c  08 c0 8d e5                                      str ip, [sp, #8]
007c3f30  73 da ff eb                                      bl #0x7ba904
007c3f34  0a 00 a0 e1                                      mov r0, sl
007c3f38  79 4c ff eb                                      bl #0x797124
007c3f3c  09 00 a0 e1                                      mov r0, sb
007c3f40  77 4c ff eb                                      bl #0x797124
007c3f44  10 ff ff ea                                      b #0x7c3b8c
007c3f48  48 50 9d e5                                      ldr r5, [sp, #0x48]
007c3f4c  24 10 9d e5                                      ldr r1, [sp, #0x24]
007c3f50  38 40 9d e5                                      ldr r4, [sp, #0x38]
007c3f54  05 00 a0 e1                                      mov r0, r5
007c3f58  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
007c3f5c  d6 dc ff eb                                      bl #0x7bb2bc
007c3f60  a8 fe ff ea                                      b #0x7c3a08
007c3f64  48 50 9d e5                                      ldr r5, [sp, #0x48]
007c3f68  28 10 9d e5                                      ldr r1, [sp, #0x28]
007c3f6c  38 40 9d e5                                      ldr r4, [sp, #0x38]
007c3f70  05 00 a0 e1                                      mov r0, r5
007c3f74  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
007c3f78  cf dc ff eb                                      bl #0x7bb2bc
007c3f7c  a1 fe ff ea                                      b #0x7c3a08
007c3f80  04 a0 93 e5                                      ldr sl, [r3, #4]
007c3f84  00 00 5a e3                                      cmp sl, #0
007c3f88  30 ff ff 0a                                      beq #0x7c3c50
007c3f8c  00 20 9a e5                                      ldr r2, [sl]
007c3f90  45 3f 8d e2                                      add r3, sp, #0x114
007c3f94  00 10 a0 e1                                      mov r1, r0
007c3f98  1c c0 92 e5                                      ldr ip, [r2, #0x1c]
007c3f9c  03 00 a0 e1                                      mov r0, r3
007c3fa0  14 30 8d e5                                      str r3, [sp, #0x14]
007c3fa4  18 c0 8d e5                                      str ip, [sp, #0x18]
007c3fa8  b3 3e f1 eb                                      bl #0x413a7c
007c3fac  14 30 9d e5                                      ldr r3, [sp, #0x14]
007c3fb0  0c 00 a0 e3                                      mov r0, #0xc
007c3fb4  01 20 4b e2                                      sub r2, fp, #1
007c3fb8  03 10 a0 e1                                      mov r1, r3
007c3fbc  90 92 22 e0                                      mla r2, r0, r2, sb
007c3fc0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007c3fc4  0a 00 a0 e1                                      mov r0, sl
007c3fc8  3c ff 2f e1                                      blx ip
007c3fcc  14 11 dd e5                                      ldrb r1, [sp, #0x114]
007c3fd0  71 30 af e6                                      sxtb r3, r1
007c3fd4  01 00 73 e3                                      cmn r3, #1
007c3fd8  28 00 00 0a                                      beq #0x7c4080
007c3fdc  04 10 95 e5                                      ldr r1, [r5, #4]
007c3fe0  02 10 41 e2                                      sub r1, r1, #2
007c3fe4  19 ff ff ea                                      b #0x7c3c50
007c3fe8  04 b0 9a e5                                      ldr fp, [sl, #4]
007c3fec  00 00 5b e3                                      cmp fp, #0
007c3ff0  b7 ff ff 0a                                      beq #0x7c3ed4
007c3ff4  00 30 9b e5                                      ldr r3, [fp]
007c3ff8  4a af 8d e2                                      add sl, sp, #0x128
007c3ffc  0a 00 a0 e1                                      mov r0, sl
007c4000  20 90 93 e5                                      ldr sb, [r3, #0x20]
007c4004  9c 3e f1 eb                                      bl #0x413a7c
007c4008  04 20 95 e5                                      ldr r2, [r5, #4]
007c400c  00 30 95 e5                                      ldr r3, [r5]
007c4010  0c c0 a0 e3                                      mov ip, #0xc
007c4014  01 20 42 e2                                      sub r2, r2, #1
007c4018  9c 32 22 e0                                      mla r2, ip, r2, r3
007c401c  0b 00 a0 e1                                      mov r0, fp
007c4020  0a 10 a0 e1                                      mov r1, sl
007c4024  39 ff 2f e1                                      blx sb
007c4028  28 01 dd e5                                      ldrb r0, [sp, #0x128]
007c402c  70 30 af e6                                      sxtb r3, r0
007c4030  01 00 73 e3                                      cmn r3, #1
007c4034  73 fe ff 1a                                      bne #0x7c3a08
007c4038  34 01 9d e5                                      ldr r0, [sp, #0x134]
007c403c  30 11 9d e5                                      ldr r1, [sp, #0x130]
007c4040  bc 3a fe eb                                      bl #0x752b38
007c4044  6f fe ff ea                                      b #0x7c3a08
007c4048  00 10 90 e5                                      ldr r1, [r0]
007c404c  01 10 41 e2                                      sub r1, r1, #1
007c4050  00 00 51 e3                                      cmp r1, #0
007c4054  00 10 80 e5                                      str r1, [r0]
007c4058  00 00 00 1a                                      bne #0x7c4060
007c405c  b5 3a fe eb                                      bl #0x752b38
007c4060  2c 80 86 e5                                      str r8, [r6, #0x2c]
007c4064  30 80 86 e5                                      str r8, [r6, #0x30]
007c4068  08 10 a0 e1                                      mov r1, r8
007c406c  8b fe ff ea                                      b #0x7c3aa0
007c4070  84 01 9d e5                                      ldr r0, [sp, #0x184]
007c4074  80 11 9d e5                                      ldr r1, [sp, #0x180]
007c4078  ae 3a fe eb                                      bl #0x752b38
007c407c  c0 fe ff ea                                      b #0x7c3b84
007c4080  20 01 9d e5                                      ldr r0, [sp, #0x120]
007c4084  1c 11 9d e5                                      ldr r1, [sp, #0x11c]
007c4088  aa 3a fe eb                                      bl #0x752b38
007c408c  d2 ff ff ea                                      b #0x7c3fdc
007c4090  9e 28 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007c4094  84 14 1d 00 ac 40 00 00 08 a0 10 00 6c 78 14 00  .byte 0x84, 0x14, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x08, 0xa0, 0x10, 0x00, 0x6c, 0x78, 0x14, 0x00

; FUNCTION 0x007c4130, declared_size=744, range_size=744, mode=arm
; class-group: gameswf::as_3_function
; alias: _ZN7gameswf13as_3_functionclERKNS_7fn_callE
; demangled: gameswf::as_3_function::operator()(gameswf::fn_call const&)
; decoder-mode: arm
007c4130  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c4134  cc 92 9f e5                                      ldr sb, [pc, #0x2cc]
007c4138  cc 22 9f e5                                      ldr r2, [pc, #0x2cc]
007c413c  8c d0 4d e2                                      sub sp, sp, #0x8c
007c4140  09 90 8f e0                                      add sb, pc, sb
007c4144  0c 20 8d e5                                      str r2, [sp, #0xc]
007c4148  02 20 99 e7                                      ldr r2, [sb, r2]
007c414c  04 30 91 e5                                      ldr r3, [r1, #4]
007c4150  0c 40 91 e5                                      ldr r4, [r1, #0xc]
007c4154  00 20 92 e5                                      ldr r2, [r2]
007c4158  00 00 53 e3                                      cmp r3, #0
007c415c  01 70 a0 e1                                      mov r7, r1
007c4160  00 80 a0 e1                                      mov r8, r0
007c4164  84 20 8d e5                                      str r2, [sp, #0x84]
007c4168  0b 00 00 0a                                      beq #0x7c419c
007c416c  03 00 a0 e1                                      mov r0, r3
007c4170  00 30 93 e5                                      ldr r3, [r3]
007c4174  0f e0 a0 e1                                      mov lr, pc
007c4178  58 f0 93 e5                                      ldr pc, [r3, #0x58]
007c417c  00 00 50 e3                                      cmp r0, #0
007c4180  05 00 00 0a                                      beq #0x7c419c
007c4184  04 30 97 e5                                      ldr r3, [r7, #4]
007c4188  03 00 a0 e1                                      mov r0, r3
007c418c  00 30 93 e5                                      ldr r3, [r3]
007c4190  0f e0 a0 e1                                      mov lr, pc
007c4194  58 f0 93 e5                                      ldr pc, [r3, #0x58]
007c4198  00 40 a0 e1                                      mov r4, r0
007c419c  04 00 a0 e1                                      mov r0, r4
007c41a0  47 23 00 eb                                      bl #0x7ccec4
007c41a4  04 40 97 e5                                      ldr r4, [r7, #4]
007c41a8  00 00 54 e3                                      cmp r4, #0
007c41ac  00 40 a0 01                                      moveq r4, r0
007c41b0  07 00 00 0a                                      beq #0x7c41d4
007c41b4  24 30 94 e5                                      ldr r3, [r4, #0x24]
007c41b8  00 00 53 e3                                      cmp r3, #0
007c41bc  04 00 00 0a                                      beq #0x7c41d4
007c41c0  20 00 94 e5                                      ldr r0, [r4, #0x20]
007c41c4  04 20 d0 e5                                      ldrb r2, [r0, #4]
007c41c8  00 00 52 e3                                      cmp r2, #0
007c41cc  03 40 a0 11                                      movne r4, r3
007c41d0  81 00 00 0a                                      beq #0x7c43dc
007c41d4  7c 10 98 e5                                      ldr r1, [r8, #0x7c]
007c41d8  30 50 8d e2                                      add r5, sp, #0x30
007c41dc  00 60 a0 e3                                      mov r6, #0
007c41e0  01 10 81 e2                                      add r1, r1, #1
007c41e4  05 00 a0 e1                                      mov r0, r5
007c41e8  30 60 8d e5                                      str r6, [sp, #0x30]
007c41ec  34 60 8d e5                                      str r6, [sp, #0x34]
007c41f0  38 60 8d e5                                      str r6, [sp, #0x38]
007c41f4  3c 60 cd e5                                      strb r6, [sp, #0x3c]
007c41f8  69 ea fe eb                                      bl #0x77eba4
007c41fc  06 00 54 e1                                      cmp r4, r6
007c4200  05 30 a0 e3                                      mov r3, #5
007c4204  4c 60 cd e5                                      strb r6, [sp, #0x4c]
007c4208  4d 30 cd e5                                      strb r3, [sp, #0x4d]
007c420c  50 40 8d e5                                      str r4, [sp, #0x50]
007c4210  30 60 9d e5                                      ldr r6, [sp, #0x30]
007c4214  01 00 00 0a                                      beq #0x7c4220
007c4218  04 00 a0 e1                                      mov r0, r4
007c421c  90 56 fe eb                                      bl #0x759c64
007c4220  4c 40 8d e2                                      add r4, sp, #0x4c
007c4224  04 10 a0 e1                                      mov r1, r4
007c4228  06 00 a0 e1                                      mov r0, r6
007c422c  42 4d ff eb                                      bl #0x79773c
007c4230  04 00 a0 e1                                      mov r0, r4
007c4234  ba 4b ff eb                                      bl #0x797124
007c4238  00 60 a0 e3                                      mov r6, #0
007c423c  08 00 a0 e1                                      mov r0, r8
007c4240  20 60 8d e5                                      str r6, [sp, #0x20]
007c4244  24 60 8d e5                                      str r6, [sp, #0x24]
007c4248  28 60 8d e5                                      str r6, [sp, #0x28]
007c424c  2c 60 cd e5                                      strb r6, [sp, #0x2c]
007c4250  10 60 8d e5                                      str r6, [sp, #0x10]
007c4254  14 60 8d e5                                      str r6, [sp, #0x14]
007c4258  18 60 8d e5                                      str r6, [sp, #0x18]
007c425c  1c 60 cd e5                                      strb r6, [sp, #0x1c]
007c4260  a7 9c fe eb                                      bl #0x76b504
007c4264  10 40 8d e2                                      add r4, sp, #0x10
007c4268  58 10 8d e2                                      add r1, sp, #0x58
007c426c  58 00 8d e5                                      str r0, [sp, #0x58]
007c4270  04 00 a0 e1                                      mov r0, r4
007c4274  10 dc ff eb                                      bl #0x7bb2bc
007c4278  08 00 a0 e1                                      mov r0, r8
007c427c  41 60 cd e5                                      strb r6, [sp, #0x41]
007c4280  40 60 cd e5                                      strb r6, [sp, #0x40]
007c4284  9e 9c fe eb                                      bl #0x76b504
007c4288  80 11 9f e5                                      ldr r1, [pc, #0x180]
007c428c  00 20 90 e5                                      ldr r2, [r0]
007c4290  70 30 8d e2                                      add r3, sp, #0x70
007c4294  00 b0 a0 e1                                      mov fp, r0
007c4298  01 10 8f e0                                      add r1, pc, r1
007c429c  03 00 a0 e1                                      mov r0, r3
007c42a0  20 a0 92 e5                                      ldr sl, [r2, #0x20]
007c42a4  08 30 8d e5                                      str r3, [sp, #8]
007c42a8  f3 3d f1 eb                                      bl #0x413a7c
007c42ac  08 30 9d e5                                      ldr r3, [sp, #8]
007c42b0  40 60 8d e2                                      add r6, sp, #0x40
007c42b4  0b 00 a0 e1                                      mov r0, fp
007c42b8  03 10 a0 e1                                      mov r1, r3
007c42bc  06 20 a0 e1                                      mov r2, r6
007c42c0  3a ff 2f e1                                      blx sl
007c42c4  d0 37 dd e1                                      ldrsb r3, [sp, #0x70]
007c42c8  01 00 73 e3                                      cmn r3, #1
007c42cc  3e 00 00 0a                                      beq #0x7c43cc
007c42d0  d1 34 dd e1                                      ldrsb r3, [sp, #0x41]
007c42d4  38 11 9f e5                                      ldr r1, [pc, #0x138]
007c42d8  05 00 53 e3                                      cmp r3, #5
007c42dc  44 b0 9d 05                                      ldreq fp, [sp, #0x44]
007c42e0  00 b0 a0 13                                      movne fp, #0
007c42e4  5c 30 8d e2                                      add r3, sp, #0x5c
007c42e8  00 20 9b e5                                      ldr r2, [fp]
007c42ec  01 10 8f e0                                      add r1, pc, r1
007c42f0  03 00 a0 e1                                      mov r0, r3
007c42f4  20 a0 92 e5                                      ldr sl, [r2, #0x20]
007c42f8  08 30 8d e5                                      str r3, [sp, #8]
007c42fc  de 3d f1 eb                                      bl #0x413a7c
007c4300  08 30 9d e5                                      ldr r3, [sp, #8]
007c4304  0b 00 a0 e1                                      mov r0, fp
007c4308  06 20 a0 e1                                      mov r2, r6
007c430c  03 10 a0 e1                                      mov r1, r3
007c4310  3a ff 2f e1                                      blx sl
007c4314  dc 35 dd e1                                      ldrsb r3, [sp, #0x5c]
007c4318  01 00 73 e3                                      cmn r3, #1
007c431c  26 00 00 0a                                      beq #0x7c43bc
007c4320  04 00 a0 e1                                      mov r0, r4
007c4324  06 10 a0 e1                                      mov r1, r6
007c4328  5a 93 fe eb                                      bl #0x769098
007c432c  00 c0 97 e5                                      ldr ip, [r7]
007c4330  20 70 8d e2                                      add r7, sp, #0x20
007c4334  07 20 a0 e1                                      mov r2, r7
007c4338  04 30 a0 e1                                      mov r3, r4
007c433c  05 10 a0 e1                                      mov r1, r5
007c4340  08 00 a0 e1                                      mov r0, r8
007c4344  00 c0 8d e5                                      str ip, [sp]
007c4348  ab fc ff eb                                      bl #0x7c35fc
007c434c  06 00 a0 e1                                      mov r0, r6
007c4350  73 4b ff eb                                      bl #0x797124
007c4354  04 00 a0 e1                                      mov r0, r4
007c4358  00 10 a0 e3                                      mov r1, #0
007c435c  10 ea fe eb                                      bl #0x77eba4
007c4360  04 00 a0 e1                                      mov r0, r4
007c4364  00 10 a0 e3                                      mov r1, #0
007c4368  27 58 fe eb                                      bl #0x75a40c
007c436c  07 00 a0 e1                                      mov r0, r7
007c4370  00 10 a0 e3                                      mov r1, #0
007c4374  0a ea fe eb                                      bl #0x77eba4
007c4378  07 00 a0 e1                                      mov r0, r7
007c437c  00 10 a0 e3                                      mov r1, #0
007c4380  21 58 fe eb                                      bl #0x75a40c
007c4384  05 00 a0 e1                                      mov r0, r5
007c4388  00 10 a0 e3                                      mov r1, #0
007c438c  04 ea fe eb                                      bl #0x77eba4
007c4390  05 00 a0 e1                                      mov r0, r5
007c4394  00 10 a0 e3                                      mov r1, #0
007c4398  1b 58 fe eb                                      bl #0x75a40c
007c439c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007c43a0  02 30 99 e7                                      ldr r3, [sb, r2]
007c43a4  84 20 9d e5                                      ldr r2, [sp, #0x84]
007c43a8  00 30 93 e5                                      ldr r3, [r3]
007c43ac  03 00 52 e1                                      cmp r2, r3
007c43b0  13 00 00 1a                                      bne #0x7c4404
007c43b4  8c d0 8d e2                                      add sp, sp, #0x8c
007c43b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c43bc  68 00 9d e5                                      ldr r0, [sp, #0x68]
007c43c0  64 10 9d e5                                      ldr r1, [sp, #0x64]
007c43c4  db 39 fe eb                                      bl #0x752b38
007c43c8  d4 ff ff ea                                      b #0x7c4320
007c43cc  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
007c43d0  78 10 9d e5                                      ldr r1, [sp, #0x78]
007c43d4  d7 39 fe eb                                      bl #0x752b38
007c43d8  bc ff ff ea                                      b #0x7c42d0
007c43dc  00 10 90 e5                                      ldr r1, [r0]
007c43e0  01 10 41 e2                                      sub r1, r1, #1
007c43e4  00 00 51 e3                                      cmp r1, #0
007c43e8  00 10 80 e5                                      str r1, [r0]
007c43ec  00 00 00 1a                                      bne #0x7c43f4
007c43f0  d0 39 fe eb                                      bl #0x752b38
007c43f4  00 30 a0 e3                                      mov r3, #0
007c43f8  24 30 84 e5                                      str r3, [r4, #0x24]
007c43fc  20 30 84 e5                                      str r3, [r4, #0x20]
007c4400  73 ff ff ea                                      b #0x7c41d4
007c4404  c1 27 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007c4408  50 09 1d 00 ac 40 00 00 80 4d 14 00 84 5f 14 00  .byte 0x50, 0x09, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x80, 0x4d, 0x14, 0x00, 0x84, 0x5f, 0x14, 0x00
