; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00310980, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<float, std::allocator<float> >
; alias: _ZNSt6vectorIfSaIfEE20_M_compute_next_sizeEj
; demangled: std::vector<float, std::allocator<float> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00310980  70 40 2d e9                                      push {r4, r5, r6, lr}
00310984  14 00 90 e8                                      ldm r0, {r2, r4}
00310988  ff 3f 0f e3                                      movw r3, #0xffff
0031098c  ff 3f 43 e3                                      movt r3, #0x3fff
00310990  04 40 62 e0                                      rsb r4, r2, r4
00310994  44 41 a0 e1                                      asr r4, r4, #2
00310998  03 30 64 e0                                      rsb r3, r4, r3
0031099c  01 00 53 e1                                      cmp r3, r1
003109a0  01 50 a0 e1                                      mov r5, r1
003109a4  08 00 00 3a                                      blo #0x3109cc
003109a8  05 00 54 e1                                      cmp r4, r5
003109ac  04 00 84 20                                      addhs r0, r4, r4
003109b0  05 00 84 30                                      addlo r0, r4, r5
003109b4  07 01 70 e3                                      cmn r0, #0xc0000001
003109b8  01 00 00 8a                                      bhi #0x3109c4
003109bc  04 00 50 e1                                      cmp r0, r4
003109c0  00 00 00 2a                                      bhs #0x3109c8
003109c4  03 01 e0 e3                                      mvn r0, #0xc0000000
003109c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003109cc  08 00 9f e5                                      ldr r0, [pc, #8]
003109d0  00 00 8f e0                                      add r0, pc, r0
003109d4  19 e1 0f eb                                      bl #0x708e40
003109d8  f2 ff ff ea                                      b #0x3109a8
; mapping-symbol data/literal pool
003109dc  98 da 5a 00                                      .byte 0x98, 0xda, 0x5a, 0x00

; FUNCTION 0x00310aa0, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<float, std::allocator<float> >
; alias: _ZNSt6vectorIfSaIfEE18_M_fill_insert_auxEPfjRKfRKSt12__false_type
; demangled: std::vector<float, std::allocator<float> >::_M_fill_insert_aux(float*, unsigned int, float const&, std::__false_type const&)
; decoder-mode: arm
00310aa0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00310aa4  00 c0 90 e5                                      ldr ip, [r0]
00310aa8  03 50 a0 e1                                      mov r5, r3
00310aac  14 d0 4d e2                                      sub sp, sp, #0x14
00310ab0  0c 00 53 e1                                      cmp r3, ip
00310ab4  00 40 a0 e1                                      mov r4, r0
00310ab8  01 60 a0 e1                                      mov r6, r1
00310abc  02 30 a0 e1                                      mov r3, r2
00310ac0  04 70 90 35                                      ldrlo r7, [r0, #4]
00310ac4  0a 00 00 3a                                      blo #0x310af4
00310ac8  04 70 90 e5                                      ldr r7, [r0, #4]
00310acc  07 00 55 e1                                      cmp r5, r7
00310ad0  07 00 00 2a                                      bhs #0x310af4
00310ad4  00 c0 95 e5                                      ldr ip, [r5]
00310ad8  10 30 8d e2                                      add r3, sp, #0x10
00310adc  08 c0 23 e5                                      str ip, [r3, #-8]!
00310ae0  0c c0 8d e2                                      add ip, sp, #0xc
00310ae4  00 c0 8d e5                                      str ip, [sp]
00310ae8  ec ff ff eb                                      bl #0x310aa0
00310aec  14 d0 8d e2                                      add sp, sp, #0x14
00310af0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00310af4  07 20 66 e0                                      rsb r2, r6, r7
00310af8  42 81 a0 e1                                      asr r8, r2, #2
00310afc  08 00 53 e1                                      cmp r3, r8
00310b00  1c 00 00 2a                                      bhs #0x310b78
00310b04  03 81 a0 e1                                      lsl r8, r3, #2
00310b08  07 30 68 e0                                      rsb r3, r8, r7
00310b0c  07 00 53 e1                                      cmp r3, r7
00310b10  07 a0 a0 01                                      moveq sl, r7
00310b14  05 00 00 0a                                      beq #0x310b30
00310b18  03 10 a0 e1                                      mov r1, r3
00310b1c  07 20 63 e0                                      rsb r2, r3, r7
00310b20  07 00 a0 e1                                      mov r0, r7
00310b24  03 a0 a0 e1                                      mov sl, r3
00310b28  4e f7 ff eb                                      bl #0x30e868
00310b2c  04 30 94 e5                                      ldr r3, [r4, #4]
00310b30  0a 20 66 e0                                      rsb r2, r6, sl
00310b34  08 30 83 e0                                      add r3, r3, r8
00310b38  00 00 52 e3                                      cmp r2, #0
00310b3c  04 30 84 e5                                      str r3, [r4, #4]
00310b40  02 00 00 da                                      ble #0x310b50
00310b44  07 00 62 e0                                      rsb r0, r2, r7
00310b48  06 10 a0 e1                                      mov r1, r6
00310b4c  f9 f4 ff eb                                      bl #0x30df38
00310b50  48 81 a0 e1                                      asr r8, r8, #2
00310b54  00 00 58 e3                                      cmp r8, #0
00310b58  e3 ff ff da                                      ble #0x310aec
00310b5c  00 20 a0 e3                                      mov r2, #0
00310b60  00 10 95 e5                                      ldr r1, [r5]
00310b64  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
00310b68  01 20 82 e2                                      add r2, r2, #1
00310b6c  08 00 52 e1                                      cmp r2, r8
00310b70  fa ff ff 1a                                      bne #0x310b60
00310b74  dc ff ff ea                                      b #0x310aec
00310b78  03 30 68 e0                                      rsb r3, r8, r3
00310b7c  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
00310b80  00 00 5a e3                                      cmp sl, #0
00310b84  03 01 87 e0                                      add r0, r7, r3, lsl #2
00310b88  05 00 00 da                                      ble #0x310ba4
00310b8c  00 10 a0 e3                                      mov r1, #0
00310b90  00 c0 95 e5                                      ldr ip, [r5]
00310b94  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
00310b98  01 10 81 e2                                      add r1, r1, #1
00310b9c  0a 00 51 e1                                      cmp r1, sl
00310ba0  fa ff ff 1a                                      bne #0x310b90
00310ba4  07 00 56 e1                                      cmp r6, r7
00310ba8  04 00 84 e5                                      str r0, [r4, #4]
00310bac  02 00 00 0a                                      beq #0x310bbc
00310bb0  06 10 a0 e1                                      mov r1, r6
00310bb4  2b f7 ff eb                                      bl #0x30e868
00310bb8  04 00 94 e5                                      ldr r0, [r4, #4]
00310bbc  08 01 80 e0                                      add r0, r0, r8, lsl #2
00310bc0  00 00 58 e3                                      cmp r8, #0
00310bc4  04 00 84 e5                                      str r0, [r4, #4]
00310bc8  c7 ff ff da                                      ble #0x310aec
00310bcc  00 30 a0 e3                                      mov r3, #0
00310bd0  00 20 95 e5                                      ldr r2, [r5]
00310bd4  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
00310bd8  01 30 83 e2                                      add r3, r3, #1
00310bdc  03 00 58 e1                                      cmp r8, r3
00310be0  fa ff ff 1a                                      bne #0x310bd0
00310be4  c0 ff ff ea                                      b #0x310aec

; FUNCTION 0x00310e00, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<float, std::allocator<float> >
; alias: _ZNSt6vectorIfSaIfEEC1EjRKfRKS0_
; demangled: std::vector<float, std::allocator<float> >::vector(unsigned int, float const&, std::allocator<float> const&)
; decoder-mode: arm
00310e00  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00310e04  0c d0 4d e2                                      sub sp, sp, #0xc
00310e08  08 30 8d e2                                      add r3, sp, #8
00310e0c  00 50 a0 e1                                      mov r5, r0
00310e10  04 10 23 e5                                      str r1, [r3, #-4]!
00310e14  00 60 a0 e3                                      mov r6, #0
00310e18  00 60 85 e5                                      str r6, [r5]
00310e1c  04 60 85 e5                                      str r6, [r5, #4]
00310e20  02 40 a0 e1                                      mov r4, r2
00310e24  08 60 a0 e5                                      str r6, [r0, #8]!
00310e28  03 20 a0 e1                                      mov r2, r3
00310e2c  01 70 a0 e1                                      mov r7, r1
00310e30  d6 ff ff eb                                      bl #0x310d90
00310e34  04 30 9d e5                                      ldr r3, [sp, #4]
00310e38  57 20 bd e7                                      sbfx r2, r7, #0, #0x1e
00310e3c  06 00 52 e1                                      cmp r2, r6
00310e40  03 31 80 e0                                      add r3, r0, r3, lsl #2
00310e44  08 30 85 e5                                      str r3, [r5, #8]
00310e48  00 00 85 e5                                      str r0, [r5]
00310e4c  04 00 85 e5                                      str r0, [r5, #4]
00310e50  07 71 80 e0                                      add r7, r0, r7, lsl #2
00310e54  04 00 00 da                                      ble #0x310e6c
00310e58  00 30 94 e5                                      ldr r3, [r4]
00310e5c  06 31 80 e7                                      str r3, [r0, r6, lsl #2]
00310e60  01 60 86 e2                                      add r6, r6, #1
00310e64  02 00 56 e1                                      cmp r6, r2
00310e68  fa ff ff 1a                                      bne #0x310e58
00310e6c  04 70 85 e5                                      str r7, [r5, #4]
00310e70  05 00 a0 e1                                      mov r0, r5
00310e74  0c d0 8d e2                                      add sp, sp, #0xc
00310e78  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00310eb8, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<float, std::allocator<float> >
; alias: _ZNSt6vectorIfSaIfEEC1ERKS1_
; demangled: std::vector<float, std::allocator<float> >::vector(std::vector<float, std::allocator<float> > const&)
; decoder-mode: arm
00310eb8  30 40 2d e9                                      push {r4, r5, lr}
00310ebc  01 50 a0 e1                                      mov r5, r1
00310ec0  00 30 95 e5                                      ldr r3, [r5]
00310ec4  04 10 91 e5                                      ldr r1, [r1, #4]
00310ec8  0c d0 4d e2                                      sub sp, sp, #0xc
00310ecc  00 40 a0 e1                                      mov r4, r0
00310ed0  01 10 63 e0                                      rsb r1, r3, r1
00310ed4  00 c0 a0 e3                                      mov ip, #0
00310ed8  41 11 a0 e1                                      asr r1, r1, #2
00310edc  08 20 8d e2                                      add r2, sp, #8
00310ee0  04 10 22 e5                                      str r1, [r2, #-4]!
00310ee4  00 c0 84 e5                                      str ip, [r4]
00310ee8  04 c0 84 e5                                      str ip, [r4, #4]
00310eec  08 c0 a0 e5                                      str ip, [r0, #8]!
00310ef0  a6 ff ff eb                                      bl #0x310d90
00310ef4  04 20 9d e5                                      ldr r2, [sp, #4]
00310ef8  00 00 84 e5                                      str r0, [r4]
00310efc  04 00 84 e5                                      str r0, [r4, #4]
00310f00  02 21 80 e0                                      add r2, r0, r2, lsl #2
00310f04  08 20 84 e5                                      str r2, [r4, #8]
00310f08  06 00 95 e8                                      ldm r5, {r1, r2}
00310f0c  00 30 a0 e1                                      mov r3, r0
00310f10  02 00 51 e1                                      cmp r1, r2
00310f14  03 00 00 0a                                      beq #0x310f28
00310f18  02 50 61 e0                                      rsb r5, r1, r2
00310f1c  05 20 a0 e1                                      mov r2, r5
00310f20  50 f6 ff eb                                      bl #0x30e868
00310f24  05 30 80 e0                                      add r3, r0, r5
00310f28  04 30 84 e5                                      str r3, [r4, #4]
00310f2c  04 00 a0 e1                                      mov r0, r4
00310f30  0c d0 8d e2                                      add sp, sp, #0xc
00310f34  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00311018, declared_size=172, range_size=172, mode=arm
; class-group: std::vector<float, std::allocator<float> >
; alias: _ZNSt6vectorIfSaIfEE7reserveEj.clone.4
; demangled: std::vector<float, std::allocator<float> >::reserve(unsigned int) [clone .clone.4]
; decoder-mode: arm
00311018  70 40 2d e9                                      push {r4, r5, r6, lr}
0031101c  00 20 90 e5                                      ldr r2, [r0]
00311020  08 c0 90 e5                                      ldr ip, [r0, #8]
00311024  0f 37 02 e3                                      movw r3, #0x270f
00311028  08 d0 4d e2                                      sub sp, sp, #8
0031102c  0c c0 62 e0                                      rsb ip, r2, ip
00311030  10 17 02 e3                                      movw r1, #0x2710
00311034  4c 01 53 e1                                      cmp r3, ip, asr #2
00311038  00 40 a0 e1                                      mov r4, r0
0031103c  04 10 8d e5                                      str r1, [sp, #4]
00311040  16 00 00 3a                                      blo #0x3110a0
00311044  04 30 90 e5                                      ldr r3, [r0, #4]
00311048  00 00 52 e3                                      cmp r2, #0
0031104c  03 50 62 e0                                      rsb r5, r2, r3
00311050  45 51 a0 e1                                      asr r5, r5, #2
00311054  15 00 00 0a                                      beq #0x3110b0
00311058  04 10 8d e2                                      add r1, sp, #4
0031105c  86 ff ff eb                                      bl #0x310e7c
00311060  00 60 a0 e1                                      mov r6, r0
00311064  00 00 94 e5                                      ldr r0, [r4]
00311068  08 10 94 e5                                      ldr r1, [r4, #8]
0031106c  00 00 50 e3                                      cmp r0, #0
00311070  04 00 00 0a                                      beq #0x311088
00311074  01 10 60 e0                                      rsb r1, r0, r1
00311078  03 10 c1 e3                                      bic r1, r1, #3
0031107c  80 00 51 e3                                      cmp r1, #0x80
00311080  08 00 00 8a                                      bhi #0x3110a8
00311084  9d df 0f eb                                      bl #0x708f00
00311088  04 30 9d e5                                      ldr r3, [sp, #4]
0031108c  05 51 86 e0                                      add r5, r6, r5, lsl #2
00311090  04 50 84 e5                                      str r5, [r4, #4]
00311094  03 31 86 e0                                      add r3, r6, r3, lsl #2
00311098  08 30 84 e5                                      str r3, [r4, #8]
0031109c  00 60 84 e5                                      str r6, [r4]
003110a0  08 d0 8d e2                                      add sp, sp, #8
003110a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003110a8  e4 fc ff eb                                      bl #0x310440
003110ac  f5 ff ff ea                                      b #0x311088
003110b0  08 00 80 e2                                      add r0, r0, #8
003110b4  04 20 8d e2                                      add r2, sp, #4
003110b8  34 ff ff eb                                      bl #0x310d90
003110bc  00 60 a0 e1                                      mov r6, r0
003110c0  f0 ff ff ea                                      b #0x311088

; FUNCTION 0x0031116c, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<float, std::allocator<float> >
; alias: _ZNSt6vectorIfSaIfEED1Ev
; demangled: std::vector<float, std::allocator<float> >::~vector()
; decoder-mode: arm
0031116c  10 40 2d e9                                      push {r4, lr}
00311170  00 40 a0 e1                                      mov r4, r0
00311174  00 00 90 e5                                      ldr r0, [r0]
00311178  00 00 50 e3                                      cmp r0, #0
0031117c  05 00 00 0a                                      beq #0x311198
00311180  08 10 94 e5                                      ldr r1, [r4, #8]
00311184  01 10 60 e0                                      rsb r1, r0, r1
00311188  03 10 c1 e3                                      bic r1, r1, #3
0031118c  80 00 51 e3                                      cmp r1, #0x80
00311190  02 00 00 8a                                      bhi #0x3111a0
00311194  59 df 0f eb                                      bl #0x708f00
00311198  04 00 a0 e1                                      mov r0, r4
0031119c  10 80 bd e8                                      pop {r4, pc}
003111a0  a6 fc ff eb                                      bl #0x310440
003111a4  04 00 a0 e1                                      mov r0, r4
003111a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003111ac, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<float, std::allocator<float> >
; alias: _ZNSt6vectorIfSaIfEE14_M_fill_assignEjRKf
; demangled: std::vector<float, std::allocator<float> >::_M_fill_assign(unsigned int, float const&)
; decoder-mode: arm
003111ac  70 40 2d e9                                      push {r4, r5, r6, lr}
003111b0  00 40 a0 e1                                      mov r4, r0
003111b4  08 50 94 e5                                      ldr r5, [r4, #8]
003111b8  00 00 90 e5                                      ldr r0, [r0]
003111bc  10 d0 4d e2                                      sub sp, sp, #0x10
003111c0  01 c0 a0 e1                                      mov ip, r1
003111c4  05 50 60 e0                                      rsb r5, r0, r5
003111c8  45 01 51 e1                                      cmp r1, r5, asr #2
003111cc  02 30 a0 e1                                      mov r3, r2
003111d0  2c 00 00 8a                                      bhi #0x311288
003111d4  04 50 94 e5                                      ldr r5, [r4, #4]
003111d8  05 60 60 e0                                      rsb r6, r0, r5
003111dc  46 61 a0 e1                                      asr r6, r6, #2
003111e0  06 00 51 e1                                      cmp r1, r6
003111e4  06 20 a0 e1                                      mov r2, r6
003111e8  18 00 00 9a                                      bls #0x311250
003111ec  00 00 56 e3                                      cmp r6, #0
003111f0  08 00 00 da                                      ble #0x311218
003111f4  00 20 a0 e3                                      mov r2, #0
003111f8  00 10 93 e5                                      ldr r1, [r3]
003111fc  02 11 80 e7                                      str r1, [r0, r2, lsl #2]
00311200  01 20 82 e2                                      add r2, r2, #1
00311204  02 00 56 e1                                      cmp r6, r2
00311208  fa ff ff 1a                                      bne #0x3111f8
0031120c  24 00 94 e8                                      ldm r4, {r2, r5}
00311210  05 20 62 e0                                      rsb r2, r2, r5
00311214  42 21 a0 e1                                      asr r2, r2, #2
00311218  0c c0 62 e0                                      rsb ip, r2, ip
0031121c  5c 00 bd e7                                      sbfx r0, ip, #0, #0x1e
00311220  00 00 50 e3                                      cmp r0, #0
00311224  0c c1 85 e0                                      add ip, r5, ip, lsl #2
00311228  05 00 00 da                                      ble #0x311244
0031122c  00 20 a0 e3                                      mov r2, #0
00311230  00 10 93 e5                                      ldr r1, [r3]
00311234  02 11 85 e7                                      str r1, [r5, r2, lsl #2]
00311238  01 20 82 e2                                      add r2, r2, #1
0031123c  00 00 52 e1                                      cmp r2, r0
00311240  fa ff ff 1a                                      bne #0x311230
00311244  04 c0 84 e5                                      str ip, [r4, #4]
00311248  10 d0 8d e2                                      add sp, sp, #0x10
0031124c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00311250  00 00 51 e3                                      cmp r1, #0
00311254  01 10 a0 11                                      movne r1, r1
00311258  00 20 a0 13                                      movne r2, #0
0031125c  06 00 00 0a                                      beq #0x31127c
00311260  00 50 93 e5                                      ldr r5, [r3]
00311264  01 10 51 e2                                      subs r1, r1, #1
00311268  02 50 80 e7                                      str r5, [r0, r2]
0031126c  04 20 82 e2                                      add r2, r2, #4
00311270  fa ff ff 1a                                      bne #0x311260
00311274  04 50 94 e5                                      ldr r5, [r4, #4]
00311278  0c 01 80 e0                                      add r0, r0, ip, lsl #2
0031127c  05 00 50 e1                                      cmp r0, r5
00311280  04 00 84 15                                      strne r0, [r4, #4]
00311284  ef ff ff ea                                      b #0x311248
00311288  0c 30 8d e2                                      add r3, sp, #0xc
0031128c  0d 00 a0 e1                                      mov r0, sp
00311290  da fe ff eb                                      bl #0x310e00
00311294  04 00 9d e5                                      ldr r0, [sp, #4]
00311298  00 c0 9d e5                                      ldr ip, [sp]
0031129c  08 e0 9d e5                                      ldr lr, [sp, #8]
003112a0  0e 00 94 e8                                      ldm r4, {r1, r2, r3}
003112a4  01 40 84 e9                                      stmib r4, {r0, lr}
003112a8  00 c0 84 e5                                      str ip, [r4]
003112ac  0d 00 a0 e1                                      mov r0, sp
003112b0  0d 50 a0 e1                                      mov r5, sp
003112b4  0e 00 8d e8                                      stm sp, {r1, r2, r3}
003112b8  ab ff ff eb                                      bl #0x31116c
003112bc  e1 ff ff ea                                      b #0x311248

; FUNCTION 0x00311380, declared_size=244, range_size=244, mode=arm
; class-group: std::vector<float, std::allocator<float> >
; alias: _ZNSt6vectorIfSaIfEE18_M_insert_overflowEPfRKfRKSt11__true_typejb
; demangled: std::vector<float, std::allocator<float> >::_M_insert_overflow(float*, float const&, std::__true_type const&, unsigned int, bool)
; decoder-mode: arm
00311380  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00311384  0c d0 4d e2                                      sub sp, sp, #0xc
00311388  30 60 9d e5                                      ldr r6, [sp, #0x30]
0031138c  01 70 a0 e1                                      mov r7, r1
00311390  00 50 a0 e1                                      mov r5, r0
00311394  06 10 a0 e1                                      mov r1, r6
00311398  02 40 a0 e1                                      mov r4, r2
0031139c  34 90 dd e5                                      ldrb sb, [sp, #0x34]
003113a0  76 fd ff eb                                      bl #0x310980
003113a4  08 20 8d e2                                      add r2, sp, #8
003113a8  00 10 a0 e1                                      mov r1, r0
003113ac  04 00 22 e5                                      str r0, [r2, #-4]!
003113b0  08 00 85 e2                                      add r0, r5, #8
003113b4  75 fe ff eb                                      bl #0x310d90
003113b8  00 10 95 e5                                      ldr r1, [r5]
003113bc  00 80 a0 e1                                      mov r8, r0
003113c0  01 a0 57 e0                                      subs sl, r7, r1
003113c4  00 00 a0 01                                      moveq r0, r0
003113c8  02 00 00 0a                                      beq #0x3113d8
003113cc  0a 20 a0 e1                                      mov r2, sl
003113d0  d8 f2 ff eb                                      bl #0x30df38
003113d4  0a 00 80 e0                                      add r0, r0, sl
003113d8  00 00 56 e3                                      cmp r6, #0
003113dc  00 b0 a0 e1                                      mov fp, r0
003113e0  07 00 00 0a                                      beq #0x311404
003113e4  06 20 a0 e1                                      mov r2, r6
003113e8  00 30 a0 e3                                      mov r3, #0
003113ec  00 10 94 e5                                      ldr r1, [r4]
003113f0  01 20 52 e2                                      subs r2, r2, #1
003113f4  03 10 80 e7                                      str r1, [r0, r3]
003113f8  04 30 83 e2                                      add r3, r3, #4
003113fc  fa ff ff 1a                                      bne #0x3113ec
00311400  06 b1 80 e0                                      add fp, r0, r6, lsl #2
00311404  00 00 59 e3                                      cmp sb, #0
00311408  10 00 00 0a                                      beq #0x311450
0031140c  00 00 95 e5                                      ldr r0, [r5]
00311410  08 10 95 e5                                      ldr r1, [r5, #8]
00311414  00 00 50 e3                                      cmp r0, #0
00311418  04 00 00 0a                                      beq #0x311430
0031141c  01 10 60 e0                                      rsb r1, r0, r1
00311420  03 10 c1 e3                                      bic r1, r1, #3
00311424  80 00 51 e3                                      cmp r1, #0x80
00311428  06 00 00 8a                                      bhi #0x311448
0031142c  b3 de 0f eb                                      bl #0x708f00
00311430  04 30 9d e5                                      ldr r3, [sp, #4]
00311434  00 09 85 e8                                      stm r5, {r8, fp}
00311438  03 81 88 e0                                      add r8, r8, r3, lsl #2
0031143c  08 80 85 e5                                      str r8, [r5, #8]
00311440  0c d0 8d e2                                      add sp, sp, #0xc
00311444  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00311448  fc fb ff eb                                      bl #0x310440
0031144c  f7 ff ff ea                                      b #0x311430
00311450  04 40 95 e5                                      ldr r4, [r5, #4]
00311454  07 40 54 e0                                      subs r4, r4, r7
00311458  eb ff ff 0a                                      beq #0x31140c
0031145c  0b 00 a0 e1                                      mov r0, fp
00311460  07 10 a0 e1                                      mov r1, r7
00311464  04 20 a0 e1                                      mov r2, r4
00311468  b2 f2 ff eb                                      bl #0x30df38
0031146c  04 b0 80 e0                                      add fp, r0, r4
00311470  e5 ff ff ea                                      b #0x31140c

; FUNCTION 0x00311474, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<float, std::allocator<float> >
; alias: _ZNSt6vectorIfSaIfEE14_M_fill_insertEPfjRKf
; demangled: std::vector<float, std::allocator<float> >::_M_fill_insert(float*, unsigned int, float const&)
; decoder-mode: arm
00311474  30 40 2d e9                                      push {r4, r5, lr}
00311478  00 40 52 e2                                      subs r4, r2, #0
0031147c  14 d0 4d e2                                      sub sp, sp, #0x14
00311480  03 50 a0 e1                                      mov r5, r3
00311484  09 00 00 0a                                      beq #0x3114b0
00311488  04 e0 90 e5                                      ldr lr, [r0, #4]
0031148c  08 c0 90 e5                                      ldr ip, [r0, #8]
00311490  0c c0 6e e0                                      rsb ip, lr, ip
00311494  4c 01 54 e1                                      cmp r4, ip, asr #2
00311498  06 00 00 9a                                      bls #0x3114b8
0031149c  03 20 a0 e1                                      mov r2, r3
003114a0  00 c0 a0 e3                                      mov ip, #0
003114a4  08 30 8d e2                                      add r3, sp, #8
003114a8  10 10 8d e8                                      stm sp, {r4, ip}
003114ac  b3 ff ff eb                                      bl #0x311380
003114b0  14 d0 8d e2                                      add sp, sp, #0x14
003114b4  30 80 bd e8                                      pop {r4, r5, pc}
003114b8  0c c0 8d e2                                      add ip, sp, #0xc
003114bc  00 c0 8d e5                                      str ip, [sp]
003114c0  76 fd ff eb                                      bl #0x310aa0
003114c4  f9 ff ff ea                                      b #0x3114b0

; FUNCTION 0x003114c8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<float, std::allocator<float> >
; alias: _ZNSt6vectorIfSaIfEE6resizeEjRKf
; demangled: std::vector<float, std::allocator<float> >::resize(unsigned int, float const&)
; decoder-mode: arm
003114c8  30 00 2d e9                                      push {r4, r5}
003114cc  04 40 90 e5                                      ldr r4, [r0, #4]
003114d0  00 50 90 e5                                      ldr r5, [r0]
003114d4  02 30 a0 e1                                      mov r3, r2
003114d8  04 20 65 e0                                      rsb r2, r5, r4
003114dc  42 21 a0 e1                                      asr r2, r2, #2
003114e0  02 00 51 e1                                      cmp r1, r2
003114e4  04 00 00 2a                                      bhs #0x3114fc
003114e8  01 51 85 e0                                      add r5, r5, r1, lsl #2
003114ec  04 00 55 e1                                      cmp r5, r4
003114f0  04 50 80 15                                      strne r5, [r0, #4]
003114f4  30 00 bd e8                                      pop {r4, r5}
003114f8  1e ff 2f e1                                      bx lr
003114fc  01 20 62 e0                                      rsb r2, r2, r1
00311500  04 10 a0 e1                                      mov r1, r4
00311504  30 00 bd e8                                      pop {r4, r5}
00311508  d9 ff ff ea                                      b #0x311474
