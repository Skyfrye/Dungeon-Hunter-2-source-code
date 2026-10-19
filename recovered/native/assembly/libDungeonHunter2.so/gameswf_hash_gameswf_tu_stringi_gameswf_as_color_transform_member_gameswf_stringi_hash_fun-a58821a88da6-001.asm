; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d9ce8, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_color_transform_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_25as_color_transform_memberENS_20stringi_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_color_transform_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::clear()
; decoder-mode: arm
007d9ce8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007d9cec  00 80 a0 e1                                      mov r8, r0
007d9cf0  00 00 90 e5                                      ldr r0, [r0]
007d9cf4  00 00 50 e3                                      cmp r0, #0
007d9cf8  21 00 00 0a                                      beq #0x7d9d84
007d9cfc  04 70 90 e5                                      ldr r7, [r0, #4]
007d9d00  00 00 57 e3                                      cmp r7, #0
007d9d04  19 00 00 ba                                      blt #0x7d9d70
007d9d08  00 50 a0 e3                                      mov r5, #0
007d9d0c  08 40 a0 e3                                      mov r4, #8
007d9d10  01 90 e0 e3                                      mvn sb, #1
007d9d14  05 a0 a0 e1                                      mov sl, r5
007d9d18  04 00 00 ea                                      b #0x7d9d30
007d9d1c  00 06 86 e8                                      stm r6, {sb, sl}
007d9d20  00 00 98 e5                                      ldr r0, [r8]
007d9d24  05 00 57 e1                                      cmp r7, r5
007d9d28  20 40 84 e2                                      add r4, r4, #0x20
007d9d2c  0e 00 00 ba                                      blt #0x7d9d6c
007d9d30  04 30 90 e7                                      ldr r3, [r0, r4]
007d9d34  01 50 85 e2                                      add r5, r5, #1
007d9d38  04 60 80 e0                                      add r6, r0, r4
007d9d3c  02 00 73 e3                                      cmn r3, #2
007d9d40  f7 ff ff 0a                                      beq #0x7d9d24
007d9d44  04 30 96 e5                                      ldr r3, [r6, #4]
007d9d48  01 00 73 e3                                      cmn r3, #1
007d9d4c  f4 ff ff 0a                                      beq #0x7d9d24
007d9d50  d8 30 d6 e1                                      ldrsb r3, [r6, #8]
007d9d54  01 00 73 e3                                      cmn r3, #1
007d9d58  ef ff ff 1a                                      bne #0x7d9d1c
007d9d5c  14 00 96 e5                                      ldr r0, [r6, #0x14]
007d9d60  10 10 96 e5                                      ldr r1, [r6, #0x10]
007d9d64  73 e3 fd eb                                      bl #0x752b38
007d9d68  eb ff ff ea                                      b #0x7d9d1c
007d9d6c  04 70 90 e5                                      ldr r7, [r0, #4]
007d9d70  87 12 a0 e1                                      lsl r1, r7, #5
007d9d74  28 10 81 e2                                      add r1, r1, #0x28
007d9d78  6e e3 fd eb                                      bl #0x752b38
007d9d7c  00 30 a0 e3                                      mov r3, #0
007d9d80  00 30 88 e5                                      str r3, [r8]
007d9d84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007d9d9c, declared_size=508, range_size=508, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_color_transform_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_25as_color_transform_memberENS_20stringi_hash_functorIS1_EEE3addERKS1_RKS2_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_color_transform_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::add(gameswf::tu_stringi const&, gameswf::as_color_transform_member const&)
; decoder-mode: arm
007d9d9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d9da0  00 50 a0 e1                                      mov r5, r0
007d9da4  0c d0 4d e2                                      sub sp, sp, #0xc
007d9da8  01 40 a0 e1                                      mov r4, r1
007d9dac  04 20 8d e5                                      str r2, [sp, #4]
007d9db0  d6 00 00 eb                                      bl #0x7da110
007d9db4  00 30 95 e5                                      ldr r3, [r5]
007d9db8  00 20 93 e5                                      ldr r2, [r3]
007d9dbc  01 20 82 e2                                      add r2, r2, #1
007d9dc0  00 20 83 e5                                      str r2, [r3]
007d9dc4  10 e0 94 e5                                      ldr lr, [r4, #0x10]
007d9dc8  ff 34 e0 e3                                      mvn r3, #0xff000000
007d9dcc  ff 24 ce e3                                      bic r2, lr, #0xff000000
007d9dd0  03 00 52 e1                                      cmp r2, r3
007d9dd4  5e 90 b7 17                                      sbfxne sb, lr, #0, #0x18
007d9dd8  38 00 00 0a                                      beq #0x7d9ec0
007d9ddc  00 50 95 e5                                      ldr r5, [r5]
007d9de0  01 00 79 e3                                      cmn sb, #1
007d9de4  02 99 e0 03                                      mvneq sb, #0x8000
007d9de8  04 30 95 e5                                      ldr r3, [r5, #4]
007d9dec  03 20 09 e0                                      and r2, sb, r3
007d9df0  02 b1 a0 e1                                      lsl fp, r2, #2
007d9df4  01 b0 8b e2                                      add fp, fp, #1
007d9df8  8b 11 95 e7                                      ldr r1, [r5, fp, lsl #3]
007d9dfc  8b a1 85 e0                                      add sl, r5, fp, lsl #3
007d9e00  02 00 71 e3                                      cmn r1, #2
007d9e04  00 30 e0 03                                      mvneq r3, #0
007d9e08  8b 31 85 07                                      streq r3, [r5, fp, lsl #3]
007d9e0c  47 00 00 0a                                      beq #0x7d9f30
007d9e10  04 c0 9a e5                                      ldr ip, [sl, #4]
007d9e14  01 00 7c e3                                      cmn ip, #1
007d9e18  02 60 a0 11                                      movne r6, r2
007d9e1c  43 00 00 0a                                      beq #0x7d9f30
007d9e20  01 60 86 e2                                      add r6, r6, #1
007d9e24  03 60 06 e0                                      and r6, r6, r3
007d9e28  06 71 a0 e1                                      lsl r7, r6, #2
007d9e2c  01 70 87 e2                                      add r7, r7, #1
007d9e30  87 01 95 e7                                      ldr r0, [r5, r7, lsl #3]
007d9e34  87 71 85 e0                                      add r7, r5, r7, lsl #3
007d9e38  02 00 70 e3                                      cmn r0, #2
007d9e3c  f7 ff ff 1a                                      bne #0x7d9e20
007d9e40  0c 30 03 e0                                      and r3, r3, ip
007d9e44  02 00 53 e1                                      cmp r3, r2
007d9e48  40 00 00 0a                                      beq #0x7d9f50
007d9e4c  03 81 a0 e1                                      lsl r8, r3, #2
007d9e50  01 80 88 e2                                      add r8, r8, #1
007d9e54  88 31 95 e7                                      ldr r3, [r5, r8, lsl #3]
007d9e58  88 81 85 e0                                      add r8, r5, r8, lsl #3
007d9e5c  02 00 53 e1                                      cmp r3, r2
007d9e60  f9 ff ff 1a                                      bne #0x7d9e4c
007d9e64  00 10 87 e5                                      str r1, [r7]
007d9e68  04 20 9a e5                                      ldr r2, [sl, #4]
007d9e6c  08 30 8a e2                                      add r3, sl, #8
007d9e70  03 10 a0 e1                                      mov r1, r3
007d9e74  04 20 87 e5                                      str r2, [r7, #4]
007d9e78  08 00 87 e2                                      add r0, r7, #8
007d9e7c  00 30 8d e5                                      str r3, [sp]
007d9e80  69 e4 fd eb                                      bl #0x75302c
007d9e84  00 30 9d e5                                      ldr r3, [sp]
007d9e88  1c 20 9a e5                                      ldr r2, [sl, #0x1c]
007d9e8c  04 10 a0 e1                                      mov r1, r4
007d9e90  03 00 a0 e1                                      mov r0, r3
007d9e94  1c 20 87 e5                                      str r2, [r7, #0x1c]
007d9e98  00 60 88 e5                                      str r6, [r8]
007d9e9c  2b e4 fd eb                                      bl #0x752f50
007d9ea0  04 20 9d e5                                      ldr r2, [sp, #4]
007d9ea4  00 30 92 e5                                      ldr r3, [r2]
007d9ea8  04 90 8a e5                                      str sb, [sl, #4]
007d9eac  1c 30 8a e5                                      str r3, [sl, #0x1c]
007d9eb0  00 30 e0 e3                                      mvn r3, #0
007d9eb4  8b 31 85 e7                                      str r3, [r5, fp, lsl #3]
007d9eb8  0c d0 8d e2                                      add sp, sp, #0xc
007d9ebc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d9ec0  d0 30 d4 e1                                      ldrsb r3, [r4]
007d9ec4  01 00 73 e3                                      cmn r3, #1
007d9ec8  04 30 94 05                                      ldreq r3, [r4, #4]
007d9ecc  01 30 43 12                                      subne r3, r3, #1
007d9ed0  01 c0 84 12                                      addne ip, r4, #1
007d9ed4  01 30 43 02                                      subeq r3, r3, #1
007d9ed8  0c c0 94 05                                      ldreq ip, [r4, #0xc]
007d9edc  00 00 53 e3                                      cmp r3, #0
007d9ee0  05 95 01 d3                                      movwle sb, #0x1505
007d9ee4  09 20 a0 d1                                      movle r2, sb
007d9ee8  0d 00 00 da                                      ble #0x7d9f24
007d9eec  03 30 8c e0                                      add r3, ip, r3
007d9ef0  05 25 01 e3                                      movw r2, #0x1505
007d9ef4  01 10 53 e5                                      ldrb r1, [r3, #-1]
007d9ef8  01 30 43 e2                                      sub r3, r3, #1
007d9efc  82 22 82 e0                                      add r2, r2, r2, lsl #5
007d9f00  41 00 41 e2                                      sub r0, r1, #0x41
007d9f04  70 00 ef e6                                      uxtb r0, r0
007d9f08  19 00 50 e3                                      cmp r0, #0x19
007d9f0c  20 10 81 92                                      addls r1, r1, #0x20
007d9f10  0c 00 53 e1                                      cmp r3, ip
007d9f14  02 20 21 e0                                      eor r2, r1, r2
007d9f18  f5 ff ff 1a                                      bne #0x7d9ef4
007d9f1c  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
007d9f20  02 90 a0 e1                                      mov sb, r2
007d9f24  12 e0 d7 e7                                      bfi lr, r2, #0, #0x18
007d9f28  10 e0 84 e5                                      str lr, [r4, #0x10]
007d9f2c  aa ff ff ea                                      b #0x7d9ddc
007d9f30  04 90 8a e5                                      str sb, [sl, #4]
007d9f34  04 10 a0 e1                                      mov r1, r4
007d9f38  08 00 8a e2                                      add r0, sl, #8
007d9f3c  3a e4 fd eb                                      bl #0x75302c
007d9f40  04 20 9d e5                                      ldr r2, [sp, #4]
007d9f44  00 30 92 e5                                      ldr r3, [r2]
007d9f48  1c 30 8a e5                                      str r3, [sl, #0x1c]
007d9f4c  d9 ff ff ea                                      b #0x7d9eb8
007d9f50  00 10 87 e5                                      str r1, [r7]
007d9f54  04 30 9a e5                                      ldr r3, [sl, #4]
007d9f58  08 80 8a e2                                      add r8, sl, #8
007d9f5c  08 10 a0 e1                                      mov r1, r8
007d9f60  04 30 87 e5                                      str r3, [r7, #4]
007d9f64  08 00 87 e2                                      add r0, r7, #8
007d9f68  2f e4 fd eb                                      bl #0x75302c
007d9f6c  1c 30 9a e5                                      ldr r3, [sl, #0x1c]
007d9f70  08 00 a0 e1                                      mov r0, r8
007d9f74  04 10 a0 e1                                      mov r1, r4
007d9f78  1c 30 87 e5                                      str r3, [r7, #0x1c]
007d9f7c  f3 e3 fd eb                                      bl #0x752f50
007d9f80  04 20 9d e5                                      ldr r2, [sp, #4]
007d9f84  00 30 92 e5                                      ldr r3, [r2]
007d9f88  1c 30 8a e5                                      str r3, [sl, #0x1c]
007d9f8c  8b 61 85 e7                                      str r6, [r5, fp, lsl #3]
007d9f90  04 90 8a e5                                      str sb, [sl, #4]
007d9f94  c7 ff ff ea                                      b #0x7d9eb8

; FUNCTION 0x007d9f98, declared_size=376, range_size=376, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_color_transform_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_25as_color_transform_memberENS_20stringi_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_color_transform_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
; decoder-mode: arm
007d9f98  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d9f9c  00 00 51 e3                                      cmp r1, #0
007d9fa0  0c d0 4d e2                                      sub sp, sp, #0xc
007d9fa4  00 a0 a0 e1                                      mov sl, r0
007d9fa8  55 00 00 da                                      ble #0x7da104
007d9fac  01 00 41 e2                                      sub r0, r1, #1
007d9fb0  6b d2 ec eb                                      bl #0x30e964
007d9fb4  be cf ec eb                                      bl #0x30deb4
007d9fb8  18 12 07 e3                                      movw r1, #0x7218
007d9fbc  31 1f 43 e3                                      movt r1, #0x3f31
007d9fc0  33 d3 ec eb                                      bl #0x30ec94
007d9fc4  fe 15 a0 e3                                      mov r1, #0x3f800000
007d9fc8  f5 d2 ec eb                                      bl #0x30eba4
007d9fcc  3e d1 ec eb                                      bl #0x30e4cc
007d9fd0  01 40 a0 e3                                      mov r4, #1
007d9fd4  14 40 a0 e1                                      lsl r4, r4, r0
007d9fd8  00 30 9a e5                                      ldr r3, [sl]
007d9fdc  04 00 54 e3                                      cmp r4, #4
007d9fe0  04 40 a0 b3                                      movlt r4, #4
007d9fe4  00 00 53 e3                                      cmp r3, #0
007d9fe8  03 00 00 0a                                      beq #0x7d9ffc
007d9fec  04 30 93 e5                                      ldr r3, [r3, #4]
007d9ff0  01 30 83 e2                                      add r3, r3, #1
007d9ff4  04 00 53 e1                                      cmp r3, r4
007d9ff8  42 00 00 0a                                      beq #0x7da108
007d9ffc  00 50 a0 e3                                      mov r5, #0
007da000  84 02 a0 e1                                      lsl r0, r4, #5
007da004  08 00 80 e2                                      add r0, r0, #8
007da008  05 10 a0 e1                                      mov r1, r5
007da00c  04 50 8d e5                                      str r5, [sp, #4]
007da010  e1 e2 fd eb                                      bl #0x752b9c
007da014  04 00 8d e5                                      str r0, [sp, #4]
007da018  00 50 80 e5                                      str r5, [r0]
007da01c  04 30 9d e5                                      ldr r3, [sp, #4]
007da020  01 20 44 e2                                      sub r2, r4, #1
007da024  01 90 e0 e3                                      mvn sb, #1
007da028  04 20 83 e5                                      str r2, [r3, #4]
007da02c  08 30 a0 e3                                      mov r3, #8
007da030  04 20 9d e5                                      ldr r2, [sp, #4]
007da034  01 50 85 e2                                      add r5, r5, #1
007da038  05 00 54 e1                                      cmp r4, r5
007da03c  03 90 82 e7                                      str sb, [r2, r3]
007da040  20 30 83 e2                                      add r3, r3, #0x20
007da044  f9 ff ff ca                                      bgt #0x7da030
007da048  00 30 9a e5                                      ldr r3, [sl]
007da04c  00 00 53 e3                                      cmp r3, #0
007da050  04 80 8d 02                                      addeq r8, sp, #4
007da054  25 00 00 0a                                      beq #0x7da0f0
007da058  04 70 93 e5                                      ldr r7, [r3, #4]
007da05c  00 00 57 e3                                      cmp r7, #0
007da060  04 80 8d b2                                      addlt r8, sp, #4
007da064  1d 00 00 ba                                      blt #0x7da0e0
007da068  00 60 a0 e3                                      mov r6, #0
007da06c  08 50 a0 e3                                      mov r5, #8
007da070  04 80 8d e2                                      add r8, sp, #4
007da074  06 b0 a0 e1                                      mov fp, r6
007da078  04 00 00 ea                                      b #0x7da090
007da07c  00 0a 84 e8                                      stm r4, {sb, fp}
007da080  00 30 9a e5                                      ldr r3, [sl]
007da084  06 00 57 e1                                      cmp r7, r6
007da088  20 50 85 e2                                      add r5, r5, #0x20
007da08c  12 00 00 ba                                      blt #0x7da0dc
007da090  05 c0 93 e7                                      ldr ip, [r3, r5]
007da094  05 40 83 e0                                      add r4, r3, r5
007da098  08 00 a0 e1                                      mov r0, r8
007da09c  02 00 7c e3                                      cmn ip, #2
007da0a0  01 60 86 e2                                      add r6, r6, #1
007da0a4  08 10 84 e2                                      add r1, r4, #8
007da0a8  1c 20 84 e2                                      add r2, r4, #0x1c
007da0ac  f4 ff ff 0a                                      beq #0x7da084
007da0b0  04 c0 94 e5                                      ldr ip, [r4, #4]
007da0b4  01 00 7c e3                                      cmn ip, #1
007da0b8  f1 ff ff 0a                                      beq #0x7da084
007da0bc  36 ff ff eb                                      bl #0x7d9d9c
007da0c0  d8 30 d4 e1                                      ldrsb r3, [r4, #8]
007da0c4  01 00 73 e3                                      cmn r3, #1
007da0c8  eb ff ff 1a                                      bne #0x7da07c
007da0cc  14 00 94 e5                                      ldr r0, [r4, #0x14]
007da0d0  10 10 94 e5                                      ldr r1, [r4, #0x10]
007da0d4  97 e2 fd eb                                      bl #0x752b38
007da0d8  e7 ff ff ea                                      b #0x7da07c
007da0dc  04 70 93 e5                                      ldr r7, [r3, #4]
007da0e0  87 12 a0 e1                                      lsl r1, r7, #5
007da0e4  03 00 a0 e1                                      mov r0, r3
007da0e8  28 10 81 e2                                      add r1, r1, #0x28
007da0ec  91 e2 fd eb                                      bl #0x752b38
007da0f0  04 30 9d e5                                      ldr r3, [sp, #4]
007da0f4  08 00 a0 e1                                      mov r0, r8
007da0f8  00 30 8a e5                                      str r3, [sl]
007da0fc  00 30 a0 e3                                      mov r3, #0
007da100  04 30 8d e5                                      str r3, [sp, #4]
007da104  f7 fe ff eb                                      bl #0x7d9ce8
007da108  0c d0 8d e2                                      add sp, sp, #0xc
007da10c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007da110, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_color_transform_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_25as_color_transform_memberENS_20stringi_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_color_transform_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::check_expand()
; decoder-mode: arm
007da110  00 30 90 e5                                      ldr r3, [r0]
007da114  00 00 53 e3                                      cmp r3, #0
007da118  07 00 00 0a                                      beq #0x7da13c
007da11c  04 10 93 e5                                      ldr r1, [r3, #4]
007da120  00 30 93 e5                                      ldr r3, [r3]
007da124  01 10 81 e2                                      add r1, r1, #1
007da128  81 10 a0 e1                                      lsl r1, r1, #1
007da12c  83 30 83 e0                                      add r3, r3, r3, lsl #1
007da130  01 00 53 e1                                      cmp r3, r1
007da134  1e ff 2f d1                                      bxle lr
007da138  96 ff ff ea                                      b #0x7d9f98
007da13c  08 10 a0 e3                                      mov r1, #8
007da140  94 ff ff ea                                      b #0x7d9f98
