; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00056a50, declared_size=964, range_size=964, mode=thumb
; class-group: ast_function
; alias: _ZN12ast_function3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_function::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00056a50  f0 b5                                            push {r4, r5, r6, r7, lr}
00056a52  03 af                                            add r7, sp, #0xc
00056a54  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00056a58  8d b0                                            sub sp, #0x34
00056a5a  04 46                                            mov r4, r0
00056a5c  bd 48                                            ldr r0, [pc, #0x2f4]
00056a5e  15 46                                            mov r5, r2
00056a60  78 44                                            add r0, pc
00056a62  00 68                                            ldr r0, [r0]
00056a64  00 68                                            ldr r0, [r0]
00056a66  0c 90                                            str r0, [sp, #0x30]
00056a68  00 20                                            movs r0, #0
00056a6a  0a 90                                            str r0, [sp, #0x28]
00056a6c  09 a8                                            add r0, sp, #0x24
00056a6e  00 f1 04 0b                                      add.w fp, r0, #4
00056a72  cd f8 24 b0                                      str.w fp, [sp, #0x24]
00056a76  0b 90                                            str r0, [sp, #0x2c]
00056a78  d5 f8 54 01                                      ldr.w r0, [r5, #0x154]
00056a7c  d4 f8 24 90                                      ldr.w sb, [r4, #0x24]
00056a80  a0 b1                                            cbz r0, #0x56aac
00056a82  95 f8 7c 00                                      ldrb.w r0, [r5, #0x7c]
00056a86  78 22                                            movs r2, #0x78
00056a88  d5 f8 80 10                                      ldr.w r1, [r5, #0x80]
00056a8c  00 28                                            cmp r0, #0
00056a8e  18 bf                                            it ne
00056a90  64 22                                            movne r2, #0x64
00056a92  91 42                                            cmp r1, r2
00056a94  0a d3                                            blo #0x56aac
00056a96  26 1d                                            adds r6, r4, #4
00056a98  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
00056a9a  08 90                                            str r0, [sp, #0x20]
00056a9c  04 a8                                            add r0, sp, #0x10
00056a9e  4e c0                                            stm r0!, {r1, r2, r3, r6}
00056aa0  04 a8                                            add r0, sp, #0x10
00056aa2  ad a2                                            adr r2, #0x2b4
00056aa4  29 46                                            mov r1, r5
00056aa6  4b 46                                            mov r3, sb
00056aa8  db f7 06 ef                                      blx #0x328b8
00056aac  26 1d                                            adds r6, r4, #4
00056aae  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
00056ab0  cd e9 00 60                                      strd r6, r0, [sp]
00056ab4  48 46                                            mov r0, sb
00056ab6  02 95                                            str r5, [sp, #8]
00056ab8  dc f7 50 e9                                      blx #0x32d5c
00056abc  94 f8 34 10                                      ldrb.w r1, [r4, #0x34]
00056ac0  04 f1 28 00                                      add.w r0, r4, #0x28
00056ac4  09 aa                                            add r2, sp, #0x24
00056ac6  2b 46                                            mov r3, r5
00056ac8  dc f7 8a e9                                      blx #0x32de0
00056acc  20 6a                                            ldr r0, [r4, #0x20]
00056ace  03 a9                                            add r1, sp, #0xc
00056ad0  2a 46                                            mov r2, r5
00056ad2  00 6e                                            ldr r0, [r0, #0x60]
00056ad4  db f7 b0 ef                                      blx #0x32a38
00056ad8  80 46                                            mov r8, r0
00056ada  b8 f1 00 0f                                      cmp.w r8, #0
00056ade  12 d1                                            bne #0x56b06
00056ae0  26 1d                                            adds r6, r4, #4
00056ae2  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
00056ae4  08 90                                            str r0, [sp, #0x20]
00056ae6  04 a8                                            add r0, sp, #0x10
00056ae8  0e c0                                            stm r0!, {r1, r2, r3}
00056aea  ab a2                                            adr r2, #0x2ac
00056aec  29 46                                            mov r1, r5
00056aee  03 98                                            ldr r0, [sp, #0xc]
00056af0  4b 46                                            mov r3, sb
00056af2  00 90                                            str r0, [sp]
00056af4  04 a8                                            add r0, sp, #0x10
00056af6  07 96                                            str r6, [sp, #0x1c]
00056af8  db f7 de ee                                      blx #0x328b8
00056afc  b2 48                                            ldr r0, [pc, #0x2c8]
00056afe  78 44                                            add r0, pc
00056b00  00 68                                            ldr r0, [r0]
00056b02  d0 f8 00 80                                      ldr.w r8, [r0]
00056b06  20 6a                                            ldr r0, [r4, #0x20]
00056b08  dc f7 70 e9                                      blx #0x32dec
00056b0c  01 28                                            cmp r0, #1
00056b0e  0c d1                                            bne #0x56b2a
00056b10  26 1d                                            adds r6, r4, #4
00056b12  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
00056b14  08 90                                            str r0, [sp, #0x20]
00056b16  04 a8                                            add r0, sp, #0x10
00056b18  0e c0                                            stm r0!, {r1, r2, r3}
00056b1a  04 a8                                            add r0, sp, #0x10
00056b1c  29 46                                            mov r1, r5
00056b1e  ab 4a                                            ldr r2, [pc, #0x2ac]
00056b20  4b 46                                            mov r3, sb
00056b22  07 96                                            str r6, [sp, #0x1c]
00056b24  7a 44                                            add r2, pc
00056b26  db f7 c8 ee                                      blx #0x328b8
00056b2a  d8 f8 04 00                                      ldr.w r0, [r8, #4]
00056b2e  09 28                                            cmp r0, #9
00056b30  04 bf                                            itt eq
00056b32  d8 f8 10 00                                      ldreq.w r0, [r8, #0x10]
00056b36  00 28                                            cmpeq r0, #0
00056b38  0c d1                                            bne #0x56b54
00056b3a  26 1d                                            adds r6, r4, #4
00056b3c  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
00056b3e  08 90                                            str r0, [sp, #0x20]
00056b40  04 a8                                            add r0, sp, #0x10
00056b42  0e c0                                            stm r0!, {r1, r2, r3}
00056b44  04 a8                                            add r0, sp, #0x10
00056b46  29 46                                            mov r1, r5
00056b48  a1 4a                                            ldr r2, [pc, #0x284]
00056b4a  4b 46                                            mov r3, sb
00056b4c  07 96                                            str r6, [sp, #0x1c]
00056b4e  7a 44                                            add r2, pc
00056b50  db f7 b2 ee                                      blx #0x328b8
00056b54  40 46                                            mov r0, r8
00056b56  dc f7 ae e8                                      blx #0x32cb4
00056b5a  01 28                                            cmp r0, #1
00056b5c  0c d1                                            bne #0x56b78
00056b5e  26 1d                                            adds r6, r4, #4
00056b60  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
00056b62  08 90                                            str r0, [sp, #0x20]
00056b64  04 a8                                            add r0, sp, #0x10
00056b66  0e c0                                            stm r0!, {r1, r2, r3}
00056b68  04 a8                                            add r0, sp, #0x10
00056b6a  29 46                                            mov r1, r5
00056b6c  99 4a                                            ldr r2, [pc, #0x264]
00056b6e  4b 46                                            mov r3, sb
00056b70  07 96                                            str r6, [sp, #0x1c]
00056b72  7a 44                                            add r2, pc
00056b74  db f7 a0 ee                                      blx #0x328b8
00056b78  68 69                                            ldr r0, [r5, #0x14]
00056b7a  49 46                                            mov r1, sb
00056b7c  db f7 68 ef                                      blx #0x32a50
00056b80  82 46                                            mov sl, r0
00056b82  ba f1 00 0f                                      cmp.w sl, #0
00056b86  22 d1                                            bne #0x56bce
00056b88  28 46                                            mov r0, r5
00056b8a  20 21                                            movs r1, #0x20
00056b8c  db f7 c8 ed                                      blx #0x32720
00056b90  82 46                                            mov sl, r0
00056b92  91 48                                            ldr r0, [pc, #0x244]
00056b94  78 44                                            add r0, pc
00056b96  01 68                                            ldr r1, [r0]
00056b98  50 46                                            mov r0, sl
00056b9a  db f7 b2 ee                                      blx #0x32900
00056b9e  50 46                                            mov r0, sl
00056ba0  49 46                                            mov r1, sb
00056ba2  db f7 92 ef                                      blx #0x32ac8
00056ba6  68 69                                            ldr r0, [r5, #0x14]
00056ba8  51 46                                            mov r1, sl
00056baa  dc f7 26 e9                                      blx #0x32df8
00056bae  00 28                                            cmp r0, #0
00056bb0  00 f0 c1 80                                      beq.w #0x56d36
00056bb4  d5 f8 58 01                                      ldr.w r0, [r5, #0x158]
00056bb8  51 46                                            mov r1, sl
00056bba  ba f1 00 0f                                      cmp.w sl, #0
00056bbe  18 bf                                            it ne
00056bc0  04 31                                            addne r1, #4
00056bc2  02 1d                                            adds r2, r0, #4
00056bc4  0a 60                                            str r2, [r1]
00056bc6  82 68                                            ldr r2, [r0, #8]
00056bc8  4a 60                                            str r2, [r1, #4]
00056bca  11 60                                            str r1, [r2]
00056bcc  81 60                                            str r1, [r0, #8]
00056bce  95 f8 7c 00                                      ldrb.w r0, [r5, #0x7c]
00056bd2  20 b9                                            cbnz r0, #0x56bde
00056bd4  50 46                                            mov r0, sl
00056bd6  db f7 60 ef                                      blx #0x32a98
00056bda  01 28                                            cmp r0, #1
00056bdc  48 d1                                            bne #0x56c70
00056bde  09 aa                                            add r2, sp, #0x24
00056be0  50 46                                            mov r0, sl
00056be2  29 46                                            mov r1, r5
00056be4  dc f7 0e e9                                      blx #0x32e04
00056be8  06 46                                            mov r6, r0
00056bea  00 2e                                            cmp r6, #0
00056bec  40 d0                                            beq #0x56c70
00056bee  09 a9                                            add r1, sp, #0x24
00056bf0  30 46                                            mov r0, r6
00056bf2  dc f7 0e e9                                      blx #0x32e10
00056bf6  88 b1                                            cbz r0, #0x56c1c
00056bf8  04 f1 04 0e                                      add.w lr, r4, #4
00056bfc  9e e8 0e 50                                      ldm.w lr, {r1, r2, r3, ip, lr}
00056c00  08 91                                            str r1, [sp, #0x20]
00056c02  04 a9                                            add r1, sp, #0x10
00056c04  81 e8 0c 10                                      stm.w r1, {r2, r3, ip}
00056c08  29 46                                            mov r1, r5
00056c0a  4b 46                                            mov r3, sb
00056c0c  74 4a                                            ldr r2, [pc, #0x1d0]
00056c0e  00 90                                            str r0, [sp]
00056c10  04 a8                                            add r0, sp, #0x10
00056c12  7a 44                                            add r2, pc
00056c14  cd f8 1c e0                                      str.w lr, [sp, #0x1c]
00056c18  db f7 4e ee                                      blx #0x328b8
00056c1c  30 69                                            ldr r0, [r6, #0x10]
00056c1e  40 45                                            cmp r0, r8
00056c20  0f d0                                            beq #0x56c42
00056c22  04 f1 04 0c                                      add.w ip, r4, #4
00056c26  9c e8 0f 10                                      ldm.w ip, {r0, r1, r2, r3, ip}
00056c2a  08 90                                            str r0, [sp, #0x20]
00056c2c  04 a8                                            add r0, sp, #0x10
00056c2e  0e c0                                            stm r0!, {r1, r2, r3}
00056c30  04 a8                                            add r0, sp, #0x10
00056c32  29 46                                            mov r1, r5
00056c34  6b 4a                                            ldr r2, [pc, #0x1ac]
00056c36  4b 46                                            mov r3, sb
00056c38  cd f8 1c c0                                      str.w ip, [sp, #0x1c]
00056c3c  7a 44                                            add r2, pc
00056c3e  db f7 3c ee                                      blx #0x328b8
00056c42  96 f8 24 00                                      ldrb.w r0, [r6, #0x24]
00056c46  c0 07                                            lsls r0, r0, #0x1f
00056c48  13 d0                                            beq #0x56c72
00056c4a  94 f8 34 00                                      ldrb.w r0, [r4, #0x34]
00056c4e  00 28                                            cmp r0, #0
00056c50  63 d0                                            beq #0x56d1a
00056c52  04 f1 04 0c                                      add.w ip, r4, #4
00056c56  9c e8 0f 10                                      ldm.w ip, {r0, r1, r2, r3, ip}
00056c5a  08 90                                            str r0, [sp, #0x20]
00056c5c  04 a8                                            add r0, sp, #0x10
00056c5e  80 e8 0e 10                                      stm.w r0, {r1, r2, r3, ip}
00056c62  04 a8                                            add r0, sp, #0x10
00056c64  60 a2                                            adr r2, #0x180
00056c66  29 46                                            mov r1, r5
00056c68  4b 46                                            mov r3, sb
00056c6a  db f7 26 ee                                      blx #0x328b8
00056c6e  00 e0                                            b #0x56c72
00056c70  00 26                                            movs r6, #0
00056c72  63 49                                            ldr r1, [pc, #0x18c]
00056c74  48 46                                            mov r0, sb
00056c76  79 44                                            add r1, pc
00056c78  db f7 62 e9                                      blx #0x31f40
00056c7c  20 bb                                            cbnz r0, #0x56cc8
00056c7e  d8 f8 04 00                                      ldr.w r0, [r8, #4]
00056c82  0a 28                                            cmp r0, #0xa
00056c84  0e d0                                            beq #0x56ca4
00056c86  04 f1 04 0c                                      add.w ip, r4, #4
00056c8a  9c e8 0f 10                                      ldm.w ip, {r0, r1, r2, r3, ip}
00056c8e  08 90                                            str r0, [sp, #0x20]
00056c90  04 a8                                            add r0, sp, #0x10
00056c92  0e c0                                            stm r0!, {r1, r2, r3}
00056c94  04 a8                                            add r0, sp, #0x10
00056c96  29 46                                            mov r1, r5
00056c98  5a 4a                                            ldr r2, [pc, #0x168]
00056c9a  cd f8 1c c0                                      str.w ip, [sp, #0x1c]
00056c9e  7a 44                                            add r2, pc
00056ca0  db f7 0a ee                                      blx #0x328b8
00056ca4  09 98                                            ldr r0, [sp, #0x24]
00056ca6  58 45                                            cmp r0, fp
00056ca8  0e d0                                            beq #0x56cc8
00056caa  04 f1 04 0c                                      add.w ip, r4, #4
00056cae  9c e8 0f 10                                      ldm.w ip, {r0, r1, r2, r3, ip}
00056cb2  08 90                                            str r0, [sp, #0x20]
00056cb4  04 a8                                            add r0, sp, #0x10
00056cb6  0e c0                                            stm r0!, {r1, r2, r3}
00056cb8  04 a8                                            add r0, sp, #0x10
00056cba  29 46                                            mov r1, r5
00056cbc  52 4a                                            ldr r2, [pc, #0x148]
00056cbe  cd f8 1c c0                                      str.w ip, [sp, #0x1c]
00056cc2  7a 44                                            add r2, pc
00056cc4  db f7 f8 ed                                      blx #0x328b8
00056cc8  16 bb                                            cbnz r6, #0x56d10
00056cca  28 46                                            mov r0, r5
00056ccc  40 21                                            movs r1, #0x40
00056cce  db f7 28 ed                                      blx #0x32720
00056cd2  06 46                                            mov r6, r0
00056cd4  4d 48                                            ldr r0, [pc, #0x134]
00056cd6  78 44                                            add r0, pc
00056cd8  01 68                                            ldr r1, [r0]
00056cda  30 46                                            mov r0, r6
00056cdc  db f7 10 ee                                      blx #0x32900
00056ce0  20 6a                                            ldr r0, [r4, #0x20]
00056ce2  41 46                                            mov r1, r8
00056ce4  00 23                                            movs r3, #0
00056ce6  90 f8 28 00                                      ldrb.w r0, [r0, #0x28]
00056cea  00 f0 03 02                                      and r2, r0, #3
00056cee  30 46                                            mov r0, r6
00056cf0  dc f7 94 e8                                      blx #0x32e1c
00056cf4  c6 f8 38 a0                                      str.w sl, [r6, #0x38]
00056cf8  00 2e                                            cmp r6, #0
00056cfa  18 bf                                            it ne
00056cfc  04 30                                            addne r0, #4
00056cfe  0a f1 18 01                                      add.w r1, sl, #0x18
00056d02  01 60                                            str r1, [r0]
00056d04  da f8 1c 10                                      ldr.w r1, [sl, #0x1c]
00056d08  41 60                                            str r1, [r0, #4]
00056d0a  08 60                                            str r0, [r1]
00056d0c  ca f8 1c 00                                      str.w r0, [sl, #0x1c]
00056d10  09 a9                                            add r1, sp, #0x24
00056d12  30 46                                            mov r0, r6
00056d14  dc f7 88 e8                                      blx #0x32e28
00056d18  a6 63                                            str r6, [r4, #0x38]
00056d1a  3d 48                                            ldr r0, [pc, #0xf4]
00056d1c  0c 99                                            ldr r1, [sp, #0x30]
00056d1e  78 44                                            add r0, pc
00056d20  00 68                                            ldr r0, [r0]
00056d22  00 68                                            ldr r0, [r0]
00056d24  40 1a                                            subs r0, r0, r1
00056d26  01 bf                                            itttt eq
00056d28  00 20                                            moveq r0, #0
00056d2a  0d b0                                            addeq sp, #0x34
00056d2c  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00056d30  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00056d32  db f7 96 e9                                      blx #0x32060
00056d36  26 1d                                            adds r6, r4, #4
00056d38  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
00056d3a  08 90                                            str r0, [sp, #0x20]
00056d3c  04 a8                                            add r0, sp, #0x10
00056d3e  0e c0                                            stm r0!, {r1, r2, r3}
00056d40  04 a8                                            add r0, sp, #0x10
00056d42  29 46                                            mov r1, r5
00056d44  25 4a                                            ldr r2, [pc, #0x94]
00056d46  4b 46                                            mov r3, sb
00056d48  07 96                                            str r6, [sp, #0x1c]
00056d4a  7a 44                                            add r2, pc
00056d4c  db f7 b4 ed                                      blx #0x328b8
00056d50  e3 e7                                            b #0x56d1a
00056d52  00 bf                                            nop
00056d54  54 5a                                            ldrh r4, [r2, r1]
00056d56  08 00                                            movs r0, r1
00056d58  64 65                                            str r4, [r4, #0x54]
00056d5a  63 6c                                            ldr r3, [r4, #0x44]
00056d5c  61 72                                            strb r1, [r4, #9]
00056d5e  61 74                                            strb r1, [r4, #0x11]
00056d60  69 6f                                            ldr r1, [r5, #0x74]
00056d62  6e 20                                            movs r0, #0x6e
00056d64  6f 66                                            str r7, [r5, #0x64]
00056d66  20 66                                            str r0, [r4, #0x60]
00056d68  75 6e                                            ldr r5, [r6, #0x64]
00056d6a  63 74                                            strb r3, [r4, #0x11]
00056d6c  69 6f                                            ldr r1, [r5, #0x74]
00056d6e  6e 20                                            movs r0, #0x6e
00056d70  60 25                                            movs r5, #0x60
00056d72  73 27                                            movs r7, #0x73
00056d74  20 6e                                            ldr r0, [r4, #0x60]
00056d76  6f 74                                            strb r7, [r5, #0x11]
00056d78  20 61                                            str r0, [r4, #0x10]
00056d7a  6c 6c                                            ldr r4, [r5, #0x44]
00056d7c  6f 77                                            strb r7, [r5, #0x1d]
00056d7e  65 64                                            str r5, [r4, #0x44]
00056d80  20 77                                            strb r0, [r4, #0x1c]
00056d82  69 74                                            strb r1, [r5, #0x11]
00056d84  68 69                                            ldr r0, [r5, #0x14]
00056d86  6e 20                                            movs r0, #0x6e
00056d88  66 75                                            strb r6, [r4, #0x15]
00056d8a  6e 63                                            str r6, [r5, #0x34]
00056d8c  74 69                                            ldr r4, [r6, #0x14]
00056d8e  6f 6e                                            ldr r7, [r5, #0x64]
00056d90  20 62                                            str r0, [r4, #0x20]
00056d92  6f 64                                            str r7, [r5, #0x44]
00056d94  79 00                                            lsls r1, r7, #1
00056d96  00 00                                            movs r0, r0
00056d98  66 75                                            strb r6, [r4, #0x15]
00056d9a  6e 63                                            str r6, [r5, #0x34]
00056d9c  74 69                                            ldr r4, [r6, #0x14]
00056d9e  6f 6e                                            ldr r7, [r5, #0x64]
00056da0  20 60                                            str r0, [r4]
00056da2  25 73                                            strb r5, [r4, #0xc]
00056da4  27 20                                            movs r0, #0x27
00056da6  68 61                                            str r0, [r5, #0x14]
00056da8  73 20                                            movs r0, #0x73
00056daa  75 6e                                            ldr r5, [r6, #0x64]
00056dac  64 65                                            str r4, [r4, #0x54]
00056dae  63 6c                                            ldr r3, [r4, #0x44]
00056db0  61 72                                            strb r1, [r4, #9]
00056db2  65 64                                            str r5, [r4, #0x44]
00056db4  20 72                                            strb r0, [r4, #8]
00056db6  65 74                                            strb r5, [r4, #0x11]
00056db8  75 72                                            strb r5, [r6, #9]
00056dba  6e 20                                            movs r0, #0x6e
00056dbc  74 79                                            ldrb r4, [r6, #5]
00056dbe  70 65                                            str r0, [r6, #0x54]
00056dc0  20 60                                            str r0, [r4]
00056dc2  25 73                                            strb r5, [r4, #0xc]
00056dc4  27 00                                            movs r7, r4
00056dc6  00 00                                            movs r0, r0
00056dc8  3e 5a                                            ldrh r6, [r7, r0]
00056dca  08 00                                            movs r0, r1
00056dcc  92 42                                            cmp r2, r2
00056dce  06 00                                            movs r6, r0
00056dd0  91 42                                            cmp r1, r2
00056dd2  06 00                                            movs r6, r0
00056dd4  a6 42                                            cmp r6, r4
00056dd6  06 00                                            movs r6, r0
00056dd8  a4 59                                            ldr r4, [r4, r6]
00056dda  08 00                                            movs r0, r1
00056ddc  05 41                                            asrs r5, r0
00056dde  06 00                                            movs r6, r0
00056de0  6c 42                                            rsbs r4, r5, #0
00056de2  06 00                                            movs r6, r0
00056de4  80 42                                            cmp r0, r0
00056de6  06 00                                            movs r6, r0
00056de8  66 75                                            strb r6, [r4, #0x15]
00056dea  6e 63                                            str r6, [r5, #0x34]
00056dec  74 69                                            ldr r4, [r6, #0x14]
00056dee  6f 6e                                            ldr r7, [r5, #0x64]
00056df0  20 60                                            str r0, [r4]
00056df2  25 73                                            strb r5, [r4, #0xc]
00056df4  27 20                                            movs r0, #0x27
00056df6  72 65                                            str r2, [r6, #0x54]
00056df8  64 65                                            str r4, [r4, #0x54]
00056dfa  66 69                                            ldr r6, [r4, #0x14]
00056dfc  6e 65                                            str r6, [r5, #0x54]
00056dfe  64 00                                            lsls r4, r4, #1
00056e00  78 42                                            rsbs r0, r7, #0
00056e02  06 00                                            movs r6, r0
00056e04  55 42                                            rsbs r5, r2, #0
00056e06  06 00                                            movs r6, r0
00056e08  49 42                                            rsbs r1, r1, #0
00056e0a  06 00                                            movs r6, r0
00056e0c  62 58                                            ldr r2, [r4, r1]
00056e0e  08 00                                            movs r0, r1
00056e10  96 57                                            ldrsb r6, [r2, r6]
00056e12  08 00                                            movs r0, r1

; FUNCTION 0x0007dc98, declared_size=64, range_size=64, mode=thumb
; class-group: ast_function
; alias: _ZNK12ast_function5printEv
; demangled: ast_function::print() const
; decoder-mode: thumb
0007dc98  d0 b5                                            push {r4, r6, r7, lr}
0007dc9a  02 af                                            add r7, sp, #8
0007dc9c  04 46                                            mov r4, r0
0007dc9e  20 6a                                            ldr r0, [r4, #0x20]
0007dca0  01 68                                            ldr r1, [r0]
0007dca2  09 68                                            ldr r1, [r1]
0007dca4  88 47                                            blx r1
0007dca6  61 6a                                            ldr r1, [r4, #0x24]
0007dca8  09 a0                                            adr r0, #0x24
0007dcaa  b4 f7 1e eb                                      blx #0x322e8
0007dcae  a4 6a                                            ldr r4, [r4, #0x28]
0007dcb0  05 e0                                            b #0x7dcbe
0007dcb2  20 46                                            mov r0, r4
0007dcb4  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
0007dcb8  09 68                                            ldr r1, [r1]
0007dcba  88 47                                            blx r1
0007dcbc  24 68                                            ldr r4, [r4]
0007dcbe  20 68                                            ldr r0, [r4]
0007dcc0  00 28                                            cmp r0, #0
0007dcc2  f6 d1                                            bne #0x7dcb2
0007dcc4  29 20                                            movs r0, #0x29
0007dcc6  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007dcca  32 f0 7d bf                                      b.w #0xb0bc8
0007dcce  00 bf                                            nop
0007dcd0  20 25                                            movs r5, #0x20
0007dcd2  73 20                                            movs r0, #0x73
0007dcd4  28 00                                            movs r0, r5
0007dcd6  00 00                                            movs r0, r0

; FUNCTION 0x0007dcd8, declared_size=60, range_size=60, mode=thumb
; class-group: ast_function
; alias: _ZN12ast_functionC1Ev
; demangled: ast_function::ast_function()
; alias: _ZN12ast_functionC2Ev
; demangled: ast_function::ast_function()
; decoder-mode: thumb
0007dcd8  d0 b5                                            push {r4, r6, r7, lr}
0007dcda  02 af                                            add r7, sp, #8
0007dcdc  04 46                                            mov r4, r0
0007dcde  20 1d                                            adds r0, r4, #4
0007dce0  14 21                                            movs r1, #0x14
0007dce2  b4 f7 be ec                                      blx #0x32660
0007dce6  0a 48                                            ldr r0, [pc, #0x28]
0007dce8  00 21                                            movs r1, #0
0007dcea  22 46                                            mov r2, r4
0007dcec  c4 e9 08 11                                      strd r1, r1, [r4, #0x20]
0007dcf0  78 44                                            add r0, pc
0007dcf2  42 f8 2c 1f                                      str r1, [r2, #0x2c]!
0007dcf6  a2 62                                            str r2, [r4, #0x28]
0007dcf8  04 f1 28 02                                      add.w r2, r4, #0x28
0007dcfc  00 68                                            ldr r0, [r0]
0007dcfe  22 63                                            str r2, [r4, #0x30]
0007dd00  08 30                                            adds r0, #8
0007dd02  a1 63                                            str r1, [r4, #0x38]
0007dd04  84 f8 34 10                                      strb.w r1, [r4, #0x34]
0007dd08  20 60                                            str r0, [r4]
0007dd0a  20 46                                            mov r0, r4
0007dd0c  d0 bd                                            pop {r4, r6, r7, pc}
0007dd0e  00 bf                                            nop
0007dd10  28 ec 05 00                                      stc p0, c0, [r8], #-0x14
