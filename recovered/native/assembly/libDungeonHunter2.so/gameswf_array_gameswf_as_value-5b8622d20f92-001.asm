; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075a40c, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE7reserveEi
; demangled: gameswf::array<gameswf::as_value>::reserve(int)
; decoder-mode: arm
0075a40c  10 40 2d e9                                      push {r4, lr}
0075a410  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0075a414  00 40 a0 e1                                      mov r4, r0
0075a418  00 00 53 e3                                      cmp r3, #0
0075a41c  11 00 00 1a                                      bne #0x75a468
0075a420  00 00 51 e3                                      cmp r1, #0
0075a424  08 20 90 e5                                      ldr r2, [r0, #8]
0075a428  08 10 80 e5                                      str r1, [r0, #8]
0075a42c  0e 00 00 1a                                      bne #0x75a46c
0075a430  00 00 90 e5                                      ldr r0, [r0]
0075a434  00 00 50 e3                                      cmp r0, #0
0075a438  02 00 00 0a                                      beq #0x75a448
0075a43c  0c 10 a0 e3                                      mov r1, #0xc
0075a440  91 02 01 e0                                      mul r1, r1, r2
0075a444  bb e1 ff eb                                      bl #0x752b38
0075a448  00 30 a0 e3                                      mov r3, #0
0075a44c  00 30 84 e5                                      str r3, [r4]
0075a450  10 80 bd e8                                      pop {r4, pc}
0075a454  0c 00 a0 e3                                      mov r0, #0xc
0075a458  90 01 00 e0                                      mul r0, r0, r1
0075a45c  0c 10 a0 e1                                      mov r1, ip
0075a460  cd e1 ff eb                                      bl #0x752b9c
0075a464  00 00 84 e5                                      str r0, [r4]
0075a468  10 80 bd e8                                      pop {r4, pc}
0075a46c  00 c0 90 e5                                      ldr ip, [r0]
0075a470  00 00 5c e3                                      cmp ip, #0
0075a474  f6 ff ff 0a                                      beq #0x75a454
0075a478  0c e0 a0 e3                                      mov lr, #0xc
0075a47c  9e 02 02 e0                                      mul r2, lr, r2
0075a480  0c 00 a0 e1                                      mov r0, ip
0075a484  9e 01 01 e0                                      mul r1, lr, r1
0075a488  c7 e1 ff eb                                      bl #0x752bac
0075a48c  00 00 84 e5                                      str r0, [r4]
0075a490  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075b8f8, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE6resizeEi.clone.3
; demangled: gameswf::array<gameswf::as_value>::resize(int) [clone .clone.3]
; decoder-mode: arm
0075b8f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0075b8fc  04 40 90 e5                                      ldr r4, [r0, #4]
0075b900  00 70 a0 e1                                      mov r7, r0
0075b904  00 00 54 e3                                      cmp r4, #0
0075b908  0b 00 00 da                                      ble #0x75b93c
0075b90c  00 50 a0 e3                                      mov r5, #0
0075b910  05 60 a0 e1                                      mov r6, r5
0075b914  00 00 97 e5                                      ldr r0, [r7]
0075b918  01 60 86 e2                                      add r6, r6, #1
0075b91c  05 00 80 e0                                      add r0, r0, r5
0075b920  ff ed 00 eb                                      bl #0x797124
0075b924  04 00 56 e1                                      cmp r6, r4
0075b928  0c 50 85 e2                                      add r5, r5, #0xc
0075b92c  f8 ff ff 1a                                      bne #0x75b914
0075b930  00 30 a0 e3                                      mov r3, #0
0075b934  04 30 87 e5                                      str r3, [r7, #4]
0075b938  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0075b93c  fb ff ff aa                                      bge #0x75b930
0075b940  0c 30 a0 e3                                      mov r3, #0xc
0075b944  93 04 03 e0                                      mul r3, r3, r4
0075b948  00 10 a0 e3                                      mov r1, #0
0075b94c  00 20 97 e5                                      ldr r2, [r7]
0075b950  01 40 94 e2                                      adds r4, r4, #1
0075b954  03 00 82 e0                                      add r0, r2, r3
0075b958  03 10 c2 e7                                      strb r1, [r2, r3]
0075b95c  01 10 c0 e5                                      strb r1, [r0, #1]
0075b960  0c 30 83 e2                                      add r3, r3, #0xc
0075b964  f8 ff ff 1a                                      bne #0x75b94c
0075b968  00 30 a0 e3                                      mov r3, #0
0075b96c  04 30 87 e5                                      str r3, [r7, #4]
0075b970  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00769594, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE6resizeEi.clone.2
; demangled: gameswf::array<gameswf::as_value>::resize(int) [clone .clone.2]
; decoder-mode: arm
00769594  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00769598  04 40 90 e5                                      ldr r4, [r0, #4]
0076959c  00 70 a0 e1                                      mov r7, r0
007695a0  00 00 54 e3                                      cmp r4, #0
007695a4  0b 00 00 da                                      ble #0x7695d8
007695a8  00 50 a0 e3                                      mov r5, #0
007695ac  05 60 a0 e1                                      mov r6, r5
007695b0  00 00 97 e5                                      ldr r0, [r7]
007695b4  01 60 86 e2                                      add r6, r6, #1
007695b8  05 00 80 e0                                      add r0, r0, r5
007695bc  d8 b6 00 eb                                      bl #0x797124
007695c0  04 00 56 e1                                      cmp r6, r4
007695c4  0c 50 85 e2                                      add r5, r5, #0xc
007695c8  f8 ff ff 1a                                      bne #0x7695b0
007695cc  00 30 a0 e3                                      mov r3, #0
007695d0  04 30 87 e5                                      str r3, [r7, #4]
007695d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007695d8  fb ff ff aa                                      bge #0x7695cc
007695dc  0c 30 a0 e3                                      mov r3, #0xc
007695e0  93 04 03 e0                                      mul r3, r3, r4
007695e4  00 10 a0 e3                                      mov r1, #0
007695e8  00 20 97 e5                                      ldr r2, [r7]
007695ec  01 40 94 e2                                      adds r4, r4, #1
007695f0  03 00 82 e0                                      add r0, r2, r3
007695f4  03 10 c2 e7                                      strb r1, [r2, r3]
007695f8  01 10 c0 e5                                      strb r1, [r0, #1]
007695fc  0c 30 83 e2                                      add r3, r3, #0xc
00769600  f8 ff ff 1a                                      bne #0x7695e8
00769604  00 30 a0 e3                                      mov r3, #0
00769608  04 30 87 e5                                      str r3, [r7, #4]
0076960c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0077eba4, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE6resizeEi
; demangled: gameswf::array<gameswf::as_value>::resize(int)
; decoder-mode: arm
0077eba4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077eba8  04 60 90 e5                                      ldr r6, [r0, #4]
0077ebac  00 40 a0 e1                                      mov r4, r0
0077ebb0  01 50 a0 e1                                      mov r5, r1
0077ebb4  01 00 56 e1                                      cmp r6, r1
0077ebb8  09 00 00 da                                      ble #0x77ebe4
0077ebbc  0c 80 a0 e3                                      mov r8, #0xc
0077ebc0  98 01 08 e0                                      mul r8, r8, r1
0077ebc4  01 70 a0 e1                                      mov r7, r1
0077ebc8  00 00 94 e5                                      ldr r0, [r4]
0077ebcc  01 70 87 e2                                      add r7, r7, #1
0077ebd0  08 00 80 e0                                      add r0, r0, r8
0077ebd4  52 61 00 eb                                      bl #0x797124
0077ebd8  06 00 57 e1                                      cmp r7, r6
0077ebdc  0c 80 88 e2                                      add r8, r8, #0xc
0077ebe0  f8 ff ff 1a                                      bne #0x77ebc8
0077ebe4  00 00 55 e3                                      cmp r5, #0
0077ebe8  02 00 00 0a                                      beq #0x77ebf8
0077ebec  08 30 94 e5                                      ldr r3, [r4, #8]
0077ebf0  03 00 55 e1                                      cmp r5, r3
0077ebf4  0e 00 00 ca                                      bgt #0x77ec34
0077ebf8  05 00 56 e1                                      cmp r6, r5
0077ebfc  0a 00 00 aa                                      bge #0x77ec2c
0077ec00  0c 30 a0 e3                                      mov r3, #0xc
0077ec04  93 06 03 e0                                      mul r3, r3, r6
0077ec08  00 10 a0 e3                                      mov r1, #0
0077ec0c  00 20 94 e5                                      ldr r2, [r4]
0077ec10  01 60 86 e2                                      add r6, r6, #1
0077ec14  05 00 56 e1                                      cmp r6, r5
0077ec18  03 00 82 e0                                      add r0, r2, r3
0077ec1c  03 10 c2 e7                                      strb r1, [r2, r3]
0077ec20  01 10 c0 e5                                      strb r1, [r0, #1]
0077ec24  0c 30 83 e2                                      add r3, r3, #0xc
0077ec28  f7 ff ff 1a                                      bne #0x77ec0c
0077ec2c  04 50 84 e5                                      str r5, [r4, #4]
0077ec30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0077ec34  04 00 a0 e1                                      mov r0, r4
0077ec38  c5 10 85 e0                                      add r1, r5, r5, asr #1
0077ec3c  f2 6d ff eb                                      bl #0x75a40c
0077ec40  ec ff ff ea                                      b #0x77ebf8

; FUNCTION 0x0078b9ac, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE6resizeEi.clone.2
; demangled: gameswf::array<gameswf::as_value>::resize(int) [clone .clone.2]
; decoder-mode: arm
0078b9ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0078b9b0  04 40 90 e5                                      ldr r4, [r0, #4]
0078b9b4  00 70 a0 e1                                      mov r7, r0
0078b9b8  00 00 54 e3                                      cmp r4, #0
0078b9bc  0b 00 00 da                                      ble #0x78b9f0
0078b9c0  00 50 a0 e3                                      mov r5, #0
0078b9c4  05 60 a0 e1                                      mov r6, r5
0078b9c8  00 00 97 e5                                      ldr r0, [r7]
0078b9cc  01 60 86 e2                                      add r6, r6, #1
0078b9d0  05 00 80 e0                                      add r0, r0, r5
0078b9d4  d2 2d 00 eb                                      bl #0x797124
0078b9d8  04 00 56 e1                                      cmp r6, r4
0078b9dc  0c 50 85 e2                                      add r5, r5, #0xc
0078b9e0  f8 ff ff 1a                                      bne #0x78b9c8
0078b9e4  00 30 a0 e3                                      mov r3, #0
0078b9e8  04 30 87 e5                                      str r3, [r7, #4]
0078b9ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0078b9f0  fb ff ff aa                                      bge #0x78b9e4
0078b9f4  0c 30 a0 e3                                      mov r3, #0xc
0078b9f8  93 04 03 e0                                      mul r3, r3, r4
0078b9fc  00 10 a0 e3                                      mov r1, #0
0078ba00  00 20 97 e5                                      ldr r2, [r7]
0078ba04  01 40 94 e2                                      adds r4, r4, #1
0078ba08  03 00 82 e0                                      add r0, r2, r3
0078ba0c  03 10 c2 e7                                      strb r1, [r2, r3]
0078ba10  01 10 c0 e5                                      strb r1, [r0, #1]
0078ba14  0c 30 83 e2                                      add r3, r3, #0xc
0078ba18  f8 ff ff 1a                                      bne #0x78ba00
0078ba1c  00 30 a0 e3                                      mov r3, #0
0078ba20  04 30 87 e5                                      str r3, [r7, #4]
0078ba24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007974c4, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE6resizeEi.clone.1
; demangled: gameswf::array<gameswf::as_value>::resize(int) [clone .clone.1]
; decoder-mode: arm
007974c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007974c8  04 40 90 e5                                      ldr r4, [r0, #4]
007974cc  00 70 a0 e1                                      mov r7, r0
007974d0  00 00 54 e3                                      cmp r4, #0
007974d4  0b 00 00 da                                      ble #0x797508
007974d8  00 50 a0 e3                                      mov r5, #0
007974dc  05 60 a0 e1                                      mov r6, r5
007974e0  00 00 97 e5                                      ldr r0, [r7]
007974e4  01 60 86 e2                                      add r6, r6, #1
007974e8  05 00 80 e0                                      add r0, r0, r5
007974ec  0c ff ff eb                                      bl #0x797124
007974f0  04 00 56 e1                                      cmp r6, r4
007974f4  0c 50 85 e2                                      add r5, r5, #0xc
007974f8  f8 ff ff 1a                                      bne #0x7974e0
007974fc  00 30 a0 e3                                      mov r3, #0
00797500  04 30 87 e5                                      str r3, [r7, #4]
00797504  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00797508  fb ff ff aa                                      bge #0x7974fc
0079750c  0c 30 a0 e3                                      mov r3, #0xc
00797510  93 04 03 e0                                      mul r3, r3, r4
00797514  00 10 a0 e3                                      mov r1, #0
00797518  00 20 97 e5                                      ldr r2, [r7]
0079751c  01 40 94 e2                                      adds r4, r4, #1
00797520  03 00 82 e0                                      add r0, r2, r3
00797524  03 10 c2 e7                                      strb r1, [r2, r3]
00797528  01 10 c0 e5                                      strb r1, [r0, #1]
0079752c  0c 30 83 e2                                      add r3, r3, #0xc
00797530  f8 ff ff 1a                                      bne #0x797518
00797534  00 30 a0 e3                                      mov r3, #0
00797538  04 30 87 e5                                      str r3, [r7, #4]
0079753c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007981b0, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEEaSERKS2_
; demangled: gameswf::array<gameswf::as_value>::operator=(gameswf::array<gameswf::as_value> const&)
; decoder-mode: arm
007981b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007981b4  00 60 a0 e1                                      mov r6, r0
007981b8  01 70 a0 e1                                      mov r7, r1
007981bc  04 10 91 e5                                      ldr r1, [r1, #4]
007981c0  77 9a ff eb                                      bl #0x77eba4
007981c4  04 30 96 e5                                      ldr r3, [r6, #4]
007981c8  00 00 53 e3                                      cmp r3, #0
007981cc  0b 00 00 da                                      ble #0x798200
007981d0  00 40 a0 e3                                      mov r4, #0
007981d4  04 50 a0 e1                                      mov r5, r4
007981d8  00 00 96 e5                                      ldr r0, [r6]
007981dc  00 10 97 e5                                      ldr r1, [r7]
007981e0  01 50 85 e2                                      add r5, r5, #1
007981e4  04 00 80 e0                                      add r0, r0, r4
007981e8  04 10 81 e0                                      add r1, r1, r4
007981ec  52 fd ff eb                                      bl #0x79773c
007981f0  04 30 96 e5                                      ldr r3, [r6, #4]
007981f4  0c 40 84 e2                                      add r4, r4, #0xc
007981f8  05 00 53 e1                                      cmp r3, r5
007981fc  f5 ff ff ca                                      bgt #0x7981d8
00798200  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007a29dc, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE6resizeEi.clone.1
; demangled: gameswf::array<gameswf::as_value>::resize(int) [clone .clone.1]
; decoder-mode: arm
007a29dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a29e0  04 40 90 e5                                      ldr r4, [r0, #4]
007a29e4  00 70 a0 e1                                      mov r7, r0
007a29e8  00 00 54 e3                                      cmp r4, #0
007a29ec  0b 00 00 da                                      ble #0x7a2a20
007a29f0  00 50 a0 e3                                      mov r5, #0
007a29f4  05 60 a0 e1                                      mov r6, r5
007a29f8  00 00 97 e5                                      ldr r0, [r7]
007a29fc  01 60 86 e2                                      add r6, r6, #1
007a2a00  05 00 80 e0                                      add r0, r0, r5
007a2a04  c6 d1 ff eb                                      bl #0x797124
007a2a08  04 00 56 e1                                      cmp r6, r4
007a2a0c  0c 50 85 e2                                      add r5, r5, #0xc
007a2a10  f8 ff ff 1a                                      bne #0x7a29f8
007a2a14  00 30 a0 e3                                      mov r3, #0
007a2a18  04 30 87 e5                                      str r3, [r7, #4]
007a2a1c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a2a20  fb ff ff aa                                      bge #0x7a2a14
007a2a24  0c 30 a0 e3                                      mov r3, #0xc
007a2a28  93 04 03 e0                                      mul r3, r3, r4
007a2a2c  00 10 a0 e3                                      mov r1, #0
007a2a30  00 20 97 e5                                      ldr r2, [r7]
007a2a34  01 40 94 e2                                      adds r4, r4, #1
007a2a38  03 00 82 e0                                      add r0, r2, r3
007a2a3c  03 10 c2 e7                                      strb r1, [r2, r3]
007a2a40  01 10 c0 e5                                      strb r1, [r0, #1]
007a2a44  0c 30 83 e2                                      add r3, r3, #0xc
007a2a48  f8 ff ff 1a                                      bne #0x7a2a30
007a2a4c  00 30 a0 e3                                      mov r3, #0
007a2a50  04 30 87 e5                                      str r3, [r7, #4]
007a2a54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007a6dcc, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::as_value>
; alias: _ZN7gameswf5arrayINS_8as_valueEE6resizeEi.clone.1
; demangled: gameswf::array<gameswf::as_value>::resize(int) [clone .clone.1]
; decoder-mode: arm
007a6dcc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a6dd0  04 40 90 e5                                      ldr r4, [r0, #4]
007a6dd4  00 70 a0 e1                                      mov r7, r0
007a6dd8  00 00 54 e3                                      cmp r4, #0
007a6ddc  0b 00 00 da                                      ble #0x7a6e10
007a6de0  00 50 a0 e3                                      mov r5, #0
007a6de4  05 60 a0 e1                                      mov r6, r5
007a6de8  00 00 97 e5                                      ldr r0, [r7]
007a6dec  01 60 86 e2                                      add r6, r6, #1
007a6df0  05 00 80 e0                                      add r0, r0, r5
007a6df4  ca c0 ff eb                                      bl #0x797124
007a6df8  04 00 56 e1                                      cmp r6, r4
007a6dfc  0c 50 85 e2                                      add r5, r5, #0xc
007a6e00  f8 ff ff 1a                                      bne #0x7a6de8
007a6e04  00 30 a0 e3                                      mov r3, #0
007a6e08  04 30 87 e5                                      str r3, [r7, #4]
007a6e0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a6e10  fb ff ff aa                                      bge #0x7a6e04
007a6e14  0c 30 a0 e3                                      mov r3, #0xc
007a6e18  93 04 03 e0                                      mul r3, r3, r4
007a6e1c  00 10 a0 e3                                      mov r1, #0
007a6e20  00 20 97 e5                                      ldr r2, [r7]
007a6e24  01 40 94 e2                                      adds r4, r4, #1
007a6e28  03 00 82 e0                                      add r0, r2, r3
007a6e2c  03 10 c2 e7                                      strb r1, [r2, r3]
007a6e30  01 10 c0 e5                                      strb r1, [r0, #1]
007a6e34  0c 30 83 e2                                      add r3, r3, #0xc
007a6e38  f8 ff ff 1a                                      bne #0x7a6e20
007a6e3c  00 30 a0 e3                                      mov r3, #0
007a6e40  04 30 87 e5                                      str r3, [r7, #4]
007a6e44  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
