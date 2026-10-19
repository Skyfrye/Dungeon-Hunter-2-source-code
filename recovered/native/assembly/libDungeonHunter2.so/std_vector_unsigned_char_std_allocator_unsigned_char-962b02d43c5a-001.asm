; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031671c, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<unsigned char*, std::allocator<unsigned char*> >
; alias: _ZNSt6vectorIPhSaIS0_EE20_M_compute_next_sizeEj
; demangled: std::vector<unsigned char*, std::allocator<unsigned char*> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0031671c  70 40 2d e9                                      push {r4, r5, r6, lr}
00316720  14 00 90 e8                                      ldm r0, {r2, r4}
00316724  ff 3f 0f e3                                      movw r3, #0xffff
00316728  ff 3f 43 e3                                      movt r3, #0x3fff
0031672c  04 40 62 e0                                      rsb r4, r2, r4
00316730  44 41 a0 e1                                      asr r4, r4, #2
00316734  03 30 64 e0                                      rsb r3, r4, r3
00316738  01 00 53 e1                                      cmp r3, r1
0031673c  01 50 a0 e1                                      mov r5, r1
00316740  08 00 00 3a                                      blo #0x316768
00316744  05 00 54 e1                                      cmp r4, r5
00316748  04 00 84 20                                      addhs r0, r4, r4
0031674c  05 00 84 30                                      addlo r0, r4, r5
00316750  07 01 70 e3                                      cmn r0, #0xc0000001
00316754  01 00 00 8a                                      bhi #0x316760
00316758  04 00 50 e1                                      cmp r0, r4
0031675c  00 00 00 2a                                      bhs #0x316764
00316760  03 01 e0 e3                                      mvn r0, #0xc0000000
00316764  70 80 bd e8                                      pop {r4, r5, r6, pc}
00316768  08 00 9f e5                                      ldr r0, [pc, #8]
0031676c  00 00 8f e0                                      add r0, pc, r0
00316770  b2 c9 0f eb                                      bl #0x708e40
00316774  f2 ff ff ea                                      b #0x316744
; mapping-symbol data/literal pool
00316778  fc 7c 5a 00                                      .byte 0xfc, 0x7c, 0x5a, 0x00

; FUNCTION 0x00316874, declared_size=184, range_size=184, mode=arm
; class-group: std::vector<unsigned char*, std::allocator<unsigned char*> >
; alias: _ZNSt6vectorIPhSaIS0_EE7reserveEj
; demangled: std::vector<unsigned char*, std::allocator<unsigned char*> >::reserve(unsigned int)
; decoder-mode: arm
00316874  70 40 2d e9                                      push {r4, r5, r6, lr}
00316878  00 40 a0 e1                                      mov r4, r0
0031687c  00 20 90 e5                                      ldr r2, [r0]
00316880  08 00 90 e5                                      ldr r0, [r0, #8]
00316884  08 d0 4d e2                                      sub sp, sp, #8
00316888  04 10 8d e5                                      str r1, [sp, #4]
0031688c  00 00 62 e0                                      rsb r0, r2, r0
00316890  40 01 51 e1                                      cmp r1, r0, asr #2
00316894  16 00 00 9a                                      bls #0x3168f4
00316898  07 01 71 e3                                      cmn r1, #0xc0000001
0031689c  16 00 00 8a                                      bhi #0x3168fc
003168a0  04 30 94 e5                                      ldr r3, [r4, #4]
003168a4  00 00 52 e3                                      cmp r2, #0
003168a8  03 50 62 e0                                      rsb r5, r2, r3
003168ac  45 51 a0 e1                                      asr r5, r5, #2
003168b0  16 00 00 0a                                      beq #0x316910
003168b4  04 10 8d e2                                      add r1, sp, #4
003168b8  04 00 a0 e1                                      mov r0, r4
003168bc  dd ff ff eb                                      bl #0x316838
003168c0  00 60 a0 e1                                      mov r6, r0
003168c4  04 00 a0 e1                                      mov r0, r4
003168c8  08 10 90 e4                                      ldr r1, [r0], #8
003168cc  08 20 94 e5                                      ldr r2, [r4, #8]
003168d0  02 20 61 e0                                      rsb r2, r1, r2
003168d4  42 21 a0 e1                                      asr r2, r2, #2
003168d8  a7 ff ff eb                                      bl #0x31677c
003168dc  04 30 9d e5                                      ldr r3, [sp, #4]
003168e0  05 51 86 e0                                      add r5, r6, r5, lsl #2
003168e4  04 50 84 e5                                      str r5, [r4, #4]
003168e8  03 31 86 e0                                      add r3, r6, r3, lsl #2
003168ec  08 30 84 e5                                      str r3, [r4, #8]
003168f0  00 60 84 e5                                      str r6, [r4]
003168f4  08 d0 8d e2                                      add sp, sp, #8
003168f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003168fc  24 00 9f e5                                      ldr r0, [pc, #0x24]
00316900  00 00 8f e0                                      add r0, pc, r0
00316904  4d c9 0f eb                                      bl #0x708e40
00316908  00 20 94 e5                                      ldr r2, [r4]
0031690c  e3 ff ff ea                                      b #0x3168a0
00316910  08 20 8d e2                                      add r2, sp, #8
00316914  04 10 32 e5                                      ldr r1, [r2, #-4]!
00316918  08 00 84 e2                                      add r0, r4, #8
0031691c  aa ff ff eb                                      bl #0x3167cc
00316920  00 60 a0 e1                                      mov r6, r0
00316924  ec ff ff ea                                      b #0x3168dc
; mapping-symbol data/literal pool
00316928  68 7b 5a 00                                      .byte 0x68, 0x7b, 0x5a, 0x00

; FUNCTION 0x00316a6c, declared_size=240, range_size=240, mode=arm
; class-group: std::vector<unsigned char*, std::allocator<unsigned char*> >
; alias: _ZNSt6vectorIPhSaIS0_EE18_M_insert_overflowEPS0_RKS0_RKSt11__true_typejb
; demangled: std::vector<unsigned char*, std::allocator<unsigned char*> >::_M_insert_overflow(unsigned char**, unsigned char* const&, std::__true_type const&, unsigned int, bool)
; decoder-mode: arm
00316a6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00316a70  0c d0 4d e2                                      sub sp, sp, #0xc
00316a74  30 60 9d e5                                      ldr r6, [sp, #0x30]
00316a78  01 90 a0 e1                                      mov sb, r1
00316a7c  00 50 a0 e1                                      mov r5, r0
00316a80  06 10 a0 e1                                      mov r1, r6
00316a84  02 40 a0 e1                                      mov r4, r2
00316a88  34 b0 dd e5                                      ldrb fp, [sp, #0x34]
00316a8c  22 ff ff eb                                      bl #0x31671c
00316a90  08 a0 85 e2                                      add sl, r5, #8
00316a94  08 20 8d e2                                      add r2, sp, #8
00316a98  00 10 a0 e1                                      mov r1, r0
00316a9c  04 00 22 e5                                      str r0, [r2, #-4]!
00316aa0  0a 00 a0 e1                                      mov r0, sl
00316aa4  48 ff ff eb                                      bl #0x3167cc
00316aa8  00 10 95 e5                                      ldr r1, [r5]
00316aac  00 80 a0 e1                                      mov r8, r0
00316ab0  01 70 59 e0                                      subs r7, sb, r1
00316ab4  00 00 a0 01                                      moveq r0, r0
00316ab8  1d 00 00 1a                                      bne #0x316b34
00316abc  00 00 56 e3                                      cmp r6, #0
00316ac0  00 70 a0 e1                                      mov r7, r0
00316ac4  07 00 00 0a                                      beq #0x316ae8
00316ac8  06 20 a0 e1                                      mov r2, r6
00316acc  00 30 a0 e3                                      mov r3, #0
00316ad0  00 10 94 e5                                      ldr r1, [r4]
00316ad4  01 20 52 e2                                      subs r2, r2, #1
00316ad8  03 10 80 e7                                      str r1, [r0, r3]
00316adc  04 30 83 e2                                      add r3, r3, #4
00316ae0  fa ff ff 1a                                      bne #0x316ad0
00316ae4  06 71 80 e0                                      add r7, r0, r6, lsl #2
00316ae8  00 00 5b e3                                      cmp fp, #0
00316aec  02 00 00 1a                                      bne #0x316afc
00316af0  04 40 95 e5                                      ldr r4, [r5, #4]
00316af4  09 40 54 e0                                      subs r4, r4, sb
00316af8  11 00 00 1a                                      bne #0x316b44
00316afc  00 30 95 e5                                      ldr r3, [r5]
00316b00  08 20 95 e5                                      ldr r2, [r5, #8]
00316b04  0a 00 a0 e1                                      mov r0, sl
00316b08  03 10 a0 e1                                      mov r1, r3
00316b0c  02 30 63 e0                                      rsb r3, r3, r2
00316b10  43 21 a0 e1                                      asr r2, r3, #2
00316b14  18 ff ff eb                                      bl #0x31677c
00316b18  04 30 9d e5                                      ldr r3, [sp, #4]
00316b1c  00 80 85 e5                                      str r8, [r5]
00316b20  04 70 85 e5                                      str r7, [r5, #4]
00316b24  03 81 88 e0                                      add r8, r8, r3, lsl #2
00316b28  08 80 85 e5                                      str r8, [r5, #8]
00316b2c  0c d0 8d e2                                      add sp, sp, #0xc
00316b30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00316b34  07 20 a0 e1                                      mov r2, r7
00316b38  fe dc ff eb                                      bl #0x30df38
00316b3c  07 00 80 e0                                      add r0, r0, r7
00316b40  dd ff ff ea                                      b #0x316abc
00316b44  07 00 a0 e1                                      mov r0, r7
00316b48  09 10 a0 e1                                      mov r1, sb
00316b4c  04 20 a0 e1                                      mov r2, r4
00316b50  f8 dc ff eb                                      bl #0x30df38
00316b54  04 70 80 e0                                      add r7, r0, r4
00316b58  e7 ff ff ea                                      b #0x316afc

; FUNCTION 0x00316b5c, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<unsigned char*, std::allocator<unsigned char*> >
; alias: _ZNSt6vectorIPhSaIS0_EE18_M_fill_insert_auxEPS0_jRKS0_RKSt12__false_type
; demangled: std::vector<unsigned char*, std::allocator<unsigned char*> >::_M_fill_insert_aux(unsigned char**, unsigned int, unsigned char* const&, std::__false_type const&)
; decoder-mode: arm
00316b5c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00316b60  00 c0 90 e5                                      ldr ip, [r0]
00316b64  03 50 a0 e1                                      mov r5, r3
00316b68  14 d0 4d e2                                      sub sp, sp, #0x14
00316b6c  0c 00 53 e1                                      cmp r3, ip
00316b70  00 40 a0 e1                                      mov r4, r0
00316b74  01 60 a0 e1                                      mov r6, r1
00316b78  02 30 a0 e1                                      mov r3, r2
00316b7c  04 70 90 35                                      ldrlo r7, [r0, #4]
00316b80  0a 00 00 3a                                      blo #0x316bb0
00316b84  04 70 90 e5                                      ldr r7, [r0, #4]
00316b88  07 00 55 e1                                      cmp r5, r7
00316b8c  07 00 00 2a                                      bhs #0x316bb0
00316b90  00 c0 95 e5                                      ldr ip, [r5]
00316b94  10 30 8d e2                                      add r3, sp, #0x10
00316b98  08 c0 23 e5                                      str ip, [r3, #-8]!
00316b9c  0c c0 8d e2                                      add ip, sp, #0xc
00316ba0  00 c0 8d e5                                      str ip, [sp]
00316ba4  ec ff ff eb                                      bl #0x316b5c
00316ba8  14 d0 8d e2                                      add sp, sp, #0x14
00316bac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00316bb0  07 20 66 e0                                      rsb r2, r6, r7
00316bb4  42 81 a0 e1                                      asr r8, r2, #2
00316bb8  08 00 53 e1                                      cmp r3, r8
00316bbc  1c 00 00 2a                                      bhs #0x316c34
00316bc0  03 81 a0 e1                                      lsl r8, r3, #2
00316bc4  07 30 68 e0                                      rsb r3, r8, r7
00316bc8  07 00 53 e1                                      cmp r3, r7
00316bcc  07 a0 a0 01                                      moveq sl, r7
00316bd0  05 00 00 0a                                      beq #0x316bec
00316bd4  03 10 a0 e1                                      mov r1, r3
00316bd8  07 20 63 e0                                      rsb r2, r3, r7
00316bdc  07 00 a0 e1                                      mov r0, r7
00316be0  03 a0 a0 e1                                      mov sl, r3
00316be4  1f df ff eb                                      bl #0x30e868
00316be8  04 30 94 e5                                      ldr r3, [r4, #4]
00316bec  0a 20 66 e0                                      rsb r2, r6, sl
00316bf0  08 30 83 e0                                      add r3, r3, r8
00316bf4  00 00 52 e3                                      cmp r2, #0
00316bf8  04 30 84 e5                                      str r3, [r4, #4]
00316bfc  02 00 00 da                                      ble #0x316c0c
00316c00  07 00 62 e0                                      rsb r0, r2, r7
00316c04  06 10 a0 e1                                      mov r1, r6
00316c08  ca dc ff eb                                      bl #0x30df38
00316c0c  48 81 a0 e1                                      asr r8, r8, #2
00316c10  00 00 58 e3                                      cmp r8, #0
00316c14  e3 ff ff da                                      ble #0x316ba8
00316c18  00 20 a0 e3                                      mov r2, #0
00316c1c  00 10 95 e5                                      ldr r1, [r5]
00316c20  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
00316c24  01 20 82 e2                                      add r2, r2, #1
00316c28  08 00 52 e1                                      cmp r2, r8
00316c2c  fa ff ff 1a                                      bne #0x316c1c
00316c30  dc ff ff ea                                      b #0x316ba8
00316c34  03 30 68 e0                                      rsb r3, r8, r3
00316c38  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
00316c3c  00 00 5a e3                                      cmp sl, #0
00316c40  03 01 87 e0                                      add r0, r7, r3, lsl #2
00316c44  05 00 00 da                                      ble #0x316c60
00316c48  00 10 a0 e3                                      mov r1, #0
00316c4c  00 c0 95 e5                                      ldr ip, [r5]
00316c50  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
00316c54  01 10 81 e2                                      add r1, r1, #1
00316c58  0a 00 51 e1                                      cmp r1, sl
00316c5c  fa ff ff 1a                                      bne #0x316c4c
00316c60  07 00 56 e1                                      cmp r6, r7
00316c64  04 00 84 e5                                      str r0, [r4, #4]
00316c68  02 00 00 0a                                      beq #0x316c78
00316c6c  06 10 a0 e1                                      mov r1, r6
00316c70  fc de ff eb                                      bl #0x30e868
00316c74  04 00 94 e5                                      ldr r0, [r4, #4]
00316c78  08 01 80 e0                                      add r0, r0, r8, lsl #2
00316c7c  00 00 58 e3                                      cmp r8, #0
00316c80  04 00 84 e5                                      str r0, [r4, #4]
00316c84  c7 ff ff da                                      ble #0x316ba8
00316c88  00 30 a0 e3                                      mov r3, #0
00316c8c  00 20 95 e5                                      ldr r2, [r5]
00316c90  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
00316c94  01 30 83 e2                                      add r3, r3, #1
00316c98  03 00 58 e1                                      cmp r8, r3
00316c9c  fa ff ff 1a                                      bne #0x316c8c
00316ca0  c0 ff ff ea                                      b #0x316ba8

; FUNCTION 0x00316ca4, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<unsigned char*, std::allocator<unsigned char*> >
; alias: _ZNSt6vectorIPhSaIS0_EE14_M_fill_insertEPS0_jRKS0_
; demangled: std::vector<unsigned char*, std::allocator<unsigned char*> >::_M_fill_insert(unsigned char**, unsigned int, unsigned char* const&)
; decoder-mode: arm
00316ca4  30 40 2d e9                                      push {r4, r5, lr}
00316ca8  00 40 52 e2                                      subs r4, r2, #0
00316cac  14 d0 4d e2                                      sub sp, sp, #0x14
00316cb0  03 50 a0 e1                                      mov r5, r3
00316cb4  09 00 00 0a                                      beq #0x316ce0
00316cb8  04 e0 90 e5                                      ldr lr, [r0, #4]
00316cbc  08 c0 90 e5                                      ldr ip, [r0, #8]
00316cc0  0c c0 6e e0                                      rsb ip, lr, ip
00316cc4  4c 01 54 e1                                      cmp r4, ip, asr #2
00316cc8  06 00 00 9a                                      bls #0x316ce8
00316ccc  03 20 a0 e1                                      mov r2, r3
00316cd0  00 c0 a0 e3                                      mov ip, #0
00316cd4  08 30 8d e2                                      add r3, sp, #8
00316cd8  10 10 8d e8                                      stm sp, {r4, ip}
00316cdc  62 ff ff eb                                      bl #0x316a6c
00316ce0  14 d0 8d e2                                      add sp, sp, #0x14
00316ce4  30 80 bd e8                                      pop {r4, r5, pc}
00316ce8  0c c0 8d e2                                      add ip, sp, #0xc
00316cec  00 c0 8d e5                                      str ip, [sp]
00316cf0  99 ff ff eb                                      bl #0x316b5c
00316cf4  f9 ff ff ea                                      b #0x316ce0

; FUNCTION 0x00316cf8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<unsigned char*, std::allocator<unsigned char*> >
; alias: _ZNSt6vectorIPhSaIS0_EE6resizeEjRKS0_
; demangled: std::vector<unsigned char*, std::allocator<unsigned char*> >::resize(unsigned int, unsigned char* const&)
; decoder-mode: arm
00316cf8  30 00 2d e9                                      push {r4, r5}
00316cfc  04 40 90 e5                                      ldr r4, [r0, #4]
00316d00  00 50 90 e5                                      ldr r5, [r0]
00316d04  02 30 a0 e1                                      mov r3, r2
00316d08  04 20 65 e0                                      rsb r2, r5, r4
00316d0c  42 21 a0 e1                                      asr r2, r2, #2
00316d10  02 00 51 e1                                      cmp r1, r2
00316d14  04 00 00 2a                                      bhs #0x316d2c
00316d18  01 51 85 e0                                      add r5, r5, r1, lsl #2
00316d1c  04 00 55 e1                                      cmp r5, r4
00316d20  04 50 80 15                                      strne r5, [r0, #4]
00316d24  30 00 bd e8                                      pop {r4, r5}
00316d28  1e ff 2f e1                                      bx lr
00316d2c  01 20 62 e0                                      rsb r2, r2, r1
00316d30  04 10 a0 e1                                      mov r1, r4
00316d34  30 00 bd e8                                      pop {r4, r5}
00316d38  d9 ff ff ea                                      b #0x316ca4
