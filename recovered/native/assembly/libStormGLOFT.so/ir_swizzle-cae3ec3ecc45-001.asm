; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00081964, declared_size=196, range_size=196, mode=thumb
; class-group: ir_swizzle
; alias: _ZN10ir_swizzle9init_maskEPKjj
; demangled: ir_swizzle::init_mask(unsigned int const*, unsigned int)
; decoder-mode: thumb
00081964  f0 b5                                            push {r4, r5, r6, r7, lr}
00081966  03 af                                            add r7, sp, #0xc
00081968  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008196c  4f f4 e0 63                                      mov.w r3, #0x700
00081970  05 46                                            mov r5, r0
00081972  03 ea 02 23                                      and.w r3, r3, r2, lsl #8
00081976  01 3a                                            subs r2, #1
00081978  00 20                                            movs r0, #0
0008197a  03 2a                                            cmp r2, #3
0008197c  e8 61                                            str r0, [r5, #0x1c]
0008197e  ab 83                                            strh r3, [r5, #0x1c]
00081980  3c d8                                            bhi #0x819fc
00081982  df e8 02 f0                                      tbb [pc, r2]
00081986  37 02                                            lsls r7, r6, #8
00081988  04 07                                            lsls r4, r0, #0x1c
0008198a  00 20                                            movs r0, #0
0008198c  26 e0                                            b #0x819dc
0008198e  4f f0 00 0c                                      mov.w ip, #0
00081992  13 e0                                            b #0x819bc
00081994  d1 e9 00 e6                                      ldrd lr, r6, [r1]
00081998  d1 e9 02 c4                                      ldrd ip, r4, [r1, #8]
0008199c  a0 01                                            lsls r0, r4, #6
0008199e  c0 b2                                            uxtb r0, r0
000819a0  03 43                                            orrs r3, r0
000819a2  01 20                                            movs r0, #1
000819a4  ab 83                                            strh r3, [r5, #0x1c]
000819a6  00 fa 0e f2                                      lsl.w r2, r0, lr
000819aa  00 fa 06 f6                                      lsl.w r6, r0, r6
000819ae  32 43                                            orrs r2, r6
000819b0  00 fa 0c f6                                      lsl.w r6, r0, ip
000819b4  32 43                                            orrs r2, r6
000819b6  a0 40                                            lsls r0, r4
000819b8  02 ea 00 0c                                      and.w ip, r2, r0
000819bc  d1 e9 00 26                                      ldrd r2, r6, [r1]
000819c0  01 20                                            movs r0, #1
000819c2  8c 68                                            ldr r4, [r1, #8]
000819c4  00 fa 06 f6                                      lsl.w r6, r0, r6
000819c8  00 fa 02 f2                                      lsl.w r2, r0, r2
000819cc  64 f3 05 13                                      bfi r3, r4, #4, #2
000819d0  32 43                                            orrs r2, r6
000819d2  a0 40                                            lsls r0, r4
000819d4  10 40                                            ands r0, r2
000819d6  ab 83                                            strh r3, [r5, #0x1c]
000819d8  40 ea 0c 00                                      orr.w r0, r0, ip
000819dc  d1 e9 00 26                                      ldrd r2, r6, [r1]
000819e0  01 24                                            movs r4, #1
000819e2  66 f3 83 03                                      bfi r3, r6, #2, #2
000819e6  04 fa 06 f6                                      lsl.w r6, r4, r6
000819ea  04 fa 02 f2                                      lsl.w r2, r4, r2
000819ee  ab 83                                            strh r3, [r5, #0x1c]
000819f0  32 40                                            ands r2, r6
000819f2  10 43                                            orrs r0, r2
000819f4  09 88                                            ldrh r1, [r1]
000819f6  61 f3 01 03                                      bfi r3, r1, #0, #2
000819fa  ab 83                                            strh r3, [r5, #0x1c]
000819fc  4f f2 ff 71                                      movw r1, #0xf7ff
00081a00  aa 69                                            ldr r2, [r5, #0x18]
00081a02  00 28                                            cmp r0, #0
00081a04  01 ea 03 01                                      and.w r1, r1, r3
00081a08  18 bf                                            it ne
00081a0a  01 20                                            movne r0, #1
00081a0c  41 ea c0 20                                      orr.w r0, r1, r0, lsl #11
00081a10  a8 83                                            strh r0, [r5, #0x1c]
00081a12  10 69                                            ldr r0, [r2, #0x10]
00081a14  01 22                                            movs r2, #1
00081a16  40 68                                            ldr r0, [r0, #4]
00081a18  c3 f3 02 21                                      ubfx r1, r3, #8, #3
00081a1c  b0 f7 82 ef                                      blx #0x32924
00081a20  28 61                                            str r0, [r5, #0x10]
00081a22  5d f8 04 bb                                      ldr fp, [sp], #4
00081a26  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00081a28, declared_size=132, range_size=132, mode=thumb
; class-group: ir_swizzle
; alias: _ZN10ir_swizzleC1EP9ir_rvaluejjjjj
; demangled: ir_swizzle::ir_swizzle(ir_rvalue*, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int)
; alias: _ZN10ir_swizzleC2EP9ir_rvaluejjjjj
; demangled: ir_swizzle::ir_swizzle(ir_rvalue*, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int)
; decoder-mode: thumb
00081a28  f0 b5                                            push {r4, r5, r6, r7, lr}
00081a2a  03 af                                            add r7, sp, #0xc
00081a2c  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00081a30  86 b0                                            sub sp, #0x18
00081a32  04 46                                            mov r4, r0
00081a34  19 48                                            ldr r0, [pc, #0x64]
00081a36  0d 46                                            mov r5, r1
00081a38  98 46                                            mov r8, r3
00081a3a  78 44                                            add r0, pc
00081a3c  16 46                                            mov r6, r2
00081a3e  00 68                                            ldr r0, [r0]
00081a40  00 68                                            ldr r0, [r0]
00081a42  05 90                                            str r0, [sp, #0x14]
00081a44  28 46                                            mov r0, r5
00081a46  b1 f7 30 e9                                      blx #0x32ca8
00081a4a  15 49                                            ldr r1, [pc, #0x54]
00081a4c  15 4a                                            ldr r2, [pc, #0x54]
00081a4e  79 44                                            add r1, pc
00081a50  d7 e9 02 ec                                      ldrd lr, ip, [r7, #8]
00081a54  7a 44                                            add r2, pc
00081a56  09 68                                            ldr r1, [r1]
00081a58  13 68                                            ldr r3, [r2]
00081a5a  05 22                                            movs r2, #5
00081a5c  e2 60                                            str r2, [r4, #0xc]
00081a5e  09 68                                            ldr r1, [r1]
00081a60  c4 e9 04 10                                      strd r1, r0, [r4, #0x10]
00081a64  03 f1 08 00                                      add.w r0, r3, #8
00081a68  3a 69                                            ldr r2, [r7, #0x10]
00081a6a  01 a9                                            add r1, sp, #4
00081a6c  20 60                                            str r0, [r4]
00081a6e  01 a8                                            add r0, sp, #4
00081a70  a5 61                                            str r5, [r4, #0x18]
00081a72  80 e8 40 41                                      stm.w r0, {r6, r8, lr}
00081a76  20 46                                            mov r0, r4
00081a78  cd f8 10 c0                                      str.w ip, [sp, #0x10]
00081a7c  b2 f7 be e8                                      blx #0x33bfc
00081a80  09 48                                            ldr r0, [pc, #0x24]
00081a82  05 99                                            ldr r1, [sp, #0x14]
00081a84  78 44                                            add r0, pc
00081a86  00 68                                            ldr r0, [r0]
00081a88  00 68                                            ldr r0, [r0]
00081a8a  40 1a                                            subs r0, r0, r1
00081a8c  01 bf                                            itttt eq
00081a8e  20 46                                            moveq r0, r4
00081a90  06 b0                                            addeq sp, #0x18
00081a92  5d f8 04 8b                                      ldreq r8, [sp], #4
00081a96  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00081a98  b0 f7 e2 ea                                      blx #0x32060
00081a9c  7a aa                                            add r2, sp, #0x1e8
00081a9e  05 00                                            movs r5, r0
00081aa0  ee aa                                            add r2, sp, #0x3b8
00081aa2  05 00                                            movs r5, r0
00081aa4  34 af                                            add r7, sp, #0xd0
00081aa6  05 00                                            movs r5, r0
00081aa8  30 aa                                            add r2, sp, #0xc0
00081aaa  05 00                                            movs r5, r0

; FUNCTION 0x00081aac, declared_size=76, range_size=76, mode=thumb
; class-group: ir_swizzle
; alias: _ZN10ir_swizzleC1EP9ir_rvaluePKjj
; demangled: ir_swizzle::ir_swizzle(ir_rvalue*, unsigned int const*, unsigned int)
; alias: _ZN10ir_swizzleC2EP9ir_rvaluePKjj
; demangled: ir_swizzle::ir_swizzle(ir_rvalue*, unsigned int const*, unsigned int)
; decoder-mode: thumb
00081aac  f0 b5                                            push {r4, r5, r6, r7, lr}
00081aae  03 af                                            add r7, sp, #0xc
00081ab0  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00081ab4  0e 46                                            mov r6, r1
00081ab6  04 46                                            mov r4, r0
00081ab8  30 46                                            mov r0, r6
00081aba  98 46                                            mov r8, r3
00081abc  15 46                                            mov r5, r2
00081abe  b1 f7 f4 e8                                      blx #0x32ca8
00081ac2  0c 4a                                            ldr r2, [pc, #0x30]
00081ac4  05 23                                            movs r3, #5
00081ac6  0a 49                                            ldr r1, [pc, #0x28]
00081ac8  7a 44                                            add r2, pc
00081aca  79 44                                            add r1, pc
00081acc  12 68                                            ldr r2, [r2]
00081ace  09 68                                            ldr r1, [r1]
00081ad0  12 68                                            ldr r2, [r2]
00081ad2  08 31                                            adds r1, #8
00081ad4  21 60                                            str r1, [r4]
00081ad6  29 46                                            mov r1, r5
00081ad8  c4 e9 03 32                                      strd r3, r2, [r4, #0xc]
00081adc  42 46                                            mov r2, r8
00081ade  c4 e9 05 06                                      strd r0, r6, [r4, #0x14]
00081ae2  20 46                                            mov r0, r4
00081ae4  b2 f7 8a e8                                      blx #0x33bfc
00081ae8  20 46                                            mov r0, r4
00081aea  5d f8 04 8b                                      ldr r8, [sp], #4
00081aee  f0 bd                                            pop {r4, r5, r6, r7, pc}
00081af0  be ae                                            add r6, sp, #0x2f8
00081af2  05 00                                            movs r5, r0
00081af4  74 aa                                            add r2, sp, #0x1d0
00081af6  05 00                                            movs r5, r0

; FUNCTION 0x00081af8, declared_size=88, range_size=88, mode=thumb
; class-group: ir_swizzle
; alias: _ZN10ir_swizzleC1EP9ir_rvalue15ir_swizzle_mask
; demangled: ir_swizzle::ir_swizzle(ir_rvalue*, ir_swizzle_mask)
; alias: _ZN10ir_swizzleC2EP9ir_rvalue15ir_swizzle_mask
; demangled: ir_swizzle::ir_swizzle(ir_rvalue*, ir_swizzle_mask)
; decoder-mode: thumb
00081af8  f0 b5                                            push {r4, r5, r6, r7, lr}
00081afa  03 af                                            add r7, sp, #0xc
00081afc  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00081b00  0e 46                                            mov r6, r1
00081b02  04 46                                            mov r4, r0
00081b04  30 46                                            mov r0, r6
00081b06  15 46                                            mov r5, r2
00081b08  b1 f7 ce e8                                      blx #0x32ca8
00081b0c  0f 4a                                            ldr r2, [pc, #0x3c]
00081b0e  0e 49                                            ldr r1, [pc, #0x38]
00081b10  7a 44                                            add r2, pc
00081b12  a5 83                                            strh r5, [r4, #0x1c]
00081b14  c4 e9 05 06                                      strd r0, r6, [r4, #0x14]
00081b18  05 20                                            movs r0, #5
00081b1a  79 44                                            add r1, pc
00081b1c  e0 60                                            str r0, [r4, #0xc]
00081b1e  10 68                                            ldr r0, [r2]
00081b20  2a 0c                                            lsrs r2, r5, #0x10
00081b22  09 68                                            ldr r1, [r1]
00081b24  e2 83                                            strh r2, [r4, #0x1e]
00081b26  01 22                                            movs r2, #1
00081b28  00 68                                            ldr r0, [r0]
00081b2a  08 31                                            adds r1, #8
00081b2c  21 60                                            str r1, [r4]
00081b2e  20 61                                            str r0, [r4, #0x10]
00081b30  30 69                                            ldr r0, [r6, #0x10]
00081b32  40 68                                            ldr r0, [r0, #4]
00081b34  c5 f3 02 21                                      ubfx r1, r5, #8, #3
00081b38  b0 f7 f4 ee                                      blx #0x32924
00081b3c  20 61                                            str r0, [r4, #0x10]
00081b3e  20 46                                            mov r0, r4
00081b40  5d f8 04 bb                                      ldr fp, [sp], #4
00081b44  f0 bd                                            pop {r4, r5, r6, r7, pc}
00081b46  00 bf                                            nop
00081b48  6e ae                                            add r6, sp, #0x1b8
00081b4a  05 00                                            movs r5, r0
00081b4c  2c aa                                            add r2, sp, #0xb0
00081b4e  05 00                                            movs r5, r0

; FUNCTION 0x00081b50, declared_size=312, range_size=312, mode=thumb
; class-group: ir_swizzle
; alias: _ZN10ir_swizzle6createEP9ir_rvaluePKcj
; demangled: ir_swizzle::create(ir_rvalue*, char const*, unsigned int)
; decoder-mode: thumb
00081b50  f0 b5                                            push {r4, r5, r6, r7, lr}
00081b52  03 af                                            add r7, sp, #0xc
00081b54  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00081b58  89 b0                                            sub sp, #0x24
00081b5a  80 46                                            mov r8, r0
00081b5c  37 48                                            ldr r0, [pc, #0xdc]
00081b5e  14 46                                            mov r4, r2
00081b60  0d 46                                            mov r5, r1
00081b62  78 44                                            add r0, pc
00081b64  00 68                                            ldr r0, [r0]
00081b66  00 68                                            ldr r0, [r0]
00081b68  08 90                                            str r0, [sp, #0x20]
00081b6a  40 46                                            mov r0, r8
00081b6c  b0 f7 dc ef                                      blx #0x32b28
00081b70  00 26                                            movs r6, #0
00081b72  cd e9 02 66                                      strd r6, r6, [sp, #8]
00081b76  cd e9 00 66                                      strd r6, r6, [sp]
00081b7a  2b 78                                            ldrb r3, [r5]
00081b7c  a3 f1 61 01                                      sub.w r1, r3, #0x61
00081b80  c9 b2                                            uxtb r1, r1
00081b82  19 29                                            cmp r1, #0x19
00081b84  4b d8                                            bhi #0x81c1e
00081b86  2e a1                                            adr r1, #0xb8
00081b88  0f f2 d0 0c                                      addw ip, pc, #0xd0
00081b8c  ca 18                                            adds r2, r1, r3
00081b8e  69 1c                                            adds r1, r5, #1
00081b90  00 25                                            movs r5, #0
00081b92  ee 46                                            mov lr, sp
00081b94  12 f8 61 2c                                      ldrb r2, [r2, #-0x61]
00081b98  de b2                                            uxtb r6, r3
00081b9a  b6 b1                                            cbz r6, #0x81bca
00081b9c  61 3b                                            subs r3, #0x61
00081b9e  db b2                                            uxtb r3, r3
00081ba0  19 2b                                            cmp r3, #0x19
00081ba2  10 d8                                            bhi #0x81bc6
00081ba4  0c eb 06 03                                      add.w r3, ip, r6
00081ba8  00 26                                            movs r6, #0
00081baa  13 f8 61 3c                                      ldrb r3, [r3, #-0x61]
00081bae  9b 1a                                            subs r3, r3, r2
00081bb0  4e f8 25 30                                      str.w r3, [lr, r5, lsl #2]
00081bb4  00 2b                                            cmp r3, #0
00081bb6  32 db                                            blt #0x81c1e
00081bb8  a3 42                                            cmp r3, r4
00081bba  30 da                                            bge #0x81c1e
00081bbc  4b 5d                                            ldrb r3, [r1, r5]
00081bbe  01 35                                            adds r5, #1
00081bc0  04 2d                                            cmp r5, #4
00081bc2  e9 d3                                            blo #0x81b98
00081bc4  0b b1                                            cbz r3, #0x81bca
00081bc6  00 26                                            movs r6, #0
00081bc8  29 e0                                            b #0x81c1e
00081bca  20 21                                            movs r1, #0x20
00081bcc  b0 f7 a8 ed                                      blx #0x32720
00081bd0  06 46                                            mov r6, r0
00081bd2  29 48                                            ldr r0, [pc, #0xa4]
00081bd4  78 44                                            add r0, pc
00081bd6  01 68                                            ldr r1, [r0]
00081bd8  30 46                                            mov r0, r6
00081bda  b0 f7 92 ee                                      blx #0x32900
00081bde  40 46                                            mov r0, r8
00081be0  dd e9 00 94                                      ldrd sb, r4, [sp]
00081be4  dd e9 02 ab                                      ldrd sl, fp, [sp, #8]
00081be8  b1 f7 5e e8                                      blx #0x32ca8
00081bec  05 21                                            movs r1, #5
00081bee  2a 46                                            mov r2, r5
00081bf0  f1 60                                            str r1, [r6, #0xc]
00081bf2  70 61                                            str r0, [r6, #0x14]
00081bf4  22 48                                            ldr r0, [pc, #0x88]
00081bf6  21 49                                            ldr r1, [pc, #0x84]
00081bf8  78 44                                            add r0, pc
00081bfa  79 44                                            add r1, pc
00081bfc  00 68                                            ldr r0, [r0]
00081bfe  09 68                                            ldr r1, [r1]
00081c00  00 68                                            ldr r0, [r0]
00081c02  30 61                                            str r0, [r6, #0x10]
00081c04  01 f1 08 00                                      add.w r0, r1, #8
00081c08  04 a9                                            add r1, sp, #0x10
00081c0a  30 60                                            str r0, [r6]
00081c0c  30 46                                            mov r0, r6
00081c0e  c6 f8 18 80                                      str.w r8, [r6, #0x18]
00081c12  cd e9 04 94                                      strd sb, r4, [sp, #0x10]
00081c16  cd e9 06 ab                                      strd sl, fp, [sp, #0x18]
00081c1a  b1 f7 f0 ef                                      blx #0x33bfc
00081c1e  19 48                                            ldr r0, [pc, #0x64]
00081c20  08 99                                            ldr r1, [sp, #0x20]
00081c22  78 44                                            add r0, pc
00081c24  00 68                                            ldr r0, [r0]
00081c26  00 68                                            ldr r0, [r0]
00081c28  40 1a                                            subs r0, r0, r1
00081c2a  01 bf                                            itttt eq
00081c2c  30 46                                            moveq r0, r6
00081c2e  09 b0                                            addeq sp, #0x24
00081c30  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00081c34  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00081c36  b0 f7 14 ea                                      blx #0x32060
00081c3a  00 bf                                            nop
00081c3c  52 a9                                            add r1, sp, #0x148
00081c3e  05 00                                            movs r5, r0
00081c40  05 05                                            lsls r5, r0, #0x14
00081c42  0d 0d                                            lsrs r5, r1, #0x14
00081c44  0d 0d                                            lsrs r5, r1, #0x14
00081c46  05 0d                                            lsrs r5, r0, #0x14
00081c48  0d 0d                                            lsrs r5, r1, #0x14
00081c4a  0d 0d                                            lsrs r5, r1, #0x14
00081c4c  0d 0d                                            lsrs r5, r1, #0x14
00081c4e  0d 09                                            lsrs r5, r1, #4
00081c50  09 05                                            lsls r1, r1, #0x14
00081c52  09 09                                            lsrs r1, r1, #4
00081c54  0d 0d                                            lsrs r5, r1, #0x14
00081c56  01 01                                            lsls r1, r0, #4
00081c58  01 01                                            lsls r1, r0, #4
00081c5a  00 00                                            movs r0, r0
00081c5c  08 07                                            lsls r0, r1, #0x1c
00081c5e  00 00                                            movs r0, r0
00081c60  00 00                                            movs r0, r0
00081c62  06 00                                            movs r6, r0
00081c64  00 00                                            movs r0, r0
00081c66  00 00                                            movs r0, r0
00081c68  00 00                                            movs r0, r0
00081c6a  00 0b                                            lsrs r0, r0, #0xc
00081c6c  0c 05                                            lsls r4, r1, #0x14
00081c6e  09 0a                                            lsrs r1, r1, #8
00081c70  00 00                                            movs r0, r0
00081c72  04 01                                            lsls r4, r0, #4
00081c74  02 03                                            lsls r2, r0, #0xc
00081c76  00 00                                            movs r0, r0
00081c78  64 a9                                            add r1, sp, #0x190
00081c7a  05 00                                            movs r5, r0
00081c7c  8e ad                                            add r5, sp, #0x238
00081c7e  05 00                                            movs r5, r0
00081c80  44 a9                                            add r1, sp, #0x110
00081c82  05 00                                            movs r5, r0
00081c84  92 a8                                            add r0, sp, #0x248
00081c86  05 00                                            movs r5, r0

; FUNCTION 0x00081c88, declared_size=8, range_size=8, mode=thumb
; class-group: ir_swizzle
; alias: _ZNK10ir_swizzle19variable_referencedEv
; demangled: ir_swizzle::variable_referenced() const
; decoder-mode: thumb
00081c88  80 69                                            ldr r0, [r0, #0x18]
00081c8a  01 68                                            ldr r1, [r0]
00081c8c  09 6a                                            ldr r1, [r1, #0x20]
00081c8e  08 47                                            bx r1

; FUNCTION 0x00082bd8, declared_size=76, range_size=76, mode=thumb
; class-group: ir_swizzle
; alias: _ZNK10ir_swizzle5cloneEPvP10hash_table
; demangled: ir_swizzle::clone(void*, hash_table*) const
; decoder-mode: thumb
00082bd8  f0 b5                                            push {r4, r5, r6, r7, lr}
00082bda  03 af                                            add r7, sp, #0xc
00082bdc  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00082be0  0d 46                                            mov r5, r1
00082be2  06 46                                            mov r6, r0
00082be4  28 46                                            mov r0, r5
00082be6  20 21                                            movs r1, #0x20
00082be8  90 46                                            mov r8, r2
00082bea  af f7 9a ed                                      blx #0x32720
00082bee  04 46                                            mov r4, r0
00082bf0  0b 48                                            ldr r0, [pc, #0x2c]
00082bf2  78 44                                            add r0, pc
00082bf4  01 68                                            ldr r1, [r0]
00082bf6  20 46                                            mov r0, r4
00082bf8  af f7 82 ee                                      blx #0x32900
00082bfc  b0 69                                            ldr r0, [r6, #0x18]
00082bfe  42 46                                            mov r2, r8
00082c00  01 68                                            ldr r1, [r0]
00082c02  0b 69                                            ldr r3, [r1, #0x10]
00082c04  29 46                                            mov r1, r5
00082c06  98 47                                            blx r3
00082c08  f2 69                                            ldr r2, [r6, #0x1c]
00082c0a  01 46                                            mov r1, r0
00082c0c  20 46                                            mov r0, r4
00082c0e  b1 f7 5c e8                                      blx #0x33cc8
00082c12  70 69                                            ldr r0, [r6, #0x14]
00082c14  60 61                                            str r0, [r4, #0x14]
00082c16  20 46                                            mov r0, r4
00082c18  5d f8 04 8b                                      ldr r8, [sp], #4
00082c1c  f0 bd                                            pop {r4, r5, r6, r7, pc}
00082c1e  00 bf                                            nop
00082c20  46 99                                            ldr r1, [sp, #0x118]
00082c22  05 00                                            movs r5, r0

; FUNCTION 0x00083714, declared_size=22, range_size=22, mode=thumb
; class-group: ir_swizzle
; alias: _ZN10ir_swizzleD0Ev
; demangled: ir_swizzle::~ir_swizzle()
; decoder-mode: thumb
00083714  d0 b5                                            push {r4, r6, r7, lr}
00083716  02 af                                            add r7, sp, #8
00083718  00 21                                            movs r1, #0
0008371a  04 46                                            mov r4, r0
0008371c  af f7 f0 e8                                      blx #0x32900
00083720  20 46                                            mov r0, r4
00083722  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
00083726  2d f0 9f b9                                      b.w #0xb0a68

; FUNCTION 0x0008372a, declared_size=12, range_size=12, mode=thumb
; class-group: ir_swizzle
; alias: _ZN10ir_swizzle6acceptEP10ir_visitor
; demangled: ir_swizzle::accept(ir_visitor*)
; decoder-mode: thumb
0008372a  02 46                                            mov r2, r0
0008372c  08 68                                            ldr r0, [r1]
0008372e  03 6a                                            ldr r3, [r0, #0x20]
00083730  08 46                                            mov r0, r1
00083732  11 46                                            mov r1, r2
00083734  18 47                                            bx r3

; FUNCTION 0x00083736, declared_size=34, range_size=34, mode=thumb
; class-group: ir_swizzle
; alias: _ZNK10ir_swizzle9is_lvalueEv
; demangled: ir_swizzle::is_lvalue() const
; decoder-mode: thumb
00083736  d0 b5                                            push {r4, r6, r7, lr}
00083738  02 af                                            add r7, sp, #8
0008373a  04 46                                            mov r4, r0
0008373c  a0 69                                            ldr r0, [r4, #0x18]
0008373e  01 68                                            ldr r1, [r0]
00083740  c9 69                                            ldr r1, [r1, #0x1c]
00083742  88 47                                            blx r1
00083744  01 46                                            mov r1, r0
00083746  00 20                                            movs r0, #0
00083748  01 29                                            cmp r1, #1
0008374a  18 bf                                            it ne
0008374c  d0 bd                                            popne {r4, r6, r7, pc}
0008374e  61 7f                                            ldrb r1, [r4, #0x1d]
00083750  09 07                                            lsls r1, r1, #0x1c
00083752  58 bf                                            it pl
00083754  01 20                                            movpl r0, #1
00083756  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x00085c48, declared_size=236, range_size=236, mode=thumb
; class-group: ir_swizzle
; alias: _ZN10ir_swizzle25constant_expression_valueEP10hash_table
; demangled: ir_swizzle::constant_expression_value(hash_table*)
; decoder-mode: thumb
00085c48  f0 b5                                            push {r4, r5, r6, r7, lr}
00085c4a  03 af                                            add r7, sp, #0xc
00085c4c  2d e9 00 0b                                      push.w {r8, sb, fp}
00085c50  96 b0                                            sub sp, #0x58
00085c52  80 46                                            mov r8, r0
00085c54  34 48                                            ldr r0, [pc, #0xd0]
00085c56  78 44                                            add r0, pc
00085c58  00 68                                            ldr r0, [r0]
00085c5a  00 68                                            ldr r0, [r0]
00085c5c  15 90                                            str r0, [sp, #0x54]
00085c5e  d8 f8 18 00                                      ldr.w r0, [r8, #0x18]
00085c62  02 68                                            ldr r2, [r0]
00085c64  92 69                                            ldr r2, [r2, #0x18]
00085c66  90 47                                            blx r2
00085c68  05 46                                            mov r5, r0
00085c6a  00 2d                                            cmp r5, #0
00085c6c  4c d0                                            beq #0x85d08
00085c6e  0d f1 10 09                                      add.w sb, sp, #0x10
00085c72  40 21                                            movs r1, #0x40
00085c74  48 46                                            mov r0, sb
00085c76  ac f7 e6 eb                                      blx #0x32444
00085c7a  b8 f8 1c 00                                      ldrh.w r0, [r8, #0x1c]
00085c7e  00 f0 03 01                                      and r1, r0, #3
00085c82  00 91                                            str r1, [sp]
00085c84  c0 f3 81 01                                      ubfx r1, r0, #2, #2
00085c88  01 91                                            str r1, [sp, #4]
00085c8a  c0 f3 01 11                                      ubfx r1, r0, #4, #2
00085c8e  10 f4 e0 6f                                      tst.w r0, #0x700
00085c92  02 91                                            str r1, [sp, #8]
00085c94  c0 f3 81 11                                      ubfx r1, r0, #6, #2
00085c98  03 91                                            str r1, [sp, #0xc]
00085c9a  21 d0                                            beq #0x85ce0
00085c9c  2a 69                                            ldr r2, [r5, #0x10]
00085c9e  c0 f3 02 20                                      ubfx r0, r0, #8, #3
00085ca2  05 f1 18 01                                      add.w r1, r5, #0x18
00085ca6  00 23                                            movs r3, #0
00085ca8  6c 46                                            mov r4, sp
00085caa  52 68                                            ldr r2, [r2, #4]
00085cac  02 2a                                            cmp r2, #2
00085cae  08 d3                                            blo #0x85cc2
00085cb0  0d d0                                            beq #0x85cce
00085cb2  03 2a                                            cmp r2, #3
00085cb4  11 d1                                            bne #0x85cda
00085cb6  54 f8 23 60                                      ldr.w r6, [r4, r3, lsl #2]
00085cba  8e 5d                                            ldrb r6, [r1, r6]
00085cbc  09 f8 03 60                                      strb.w r6, [sb, r3]
00085cc0  0b e0                                            b #0x85cda
00085cc2  54 f8 23 60                                      ldr.w r6, [r4, r3, lsl #2]
00085cc6  05 eb 86 06                                      add.w r6, r5, r6, lsl #2
00085cca  b6 69                                            ldr r6, [r6, #0x18]
00085ccc  03 e0                                            b #0x85cd6
00085cce  54 f8 23 60                                      ldr.w r6, [r4, r3, lsl #2]
00085cd2  51 f8 26 60                                      ldr.w r6, [r1, r6, lsl #2]
00085cd6  49 f8 23 60                                      str.w r6, [sb, r3, lsl #2]
00085cda  01 33                                            adds r3, #1
00085cdc  83 42                                            cmp r3, r0
00085cde  e5 d3                                            blo #0x85cac
00085ce0  40 46                                            mov r0, r8
00085ce2  ac f7 22 ef                                      blx #0x32b28
00085ce6  68 21                                            movs r1, #0x68
00085ce8  ac f7 1a ed                                      blx #0x32720
00085cec  05 46                                            mov r5, r0
00085cee  0f 48                                            ldr r0, [pc, #0x3c]
00085cf0  78 44                                            add r0, pc
00085cf2  01 68                                            ldr r1, [r0]
00085cf4  28 46                                            mov r0, r5
00085cf6  ac f7 04 ee                                      blx #0x32900
00085cfa  d8 f8 10 10                                      ldr.w r1, [r8, #0x10]
00085cfe  04 aa                                            add r2, sp, #0x10
00085d00  28 46                                            mov r0, r5
00085d02  ac f7 5e ee                                      blx #0x329c0
00085d06  00 e0                                            b #0x85d0a
00085d08  00 25                                            movs r5, #0
00085d0a  09 48                                            ldr r0, [pc, #0x24]
00085d0c  15 99                                            ldr r1, [sp, #0x54]
00085d0e  78 44                                            add r0, pc
00085d10  00 68                                            ldr r0, [r0]
00085d12  00 68                                            ldr r0, [r0]
00085d14  40 1a                                            subs r0, r0, r1
00085d16  01 bf                                            itttt eq
00085d18  28 46                                            moveq r0, r5
00085d1a  16 b0                                            addeq sp, #0x58
00085d1c  bd e8 00 0b                                      popeq.w {r8, sb, fp}
00085d20  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00085d22  ac f7 9e e9                                      blx #0x32060
00085d26  00 bf                                            nop
00085d28  5e 68                                            ldr r6, [r3, #4]
00085d2a  05 00                                            movs r5, r0
00085d2c  48 68                                            ldr r0, [r1, #4]
00085d2e  05 00                                            movs r5, r0
00085d30  a6 67                                            str r6, [r4, #0x78]
00085d32  05 00                                            movs r5, r0

; FUNCTION 0x000863b6, declared_size=52, range_size=52, mode=thumb
; class-group: ir_swizzle
; alias: _ZN10ir_swizzle6equalsEP14ir_instruction12ir_node_type
; demangled: ir_swizzle::equals(ir_instruction*, ir_node_type)
; decoder-mode: thumb
000863b6  b1 b1                                            cbz r1, #0x863e6
000863b8  cb 68                                            ldr r3, [r1, #0xc]
000863ba  05 2b                                            cmp r3, #5
000863bc  02 bf                                            ittt eq
000863be  d1 f8 10 c0                                      ldreq.w ip, [r1, #0x10]
000863c2  03 69                                            ldreq r3, [r0, #0x10]
000863c4  63 45                                            cmpeq r3, ip
000863c6  0e d1                                            bne #0x863e6
000863c8  05 2a                                            cmp r2, #5
000863ca  1f bf                                            itttt ne
000863cc  b0 f8 1c c0                                      ldrhne.w ip, [r0, #0x1c]
000863d0  8b 8b                                            ldrhne r3, [r1, #0x1c]
000863d2  83 ea 0c 03                                      eorne.w r3, r3, ip
000863d6  5f ea 03 63                                      lslsne.w r3, r3, #0x18
000863da  04 d1                                            bne #0x863e6
000863dc  80 69                                            ldr r0, [r0, #0x18]
000863de  89 69                                            ldr r1, [r1, #0x18]
000863e0  03 68                                            ldr r3, [r0]
000863e2  5b 69                                            ldr r3, [r3, #0x14]
000863e4  18 47                                            bx r3
000863e6  00 20                                            movs r0, #0
000863e8  70 47                                            bx lr

; FUNCTION 0x000875f8, declared_size=60, range_size=60, mode=thumb
; class-group: ir_swizzle
; alias: _ZN10ir_swizzle6acceptEP23ir_hierarchical_visitor
; demangled: ir_swizzle::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
000875f8  b0 b5                                            push {r4, r5, r7, lr}
000875fa  02 af                                            add r7, sp, #8
000875fc  0d 46                                            mov r5, r1
000875fe  04 46                                            mov r4, r0
00087600  28 68                                            ldr r0, [r5]
00087602  21 46                                            mov r1, r4
00087604  42 6c                                            ldr r2, [r0, #0x44]
00087606  28 46                                            mov r0, r5
00087608  90 47                                            blx r2
0008760a  18 b1                                            cbz r0, #0x87614
0008760c  01 28                                            cmp r0, #1
0008760e  08 bf                                            it eq
00087610  00 20                                            moveq r0, #0
00087612  b0 bd                                            pop {r4, r5, r7, pc}
00087614  a0 69                                            ldr r0, [r4, #0x18]
00087616  01 68                                            ldr r1, [r0]
00087618  ca 68                                            ldr r2, [r1, #0xc]
0008761a  29 46                                            mov r1, r5
0008761c  90 47                                            blx r2
0008761e  02 28                                            cmp r0, #2
00087620  04 bf                                            itt eq
00087622  02 20                                            moveq r0, #2
00087624  b0 bd                                            popeq {r4, r5, r7, pc}
00087626  28 68                                            ldr r0, [r5]
00087628  21 46                                            mov r1, r4
0008762a  82 6c                                            ldr r2, [r0, #0x48]
0008762c  28 46                                            mov r0, r5
0008762e  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
00087632  10 47                                            bx r2
