; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007639e0, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9smart_ptrINS_4fontEEENS_15fixed_size_hashIiEEE10find_indexERKi
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >::find_index(int const&) const
; decoder-mode: arm
007639e0  30 00 2d e9                                      push {r4, r5}
007639e4  00 30 90 e5                                      ldr r3, [r0]
007639e8  00 00 53 e3                                      cmp r3, #0
007639ec  02 00 00 1a                                      bne #0x7639fc
007639f0  00 00 e0 e3                                      mvn r0, #0
007639f4  30 00 bd e8                                      pop {r4, r5}
007639f8  1e ff 2f e1                                      bx lr
007639fc  05 25 01 e3                                      movw r2, #0x1505
00763a00  04 00 a0 e3                                      mov r0, #4
00763a04  01 00 40 e2                                      sub r0, r0, #1
00763a08  00 40 d1 e7                                      ldrb r4, [r1, r0]
00763a0c  02 c3 a0 e1                                      lsl ip, r2, #6
00763a10  02 c8 8c e0                                      add ip, ip, r2, lsl #16
00763a14  04 c0 8c e0                                      add ip, ip, r4
00763a18  00 00 50 e3                                      cmp r0, #0
00763a1c  0c 20 62 e0                                      rsb r2, r2, ip
00763a20  f7 ff ff 1a                                      bne #0x763a04
00763a24  04 00 93 e5                                      ldr r0, [r3, #4]
00763a28  01 00 72 e3                                      cmn r2, #1
00763a2c  02 29 e0 03                                      mvneq r2, #0x8000
00763a30  00 40 02 e0                                      and r4, r2, r0
00763a34  84 c0 a0 e1                                      lsl ip, r4, #1
00763a38  01 c0 8c e2                                      add ip, ip, #1
00763a3c  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
00763a40  8c c1 83 e0                                      add ip, r3, ip, lsl #3
00763a44  02 00 75 e3                                      cmn r5, #2
00763a48  e8 ff ff 0a                                      beq #0x7639f0
00763a4c  04 50 9c e5                                      ldr r5, [ip, #4]
00763a50  01 00 75 e3                                      cmn r5, #1
00763a54  04 00 a0 01                                      moveq r0, r4
00763a58  06 00 00 0a                                      beq #0x763a78
00763a5c  05 00 00 e0                                      and r0, r0, r5
00763a60  04 00 50 e1                                      cmp r0, r4
00763a64  e1 ff ff 1a                                      bne #0x7639f0
00763a68  02 00 00 ea                                      b #0x763a78
00763a6c  00 c2 83 e0                                      add ip, r3, r0, lsl #4
00763a70  08 c0 8c e2                                      add ip, ip, #8
00763a74  04 50 9c e5                                      ldr r5, [ip, #4]
00763a78  05 00 52 e1                                      cmp r2, r5
00763a7c  03 00 00 1a                                      bne #0x763a90
00763a80  08 50 9c e5                                      ldr r5, [ip, #8]
00763a84  00 40 91 e5                                      ldr r4, [r1]
00763a88  04 00 55 e1                                      cmp r5, r4
00763a8c  d8 ff ff 0a                                      beq #0x7639f4
00763a90  00 00 9c e5                                      ldr r0, [ip]
00763a94  01 00 70 e3                                      cmn r0, #1
00763a98  f3 ff ff 1a                                      bne #0x763a6c
00763a9c  d4 ff ff ea                                      b #0x7639f4

; FUNCTION 0x00763fb8, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_4fontEEENS_15fixed_size_hashIiEEE5clearEv
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >::clear()
; decoder-mode: arm
00763fb8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00763fbc  00 40 a0 e1                                      mov r4, r0
00763fc0  00 00 90 e5                                      ldr r0, [r0]
00763fc4  00 00 50 e3                                      cmp r0, #0
00763fc8  1d 00 00 0a                                      beq #0x764044
00763fcc  04 80 90 e5                                      ldr r8, [r0, #4]
00763fd0  00 00 58 e3                                      cmp r8, #0
00763fd4  15 00 00 ba                                      blt #0x764030
00763fd8  00 70 a0 e3                                      mov r7, #0
00763fdc  08 50 a0 e3                                      mov r5, #8
00763fe0  01 90 e0 e3                                      mvn sb, #1
00763fe4  07 a0 a0 e1                                      mov sl, r7
00763fe8  05 30 90 e7                                      ldr r3, [r0, r5]
00763fec  01 70 87 e2                                      add r7, r7, #1
00763ff0  05 60 80 e0                                      add r6, r0, r5
00763ff4  02 00 73 e3                                      cmn r3, #2
00763ff8  08 00 00 0a                                      beq #0x764020
00763ffc  04 30 96 e5                                      ldr r3, [r6, #4]
00764000  01 00 73 e3                                      cmn r3, #1
00764004  05 00 00 0a                                      beq #0x764020
00764008  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0076400c  00 00 50 e3                                      cmp r0, #0
00764010  00 00 00 0a                                      beq #0x764018
00764014  89 d8 ff eb                                      bl #0x75a240
00764018  00 06 86 e8                                      stm r6, {sb, sl}
0076401c  00 00 94 e5                                      ldr r0, [r4]
00764020  07 00 58 e1                                      cmp r8, r7
00764024  10 50 85 e2                                      add r5, r5, #0x10
00764028  ee ff ff aa                                      bge #0x763fe8
0076402c  04 80 90 e5                                      ldr r8, [r0, #4]
00764030  08 12 a0 e1                                      lsl r1, r8, #4
00764034  18 10 81 e2                                      add r1, r1, #0x18
00764038  be ba ff eb                                      bl #0x752b38
0076403c  00 30 a0 e3                                      mov r3, #0
00764040  00 30 84 e5                                      str r3, [r4]
00764044  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00764274, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9smart_ptrINS_4fontEEENS_15fixed_size_hashIiEEE3getERKiPS3_
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >::get(int const&, gameswf::smart_ptr<gameswf::font>*) const
; decoder-mode: arm
00764274  70 40 2d e9                                      push {r4, r5, r6, lr}
00764278  02 40 a0 e1                                      mov r4, r2
0076427c  00 50 a0 e1                                      mov r5, r0
00764280  d6 fd ff eb                                      bl #0x7639e0
00764284  00 30 50 e2                                      subs r3, r0, #0
00764288  08 00 00 ba                                      blt #0x7642b0
0076428c  00 00 54 e3                                      cmp r4, #0
00764290  08 00 00 0a                                      beq #0x7642b8
00764294  00 20 95 e5                                      ldr r2, [r5]
00764298  04 00 a0 e1                                      mov r0, r4
0076429c  03 32 82 e0                                      add r3, r2, r3, lsl #4
007642a0  14 10 93 e5                                      ldr r1, [r3, #0x14]
007642a4  e2 ff ff eb                                      bl #0x764234
007642a8  01 00 a0 e3                                      mov r0, #1
007642ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
007642b0  00 00 a0 e3                                      mov r0, #0
007642b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007642b8  01 00 a0 e3                                      mov r0, #1
007642bc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00766d10, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_4fontEEENS_15fixed_size_hashIiEEE16set_raw_capacityEi
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
; decoder-mode: arm
00766d10  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00766d14  00 00 51 e3                                      cmp r1, #0
00766d18  0c d0 4d e2                                      sub sp, sp, #0xc
00766d1c  00 a0 a0 e1                                      mov sl, r0
00766d20  51 00 00 da                                      ble #0x766e6c
00766d24  01 00 41 e2                                      sub r0, r1, #1
00766d28  0d 9f ee eb                                      bl #0x30e964
00766d2c  60 9c ee eb                                      bl #0x30deb4
00766d30  18 12 07 e3                                      movw r1, #0x7218
00766d34  31 1f 43 e3                                      movt r1, #0x3f31
00766d38  d5 9f ee eb                                      bl #0x30ec94
00766d3c  fe 15 a0 e3                                      mov r1, #0x3f800000
00766d40  97 9f ee eb                                      bl #0x30eba4
00766d44  e0 9d ee eb                                      bl #0x30e4cc
00766d48  01 40 a0 e3                                      mov r4, #1
00766d4c  14 40 a0 e1                                      lsl r4, r4, r0
00766d50  00 30 9a e5                                      ldr r3, [sl]
00766d54  04 00 54 e3                                      cmp r4, #4
00766d58  04 40 a0 b3                                      movlt r4, #4
00766d5c  00 00 53 e3                                      cmp r3, #0
00766d60  03 00 00 0a                                      beq #0x766d74
00766d64  04 30 93 e5                                      ldr r3, [r3, #4]
00766d68  01 30 83 e2                                      add r3, r3, #1
00766d6c  04 00 53 e1                                      cmp r3, r4
00766d70  3e 00 00 0a                                      beq #0x766e70
00766d74  00 50 a0 e3                                      mov r5, #0
00766d78  04 02 a0 e1                                      lsl r0, r4, #4
00766d7c  08 00 80 e2                                      add r0, r0, #8
00766d80  05 10 a0 e1                                      mov r1, r5
00766d84  04 50 8d e5                                      str r5, [sp, #4]
00766d88  83 af ff eb                                      bl #0x752b9c
00766d8c  04 00 8d e5                                      str r0, [sp, #4]
00766d90  00 50 80 e5                                      str r5, [r0]
00766d94  04 30 9d e5                                      ldr r3, [sp, #4]
00766d98  01 20 44 e2                                      sub r2, r4, #1
00766d9c  01 90 e0 e3                                      mvn sb, #1
00766da0  04 20 83 e5                                      str r2, [r3, #4]
00766da4  08 30 a0 e3                                      mov r3, #8
00766da8  04 20 9d e5                                      ldr r2, [sp, #4]
00766dac  01 50 85 e2                                      add r5, r5, #1
00766db0  05 00 54 e1                                      cmp r4, r5
00766db4  03 90 82 e7                                      str sb, [r2, r3]
00766db8  10 30 83 e2                                      add r3, r3, #0x10
00766dbc  f9 ff ff ca                                      bgt #0x766da8
00766dc0  00 30 9a e5                                      ldr r3, [sl]
00766dc4  00 00 53 e3                                      cmp r3, #0
00766dc8  04 80 8d 02                                      addeq r8, sp, #4
00766dcc  21 00 00 0a                                      beq #0x766e58
00766dd0  04 70 93 e5                                      ldr r7, [r3, #4]
00766dd4  00 00 57 e3                                      cmp r7, #0
00766dd8  04 80 8d b2                                      addlt r8, sp, #4
00766ddc  19 00 00 ba                                      blt #0x766e48
00766de0  00 60 a0 e3                                      mov r6, #0
00766de4  08 50 a0 e3                                      mov r5, #8
00766de8  04 80 8d e2                                      add r8, sp, #4
00766dec  06 b0 a0 e1                                      mov fp, r6
00766df0  05 c0 93 e7                                      ldr ip, [r3, r5]
00766df4  05 40 83 e0                                      add r4, r3, r5
00766df8  08 00 a0 e1                                      mov r0, r8
00766dfc  02 00 7c e3                                      cmn ip, #2
00766e00  01 60 86 e2                                      add r6, r6, #1
00766e04  08 10 84 e2                                      add r1, r4, #8
00766e08  0c 20 84 e2                                      add r2, r4, #0xc
00766e0c  09 00 00 0a                                      beq #0x766e38
00766e10  04 c0 94 e5                                      ldr ip, [r4, #4]
00766e14  01 00 7c e3                                      cmn ip, #1
00766e18  06 00 00 0a                                      beq #0x766e38
00766e1c  22 00 00 eb                                      bl #0x766eac
00766e20  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00766e24  00 00 50 e3                                      cmp r0, #0
00766e28  00 00 00 0a                                      beq #0x766e30
00766e2c  03 cd ff eb                                      bl #0x75a240
00766e30  00 0a 84 e8                                      stm r4, {sb, fp}
00766e34  00 30 9a e5                                      ldr r3, [sl]
00766e38  06 00 57 e1                                      cmp r7, r6
00766e3c  10 50 85 e2                                      add r5, r5, #0x10
00766e40  ea ff ff aa                                      bge #0x766df0
00766e44  04 70 93 e5                                      ldr r7, [r3, #4]
00766e48  07 12 a0 e1                                      lsl r1, r7, #4
00766e4c  03 00 a0 e1                                      mov r0, r3
00766e50  18 10 81 e2                                      add r1, r1, #0x18
00766e54  37 af ff eb                                      bl #0x752b38
00766e58  04 30 9d e5                                      ldr r3, [sp, #4]
00766e5c  08 00 a0 e1                                      mov r0, r8
00766e60  00 30 8a e5                                      str r3, [sl]
00766e64  00 30 a0 e3                                      mov r3, #0
00766e68  04 30 8d e5                                      str r3, [sp, #4]
00766e6c  51 f4 ff eb                                      bl #0x763fb8
00766e70  0c d0 8d e2                                      add sp, sp, #0xc
00766e74  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00766e78, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_4fontEEENS_15fixed_size_hashIiEEE12check_expandEv
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >::check_expand()
; decoder-mode: arm
00766e78  00 30 90 e5                                      ldr r3, [r0]
00766e7c  00 00 53 e3                                      cmp r3, #0
00766e80  07 00 00 0a                                      beq #0x766ea4
00766e84  04 10 93 e5                                      ldr r1, [r3, #4]
00766e88  00 30 93 e5                                      ldr r3, [r3]
00766e8c  01 10 81 e2                                      add r1, r1, #1
00766e90  81 10 a0 e1                                      lsl r1, r1, #1
00766e94  83 30 83 e0                                      add r3, r3, r3, lsl #1
00766e98  01 00 53 e1                                      cmp r3, r1
00766e9c  1e ff 2f d1                                      bxle lr
00766ea0  9a ff ff ea                                      b #0x766d10
00766ea4  08 10 a0 e3                                      mov r1, #8
00766ea8  98 ff ff ea                                      b #0x766d10

; FUNCTION 0x00766eac, declared_size=412, range_size=412, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_4fontEEENS_15fixed_size_hashIiEEE3addERKiRKS3_
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >::add(int const&, gameswf::smart_ptr<gameswf::font> const&)
; decoder-mode: arm
00766eac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00766eb0  00 40 a0 e1                                      mov r4, r0
00766eb4  04 d0 4d e2                                      sub sp, sp, #4
00766eb8  01 80 a0 e1                                      mov r8, r1
00766ebc  02 b0 a0 e1                                      mov fp, r2
00766ec0  ec ff ff eb                                      bl #0x766e78
00766ec4  00 20 94 e5                                      ldr r2, [r4]
00766ec8  05 55 01 e3                                      movw r5, #0x1505
00766ecc  04 30 a0 e3                                      mov r3, #4
00766ed0  00 10 92 e5                                      ldr r1, [r2]
00766ed4  01 10 81 e2                                      add r1, r1, #1
00766ed8  00 10 82 e5                                      str r1, [r2]
00766edc  01 30 43 e2                                      sub r3, r3, #1
00766ee0  03 10 d8 e7                                      ldrb r1, [r8, r3]
00766ee4  05 23 a0 e1                                      lsl r2, r5, #6
00766ee8  05 28 82 e0                                      add r2, r2, r5, lsl #16
00766eec  01 20 82 e0                                      add r2, r2, r1
00766ef0  00 00 53 e3                                      cmp r3, #0
00766ef4  02 50 65 e0                                      rsb r5, r5, r2
00766ef8  f7 ff ff 1a                                      bne #0x766edc
00766efc  00 40 94 e5                                      ldr r4, [r4]
00766f00  01 00 75 e3                                      cmn r5, #1
00766f04  02 59 e0 03                                      mvneq r5, #0x8000
00766f08  04 20 94 e5                                      ldr r2, [r4, #4]
00766f0c  02 30 05 e0                                      and r3, r5, r2
00766f10  83 a0 a0 e1                                      lsl sl, r3, #1
00766f14  01 a0 8a e2                                      add sl, sl, #1
00766f18  8a 11 94 e7                                      ldr r1, [r4, sl, lsl #3]
00766f1c  8a 71 84 e0                                      add r7, r4, sl, lsl #3
00766f20  02 00 71 e3                                      cmn r1, #2
00766f24  00 30 e0 03                                      mvneq r3, #0
00766f28  8a 31 84 07                                      streq r3, [r4, sl, lsl #3]
00766f2c  29 00 00 0a                                      beq #0x766fd8
00766f30  04 00 97 e5                                      ldr r0, [r7, #4]
00766f34  01 00 70 e3                                      cmn r0, #1
00766f38  03 60 a0 11                                      movne r6, r3
00766f3c  25 00 00 0a                                      beq #0x766fd8
00766f40  01 60 86 e2                                      add r6, r6, #1
00766f44  02 60 06 e0                                      and r6, r6, r2
00766f48  86 c0 a0 e1                                      lsl ip, r6, #1
00766f4c  01 c0 8c e2                                      add ip, ip, #1
00766f50  8c e1 94 e7                                      ldr lr, [r4, ip, lsl #3]
00766f54  8c c1 84 e0                                      add ip, r4, ip, lsl #3
00766f58  02 00 7e e3                                      cmn lr, #2
00766f5c  f7 ff ff 1a                                      bne #0x766f40
00766f60  00 20 02 e0                                      and r2, r2, r0
00766f64  03 00 52 e1                                      cmp r2, r3
00766f68  24 00 00 0a                                      beq #0x767000
00766f6c  82 20 a0 e1                                      lsl r2, r2, #1
00766f70  01 90 82 e2                                      add sb, r2, #1
00766f74  89 21 94 e7                                      ldr r2, [r4, sb, lsl #3]
00766f78  89 91 84 e0                                      add sb, r4, sb, lsl #3
00766f7c  03 00 52 e1                                      cmp r2, r3
00766f80  f9 ff ff 1a                                      bne #0x766f6c
00766f84  00 10 8c e5                                      str r1, [ip]
00766f88  04 30 97 e5                                      ldr r3, [r7, #4]
00766f8c  04 30 8c e5                                      str r3, [ip, #4]
00766f90  08 30 97 e5                                      ldr r3, [r7, #8]
00766f94  08 30 8c e5                                      str r3, [ip, #8]
00766f98  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00766f9c  00 00 50 e3                                      cmp r0, #0
00766fa0  0c 00 8c e5                                      str r0, [ip, #0xc]
00766fa4  00 00 00 0a                                      beq #0x766fac
00766fa8  2d cb ff eb                                      bl #0x759c64
00766fac  00 60 89 e5                                      str r6, [sb]
00766fb0  00 30 98 e5                                      ldr r3, [r8]
00766fb4  0c 00 87 e2                                      add r0, r7, #0xc
00766fb8  08 30 87 e5                                      str r3, [r7, #8]
00766fbc  00 10 9b e5                                      ldr r1, [fp]
00766fc0  9b f4 ff eb                                      bl #0x764234
00766fc4  00 30 e0 e3                                      mvn r3, #0
00766fc8  04 50 87 e5                                      str r5, [r7, #4]
00766fcc  8a 31 84 e7                                      str r3, [r4, sl, lsl #3]
00766fd0  04 d0 8d e2                                      add sp, sp, #4
00766fd4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00766fd8  04 50 87 e5                                      str r5, [r7, #4]
00766fdc  00 30 98 e5                                      ldr r3, [r8]
00766fe0  08 30 87 e5                                      str r3, [r7, #8]
00766fe4  00 00 9b e5                                      ldr r0, [fp]
00766fe8  00 00 50 e3                                      cmp r0, #0
00766fec  0c 00 87 e5                                      str r0, [r7, #0xc]
00766ff0  f6 ff ff 0a                                      beq #0x766fd0
00766ff4  04 d0 8d e2                                      add sp, sp, #4
00766ff8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00766ffc  18 cb ff ea                                      b #0x759c64
00767000  00 10 8c e5                                      str r1, [ip]
00767004  04 30 97 e5                                      ldr r3, [r7, #4]
00767008  04 30 8c e5                                      str r3, [ip, #4]
0076700c  08 30 97 e5                                      ldr r3, [r7, #8]
00767010  08 30 8c e5                                      str r3, [ip, #8]
00767014  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00767018  00 00 50 e3                                      cmp r0, #0
0076701c  0c 00 8c e5                                      str r0, [ip, #0xc]
00767020  00 00 00 0a                                      beq #0x767028
00767024  0e cb ff eb                                      bl #0x759c64
00767028  00 30 98 e5                                      ldr r3, [r8]
0076702c  0c 00 87 e2                                      add r0, r7, #0xc
00767030  08 30 87 e5                                      str r3, [r7, #8]
00767034  00 10 9b e5                                      ldr r1, [fp]
00767038  7d f4 ff eb                                      bl #0x764234
0076703c  8a 61 84 e7                                      str r6, [r4, sl, lsl #3]
00767040  04 50 87 e5                                      str r5, [r7, #4]
00767044  e1 ff ff ea                                      b #0x766fd0
