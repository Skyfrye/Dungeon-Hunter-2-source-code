; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c9c28, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_14inst_info_avm2ENS_15fixed_size_hashIiEEE5clearEv
; demangled: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >::clear()
; decoder-mode: arm
007c9c28  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007c9c2c  00 30 90 e5                                      ldr r3, [r0]
007c9c30  00 40 a0 e1                                      mov r4, r0
007c9c34  00 00 53 e3                                      cmp r3, #0
007c9c38  1c 00 00 0a                                      beq #0x7c9cb0
007c9c3c  04 80 93 e5                                      ldr r8, [r3, #4]
007c9c40  00 00 58 e3                                      cmp r8, #0
007c9c44  13 00 00 ba                                      blt #0x7c9c98
007c9c48  00 70 a0 e3                                      mov r7, #0
007c9c4c  08 50 a0 e3                                      mov r5, #8
007c9c50  01 90 e0 e3                                      mvn sb, #1
007c9c54  07 a0 a0 e1                                      mov sl, r7
007c9c58  05 20 93 e7                                      ldr r2, [r3, r5]
007c9c5c  01 70 87 e2                                      add r7, r7, #1
007c9c60  05 60 83 e0                                      add r6, r3, r5
007c9c64  02 00 72 e3                                      cmn r2, #2
007c9c68  06 00 00 0a                                      beq #0x7c9c88
007c9c6c  04 20 96 e5                                      ldr r2, [r6, #4]
007c9c70  0c 00 86 e2                                      add r0, r6, #0xc
007c9c74  01 00 72 e3                                      cmn r2, #1
007c9c78  02 00 00 0a                                      beq #0x7c9c88
007c9c7c  d1 ff ff eb                                      bl #0x7c9bc8
007c9c80  00 06 86 e8                                      stm r6, {sb, sl}
007c9c84  00 30 94 e5                                      ldr r3, [r4]
007c9c88  07 00 58 e1                                      cmp r8, r7
007c9c8c  20 50 85 e2                                      add r5, r5, #0x20
007c9c90  f0 ff ff aa                                      bge #0x7c9c58
007c9c94  04 80 93 e5                                      ldr r8, [r3, #4]
007c9c98  88 12 a0 e1                                      lsl r1, r8, #5
007c9c9c  03 00 a0 e1                                      mov r0, r3
007c9ca0  28 10 81 e2                                      add r1, r1, #0x28
007c9ca4  a3 23 fe eb                                      bl #0x752b38
007c9ca8  00 30 a0 e3                                      mov r3, #0
007c9cac  00 30 84 e5                                      str r3, [r4]
007c9cb0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007c9cb4, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_14inst_info_avm2ENS_15fixed_size_hashIiEEED1Ev
; demangled: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >::~hash()
; decoder-mode: arm
007c9cb4  10 40 2d e9                                      push {r4, lr}
007c9cb8  00 40 a0 e1                                      mov r4, r0
007c9cbc  d9 ff ff eb                                      bl #0x7c9c28
007c9cc0  04 00 a0 e1                                      mov r0, r4
007c9cc4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c9d8c, declared_size=916, range_size=916, mode=arm
; class-group: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_14inst_info_avm2ENS_15fixed_size_hashIiEEE3addERKiRKS1_
; demangled: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >::add(int const&, gameswf::inst_info_avm2 const&)
; decoder-mode: arm
007c9d8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c9d90  00 40 a0 e1                                      mov r4, r0
007c9d94  14 d0 4d e2                                      sub sp, sp, #0x14
007c9d98  02 a0 a0 e1                                      mov sl, r2
007c9d9c  00 10 8d e5                                      str r1, [sp]
007c9da0  37 01 00 eb                                      bl #0x7ca284
007c9da4  00 30 94 e5                                      ldr r3, [r4]
007c9da8  05 75 01 e3                                      movw r7, #0x1505
007c9dac  04 50 a0 e3                                      mov r5, #4
007c9db0  00 20 93 e5                                      ldr r2, [r3]
007c9db4  01 20 82 e2                                      add r2, r2, #1
007c9db8  00 20 83 e5                                      str r2, [r3]
007c9dbc  00 c0 9d e5                                      ldr ip, [sp]
007c9dc0  01 50 45 e2                                      sub r5, r5, #1
007c9dc4  05 20 dc e7                                      ldrb r2, [ip, r5]
007c9dc8  07 33 a0 e1                                      lsl r3, r7, #6
007c9dcc  07 38 83 e0                                      add r3, r3, r7, lsl #16
007c9dd0  02 30 83 e0                                      add r3, r3, r2
007c9dd4  00 00 55 e3                                      cmp r5, #0
007c9dd8  03 70 67 e0                                      rsb r7, r7, r3
007c9ddc  f7 ff ff 1a                                      bne #0x7c9dc0
007c9de0  00 40 94 e5                                      ldr r4, [r4]
007c9de4  01 00 77 e3                                      cmn r7, #1
007c9de8  02 79 e0 03                                      mvneq r7, #0x8000
007c9dec  04 30 94 e5                                      ldr r3, [r4, #4]
007c9df0  03 20 07 e0                                      and r2, r7, r3
007c9df4  02 11 a0 e1                                      lsl r1, r2, #2
007c9df8  01 10 81 e2                                      add r1, r1, #1
007c9dfc  0c 10 8d e5                                      str r1, [sp, #0xc]
007c9e00  81 11 94 e7                                      ldr r1, [r4, r1, lsl #3]
007c9e04  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007c9e08  02 00 71 e3                                      cmn r1, #2
007c9e0c  80 61 84 e0                                      add r6, r4, r0, lsl #3
007c9e10  52 00 00 0a                                      beq #0x7c9f60
007c9e14  04 00 96 e5                                      ldr r0, [r6, #4]
007c9e18  01 00 70 e3                                      cmn r0, #1
007c9e1c  02 80 a0 11                                      movne r8, r2
007c9e20  5e 00 00 0a                                      beq #0x7c9fa0
007c9e24  01 80 88 e2                                      add r8, r8, #1
007c9e28  03 80 08 e0                                      and r8, r8, r3
007c9e2c  08 51 a0 e1                                      lsl r5, r8, #2
007c9e30  01 50 85 e2                                      add r5, r5, #1
007c9e34  85 91 94 e7                                      ldr sb, [r4, r5, lsl #3]
007c9e38  85 51 84 e0                                      add r5, r4, r5, lsl #3
007c9e3c  02 00 79 e3                                      cmn sb, #2
007c9e40  f7 ff ff 1a                                      bne #0x7c9e24
007c9e44  00 00 03 e0                                      and r0, r3, r0
007c9e48  02 00 50 e1                                      cmp r0, r2
007c9e4c  75 00 00 0a                                      beq #0x7ca028
007c9e50  00 01 a0 e1                                      lsl r0, r0, #2
007c9e54  01 30 80 e2                                      add r3, r0, #1
007c9e58  83 01 94 e7                                      ldr r0, [r4, r3, lsl #3]
007c9e5c  83 31 84 e0                                      add r3, r4, r3, lsl #3
007c9e60  02 00 50 e1                                      cmp r0, r2
007c9e64  f9 ff ff 1a                                      bne #0x7c9e50
007c9e68  00 10 85 e5                                      str r1, [r5]
007c9e6c  04 10 96 e5                                      ldr r1, [r6, #4]
007c9e70  00 20 a0 e3                                      mov r2, #0
007c9e74  04 10 85 e5                                      str r1, [r5, #4]
007c9e78  08 10 96 e5                                      ldr r1, [r6, #8]
007c9e7c  08 10 85 e5                                      str r1, [r5, #8]
007c9e80  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007c9e84  10 20 85 e5                                      str r2, [r5, #0x10]
007c9e88  14 20 85 e5                                      str r2, [r5, #0x14]
007c9e8c  0c 10 85 e5                                      str r1, [r5, #0xc]
007c9e90  18 20 85 e5                                      str r2, [r5, #0x18]
007c9e94  1c 20 c5 e5                                      strb r2, [r5, #0x1c]
007c9e98  14 90 96 e5                                      ldr sb, [r6, #0x14]
007c9e9c  02 00 59 e1                                      cmp sb, r2
007c9ea0  6e 00 00 aa                                      bge #0x7ca060
007c9ea4  14 90 85 e5                                      str sb, [r5, #0x14]
007c9ea8  00 80 83 e5                                      str r8, [r3]
007c9eac  00 30 9c e5                                      ldr r3, [ip]
007c9eb0  0c 80 86 e2                                      add r8, r6, #0xc
007c9eb4  10 b0 86 e2                                      add fp, r6, #0x10
007c9eb8  08 30 86 e5                                      str r3, [r6, #8]
007c9ebc  00 30 9a e5                                      ldr r3, [sl]
007c9ec0  14 50 96 e5                                      ldr r5, [r6, #0x14]
007c9ec4  0c 30 86 e5                                      str r3, [r6, #0xc]
007c9ec8  08 90 9a e5                                      ldr sb, [sl, #8]
007c9ecc  00 00 59 e3                                      cmp sb, #0
007c9ed0  1b 00 00 1a                                      bne #0x7c9f44
007c9ed4  05 00 59 e1                                      cmp sb, r5
007c9ed8  07 00 00 da                                      ble #0x7c9efc
007c9edc  05 31 a0 e1                                      lsl r3, r5, #2
007c9ee0  00 10 a0 e3                                      mov r1, #0
007c9ee4  00 20 9b e5                                      ldr r2, [fp]
007c9ee8  01 50 85 e2                                      add r5, r5, #1
007c9eec  09 00 55 e1                                      cmp r5, sb
007c9ef0  03 10 82 e7                                      str r1, [r2, r3]
007c9ef4  04 30 83 e2                                      add r3, r3, #4
007c9ef8  f9 ff ff 1a                                      bne #0x7c9ee4
007c9efc  00 00 59 e3                                      cmp sb, #0
007c9f00  14 90 86 e5                                      str sb, [r6, #0x14]
007c9f04  08 00 00 da                                      ble #0x7c9f2c
007c9f08  00 30 a0 e3                                      mov r3, #0
007c9f0c  04 10 9a e5                                      ldr r1, [sl, #4]
007c9f10  04 20 98 e5                                      ldr r2, [r8, #4]
007c9f14  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
007c9f18  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007c9f1c  08 20 98 e5                                      ldr r2, [r8, #8]
007c9f20  01 30 83 e2                                      add r3, r3, #1
007c9f24  02 00 53 e1                                      cmp r3, r2
007c9f28  f7 ff ff ba                                      blt #0x7c9f0c
007c9f2c  04 70 86 e5                                      str r7, [r6, #4]
007c9f30  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007c9f34  00 30 e0 e3                                      mvn r3, #0
007c9f38  80 31 84 e7                                      str r3, [r4, r0, lsl #3]
007c9f3c  14 d0 8d e2                                      add sp, sp, #0x14
007c9f40  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c9f44  18 30 96 e5                                      ldr r3, [r6, #0x18]
007c9f48  03 00 59 e1                                      cmp sb, r3
007c9f4c  e0 ff ff da                                      ble #0x7c9ed4
007c9f50  0b 00 a0 e1                                      mov r0, fp
007c9f54  c9 10 89 e0                                      add r1, sb, sb, asr #1
007c9f58  ac fb ff eb                                      bl #0x7c8e10
007c9f5c  dc ff ff ea                                      b #0x7c9ed4
007c9f60  00 30 e0 e3                                      mvn r3, #0
007c9f64  80 31 84 e7                                      str r3, [r4, r0, lsl #3]
007c9f68  04 70 86 e5                                      str r7, [r6, #4]
007c9f6c  00 30 9c e5                                      ldr r3, [ip]
007c9f70  08 30 86 e5                                      str r3, [r6, #8]
007c9f74  00 30 9a e5                                      ldr r3, [sl]
007c9f78  10 50 86 e5                                      str r5, [r6, #0x10]
007c9f7c  14 50 86 e5                                      str r5, [r6, #0x14]
007c9f80  0c 30 86 e5                                      str r3, [r6, #0xc]
007c9f84  18 50 86 e5                                      str r5, [r6, #0x18]
007c9f88  1c 50 c6 e5                                      strb r5, [r6, #0x1c]
007c9f8c  08 40 9a e5                                      ldr r4, [sl, #8]
007c9f90  00 00 54 e3                                      cmp r4, #0
007c9f94  4b 00 00 aa                                      bge #0x7ca0c8
007c9f98  14 40 86 e5                                      str r4, [r6, #0x14]
007c9f9c  e6 ff ff ea                                      b #0x7c9f3c
007c9fa0  04 70 86 e5                                      str r7, [r6, #4]
007c9fa4  00 30 9c e5                                      ldr r3, [ip]
007c9fa8  08 30 86 e5                                      str r3, [r6, #8]
007c9fac  00 30 9a e5                                      ldr r3, [sl]
007c9fb0  10 50 86 e5                                      str r5, [r6, #0x10]
007c9fb4  14 50 86 e5                                      str r5, [r6, #0x14]
007c9fb8  0c 30 86 e5                                      str r3, [r6, #0xc]
007c9fbc  18 50 86 e5                                      str r5, [r6, #0x18]
007c9fc0  1c 50 c6 e5                                      strb r5, [r6, #0x1c]
007c9fc4  08 40 9a e5                                      ldr r4, [sl, #8]
007c9fc8  00 00 54 e3                                      cmp r4, #0
007c9fcc  f1 ff ff ba                                      blt #0x7c9f98
007c9fd0  f0 ff ff 0a                                      beq #0x7c9f98
007c9fd4  ef ff ff da                                      ble #0x7c9f98
007c9fd8  10 70 86 e2                                      add r7, r6, #0x10
007c9fdc  07 00 a0 e1                                      mov r0, r7
007c9fe0  c4 10 84 e0                                      add r1, r4, r4, asr #1
007c9fe4  89 fb ff eb                                      bl #0x7c8e10
007c9fe8  05 30 a0 e1                                      mov r3, r5
007c9fec  00 20 97 e5                                      ldr r2, [r7]
007c9ff0  05 31 82 e7                                      str r3, [r2, r5, lsl #2]
007c9ff4  01 50 85 e2                                      add r5, r5, #1
007c9ff8  04 00 55 e1                                      cmp r5, r4
007c9ffc  fa ff ff 1a                                      bne #0x7c9fec
007ca000  14 50 86 e5                                      str r5, [r6, #0x14]
007ca004  04 10 9a e5                                      ldr r1, [sl, #4]
007ca008  10 20 96 e5                                      ldr r2, [r6, #0x10]
007ca00c  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
007ca010  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007ca014  14 20 96 e5                                      ldr r2, [r6, #0x14]
007ca018  01 30 83 e2                                      add r3, r3, #1
007ca01c  02 00 53 e1                                      cmp r3, r2
007ca020  f7 ff ff ba                                      blt #0x7ca004
007ca024  c4 ff ff ea                                      b #0x7c9f3c
007ca028  06 10 a0 e1                                      mov r1, r6
007ca02c  05 00 a0 e1                                      mov r0, r5
007ca030  00 c0 8d e5                                      str ip, [sp]
007ca034  27 ff ff eb                                      bl #0x7c9cd8
007ca038  00 c0 9d e5                                      ldr ip, [sp]
007ca03c  0a 10 a0 e1                                      mov r1, sl
007ca040  0c 00 86 e2                                      add r0, r6, #0xc
007ca044  00 30 9c e5                                      ldr r3, [ip]
007ca048  08 30 86 e5                                      str r3, [r6, #8]
007ca04c  b4 fe ff eb                                      bl #0x7c9b24
007ca050  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007ca054  82 81 84 e7                                      str r8, [r4, r2, lsl #3]
007ca058  04 70 86 e5                                      str r7, [r6, #4]
007ca05c  b6 ff ff ea                                      b #0x7c9f3c
007ca060  8f ff ff 0a                                      beq #0x7c9ea4
007ca064  8e ff ff da                                      ble #0x7c9ea4
007ca068  10 b0 85 e2                                      add fp, r5, #0x10
007ca06c  0b 00 a0 e1                                      mov r0, fp
007ca070  c9 10 89 e0                                      add r1, sb, sb, asr #1
007ca074  0c 00 8d e9                                      stmib sp, {r2, r3}
007ca078  00 c0 8d e5                                      str ip, [sp]
007ca07c  63 fb ff eb                                      bl #0x7c8e10
007ca080  0c 00 9d e9                                      ldmib sp, {r2, r3}
007ca084  00 c0 9d e5                                      ldr ip, [sp]
007ca088  02 00 a0 e1                                      mov r0, r2
007ca08c  00 10 9b e5                                      ldr r1, [fp]
007ca090  02 01 81 e7                                      str r0, [r1, r2, lsl #2]
007ca094  01 20 82 e2                                      add r2, r2, #1
007ca098  09 00 52 e1                                      cmp r2, sb
007ca09c  fa ff ff 1a                                      bne #0x7ca08c
007ca0a0  14 20 85 e5                                      str r2, [r5, #0x14]
007ca0a4  10 10 96 e5                                      ldr r1, [r6, #0x10]
007ca0a8  10 20 95 e5                                      ldr r2, [r5, #0x10]
007ca0ac  00 11 91 e7                                      ldr r1, [r1, r0, lsl #2]
007ca0b0  00 11 82 e7                                      str r1, [r2, r0, lsl #2]
007ca0b4  14 20 95 e5                                      ldr r2, [r5, #0x14]
007ca0b8  01 00 80 e2                                      add r0, r0, #1
007ca0bc  02 00 50 e1                                      cmp r0, r2
007ca0c0  f7 ff ff ba                                      blt #0x7ca0a4
007ca0c4  77 ff ff ea                                      b #0x7c9ea8
007ca0c8  b2 ff ff 0a                                      beq #0x7c9f98
007ca0cc  b1 ff ff da                                      ble #0x7c9f98
007ca0d0  10 70 86 e2                                      add r7, r6, #0x10
007ca0d4  07 00 a0 e1                                      mov r0, r7
007ca0d8  c4 10 84 e0                                      add r1, r4, r4, asr #1
007ca0dc  4b fb ff eb                                      bl #0x7c8e10
007ca0e0  05 30 a0 e1                                      mov r3, r5
007ca0e4  00 20 97 e5                                      ldr r2, [r7]
007ca0e8  05 31 82 e7                                      str r3, [r2, r5, lsl #2]
007ca0ec  01 50 85 e2                                      add r5, r5, #1
007ca0f0  04 00 55 e1                                      cmp r5, r4
007ca0f4  fa ff ff 1a                                      bne #0x7ca0e4
007ca0f8  14 50 86 e5                                      str r5, [r6, #0x14]
007ca0fc  04 10 9a e5                                      ldr r1, [sl, #4]
007ca100  10 20 96 e5                                      ldr r2, [r6, #0x10]
007ca104  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
007ca108  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
007ca10c  14 20 96 e5                                      ldr r2, [r6, #0x14]
007ca110  01 30 83 e2                                      add r3, r3, #1
007ca114  02 00 53 e1                                      cmp r3, r2
007ca118  f7 ff ff ba                                      blt #0x7ca0fc
007ca11c  86 ff ff ea                                      b #0x7c9f3c

; FUNCTION 0x007ca120, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_14inst_info_avm2ENS_15fixed_size_hashIiEEE16set_raw_capacityEi
; demangled: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
; decoder-mode: arm
007ca120  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ca124  00 00 51 e3                                      cmp r1, #0
007ca128  0c d0 4d e2                                      sub sp, sp, #0xc
007ca12c  00 a0 a0 e1                                      mov sl, r0
007ca130  50 00 00 da                                      ble #0x7ca278
007ca134  01 00 41 e2                                      sub r0, r1, #1
007ca138  09 12 ed eb                                      bl #0x30e964
007ca13c  5c 0f ed eb                                      bl #0x30deb4
007ca140  18 12 07 e3                                      movw r1, #0x7218
007ca144  31 1f 43 e3                                      movt r1, #0x3f31
007ca148  d1 12 ed eb                                      bl #0x30ec94
007ca14c  fe 15 a0 e3                                      mov r1, #0x3f800000
007ca150  93 12 ed eb                                      bl #0x30eba4
007ca154  dc 10 ed eb                                      bl #0x30e4cc
007ca158  01 40 a0 e3                                      mov r4, #1
007ca15c  14 40 a0 e1                                      lsl r4, r4, r0
007ca160  00 30 9a e5                                      ldr r3, [sl]
007ca164  04 00 54 e3                                      cmp r4, #4
007ca168  04 40 a0 b3                                      movlt r4, #4
007ca16c  00 00 53 e3                                      cmp r3, #0
007ca170  03 00 00 0a                                      beq #0x7ca184
007ca174  04 30 93 e5                                      ldr r3, [r3, #4]
007ca178  01 30 83 e2                                      add r3, r3, #1
007ca17c  04 00 53 e1                                      cmp r3, r4
007ca180  3d 00 00 0a                                      beq #0x7ca27c
007ca184  00 50 a0 e3                                      mov r5, #0
007ca188  84 02 a0 e1                                      lsl r0, r4, #5
007ca18c  08 00 80 e2                                      add r0, r0, #8
007ca190  05 10 a0 e1                                      mov r1, r5
007ca194  04 50 8d e5                                      str r5, [sp, #4]
007ca198  7f 22 fe eb                                      bl #0x752b9c
007ca19c  04 00 8d e5                                      str r0, [sp, #4]
007ca1a0  00 50 80 e5                                      str r5, [r0]
007ca1a4  04 30 9d e5                                      ldr r3, [sp, #4]
007ca1a8  01 20 44 e2                                      sub r2, r4, #1
007ca1ac  01 b0 e0 e3                                      mvn fp, #1
007ca1b0  04 20 83 e5                                      str r2, [r3, #4]
007ca1b4  08 30 a0 e3                                      mov r3, #8
007ca1b8  04 20 9d e5                                      ldr r2, [sp, #4]
007ca1bc  01 50 85 e2                                      add r5, r5, #1
007ca1c0  05 00 54 e1                                      cmp r4, r5
007ca1c4  03 b0 82 e7                                      str fp, [r2, r3]
007ca1c8  20 30 83 e2                                      add r3, r3, #0x20
007ca1cc  f9 ff ff ca                                      bgt #0x7ca1b8
007ca1d0  00 00 9a e5                                      ldr r0, [sl]
007ca1d4  00 00 50 e3                                      cmp r0, #0
007ca1d8  04 90 8d 02                                      addeq sb, sp, #4
007ca1dc  20 00 00 0a                                      beq #0x7ca264
007ca1e0  04 80 90 e5                                      ldr r8, [r0, #4]
007ca1e4  00 00 58 e3                                      cmp r8, #0
007ca1e8  04 90 8d b2                                      addlt sb, sp, #4
007ca1ec  19 00 00 ba                                      blt #0x7ca258
007ca1f0  00 60 a0 e3                                      mov r6, #0
007ca1f4  08 50 a0 e3                                      mov r5, #8
007ca1f8  04 90 8d e2                                      add sb, sp, #4
007ca1fc  05 30 90 e7                                      ldr r3, [r0, r5]
007ca200  01 60 86 e2                                      add r6, r6, #1
007ca204  05 40 80 e0                                      add r4, r0, r5
007ca208  02 00 73 e3                                      cmn r3, #2
007ca20c  0d 00 00 0a                                      beq #0x7ca248
007ca210  04 30 94 e5                                      ldr r3, [r4, #4]
007ca214  0c 70 84 e2                                      add r7, r4, #0xc
007ca218  08 10 84 e2                                      add r1, r4, #8
007ca21c  01 00 73 e3                                      cmn r3, #1
007ca220  08 00 00 0a                                      beq #0x7ca248
007ca224  07 20 a0 e1                                      mov r2, r7
007ca228  09 00 a0 e1                                      mov r0, sb
007ca22c  d6 fe ff eb                                      bl #0x7c9d8c
007ca230  07 00 a0 e1                                      mov r0, r7
007ca234  63 fe ff eb                                      bl #0x7c9bc8
007ca238  00 30 a0 e3                                      mov r3, #0
007ca23c  04 30 84 e5                                      str r3, [r4, #4]
007ca240  00 b0 84 e5                                      str fp, [r4]
007ca244  00 00 9a e5                                      ldr r0, [sl]
007ca248  06 00 58 e1                                      cmp r8, r6
007ca24c  20 50 85 e2                                      add r5, r5, #0x20
007ca250  e9 ff ff aa                                      bge #0x7ca1fc
007ca254  04 80 90 e5                                      ldr r8, [r0, #4]
007ca258  88 12 a0 e1                                      lsl r1, r8, #5
007ca25c  28 10 81 e2                                      add r1, r1, #0x28
007ca260  34 22 fe eb                                      bl #0x752b38
007ca264  04 30 9d e5                                      ldr r3, [sp, #4]
007ca268  09 00 a0 e1                                      mov r0, sb
007ca26c  00 30 8a e5                                      str r3, [sl]
007ca270  00 30 a0 e3                                      mov r3, #0
007ca274  04 30 8d e5                                      str r3, [sp, #4]
007ca278  6a fe ff eb                                      bl #0x7c9c28
007ca27c  0c d0 8d e2                                      add sp, sp, #0xc
007ca280  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007ca284, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_14inst_info_avm2ENS_15fixed_size_hashIiEEE12check_expandEv
; demangled: gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >::check_expand()
; decoder-mode: arm
007ca284  00 30 90 e5                                      ldr r3, [r0]
007ca288  00 00 53 e3                                      cmp r3, #0
007ca28c  07 00 00 0a                                      beq #0x7ca2b0
007ca290  04 10 93 e5                                      ldr r1, [r3, #4]
007ca294  00 30 93 e5                                      ldr r3, [r3]
007ca298  01 10 81 e2                                      add r1, r1, #1
007ca29c  81 10 a0 e1                                      lsl r1, r1, #1
007ca2a0  83 30 83 e0                                      add r3, r3, r3, lsl #1
007ca2a4  01 00 53 e1                                      cmp r3, r1
007ca2a8  1e ff 2f d1                                      bxle lr
007ca2ac  9b ff ff ea                                      b #0x7ca120
007ca2b0  08 10 a0 e3                                      mov r1, #8
007ca2b4  99 ff ff ea                                      b #0x7ca120
