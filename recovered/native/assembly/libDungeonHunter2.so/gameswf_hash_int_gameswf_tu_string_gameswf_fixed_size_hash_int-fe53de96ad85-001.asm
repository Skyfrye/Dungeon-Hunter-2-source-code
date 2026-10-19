; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00763c20, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9tu_stringENS_15fixed_size_hashIiEEE10find_indexERKi
; demangled: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >::find_index(int const&) const
; decoder-mode: arm
00763c20  30 00 2d e9                                      push {r4, r5}
00763c24  00 30 90 e5                                      ldr r3, [r0]
00763c28  00 00 53 e3                                      cmp r3, #0
00763c2c  02 00 00 1a                                      bne #0x763c3c
00763c30  00 00 e0 e3                                      mvn r0, #0
00763c34  30 00 bd e8                                      pop {r4, r5}
00763c38  1e ff 2f e1                                      bx lr
00763c3c  05 25 01 e3                                      movw r2, #0x1505
00763c40  04 00 a0 e3                                      mov r0, #4
00763c44  01 00 40 e2                                      sub r0, r0, #1
00763c48  00 40 d1 e7                                      ldrb r4, [r1, r0]
00763c4c  02 c3 a0 e1                                      lsl ip, r2, #6
00763c50  02 c8 8c e0                                      add ip, ip, r2, lsl #16
00763c54  04 c0 8c e0                                      add ip, ip, r4
00763c58  00 00 50 e3                                      cmp r0, #0
00763c5c  0c 20 62 e0                                      rsb r2, r2, ip
00763c60  f7 ff ff 1a                                      bne #0x763c44
00763c64  04 00 93 e5                                      ldr r0, [r3, #4]
00763c68  01 00 72 e3                                      cmn r2, #1
00763c6c  02 29 e0 03                                      mvneq r2, #0x8000
00763c70  00 40 02 e0                                      and r4, r2, r0
00763c74  04 c1 a0 e1                                      lsl ip, r4, #2
00763c78  01 c0 8c e2                                      add ip, ip, #1
00763c7c  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
00763c80  8c c1 83 e0                                      add ip, r3, ip, lsl #3
00763c84  02 00 75 e3                                      cmn r5, #2
00763c88  e8 ff ff 0a                                      beq #0x763c30
00763c8c  04 50 9c e5                                      ldr r5, [ip, #4]
00763c90  01 00 75 e3                                      cmn r5, #1
00763c94  04 00 a0 01                                      moveq r0, r4
00763c98  06 00 00 0a                                      beq #0x763cb8
00763c9c  05 00 00 e0                                      and r0, r0, r5
00763ca0  04 00 50 e1                                      cmp r0, r4
00763ca4  e1 ff ff 1a                                      bne #0x763c30
00763ca8  02 00 00 ea                                      b #0x763cb8
00763cac  80 c2 83 e0                                      add ip, r3, r0, lsl #5
00763cb0  08 c0 8c e2                                      add ip, ip, #8
00763cb4  04 50 9c e5                                      ldr r5, [ip, #4]
00763cb8  05 00 52 e1                                      cmp r2, r5
00763cbc  03 00 00 1a                                      bne #0x763cd0
00763cc0  08 50 9c e5                                      ldr r5, [ip, #8]
00763cc4  00 40 91 e5                                      ldr r4, [r1]
00763cc8  04 00 55 e1                                      cmp r5, r4
00763ccc  d8 ff ff 0a                                      beq #0x763c34
00763cd0  00 00 9c e5                                      ldr r0, [ip]
00763cd4  01 00 70 e3                                      cmn r0, #1
00763cd8  f3 ff ff 1a                                      bne #0x763cac
00763cdc  d4 ff ff ea                                      b #0x763c34

; FUNCTION 0x00765614, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9tu_stringENS_15fixed_size_hashIiEEE5clearEv
; demangled: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >::clear()
; decoder-mode: arm
00765614  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00765618  00 80 a0 e1                                      mov r8, r0
0076561c  00 00 90 e5                                      ldr r0, [r0]
00765620  00 00 50 e3                                      cmp r0, #0
00765624  21 00 00 0a                                      beq #0x7656b0
00765628  04 70 90 e5                                      ldr r7, [r0, #4]
0076562c  00 00 57 e3                                      cmp r7, #0
00765630  19 00 00 ba                                      blt #0x76569c
00765634  00 50 a0 e3                                      mov r5, #0
00765638  08 40 a0 e3                                      mov r4, #8
0076563c  01 90 e0 e3                                      mvn sb, #1
00765640  05 a0 a0 e1                                      mov sl, r5
00765644  04 00 00 ea                                      b #0x76565c
00765648  00 06 86 e8                                      stm r6, {sb, sl}
0076564c  00 00 98 e5                                      ldr r0, [r8]
00765650  05 00 57 e1                                      cmp r7, r5
00765654  20 40 84 e2                                      add r4, r4, #0x20
00765658  0e 00 00 ba                                      blt #0x765698
0076565c  04 30 90 e7                                      ldr r3, [r0, r4]
00765660  01 50 85 e2                                      add r5, r5, #1
00765664  04 60 80 e0                                      add r6, r0, r4
00765668  02 00 73 e3                                      cmn r3, #2
0076566c  f7 ff ff 0a                                      beq #0x765650
00765670  04 30 96 e5                                      ldr r3, [r6, #4]
00765674  01 00 73 e3                                      cmn r3, #1
00765678  f4 ff ff 0a                                      beq #0x765650
0076567c  dc 30 d6 e1                                      ldrsb r3, [r6, #0xc]
00765680  01 00 73 e3                                      cmn r3, #1
00765684  ef ff ff 1a                                      bne #0x765648
00765688  18 00 96 e5                                      ldr r0, [r6, #0x18]
0076568c  14 10 96 e5                                      ldr r1, [r6, #0x14]
00765690  28 b5 ff eb                                      bl #0x752b38
00765694  eb ff ff ea                                      b #0x765648
00765698  04 70 90 e5                                      ldr r7, [r0, #4]
0076569c  87 12 a0 e1                                      lsl r1, r7, #5
007656a0  28 10 81 e2                                      add r1, r1, #0x28
007656a4  23 b5 ff eb                                      bl #0x752b38
007656a8  00 30 a0 e3                                      mov r3, #0
007656ac  00 30 88 e5                                      str r3, [r8]
007656b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007679b0, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9tu_stringENS_15fixed_size_hashIiEEE3getERKiPS1_
; demangled: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >::get(int const&, gameswf::tu_string*) const
; decoder-mode: arm
007679b0  70 40 2d e9                                      push {r4, r5, r6, lr}
007679b4  02 40 a0 e1                                      mov r4, r2
007679b8  00 50 a0 e1                                      mov r5, r0
007679bc  97 f0 ff eb                                      bl #0x763c20
007679c0  00 30 50 e2                                      subs r3, r0, #0
007679c4  08 00 00 ba                                      blt #0x7679ec
007679c8  00 00 54 e3                                      cmp r4, #0
007679cc  08 00 00 0a                                      beq #0x7679f4
007679d0  00 20 95 e5                                      ldr r2, [r5]
007679d4  04 00 a0 e1                                      mov r0, r4
007679d8  83 32 82 e0                                      add r3, r2, r3, lsl #5
007679dc  14 10 83 e2                                      add r1, r3, #0x14
007679e0  5a ad ff eb                                      bl #0x752f50
007679e4  01 00 a0 e3                                      mov r0, #1
007679e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007679ec  00 00 a0 e3                                      mov r0, #0
007679f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007679f4  01 00 a0 e3                                      mov r0, #1
007679f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00767cb4, declared_size=396, range_size=396, mode=arm
; class-group: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9tu_stringENS_15fixed_size_hashIiEEE3addERKiRKS1_
; demangled: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >::add(int const&, gameswf::tu_string const&)
; decoder-mode: arm
00767cb4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00767cb8  00 50 a0 e1                                      mov r5, r0
00767cbc  0c d0 4d e2                                      sub sp, sp, #0xc
00767cc0  01 40 a0 e1                                      mov r4, r1
00767cc4  04 20 8d e5                                      str r2, [sp, #4]
00767cc8  ba 00 00 eb                                      bl #0x767fb8
00767ccc  00 20 95 e5                                      ldr r2, [r5]
00767cd0  05 65 01 e3                                      movw r6, #0x1505
00767cd4  04 30 a0 e3                                      mov r3, #4
00767cd8  00 10 92 e5                                      ldr r1, [r2]
00767cdc  01 10 81 e2                                      add r1, r1, #1
00767ce0  00 10 82 e5                                      str r1, [r2]
00767ce4  01 30 43 e2                                      sub r3, r3, #1
00767ce8  03 10 d4 e7                                      ldrb r1, [r4, r3]
00767cec  06 23 a0 e1                                      lsl r2, r6, #6
00767cf0  06 28 82 e0                                      add r2, r2, r6, lsl #16
00767cf4  01 20 82 e0                                      add r2, r2, r1
00767cf8  00 00 53 e3                                      cmp r3, #0
00767cfc  02 60 66 e0                                      rsb r6, r6, r2
00767d00  f7 ff ff 1a                                      bne #0x767ce4
00767d04  00 50 95 e5                                      ldr r5, [r5]
00767d08  01 00 76 e3                                      cmn r6, #1
00767d0c  02 69 e0 03                                      mvneq r6, #0x8000
00767d10  04 10 95 e5                                      ldr r1, [r5, #4]
00767d14  01 20 06 e0                                      and r2, r6, r1
00767d18  02 91 a0 e1                                      lsl sb, r2, #2
00767d1c  01 90 89 e2                                      add sb, sb, #1
00767d20  89 01 95 e7                                      ldr r0, [r5, sb, lsl #3]
00767d24  89 a1 85 e0                                      add sl, r5, sb, lsl #3
00767d28  02 00 70 e3                                      cmn r0, #2
00767d2c  00 30 e0 03                                      mvneq r3, #0
00767d30  89 31 85 07                                      streq r3, [r5, sb, lsl #3]
00767d34  28 00 00 0a                                      beq #0x767ddc
00767d38  04 c0 9a e5                                      ldr ip, [sl, #4]
00767d3c  01 00 7c e3                                      cmn ip, #1
00767d40  02 70 a0 11                                      movne r7, r2
00767d44  24 00 00 0a                                      beq #0x767ddc
00767d48  01 70 87 e2                                      add r7, r7, #1
00767d4c  01 70 07 e0                                      and r7, r7, r1
00767d50  07 31 a0 e1                                      lsl r3, r7, #2
00767d54  01 30 83 e2                                      add r3, r3, #1
00767d58  83 e1 95 e7                                      ldr lr, [r5, r3, lsl #3]
00767d5c  83 31 85 e0                                      add r3, r5, r3, lsl #3
00767d60  02 00 7e e3                                      cmn lr, #2
00767d64  f7 ff ff 1a                                      bne #0x767d48
00767d68  0c 10 01 e0                                      and r1, r1, ip
00767d6c  02 00 51 e1                                      cmp r1, r2
00767d70  21 00 00 0a                                      beq #0x767dfc
00767d74  01 11 a0 e1                                      lsl r1, r1, #2
00767d78  01 80 81 e2                                      add r8, r1, #1
00767d7c  88 11 95 e7                                      ldr r1, [r5, r8, lsl #3]
00767d80  88 81 85 e0                                      add r8, r5, r8, lsl #3
00767d84  02 00 51 e1                                      cmp r1, r2
00767d88  f9 ff ff 1a                                      bne #0x767d74
00767d8c  00 00 83 e5                                      str r0, [r3]
00767d90  04 20 9a e5                                      ldr r2, [sl, #4]
00767d94  0c b0 8a e2                                      add fp, sl, #0xc
00767d98  0c 00 83 e2                                      add r0, r3, #0xc
00767d9c  04 20 83 e5                                      str r2, [r3, #4]
00767da0  08 20 9a e5                                      ldr r2, [sl, #8]
00767da4  0b 10 a0 e1                                      mov r1, fp
00767da8  08 20 83 e5                                      str r2, [r3, #8]
00767dac  9e ac ff eb                                      bl #0x75302c
00767db0  00 70 88 e5                                      str r7, [r8]
00767db4  00 30 94 e5                                      ldr r3, [r4]
00767db8  04 10 9d e5                                      ldr r1, [sp, #4]
00767dbc  0b 00 a0 e1                                      mov r0, fp
00767dc0  08 30 8a e5                                      str r3, [sl, #8]
00767dc4  61 ac ff eb                                      bl #0x752f50
00767dc8  00 30 e0 e3                                      mvn r3, #0
00767dcc  04 60 8a e5                                      str r6, [sl, #4]
00767dd0  89 31 85 e7                                      str r3, [r5, sb, lsl #3]
00767dd4  0c d0 8d e2                                      add sp, sp, #0xc
00767dd8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00767ddc  04 60 8a e5                                      str r6, [sl, #4]
00767de0  00 30 94 e5                                      ldr r3, [r4]
00767de4  04 10 9d e5                                      ldr r1, [sp, #4]
00767de8  0c 00 8a e2                                      add r0, sl, #0xc
00767dec  08 30 8a e5                                      str r3, [sl, #8]
00767df0  0c d0 8d e2                                      add sp, sp, #0xc
00767df4  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00767df8  8b ac ff ea                                      b #0x75302c
00767dfc  00 00 83 e5                                      str r0, [r3]
00767e00  04 20 9a e5                                      ldr r2, [sl, #4]
00767e04  0c 80 8a e2                                      add r8, sl, #0xc
00767e08  0c 00 83 e2                                      add r0, r3, #0xc
00767e0c  04 20 83 e5                                      str r2, [r3, #4]
00767e10  08 20 9a e5                                      ldr r2, [sl, #8]
00767e14  08 10 a0 e1                                      mov r1, r8
00767e18  08 20 83 e5                                      str r2, [r3, #8]
00767e1c  82 ac ff eb                                      bl #0x75302c
00767e20  00 30 94 e5                                      ldr r3, [r4]
00767e24  04 10 9d e5                                      ldr r1, [sp, #4]
00767e28  08 00 a0 e1                                      mov r0, r8
00767e2c  08 30 8a e5                                      str r3, [sl, #8]
00767e30  46 ac ff eb                                      bl #0x752f50
00767e34  89 71 85 e7                                      str r7, [r5, sb, lsl #3]
00767e38  04 60 8a e5                                      str r6, [sl, #4]
00767e3c  e4 ff ff ea                                      b #0x767dd4

; FUNCTION 0x00767e40, declared_size=376, range_size=376, mode=arm
; class-group: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9tu_stringENS_15fixed_size_hashIiEEE16set_raw_capacityEi
; demangled: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
; decoder-mode: arm
00767e40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00767e44  00 00 51 e3                                      cmp r1, #0
00767e48  0c d0 4d e2                                      sub sp, sp, #0xc
00767e4c  00 a0 a0 e1                                      mov sl, r0
00767e50  55 00 00 da                                      ble #0x767fac
00767e54  01 00 41 e2                                      sub r0, r1, #1
00767e58  c1 9a ee eb                                      bl #0x30e964
00767e5c  14 98 ee eb                                      bl #0x30deb4
00767e60  18 12 07 e3                                      movw r1, #0x7218
00767e64  31 1f 43 e3                                      movt r1, #0x3f31
00767e68  89 9b ee eb                                      bl #0x30ec94
00767e6c  fe 15 a0 e3                                      mov r1, #0x3f800000
00767e70  4b 9b ee eb                                      bl #0x30eba4
00767e74  94 99 ee eb                                      bl #0x30e4cc
00767e78  01 40 a0 e3                                      mov r4, #1
00767e7c  14 40 a0 e1                                      lsl r4, r4, r0
00767e80  00 30 9a e5                                      ldr r3, [sl]
00767e84  04 00 54 e3                                      cmp r4, #4
00767e88  04 40 a0 b3                                      movlt r4, #4
00767e8c  00 00 53 e3                                      cmp r3, #0
00767e90  03 00 00 0a                                      beq #0x767ea4
00767e94  04 30 93 e5                                      ldr r3, [r3, #4]
00767e98  01 30 83 e2                                      add r3, r3, #1
00767e9c  04 00 53 e1                                      cmp r3, r4
00767ea0  42 00 00 0a                                      beq #0x767fb0
00767ea4  00 50 a0 e3                                      mov r5, #0
00767ea8  84 02 a0 e1                                      lsl r0, r4, #5
00767eac  08 00 80 e2                                      add r0, r0, #8
00767eb0  05 10 a0 e1                                      mov r1, r5
00767eb4  04 50 8d e5                                      str r5, [sp, #4]
00767eb8  37 ab ff eb                                      bl #0x752b9c
00767ebc  04 00 8d e5                                      str r0, [sp, #4]
00767ec0  00 50 80 e5                                      str r5, [r0]
00767ec4  04 30 9d e5                                      ldr r3, [sp, #4]
00767ec8  01 20 44 e2                                      sub r2, r4, #1
00767ecc  01 90 e0 e3                                      mvn sb, #1
00767ed0  04 20 83 e5                                      str r2, [r3, #4]
00767ed4  08 30 a0 e3                                      mov r3, #8
00767ed8  04 20 9d e5                                      ldr r2, [sp, #4]
00767edc  01 50 85 e2                                      add r5, r5, #1
00767ee0  05 00 54 e1                                      cmp r4, r5
00767ee4  03 90 82 e7                                      str sb, [r2, r3]
00767ee8  20 30 83 e2                                      add r3, r3, #0x20
00767eec  f9 ff ff ca                                      bgt #0x767ed8
00767ef0  00 30 9a e5                                      ldr r3, [sl]
00767ef4  00 00 53 e3                                      cmp r3, #0
00767ef8  04 80 8d 02                                      addeq r8, sp, #4
00767efc  25 00 00 0a                                      beq #0x767f98
00767f00  04 70 93 e5                                      ldr r7, [r3, #4]
00767f04  00 00 57 e3                                      cmp r7, #0
00767f08  04 80 8d b2                                      addlt r8, sp, #4
00767f0c  1d 00 00 ba                                      blt #0x767f88
00767f10  00 60 a0 e3                                      mov r6, #0
00767f14  08 50 a0 e3                                      mov r5, #8
00767f18  04 80 8d e2                                      add r8, sp, #4
00767f1c  06 b0 a0 e1                                      mov fp, r6
00767f20  04 00 00 ea                                      b #0x767f38
00767f24  00 0a 84 e8                                      stm r4, {sb, fp}
00767f28  00 30 9a e5                                      ldr r3, [sl]
00767f2c  06 00 57 e1                                      cmp r7, r6
00767f30  20 50 85 e2                                      add r5, r5, #0x20
00767f34  12 00 00 ba                                      blt #0x767f84
00767f38  05 c0 93 e7                                      ldr ip, [r3, r5]
00767f3c  05 40 83 e0                                      add r4, r3, r5
00767f40  08 00 a0 e1                                      mov r0, r8
00767f44  02 00 7c e3                                      cmn ip, #2
00767f48  01 60 86 e2                                      add r6, r6, #1
00767f4c  08 10 84 e2                                      add r1, r4, #8
00767f50  0c 20 84 e2                                      add r2, r4, #0xc
00767f54  f4 ff ff 0a                                      beq #0x767f2c
00767f58  04 c0 94 e5                                      ldr ip, [r4, #4]
00767f5c  01 00 7c e3                                      cmn ip, #1
00767f60  f1 ff ff 0a                                      beq #0x767f2c
00767f64  52 ff ff eb                                      bl #0x767cb4
00767f68  dc 30 d4 e1                                      ldrsb r3, [r4, #0xc]
00767f6c  01 00 73 e3                                      cmn r3, #1
00767f70  eb ff ff 1a                                      bne #0x767f24
00767f74  18 00 94 e5                                      ldr r0, [r4, #0x18]
00767f78  14 10 94 e5                                      ldr r1, [r4, #0x14]
00767f7c  ed aa ff eb                                      bl #0x752b38
00767f80  e7 ff ff ea                                      b #0x767f24
00767f84  04 70 93 e5                                      ldr r7, [r3, #4]
00767f88  87 12 a0 e1                                      lsl r1, r7, #5
00767f8c  03 00 a0 e1                                      mov r0, r3
00767f90  28 10 81 e2                                      add r1, r1, #0x28
00767f94  e7 aa ff eb                                      bl #0x752b38
00767f98  04 30 9d e5                                      ldr r3, [sp, #4]
00767f9c  08 00 a0 e1                                      mov r0, r8
00767fa0  00 30 8a e5                                      str r3, [sl]
00767fa4  00 30 a0 e3                                      mov r3, #0
00767fa8  04 30 8d e5                                      str r3, [sp, #4]
00767fac  98 f5 ff eb                                      bl #0x765614
00767fb0  0c d0 8d e2                                      add sp, sp, #0xc
00767fb4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00767fb8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9tu_stringENS_15fixed_size_hashIiEEE12check_expandEv
; demangled: gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >::check_expand()
; decoder-mode: arm
00767fb8  00 30 90 e5                                      ldr r3, [r0]
00767fbc  00 00 53 e3                                      cmp r3, #0
00767fc0  07 00 00 0a                                      beq #0x767fe4
00767fc4  04 10 93 e5                                      ldr r1, [r3, #4]
00767fc8  00 30 93 e5                                      ldr r3, [r3]
00767fcc  01 10 81 e2                                      add r1, r1, #1
00767fd0  81 10 a0 e1                                      lsl r1, r1, #1
00767fd4  83 30 83 e0                                      add r3, r3, r3, lsl #1
00767fd8  01 00 53 e1                                      cmp r3, r1
00767fdc  1e ff 2f d1                                      bxle lr
00767fe0  96 ff ff ea                                      b #0x767e40
00767fe4  08 10 a0 e3                                      mov r1, #8
00767fe8  94 ff ff ea                                      b #0x767e40
