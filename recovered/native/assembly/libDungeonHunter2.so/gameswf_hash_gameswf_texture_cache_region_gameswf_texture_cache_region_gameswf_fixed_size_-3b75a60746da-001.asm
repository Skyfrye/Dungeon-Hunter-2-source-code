; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00793754, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >
; alias: _ZNK7gameswf4hashIPNS_13texture_cache6regionES3_NS_15fixed_size_hashIS3_EEE10find_indexERKS3_
; demangled: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >::find_index(gameswf::texture_cache::region* const&) const
; decoder-mode: arm
00793754  30 00 2d e9                                      push {r4, r5}
00793758  00 30 90 e5                                      ldr r3, [r0]
0079375c  00 00 53 e3                                      cmp r3, #0
00793760  02 00 00 1a                                      bne #0x793770
00793764  00 00 e0 e3                                      mvn r0, #0
00793768  30 00 bd e8                                      pop {r4, r5}
0079376c  1e ff 2f e1                                      bx lr
00793770  05 25 01 e3                                      movw r2, #0x1505
00793774  04 00 a0 e3                                      mov r0, #4
00793778  01 00 40 e2                                      sub r0, r0, #1
0079377c  00 40 d1 e7                                      ldrb r4, [r1, r0]
00793780  02 c3 a0 e1                                      lsl ip, r2, #6
00793784  02 c8 8c e0                                      add ip, ip, r2, lsl #16
00793788  04 c0 8c e0                                      add ip, ip, r4
0079378c  00 00 50 e3                                      cmp r0, #0
00793790  0c 20 62 e0                                      rsb r2, r2, ip
00793794  f7 ff ff 1a                                      bne #0x793778
00793798  04 00 93 e5                                      ldr r0, [r3, #4]
0079379c  01 00 72 e3                                      cmn r2, #1
007937a0  02 29 e0 03                                      mvneq r2, #0x8000
007937a4  00 40 02 e0                                      and r4, r2, r0
007937a8  84 c0 a0 e1                                      lsl ip, r4, #1
007937ac  01 c0 8c e2                                      add ip, ip, #1
007937b0  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
007937b4  8c c1 83 e0                                      add ip, r3, ip, lsl #3
007937b8  02 00 75 e3                                      cmn r5, #2
007937bc  e8 ff ff 0a                                      beq #0x793764
007937c0  04 50 9c e5                                      ldr r5, [ip, #4]
007937c4  01 00 75 e3                                      cmn r5, #1
007937c8  04 00 a0 01                                      moveq r0, r4
007937cc  06 00 00 0a                                      beq #0x7937ec
007937d0  05 00 00 e0                                      and r0, r0, r5
007937d4  04 00 50 e1                                      cmp r0, r4
007937d8  e1 ff ff 1a                                      bne #0x793764
007937dc  02 00 00 ea                                      b #0x7937ec
007937e0  00 c2 83 e0                                      add ip, r3, r0, lsl #4
007937e4  08 c0 8c e2                                      add ip, ip, #8
007937e8  04 50 9c e5                                      ldr r5, [ip, #4]
007937ec  05 00 52 e1                                      cmp r2, r5
007937f0  03 00 00 1a                                      bne #0x793804
007937f4  08 50 9c e5                                      ldr r5, [ip, #8]
007937f8  00 40 91 e5                                      ldr r4, [r1]
007937fc  04 00 55 e1                                      cmp r5, r4
00793800  d8 ff ff 0a                                      beq #0x793768
00793804  00 00 9c e5                                      ldr r0, [ip]
00793808  01 00 70 e3                                      cmn r0, #1
0079380c  f3 ff ff 1a                                      bne #0x7937e0
00793810  d4 ff ff ea                                      b #0x793768

; FUNCTION 0x0079386c, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >
; alias: _ZN7gameswf4hashIPNS_13texture_cache6regionES3_NS_15fixed_size_hashIS3_EEE5clearEv
; demangled: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >::clear()
; decoder-mode: arm
0079386c  70 40 2d e9                                      push {r4, r5, r6, lr}
00793870  00 40 a0 e1                                      mov r4, r0
00793874  00 00 90 e5                                      ldr r0, [r0]
00793878  00 00 50 e3                                      cmp r0, #0
0079387c  19 00 00 0a                                      beq #0x7938e8
00793880  04 10 90 e5                                      ldr r1, [r0, #4]
00793884  00 00 51 e3                                      cmp r1, #0
00793888  11 00 00 ba                                      blt #0x7938d4
0079388c  00 20 a0 e3                                      mov r2, #0
00793890  08 30 a0 e3                                      mov r3, #8
00793894  01 60 e0 e3                                      mvn r6, #1
00793898  02 50 a0 e1                                      mov r5, r2
0079389c  03 e0 90 e7                                      ldr lr, [r0, r3]
007938a0  01 20 82 e2                                      add r2, r2, #1
007938a4  03 c0 80 e0                                      add ip, r0, r3
007938a8  02 00 7e e3                                      cmn lr, #2
007938ac  04 00 00 0a                                      beq #0x7938c4
007938b0  04 e0 9c e5                                      ldr lr, [ip, #4]
007938b4  01 00 7e e3                                      cmn lr, #1
007938b8  04 50 8c 15                                      strne r5, [ip, #4]
007938bc  00 60 8c 15                                      strne r6, [ip]
007938c0  00 00 94 15                                      ldrne r0, [r4]
007938c4  02 00 51 e1                                      cmp r1, r2
007938c8  10 30 83 e2                                      add r3, r3, #0x10
007938cc  f2 ff ff aa                                      bge #0x79389c
007938d0  04 10 90 e5                                      ldr r1, [r0, #4]
007938d4  01 12 a0 e1                                      lsl r1, r1, #4
007938d8  18 10 81 e2                                      add r1, r1, #0x18
007938dc  95 fc fe eb                                      bl #0x752b38
007938e0  00 30 a0 e3                                      mov r3, #0
007938e4  00 30 84 e5                                      str r3, [r4]
007938e8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007939dc, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >
; alias: _ZN7gameswf4hashIPNS_13texture_cache6regionES3_NS_15fixed_size_hashIS3_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >::set_raw_capacity(int)
; decoder-mode: arm
007939dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007939e0  00 00 51 e3                                      cmp r1, #0
007939e4  0c d0 4d e2                                      sub sp, sp, #0xc
007939e8  00 80 a0 e1                                      mov r8, r0
007939ec  4d 00 00 da                                      ble #0x793b28
007939f0  01 00 41 e2                                      sub r0, r1, #1
007939f4  da eb ed eb                                      bl #0x30e964
007939f8  2d e9 ed eb                                      bl #0x30deb4
007939fc  18 12 07 e3                                      movw r1, #0x7218
00793a00  31 1f 43 e3                                      movt r1, #0x3f31
00793a04  a2 ec ed eb                                      bl #0x30ec94
00793a08  fe 15 a0 e3                                      mov r1, #0x3f800000
00793a0c  64 ec ed eb                                      bl #0x30eba4
00793a10  ad ea ed eb                                      bl #0x30e4cc
00793a14  01 40 a0 e3                                      mov r4, #1
00793a18  14 40 a0 e1                                      lsl r4, r4, r0
00793a1c  00 30 98 e5                                      ldr r3, [r8]
00793a20  04 00 54 e3                                      cmp r4, #4
00793a24  04 40 a0 b3                                      movlt r4, #4
00793a28  00 00 53 e3                                      cmp r3, #0
00793a2c  03 00 00 0a                                      beq #0x793a40
00793a30  04 30 93 e5                                      ldr r3, [r3, #4]
00793a34  01 30 83 e2                                      add r3, r3, #1
00793a38  04 00 53 e1                                      cmp r3, r4
00793a3c  3a 00 00 0a                                      beq #0x793b2c
00793a40  00 50 a0 e3                                      mov r5, #0
00793a44  04 02 a0 e1                                      lsl r0, r4, #4
00793a48  08 00 80 e2                                      add r0, r0, #8
00793a4c  05 10 a0 e1                                      mov r1, r5
00793a50  04 50 8d e5                                      str r5, [sp, #4]
00793a54  50 fc fe eb                                      bl #0x752b9c
00793a58  04 00 8d e5                                      str r0, [sp, #4]
00793a5c  00 50 80 e5                                      str r5, [r0]
00793a60  04 30 9d e5                                      ldr r3, [sp, #4]
00793a64  01 20 44 e2                                      sub r2, r4, #1
00793a68  01 90 e0 e3                                      mvn sb, #1
00793a6c  04 20 83 e5                                      str r2, [r3, #4]
00793a70  08 30 a0 e3                                      mov r3, #8
00793a74  04 20 9d e5                                      ldr r2, [sp, #4]
00793a78  01 50 85 e2                                      add r5, r5, #1
00793a7c  05 00 54 e1                                      cmp r4, r5
00793a80  03 90 82 e7                                      str sb, [r2, r3]
00793a84  10 30 83 e2                                      add r3, r3, #0x10
00793a88  f9 ff ff ca                                      bgt #0x793a74
00793a8c  00 30 98 e5                                      ldr r3, [r8]
00793a90  00 00 53 e3                                      cmp r3, #0
00793a94  04 a0 8d 02                                      addeq sl, sp, #4
00793a98  1d 00 00 0a                                      beq #0x793b14
00793a9c  04 70 93 e5                                      ldr r7, [r3, #4]
00793aa0  00 00 57 e3                                      cmp r7, #0
00793aa4  04 a0 8d b2                                      addlt sl, sp, #4
00793aa8  15 00 00 ba                                      blt #0x793b04
00793aac  00 60 a0 e3                                      mov r6, #0
00793ab0  08 40 a0 e3                                      mov r4, #8
00793ab4  04 a0 8d e2                                      add sl, sp, #4
00793ab8  06 b0 a0 e1                                      mov fp, r6
00793abc  04 20 93 e7                                      ldr r2, [r3, r4]
00793ac0  01 60 86 e2                                      add r6, r6, #1
00793ac4  04 50 83 e0                                      add r5, r3, r4
00793ac8  02 00 72 e3                                      cmn r2, #2
00793acc  08 00 00 0a                                      beq #0x793af4
00793ad0  04 20 95 e5                                      ldr r2, [r5, #4]
00793ad4  0a 00 a0 e1                                      mov r0, sl
00793ad8  08 10 85 e2                                      add r1, r5, #8
00793adc  01 00 72 e3                                      cmn r2, #1
00793ae0  03 00 00 0a                                      beq #0x793af4
00793ae4  0c 20 85 e2                                      add r2, r5, #0xc
00793ae8  1e 00 00 eb                                      bl #0x793b68
00793aec  00 0a 85 e8                                      stm r5, {sb, fp}
00793af0  00 30 98 e5                                      ldr r3, [r8]
00793af4  06 00 57 e1                                      cmp r7, r6
00793af8  10 40 84 e2                                      add r4, r4, #0x10
00793afc  ee ff ff aa                                      bge #0x793abc
00793b00  04 70 93 e5                                      ldr r7, [r3, #4]
00793b04  07 12 a0 e1                                      lsl r1, r7, #4
00793b08  03 00 a0 e1                                      mov r0, r3
00793b0c  18 10 81 e2                                      add r1, r1, #0x18
00793b10  08 fc fe eb                                      bl #0x752b38
00793b14  04 30 9d e5                                      ldr r3, [sp, #4]
00793b18  0a 00 a0 e1                                      mov r0, sl
00793b1c  00 30 88 e5                                      str r3, [r8]
00793b20  00 30 a0 e3                                      mov r3, #0
00793b24  04 30 8d e5                                      str r3, [sp, #4]
00793b28  4f ff ff eb                                      bl #0x79386c
00793b2c  0c d0 8d e2                                      add sp, sp, #0xc
00793b30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00793b34, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >
; alias: _ZN7gameswf4hashIPNS_13texture_cache6regionES3_NS_15fixed_size_hashIS3_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >::check_expand()
; decoder-mode: arm
00793b34  00 30 90 e5                                      ldr r3, [r0]
00793b38  00 00 53 e3                                      cmp r3, #0
00793b3c  07 00 00 0a                                      beq #0x793b60
00793b40  04 10 93 e5                                      ldr r1, [r3, #4]
00793b44  00 30 93 e5                                      ldr r3, [r3]
00793b48  01 10 81 e2                                      add r1, r1, #1
00793b4c  81 10 a0 e1                                      lsl r1, r1, #1
00793b50  83 30 83 e0                                      add r3, r3, r3, lsl #1
00793b54  01 00 53 e1                                      cmp r3, r1
00793b58  1e ff 2f d1                                      bxle lr
00793b5c  9e ff ff ea                                      b #0x7939dc
00793b60  08 10 a0 e3                                      mov r1, #8
00793b64  9c ff ff ea                                      b #0x7939dc

; FUNCTION 0x00793b68, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >
; alias: _ZN7gameswf4hashIPNS_13texture_cache6regionES3_NS_15fixed_size_hashIS3_EEE3addERKS3_S8_
; demangled: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >::add(gameswf::texture_cache::region* const&, gameswf::texture_cache::region* const&)
; decoder-mode: arm
00793b68  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00793b6c  00 60 a0 e1                                      mov r6, r0
00793b70  01 40 a0 e1                                      mov r4, r1
00793b74  02 50 a0 e1                                      mov r5, r2
00793b78  ed ff ff eb                                      bl #0x793b34
00793b7c  00 10 96 e5                                      ldr r1, [r6]
00793b80  05 25 01 e3                                      movw r2, #0x1505
00793b84  04 30 a0 e3                                      mov r3, #4
00793b88  00 00 91 e5                                      ldr r0, [r1]
00793b8c  01 00 80 e2                                      add r0, r0, #1
00793b90  00 00 81 e5                                      str r0, [r1]
00793b94  01 30 43 e2                                      sub r3, r3, #1
00793b98  03 00 d4 e7                                      ldrb r0, [r4, r3]
00793b9c  02 13 a0 e1                                      lsl r1, r2, #6
00793ba0  02 18 81 e0                                      add r1, r1, r2, lsl #16
00793ba4  00 10 81 e0                                      add r1, r1, r0
00793ba8  00 00 53 e3                                      cmp r3, #0
00793bac  01 20 62 e0                                      rsb r2, r2, r1
00793bb0  f7 ff ff 1a                                      bne #0x793b94
00793bb4  00 30 96 e5                                      ldr r3, [r6]
00793bb8  01 00 72 e3                                      cmn r2, #1
00793bbc  02 29 e0 03                                      mvneq r2, #0x8000
00793bc0  04 70 93 e5                                      ldr r7, [r3, #4]
00793bc4  07 60 02 e0                                      and r6, r2, r7
00793bc8  86 a0 a0 e1                                      lsl sl, r6, #1
00793bcc  01 a0 8a e2                                      add sl, sl, #1
00793bd0  8a 91 93 e7                                      ldr sb, [r3, sl, lsl #3]
00793bd4  8a 81 83 e0                                      add r8, r3, sl, lsl #3
00793bd8  02 00 79 e3                                      cmn sb, #2
00793bdc  00 10 e0 03                                      mvneq r1, #0
00793be0  8a 11 83 07                                      streq r1, [r3, sl, lsl #3]
00793be4  24 00 00 0a                                      beq #0x793c7c
00793be8  04 b0 98 e5                                      ldr fp, [r8, #4]
00793bec  01 00 7b e3                                      cmn fp, #1
00793bf0  06 10 a0 11                                      movne r1, r6
00793bf4  20 00 00 0a                                      beq #0x793c7c
00793bf8  01 10 81 e2                                      add r1, r1, #1
00793bfc  07 10 01 e0                                      and r1, r1, r7
00793c00  81 00 a0 e1                                      lsl r0, r1, #1
00793c04  01 00 80 e2                                      add r0, r0, #1
00793c08  80 c1 93 e7                                      ldr ip, [r3, r0, lsl #3]
00793c0c  80 01 83 e0                                      add r0, r3, r0, lsl #3
00793c10  02 00 7c e3                                      cmn ip, #2
00793c14  f7 ff ff 1a                                      bne #0x793bf8
00793c18  0b 70 07 e0                                      and r7, r7, fp
00793c1c  06 00 57 e1                                      cmp r7, r6
00793c20  1b 00 00 0a                                      beq #0x793c94
00793c24  87 70 a0 e1                                      lsl r7, r7, #1
00793c28  01 b0 87 e2                                      add fp, r7, #1
00793c2c  8b 71 93 e7                                      ldr r7, [r3, fp, lsl #3]
00793c30  8b b1 83 e0                                      add fp, r3, fp, lsl #3
00793c34  06 00 57 e1                                      cmp r7, r6
00793c38  f9 ff ff 1a                                      bne #0x793c24
00793c3c  00 90 80 e5                                      str sb, [r0]
00793c40  04 c0 98 e5                                      ldr ip, [r8, #4]
00793c44  04 c0 80 e5                                      str ip, [r0, #4]
00793c48  08 c0 98 e5                                      ldr ip, [r8, #8]
00793c4c  08 c0 80 e5                                      str ip, [r0, #8]
00793c50  0c c0 98 e5                                      ldr ip, [r8, #0xc]
00793c54  0c c0 80 e5                                      str ip, [r0, #0xc]
00793c58  00 10 8b e5                                      str r1, [fp]
00793c5c  00 10 94 e5                                      ldr r1, [r4]
00793c60  08 10 88 e5                                      str r1, [r8, #8]
00793c64  00 10 95 e5                                      ldr r1, [r5]
00793c68  04 20 88 e5                                      str r2, [r8, #4]
00793c6c  00 20 e0 e3                                      mvn r2, #0
00793c70  0c 10 88 e5                                      str r1, [r8, #0xc]
00793c74  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
00793c78  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00793c7c  04 20 88 e5                                      str r2, [r8, #4]
00793c80  00 30 94 e5                                      ldr r3, [r4]
00793c84  08 30 88 e5                                      str r3, [r8, #8]
00793c88  00 30 95 e5                                      ldr r3, [r5]
00793c8c  0c 30 88 e5                                      str r3, [r8, #0xc]
00793c90  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00793c94  00 90 80 e5                                      str sb, [r0]
00793c98  04 c0 98 e5                                      ldr ip, [r8, #4]
00793c9c  04 c0 80 e5                                      str ip, [r0, #4]
00793ca0  08 c0 98 e5                                      ldr ip, [r8, #8]
00793ca4  08 c0 80 e5                                      str ip, [r0, #8]
00793ca8  0c c0 98 e5                                      ldr ip, [r8, #0xc]
00793cac  0c c0 80 e5                                      str ip, [r0, #0xc]
00793cb0  00 00 94 e5                                      ldr r0, [r4]
00793cb4  08 00 88 e5                                      str r0, [r8, #8]
00793cb8  00 00 95 e5                                      ldr r0, [r5]
00793cbc  0c 00 88 e5                                      str r0, [r8, #0xc]
00793cc0  8a 11 83 e7                                      str r1, [r3, sl, lsl #3]
00793cc4  04 20 88 e5                                      str r2, [r8, #4]
00793cc8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00793ccc, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >
; alias: _ZN7gameswf4hashIPNS_13texture_cache6regionES3_NS_15fixed_size_hashIS3_EEEixERKS3_
; demangled: gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >::operator[](gameswf::texture_cache::region* const&)
; decoder-mode: arm
00793ccc  30 40 2d e9                                      push {r4, r5, lr}
00793cd0  0c d0 4d e2                                      sub sp, sp, #0xc
00793cd4  00 40 a0 e1                                      mov r4, r0
00793cd8  01 50 a0 e1                                      mov r5, r1
00793cdc  9c fe ff eb                                      bl #0x793754
00793ce0  00 00 50 e3                                      cmp r0, #0
00793ce4  04 00 00 ba                                      blt #0x793cfc
00793ce8  00 30 94 e5                                      ldr r3, [r4]
00793cec  00 02 83 e0                                      add r0, r3, r0, lsl #4
00793cf0  14 00 80 e2                                      add r0, r0, #0x14
00793cf4  0c d0 8d e2                                      add sp, sp, #0xc
00793cf8  30 80 bd e8                                      pop {r4, r5, pc}
00793cfc  08 20 8d e2                                      add r2, sp, #8
00793d00  00 30 a0 e3                                      mov r3, #0
00793d04  04 30 22 e5                                      str r3, [r2, #-4]!
00793d08  04 00 a0 e1                                      mov r0, r4
00793d0c  05 10 a0 e1                                      mov r1, r5
00793d10  94 ff ff eb                                      bl #0x793b68
00793d14  04 00 a0 e1                                      mov r0, r4
00793d18  05 10 a0 e1                                      mov r1, r5
00793d1c  8c fe ff eb                                      bl #0x793754
00793d20  f0 ff ff ea                                      b #0x793ce8
