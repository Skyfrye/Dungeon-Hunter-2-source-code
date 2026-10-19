; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00763d1c, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPFvPNS_6streamEiPNS_20movie_definition_subEENS_15fixed_size_hashIiEEE5clearEv
; demangled: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >::clear()
; decoder-mode: arm
00763d1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00763d20  00 40 a0 e1                                      mov r4, r0
00763d24  00 00 90 e5                                      ldr r0, [r0]
00763d28  00 00 50 e3                                      cmp r0, #0
00763d2c  19 00 00 0a                                      beq #0x763d98
00763d30  04 10 90 e5                                      ldr r1, [r0, #4]
00763d34  00 00 51 e3                                      cmp r1, #0
00763d38  11 00 00 ba                                      blt #0x763d84
00763d3c  00 20 a0 e3                                      mov r2, #0
00763d40  08 30 a0 e3                                      mov r3, #8
00763d44  01 60 e0 e3                                      mvn r6, #1
00763d48  02 50 a0 e1                                      mov r5, r2
00763d4c  03 e0 90 e7                                      ldr lr, [r0, r3]
00763d50  01 20 82 e2                                      add r2, r2, #1
00763d54  03 c0 80 e0                                      add ip, r0, r3
00763d58  02 00 7e e3                                      cmn lr, #2
00763d5c  04 00 00 0a                                      beq #0x763d74
00763d60  04 e0 9c e5                                      ldr lr, [ip, #4]
00763d64  01 00 7e e3                                      cmn lr, #1
00763d68  04 50 8c 15                                      strne r5, [ip, #4]
00763d6c  00 60 8c 15                                      strne r6, [ip]
00763d70  00 00 94 15                                      ldrne r0, [r4]
00763d74  02 00 51 e1                                      cmp r1, r2
00763d78  10 30 83 e2                                      add r3, r3, #0x10
00763d7c  f2 ff ff aa                                      bge #0x763d4c
00763d80  04 10 90 e5                                      ldr r1, [r0, #4]
00763d84  01 12 a0 e1                                      lsl r1, r1, #4
00763d88  18 10 81 e2                                      add r1, r1, #0x18
00763d8c  69 bb ff eb                                      bl #0x752b38
00763d90  00 30 a0 e3                                      mov r3, #0
00763d94  00 30 84 e5                                      str r3, [r4]
00763d98  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00763d9c, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPFvPNS_6streamEiPNS_20movie_definition_subEENS_15fixed_size_hashIiEEED1Ev
; demangled: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >::~hash()
; decoder-mode: arm
00763d9c  10 40 2d e9                                      push {r4, lr}
00763da0  00 40 a0 e1                                      mov r4, r0
00763da4  dc ff ff eb                                      bl #0x763d1c
00763da8  04 00 a0 e1                                      mov r0, r4
00763dac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0076493c, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPFvPNS_6streamEiPNS_20movie_definition_subEENS_15fixed_size_hashIiEEE16set_raw_capacityEi
; demangled: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
; decoder-mode: arm
0076493c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00764940  00 00 51 e3                                      cmp r1, #0
00764944  0c d0 4d e2                                      sub sp, sp, #0xc
00764948  00 80 a0 e1                                      mov r8, r0
0076494c  4d 00 00 da                                      ble #0x764a88
00764950  01 00 41 e2                                      sub r0, r1, #1
00764954  02 a8 ee eb                                      bl #0x30e964
00764958  55 a5 ee eb                                      bl #0x30deb4
0076495c  18 12 07 e3                                      movw r1, #0x7218
00764960  31 1f 43 e3                                      movt r1, #0x3f31
00764964  ca a8 ee eb                                      bl #0x30ec94
00764968  fe 15 a0 e3                                      mov r1, #0x3f800000
0076496c  8c a8 ee eb                                      bl #0x30eba4
00764970  d5 a6 ee eb                                      bl #0x30e4cc
00764974  01 40 a0 e3                                      mov r4, #1
00764978  14 40 a0 e1                                      lsl r4, r4, r0
0076497c  00 30 98 e5                                      ldr r3, [r8]
00764980  04 00 54 e3                                      cmp r4, #4
00764984  04 40 a0 b3                                      movlt r4, #4
00764988  00 00 53 e3                                      cmp r3, #0
0076498c  03 00 00 0a                                      beq #0x7649a0
00764990  04 30 93 e5                                      ldr r3, [r3, #4]
00764994  01 30 83 e2                                      add r3, r3, #1
00764998  04 00 53 e1                                      cmp r3, r4
0076499c  3a 00 00 0a                                      beq #0x764a8c
007649a0  00 50 a0 e3                                      mov r5, #0
007649a4  04 02 a0 e1                                      lsl r0, r4, #4
007649a8  08 00 80 e2                                      add r0, r0, #8
007649ac  05 10 a0 e1                                      mov r1, r5
007649b0  04 50 8d e5                                      str r5, [sp, #4]
007649b4  78 b8 ff eb                                      bl #0x752b9c
007649b8  04 00 8d e5                                      str r0, [sp, #4]
007649bc  00 50 80 e5                                      str r5, [r0]
007649c0  04 30 9d e5                                      ldr r3, [sp, #4]
007649c4  01 20 44 e2                                      sub r2, r4, #1
007649c8  01 90 e0 e3                                      mvn sb, #1
007649cc  04 20 83 e5                                      str r2, [r3, #4]
007649d0  08 30 a0 e3                                      mov r3, #8
007649d4  04 20 9d e5                                      ldr r2, [sp, #4]
007649d8  01 50 85 e2                                      add r5, r5, #1
007649dc  05 00 54 e1                                      cmp r4, r5
007649e0  03 90 82 e7                                      str sb, [r2, r3]
007649e4  10 30 83 e2                                      add r3, r3, #0x10
007649e8  f9 ff ff ca                                      bgt #0x7649d4
007649ec  00 30 98 e5                                      ldr r3, [r8]
007649f0  00 00 53 e3                                      cmp r3, #0
007649f4  04 a0 8d 02                                      addeq sl, sp, #4
007649f8  1d 00 00 0a                                      beq #0x764a74
007649fc  04 70 93 e5                                      ldr r7, [r3, #4]
00764a00  00 00 57 e3                                      cmp r7, #0
00764a04  04 a0 8d b2                                      addlt sl, sp, #4
00764a08  15 00 00 ba                                      blt #0x764a64
00764a0c  00 60 a0 e3                                      mov r6, #0
00764a10  08 40 a0 e3                                      mov r4, #8
00764a14  04 a0 8d e2                                      add sl, sp, #4
00764a18  06 b0 a0 e1                                      mov fp, r6
00764a1c  04 20 93 e7                                      ldr r2, [r3, r4]
00764a20  01 60 86 e2                                      add r6, r6, #1
00764a24  04 50 83 e0                                      add r5, r3, r4
00764a28  02 00 72 e3                                      cmn r2, #2
00764a2c  08 00 00 0a                                      beq #0x764a54
00764a30  04 20 95 e5                                      ldr r2, [r5, #4]
00764a34  0a 00 a0 e1                                      mov r0, sl
00764a38  08 10 85 e2                                      add r1, r5, #8
00764a3c  01 00 72 e3                                      cmn r2, #1
00764a40  03 00 00 0a                                      beq #0x764a54
00764a44  0c 20 85 e2                                      add r2, r5, #0xc
00764a48  1e 00 00 eb                                      bl #0x764ac8
00764a4c  00 0a 85 e8                                      stm r5, {sb, fp}
00764a50  00 30 98 e5                                      ldr r3, [r8]
00764a54  06 00 57 e1                                      cmp r7, r6
00764a58  10 40 84 e2                                      add r4, r4, #0x10
00764a5c  ee ff ff aa                                      bge #0x764a1c
00764a60  04 70 93 e5                                      ldr r7, [r3, #4]
00764a64  07 12 a0 e1                                      lsl r1, r7, #4
00764a68  03 00 a0 e1                                      mov r0, r3
00764a6c  18 10 81 e2                                      add r1, r1, #0x18
00764a70  30 b8 ff eb                                      bl #0x752b38
00764a74  04 30 9d e5                                      ldr r3, [sp, #4]
00764a78  0a 00 a0 e1                                      mov r0, sl
00764a7c  00 30 88 e5                                      str r3, [r8]
00764a80  00 30 a0 e3                                      mov r3, #0
00764a84  04 30 8d e5                                      str r3, [sp, #4]
00764a88  a3 fc ff eb                                      bl #0x763d1c
00764a8c  0c d0 8d e2                                      add sp, sp, #0xc
00764a90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00764a94, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPFvPNS_6streamEiPNS_20movie_definition_subEENS_15fixed_size_hashIiEEE12check_expandEv
; demangled: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >::check_expand()
; decoder-mode: arm
00764a94  00 30 90 e5                                      ldr r3, [r0]
00764a98  00 00 53 e3                                      cmp r3, #0
00764a9c  07 00 00 0a                                      beq #0x764ac0
00764aa0  04 10 93 e5                                      ldr r1, [r3, #4]
00764aa4  00 30 93 e5                                      ldr r3, [r3]
00764aa8  01 10 81 e2                                      add r1, r1, #1
00764aac  81 10 a0 e1                                      lsl r1, r1, #1
00764ab0  83 30 83 e0                                      add r3, r3, r3, lsl #1
00764ab4  01 00 53 e1                                      cmp r3, r1
00764ab8  1e ff 2f d1                                      bxle lr
00764abc  9e ff ff ea                                      b #0x76493c
00764ac0  08 10 a0 e3                                      mov r1, #8
00764ac4  9c ff ff ea                                      b #0x76493c

; FUNCTION 0x00764ac8, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPFvPNS_6streamEiPNS_20movie_definition_subEENS_15fixed_size_hashIiEEE3addERKiRKS6_
; demangled: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >::add(int const&, void (* const&)(gameswf::stream*, int, gameswf::movie_definition_sub*))
; decoder-mode: arm
00764ac8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00764acc  00 60 a0 e1                                      mov r6, r0
00764ad0  01 40 a0 e1                                      mov r4, r1
00764ad4  02 50 a0 e1                                      mov r5, r2
00764ad8  ed ff ff eb                                      bl #0x764a94
00764adc  00 10 96 e5                                      ldr r1, [r6]
00764ae0  05 25 01 e3                                      movw r2, #0x1505
00764ae4  04 30 a0 e3                                      mov r3, #4
00764ae8  00 00 91 e5                                      ldr r0, [r1]
00764aec  01 00 80 e2                                      add r0, r0, #1
00764af0  00 00 81 e5                                      str r0, [r1]
00764af4  01 30 43 e2                                      sub r3, r3, #1
00764af8  03 00 d4 e7                                      ldrb r0, [r4, r3]
00764afc  02 13 a0 e1                                      lsl r1, r2, #6
00764b00  02 18 81 e0                                      add r1, r1, r2, lsl #16
00764b04  00 10 81 e0                                      add r1, r1, r0
00764b08  00 00 53 e3                                      cmp r3, #0
00764b0c  01 20 62 e0                                      rsb r2, r2, r1
00764b10  f7 ff ff 1a                                      bne #0x764af4
00764b14  00 30 96 e5                                      ldr r3, [r6]
00764b18  01 00 72 e3                                      cmn r2, #1
00764b1c  02 29 e0 03                                      mvneq r2, #0x8000
00764b20  04 70 93 e5                                      ldr r7, [r3, #4]
00764b24  07 60 02 e0                                      and r6, r2, r7
00764b28  86 a0 a0 e1                                      lsl sl, r6, #1
00764b2c  01 a0 8a e2                                      add sl, sl, #1
00764b30  8a 91 93 e7                                      ldr sb, [r3, sl, lsl #3]
00764b34  8a 81 83 e0                                      add r8, r3, sl, lsl #3
00764b38  02 00 79 e3                                      cmn sb, #2
00764b3c  00 10 e0 03                                      mvneq r1, #0
00764b40  8a 11 83 07                                      streq r1, [r3, sl, lsl #3]
00764b44  24 00 00 0a                                      beq #0x764bdc
00764b48  04 b0 98 e5                                      ldr fp, [r8, #4]
00764b4c  01 00 7b e3                                      cmn fp, #1
00764b50  06 10 a0 11                                      movne r1, r6
00764b54  20 00 00 0a                                      beq #0x764bdc
00764b58  01 10 81 e2                                      add r1, r1, #1
00764b5c  07 10 01 e0                                      and r1, r1, r7
00764b60  81 00 a0 e1                                      lsl r0, r1, #1
00764b64  01 00 80 e2                                      add r0, r0, #1
00764b68  80 c1 93 e7                                      ldr ip, [r3, r0, lsl #3]
00764b6c  80 01 83 e0                                      add r0, r3, r0, lsl #3
00764b70  02 00 7c e3                                      cmn ip, #2
00764b74  f7 ff ff 1a                                      bne #0x764b58
00764b78  0b 70 07 e0                                      and r7, r7, fp
00764b7c  06 00 57 e1                                      cmp r7, r6
00764b80  1b 00 00 0a                                      beq #0x764bf4
00764b84  87 70 a0 e1                                      lsl r7, r7, #1
00764b88  01 b0 87 e2                                      add fp, r7, #1
00764b8c  8b 71 93 e7                                      ldr r7, [r3, fp, lsl #3]
00764b90  8b b1 83 e0                                      add fp, r3, fp, lsl #3
00764b94  06 00 57 e1                                      cmp r7, r6
00764b98  f9 ff ff 1a                                      bne #0x764b84
00764b9c  00 90 80 e5                                      str sb, [r0]
00764ba0  04 c0 98 e5                                      ldr ip, [r8, #4]
00764ba4  04 c0 80 e5                                      str ip, [r0, #4]
00764ba8  08 c0 98 e5                                      ldr ip, [r8, #8]
00764bac  08 c0 80 e5                                      str ip, [r0, #8]
00764bb0  0c c0 98 e5                                      ldr ip, [r8, #0xc]
00764bb4  0c c0 80 e5                                      str ip, [r0, #0xc]
00764bb8  00 10 8b e5                                      str r1, [fp]
00764bbc  00 10 94 e5                                      ldr r1, [r4]
00764bc0  08 10 88 e5                                      str r1, [r8, #8]
00764bc4  00 10 95 e5                                      ldr r1, [r5]
00764bc8  04 20 88 e5                                      str r2, [r8, #4]
00764bcc  00 20 e0 e3                                      mvn r2, #0
00764bd0  0c 10 88 e5                                      str r1, [r8, #0xc]
00764bd4  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
00764bd8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00764bdc  04 20 88 e5                                      str r2, [r8, #4]
00764be0  00 30 94 e5                                      ldr r3, [r4]
00764be4  08 30 88 e5                                      str r3, [r8, #8]
00764be8  00 30 95 e5                                      ldr r3, [r5]
00764bec  0c 30 88 e5                                      str r3, [r8, #0xc]
00764bf0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00764bf4  00 90 80 e5                                      str sb, [r0]
00764bf8  04 c0 98 e5                                      ldr ip, [r8, #4]
00764bfc  04 c0 80 e5                                      str ip, [r0, #4]
00764c00  08 c0 98 e5                                      ldr ip, [r8, #8]
00764c04  08 c0 80 e5                                      str ip, [r0, #8]
00764c08  0c c0 98 e5                                      ldr ip, [r8, #0xc]
00764c0c  0c c0 80 e5                                      str ip, [r0, #0xc]
00764c10  00 00 94 e5                                      ldr r0, [r4]
00764c14  08 00 88 e5                                      str r0, [r8, #8]
00764c18  00 00 95 e5                                      ldr r0, [r5]
00764c1c  0c 00 88 e5                                      str r0, [r8, #0xc]
00764c20  8a 11 83 e7                                      str r1, [r3, sl, lsl #3]
00764c24  04 20 88 e5                                      str r2, [r8, #4]
00764c28  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00765208, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiPFvPNS_6streamEiPNS_20movie_definition_subEENS_15fixed_size_hashIiEEE10find_indexERKi.clone.1
; demangled: gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >::find_index(int const&) const [clone .clone.1]
; decoder-mode: arm
00765208  30 00 2d e9                                      push {r4, r5}
0076520c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00765210  00 c0 a0 e1                                      mov ip, r0
00765214  03 10 9f e7                                      ldr r1, [pc, r3]
00765218  00 00 51 e3                                      cmp r1, #0
0076521c  02 00 00 1a                                      bne #0x76522c
00765220  00 00 e0 e3                                      mvn r0, #0
00765224  30 00 bd e8                                      pop {r4, r5}
00765228  1e ff 2f e1                                      bx lr
0076522c  05 35 01 e3                                      movw r3, #0x1505
00765230  04 20 a0 e3                                      mov r2, #4
00765234  01 20 42 e2                                      sub r2, r2, #1
00765238  02 40 dc e7                                      ldrb r4, [ip, r2]
0076523c  03 03 a0 e1                                      lsl r0, r3, #6
00765240  03 08 80 e0                                      add r0, r0, r3, lsl #16
00765244  04 00 80 e0                                      add r0, r0, r4
00765248  00 00 52 e3                                      cmp r2, #0
0076524c  00 30 63 e0                                      rsb r3, r3, r0
00765250  f7 ff ff 1a                                      bne #0x765234
00765254  04 40 91 e5                                      ldr r4, [r1, #4]
00765258  01 00 73 e3                                      cmn r3, #1
0076525c  02 39 e0 03                                      mvneq r3, #0x8000
00765260  04 00 03 e0                                      and r0, r3, r4
00765264  80 20 a0 e1                                      lsl r2, r0, #1
00765268  01 20 82 e2                                      add r2, r2, #1
0076526c  82 51 91 e7                                      ldr r5, [r1, r2, lsl #3]
00765270  82 21 81 e0                                      add r2, r1, r2, lsl #3
00765274  02 00 75 e3                                      cmn r5, #2
00765278  e8 ff ff 0a                                      beq #0x765220
0076527c  04 50 92 e5                                      ldr r5, [r2, #4]
00765280  01 00 75 e3                                      cmn r5, #1
00765284  06 00 00 0a                                      beq #0x7652a4
00765288  05 40 04 e0                                      and r4, r4, r5
0076528c  04 00 50 e1                                      cmp r0, r4
00765290  e2 ff ff 1a                                      bne #0x765220
00765294  02 00 00 ea                                      b #0x7652a4
00765298  00 22 81 e0                                      add r2, r1, r0, lsl #4
0076529c  08 20 82 e2                                      add r2, r2, #8
007652a0  04 50 92 e5                                      ldr r5, [r2, #4]
007652a4  05 00 53 e1                                      cmp r3, r5
007652a8  03 00 00 1a                                      bne #0x7652bc
007652ac  08 50 92 e5                                      ldr r5, [r2, #8]
007652b0  00 40 9c e5                                      ldr r4, [ip]
007652b4  04 00 55 e1                                      cmp r5, r4
007652b8  d9 ff ff 0a                                      beq #0x765224
007652bc  00 00 92 e5                                      ldr r0, [r2]
007652c0  01 00 70 e3                                      cmn r0, #1
007652c4  d6 ff ff 0a                                      beq #0x765224
007652c8  f2 ff ff ea                                      b #0x765298
; mapping-symbol data/literal pool
007652cc  60 75 29 00                                      .byte 0x60, 0x75, 0x29, 0x00
