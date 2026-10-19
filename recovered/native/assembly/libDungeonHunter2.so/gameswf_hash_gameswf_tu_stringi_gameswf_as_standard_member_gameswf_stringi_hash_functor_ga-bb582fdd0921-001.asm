; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076db08, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_standard_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_18as_standard_memberENS_20stringi_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_standard_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::clear()
; decoder-mode: arm
0076db08  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0076db0c  00 80 a0 e1                                      mov r8, r0
0076db10  00 00 90 e5                                      ldr r0, [r0]
0076db14  00 00 50 e3                                      cmp r0, #0
0076db18  21 00 00 0a                                      beq #0x76dba4
0076db1c  04 70 90 e5                                      ldr r7, [r0, #4]
0076db20  00 00 57 e3                                      cmp r7, #0
0076db24  19 00 00 ba                                      blt #0x76db90
0076db28  00 50 a0 e3                                      mov r5, #0
0076db2c  08 40 a0 e3                                      mov r4, #8
0076db30  01 90 e0 e3                                      mvn sb, #1
0076db34  05 a0 a0 e1                                      mov sl, r5
0076db38  04 00 00 ea                                      b #0x76db50
0076db3c  00 06 86 e8                                      stm r6, {sb, sl}
0076db40  00 00 98 e5                                      ldr r0, [r8]
0076db44  05 00 57 e1                                      cmp r7, r5
0076db48  20 40 84 e2                                      add r4, r4, #0x20
0076db4c  0e 00 00 ba                                      blt #0x76db8c
0076db50  04 30 90 e7                                      ldr r3, [r0, r4]
0076db54  01 50 85 e2                                      add r5, r5, #1
0076db58  04 60 80 e0                                      add r6, r0, r4
0076db5c  02 00 73 e3                                      cmn r3, #2
0076db60  f7 ff ff 0a                                      beq #0x76db44
0076db64  04 30 96 e5                                      ldr r3, [r6, #4]
0076db68  01 00 73 e3                                      cmn r3, #1
0076db6c  f4 ff ff 0a                                      beq #0x76db44
0076db70  d8 30 d6 e1                                      ldrsb r3, [r6, #8]
0076db74  01 00 73 e3                                      cmn r3, #1
0076db78  ef ff ff 1a                                      bne #0x76db3c
0076db7c  14 00 96 e5                                      ldr r0, [r6, #0x14]
0076db80  10 10 96 e5                                      ldr r1, [r6, #0x10]
0076db84  eb 93 ff eb                                      bl #0x752b38
0076db88  eb ff ff ea                                      b #0x76db3c
0076db8c  04 70 90 e5                                      ldr r7, [r0, #4]
0076db90  87 12 a0 e1                                      lsl r1, r7, #5
0076db94  28 10 81 e2                                      add r1, r1, #0x28
0076db98  e6 93 ff eb                                      bl #0x752b38
0076db9c  00 30 a0 e3                                      mov r3, #0
0076dba0  00 30 88 e5                                      str r3, [r8]
0076dba4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0076dbd0, declared_size=376, range_size=376, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_standard_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_18as_standard_memberENS_20stringi_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_standard_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
; decoder-mode: arm
0076dbd0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076dbd4  00 00 51 e3                                      cmp r1, #0
0076dbd8  0c d0 4d e2                                      sub sp, sp, #0xc
0076dbdc  00 a0 a0 e1                                      mov sl, r0
0076dbe0  55 00 00 da                                      ble #0x76dd3c
0076dbe4  01 00 41 e2                                      sub r0, r1, #1
0076dbe8  5d 83 ee eb                                      bl #0x30e964
0076dbec  b0 80 ee eb                                      bl #0x30deb4
0076dbf0  18 12 07 e3                                      movw r1, #0x7218
0076dbf4  31 1f 43 e3                                      movt r1, #0x3f31
0076dbf8  25 84 ee eb                                      bl #0x30ec94
0076dbfc  fe 15 a0 e3                                      mov r1, #0x3f800000
0076dc00  e7 83 ee eb                                      bl #0x30eba4
0076dc04  30 82 ee eb                                      bl #0x30e4cc
0076dc08  01 40 a0 e3                                      mov r4, #1
0076dc0c  14 40 a0 e1                                      lsl r4, r4, r0
0076dc10  00 30 9a e5                                      ldr r3, [sl]
0076dc14  04 00 54 e3                                      cmp r4, #4
0076dc18  04 40 a0 b3                                      movlt r4, #4
0076dc1c  00 00 53 e3                                      cmp r3, #0
0076dc20  03 00 00 0a                                      beq #0x76dc34
0076dc24  04 30 93 e5                                      ldr r3, [r3, #4]
0076dc28  01 30 83 e2                                      add r3, r3, #1
0076dc2c  04 00 53 e1                                      cmp r3, r4
0076dc30  42 00 00 0a                                      beq #0x76dd40
0076dc34  00 50 a0 e3                                      mov r5, #0
0076dc38  84 02 a0 e1                                      lsl r0, r4, #5
0076dc3c  08 00 80 e2                                      add r0, r0, #8
0076dc40  05 10 a0 e1                                      mov r1, r5
0076dc44  04 50 8d e5                                      str r5, [sp, #4]
0076dc48  d3 93 ff eb                                      bl #0x752b9c
0076dc4c  04 00 8d e5                                      str r0, [sp, #4]
0076dc50  00 50 80 e5                                      str r5, [r0]
0076dc54  04 30 9d e5                                      ldr r3, [sp, #4]
0076dc58  01 20 44 e2                                      sub r2, r4, #1
0076dc5c  01 90 e0 e3                                      mvn sb, #1
0076dc60  04 20 83 e5                                      str r2, [r3, #4]
0076dc64  08 30 a0 e3                                      mov r3, #8
0076dc68  04 20 9d e5                                      ldr r2, [sp, #4]
0076dc6c  01 50 85 e2                                      add r5, r5, #1
0076dc70  05 00 54 e1                                      cmp r4, r5
0076dc74  03 90 82 e7                                      str sb, [r2, r3]
0076dc78  20 30 83 e2                                      add r3, r3, #0x20
0076dc7c  f9 ff ff ca                                      bgt #0x76dc68
0076dc80  00 30 9a e5                                      ldr r3, [sl]
0076dc84  00 00 53 e3                                      cmp r3, #0
0076dc88  04 80 8d 02                                      addeq r8, sp, #4
0076dc8c  25 00 00 0a                                      beq #0x76dd28
0076dc90  04 70 93 e5                                      ldr r7, [r3, #4]
0076dc94  00 00 57 e3                                      cmp r7, #0
0076dc98  04 80 8d b2                                      addlt r8, sp, #4
0076dc9c  1d 00 00 ba                                      blt #0x76dd18
0076dca0  00 60 a0 e3                                      mov r6, #0
0076dca4  08 50 a0 e3                                      mov r5, #8
0076dca8  04 80 8d e2                                      add r8, sp, #4
0076dcac  06 b0 a0 e1                                      mov fp, r6
0076dcb0  04 00 00 ea                                      b #0x76dcc8
0076dcb4  00 0a 84 e8                                      stm r4, {sb, fp}
0076dcb8  00 30 9a e5                                      ldr r3, [sl]
0076dcbc  06 00 57 e1                                      cmp r7, r6
0076dcc0  20 50 85 e2                                      add r5, r5, #0x20
0076dcc4  12 00 00 ba                                      blt #0x76dd14
0076dcc8  05 c0 93 e7                                      ldr ip, [r3, r5]
0076dccc  05 40 83 e0                                      add r4, r3, r5
0076dcd0  08 00 a0 e1                                      mov r0, r8
0076dcd4  02 00 7c e3                                      cmn ip, #2
0076dcd8  01 60 86 e2                                      add r6, r6, #1
0076dcdc  08 10 84 e2                                      add r1, r4, #8
0076dce0  1c 20 84 e2                                      add r2, r4, #0x1c
0076dce4  f4 ff ff 0a                                      beq #0x76dcbc
0076dce8  04 c0 94 e5                                      ldr ip, [r4, #4]
0076dcec  01 00 7c e3                                      cmn ip, #1
0076dcf0  f1 ff ff 0a                                      beq #0x76dcbc
0076dcf4  20 00 00 eb                                      bl #0x76dd7c
0076dcf8  d8 30 d4 e1                                      ldrsb r3, [r4, #8]
0076dcfc  01 00 73 e3                                      cmn r3, #1
0076dd00  eb ff ff 1a                                      bne #0x76dcb4
0076dd04  14 00 94 e5                                      ldr r0, [r4, #0x14]
0076dd08  10 10 94 e5                                      ldr r1, [r4, #0x10]
0076dd0c  89 93 ff eb                                      bl #0x752b38
0076dd10  e7 ff ff ea                                      b #0x76dcb4
0076dd14  04 70 93 e5                                      ldr r7, [r3, #4]
0076dd18  87 12 a0 e1                                      lsl r1, r7, #5
0076dd1c  03 00 a0 e1                                      mov r0, r3
0076dd20  28 10 81 e2                                      add r1, r1, #0x28
0076dd24  83 93 ff eb                                      bl #0x752b38
0076dd28  04 30 9d e5                                      ldr r3, [sp, #4]
0076dd2c  08 00 a0 e1                                      mov r0, r8
0076dd30  00 30 8a e5                                      str r3, [sl]
0076dd34  00 30 a0 e3                                      mov r3, #0
0076dd38  04 30 8d e5                                      str r3, [sp, #4]
0076dd3c  71 ff ff eb                                      bl #0x76db08
0076dd40  0c d0 8d e2                                      add sp, sp, #0xc
0076dd44  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0076dd48, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_standard_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_18as_standard_memberENS_20stringi_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_standard_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::check_expand()
; decoder-mode: arm
0076dd48  00 30 90 e5                                      ldr r3, [r0]
0076dd4c  00 00 53 e3                                      cmp r3, #0
0076dd50  07 00 00 0a                                      beq #0x76dd74
0076dd54  04 10 93 e5                                      ldr r1, [r3, #4]
0076dd58  00 30 93 e5                                      ldr r3, [r3]
0076dd5c  01 10 81 e2                                      add r1, r1, #1
0076dd60  81 10 a0 e1                                      lsl r1, r1, #1
0076dd64  83 30 83 e0                                      add r3, r3, r3, lsl #1
0076dd68  01 00 53 e1                                      cmp r3, r1
0076dd6c  1e ff 2f d1                                      bxle lr
0076dd70  96 ff ff ea                                      b #0x76dbd0
0076dd74  08 10 a0 e3                                      mov r1, #8
0076dd78  94 ff ff ea                                      b #0x76dbd0

; FUNCTION 0x0076dd7c, declared_size=508, range_size=508, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_standard_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_18as_standard_memberENS_20stringi_hash_functorIS1_EEE3addERKS1_RKS2_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_standard_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::add(gameswf::tu_stringi const&, gameswf::as_standard_member const&)
; decoder-mode: arm
0076dd7c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076dd80  00 50 a0 e1                                      mov r5, r0
0076dd84  0c d0 4d e2                                      sub sp, sp, #0xc
0076dd88  01 40 a0 e1                                      mov r4, r1
0076dd8c  04 20 8d e5                                      str r2, [sp, #4]
0076dd90  ec ff ff eb                                      bl #0x76dd48
0076dd94  00 30 95 e5                                      ldr r3, [r5]
0076dd98  00 20 93 e5                                      ldr r2, [r3]
0076dd9c  01 20 82 e2                                      add r2, r2, #1
0076dda0  00 20 83 e5                                      str r2, [r3]
0076dda4  10 e0 94 e5                                      ldr lr, [r4, #0x10]
0076dda8  ff 34 e0 e3                                      mvn r3, #0xff000000
0076ddac  ff 24 ce e3                                      bic r2, lr, #0xff000000
0076ddb0  03 00 52 e1                                      cmp r2, r3
0076ddb4  5e 90 b7 17                                      sbfxne sb, lr, #0, #0x18
0076ddb8  38 00 00 0a                                      beq #0x76dea0
0076ddbc  00 50 95 e5                                      ldr r5, [r5]
0076ddc0  01 00 79 e3                                      cmn sb, #1
0076ddc4  02 99 e0 03                                      mvneq sb, #0x8000
0076ddc8  04 30 95 e5                                      ldr r3, [r5, #4]
0076ddcc  03 20 09 e0                                      and r2, sb, r3
0076ddd0  02 b1 a0 e1                                      lsl fp, r2, #2
0076ddd4  01 b0 8b e2                                      add fp, fp, #1
0076ddd8  8b 11 95 e7                                      ldr r1, [r5, fp, lsl #3]
0076dddc  8b a1 85 e0                                      add sl, r5, fp, lsl #3
0076dde0  02 00 71 e3                                      cmn r1, #2
0076dde4  00 30 e0 03                                      mvneq r3, #0
0076dde8  8b 31 85 07                                      streq r3, [r5, fp, lsl #3]
0076ddec  47 00 00 0a                                      beq #0x76df10
0076ddf0  04 c0 9a e5                                      ldr ip, [sl, #4]
0076ddf4  01 00 7c e3                                      cmn ip, #1
0076ddf8  02 60 a0 11                                      movne r6, r2
0076ddfc  43 00 00 0a                                      beq #0x76df10
0076de00  01 60 86 e2                                      add r6, r6, #1
0076de04  03 60 06 e0                                      and r6, r6, r3
0076de08  06 71 a0 e1                                      lsl r7, r6, #2
0076de0c  01 70 87 e2                                      add r7, r7, #1
0076de10  87 01 95 e7                                      ldr r0, [r5, r7, lsl #3]
0076de14  87 71 85 e0                                      add r7, r5, r7, lsl #3
0076de18  02 00 70 e3                                      cmn r0, #2
0076de1c  f7 ff ff 1a                                      bne #0x76de00
0076de20  0c 30 03 e0                                      and r3, r3, ip
0076de24  02 00 53 e1                                      cmp r3, r2
0076de28  40 00 00 0a                                      beq #0x76df30
0076de2c  03 81 a0 e1                                      lsl r8, r3, #2
0076de30  01 80 88 e2                                      add r8, r8, #1
0076de34  88 31 95 e7                                      ldr r3, [r5, r8, lsl #3]
0076de38  88 81 85 e0                                      add r8, r5, r8, lsl #3
0076de3c  02 00 53 e1                                      cmp r3, r2
0076de40  f9 ff ff 1a                                      bne #0x76de2c
0076de44  00 10 87 e5                                      str r1, [r7]
0076de48  04 20 9a e5                                      ldr r2, [sl, #4]
0076de4c  08 30 8a e2                                      add r3, sl, #8
0076de50  03 10 a0 e1                                      mov r1, r3
0076de54  04 20 87 e5                                      str r2, [r7, #4]
0076de58  08 00 87 e2                                      add r0, r7, #8
0076de5c  00 30 8d e5                                      str r3, [sp]
0076de60  71 94 ff eb                                      bl #0x75302c
0076de64  00 30 9d e5                                      ldr r3, [sp]
0076de68  1c 20 9a e5                                      ldr r2, [sl, #0x1c]
0076de6c  04 10 a0 e1                                      mov r1, r4
0076de70  03 00 a0 e1                                      mov r0, r3
0076de74  1c 20 87 e5                                      str r2, [r7, #0x1c]
0076de78  00 60 88 e5                                      str r6, [r8]
0076de7c  33 94 ff eb                                      bl #0x752f50
0076de80  04 20 9d e5                                      ldr r2, [sp, #4]
0076de84  00 30 92 e5                                      ldr r3, [r2]
0076de88  04 90 8a e5                                      str sb, [sl, #4]
0076de8c  1c 30 8a e5                                      str r3, [sl, #0x1c]
0076de90  00 30 e0 e3                                      mvn r3, #0
0076de94  8b 31 85 e7                                      str r3, [r5, fp, lsl #3]
0076de98  0c d0 8d e2                                      add sp, sp, #0xc
0076de9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0076dea0  d0 30 d4 e1                                      ldrsb r3, [r4]
0076dea4  01 00 73 e3                                      cmn r3, #1
0076dea8  04 30 94 05                                      ldreq r3, [r4, #4]
0076deac  01 30 43 12                                      subne r3, r3, #1
0076deb0  01 c0 84 12                                      addne ip, r4, #1
0076deb4  01 30 43 02                                      subeq r3, r3, #1
0076deb8  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0076debc  00 00 53 e3                                      cmp r3, #0
0076dec0  05 95 01 d3                                      movwle sb, #0x1505
0076dec4  09 20 a0 d1                                      movle r2, sb
0076dec8  0d 00 00 da                                      ble #0x76df04
0076decc  03 30 8c e0                                      add r3, ip, r3
0076ded0  05 25 01 e3                                      movw r2, #0x1505
0076ded4  01 10 53 e5                                      ldrb r1, [r3, #-1]
0076ded8  01 30 43 e2                                      sub r3, r3, #1
0076dedc  82 22 82 e0                                      add r2, r2, r2, lsl #5
0076dee0  41 00 41 e2                                      sub r0, r1, #0x41
0076dee4  70 00 ef e6                                      uxtb r0, r0
0076dee8  19 00 50 e3                                      cmp r0, #0x19
0076deec  20 10 81 92                                      addls r1, r1, #0x20
0076def0  0c 00 53 e1                                      cmp r3, ip
0076def4  02 20 21 e0                                      eor r2, r1, r2
0076def8  f5 ff ff 1a                                      bne #0x76ded4
0076defc  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
0076df00  02 90 a0 e1                                      mov sb, r2
0076df04  12 e0 d7 e7                                      bfi lr, r2, #0, #0x18
0076df08  10 e0 84 e5                                      str lr, [r4, #0x10]
0076df0c  aa ff ff ea                                      b #0x76ddbc
0076df10  04 90 8a e5                                      str sb, [sl, #4]
0076df14  04 10 a0 e1                                      mov r1, r4
0076df18  08 00 8a e2                                      add r0, sl, #8
0076df1c  42 94 ff eb                                      bl #0x75302c
0076df20  04 20 9d e5                                      ldr r2, [sp, #4]
0076df24  00 30 92 e5                                      ldr r3, [r2]
0076df28  1c 30 8a e5                                      str r3, [sl, #0x1c]
0076df2c  d9 ff ff ea                                      b #0x76de98
0076df30  00 10 87 e5                                      str r1, [r7]
0076df34  04 30 9a e5                                      ldr r3, [sl, #4]
0076df38  08 80 8a e2                                      add r8, sl, #8
0076df3c  08 10 a0 e1                                      mov r1, r8
0076df40  04 30 87 e5                                      str r3, [r7, #4]
0076df44  08 00 87 e2                                      add r0, r7, #8
0076df48  37 94 ff eb                                      bl #0x75302c
0076df4c  1c 30 9a e5                                      ldr r3, [sl, #0x1c]
0076df50  08 00 a0 e1                                      mov r0, r8
0076df54  04 10 a0 e1                                      mov r1, r4
0076df58  1c 30 87 e5                                      str r3, [r7, #0x1c]
0076df5c  fb 93 ff eb                                      bl #0x752f50
0076df60  04 20 9d e5                                      ldr r2, [sp, #4]
0076df64  00 30 92 e5                                      ldr r3, [r2]
0076df68  1c 30 8a e5                                      str r3, [sl, #0x1c]
0076df6c  8b 61 85 e7                                      str r6, [r5, fp, lsl #3]
0076df70  04 90 8a e5                                      str sb, [sl, #4]
0076df74  c7 ff ff ea                                      b #0x76de98
