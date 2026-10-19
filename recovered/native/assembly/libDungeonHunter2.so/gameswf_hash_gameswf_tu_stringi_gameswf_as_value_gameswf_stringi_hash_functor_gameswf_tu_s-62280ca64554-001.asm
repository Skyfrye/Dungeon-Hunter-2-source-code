; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00768eec, declared_size=348, range_size=348, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZNK7gameswf4hashINS_10tu_stringiENS_8as_valueENS_20stringi_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::find_index(gameswf::tu_stringi const&) const
; decoder-mode: arm
00768eec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00768ef0  00 30 90 e5                                      ldr r3, [r0]
00768ef4  00 50 a0 e1                                      mov r5, r0
00768ef8  01 60 a0 e1                                      mov r6, r1
00768efc  00 00 53 e3                                      cmp r3, #0
00768f00  02 00 00 1a                                      bne #0x768f10
00768f04  00 40 e0 e3                                      mvn r4, #0
00768f08  04 00 a0 e1                                      mov r0, r4
00768f0c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00768f10  10 c0 91 e5                                      ldr ip, [r1, #0x10]
00768f14  ff 24 e0 e3                                      mvn r2, #0xff000000
00768f18  ff 14 cc e3                                      bic r1, ip, #0xff000000
00768f1c  02 00 51 e1                                      cmp r1, r2
00768f20  5c 70 b7 17                                      sbfxne r7, ip, #0, #0x18
00768f24  2a 00 00 0a                                      beq #0x768fd4
00768f28  04 20 93 e5                                      ldr r2, [r3, #4]
00768f2c  01 00 77 e3                                      cmn r7, #1
00768f30  02 79 e0 03                                      mvneq r7, #0x8000
00768f34  02 40 07 e0                                      and r4, r7, r2
00768f38  04 81 84 e0                                      add r8, r4, r4, lsl #2
00768f3c  01 80 88 e2                                      add r8, r8, #1
00768f40  88 11 93 e7                                      ldr r1, [r3, r8, lsl #3]
00768f44  88 81 83 e0                                      add r8, r3, r8, lsl #3
00768f48  02 00 71 e3                                      cmn r1, #2
00768f4c  ec ff ff 0a                                      beq #0x768f04
00768f50  04 30 98 e5                                      ldr r3, [r8, #4]
00768f54  01 00 73 e3                                      cmn r3, #1
00768f58  02 00 00 0a                                      beq #0x768f68
00768f5c  03 20 02 e0                                      and r2, r2, r3
00768f60  04 00 52 e1                                      cmp r2, r4
00768f64  e6 ff ff 1a                                      bne #0x768f04
00768f68  01 a0 86 e2                                      add sl, r6, #1
00768f6c  07 00 00 ea                                      b #0x768f90
00768f70  00 40 98 e5                                      ldr r4, [r8]
00768f74  01 00 74 e3                                      cmn r4, #1
00768f78  e2 ff ff 0a                                      beq #0x768f08
00768f7c  00 30 95 e5                                      ldr r3, [r5]
00768f80  04 81 84 e0                                      add r8, r4, r4, lsl #2
00768f84  01 80 88 e2                                      add r8, r8, #1
00768f88  88 81 83 e0                                      add r8, r3, r8, lsl #3
00768f8c  04 30 98 e5                                      ldr r3, [r8, #4]
00768f90  03 00 57 e1                                      cmp r7, r3
00768f94  f5 ff ff 1a                                      bne #0x768f70
00768f98  08 30 88 e2                                      add r3, r8, #8
00768f9c  03 00 56 e1                                      cmp r6, r3
00768fa0  d8 ff ff 0a                                      beq #0x768f08
00768fa4  d8 30 d8 e1                                      ldrsb r3, [r8, #8]
00768fa8  01 00 73 e3                                      cmn r3, #1
00768fac  d0 30 d6 e1                                      ldrsb r3, [r6]
00768fb0  09 00 88 12                                      addne r0, r8, #9
00768fb4  14 00 98 05                                      ldreq r0, [r8, #0x14]
00768fb8  01 00 73 e3                                      cmn r3, #1
00768fbc  0a 10 a0 11                                      movne r1, sl
00768fc0  0c 10 96 05                                      ldreq r1, [r6, #0xc]
00768fc4  51 a3 ff eb                                      bl #0x751d10
00768fc8  00 00 50 e3                                      cmp r0, #0
00768fcc  e7 ff ff 1a                                      bne #0x768f70
00768fd0  cc ff ff ea                                      b #0x768f08
00768fd4  d0 30 d6 e1                                      ldrsb r3, [r6]
00768fd8  01 00 73 e3                                      cmn r3, #1
00768fdc  04 30 96 05                                      ldreq r3, [r6, #4]
00768fe0  01 30 43 12                                      subne r3, r3, #1
00768fe4  01 40 86 12                                      addne r4, r6, #1
00768fe8  01 30 43 02                                      subeq r3, r3, #1
00768fec  0c 40 96 05                                      ldreq r4, [r6, #0xc]
00768ff0  00 00 53 e3                                      cmp r3, #0
00768ff4  05 75 01 d3                                      movwle r7, #0x1505
00768ff8  07 20 a0 d1                                      movle r2, r7
00768ffc  0d 00 00 da                                      ble #0x769038
00769000  03 30 84 e0                                      add r3, r4, r3
00769004  05 25 01 e3                                      movw r2, #0x1505
00769008  01 10 53 e5                                      ldrb r1, [r3, #-1]
0076900c  01 30 43 e2                                      sub r3, r3, #1
00769010  82 22 82 e0                                      add r2, r2, r2, lsl #5
00769014  41 00 41 e2                                      sub r0, r1, #0x41
00769018  70 00 ef e6                                      uxtb r0, r0
0076901c  19 00 50 e3                                      cmp r0, #0x19
00769020  20 10 81 92                                      addls r1, r1, #0x20
00769024  04 00 53 e1                                      cmp r3, r4
00769028  02 20 21 e0                                      eor r2, r1, r2
0076902c  f5 ff ff 1a                                      bne #0x769008
00769030  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
00769034  02 70 a0 e1                                      mov r7, r2
00769038  12 c0 d7 e7                                      bfi ip, r2, #0, #0x18
0076903c  10 c0 86 e5                                      str ip, [r6, #0x10]
00769040  00 30 95 e5                                      ldr r3, [r5]
00769044  b7 ff ff ea                                      b #0x768f28

; FUNCTION 0x00769048, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZNK7gameswf4hashINS_10tu_stringiENS_8as_valueENS_20stringi_hash_functorIS1_EEE3getERKS1_PS2_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::get(gameswf::tu_stringi const&, gameswf::as_value*) const
; decoder-mode: arm
00769048  70 40 2d e9                                      push {r4, r5, r6, lr}
0076904c  02 40 a0 e1                                      mov r4, r2
00769050  00 50 a0 e1                                      mov r5, r0
00769054  a4 ff ff eb                                      bl #0x768eec
00769058  00 00 50 e3                                      cmp r0, #0
0076905c  09 00 00 ba                                      blt #0x769088
00769060  00 00 54 e3                                      cmp r4, #0
00769064  09 00 00 0a                                      beq #0x769090
00769068  00 30 95 e5                                      ldr r3, [r5]
0076906c  00 11 80 e0                                      add r1, r0, r0, lsl #2
00769070  04 00 a0 e1                                      mov r0, r4
00769074  81 11 83 e0                                      add r1, r3, r1, lsl #3
00769078  24 10 81 e2                                      add r1, r1, #0x24
0076907c  ae b9 00 eb                                      bl #0x79773c
00769080  01 00 a0 e3                                      mov r0, #1
00769084  70 80 bd e8                                      pop {r4, r5, r6, pc}
00769088  00 00 a0 e3                                      mov r0, #0
0076908c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00769090  01 00 a0 e3                                      mov r0, #1
00769094  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00769944, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_8as_valueENS_20stringi_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::clear()
; decoder-mode: arm
00769944  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00769948  00 80 a0 e1                                      mov r8, r0
0076994c  00 00 90 e5                                      ldr r0, [r0]
00769950  00 00 50 e3                                      cmp r0, #0
00769954  24 00 00 0a                                      beq #0x7699ec
00769958  04 70 90 e5                                      ldr r7, [r0, #4]
0076995c  00 00 57 e3                                      cmp r7, #0
00769960  1b 00 00 ba                                      blt #0x7699d4
00769964  00 60 a0 e3                                      mov r6, #0
00769968  08 40 a0 e3                                      mov r4, #8
0076996c  01 90 e0 e3                                      mvn sb, #1
00769970  06 a0 a0 e1                                      mov sl, r6
00769974  06 00 00 ea                                      b #0x769994
00769978  1c 00 85 e2                                      add r0, r5, #0x1c
0076997c  e8 b5 00 eb                                      bl #0x797124
00769980  00 06 85 e8                                      stm r5, {sb, sl}
00769984  00 00 98 e5                                      ldr r0, [r8]
00769988  06 00 57 e1                                      cmp r7, r6
0076998c  28 40 84 e2                                      add r4, r4, #0x28
00769990  0e 00 00 ba                                      blt #0x7699d0
00769994  04 30 90 e7                                      ldr r3, [r0, r4]
00769998  01 60 86 e2                                      add r6, r6, #1
0076999c  04 50 80 e0                                      add r5, r0, r4
007699a0  02 00 73 e3                                      cmn r3, #2
007699a4  f7 ff ff 0a                                      beq #0x769988
007699a8  04 30 95 e5                                      ldr r3, [r5, #4]
007699ac  01 00 73 e3                                      cmn r3, #1
007699b0  f4 ff ff 0a                                      beq #0x769988
007699b4  d8 30 d5 e1                                      ldrsb r3, [r5, #8]
007699b8  01 00 73 e3                                      cmn r3, #1
007699bc  ed ff ff 1a                                      bne #0x769978
007699c0  14 00 95 e5                                      ldr r0, [r5, #0x14]
007699c4  10 10 95 e5                                      ldr r1, [r5, #0x10]
007699c8  5a a4 ff eb                                      bl #0x752b38
007699cc  e9 ff ff ea                                      b #0x769978
007699d0  04 70 90 e5                                      ldr r7, [r0, #4]
007699d4  07 71 87 e0                                      add r7, r7, r7, lsl #2
007699d8  06 10 87 e2                                      add r1, r7, #6
007699dc  81 11 a0 e1                                      lsl r1, r1, #3
007699e0  54 a4 ff eb                                      bl #0x752b38
007699e4  00 30 a0 e3                                      mov r3, #0
007699e8  00 30 88 e5                                      str r3, [r8]
007699ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0076a130, declared_size=456, range_size=456, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_8as_valueENS_20stringi_hash_functorIS1_EEE3addERKS1_RKS2_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::add(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
0076a130  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076a134  00 60 a0 e1                                      mov r6, r0
0076a138  0c d0 4d e2                                      sub sp, sp, #0xc
0076a13c  01 50 a0 e1                                      mov r5, r1
0076a140  02 90 a0 e1                                      mov sb, r2
0076a144  cf 00 00 eb                                      bl #0x76a488
0076a148  00 30 96 e5                                      ldr r3, [r6]
0076a14c  00 20 93 e5                                      ldr r2, [r3]
0076a150  01 20 82 e2                                      add r2, r2, #1
0076a154  00 20 83 e5                                      str r2, [r3]
0076a158  10 e0 95 e5                                      ldr lr, [r5, #0x10]
0076a15c  ff 34 e0 e3                                      mvn r3, #0xff000000
0076a160  ff 24 ce e3                                      bic r2, lr, #0xff000000
0076a164  03 00 52 e1                                      cmp r2, r3
0076a168  5e 40 b7 17                                      sbfxne r4, lr, #0, #0x18
0076a16c  2d 00 00 0a                                      beq #0x76a228
0076a170  00 60 96 e5                                      ldr r6, [r6]
0076a174  01 00 74 e3                                      cmn r4, #1
0076a178  02 49 e0 03                                      mvneq r4, #0x8000
0076a17c  04 c0 96 e5                                      ldr ip, [r6, #4]
0076a180  0c 20 04 e0                                      and r2, r4, ip
0076a184  02 b1 82 e0                                      add fp, r2, r2, lsl #2
0076a188  01 b0 8b e2                                      add fp, fp, #1
0076a18c  8b 31 96 e7                                      ldr r3, [r6, fp, lsl #3]
0076a190  8b a1 86 e0                                      add sl, r6, fp, lsl #3
0076a194  02 00 73 e3                                      cmn r3, #2
0076a198  3e 00 00 0a                                      beq #0x76a298
0076a19c  04 e0 9a e5                                      ldr lr, [sl, #4]
0076a1a0  01 00 7e e3                                      cmn lr, #1
0076a1a4  02 70 a0 11                                      movne r7, r2
0076a1a8  41 00 00 0a                                      beq #0x76a2b4
0076a1ac  01 70 87 e2                                      add r7, r7, #1
0076a1b0  0c 70 07 e0                                      and r7, r7, ip
0076a1b4  07 01 87 e0                                      add r0, r7, r7, lsl #2
0076a1b8  01 00 80 e2                                      add r0, r0, #1
0076a1bc  80 11 96 e7                                      ldr r1, [r6, r0, lsl #3]
0076a1c0  80 01 86 e0                                      add r0, r6, r0, lsl #3
0076a1c4  02 00 71 e3                                      cmn r1, #2
0076a1c8  f7 ff ff 1a                                      bne #0x76a1ac
0076a1cc  0e 30 0c e0                                      and r3, ip, lr
0076a1d0  02 00 53 e1                                      cmp r3, r2
0076a1d4  3c 00 00 0a                                      beq #0x76a2cc
0076a1d8  03 31 83 e0                                      add r3, r3, r3, lsl #2
0076a1dc  01 80 83 e2                                      add r8, r3, #1
0076a1e0  88 31 96 e7                                      ldr r3, [r6, r8, lsl #3]
0076a1e4  88 81 86 e0                                      add r8, r6, r8, lsl #3
0076a1e8  02 00 53 e1                                      cmp r3, r2
0076a1ec  f9 ff ff 1a                                      bne #0x76a1d8
0076a1f0  0a 10 a0 e1                                      mov r1, sl
0076a1f4  95 ff ff eb                                      bl #0x76a050
0076a1f8  05 10 a0 e1                                      mov r1, r5
0076a1fc  08 00 8a e2                                      add r0, sl, #8
0076a200  00 70 88 e5                                      str r7, [r8]
0076a204  51 a3 ff eb                                      bl #0x752f50
0076a208  09 10 a0 e1                                      mov r1, sb
0076a20c  1c 00 8a e2                                      add r0, sl, #0x1c
0076a210  49 b5 00 eb                                      bl #0x79773c
0076a214  00 30 e0 e3                                      mvn r3, #0
0076a218  04 40 8a e5                                      str r4, [sl, #4]
0076a21c  8b 31 86 e7                                      str r3, [r6, fp, lsl #3]
0076a220  0c d0 8d e2                                      add sp, sp, #0xc
0076a224  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0076a228  d0 30 d5 e1                                      ldrsb r3, [r5]
0076a22c  01 00 73 e3                                      cmn r3, #1
0076a230  04 30 95 05                                      ldreq r3, [r5, #4]
0076a234  01 30 43 12                                      subne r3, r3, #1
0076a238  01 c0 85 12                                      addne ip, r5, #1
0076a23c  01 30 43 02                                      subeq r3, r3, #1
0076a240  0c c0 95 05                                      ldreq ip, [r5, #0xc]
0076a244  00 00 53 e3                                      cmp r3, #0
0076a248  05 45 01 d3                                      movwle r4, #0x1505
0076a24c  04 20 a0 d1                                      movle r2, r4
0076a250  0d 00 00 da                                      ble #0x76a28c
0076a254  03 30 8c e0                                      add r3, ip, r3
0076a258  05 25 01 e3                                      movw r2, #0x1505
0076a25c  01 10 53 e5                                      ldrb r1, [r3, #-1]
0076a260  01 30 43 e2                                      sub r3, r3, #1
0076a264  82 22 82 e0                                      add r2, r2, r2, lsl #5
0076a268  41 00 41 e2                                      sub r0, r1, #0x41
0076a26c  70 00 ef e6                                      uxtb r0, r0
0076a270  19 00 50 e3                                      cmp r0, #0x19
0076a274  20 10 81 92                                      addls r1, r1, #0x20
0076a278  0c 00 53 e1                                      cmp r3, ip
0076a27c  02 20 21 e0                                      eor r2, r1, r2
0076a280  f5 ff ff 1a                                      bne #0x76a25c
0076a284  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
0076a288  02 40 a0 e1                                      mov r4, r2
0076a28c  12 e0 d7 e7                                      bfi lr, r2, #0, #0x18
0076a290  10 e0 85 e5                                      str lr, [r5, #0x10]
0076a294  b5 ff ff ea                                      b #0x76a170
0076a298  0a 00 a0 e1                                      mov r0, sl
0076a29c  05 10 a0 e1                                      mov r1, r5
0076a2a0  09 20 a0 e1                                      mov r2, sb
0076a2a4  00 30 e0 e3                                      mvn r3, #0
0076a2a8  00 40 8d e5                                      str r4, [sp]
0076a2ac  57 ff ff eb                                      bl #0x76a010
0076a2b0  da ff ff ea                                      b #0x76a220
0076a2b4  0a 00 a0 e1                                      mov r0, sl
0076a2b8  05 10 a0 e1                                      mov r1, r5
0076a2bc  09 20 a0 e1                                      mov r2, sb
0076a2c0  00 40 8d e5                                      str r4, [sp]
0076a2c4  51 ff ff eb                                      bl #0x76a010
0076a2c8  d4 ff ff ea                                      b #0x76a220
0076a2cc  0a 10 a0 e1                                      mov r1, sl
0076a2d0  5e ff ff eb                                      bl #0x76a050
0076a2d4  05 10 a0 e1                                      mov r1, r5
0076a2d8  08 00 8a e2                                      add r0, sl, #8
0076a2dc  1b a3 ff eb                                      bl #0x752f50
0076a2e0  09 10 a0 e1                                      mov r1, sb
0076a2e4  1c 00 8a e2                                      add r0, sl, #0x1c
0076a2e8  13 b5 00 eb                                      bl #0x79773c
0076a2ec  8b 71 86 e7                                      str r7, [r6, fp, lsl #3]
0076a2f0  04 40 8a e5                                      str r4, [sl, #4]
0076a2f4  c9 ff ff ea                                      b #0x76a220

; FUNCTION 0x0076a2f8, declared_size=400, range_size=400, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_8as_valueENS_20stringi_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
; decoder-mode: arm
0076a2f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076a2fc  00 00 51 e3                                      cmp r1, #0
0076a300  0c d0 4d e2                                      sub sp, sp, #0xc
0076a304  00 90 a0 e1                                      mov sb, r0
0076a308  5b 00 00 da                                      ble #0x76a47c
0076a30c  01 00 41 e2                                      sub r0, r1, #1
0076a310  93 91 ee eb                                      bl #0x30e964
0076a314  e6 8e ee eb                                      bl #0x30deb4
0076a318  18 12 07 e3                                      movw r1, #0x7218
0076a31c  31 1f 43 e3                                      movt r1, #0x3f31
0076a320  5b 92 ee eb                                      bl #0x30ec94
0076a324  fe 15 a0 e3                                      mov r1, #0x3f800000
0076a328  1d 92 ee eb                                      bl #0x30eba4
0076a32c  66 90 ee eb                                      bl #0x30e4cc
0076a330  01 40 a0 e3                                      mov r4, #1
0076a334  14 40 a0 e1                                      lsl r4, r4, r0
0076a338  00 30 99 e5                                      ldr r3, [sb]
0076a33c  04 00 54 e3                                      cmp r4, #4
0076a340  04 40 a0 b3                                      movlt r4, #4
0076a344  00 00 53 e3                                      cmp r3, #0
0076a348  03 00 00 0a                                      beq #0x76a35c
0076a34c  04 30 93 e5                                      ldr r3, [r3, #4]
0076a350  01 30 83 e2                                      add r3, r3, #1
0076a354  04 00 53 e1                                      cmp r3, r4
0076a358  48 00 00 0a                                      beq #0x76a480
0076a35c  04 01 84 e0                                      add r0, r4, r4, lsl #2
0076a360  00 50 a0 e3                                      mov r5, #0
0076a364  01 00 80 e2                                      add r0, r0, #1
0076a368  80 01 a0 e1                                      lsl r0, r0, #3
0076a36c  05 10 a0 e1                                      mov r1, r5
0076a370  04 50 8d e5                                      str r5, [sp, #4]
0076a374  08 a2 ff eb                                      bl #0x752b9c
0076a378  04 00 8d e5                                      str r0, [sp, #4]
0076a37c  00 50 80 e5                                      str r5, [r0]
0076a380  04 30 9d e5                                      ldr r3, [sp, #4]
0076a384  01 20 44 e2                                      sub r2, r4, #1
0076a388  01 b0 e0 e3                                      mvn fp, #1
0076a38c  04 20 83 e5                                      str r2, [r3, #4]
0076a390  08 30 a0 e3                                      mov r3, #8
0076a394  04 20 9d e5                                      ldr r2, [sp, #4]
0076a398  01 50 85 e2                                      add r5, r5, #1
0076a39c  05 00 54 e1                                      cmp r4, r5
0076a3a0  03 b0 82 e7                                      str fp, [r2, r3]
0076a3a4  28 30 83 e2                                      add r3, r3, #0x28
0076a3a8  f9 ff ff ca                                      bgt #0x76a394
0076a3ac  00 30 99 e5                                      ldr r3, [sb]
0076a3b0  00 00 53 e3                                      cmp r3, #0
0076a3b4  04 a0 8d 02                                      addeq sl, sp, #4
0076a3b8  2a 00 00 0a                                      beq #0x76a468
0076a3bc  04 80 93 e5                                      ldr r8, [r3, #4]
0076a3c0  00 00 58 e3                                      cmp r8, #0
0076a3c4  04 a0 8d b2                                      addlt sl, sp, #4
0076a3c8  21 00 00 ba                                      blt #0x76a454
0076a3cc  00 60 a0 e3                                      mov r6, #0
0076a3d0  08 50 a0 e3                                      mov r5, #8
0076a3d4  04 a0 8d e2                                      add sl, sp, #4
0076a3d8  08 00 00 ea                                      b #0x76a400
0076a3dc  07 00 a0 e1                                      mov r0, r7
0076a3e0  4f b3 00 eb                                      bl #0x797124
0076a3e4  00 30 a0 e3                                      mov r3, #0
0076a3e8  04 30 84 e5                                      str r3, [r4, #4]
0076a3ec  00 b0 84 e5                                      str fp, [r4]
0076a3f0  00 30 99 e5                                      ldr r3, [sb]
0076a3f4  06 00 58 e1                                      cmp r8, r6
0076a3f8  28 50 85 e2                                      add r5, r5, #0x28
0076a3fc  13 00 00 ba                                      blt #0x76a450
0076a400  05 c0 93 e7                                      ldr ip, [r3, r5]
0076a404  05 40 83 e0                                      add r4, r3, r5
0076a408  1c 70 84 e2                                      add r7, r4, #0x1c
0076a40c  02 00 7c e3                                      cmn ip, #2
0076a410  0a 00 a0 e1                                      mov r0, sl
0076a414  01 60 86 e2                                      add r6, r6, #1
0076a418  08 10 84 e2                                      add r1, r4, #8
0076a41c  07 20 a0 e1                                      mov r2, r7
0076a420  f3 ff ff 0a                                      beq #0x76a3f4
0076a424  04 c0 94 e5                                      ldr ip, [r4, #4]
0076a428  01 00 7c e3                                      cmn ip, #1
0076a42c  f0 ff ff 0a                                      beq #0x76a3f4
0076a430  3e ff ff eb                                      bl #0x76a130
0076a434  d8 30 d4 e1                                      ldrsb r3, [r4, #8]
0076a438  01 00 73 e3                                      cmn r3, #1
0076a43c  e6 ff ff 1a                                      bne #0x76a3dc
0076a440  14 00 94 e5                                      ldr r0, [r4, #0x14]
0076a444  10 10 94 e5                                      ldr r1, [r4, #0x10]
0076a448  ba a1 ff eb                                      bl #0x752b38
0076a44c  e2 ff ff ea                                      b #0x76a3dc
0076a450  04 80 93 e5                                      ldr r8, [r3, #4]
0076a454  08 81 88 e0                                      add r8, r8, r8, lsl #2
0076a458  06 10 88 e2                                      add r1, r8, #6
0076a45c  03 00 a0 e1                                      mov r0, r3
0076a460  81 11 a0 e1                                      lsl r1, r1, #3
0076a464  b3 a1 ff eb                                      bl #0x752b38
0076a468  04 30 9d e5                                      ldr r3, [sp, #4]
0076a46c  0a 00 a0 e1                                      mov r0, sl
0076a470  00 30 89 e5                                      str r3, [sb]
0076a474  00 30 a0 e3                                      mov r3, #0
0076a478  04 30 8d e5                                      str r3, [sp, #4]
0076a47c  30 fd ff eb                                      bl #0x769944
0076a480  0c d0 8d e2                                      add sp, sp, #0xc
0076a484  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0076a488, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_8as_valueENS_20stringi_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::check_expand()
; decoder-mode: arm
0076a488  00 30 90 e5                                      ldr r3, [r0]
0076a48c  00 00 53 e3                                      cmp r3, #0
0076a490  07 00 00 0a                                      beq #0x76a4b4
0076a494  04 10 93 e5                                      ldr r1, [r3, #4]
0076a498  00 30 93 e5                                      ldr r3, [r3]
0076a49c  01 10 81 e2                                      add r1, r1, #1
0076a4a0  81 10 a0 e1                                      lsl r1, r1, #1
0076a4a4  83 30 83 e0                                      add r3, r3, r3, lsl #1
0076a4a8  01 00 53 e1                                      cmp r3, r1
0076a4ac  1e ff 2f d1                                      bxle lr
0076a4b0  90 ff ff ea                                      b #0x76a2f8
0076a4b4  08 10 a0 e3                                      mov r1, #8
0076a4b8  8e ff ff ea                                      b #0x76a2f8

; FUNCTION 0x0076a4bc, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_8as_valueENS_20stringi_hash_functorIS1_EEE3setERKS1_RKS2_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
0076a4bc  70 40 2d e9                                      push {r4, r5, r6, lr}
0076a4c0  02 40 a0 e1                                      mov r4, r2
0076a4c4  00 50 a0 e1                                      mov r5, r0
0076a4c8  01 60 a0 e1                                      mov r6, r1
0076a4cc  86 fa ff eb                                      bl #0x768eec
0076a4d0  00 00 50 e3                                      cmp r0, #0
0076a4d4  06 00 00 ba                                      blt #0x76a4f4
0076a4d8  00 30 95 e5                                      ldr r3, [r5]
0076a4dc  00 01 80 e0                                      add r0, r0, r0, lsl #2
0076a4e0  04 10 a0 e1                                      mov r1, r4
0076a4e4  80 01 83 e0                                      add r0, r3, r0, lsl #3
0076a4e8  24 00 80 e2                                      add r0, r0, #0x24
0076a4ec  70 40 bd e8                                      pop {r4, r5, r6, lr}
0076a4f0  91 b4 00 ea                                      b #0x79773c
0076a4f4  05 00 a0 e1                                      mov r0, r5
0076a4f8  06 10 a0 e1                                      mov r1, r6
0076a4fc  04 20 a0 e1                                      mov r2, r4
0076a500  70 40 bd e8                                      pop {r4, r5, r6, lr}
0076a504  09 ff ff ea                                      b #0x76a130

; FUNCTION 0x0076afa4, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_8as_valueENS_20stringi_hash_functorIS1_EEEaSERKS5_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::operator=(gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> > const&)
; decoder-mode: arm
0076afa4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0076afa8  01 70 a0 e1                                      mov r7, r1
0076afac  00 60 a0 e1                                      mov r6, r0
0076afb0  63 fa ff eb                                      bl #0x769944
0076afb4  00 30 97 e5                                      ldr r3, [r7]
0076afb8  00 00 53 e3                                      cmp r3, #0
0076afbc  02 00 00 0a                                      beq #0x76afcc
0076afc0  00 30 93 e5                                      ldr r3, [r3]
0076afc4  00 00 53 e3                                      cmp r3, #0
0076afc8  00 00 00 1a                                      bne #0x76afd0
0076afcc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076afd0  00 20 96 e5                                      ldr r2, [r6]
0076afd4  00 00 52 e3                                      cmp r2, #0
0076afd8  00 10 92 15                                      ldrne r1, [r2]
0076afdc  02 10 a0 01                                      moveq r1, r2
0076afe0  01 00 53 e1                                      cmp r3, r1
0076afe4  83 30 83 a0                                      addge r3, r3, r3, lsl #1
0076afe8  a3 3f 83 a0                                      addge r3, r3, r3, lsr #31
0076afec  c3 10 a0 a1                                      asrge r1, r3, #1
0076aff0  3d 00 00 ba                                      blt #0x76b0ec
0076aff4  06 00 a0 e1                                      mov r0, r6
0076aff8  be fc ff eb                                      bl #0x76a2f8
0076affc  00 20 97 e5                                      ldr r2, [r7]
0076b000  00 00 52 e3                                      cmp r2, #0
0076b004  f0 ff ff 0a                                      beq #0x76afcc
0076b008  04 10 92 e5                                      ldr r1, [r2, #4]
0076b00c  00 00 51 e3                                      cmp r1, #0
0076b010  00 40 a0 b3                                      movlt r4, #0
0076b014  26 00 00 aa                                      bge #0x76b0b4
0076b018  00 00 57 e3                                      cmp r7, #0
0076b01c  00 30 97 15                                      ldrne r3, [r7]
0076b020  03 00 00 1a                                      bne #0x76b034
0076b024  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076b028  04 10 90 e5                                      ldr r1, [r0, #4]
0076b02c  01 00 71 e3                                      cmn r1, #1
0076b030  1b 00 00 0a                                      beq #0x76b0a4
0076b034  04 51 84 e0                                      add r5, r4, r4, lsl #2
0076b038  01 50 85 e2                                      add r5, r5, #1
0076b03c  85 51 a0 e1                                      lsl r5, r5, #3
0076b040  05 10 83 e0                                      add r1, r3, r5
0076b044  00 00 53 e3                                      cmp r3, #0
0076b048  1c 20 81 e2                                      add r2, r1, #0x1c
0076b04c  06 00 a0 e1                                      mov r0, r6
0076b050  08 10 81 e2                                      add r1, r1, #8
0076b054  dc ff ff 0a                                      beq #0x76afcc
0076b058  04 30 93 e5                                      ldr r3, [r3, #4]
0076b05c  03 00 54 e1                                      cmp r4, r3
0076b060  d9 ff ff ca                                      bgt #0x76afcc
0076b064  31 fc ff eb                                      bl #0x76a130
0076b068  00 30 97 e5                                      ldr r3, [r7]
0076b06c  04 c0 93 e5                                      ldr ip, [r3, #4]
0076b070  0c 00 54 e1                                      cmp r4, ip
0076b074  f1 ff ff ca                                      bgt #0x76b040
0076b078  01 40 84 e2                                      add r4, r4, #1
0076b07c  0c 00 54 e1                                      cmp r4, ip
0076b080  eb ff ff ca                                      bgt #0x76b034
0076b084  04 21 84 e0                                      add r2, r4, r4, lsl #2
0076b088  01 20 82 e2                                      add r2, r2, #1
0076b08c  82 21 a0 e1                                      lsl r2, r2, #3
0076b090  02 10 93 e7                                      ldr r1, [r3, r2]
0076b094  02 00 83 e0                                      add r0, r3, r2
0076b098  28 20 82 e2                                      add r2, r2, #0x28
0076b09c  02 00 71 e3                                      cmn r1, #2
0076b0a0  e0 ff ff 1a                                      bne #0x76b028
0076b0a4  01 40 84 e2                                      add r4, r4, #1
0076b0a8  0c 00 54 e1                                      cmp r4, ip
0076b0ac  f7 ff ff da                                      ble #0x76b090
0076b0b0  df ff ff ea                                      b #0x76b034
0076b0b4  08 30 a0 e3                                      mov r3, #8
0076b0b8  00 40 a0 e3                                      mov r4, #0
0076b0bc  03 00 92 e7                                      ldr r0, [r2, r3]
0076b0c0  03 c0 82 e0                                      add ip, r2, r3
0076b0c4  28 30 83 e2                                      add r3, r3, #0x28
0076b0c8  02 00 70 e3                                      cmn r0, #2
0076b0cc  02 00 00 0a                                      beq #0x76b0dc
0076b0d0  04 00 9c e5                                      ldr r0, [ip, #4]
0076b0d4  01 00 70 e3                                      cmn r0, #1
0076b0d8  ce ff ff 1a                                      bne #0x76b018
0076b0dc  01 40 84 e2                                      add r4, r4, #1
0076b0e0  01 00 54 e1                                      cmp r4, r1
0076b0e4  f4 ff ff da                                      ble #0x76b0bc
0076b0e8  ca ff ff ea                                      b #0x76b018
0076b0ec  00 00 52 e3                                      cmp r2, #0
0076b0f0  00 10 92 15                                      ldrne r1, [r2]
0076b0f4  02 10 a0 01                                      moveq r1, r2
0076b0f8  81 10 81 10                                      addne r1, r1, r1, lsl #1
0076b0fc  a1 1f 81 10                                      addne r1, r1, r1, lsr #31
0076b100  c1 10 a0 11                                      asrne r1, r1, #1
0076b104  ba ff ff ea                                      b #0x76aff4
