; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00487bb0, declared_size=552, range_size=552, mode=arm
; class-group: Array2d<rnd::Tile*>
; alias: _ZN7Array2dIPN3rnd4TileEE5ClearEv
; demangled: Array2d<rnd::Tile*>::Clear()
; decoder-mode: arm
00487bb0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00487bb4  18 30 90 e5                                      ldr r3, [r0, #0x18]
00487bb8  f4 d0 4d e2                                      sub sp, sp, #0xf4
00487bbc  14 a0 90 e5                                      ldr sl, [r0, #0x14]
00487bc0  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00487bc4  5c c0 8d e2                                      add ip, sp, #0x5c
00487bc8  1c 30 8d e5                                      str r3, [sp, #0x1c]
00487bcc  dc 30 8d e2                                      add r3, sp, #0xdc
00487bd0  00 70 a0 e1                                      mov r7, r0
00487bd4  ac 80 8d e2                                      add r8, sp, #0xac
00487bd8  bc 90 8d e2                                      add sb, sp, #0xbc
00487bdc  ec b0 8d e2                                      add fp, sp, #0xec
00487be0  0c c0 8d e5                                      str ip, [sp, #0xc]
00487be4  14 30 8d e5                                      str r3, [sp, #0x14]
00487be8  cc c0 8d e2                                      add ip, sp, #0xcc
00487bec  20 30 8d e2                                      add r3, sp, #0x20
00487bf0  00 60 a0 e3                                      mov r6, #0
00487bf4  10 c0 8d e5                                      str ip, [sp, #0x10]
00487bf8  18 30 8d e5                                      str r3, [sp, #0x18]
00487bfc  04 a0 8d e5                                      str sl, [sp, #4]
00487c00  0b 00 00 ea                                      b #0x487c34
00487c04  10 50 84 e2                                      add r5, r4, #0x10
00487c08  20 50 95 e8                                      ldm r5, {r5, ip, lr}
00487c0c  1c a0 94 e5                                      ldr sl, [r4, #0x1c]
00487c10  c0 c0 8d e5                                      str ip, [sp, #0xc0]
00487c14  c4 e0 8d e5                                      str lr, [sp, #0xc4]
00487c18  c8 a0 8d e5                                      str sl, [sp, #0xc8]
00487c1c  bc 50 8d e5                                      str r5, [sp, #0xbc]
00487c20  ae ff ff eb                                      bl #0x487ae0
00487c24  04 c0 9d e5                                      ldr ip, [sp, #4]
00487c28  28 40 84 e2                                      add r4, r4, #0x28
00487c2c  04 00 5c e1                                      cmp ip, r4
00487c30  24 00 00 0a                                      beq #0x487cc8
00487c34  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
00487c38  10 50 84 e2                                      add r5, r4, #0x10
00487c3c  04 00 53 e1                                      cmp r3, r4
00487c40  25 00 00 0a                                      beq #0x487cdc
00487c44  ec 60 8d e5                                      str r6, [sp, #0xec]
00487c48  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00487c4c  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
00487c50  08 10 a0 e1                                      mov r1, r8
00487c54  05 00 a0 e1                                      mov r0, r5
00487c58  34 f0 ff eb                                      bl #0x483d30
00487c5c  00 00 50 e3                                      cmp r0, #0
00487c60  09 10 a0 e1                                      mov r1, sb
00487c64  04 00 a0 e1                                      mov r0, r4
00487c68  06 20 a0 e1                                      mov r2, r6
00487c6c  0b 30 a0 e1                                      mov r3, fp
00487c70  e3 ff ff 0a                                      beq #0x487c04
00487c74  0c a0 9d e5                                      ldr sl, [sp, #0xc]
00487c78  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00487c7c  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
00487c80  0a 00 a0 e1                                      mov r0, sl
00487c84  06 10 a0 e1                                      mov r1, r6
00487c88  39 f0 ff eb                                      bl #0x483d74
00487c8c  0f 00 9a e8                                      ldm sl, {r0, r1, r2, r3}
00487c90  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00487c94  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00487c98  10 a0 9d e5                                      ldr sl, [sp, #0x10]
00487c9c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00487ca0  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
00487ca4  04 10 a0 e1                                      mov r1, r4
00487ca8  18 00 9d e5                                      ldr r0, [sp, #0x18]
00487cac  14 20 9d e5                                      ldr r2, [sp, #0x14]
00487cb0  10 30 9d e5                                      ldr r3, [sp, #0x10]
00487cb4  14 f7 ff eb                                      bl #0x48590c
00487cb8  04 c0 9d e5                                      ldr ip, [sp, #4]
00487cbc  28 40 84 e2                                      add r4, r4, #0x28
00487cc0  04 00 5c e1                                      cmp ip, r4
00487cc4  da ff ff 1a                                      bne #0x487c34
00487cc8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00487ccc  04 40 b3 e5                                      ldr r4, [r3, #4]!
00487cd0  1c 30 8d e5                                      str r3, [sp, #0x1c]
00487cd4  78 a0 84 e2                                      add sl, r4, #0x78
00487cd8  c2 ff ff ea                                      b #0x487be8
00487cdc  00 40 a0 e3                                      mov r4, #0
00487ce0  34 50 8d e2                                      add r5, sp, #0x34
00487ce4  05 00 a0 e1                                      mov r0, r5
00487ce8  04 10 a0 e1                                      mov r1, r4
00487cec  34 40 8d e5                                      str r4, [sp, #0x34]
00487cf0  38 40 8d e5                                      str r4, [sp, #0x38]
00487cf4  3c 40 8d e5                                      str r4, [sp, #0x3c]
00487cf8  40 40 8d e5                                      str r4, [sp, #0x40]
00487cfc  44 40 8d e5                                      str r4, [sp, #0x44]
00487d00  48 40 8d e5                                      str r4, [sp, #0x48]
00487d04  4c 40 8d e5                                      str r4, [sp, #0x4c]
00487d08  50 40 8d e5                                      str r4, [sp, #0x50]
00487d0c  54 40 8d e5                                      str r4, [sp, #0x54]
00487d10  58 40 8d e5                                      str r4, [sp, #0x58]
00487d14  0c 80 87 e2                                      add r8, r7, #0xc
00487d18  70 fa ff eb                                      bl #0x4866e0
00487d1c  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
00487d20  6c c0 8d e2                                      add ip, sp, #0x6c
00487d24  1c a0 87 e2                                      add sl, r7, #0x1c
00487d28  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00487d2c  0c 10 a0 e1                                      mov r1, ip
00487d30  0a 00 a0 e1                                      mov r0, sl
00487d34  e0 ef ff eb                                      bl #0x483cbc
00487d38  00 20 50 e2                                      subs r2, r0, #0
00487d3c  13 00 00 1a                                      bne #0x487d90
00487d40  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
00487d44  28 40 97 e5                                      ldr r4, [r7, #0x28]
00487d48  24 e0 97 e5                                      ldr lr, [r7, #0x24]
00487d4c  20 c0 97 e5                                      ldr ip, [r7, #0x20]
00487d50  f0 10 8d e2                                      add r1, sp, #0xf0
00487d54  74 30 21 e5                                      str r3, [r1, #-0x74]!
00487d58  08 00 a0 e1                                      mov r0, r8
00487d5c  05 30 a0 e1                                      mov r3, r5
00487d60  88 40 8d e5                                      str r4, [sp, #0x88]
00487d64  84 e0 8d e5                                      str lr, [sp, #0x84]
00487d68  80 c0 8d e5                                      str ip, [sp, #0x80]
00487d6c  b0 fc ff eb                                      bl #0x487034
00487d70  05 00 a0 e1                                      mov r0, r5
00487d74  fb f4 ff eb                                      bl #0x485168
00487d78  00 30 a0 e3                                      mov r3, #0
00487d7c  08 30 87 e5                                      str r3, [r7, #8]
00487d80  04 30 87 e5                                      str r3, [r7, #4]
00487d84  00 30 87 e5                                      str r3, [r7]
00487d88  f4 d0 8d e2                                      add sp, sp, #0xf4
00487d8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00487d90  5c 60 8d e2                                      add r6, sp, #0x5c
00487d94  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
00487d98  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00487d9c  04 10 a0 e1                                      mov r1, r4
00487da0  06 00 a0 e1                                      mov r0, r6
00487da4  2a f0 ff eb                                      bl #0x483e54
00487da8  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00487dac  9c e0 8d e2                                      add lr, sp, #0x9c
00487db0  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00487db4  8c c0 8d e2                                      add ip, sp, #0x8c
00487db8  0f 00 9a e8                                      ldm sl, {r0, r1, r2, r3}
00487dbc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00487dc0  08 10 a0 e1                                      mov r1, r8
00487dc4  0e 20 a0 e1                                      mov r2, lr
00487dc8  0c 30 a0 e1                                      mov r3, ip
00487dcc  20 00 8d e2                                      add r0, sp, #0x20
00487dd0  61 f8 ff eb                                      bl #0x485f5c
00487dd4  e5 ff ff ea                                      b #0x487d70

; FUNCTION 0x00487dd8, declared_size=172, range_size=172, mode=arm
; class-group: Array2d<rnd::Tile*>
; alias: _ZN7Array2dIPN3rnd4TileEEC1Ev
; demangled: Array2d<rnd::Tile*>::Array2d()
; decoder-mode: arm
00487dd8  70 40 2d e9                                      push {r4, r5, r6, lr}
00487ddc  00 30 a0 e3                                      mov r3, #0
00487de0  00 40 a0 e1                                      mov r4, r0
00487de4  08 00 a0 e3                                      mov r0, #8
00487de8  00 10 a0 e1                                      mov r1, r0
00487dec  03 20 a0 e1                                      mov r2, r3
00487df0  0c 30 84 e5                                      str r3, [r4, #0xc]
00487df4  10 30 84 e5                                      str r3, [r4, #0x10]
00487df8  14 30 84 e5                                      str r3, [r4, #0x14]
00487dfc  18 30 84 e5                                      str r3, [r4, #0x18]
00487e00  1c 30 84 e5                                      str r3, [r4, #0x1c]
00487e04  20 30 84 e5                                      str r3, [r4, #0x20]
00487e08  24 30 84 e5                                      str r3, [r4, #0x24]
00487e0c  28 30 84 e5                                      str r3, [r4, #0x28]
00487e10  2c 30 84 e5                                      str r3, [r4, #0x2c]
00487e14  30 00 84 e5                                      str r0, [r4, #0x30]
00487e18  2c 00 84 e2                                      add r0, r4, #0x2c
00487e1c  9d f3 ff eb                                      bl #0x484c98
00487e20  00 50 a0 e1                                      mov r5, r0
00487e24  2c 00 84 e5                                      str r0, [r4, #0x2c]
00487e28  04 00 a0 e1                                      mov r0, r4
00487e2c  30 60 b0 e5                                      ldr r6, [r0, #0x30]!
00487e30  b0 fa ff eb                                      bl #0x4868f8
00487e34  01 60 46 e2                                      sub r6, r6, #1
00487e38  a6 60 a0 e1                                      lsr r6, r6, #1
00487e3c  06 01 85 e7                                      str r0, [r5, r6, lsl #2]
00487e40  06 31 85 e0                                      add r3, r5, r6, lsl #2
00487e44  18 30 84 e5                                      str r3, [r4, #0x18]
00487e48  06 21 95 e7                                      ldr r2, [r5, r6, lsl #2]
00487e4c  28 30 84 e5                                      str r3, [r4, #0x28]
00487e50  04 00 a0 e1                                      mov r0, r4
00487e54  78 30 82 e2                                      add r3, r2, #0x78
00487e58  10 20 84 e5                                      str r2, [r4, #0x10]
00487e5c  14 30 84 e5                                      str r3, [r4, #0x14]
00487e60  06 31 95 e7                                      ldr r3, [r5, r6, lsl #2]
00487e64  0c 20 84 e5                                      str r2, [r4, #0xc]
00487e68  78 20 83 e2                                      add r2, r3, #0x78
00487e6c  24 20 84 e5                                      str r2, [r4, #0x24]
00487e70  1c 30 84 e5                                      str r3, [r4, #0x1c]
00487e74  20 30 84 e5                                      str r3, [r4, #0x20]
00487e78  4c ff ff eb                                      bl #0x487bb0
00487e7c  04 00 a0 e1                                      mov r0, r4
00487e80  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048b578, declared_size=644, range_size=644, mode=arm
; class-group: Array2d<rnd::Tile*>
; alias: _ZN7Array2dIPN3rnd4TileEE14EnsurePositionEii
; demangled: Array2d<rnd::Tile*>::EnsurePosition(int, int)
; decoder-mode: arm
0048b578  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048b57c  00 70 90 e5                                      ldr r7, [r0]
0048b580  8c d0 4d e2                                      sub sp, sp, #0x8c
0048b584  00 40 a0 e1                                      mov r4, r0
0048b588  01 00 57 e1                                      cmp r7, r1
0048b58c  06 00 8d e9                                      stmib sp, {r1, r2}
0048b590  69 00 00 da                                      ble #0x48b73c
0048b594  08 30 90 e5                                      ldr r3, [r0, #8]
0048b598  07 70 61 e0                                      rsb r7, r1, r7
0048b59c  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0048b5a0  07 30 83 e0                                      add r3, r3, r7
0048b5a4  08 30 80 e5                                      str r3, [r0, #8]
0048b5a8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0048b5ac  18 10 90 e5                                      ldr r1, [r0, #0x18]
0048b5b0  00 a0 a0 e3                                      mov sl, #0
0048b5b4  05 00 53 e1                                      cmp r3, r5
0048b5b8  14 90 90 e5                                      ldr sb, [r0, #0x14]
0048b5bc  84 b0 8d e2                                      add fp, sp, #0x84
0048b5c0  0c 10 8d e5                                      str r1, [sp, #0xc]
0048b5c4  0a 80 a0 e1                                      mov r8, sl
0048b5c8  17 00 00 0a                                      beq #0x48b62c
0048b5cc  00 00 57 e3                                      cmp r7, #0
0048b5d0  00 60 a0 c3                                      movgt r6, #0
0048b5d4  0c 00 00 da                                      ble #0x48b60c
0048b5d8  84 80 8d e5                                      str r8, [sp, #0x84]
0048b5dc  00 30 95 e5                                      ldr r3, [r5]
0048b5e0  04 20 95 e5                                      ldr r2, [r5, #4]
0048b5e4  02 00 53 e1                                      cmp r3, r2
0048b5e8  2a 00 00 0a                                      beq #0x48b698
0048b5ec  04 a0 03 e5                                      str sl, [r3, #-4]
0048b5f0  00 30 95 e5                                      ldr r3, [r5]
0048b5f4  04 30 43 e2                                      sub r3, r3, #4
0048b5f8  00 30 85 e5                                      str r3, [r5]
0048b5fc  01 60 86 e2                                      add r6, r6, #1
0048b600  07 00 56 e1                                      cmp r6, r7
0048b604  f3 ff ff 1a                                      bne #0x48b5d8
0048b608  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0048b60c  28 50 85 e2                                      add r5, r5, #0x28
0048b610  05 00 59 e1                                      cmp sb, r5
0048b614  0c 20 9d 05                                      ldreq r2, [sp, #0xc]
0048b618  04 50 b2 05                                      ldreq r5, [r2, #4]!
0048b61c  0c 20 8d 05                                      streq r2, [sp, #0xc]
0048b620  78 90 85 02                                      addeq sb, r5, #0x78
0048b624  05 00 53 e1                                      cmp r3, r5
0048b628  e7 ff ff 1a                                      bne #0x48b5cc
0048b62c  04 30 9d e5                                      ldr r3, [sp, #4]
0048b630  00 30 84 e5                                      str r3, [r4]
0048b634  04 70 94 e5                                      ldr r7, [r4, #4]
0048b638  08 20 9d e5                                      ldr r2, [sp, #8]
0048b63c  02 00 57 e1                                      cmp r7, r2
0048b640  18 00 00 da                                      ble #0x48b6a8
0048b644  07 70 62 e0                                      rsb r7, r2, r7
0048b648  00 00 57 e3                                      cmp r7, #0
0048b64c  0d 00 00 da                                      ble #0x48b688
0048b650  0c 80 84 e2                                      add r8, r4, #0xc
0048b654  00 60 a0 e3                                      mov r6, #0
0048b658  38 50 8d e2                                      add r5, sp, #0x38
0048b65c  08 10 94 e5                                      ldr r1, [r4, #8]
0048b660  05 00 a0 e1                                      mov r0, r5
0048b664  f6 fe ff eb                                      bl #0x48b244
0048b668  08 00 a0 e1                                      mov r0, r8
0048b66c  05 10 a0 e1                                      mov r1, r5
0048b670  b2 ff ff eb                                      bl #0x48b540
0048b674  01 60 86 e2                                      add r6, r6, #1
0048b678  05 00 a0 e1                                      mov r0, r5
0048b67c  b9 e6 ff eb                                      bl #0x485168
0048b680  07 00 56 e1                                      cmp r6, r7
0048b684  f4 ff ff 1a                                      bne #0x48b65c
0048b688  08 30 9d e5                                      ldr r3, [sp, #8]
0048b68c  04 30 84 e5                                      str r3, [r4, #4]
0048b690  8c d0 8d e2                                      add sp, sp, #0x8c
0048b694  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048b698  05 00 a0 e1                                      mov r0, r5
0048b69c  0b 10 a0 e1                                      mov r1, fp
0048b6a0  cd fe ff eb                                      bl #0x48b1dc
0048b6a4  d4 ff ff ea                                      b #0x48b5fc
0048b6a8  70 c0 8d e2                                      add ip, sp, #0x70
0048b6ac  0c 50 84 e2                                      add r5, r4, #0xc
0048b6b0  1c 60 84 e2                                      add r6, r4, #0x1c
0048b6b4  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0048b6b8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0048b6bc  0c 10 a0 e1                                      mov r1, ip
0048b6c0  06 00 a0 e1                                      mov r0, r6
0048b6c4  7c e1 ff eb                                      bl #0x483cbc
0048b6c8  04 c0 94 e5                                      ldr ip, [r4, #4]
0048b6cc  08 10 9d e5                                      ldr r1, [sp, #8]
0048b6d0  0c 00 80 e0                                      add r0, r0, ip
0048b6d4  00 00 51 e1                                      cmp r1, r0
0048b6d8  ec ff ff ba                                      blt #0x48b690
0048b6dc  60 e0 8d e2                                      add lr, sp, #0x60
0048b6e0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0048b6e4  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
0048b6e8  08 20 9d e5                                      ldr r2, [sp, #8]
0048b6ec  06 00 a0 e1                                      mov r0, r6
0048b6f0  0e 10 a0 e1                                      mov r1, lr
0048b6f4  02 80 6c e0                                      rsb r8, ip, r2
0048b6f8  6f e1 ff eb                                      bl #0x483cbc
0048b6fc  00 80 58 e0                                      subs r8, r8, r0
0048b700  e2 ff ff 4a                                      bmi #0x48b690
0048b704  00 70 a0 e3                                      mov r7, #0
0048b708  10 60 8d e2                                      add r6, sp, #0x10
0048b70c  08 10 94 e5                                      ldr r1, [r4, #8]
0048b710  06 00 a0 e1                                      mov r0, r6
0048b714  ca fe ff eb                                      bl #0x48b244
0048b718  05 00 a0 e1                                      mov r0, r5
0048b71c  06 10 a0 e1                                      mov r1, r6
0048b720  5e ff ff eb                                      bl #0x48b4a0
0048b724  01 70 87 e2                                      add r7, r7, #1
0048b728  06 00 a0 e1                                      mov r0, r6
0048b72c  8d e6 ff eb                                      bl #0x485168
0048b730  07 00 58 e1                                      cmp r8, r7
0048b734  f4 ff ff aa                                      bge #0x48b70c
0048b738  d4 ff ff ea                                      b #0x48b690
0048b73c  08 30 90 e5                                      ldr r3, [r0, #8]
0048b740  04 10 9d e5                                      ldr r1, [sp, #4]
0048b744  07 20 83 e0                                      add r2, r3, r7
0048b748  02 00 51 e1                                      cmp r1, r2
0048b74c  b8 ff ff ba                                      blt #0x48b634
0048b750  01 70 67 e2                                      rsb r7, r7, #1
0048b754  07 70 63 e0                                      rsb r7, r3, r7
0048b758  18 20 90 e5                                      ldr r2, [r0, #0x18]
0048b75c  01 70 87 e0                                      add r7, r7, r1
0048b760  03 30 87 e0                                      add r3, r7, r3
0048b764  00 a0 a0 e3                                      mov sl, #0
0048b768  08 30 80 e5                                      str r3, [r0, #8]
0048b76c  14 90 90 e5                                      ldr sb, [r0, #0x14]
0048b770  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0048b774  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0048b778  80 b0 8d e2                                      add fp, sp, #0x80
0048b77c  04 20 8d e5                                      str r2, [sp, #4]
0048b780  0a 80 a0 e1                                      mov r8, sl
0048b784  05 00 53 e1                                      cmp r3, r5
0048b788  a9 ff ff 0a                                      beq #0x48b634
0048b78c  00 00 57 e3                                      cmp r7, #0
0048b790  00 60 a0 c3                                      movgt r6, #0
0048b794  0d 00 00 da                                      ble #0x48b7d0
0048b798  80 80 8d e5                                      str r8, [sp, #0x80]
0048b79c  18 20 95 e5                                      ldr r2, [r5, #0x18]
0048b7a0  10 30 95 e5                                      ldr r3, [r5, #0x10]
0048b7a4  04 20 42 e2                                      sub r2, r2, #4
0048b7a8  02 00 53 e1                                      cmp r3, r2
0048b7ac  0e 00 00 0a                                      beq #0x48b7ec
0048b7b0  00 a0 83 e5                                      str sl, [r3]
0048b7b4  10 30 95 e5                                      ldr r3, [r5, #0x10]
0048b7b8  04 30 83 e2                                      add r3, r3, #4
0048b7bc  10 30 85 e5                                      str r3, [r5, #0x10]
0048b7c0  01 60 86 e2                                      add r6, r6, #1
0048b7c4  07 00 56 e1                                      cmp r6, r7
0048b7c8  f2 ff ff 1a                                      bne #0x48b798
0048b7cc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0048b7d0  28 50 85 e2                                      add r5, r5, #0x28
0048b7d4  05 00 59 e1                                      cmp sb, r5
0048b7d8  04 10 9d 05                                      ldreq r1, [sp, #4]
0048b7dc  04 50 b1 05                                      ldreq r5, [r1, #4]!
0048b7e0  04 10 8d 05                                      streq r1, [sp, #4]
0048b7e4  78 90 85 02                                      addeq sb, r5, #0x78
0048b7e8  e5 ff ff ea                                      b #0x48b784
0048b7ec  05 00 a0 e1                                      mov r0, r5
0048b7f0  0b 10 a0 e1                                      mov r1, fp
0048b7f4  5b fe ff eb                                      bl #0x48b168
0048b7f8  f0 ff ff ea                                      b #0x48b7c0

; FUNCTION 0x0048b7fc, declared_size=96, range_size=96, mode=arm
; class-group: Array2d<rnd::Tile*>
; alias: _ZN7Array2dIPN3rnd4TileEEclEii
; demangled: Array2d<rnd::Tile*>::operator()(int, int)
; decoder-mode: arm
0048b7fc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0048b800  00 50 a0 e1                                      mov r5, r0
0048b804  14 d0 4d e2                                      sub sp, sp, #0x14
0048b808  01 60 a0 e1                                      mov r6, r1
0048b80c  02 70 a0 e1                                      mov r7, r2
0048b810  58 ff ff eb                                      bl #0x48b578
0048b814  04 c0 95 e5                                      ldr ip, [r5, #4]
0048b818  0d 40 a0 e1                                      mov r4, sp
0048b81c  0c 30 85 e2                                      add r3, r5, #0xc
0048b820  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0048b824  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0048b828  07 10 6c e0                                      rsb r1, ip, r7
0048b82c  0d 00 a0 e1                                      mov r0, sp
0048b830  87 e1 ff eb                                      bl #0x483e54
0048b834  00 c0 95 e5                                      ldr ip, [r5]
0048b838  00 30 9d e5                                      ldr r3, [sp]
0048b83c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0048b840  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0048b844  0d 00 a0 e1                                      mov r0, sp
0048b848  06 10 6c e0                                      rsb r1, ip, r6
0048b84c  48 e1 ff eb                                      bl #0x483d74
0048b850  00 00 9d e5                                      ldr r0, [sp]
0048b854  14 d0 8d e2                                      add sp, sp, #0x14
0048b858  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
