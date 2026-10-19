; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078531c, declared_size=164, range_size=164, mode=arm
; class-group: gameswf::tesselate
; alias: _ZN7gameswf9tesselateL17compare_segment_yEPKvS2_
; demangled: gameswf::tesselate::compare_segment_y(void const*, void const*)
; decoder-mode: arm
0078531c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00785320  04 50 90 e5                                      ldr r5, [r0, #4]
00785324  04 40 91 e5                                      ldr r4, [r1, #4]
00785328  00 70 a0 e1                                      mov r7, r0
0078532c  01 60 a0 e1                                      mov r6, r1
00785330  05 00 a0 e1                                      mov r0, r5
00785334  04 10 a0 e1                                      mov r1, r4
00785338  f3 24 ee eb                                      bl #0x30e70c
0078533c  00 00 50 e3                                      cmp r0, #0
00785340  06 00 00 1a                                      bne #0x785360
00785344  05 00 a0 e1                                      mov r0, r5
00785348  04 10 a0 e1                                      mov r1, r4
0078534c  0e 23 ee eb                                      bl #0x30df8c
00785350  00 00 50 e3                                      cmp r0, #0
00785354  03 00 00 1a                                      bne #0x785368
00785358  01 00 a0 e3                                      mov r0, #1
0078535c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00785360  00 00 e0 e3                                      mvn r0, #0
00785364  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00785368  05 10 a0 e1                                      mov r1, r5
0078536c  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00785370  0d 24 ee eb                                      bl #0x30e3ac
00785374  04 10 a0 e1                                      mov r1, r4
00785378  00 50 a0 e1                                      mov r5, r0
0078537c  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00785380  09 24 ee eb                                      bl #0x30e3ac
00785384  00 40 a0 e1                                      mov r4, r0
00785388  04 10 a0 e1                                      mov r1, r4
0078538c  05 00 a0 e1                                      mov r0, r5
00785390  dd 24 ee eb                                      bl #0x30e70c
00785394  00 00 50 e3                                      cmp r0, #0
00785398  f0 ff ff 1a                                      bne #0x785360
0078539c  05 00 a0 e1                                      mov r0, r5
007853a0  04 10 a0 e1                                      mov r1, r4
007853a4  f8 22 ee eb                                      bl #0x30df8c
007853a8  00 00 50 e3                                      cmp r0, #0
007853ac  00 30 a0 e3                                      mov r3, #0
007853b0  01 30 a0 13                                      movne r3, #1
007853b4  01 30 23 e2                                      eor r3, r3, #1
007853b8  73 00 ef e6                                      uxtb r0, r3
007853bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007853c0, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::tesselate
; alias: _ZN7gameswf9tesselateL17compare_segment_xEPKvS2_
; demangled: gameswf::tesselate::compare_segment_x(void const*, void const*)
; decoder-mode: arm
007853c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007853c4  00 50 90 e5                                      ldr r5, [r0]
007853c8  00 40 91 e5                                      ldr r4, [r1]
007853cc  00 70 a0 e1                                      mov r7, r0
007853d0  01 60 a0 e1                                      mov r6, r1
007853d4  05 00 a0 e1                                      mov r0, r5
007853d8  04 10 a0 e1                                      mov r1, r4
007853dc  ca 24 ee eb                                      bl #0x30e70c
007853e0  00 00 50 e3                                      cmp r0, #0
007853e4  06 00 00 1a                                      bne #0x785404
007853e8  05 00 a0 e1                                      mov r0, r5
007853ec  04 10 a0 e1                                      mov r1, r4
007853f0  e5 22 ee eb                                      bl #0x30df8c
007853f4  00 00 50 e3                                      cmp r0, #0
007853f8  03 00 00 1a                                      bne #0x78540c
007853fc  01 00 a0 e3                                      mov r0, #1
00785400  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00785404  00 00 e0 e3                                      mvn r0, #0
00785408  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0078540c  08 50 97 e5                                      ldr r5, [r7, #8]
00785410  08 40 96 e5                                      ldr r4, [r6, #8]
00785414  05 00 a0 e1                                      mov r0, r5
00785418  04 10 a0 e1                                      mov r1, r4
0078541c  ba 24 ee eb                                      bl #0x30e70c
00785420  00 00 50 e3                                      cmp r0, #0
00785424  f6 ff ff 1a                                      bne #0x785404
00785428  05 00 a0 e1                                      mov r0, r5
0078542c  04 10 a0 e1                                      mov r1, r4
00785430  d5 22 ee eb                                      bl #0x30df8c
00785434  00 00 50 e3                                      cmp r0, #0
00785438  00 30 a0 e3                                      mov r3, #0
0078543c  01 30 a0 13                                      movne r3, #1
00785440  01 30 23 e2                                      eor r3, r3, #1
00785444  73 00 ef e6                                      uxtb r0, r3
00785448  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00785d98, declared_size=1312, range_size=1312, mode=arm
; class-group: gameswf::tesselate
; alias: _ZN7gameswf9tesselateL17peel_off_and_emitEiiff
; demangled: gameswf::tesselate::peel_off_and_emit(int, int, float, float)
; decoder-mode: arm
00785d98  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00785d9c  4c d0 4d e2                                      sub sp, sp, #0x4c
00785da0  08 10 8d e5                                      str r1, [sp, #8]
00785da4  00 70 a0 e1                                      mov r7, r0
00785da8  03 10 a0 e1                                      mov r1, r3
00785dac  02 00 a0 e1                                      mov r0, r2
00785db0  03 a0 a0 e1                                      mov sl, r3
00785db4  74 20 ee eb                                      bl #0x30df8c
00785db8  00 00 50 e3                                      cmp r0, #0
00785dbc  86 00 00 1a                                      bne #0x785fdc
00785dc0  08 10 9d e5                                      ldr r1, [sp, #8]
00785dc4  38 00 8d e5                                      str r0, [sp, #0x38]
00785dc8  3c 00 8d e5                                      str r0, [sp, #0x3c]
00785dcc  01 00 57 e1                                      cmp r7, r1
00785dd0  40 00 8d e5                                      str r0, [sp, #0x40]
00785dd4  44 00 cd e5                                      strb r0, [sp, #0x44]
00785dd8  2e 01 00 aa                                      bge #0x786298
00785ddc  c4 24 9f e5                                      ldr r2, [pc, #0x4c4]
00785de0  1c 30 a0 e3                                      mov r3, #0x1c
00785de4  93 07 04 e0                                      mul r4, r3, r7
00785de8  02 20 8f e0                                      add r2, pc, r2
00785dec  38 30 8d e2                                      add r3, sp, #0x38
00785df0  04 00 8d e5                                      str r0, [sp, #4]
00785df4  0c 20 8d e5                                      str r2, [sp, #0xc]
00785df8  00 50 a0 e1                                      mov r5, r0
00785dfc  14 30 8d e5                                      str r3, [sp, #0x14]
00785e00  10 20 8d e5                                      str r2, [sp, #0x10]
00785e04  18 00 00 ea                                      b #0x785e6c
00785e08  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00785e0c  1c b0 a0 e3                                      mov fp, #0x1c
00785e10  0f 00 b9 e8                                      ldm sb!, {r0, r1, r2, r3}
00785e14  9b ce 2c e0                                      mla ip, fp, lr, ip
00785e18  08 e0 9d e5                                      ldr lr, [sp, #8]
00785e1c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00785e20  07 00 99 e8                                      ldm sb, {r0, r1, r2}
00785e24  07 00 8c e8                                      stm ip, {r0, r1, r2}
00785e28  38 30 9d e5                                      ldr r3, [sp, #0x38]
00785e2c  3c 60 8d e5                                      str r6, [sp, #0x3c]
00785e30  01 70 87 e2                                      add r7, r7, #1
00785e34  9b 35 25 e0                                      mla r5, fp, r5, r3
00785e38  0e 00 57 e1                                      cmp r7, lr
00785e3c  08 80 85 e5                                      str r8, [r5, #8]
00785e40  0c a0 85 e5                                      str sl, [r5, #0xc]
00785e44  10 10 9d e5                                      ldr r1, [sp, #0x10]
00785e48  e0 30 91 e5                                      ldr r3, [r1, #0xe0]
00785e4c  04 20 83 e0                                      add r2, r3, r4
00785e50  04 a0 82 e5                                      str sl, [r2, #4]
00785e54  04 80 83 e7                                      str r8, [r3, r4]
00785e58  0b 40 84 e0                                      add r4, r4, fp
00785e5c  60 00 00 0a                                      beq #0x785fe4
00785e60  40 20 9d e5                                      ldr r2, [sp, #0x40]
00785e64  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
00785e68  04 20 8d e5                                      str r2, [sp, #4]
00785e6c  0c b0 9d e5                                      ldr fp, [sp, #0xc]
00785e70  e0 90 9b e5                                      ldr sb, [fp, #0xe0]
00785e74  fe b5 a0 e3                                      mov fp, #0x3f800000
00785e78  04 90 89 e0                                      add sb, sb, r4
00785e7c  04 60 99 e5                                      ldr r6, [sb, #4]
00785e80  0c 00 99 e5                                      ldr r0, [sb, #0xc]
00785e84  06 10 a0 e1                                      mov r1, r6
00785e88  47 21 ee eb                                      bl #0x30e3ac
00785e8c  00 10 a0 e3                                      mov r1, #0
00785e90  00 80 a0 e1                                      mov r8, r0
00785e94  17 21 ee eb                                      bl #0x30e2f8
00785e98  00 00 50 e3                                      cmp r0, #0
00785e9c  05 00 00 0a                                      beq #0x785eb8
00785ea0  06 10 a0 e1                                      mov r1, r6
00785ea4  0a 00 a0 e1                                      mov r0, sl
00785ea8  3f 21 ee eb                                      bl #0x30e3ac
00785eac  08 10 a0 e1                                      mov r1, r8
00785eb0  77 23 ee eb                                      bl #0x30ec94
00785eb4  00 b0 a0 e1                                      mov fp, r0
00785eb8  00 80 99 e5                                      ldr r8, [sb]
00785ebc  08 00 99 e5                                      ldr r0, [sb, #8]
00785ec0  01 60 85 e2                                      add r6, r5, #1
00785ec4  08 10 a0 e1                                      mov r1, r8
00785ec8  37 21 ee eb                                      bl #0x30e3ac
00785ecc  0b 10 a0 e1                                      mov r1, fp
00785ed0  a5 23 ee eb                                      bl #0x30ed6c
00785ed4  00 10 a0 e1                                      mov r1, r0
00785ed8  08 00 a0 e1                                      mov r0, r8
00785edc  30 23 ee eb                                      bl #0x30eba4
00785ee0  04 e0 9d e5                                      ldr lr, [sp, #4]
00785ee4  00 80 a0 e1                                      mov r8, r0
00785ee8  0e 00 56 e1                                      cmp r6, lr
00785eec  05 e0 a0 d1                                      movle lr, r5
00785ef0  c4 ff ff da                                      ble #0x785e08
00785ef4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00785ef8  c6 10 86 e0                                      add r1, r6, r6, asr #1
00785efc  f4 fd ff eb                                      bl #0x7856d4
00785f00  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
00785f04  bf ff ff ea                                      b #0x785e08
00785f08  14 20 91 e5                                      ldr r2, [r1, #0x14]
00785f0c  00 00 52 e3                                      cmp r2, #0
00785f10  a8 00 00 ba                                      blt #0x7861b8
00785f14  01 00 56 e3                                      cmp r6, #1
00785f18  28 00 00 da                                      ble #0x785fc0
00785f1c  88 83 9f e5                                      ldr r8, [pc, #0x388]
00785f20  01 50 a0 e3                                      mov r5, #1
00785f24  00 e0 a0 e3                                      mov lr, #0
00785f28  08 80 8f e0                                      add r8, pc, r8
00785f2c  1c 90 8d e2                                      add sb, sp, #0x1c
00785f30  00 00 00 ea                                      b #0x785f38
00785f34  38 10 9d e5                                      ldr r1, [sp, #0x38]
00785f38  0e c0 81 e0                                      add ip, r1, lr
00785f3c  14 30 9c e5                                      ldr r3, [ip, #0x14]
00785f40  1c 40 8e e2                                      add r4, lr, #0x1c
00785f44  04 a0 81 e0                                      add sl, r1, r4
00785f48  00 00 53 e3                                      cmp r3, #0
00785f4c  05 70 a0 b1                                      movlt r7, r5
00785f50  14 00 00 ba                                      blt #0x785fa8
00785f54  04 00 9c e5                                      ldr r0, [ip, #4]
00785f58  10 31 98 e5                                      ldr r3, [r8, #0x110]
00785f5c  09 20 a0 e1                                      mov r2, sb
00785f60  1c 00 8d e5                                      str r0, [sp, #0x1c]
00785f64  0c 60 9c e5                                      ldr r6, [ip, #0xc]
00785f68  03 00 a0 e1                                      mov r0, r3
00785f6c  05 70 a0 e1                                      mov r7, r5
00785f70  20 60 8d e5                                      str r6, [sp, #0x20]
00785f74  0e e0 91 e7                                      ldr lr, [r1, lr]
00785f78  24 e0 8d e5                                      str lr, [sp, #0x24]
00785f7c  08 e0 9c e5                                      ldr lr, [ip, #8]
00785f80  28 e0 8d e5                                      str lr, [sp, #0x28]
00785f84  04 10 91 e7                                      ldr r1, [r1, r4]
00785f88  2c 10 8d e5                                      str r1, [sp, #0x2c]
00785f8c  08 10 9a e5                                      ldr r1, [sl, #8]
00785f90  30 10 8d e5                                      str r1, [sp, #0x30]
00785f94  14 10 9c e5                                      ldr r1, [ip, #0x14]
00785f98  00 30 93 e5                                      ldr r3, [r3]
00785f9c  0f e0 a0 e1                                      mov lr, pc
00785fa0  08 f0 93 e5                                      ldr pc, [r3, #8]
00785fa4  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
00785fa8  01 30 46 e2                                      sub r3, r6, #1
00785fac  07 00 53 e1                                      cmp r3, r7
00785fb0  04 e0 a0 e1                                      mov lr, r4
00785fb4  01 50 85 e2                                      add r5, r5, #1
00785fb8  06 30 a0 e1                                      mov r3, r6
00785fbc  dc ff ff ca                                      bgt #0x785f34
00785fc0  00 00 56 e3                                      cmp r6, #0
00785fc4  a5 00 00 da                                      ble #0x786260
00785fc8  00 30 a0 e3                                      mov r3, #0
00785fcc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00785fd0  03 10 a0 e1                                      mov r1, r3
00785fd4  3c 30 8d e5                                      str r3, [sp, #0x3c]
00785fd8  bd fd ff eb                                      bl #0x7856d4
00785fdc  4c d0 8d e2                                      add sp, sp, #0x4c
00785fe0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00785fe4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00785fe8  38 00 9d e5                                      ldr r0, [sp, #0x38]
00785fec  bc 32 9f e5                                      ldr r3, [pc, #0x2bc]
00785ff0  1c 20 a0 e3                                      mov r2, #0x1c
00785ff4  03 30 8f e0                                      add r3, pc, r3
00785ff8  0c 21 ee eb                                      bl #0x30e430
00785ffc  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
00786000  01 00 56 e3                                      cmp r6, #1
00786004  06 30 a0 e1                                      mov r3, r6
00786008  64 00 00 da                                      ble #0x7861a0
0078600c  1c 30 8d e2                                      add r3, sp, #0x1c
00786010  00 a0 a0 e3                                      mov sl, #0
00786014  04 30 8d e5                                      str r3, [sp, #4]
00786018  2a 00 00 ea                                      b #0x7860c8
0078601c  08 a0 97 e7                                      ldr sl, [r7, r8]
00786020  05 60 97 e7                                      ldr r6, [r7, r5]
00786024  0a 00 a0 e1                                      mov r0, sl
00786028  06 10 a0 e1                                      mov r1, r6
0078602c  de 20 ee eb                                      bl #0x30e3ac
00786030  09 10 a0 e1                                      mov r1, sb
00786034  02 31 c0 e3                                      bic r3, r0, #0x80000000
00786038  0b 00 a0 e1                                      mov r0, fp
0078603c  00 30 8d e5                                      str r3, [sp]
00786040  d9 20 ee eb                                      bl #0x30e3ac
00786044  00 30 9d e5                                      ldr r3, [sp]
00786048  02 11 c0 e3                                      bic r1, r0, #0x80000000
0078604c  03 00 a0 e1                                      mov r0, r3
00786050  ad 21 ee eb                                      bl #0x30e70c
00786054  00 00 50 e3                                      cmp r0, #0
00786058  47 00 00 0a                                      beq #0x78617c
0078605c  08 60 87 e7                                      str r6, [r7, r8]
00786060  05 a0 87 e7                                      str sl, [r7, r5]
00786064  38 e0 9d e5                                      ldr lr, [sp, #0x38]
00786068  04 c0 9d e5                                      ldr ip, [sp, #4]
0078606c  08 80 8e e0                                      add r8, lr, r8
00786070  08 60 a0 e1                                      mov r6, r8
00786074  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00786078  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0078607c  07 00 96 e8                                      ldm r6, {r0, r1, r2}
00786080  07 00 8c e8                                      stm ip, {r0, r1, r2}
00786084  05 50 8e e0                                      add r5, lr, r5
00786088  05 e0 a0 e1                                      mov lr, r5
0078608c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00786090  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
00786094  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00786098  07 00 86 e8                                      stm r6, {r0, r1, r2}
0078609c  04 60 9d e5                                      ldr r6, [sp, #4]
007860a0  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
007860a4  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
007860a8  07 00 9c e8                                      ldm ip, {r0, r1, r2}
007860ac  07 00 8e e8                                      stm lr, {r0, r1, r2}
007860b0  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
007860b4  01 30 46 e2                                      sub r3, r6, #1
007860b8  04 00 53 e1                                      cmp r3, r4
007860bc  06 30 a0 e1                                      mov r3, r6
007860c0  36 00 00 da                                      ble #0x7861a0
007860c4  04 a0 a0 e1                                      mov sl, r4
007860c8  1c b0 a0 e3                                      mov fp, #0x1c
007860cc  01 40 8a e2                                      add r4, sl, #1
007860d0  38 70 9d e5                                      ldr r7, [sp, #0x38]
007860d4  9b 0a 08 e0                                      mul r8, fp, sl
007860d8  9b 04 05 e0                                      mul r5, fp, r4
007860dc  08 e0 87 e0                                      add lr, r7, r8
007860e0  05 10 87 e0                                      add r1, r7, r5
007860e4  08 10 8d e5                                      str r1, [sp, #8]
007860e8  0c e0 8d e5                                      str lr, [sp, #0xc]
007860ec  08 b0 9e e5                                      ldr fp, [lr, #8]
007860f0  08 90 91 e5                                      ldr sb, [r1, #8]
007860f4  0b 00 a0 e1                                      mov r0, fp
007860f8  09 10 a0 e1                                      mov r1, sb
007860fc  7d 20 ee eb                                      bl #0x30e2f8
00786100  00 00 50 e3                                      cmp r0, #0
00786104  c4 ff ff 1a                                      bne #0x78601c
00786108  05 10 97 e7                                      ldr r1, [r7, r5]
0078610c  08 00 97 e7                                      ldr r0, [r7, r8]
00786110  9d 1f ee eb                                      bl #0x30df8c
00786114  00 00 50 e3                                      cmp r0, #0
00786118  e5 ff ff 0a                                      beq #0x7860b4
0078611c  0b 00 a0 e1                                      mov r0, fp
00786120  09 10 a0 e1                                      mov r1, sb
00786124  98 1f ee eb                                      bl #0x30df8c
00786128  00 00 50 e3                                      cmp r0, #0
0078612c  e0 ff ff 0a                                      beq #0x7860b4
00786130  0c b0 9d e5                                      ldr fp, [sp, #0xc]
00786134  08 e0 9d e5                                      ldr lr, [sp, #8]
00786138  10 20 9b e5                                      ldr r2, [fp, #0x10]
0078613c  14 30 9e e5                                      ldr r3, [lr, #0x14]
00786140  03 00 52 e1                                      cmp r2, r3
00786144  da ff ff 1a                                      bne #0x7860b4
00786148  14 20 9b e5                                      ldr r2, [fp, #0x14]
0078614c  10 30 9e e5                                      ldr r3, [lr, #0x10]
00786150  03 00 52 e1                                      cmp r2, r3
00786154  d6 ff ff 1a                                      bne #0x7860b4
00786158  04 10 a0 e1                                      mov r1, r4
0078615c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00786160  b7 fe ff eb                                      bl #0x785c44
00786164  14 00 9d e5                                      ldr r0, [sp, #0x14]
00786168  0a 10 a0 e1                                      mov r1, sl
0078616c  b4 fe ff eb                                      bl #0x785c44
00786170  0a 40 a0 e1                                      mov r4, sl
00786174  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
00786178  cd ff ff ea                                      b #0x7860b4
0078617c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00786180  08 90 82 e5                                      str sb, [r2, #8]
00786184  08 30 9d e5                                      ldr r3, [sp, #8]
00786188  08 b0 83 e5                                      str fp, [r3, #8]
0078618c  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
00786190  01 30 46 e2                                      sub r3, r6, #1
00786194  04 00 53 e1                                      cmp r3, r4
00786198  06 30 a0 e1                                      mov r3, r6
0078619c  c8 ff ff ca                                      bgt #0x7860c4
007861a0  00 00 56 e3                                      cmp r6, #0
007861a4  03 00 00 da                                      ble #0x7861b8
007861a8  38 10 9d e5                                      ldr r1, [sp, #0x38]
007861ac  10 20 91 e5                                      ldr r2, [r1, #0x10]
007861b0  01 00 72 e3                                      cmn r2, #1
007861b4  53 ff ff 0a                                      beq #0x785f08
007861b8  01 00 56 e3                                      cmp r6, #1
007861bc  7f ff ff da                                      ble #0x785fc0
007861c0  ec 80 9f e5                                      ldr r8, [pc, #0xec]
007861c4  01 50 a0 e3                                      mov r5, #1
007861c8  00 c0 a0 e3                                      mov ip, #0
007861cc  08 80 8f e0                                      add r8, pc, r8
007861d0  1c 90 8d e2                                      add sb, sp, #0x1c
007861d4  38 e0 9d e5                                      ldr lr, [sp, #0x38]
007861d8  1c 40 8c e2                                      add r4, ip, #0x1c
007861dc  09 20 a0 e1                                      mov r2, sb
007861e0  0c 10 8e e0                                      add r1, lr, ip
007861e4  10 30 91 e5                                      ldr r3, [r1, #0x10]
007861e8  04 a0 8e e0                                      add sl, lr, r4
007861ec  05 70 a0 e1                                      mov r7, r5
007861f0  00 00 53 e3                                      cmp r3, #0
007861f4  12 00 00 ba                                      blt #0x786244
007861f8  04 00 91 e5                                      ldr r0, [r1, #4]
007861fc  10 31 98 e5                                      ldr r3, [r8, #0x110]
00786200  1c 00 8d e5                                      str r0, [sp, #0x1c]
00786204  0c 60 91 e5                                      ldr r6, [r1, #0xc]
00786208  03 00 a0 e1                                      mov r0, r3
0078620c  20 60 8d e5                                      str r6, [sp, #0x20]
00786210  0c c0 9e e7                                      ldr ip, [lr, ip]
00786214  24 c0 8d e5                                      str ip, [sp, #0x24]
00786218  08 c0 91 e5                                      ldr ip, [r1, #8]
0078621c  28 c0 8d e5                                      str ip, [sp, #0x28]
00786220  04 c0 9e e7                                      ldr ip, [lr, r4]
00786224  2c c0 8d e5                                      str ip, [sp, #0x2c]
00786228  08 c0 9a e5                                      ldr ip, [sl, #8]
0078622c  30 c0 8d e5                                      str ip, [sp, #0x30]
00786230  10 10 91 e5                                      ldr r1, [r1, #0x10]
00786234  00 30 93 e5                                      ldr r3, [r3]
00786238  0f e0 a0 e1                                      mov lr, pc
0078623c  08 f0 93 e5                                      ldr pc, [r3, #8]
00786240  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
00786244  01 30 46 e2                                      sub r3, r6, #1
00786248  07 00 53 e1                                      cmp r3, r7
0078624c  04 c0 a0 e1                                      mov ip, r4
00786250  01 50 85 e2                                      add r5, r5, #1
00786254  06 30 a0 e1                                      mov r3, r6
00786258  dd ff ff ca                                      bgt #0x7861d4
0078625c  57 ff ff ea                                      b #0x785fc0
00786260  58 ff ff aa                                      bge #0x785fc8
00786264  1c 20 a0 e3                                      mov r2, #0x1c
00786268  92 06 06 e0                                      mul r6, r2, r6
0078626c  00 20 a0 e3                                      mov r2, #0
00786270  38 00 9d e5                                      ldr r0, [sp, #0x38]
00786274  01 30 93 e2                                      adds r3, r3, #1
00786278  06 10 80 e0                                      add r1, r0, r6
0078627c  06 20 80 e7                                      str r2, [r0, r6]
00786280  0c 20 81 e5                                      str r2, [r1, #0xc]
00786284  04 20 81 e5                                      str r2, [r1, #4]
00786288  08 20 81 e5                                      str r2, [r1, #8]
0078628c  1c 60 86 e2                                      add r6, r6, #0x1c
00786290  f6 ff ff 1a                                      bne #0x786270
00786294  4b ff ff ea                                      b #0x785fc8
00786298  38 20 8d e2                                      add r2, sp, #0x38
0078629c  00 10 a0 e1                                      mov r1, r0
007862a0  14 20 8d e5                                      str r2, [sp, #0x14]
007862a4  50 ff ff ea                                      b #0x785fec
; mapping-symbol data/literal pool
007862a8  28 6b 2a 00 e8 69 2a 00 c4 f3 ff ff 44 67 2a 00  .byte 0x28, 0x6b, 0x2a, 0x00, 0xe8, 0x69, 0x2a, 0x00, 0xc4, 0xf3, 0xff, 0xff, 0x44, 0x67, 0x2a, 0x00

; FUNCTION 0x00786330, declared_size=704, range_size=704, mode=arm
; class-group: gameswf::tesselate
; alias: _ZN7gameswf9tesselate23output_current_segmentsEv
; demangled: gameswf::tesselate::output_current_segments()
; decoder-mode: arm
00786330  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00786334  94 42 9f e5                                      ldr r4, [pc, #0x294]
00786338  1c d0 4d e2                                      sub sp, sp, #0x1c
0078633c  04 40 8f e0                                      add r4, pc, r4
00786340  14 31 d4 e5                                      ldrb r3, [r4, #0x114]
00786344  00 00 53 e3                                      cmp r3, #0
00786348  e4 90 94 05                                      ldreq sb, [r4, #0xe4]
0078634c  41 00 00 0a                                      beq #0x786458
00786350  e4 90 94 e5                                      ldr sb, [r4, #0xe4]
00786354  00 00 59 e3                                      cmp sb, #0
00786358  8b 00 00 da                                      ble #0x78658c
0078635c  70 32 9f e5                                      ldr r3, [pc, #0x270]
00786360  09 10 a0 e1                                      mov r1, sb
00786364  e0 00 94 e5                                      ldr r0, [r4, #0xe0]
00786368  03 30 8f e0                                      add r3, pc, r3
0078636c  1c 20 a0 e3                                      mov r2, #0x1c
00786370  2e 20 ee eb                                      bl #0x30e430
00786374  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
00786378  5c 82 9f e5                                      ldr r8, [pc, #0x25c]
0078637c  e4 90 94 e5                                      ldr sb, [r4, #0xe4]
00786380  03 30 8f e0                                      add r3, pc, r3
00786384  0c 30 8d e5                                      str r3, [sp, #0xc]
00786388  50 32 9f e5                                      ldr r3, [pc, #0x250]
0078638c  08 80 8f e0                                      add r8, pc, r8
00786390  00 60 a0 e3                                      mov r6, #0
00786394  03 30 8f e0                                      add r3, pc, r3
00786398  10 30 8d e5                                      str r3, [sp, #0x10]
0078639c  40 32 9f e5                                      ldr r3, [pc, #0x240]
007863a0  03 30 8f e0                                      add r3, pc, r3
007863a4  14 30 8d e5                                      str r3, [sp, #0x14]
007863a8  09 00 56 e1                                      cmp r6, sb
007863ac  29 00 00 aa                                      bge #0x786458
007863b0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007863b4  1c 20 a0 e3                                      mov r2, #0x1c
007863b8  92 06 02 e0                                      mul r2, r2, r6
007863bc  e0 b0 91 e5                                      ldr fp, [r1, #0xe0]
007863c0  01 50 86 e2                                      add r5, r6, #1
007863c4  04 20 8d e5                                      str r2, [sp, #4]
007863c8  02 30 8b e0                                      add r3, fp, r2
007863cc  08 30 8d e5                                      str r3, [sp, #8]
007863d0  09 00 55 e1                                      cmp r5, sb
007863d4  04 70 93 e5                                      ldr r7, [r3, #4]
007863d8  06 00 00 0a                                      beq #0x7863f8
007863dc  1c 10 a0 e3                                      mov r1, #0x1c
007863e0  91 b5 23 e0                                      mla r3, r1, r5, fp
007863e4  07 10 a0 e1                                      mov r1, r7
007863e8  04 00 93 e5                                      ldr r0, [r3, #4]
007863ec  c1 1f ee eb                                      bl #0x30e2f8
007863f0  00 00 50 e3                                      cmp r0, #0
007863f4  35 00 00 0a                                      beq #0x7864d0
007863f8  05 40 a0 e1                                      mov r4, r5
007863fc  10 30 9d e5                                      ldr r3, [sp, #0x10]
00786400  08 00 9d e5                                      ldr r0, [sp, #8]
00786404  04 10 66 e0                                      rsb r1, r6, r4
00786408  1c 20 a0 e3                                      mov r2, #0x1c
0078640c  07 20 ee eb                                      bl #0x30e430
00786410  e4 30 98 e5                                      ldr r3, [r8, #0xe4]
00786414  04 00 53 e1                                      cmp r3, r4
00786418  19 00 00 ca                                      bgt #0x786484
0078641c  e0 30 98 e5                                      ldr r3, [r8, #0xe0]
00786420  04 20 9d e5                                      ldr r2, [sp, #4]
00786424  02 30 83 e0                                      add r3, r3, r2
00786428  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0078642c  04 10 a0 e1                                      mov r1, r4
00786430  07 20 a0 e1                                      mov r2, r7
00786434  06 00 a0 e1                                      mov r0, r6
00786438  0a 30 a0 e1                                      mov r3, sl
0078643c  55 fe ff eb                                      bl #0x785d98
00786440  14 20 9d e5                                      ldr r2, [sp, #0x14]
00786444  e4 40 92 e5                                      ldr r4, [r2, #0xe4]
00786448  04 00 56 e1                                      cmp r6, r4
0078644c  31 00 00 ba                                      blt #0x786518
00786450  04 90 a0 e1                                      mov sb, r4
00786454  d3 ff ff ea                                      b #0x7863a8
00786458  00 00 59 e3                                      cmp sb, #0
0078645c  4a 00 00 da                                      ble #0x78658c
00786460  80 01 9f e5                                      ldr r0, [pc, #0x180]
00786464  00 30 a0 e3                                      mov r3, #0
00786468  03 10 a0 e1                                      mov r1, r3
0078646c  00 00 8f e0                                      add r0, pc, r0
00786470  e4 30 80 e5                                      str r3, [r0, #0xe4]
00786474  e0 00 80 e2                                      add r0, r0, #0xe0
00786478  1c d0 8d e2                                      add sp, sp, #0x1c
0078647c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00786480  93 fc ff ea                                      b #0x7856d4
00786484  e0 30 98 e5                                      ldr r3, [r8, #0xe0]
00786488  1c 10 a0 e3                                      mov r1, #0x1c
0078648c  91 34 22 e0                                      mla r2, r1, r4, r3
00786490  04 10 9d e5                                      ldr r1, [sp, #4]
00786494  04 90 92 e5                                      ldr sb, [r2, #4]
00786498  01 30 83 e0                                      add r3, r3, r1
0078649c  0c a0 93 e5                                      ldr sl, [r3, #0xc]
007864a0  09 10 a0 e1                                      mov r1, sb
007864a4  0a 00 a0 e1                                      mov r0, sl
007864a8  3f 21 ee eb                                      bl #0x30e9ac
007864ac  00 00 50 e3                                      cmp r0, #0
007864b0  dd ff ff 1a                                      bne #0x78642c
007864b4  09 30 a0 e1                                      mov r3, sb
007864b8  04 10 a0 e1                                      mov r1, r4
007864bc  07 20 a0 e1                                      mov r2, r7
007864c0  06 00 a0 e1                                      mov r0, r6
007864c4  33 fe ff eb                                      bl #0x785d98
007864c8  e4 90 98 e5                                      ldr sb, [r8, #0xe4]
007864cc  b5 ff ff ea                                      b #0x7863a8
007864d0  02 a0 86 e2                                      add sl, r6, #2
007864d4  1c 30 a0 e3                                      mov r3, #0x1c
007864d8  93 0a 0a e0                                      mul sl, r3, sl
007864dc  05 40 a0 e1                                      mov r4, r5
007864e0  01 40 84 e2                                      add r4, r4, #1
007864e4  09 00 54 e1                                      cmp r4, sb
007864e8  0a 30 8b e0                                      add r3, fp, sl
007864ec  07 10 a0 e1                                      mov r1, r7
007864f0  c1 ff ff 0a                                      beq #0x7863fc
007864f4  04 00 93 e5                                      ldr r0, [r3, #4]
007864f8  7e 1f ee eb                                      bl #0x30e2f8
007864fc  00 00 50 e3                                      cmp r0, #0
00786500  00 30 a0 e3                                      mov r3, #0
00786504  01 30 a0 13                                      movne r3, #1
00786508  ff 00 13 e3                                      tst r3, #0xff
0078650c  1c a0 8a e2                                      add sl, sl, #0x1c
00786510  b9 ff ff 1a                                      bne #0x7863fc
00786514  f1 ff ff ea                                      b #0x7864e0
00786518  e0 70 92 e5                                      ldr r7, [r2, #0xe0]
0078651c  04 10 9d e5                                      ldr r1, [sp, #4]
00786520  0a 00 a0 e1                                      mov r0, sl
00786524  01 30 87 e0                                      add r3, r7, r1
00786528  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0078652c  e0 1f ee eb                                      bl #0x30e4b4
00786530  00 00 50 e3                                      cmp r0, #0
00786534  c5 ff ff 0a                                      beq #0x786450
00786538  1c 20 a0 e3                                      mov r2, #0x1c
0078653c  92 05 06 e0                                      mul r6, r2, r5
00786540  04 00 55 e1                                      cmp r5, r4
00786544  06 30 87 e0                                      add r3, r7, r6
00786548  0a 10 a0 e1                                      mov r1, sl
0078654c  05 90 a0 e1                                      mov sb, r5
00786550  04 60 a0 01                                      moveq r6, r4
00786554  93 ff ff 0a                                      beq #0x7863a8
00786558  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0078655c  12 21 ee eb                                      bl #0x30e9ac
00786560  00 00 50 e3                                      cmp r0, #0
00786564  00 30 a0 e3                                      mov r3, #0
00786568  01 30 a0 13                                      movne r3, #1
0078656c  ff 00 13 e3                                      tst r3, #0xff
00786570  1c 60 86 e2                                      add r6, r6, #0x1c
00786574  02 00 00 1a                                      bne #0x786584
00786578  05 60 a0 e1                                      mov r6, r5
0078657c  04 90 a0 e1                                      mov sb, r4
00786580  88 ff ff ea                                      b #0x7863a8
00786584  01 50 85 e2                                      add r5, r5, #1
00786588  ec ff ff ea                                      b #0x786540
0078658c  00 00 59 e3                                      cmp sb, #0
00786590  b2 ff ff aa                                      bge #0x786460
00786594  1c 20 a0 e3                                      mov r2, #0x1c
00786598  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
0078659c  92 09 02 e0                                      mul r2, r2, sb
007865a0  00 30 a0 e3                                      mov r3, #0
007865a4  0c c0 8f e0                                      add ip, pc, ip
007865a8  e0 00 9c e5                                      ldr r0, [ip, #0xe0]
007865ac  01 90 99 e2                                      adds sb, sb, #1
007865b0  02 10 80 e0                                      add r1, r0, r2
007865b4  02 30 80 e7                                      str r3, [r0, r2]
007865b8  0c 30 81 e5                                      str r3, [r1, #0xc]
007865bc  04 30 81 e5                                      str r3, [r1, #4]
007865c0  08 30 81 e5                                      str r3, [r1, #8]
007865c4  1c 20 82 e2                                      add r2, r2, #0x1c
007865c8  f6 ff ff 1a                                      bne #0x7865a8
007865cc  a3 ff ff ea                                      b #0x786460
; mapping-symbol data/literal pool
007865d0  d4 65 2a 00 ac ef ff ff 90 65 2a 00 84 65 2a 00  .byte 0xd4, 0x65, 0x2a, 0x00, 0xac, 0xef, 0xff, 0xff, 0x90, 0x65, 0x2a, 0x00, 0x84, 0x65, 0x2a, 0x00
007865e0  80 ef ff ff 70 65 2a 00 a4 64 2a 00 6c 63 2a 00  .byte 0x80, 0xef, 0xff, 0xff, 0x70, 0x65, 0x2a, 0x00, 0xa4, 0x64, 0x2a, 0x00, 0x6c, 0x63, 0x2a, 0x00

; FUNCTION 0x00786900, declared_size=312, range_size=312, mode=arm
; class-group: gameswf::tesselate
; alias: _ZN7gameswf9tesselate16add_line_segmentEff
; demangled: gameswf::tesselate::add_line_segment(float, float)
; decoder-mode: arm
00786900  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00786904  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
00786908  14 d0 4d e2                                      sub sp, sp, #0x14
0078690c  01 50 a0 e1                                      mov r5, r1
00786910  03 30 8f e0                                      add r3, pc, r3
00786914  04 71 93 e5                                      ldr r7, [r3, #0x104]
00786918  20 21 93 e5                                      ldr r2, [r3, #0x120]
0078691c  00 60 a0 e1                                      mov r6, r0
00786920  01 00 a0 e1                                      mov r0, r1
00786924  07 10 a0 e1                                      mov r1, r7
00786928  18 91 93 e5                                      ldr sb, [r3, #0x118]
0078692c  00 a1 93 e5                                      ldr sl, [r3, #0x100]
00786930  1c b1 93 e5                                      ldr fp, [r3, #0x11c]
00786934  0c 20 8d e5                                      str r2, [sp, #0xc]
00786938  73 1f ee eb                                      bl #0x30e70c
0078693c  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
00786940  00 00 50 e3                                      cmp r0, #0
00786944  0b 30 a0 11                                      movne r3, fp
00786948  04 40 8f e0                                      add r4, pc, r4
0078694c  09 b0 a0 11                                      movne fp, sb
00786950  03 90 a0 11                                      movne sb, r3
00786954  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
00786958  e8 20 94 e5                                      ldr r2, [r4, #0xe8]
0078695c  08 70 8d 15                                      strne r7, [sp, #8]
00786960  01 80 83 e2                                      add r8, r3, #1
00786964  0a c0 a0 11                                      movne ip, sl
00786968  05 70 a0 11                                      movne r7, r5
0078696c  06 a0 a0 11                                      movne sl, r6
00786970  08 50 8d 05                                      streq r5, [sp, #8]
00786974  06 c0 a0 01                                      moveq ip, r6
00786978  02 00 58 e1                                      cmp r8, r2
0078697c  05 00 00 da                                      ble #0x786998
00786980  e0 00 84 e2                                      add r0, r4, #0xe0
00786984  c8 10 88 e0                                      add r1, r8, r8, asr #1
00786988  04 c0 8d e5                                      str ip, [sp, #4]
0078698c  50 fb ff eb                                      bl #0x7856d4
00786990  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
00786994  04 c0 9d e5                                      ldr ip, [sp, #4]
00786998  90 40 9f e5                                      ldr r4, [pc, #0x90]
0078699c  1c 20 a0 e3                                      mov r2, #0x1c
007869a0  92 03 02 e0                                      mul r2, r2, r3
007869a4  04 40 8f e0                                      add r4, pc, r4
007869a8  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
007869ac  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007869b0  02 30 81 e0                                      add r3, r1, r2
007869b4  18 00 83 e5                                      str r0, [r3, #0x18]
007869b8  14 b0 83 e5                                      str fp, [r3, #0x14]
007869bc  10 90 83 e5                                      str sb, [r3, #0x10]
007869c0  08 c0 83 e5                                      str ip, [r3, #8]
007869c4  08 00 9d e5                                      ldr r0, [sp, #8]
007869c8  0c 00 83 e5                                      str r0, [r3, #0xc]
007869cc  02 a0 81 e7                                      str sl, [r1, r2]
007869d0  04 70 83 e5                                      str r7, [r3, #4]
007869d4  f4 20 94 e5                                      ldr r2, [r4, #0xf4]
007869d8  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007869dc  e4 80 84 e5                                      str r8, [r4, #0xe4]
007869e0  01 70 82 e2                                      add r7, r2, #1
007869e4  03 00 57 e1                                      cmp r7, r3
007869e8  04 51 84 e5                                      str r5, [r4, #0x104]
007869ec  00 61 84 e5                                      str r6, [r4, #0x100]
007869f0  03 00 00 da                                      ble #0x786a04
007869f4  f0 00 84 e2                                      add r0, r4, #0xf0
007869f8  c7 10 87 e0                                      add r1, r7, r7, asr #1
007869fc  02 fb ff eb                                      bl #0x78560c
00786a00  f4 20 94 e5                                      ldr r2, [r4, #0xf4]
00786a04  28 30 9f e5                                      ldr r3, [pc, #0x28]
00786a08  03 30 8f e0                                      add r3, pc, r3
00786a0c  f0 10 93 e5                                      ldr r1, [r3, #0xf0]
00786a10  82 01 81 e0                                      add r0, r1, r2, lsl #3
00786a14  04 50 80 e5                                      str r5, [r0, #4]
00786a18  82 61 81 e7                                      str r6, [r1, r2, lsl #3]
00786a1c  f4 70 83 e5                                      str r7, [r3, #0xf4]
00786a20  14 d0 8d e2                                      add sp, sp, #0x14
00786a24  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00786a28  00 60 2a 00 c8 5f 2a 00 6c 5f 2a 00 08 5f 2a 00  .byte 0x00, 0x60, 0x2a, 0x00, 0xc8, 0x5f, 0x2a, 0x00, 0x6c, 0x5f, 0x2a, 0x00, 0x08, 0x5f, 0x2a, 0x00

; FUNCTION 0x00786a38, declared_size=528, range_size=528, mode=arm
; class-group: gameswf::tesselate
; alias: _ZN7gameswf9tesselateL5curveEffffff
; demangled: gameswf::tesselate::curve(float, float, float, float, float, float)
; decoder-mode: arm
00786a38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00786a3c  1c d0 4d e2                                      sub sp, sp, #0x1c
00786a40  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00786a44  03 50 a0 e1                                      mov r5, r3
00786a48  44 30 9d e5                                      ldr r3, [sp, #0x44]
00786a4c  01 80 a0 e1                                      mov r8, r1
00786a50  0c 10 a0 e1                                      mov r1, ip
00786a54  02 40 a0 e1                                      mov r4, r2
00786a58  0c c0 8d e5                                      str ip, [sp, #0xc]
00786a5c  10 30 8d e5                                      str r3, [sp, #0x10]
00786a60  00 a0 a0 e1                                      mov sl, r0
00786a64  4e 20 ee eb                                      bl #0x30eba4
00786a68  3f 14 a0 e3                                      mov r1, #0x3f000000
00786a6c  be 20 ee eb                                      bl #0x30ed6c
00786a70  10 10 9d e5                                      ldr r1, [sp, #0x10]
00786a74  00 90 a0 e1                                      mov sb, r0
00786a78  08 00 a0 e1                                      mov r0, r8
00786a7c  48 20 ee eb                                      bl #0x30eba4
00786a80  3f 14 a0 e3                                      mov r1, #0x3f000000
00786a84  b8 20 ee eb                                      bl #0x30ed6c
00786a88  09 10 a0 e1                                      mov r1, sb
00786a8c  00 b0 a0 e1                                      mov fp, r0
00786a90  04 00 a0 e1                                      mov r0, r4
00786a94  42 20 ee eb                                      bl #0x30eba4
00786a98  3f 14 a0 e3                                      mov r1, #0x3f000000
00786a9c  b2 20 ee eb                                      bl #0x30ed6c
00786aa0  0b 10 a0 e1                                      mov r1, fp
00786aa4  00 70 a0 e1                                      mov r7, r0
00786aa8  05 00 a0 e1                                      mov r0, r5
00786aac  3c 20 ee eb                                      bl #0x30eba4
00786ab0  3f 14 a0 e3                                      mov r1, #0x3f000000
00786ab4  ac 20 ee eb                                      bl #0x30ed6c
00786ab8  07 10 a0 e1                                      mov r1, r7
00786abc  00 60 a0 e1                                      mov r6, r0
00786ac0  09 00 a0 e1                                      mov r0, sb
00786ac4  38 1e ee eb                                      bl #0x30e3ac
00786ac8  06 10 a0 e1                                      mov r1, r6
00786acc  02 31 c0 e3                                      bic r3, r0, #0x80000000
00786ad0  0b 00 a0 e1                                      mov r0, fp
00786ad4  08 30 8d e5                                      str r3, [sp, #8]
00786ad8  33 1e ee eb                                      bl #0x30e3ac
00786adc  60 91 9f e5                                      ldr sb, [pc, #0x160]
00786ae0  08 30 9d e5                                      ldr r3, [sp, #8]
00786ae4  02 11 c0 e3                                      bic r1, r0, #0x80000000
00786ae8  09 90 8f e0                                      add sb, pc, sb
00786aec  03 00 a0 e1                                      mov r0, r3
00786af0  2b 20 ee eb                                      bl #0x30eba4
00786af4  04 10 99 e5                                      ldr r1, [sb, #4]
00786af8  03 1f ee eb                                      bl #0x30e70c
00786afc  00 00 50 e3                                      cmp r0, #0
00786b00  14 90 8d 05                                      streq sb, [sp, #0x14]
00786b04  02 00 00 0a                                      beq #0x786b14
00786b08  48 00 00 ea                                      b #0x786c30
00786b0c  09 60 a0 e1                                      mov r6, sb
00786b10  0b 70 a0 e1                                      mov r7, fp
00786b14  04 10 a0 e1                                      mov r1, r4
00786b18  0a 00 a0 e1                                      mov r0, sl
00786b1c  20 20 ee eb                                      bl #0x30eba4
00786b20  3f 14 a0 e3                                      mov r1, #0x3f000000
00786b24  90 20 ee eb                                      bl #0x30ed6c
00786b28  05 10 a0 e1                                      mov r1, r5
00786b2c  00 90 a0 e1                                      mov sb, r0
00786b30  08 00 a0 e1                                      mov r0, r8
00786b34  1a 20 ee eb                                      bl #0x30eba4
00786b38  3f 14 a0 e3                                      mov r1, #0x3f000000
00786b3c  8a 20 ee eb                                      bl #0x30ed6c
00786b40  09 20 a0 e1                                      mov r2, sb
00786b44  00 30 a0 e1                                      mov r3, r0
00786b48  08 10 a0 e1                                      mov r1, r8
00786b4c  0a 00 a0 e1                                      mov r0, sl
00786b50  00 70 8d e5                                      str r7, [sp]
00786b54  04 60 8d e5                                      str r6, [sp, #4]
00786b58  b6 ff ff eb                                      bl #0x786a38
00786b5c  04 00 a0 e1                                      mov r0, r4
00786b60  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00786b64  0e 20 ee eb                                      bl #0x30eba4
00786b68  3f 14 a0 e3                                      mov r1, #0x3f000000
00786b6c  7e 20 ee eb                                      bl #0x30ed6c
00786b70  10 10 9d e5                                      ldr r1, [sp, #0x10]
00786b74  00 40 a0 e1                                      mov r4, r0
00786b78  05 00 a0 e1                                      mov r0, r5
00786b7c  08 20 ee eb                                      bl #0x30eba4
00786b80  3f 14 a0 e3                                      mov r1, #0x3f000000
00786b84  78 20 ee eb                                      bl #0x30ed6c
00786b88  07 10 a0 e1                                      mov r1, r7
00786b8c  00 50 a0 e1                                      mov r5, r0
00786b90  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00786b94  02 20 ee eb                                      bl #0x30eba4
00786b98  3f 14 a0 e3                                      mov r1, #0x3f000000
00786b9c  72 20 ee eb                                      bl #0x30ed6c
00786ba0  06 10 a0 e1                                      mov r1, r6
00786ba4  00 a0 a0 e1                                      mov sl, r0
00786ba8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00786bac  fc 1f ee eb                                      bl #0x30eba4
00786bb0  3f 14 a0 e3                                      mov r1, #0x3f000000
00786bb4  6c 20 ee eb                                      bl #0x30ed6c
00786bb8  04 10 a0 e1                                      mov r1, r4
00786bbc  00 80 a0 e1                                      mov r8, r0
00786bc0  0a 00 a0 e1                                      mov r0, sl
00786bc4  f6 1f ee eb                                      bl #0x30eba4
00786bc8  3f 14 a0 e3                                      mov r1, #0x3f000000
00786bcc  66 20 ee eb                                      bl #0x30ed6c
00786bd0  05 10 a0 e1                                      mov r1, r5
00786bd4  00 b0 a0 e1                                      mov fp, r0
00786bd8  08 00 a0 e1                                      mov r0, r8
00786bdc  f0 1f ee eb                                      bl #0x30eba4
00786be0  3f 14 a0 e3                                      mov r1, #0x3f000000
00786be4  60 20 ee eb                                      bl #0x30ed6c
00786be8  0b 10 a0 e1                                      mov r1, fp
00786bec  00 90 a0 e1                                      mov sb, r0
00786bf0  0a 00 a0 e1                                      mov r0, sl
00786bf4  ec 1d ee eb                                      bl #0x30e3ac
00786bf8  09 10 a0 e1                                      mov r1, sb
00786bfc  02 a1 c0 e3                                      bic sl, r0, #0x80000000
00786c00  08 00 a0 e1                                      mov r0, r8
00786c04  e8 1d ee eb                                      bl #0x30e3ac
00786c08  02 11 c0 e3                                      bic r1, r0, #0x80000000
00786c0c  0a 00 a0 e1                                      mov r0, sl
00786c10  e3 1f ee eb                                      bl #0x30eba4
00786c14  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00786c18  07 a0 a0 e1                                      mov sl, r7
00786c1c  06 80 a0 e1                                      mov r8, r6
00786c20  04 10 9c e5                                      ldr r1, [ip, #4]
00786c24  b8 1e ee eb                                      bl #0x30e70c
00786c28  00 00 50 e3                                      cmp r0, #0
00786c2c  b6 ff ff 0a                                      beq #0x786b0c
00786c30  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00786c34  10 10 9d e5                                      ldr r1, [sp, #0x10]
00786c38  1c d0 8d e2                                      add sp, sp, #0x1c
00786c3c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00786c40  2e ff ff ea                                      b #0x786900
; mapping-symbol data/literal pool
00786c44  f0 71 21 00                                      .byte 0xf0, 0x71, 0x21, 0x00

; FUNCTION 0x00786c48, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::tesselate
; alias: _ZN7gameswf9tesselate17add_curve_segmentEffff
; demangled: gameswf::tesselate::add_curve_segment(float, float, float, float)
; decoder-mode: arm
00786c48  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00786c4c  01 60 a0 e1                                      mov r6, r1
00786c50  0c d0 4d e2                                      sub sp, sp, #0xc
00786c54  02 10 a0 e1                                      mov r1, r2
00786c58  02 40 a0 e1                                      mov r4, r2
00786c5c  03 50 a0 e1                                      mov r5, r3
00786c60  00 70 a0 e1                                      mov r7, r0
00786c64  c8 1c ee eb                                      bl #0x30df8c
00786c68  00 00 50 e3                                      cmp r0, #0
00786c6c  04 00 00 0a                                      beq #0x786c84
00786c70  06 00 a0 e1                                      mov r0, r6
00786c74  05 10 a0 e1                                      mov r1, r5
00786c78  c3 1c ee eb                                      bl #0x30df8c
00786c7c  00 00 50 e3                                      cmp r0, #0
00786c80  0a 00 00 1a                                      bne #0x786cb0
00786c84  38 00 9f e5                                      ldr r0, [pc, #0x38]
00786c88  07 20 a0 e1                                      mov r2, r7
00786c8c  06 30 a0 e1                                      mov r3, r6
00786c90  00 00 8f e0                                      add r0, pc, r0
00786c94  04 11 90 e5                                      ldr r1, [r0, #0x104]
00786c98  00 01 90 e5                                      ldr r0, [r0, #0x100]
00786c9c  00 40 8d e5                                      str r4, [sp]
00786ca0  04 50 8d e5                                      str r5, [sp, #4]
00786ca4  63 ff ff eb                                      bl #0x786a38
00786ca8  0c d0 8d e2                                      add sp, sp, #0xc
00786cac  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00786cb0  04 00 a0 e1                                      mov r0, r4
00786cb4  05 10 a0 e1                                      mov r1, r5
00786cb8  0c d0 8d e2                                      add sp, sp, #0xc
00786cbc  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
00786cc0  0e ff ff ea                                      b #0x786900
; mapping-symbol data/literal pool
00786cc4  80 5c 2a 00                                      .byte 0x80, 0x5c, 0x2a, 0x00

; FUNCTION 0x00787248, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::tesselate
; alias: _ZN7gameswf9tesselate8end_pathEv
; demangled: gameswf::tesselate::end_path()
; decoder-mode: arm
00787248  10 40 2d e9                                      push {r4, lr}
0078724c  84 40 9f e5                                      ldr r4, [pc, #0x84]
00787250  04 40 8f e0                                      add r4, pc, r4
00787254  20 11 94 e5                                      ldr r1, [r4, #0x120]
00787258  00 00 51 e3                                      cmp r1, #0
0078725c  08 00 00 ba                                      blt #0x787284
00787260  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00787264  01 00 53 e3                                      cmp r3, #1
00787268  06 00 00 da                                      ble #0x787288
0078726c  10 21 94 e5                                      ldr r2, [r4, #0x110]
00787270  02 00 a0 e1                                      mov r0, r2
00787274  00 c0 92 e5                                      ldr ip, [r2]
00787278  f0 20 94 e5                                      ldr r2, [r4, #0xf0]
0078727c  0f e0 a0 e1                                      mov lr, pc
00787280  0c f0 9c e5                                      ldr pc, [ip, #0xc]
00787284  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00787288  00 00 53 e3                                      cmp r3, #0
0078728c  04 00 00 da                                      ble #0x7872a4
00787290  44 30 9f e5                                      ldr r3, [pc, #0x44]
00787294  00 20 a0 e3                                      mov r2, #0
00787298  03 30 8f e0                                      add r3, pc, r3
0078729c  f4 20 83 e5                                      str r2, [r3, #0xf4]
007872a0  10 80 bd e8                                      pop {r4, pc}
007872a4  f9 ff ff aa                                      bge #0x787290
007872a8  30 40 9f e5                                      ldr r4, [pc, #0x30]
007872ac  00 00 a0 e3                                      mov r0, #0
007872b0  83 21 a0 e1                                      lsl r2, r3, #3
007872b4  04 40 8f e0                                      add r4, pc, r4
007872b8  f0 10 94 e5                                      ldr r1, [r4, #0xf0]
007872bc  01 30 93 e2                                      adds r3, r3, #1
007872c0  02 c0 81 e0                                      add ip, r1, r2
007872c4  02 00 81 e7                                      str r0, [r1, r2]
007872c8  04 00 8c e5                                      str r0, [ip, #4]
007872cc  08 20 82 e2                                      add r2, r2, #8
007872d0  f8 ff ff 1a                                      bne #0x7872b8
007872d4  ed ff ff ea                                      b #0x787290
; mapping-symbol data/literal pool
007872d8  c0 56 2a 00 78 56 2a 00 5c 56 2a 00              .byte 0xc0, 0x56, 0x2a, 0x00, 0x78, 0x56, 0x2a, 0x00, 0x5c, 0x56, 0x2a, 0x00

; FUNCTION 0x007872e4, declared_size=248, range_size=248, mode=arm
; class-group: gameswf::tesselate
; alias: _ZN7gameswf9tesselate10begin_pathEiiiff
; demangled: gameswf::tesselate::begin_path(int, int, int, float, float)
; decoder-mode: arm
007872e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007872e8  dc c0 9f e5                                      ldr ip, [pc, #0xdc]
007872ec  00 50 a0 e1                                      mov r5, r0
007872f0  01 40 a0 e1                                      mov r4, r1
007872f4  0c c0 8f e0                                      add ip, pc, ip
007872f8  f4 00 9c e5                                      ldr r0, [ip, #0xf4]
007872fc  00 31 8c e5                                      str r3, [ip, #0x100]
00787300  18 30 9d e5                                      ldr r3, [sp, #0x18]
00787304  00 00 50 e3                                      cmp r0, #0
00787308  02 60 a0 e1                                      mov r6, r2
0078730c  04 31 8c e5                                      str r3, [ip, #0x104]
00787310  18 51 8c e5                                      str r5, [ip, #0x118]
00787314  1c 11 8c e5                                      str r1, [ip, #0x11c]
00787318  20 21 8c e5                                      str r2, [ip, #0x120]
0078731c  1f 00 00 da                                      ble #0x7873a0
00787320  a8 70 9f e5                                      ldr r7, [pc, #0xa8]
00787324  00 30 a0 e3                                      mov r3, #0
00787328  07 70 8f e0                                      add r7, pc, r7
0078732c  f8 20 97 e5                                      ldr r2, [r7, #0xf8]
00787330  f4 30 87 e5                                      str r3, [r7, #0xf4]
00787334  03 00 52 e1                                      cmp r2, r3
00787338  03 c0 a0 c1                                      movgt ip, r3
0078733c  04 00 00 ca                                      bgt #0x787354
00787340  f0 00 87 e2                                      add r0, r7, #0xf0
00787344  01 10 a0 e3                                      mov r1, #1
00787348  af f8 ff eb                                      bl #0x78560c
0078734c  f4 c0 97 e5                                      ldr ip, [r7, #0xf4]
00787350  8c c1 a0 e1                                      lsl ip, ip, #3
00787354  78 30 9f e5                                      ldr r3, [pc, #0x78]
00787358  01 00 74 e3                                      cmn r4, #1
0078735c  01 00 75 03                                      cmneq r5, #1
00787360  01 10 a0 e3                                      mov r1, #1
00787364  03 30 8f e0                                      add r3, pc, r3
00787368  00 01 93 e5                                      ldr r0, [r3, #0x100]
0078736c  f0 20 93 e5                                      ldr r2, [r3, #0xf0]
00787370  0c 00 a2 e7                                      str r0, [r2, ip]!
00787374  04 01 93 e5                                      ldr r0, [r3, #0x104]
00787378  04 00 82 e5                                      str r0, [r2, #4]
0078737c  14 11 c3 15                                      strbne r1, [r3, #0x114]
00787380  01 00 76 e3                                      cmn r6, #1
00787384  f4 10 83 e5                                      str r1, [r3, #0xf4]
00787388  03 00 00 0a                                      beq #0x78739c
0078738c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00787390  01 20 a0 e3                                      mov r2, #1
00787394  03 30 8f e0                                      add r3, pc, r3
00787398  24 21 c3 e5                                      strb r2, [r3, #0x124]
0078739c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007873a0  de ff ff aa                                      bge #0x787320
007873a4  00 10 a0 e3                                      mov r1, #0
007873a8  80 31 a0 e1                                      lsl r3, r0, #3
007873ac  f0 20 9c e5                                      ldr r2, [ip, #0xf0]
007873b0  01 00 90 e2                                      adds r0, r0, #1
007873b4  03 70 82 e0                                      add r7, r2, r3
007873b8  03 10 82 e7                                      str r1, [r2, r3]
007873bc  04 10 87 e5                                      str r1, [r7, #4]
007873c0  08 30 83 e2                                      add r3, r3, #8
007873c4  f8 ff ff 1a                                      bne #0x7873ac
007873c8  d4 ff ff ea                                      b #0x787320
; mapping-symbol data/literal pool
007873cc  1c 56 2a 00 e8 55 2a 00 ac 55 2a 00 7c 55 2a 00  .byte 0x1c, 0x56, 0x2a, 0x00, 0xe8, 0x55, 0x2a, 0x00, 0xac, 0x55, 0x2a, 0x00, 0x7c, 0x55, 0x2a, 0x00

; FUNCTION 0x007873dc, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::tesselate
; alias: _ZN7gameswf9tesselate9end_shapeEv
; demangled: gameswf::tesselate::end_shape()
; decoder-mode: arm
007873dc  10 40 2d e9                                      push {r4, lr}
007873e0  64 40 9f e5                                      ldr r4, [pc, #0x64]
007873e4  d1 fb ff eb                                      bl #0x786330
007873e8  04 40 8f e0                                      add r4, pc, r4
007873ec  f4 20 94 e5                                      ldr r2, [r4, #0xf4]
007873f0  00 30 a0 e3                                      mov r3, #0
007873f4  10 31 84 e5                                      str r3, [r4, #0x110]
007873f8  03 00 52 e1                                      cmp r2, r3
007873fc  07 00 00 da                                      ble #0x787420
00787400  48 00 9f e5                                      ldr r0, [pc, #0x48]
00787404  00 30 a0 e3                                      mov r3, #0
00787408  03 10 a0 e1                                      mov r1, r3
0078740c  00 00 8f e0                                      add r0, pc, r0
00787410  f4 30 80 e5                                      str r3, [r0, #0xf4]
00787414  f0 00 80 e2                                      add r0, r0, #0xf0
00787418  10 40 bd e8                                      pop {r4, lr}
0078741c  7a f8 ff ea                                      b #0x78560c
00787420  f6 ff ff aa                                      bge #0x787400
00787424  00 00 a0 e3                                      mov r0, #0
00787428  82 31 a0 e1                                      lsl r3, r2, #3
0078742c  f0 10 94 e5                                      ldr r1, [r4, #0xf0]
00787430  01 20 92 e2                                      adds r2, r2, #1
00787434  03 c0 81 e0                                      add ip, r1, r3
00787438  03 00 81 e7                                      str r0, [r1, r3]
0078743c  04 00 8c e5                                      str r0, [ip, #4]
00787440  08 30 83 e2                                      add r3, r3, #8
00787444  f8 ff ff 1a                                      bne #0x78742c
00787448  ec ff ff ea                                      b #0x787400
; mapping-symbol data/literal pool
0078744c  28 55 2a 00 04 55 2a 00                          .byte 0x28, 0x55, 0x2a, 0x00, 0x04, 0x55, 0x2a, 0x00

; FUNCTION 0x00787454, declared_size=292, range_size=292, mode=arm
; class-group: gameswf::tesselate
; alias: _ZN7gameswf9tesselate11begin_shapeEPNS0_18trapezoid_accepterEf
; demangled: gameswf::tesselate::begin_shape(gameswf::tesselate::trapezoid_accepter*, float)
; decoder-mode: arm
00787454  10 40 2d e9                                      push {r4, lr}
00787458  00 31 9f e5                                      ldr r3, [pc, #0x100]
0078745c  01 40 a0 e1                                      mov r4, r1
00787460  03 30 8f e0                                      add r3, pc, r3
00787464  e4 20 93 e5                                      ldr r2, [r3, #0xe4]
00787468  10 01 83 e5                                      str r0, [r3, #0x110]
0078746c  00 00 52 e3                                      cmp r2, #0
00787470  2c 00 00 da                                      ble #0x787528
00787474  e8 e0 9f e5                                      ldr lr, [pc, #0xe8]
00787478  00 30 a0 e3                                      mov r3, #0
0078747c  0e e0 8f e0                                      add lr, pc, lr
00787480  f4 20 9e e5                                      ldr r2, [lr, #0xf4]
00787484  e4 30 8e e5                                      str r3, [lr, #0xe4]
00787488  03 00 52 e1                                      cmp r2, r3
0078748c  1a 00 00 da                                      ble #0x7874fc
00787490  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
00787494  00 20 a0 e3                                      mov r2, #0
00787498  04 00 a0 e1                                      mov r0, r4
0078749c  03 30 8f e0                                      add r3, pc, r3
007874a0  f4 20 83 e5                                      str r2, [r3, #0xf4]
007874a4  00 10 a0 e3                                      mov r1, #0
007874a8  92 1b ee eb                                      bl #0x30e2f8
007874ac  00 00 50 e3                                      cmp r0, #0
007874b0  0d 00 00 1a                                      bne #0x7874ec
007874b4  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
007874b8  fe 25 a0 e3                                      mov r2, #0x3f800000
007874bc  03 30 8f e0                                      add r3, pc, r3
007874c0  04 20 83 e5                                      str r2, [r3, #4]
007874c4  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
007874c8  00 20 e0 e3                                      mvn r2, #0
007874cc  00 10 a0 e3                                      mov r1, #0
007874d0  03 30 8f e0                                      add r3, pc, r3
007874d4  24 11 c3 e5                                      strb r1, [r3, #0x124]
007874d8  1c 21 83 e5                                      str r2, [r3, #0x11c]
007874dc  20 21 83 e5                                      str r2, [r3, #0x120]
007874e0  18 21 83 e5                                      str r2, [r3, #0x118]
007874e4  14 11 c3 e5                                      strb r1, [r3, #0x114]
007874e8  10 80 bd e8                                      pop {r4, pc}
007874ec  80 30 9f e5                                      ldr r3, [pc, #0x80]
007874f0  03 30 8f e0                                      add r3, pc, r3
007874f4  04 40 83 e5                                      str r4, [r3, #4]
007874f8  f1 ff ff ea                                      b #0x7874c4
007874fc  e3 ff ff aa                                      bge #0x787490
00787500  00 00 a0 e3                                      mov r0, #0
00787504  82 31 a0 e1                                      lsl r3, r2, #3
00787508  f0 10 9e e5                                      ldr r1, [lr, #0xf0]
0078750c  01 20 92 e2                                      adds r2, r2, #1
00787510  03 c0 81 e0                                      add ip, r1, r3
00787514  03 00 81 e7                                      str r0, [r1, r3]
00787518  04 00 8c e5                                      str r0, [ip, #4]
0078751c  08 30 83 e2                                      add r3, r3, #8
00787520  f8 ff ff 1a                                      bne #0x787508
00787524  d9 ff ff ea                                      b #0x787490
00787528  d1 ff ff aa                                      bge #0x787474
0078752c  1c 00 a0 e3                                      mov r0, #0x1c
00787530  90 02 00 e0                                      mul r0, r0, r2
00787534  00 10 a0 e3                                      mov r1, #0
00787538  e0 e0 93 e5                                      ldr lr, [r3, #0xe0]
0078753c  01 20 92 e2                                      adds r2, r2, #1
00787540  00 c0 8e e0                                      add ip, lr, r0
00787544  00 10 8e e7                                      str r1, [lr, r0]
00787548  0c 10 8c e5                                      str r1, [ip, #0xc]
0078754c  04 10 8c e5                                      str r1, [ip, #4]
00787550  08 10 8c e5                                      str r1, [ip, #8]
00787554  1c 00 80 e2                                      add r0, r0, #0x1c
00787558  f6 ff ff 1a                                      bne #0x787538
0078755c  c4 ff ff ea                                      b #0x787474
; mapping-symbol data/literal pool
00787560  b0 54 2a 00 94 54 2a 00 74 54 2a 00 1c 68 21 00  .byte 0xb0, 0x54, 0x2a, 0x00, 0x94, 0x54, 0x2a, 0x00, 0x74, 0x54, 0x2a, 0x00, 0x1c, 0x68, 0x21, 0x00
00787570  40 54 2a 00 e8 67 21 00                          .byte 0x40, 0x54, 0x2a, 0x00, 0xe8, 0x67, 0x21, 0x00
