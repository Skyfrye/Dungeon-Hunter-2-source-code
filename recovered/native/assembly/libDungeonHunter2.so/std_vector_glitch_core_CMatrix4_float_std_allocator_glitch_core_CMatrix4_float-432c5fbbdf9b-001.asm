; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066bc80, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<glitch::core::CMatrix4<float>, std::allocator<glitch::core::CMatrix4<float> > >
; alias: _ZNSt6vectorIN6glitch4core8CMatrix4IfEESaIS3_EE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::core::CMatrix4<float>, std::allocator<glitch::core::CMatrix4<float> > >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0066bc80  70 40 2d e9                                      push {r4, r5, r6, lr}
0066bc84  14 00 90 e8                                      ldm r0, {r2, r4}
0066bc88  c3 33 0c e3                                      movw r3, #0xc3c3
0066bc8c  c3 33 40 e3                                      movt r3, #0x3c3
0066bc90  04 20 62 e0                                      rsb r2, r2, r4
0066bc94  42 21 a0 e1                                      asr r2, r2, #2
0066bc98  01 50 a0 e1                                      mov r5, r1
0066bc9c  02 42 a0 e1                                      lsl r4, r2, #4
0066bca0  04 40 62 e0                                      rsb r4, r2, r4
0066bca4  04 44 84 e0                                      add r4, r4, r4, lsl #8
0066bca8  04 48 84 e0                                      add r4, r4, r4, lsl #16
0066bcac  04 42 82 e0                                      add r4, r2, r4, lsl #4
0066bcb0  03 30 64 e0                                      rsb r3, r4, r3
0066bcb4  01 00 53 e1                                      cmp r3, r1
0066bcb8  0b 00 00 3a                                      blo #0x66bcec
0066bcbc  c3 33 0c e3                                      movw r3, #0xc3c3
0066bcc0  05 00 54 e1                                      cmp r4, r5
0066bcc4  04 00 84 20                                      addhs r0, r4, r4
0066bcc8  05 00 84 30                                      addlo r0, r4, r5
0066bccc  c3 33 40 e3                                      movt r3, #0x3c3
0066bcd0  03 00 50 e1                                      cmp r0, r3
0066bcd4  01 00 00 8a                                      bhi #0x66bce0
0066bcd8  04 00 50 e1                                      cmp r0, r4
0066bcdc  01 00 00 2a                                      bhs #0x66bce8
0066bce0  c3 03 0c e3                                      movw r0, #0xc3c3
0066bce4  c3 03 40 e3                                      movt r0, #0x3c3
0066bce8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066bcec  08 00 9f e5                                      ldr r0, [pc, #8]
0066bcf0  00 00 8f e0                                      add r0, pc, r0
0066bcf4  51 74 02 eb                                      bl #0x708e40
0066bcf8  ef ff ff ea                                      b #0x66bcbc
; mapping-symbol data/literal pool
0066bcfc  78 27 25 00                                      .byte 0x78, 0x27, 0x25, 0x00

; FUNCTION 0x0066c928, declared_size=396, range_size=396, mode=arm
; class-group: std::vector<glitch::core::CMatrix4<float>, std::allocator<glitch::core::CMatrix4<float> > >
; alias: _ZNSt6vectorIN6glitch4core8CMatrix4IfEESaIS3_EE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::core::CMatrix4<float>, std::allocator<glitch::core::CMatrix4<float> > >::_M_fill_insert_aux(glitch::core::CMatrix4<float>*, unsigned int, glitch::core::CMatrix4<float> const&, std::__false_type const&)
; decoder-mode: arm
0066c928  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066c92c  00 50 a0 e1                                      mov r5, r0
0066c930  00 00 90 e5                                      ldr r0, [r0]
0066c934  6c d0 4d e2                                      sub sp, sp, #0x6c
0066c938  03 60 a0 e1                                      mov r6, r3
0066c93c  00 00 53 e1                                      cmp r3, r0
0066c940  01 40 a0 e1                                      mov r4, r1
0066c944  04 a0 95 35                                      ldrlo sl, [r5, #4]
0066c948  0f 00 00 3a                                      blo #0x66c98c
0066c94c  04 a0 95 e5                                      ldr sl, [r5, #4]
0066c950  0a 00 53 e1                                      cmp r3, sl
0066c954  0c 00 00 2a                                      bhs #0x66c98c
0066c958  14 80 8d e2                                      add r8, sp, #0x14
0066c95c  03 10 a0 e1                                      mov r1, r3
0066c960  08 00 a0 e1                                      mov r0, r8
0066c964  0c 20 8d e5                                      str r2, [sp, #0xc]
0066c968  6d fd ff eb                                      bl #0x66bf24
0066c96c  64 c0 8d e2                                      add ip, sp, #0x64
0066c970  05 00 a0 e1                                      mov r0, r5
0066c974  04 10 a0 e1                                      mov r1, r4
0066c978  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0066c97c  08 30 a0 e1                                      mov r3, r8
0066c980  00 c0 8d e5                                      str ip, [sp]
0066c984  e7 ff ff eb                                      bl #0x66c928
0066c988  23 00 00 ea                                      b #0x66ca1c
0066c98c  0a 30 64 e0                                      rsb r3, r4, sl
0066c990  43 31 a0 e1                                      asr r3, r3, #2
0066c994  03 82 a0 e1                                      lsl r8, r3, #4
0066c998  08 80 63 e0                                      rsb r8, r3, r8
0066c99c  08 84 88 e0                                      add r8, r8, r8, lsl #8
0066c9a0  08 88 88 e0                                      add r8, r8, r8, lsl #16
0066c9a4  08 82 83 e0                                      add r8, r3, r8, lsl #4
0066c9a8  08 00 52 e1                                      cmp r2, r8
0066c9ac  08 90 a0 e1                                      mov sb, r8
0066c9b0  1b 00 00 3a                                      blo #0x66ca24
0066c9b4  02 10 68 e0                                      rsb r1, r8, r2
0066c9b8  0a 00 a0 e1                                      mov r0, sl
0066c9bc  06 20 a0 e1                                      mov r2, r6
0066c9c0  5f fd ff eb                                      bl #0x66bf44
0066c9c4  00 00 58 e3                                      cmp r8, #0
0066c9c8  00 b0 a0 e1                                      mov fp, r0
0066c9cc  04 00 85 e5                                      str r0, [r5, #4]
0066c9d0  07 00 00 da                                      ble #0x66c9f4
0066c9d4  00 70 a0 e3                                      mov r7, #0
0066c9d8  07 00 8b e0                                      add r0, fp, r7
0066c9dc  07 10 84 e0                                      add r1, r4, r7
0066c9e0  4f fd ff eb                                      bl #0x66bf24
0066c9e4  01 80 58 e2                                      subs r8, r8, #1
0066c9e8  44 70 87 e2                                      add r7, r7, #0x44
0066c9ec  f9 ff ff 1a                                      bne #0x66c9d8
0066c9f0  04 b0 95 e5                                      ldr fp, [r5, #4]
0066c9f4  44 30 a0 e3                                      mov r3, #0x44
0066c9f8  93 b9 29 e0                                      mla sb, r3, sb, fp
0066c9fc  00 c0 a0 e3                                      mov ip, #0
0066ca00  04 90 85 e5                                      str sb, [r5, #4]
0066ca04  04 00 a0 e1                                      mov r0, r4
0066ca08  0a 10 a0 e1                                      mov r1, sl
0066ca0c  06 20 a0 e1                                      mov r2, r6
0066ca10  58 30 8d e2                                      add r3, sp, #0x58
0066ca14  00 c0 8d e5                                      str ip, [sp]
0066ca18  ee fc ff eb                                      bl #0x66bdd8
0066ca1c  6c d0 8d e2                                      add sp, sp, #0x6c
0066ca20  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066ca24  44 70 a0 e3                                      mov r7, #0x44
0066ca28  97 02 07 e0                                      mul r7, r7, r2
0066ca2c  47 31 a0 e1                                      asr r3, r7, #2
0066ca30  0a b0 67 e0                                      rsb fp, r7, sl
0066ca34  03 92 a0 e1                                      lsl sb, r3, #4
0066ca38  09 90 63 e0                                      rsb sb, r3, sb
0066ca3c  09 94 89 e0                                      add sb, sb, sb, lsl #8
0066ca40  09 98 89 e0                                      add sb, sb, sb, lsl #16
0066ca44  09 92 83 e0                                      add sb, r3, sb, lsl #4
0066ca48  00 00 59 e3                                      cmp sb, #0
0066ca4c  0a 30 a0 d1                                      movle r3, sl
0066ca50  07 00 00 da                                      ble #0x66ca74
0066ca54  00 80 a0 e3                                      mov r8, #0
0066ca58  08 00 8a e0                                      add r0, sl, r8
0066ca5c  08 10 8b e0                                      add r1, fp, r8
0066ca60  2f fd ff eb                                      bl #0x66bf24
0066ca64  01 90 59 e2                                      subs sb, sb, #1
0066ca68  44 80 88 e2                                      add r8, r8, #0x44
0066ca6c  f9 ff ff 1a                                      bne #0x66ca58
0066ca70  04 30 95 e5                                      ldr r3, [r5, #4]
0066ca74  07 30 83 e0                                      add r3, r3, r7
0066ca78  04 30 85 e5                                      str r3, [r5, #4]
0066ca7c  0b 10 a0 e1                                      mov r1, fp
0066ca80  0a 20 a0 e1                                      mov r2, sl
0066ca84  00 50 a0 e3                                      mov r5, #0
0066ca88  60 30 8d e2                                      add r3, sp, #0x60
0066ca8c  04 00 a0 e1                                      mov r0, r4
0066ca90  00 50 8d e5                                      str r5, [sp]
0066ca94  b2 fc ff eb                                      bl #0x66bd64
0066ca98  04 00 a0 e1                                      mov r0, r4
0066ca9c  07 10 84 e0                                      add r1, r4, r7
0066caa0  06 20 a0 e1                                      mov r2, r6
0066caa4  5c 30 8d e2                                      add r3, sp, #0x5c
0066caa8  00 50 8d e5                                      str r5, [sp]
0066caac  c9 fc ff eb                                      bl #0x66bdd8
0066cab0  d9 ff ff ea                                      b #0x66ca1c

; FUNCTION 0x0066cab4, declared_size=488, range_size=488, mode=arm
; class-group: std::vector<glitch::core::CMatrix4<float>, std::allocator<glitch::core::CMatrix4<float> > >
; alias: _ZNSt6vectorIN6glitch4core8CMatrix4IfEESaIS3_EE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::core::CMatrix4<float>, std::allocator<glitch::core::CMatrix4<float> > >::_M_fill_insert(glitch::core::CMatrix4<float>*, unsigned int, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0066cab4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066cab8  00 60 52 e2                                      subs r6, r2, #0
0066cabc  1c d0 4d e2                                      sub sp, sp, #0x1c
0066cac0  00 40 a0 e1                                      mov r4, r0
0066cac4  01 50 a0 e1                                      mov r5, r1
0066cac8  08 30 8d e5                                      str r3, [sp, #8]
0066cacc  67 00 00 0a                                      beq #0x66cc70
0066cad0  00 50 90 e9                                      ldmib r0, {ip, lr}
0066cad4  0e c0 6c e0                                      rsb ip, ip, lr
0066cad8  4c c1 a0 e1                                      asr ip, ip, #2
0066cadc  0c e2 a0 e1                                      lsl lr, ip, #4
0066cae0  0e e0 6c e0                                      rsb lr, ip, lr
0066cae4  0e e4 8e e0                                      add lr, lr, lr, lsl #8
0066cae8  0e e8 8e e0                                      add lr, lr, lr, lsl #16
0066caec  0e c2 8c e0                                      add ip, ip, lr, lsl #4
0066caf0  0c 00 56 e1                                      cmp r6, ip
0066caf4  5f 00 00 9a                                      bls #0x66cc78
0066caf8  06 10 a0 e1                                      mov r1, r6
0066cafc  5f fc ff eb                                      bl #0x66bc80
0066cb00  08 30 84 e2                                      add r3, r4, #8
0066cb04  18 20 8d e2                                      add r2, sp, #0x18
0066cb08  00 10 a0 e1                                      mov r1, r0
0066cb0c  08 00 22 e5                                      str r0, [r2, #-8]!
0066cb10  03 00 a0 e1                                      mov r0, r3
0066cb14  0c 30 8d e5                                      str r3, [sp, #0xc]
0066cb18  c2 fc ff eb                                      bl #0x66be28
0066cb1c  00 90 94 e5                                      ldr sb, [r4]
0066cb20  00 70 a0 e1                                      mov r7, r0
0066cb24  05 30 69 e0                                      rsb r3, sb, r5
0066cb28  43 31 a0 e1                                      asr r3, r3, #2
0066cb2c  03 b2 a0 e1                                      lsl fp, r3, #4
0066cb30  0b b0 63 e0                                      rsb fp, r3, fp
0066cb34  0b b4 8b e0                                      add fp, fp, fp, lsl #8
0066cb38  0b b8 8b e0                                      add fp, fp, fp, lsl #16
0066cb3c  0b b2 83 e0                                      add fp, r3, fp, lsl #4
0066cb40  00 00 5b e3                                      cmp fp, #0
0066cb44  00 b0 a0 d1                                      movle fp, r0
0066cb48  09 00 00 da                                      ble #0x66cb74
0066cb4c  0b a0 a0 e1                                      mov sl, fp
0066cb50  00 80 a0 e3                                      mov r8, #0
0066cb54  08 00 87 e0                                      add r0, r7, r8
0066cb58  08 10 89 e0                                      add r1, sb, r8
0066cb5c  f0 fc ff eb                                      bl #0x66bf24
0066cb60  01 a0 5a e2                                      subs sl, sl, #1
0066cb64  44 80 88 e2                                      add r8, r8, #0x44
0066cb68  f9 ff ff 1a                                      bne #0x66cb54
0066cb6c  44 30 a0 e3                                      mov r3, #0x44
0066cb70  93 7b 2b e0                                      mla fp, r3, fp, r7
0066cb74  01 00 56 e3                                      cmp r6, #1
0066cb78  42 00 00 0a                                      beq #0x66cc88
0066cb7c  0b 00 a0 e1                                      mov r0, fp
0066cb80  06 10 a0 e1                                      mov r1, r6
0066cb84  08 20 9d e5                                      ldr r2, [sp, #8]
0066cb88  ed fc ff eb                                      bl #0x66bf44
0066cb8c  00 b0 a0 e1                                      mov fp, r0
0066cb90  04 30 94 e5                                      ldr r3, [r4, #4]
0066cb94  03 20 65 e0                                      rsb r2, r5, r3
0066cb98  42 21 a0 e1                                      asr r2, r2, #2
0066cb9c  02 a2 a0 e1                                      lsl sl, r2, #4
0066cba0  0a a0 62 e0                                      rsb sl, r2, sl
0066cba4  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0066cba8  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0066cbac  0a a2 82 e0                                      add sl, r2, sl, lsl #4
0066cbb0  00 00 5a e3                                      cmp sl, #0
0066cbb4  0a 00 00 da                                      ble #0x66cbe4
0066cbb8  0a 80 a0 e1                                      mov r8, sl
0066cbbc  00 60 a0 e3                                      mov r6, #0
0066cbc0  06 00 8b e0                                      add r0, fp, r6
0066cbc4  06 10 85 e0                                      add r1, r5, r6
0066cbc8  d5 fc ff eb                                      bl #0x66bf24
0066cbcc  01 80 58 e2                                      subs r8, r8, #1
0066cbd0  44 60 86 e2                                      add r6, r6, #0x44
0066cbd4  f9 ff ff 1a                                      bne #0x66cbc0
0066cbd8  44 30 a0 e3                                      mov r3, #0x44
0066cbdc  93 ba 2b e0                                      mla fp, r3, sl, fp
0066cbe0  04 30 94 e5                                      ldr r3, [r4, #4]
0066cbe4  00 20 94 e5                                      ldr r2, [r4]
0066cbe8  03 00 52 e1                                      cmp r2, r3
0066cbec  0e 00 00 0a                                      beq #0x66cc2c
0066cbf0  44 10 43 e2                                      sub r1, r3, #0x44
0066cbf4  01 20 62 e0                                      rsb r2, r2, r1
0066cbf8  22 21 a0 e1                                      lsr r2, r2, #2
0066cbfc  02 14 82 e0                                      add r1, r2, r2, lsl #8
0066cc00  01 14 82 e0                                      add r1, r2, r1, lsl #8
0066cc04  01 13 81 e0                                      add r1, r1, r1, lsl #6
0066cc08  01 11 82 e0                                      add r1, r2, r1, lsl #2
0066cc0c  01 01 a0 e1                                      lsl r0, r1, #2
0066cc10  00 10 61 e0                                      rsb r1, r1, r0
0066cc14  01 22 82 e0                                      add r2, r2, r1, lsl #4
0066cc18  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0066cc1c  43 10 e0 e3                                      mvn r1, #0x43
0066cc20  91 02 02 e0                                      mul r2, r1, r2
0066cc24  01 20 82 e0                                      add r2, r2, r1
0066cc28  02 30 83 e0                                      add r3, r3, r2
0066cc2c  08 20 94 e5                                      ldr r2, [r4, #8]
0066cc30  03 10 a0 e1                                      mov r1, r3
0066cc34  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0066cc38  02 30 63 e0                                      rsb r3, r3, r2
0066cc3c  43 31 a0 e1                                      asr r3, r3, #2
0066cc40  03 22 a0 e1                                      lsl r2, r3, #4
0066cc44  02 20 63 e0                                      rsb r2, r3, r2
0066cc48  02 24 82 e0                                      add r2, r2, r2, lsl #8
0066cc4c  02 28 82 e0                                      add r2, r2, r2, lsl #16
0066cc50  02 22 83 e0                                      add r2, r3, r2, lsl #4
0066cc54  b6 db ff eb                                      bl #0x663b34
0066cc58  10 30 9d e5                                      ldr r3, [sp, #0x10]
0066cc5c  44 20 a0 e3                                      mov r2, #0x44
0066cc60  00 70 84 e5                                      str r7, [r4]
0066cc64  92 73 27 e0                                      mla r7, r2, r3, r7
0066cc68  04 b0 84 e5                                      str fp, [r4, #4]
0066cc6c  08 70 84 e5                                      str r7, [r4, #8]
0066cc70  1c d0 8d e2                                      add sp, sp, #0x1c
0066cc74  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066cc78  14 c0 8d e2                                      add ip, sp, #0x14
0066cc7c  00 c0 8d e5                                      str ip, [sp]
0066cc80  28 ff ff eb                                      bl #0x66c928
0066cc84  f9 ff ff ea                                      b #0x66cc70
0066cc88  0b 00 a0 e1                                      mov r0, fp
0066cc8c  08 10 9d e5                                      ldr r1, [sp, #8]
0066cc90  a3 fc ff eb                                      bl #0x66bf24
0066cc94  44 b0 8b e2                                      add fp, fp, #0x44
0066cc98  bc ff ff ea                                      b #0x66cb90

; FUNCTION 0x0066cc9c, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<glitch::core::CMatrix4<float>, std::allocator<glitch::core::CMatrix4<float> > >
; alias: _ZNSt6vectorIN6glitch4core8CMatrix4IfEESaIS3_EE6resizeEjRKS3_
; demangled: std::vector<glitch::core::CMatrix4<float>, std::allocator<glitch::core::CMatrix4<float> > >::resize(unsigned int, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0066cc9c  70 40 2d e9                                      push {r4, r5, r6, lr}
0066cca0  20 10 90 e8                                      ldm r0, {r5, ip}
0066cca4  02 30 a0 e1                                      mov r3, r2
0066cca8  10 d0 4d e2                                      sub sp, sp, #0x10
0066ccac  0c 20 65 e0                                      rsb r2, r5, ip
0066ccb0  42 21 a0 e1                                      asr r2, r2, #2
0066ccb4  00 40 a0 e1                                      mov r4, r0
0066ccb8  02 62 a0 e1                                      lsl r6, r2, #4
0066ccbc  06 60 62 e0                                      rsb r6, r2, r6
0066ccc0  06 64 86 e0                                      add r6, r6, r6, lsl #8
0066ccc4  06 68 86 e0                                      add r6, r6, r6, lsl #16
0066ccc8  06 22 82 e0                                      add r2, r2, r6, lsl #4
0066cccc  02 00 51 e1                                      cmp r1, r2
0066ccd0  0c 00 00 2a                                      bhs #0x66cd08
0066ccd4  44 20 a0 e3                                      mov r2, #0x44
0066ccd8  92 51 22 e0                                      mla r2, r2, r1, r5
0066ccdc  0c 00 52 e1                                      cmp r2, ip
0066cce0  06 00 00 0a                                      beq #0x66cd00
0066cce4  0c 00 a0 e1                                      mov r0, ip
0066cce8  0c 10 a0 e1                                      mov r1, ip
0066ccec  0c 30 8d e2                                      add r3, sp, #0xc
0066ccf0  00 c0 a0 e3                                      mov ip, #0
0066ccf4  00 c0 8d e5                                      str ip, [sp]
0066ccf8  00 fc ff eb                                      bl #0x66bd00
0066ccfc  04 00 84 e5                                      str r0, [r4, #4]
0066cd00  10 d0 8d e2                                      add sp, sp, #0x10
0066cd04  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066cd08  01 20 62 e0                                      rsb r2, r2, r1
0066cd0c  0c 10 a0 e1                                      mov r1, ip
0066cd10  67 ff ff eb                                      bl #0x66cab4
0066cd14  f9 ff ff ea                                      b #0x66cd00
