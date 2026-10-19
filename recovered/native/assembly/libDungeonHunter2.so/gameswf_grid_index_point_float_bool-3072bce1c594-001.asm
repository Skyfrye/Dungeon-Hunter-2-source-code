; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b054c, declared_size=240, range_size=240, mode=arm
; class-group: gameswf::grid_index_point<float, bool>
; alias: _ZNK7gameswf16grid_index_pointIfbE27get_containing_cell_clampedERKNS_11index_pointIfEE
; demangled: gameswf::grid_index_point<float, bool>::get_containing_cell_clamped(gameswf::index_point<float> const&) const
; decoder-mode: arm
007b054c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b0550  00 50 91 e5                                      ldr r5, [r1]
007b0554  00 60 a0 e1                                      mov r6, r0
007b0558  01 40 a0 e1                                      mov r4, r1
007b055c  00 00 92 e5                                      ldr r0, [r2]
007b0560  05 10 a0 e1                                      mov r1, r5
007b0564  02 80 a0 e1                                      mov r8, r2
007b0568  8f 77 ed eb                                      bl #0x30e3ac
007b056c  00 70 a0 e1                                      mov r7, r0
007b0570  10 00 94 e5                                      ldr r0, [r4, #0x10]
007b0574  fa 78 ed eb                                      bl #0x30e964
007b0578  00 10 a0 e1                                      mov r1, r0
007b057c  07 00 a0 e1                                      mov r0, r7
007b0580  f9 79 ed eb                                      bl #0x30ed6c
007b0584  05 10 a0 e1                                      mov r1, r5
007b0588  00 70 a0 e1                                      mov r7, r0
007b058c  08 00 94 e5                                      ldr r0, [r4, #8]
007b0590  85 77 ed eb                                      bl #0x30e3ac
007b0594  00 10 a0 e1                                      mov r1, r0
007b0598  07 00 a0 e1                                      mov r0, r7
007b059c  bc 79 ed eb                                      bl #0x30ec94
007b05a0  c9 77 ed eb                                      bl #0x30e4cc
007b05a4  00 00 86 e5                                      str r0, [r6]
007b05a8  04 70 94 e5                                      ldr r7, [r4, #4]
007b05ac  00 50 a0 e1                                      mov r5, r0
007b05b0  04 00 98 e5                                      ldr r0, [r8, #4]
007b05b4  07 10 a0 e1                                      mov r1, r7
007b05b8  7b 77 ed eb                                      bl #0x30e3ac
007b05bc  00 80 a0 e1                                      mov r8, r0
007b05c0  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b05c4  e6 78 ed eb                                      bl #0x30e964
007b05c8  00 10 a0 e1                                      mov r1, r0
007b05cc  08 00 a0 e1                                      mov r0, r8
007b05d0  e5 79 ed eb                                      bl #0x30ed6c
007b05d4  07 10 a0 e1                                      mov r1, r7
007b05d8  00 80 a0 e1                                      mov r8, r0
007b05dc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007b05e0  71 77 ed eb                                      bl #0x30e3ac
007b05e4  00 10 a0 e1                                      mov r1, r0
007b05e8  08 00 a0 e1                                      mov r0, r8
007b05ec  a8 79 ed eb                                      bl #0x30ec94
007b05f0  b5 77 ed eb                                      bl #0x30e4cc
007b05f4  00 00 55 e3                                      cmp r5, #0
007b05f8  00 50 a0 b3                                      movlt r5, #0
007b05fc  04 00 86 e5                                      str r0, [r6, #4]
007b0600  00 50 86 b5                                      strlt r5, [r6]
007b0604  10 30 94 e5                                      ldr r3, [r4, #0x10]
007b0608  06 00 a0 e1                                      mov r0, r6
007b060c  03 00 55 e1                                      cmp r5, r3
007b0610  01 30 43 a2                                      subge r3, r3, #1
007b0614  00 30 86 a5                                      strge r3, [r6]
007b0618  04 30 96 e5                                      ldr r3, [r6, #4]
007b061c  00 00 53 e3                                      cmp r3, #0
007b0620  00 30 a0 b3                                      movlt r3, #0
007b0624  04 30 86 b5                                      strlt r3, [r6, #4]
007b0628  14 20 94 e5                                      ldr r2, [r4, #0x14]
007b062c  02 00 53 e1                                      cmp r3, r2
007b0630  01 20 42 a2                                      subge r2, r2, #1
007b0634  04 20 86 a5                                      strge r2, [r6, #4]
007b0638  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007b09a8, declared_size=340, range_size=340, mode=arm
; class-group: gameswf::grid_index_point<float, bool>
; alias: _ZN7gameswf16grid_index_pointIfbE5beginERKNS_9index_boxIfEE
; demangled: gameswf::grid_index_point<float, bool>::begin(gameswf::index_box<float> const&)
; decoder-mode: arm
007b09a8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007b09ac  00 c0 a0 e1                                      mov ip, r0
007b09b0  01 60 a0 e1                                      mov r6, r1
007b09b4  00 30 a0 e3                                      mov r3, #0
007b09b8  00 10 a0 e3                                      mov r1, #0
007b09bc  0c d0 4d e2                                      sub sp, sp, #0xc
007b09c0  04 60 8c e4                                      str r6, [ip], #4
007b09c4  0c 30 80 e5                                      str r3, [r0, #0xc]
007b09c8  02 50 a0 e1                                      mov r5, r2
007b09cc  08 30 80 e5                                      str r3, [r0, #8]
007b09d0  04 30 80 e5                                      str r3, [r0, #4]
007b09d4  10 30 80 e5                                      str r3, [r0, #0x10]
007b09d8  2c 10 80 e5                                      str r1, [r0, #0x2c]
007b09dc  18 10 80 e5                                      str r1, [r0, #0x18]
007b09e0  14 10 80 e5                                      str r1, [r0, #0x14]
007b09e4  20 10 80 e5                                      str r1, [r0, #0x20]
007b09e8  1c 10 80 e5                                      str r1, [r0, #0x1c]
007b09ec  24 10 80 e5                                      str r1, [r0, #0x24]
007b09f0  28 10 80 e5                                      str r1, [r0, #0x28]
007b09f4  00 40 a0 e1                                      mov r4, r0
007b09f8  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
007b09fc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007b0a00  0d 00 a0 e1                                      mov r0, sp
007b0a04  06 10 a0 e1                                      mov r1, r6
007b0a08  05 20 a0 e1                                      mov r2, r5
007b0a0c  ce fe ff eb                                      bl #0x7b054c
007b0a10  0c 00 9d e8                                      ldm sp, {r2, r3}
007b0a14  0d 00 a0 e1                                      mov r0, sp
007b0a18  18 30 84 e5                                      str r3, [r4, #0x18]
007b0a1c  14 20 84 e5                                      str r2, [r4, #0x14]
007b0a20  06 10 a0 e1                                      mov r1, r6
007b0a24  08 20 85 e2                                      add r2, r5, #8
007b0a28  c7 fe ff eb                                      bl #0x7b054c
007b0a2c  82 00 9d e8                                      ldm sp, {r1, r7}
007b0a30  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b0a34  18 30 94 e5                                      ldr r3, [r4, #0x18]
007b0a38  1c 10 84 e5                                      str r1, [r4, #0x1c]
007b0a3c  24 00 84 e5                                      str r0, [r4, #0x24]
007b0a40  20 70 84 e5                                      str r7, [r4, #0x20]
007b0a44  28 30 84 e5                                      str r3, [r4, #0x28]
007b0a48  10 c0 96 e5                                      ldr ip, [r6, #0x10]
007b0a4c  18 20 96 e5                                      ldr r2, [r6, #0x18]
007b0a50  9c 03 2c e0                                      mla ip, ip, r3, r0
007b0a54  0c 21 92 e7                                      ldr r2, [r2, ip, lsl #2]
007b0a58  00 00 52 e3                                      cmp r2, #0
007b0a5c  2c 20 84 e5                                      str r2, [r4, #0x2c]
007b0a60  02 00 00 0a                                      beq #0x7b0a70
007b0a64  04 00 a0 e1                                      mov r0, r4
007b0a68  0c d0 8d e2                                      add sp, sp, #0xc
007b0a6c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007b0a70  01 20 80 e2                                      add r2, r0, #1
007b0a74  07 00 53 e1                                      cmp r3, r7
007b0a78  24 20 84 e5                                      str r2, [r4, #0x24]
007b0a7c  f8 ff ff ca                                      bgt #0x7b0a64
007b0a80  00 c0 94 e5                                      ldr ip, [r4]
007b0a84  03 60 a0 e1                                      mov r6, r3
007b0a88  02 00 51 e1                                      cmp r1, r2
007b0a8c  13 00 00 ba                                      blt #0x7b0ae0
007b0a90  10 50 9c e5                                      ldr r5, [ip, #0x10]
007b0a94  18 30 9c e5                                      ldr r3, [ip, #0x18]
007b0a98  96 25 22 e0                                      mla r2, r6, r5, r2
007b0a9c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007b0aa0  00 00 53 e3                                      cmp r3, #0
007b0aa4  2c 30 84 e5                                      str r3, [r4, #0x2c]
007b0aa8  ed ff ff 1a                                      bne #0x7b0a64
007b0aac  24 30 94 e5                                      ldr r3, [r4, #0x24]
007b0ab0  06 00 00 ea                                      b #0x7b0ad0
007b0ab4  10 50 9c e5                                      ldr r5, [ip, #0x10]
007b0ab8  18 20 9c e5                                      ldr r2, [ip, #0x18]
007b0abc  95 36 25 e0                                      mla r5, r5, r6, r3
007b0ac0  05 21 92 e7                                      ldr r2, [r2, r5, lsl #2]
007b0ac4  00 00 52 e3                                      cmp r2, #0
007b0ac8  2c 20 84 e5                                      str r2, [r4, #0x2c]
007b0acc  e4 ff ff 1a                                      bne #0x7b0a64
007b0ad0  01 30 83 e2                                      add r3, r3, #1
007b0ad4  03 00 51 e1                                      cmp r1, r3
007b0ad8  24 30 84 e5                                      str r3, [r4, #0x24]
007b0adc  f4 ff ff aa                                      bge #0x7b0ab4
007b0ae0  01 60 86 e2                                      add r6, r6, #1
007b0ae4  06 00 57 e1                                      cmp r7, r6
007b0ae8  24 00 84 e5                                      str r0, [r4, #0x24]
007b0aec  28 60 84 e5                                      str r6, [r4, #0x28]
007b0af0  db ff ff ba                                      blt #0x7b0a64
007b0af4  00 20 a0 e1                                      mov r2, r0
007b0af8  e2 ff ff ea                                      b #0x7b0a88

; FUNCTION 0x007b1d08, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::grid_index_point<float, bool>
; alias: _ZN7gameswf16grid_index_pointIfbED1Ev
; demangled: gameswf::grid_index_point<float, bool>::~grid_index_point()
; decoder-mode: arm
007b1d08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b1d0c  14 30 90 e5                                      ldr r3, [r0, #0x14]
007b1d10  10 60 90 e5                                      ldr r6, [r0, #0x10]
007b1d14  00 70 a0 e1                                      mov r7, r0
007b1d18  96 03 06 e0                                      mul r6, r6, r3
007b1d1c  00 00 56 e3                                      cmp r6, #0
007b1d20  18 30 90 d5                                      ldrle r3, [r0, #0x18]
007b1d24  13 00 00 da                                      ble #0x7b1d78
007b1d28  18 30 90 e5                                      ldr r3, [r0, #0x18]
007b1d2c  00 50 a0 e3                                      mov r5, #0
007b1d30  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
007b1d34  00 00 50 e3                                      cmp r0, #0
007b1d38  0b 00 00 0a                                      beq #0x7b1d6c
007b1d3c  0c 40 90 e5                                      ldr r4, [r0, #0xc]
007b1d40  00 10 a0 e3                                      mov r1, #0
007b1d44  7b 83 fe eb                                      bl #0x752b38
007b1d48  00 00 54 e3                                      cmp r4, #0
007b1d4c  05 00 00 0a                                      beq #0x7b1d68
007b1d50  04 00 a0 e1                                      mov r0, r4
007b1d54  0c 40 90 e5                                      ldr r4, [r0, #0xc]
007b1d58  00 10 a0 e3                                      mov r1, #0
007b1d5c  75 83 fe eb                                      bl #0x752b38
007b1d60  00 00 54 e3                                      cmp r4, #0
007b1d64  f9 ff ff 1a                                      bne #0x7b1d50
007b1d68  18 30 97 e5                                      ldr r3, [r7, #0x18]
007b1d6c  01 50 85 e2                                      add r5, r5, #1
007b1d70  06 00 55 e1                                      cmp r5, r6
007b1d74  ed ff ff 1a                                      bne #0x7b1d30
007b1d78  00 00 53 e3                                      cmp r3, #0
007b1d7c  02 00 00 0a                                      beq #0x7b1d8c
007b1d80  03 00 a0 e1                                      mov r0, r3
007b1d84  00 10 a0 e3                                      mov r1, #0
007b1d88  6a 83 fe eb                                      bl #0x752b38
007b1d8c  07 00 a0 e1                                      mov r0, r7
007b1d90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
