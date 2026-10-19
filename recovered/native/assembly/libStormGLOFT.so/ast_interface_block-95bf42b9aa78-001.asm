; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00058b30, declared_size=2056, range_size=2056, mode=thumb
; class-group: ast_interface_block
; alias: _ZN19ast_interface_block3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_interface_block::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00058b30  f0 b5                                            push {r4, r5, r6, r7, lr}
00058b32  03 af                                            add r7, sp, #0xc
00058b34  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00058b38  a3 b0                                            sub sp, #0x8c
00058b3a  8b 46                                            mov fp, r1
00058b3c  df f8 04 17                                      ldr.w r1, [pc, #0x704]
00058b40  0e 92                                            str r2, [sp, #0x38]
00058b42  00 f1 0c 06                                      add.w r6, r0, #0xc
00058b46  79 44                                            add r1, pc
00058b48  0d f1 4c 0c                                      add.w ip, sp, #0x4c
00058b4c  4f f0 01 08                                      mov.w r8, #1
00058b50  4f f0 01 09                                      mov.w sb, #1
00058b54  09 68                                            ldr r1, [r1]
00058b56  09 68                                            ldr r1, [r1]
00058b58  22 91                                            str r1, [sp, #0x88]
00058b5a  d0 e9 01 51                                      ldrd r5, r1, [r0, #4]
00058b5e  4c ce                                            ldm r6, {r2, r3, r6}
00058b60  17 95                                            str r5, [sp, #0x5c]
00058b62  8c e8 4e 00                                      stm.w ip, {r1, r2, r3, r6}
00058b66  0d 90                                            str r0, [sp, #0x34]
00058b68  06 6a                                            ldr r6, [r0, #0x20]
00058b6a  02 20                                            movs r0, #2
00058b6c  16 f0 80 7f                                      tst.w r6, #0x1000000
00058b70  08 bf                                            it eq
00058b72  00 ea 16 68                                      andeq.w r8, r0, r6, lsr #24
00058b76  16 f0 20 0f                                      tst.w r6, #0x20
00058b7a  0e d1                                            bne #0x58b9a
00058b7c  70 06                                            lsls r0, r6, #0x19
00058b7e  12 d4                                            bmi #0x58ba6
00058b80  df f8 cc 06                                      ldr.w r0, [pc, #0x6cc]
00058b84  0f f2 cc 61                                      addw r1, pc, #0x6cc
00058b88  16 f4 00 7f                                      tst.w r6, #0x200
00058b8c  78 44                                            add r0, pc
00058b8e  18 bf                                            it ne
00058b90  01 46                                            movne r1, r0
00058b92  08 91                                            str r1, [sp, #0x20]
00058b94  c6 f3 40 2a                                      ubfx sl, r6, #9, #1
00058b98  0a e0                                            b #0x58bb0
00058b9a  0f f2 ac 60                                      addw r0, pc, #0x6ac
00058b9e  08 90                                            str r0, [sp, #0x20]
00058ba0  4f f0 02 0a                                      mov.w sl, #2
00058ba4  04 e0                                            b #0x58bb0
00058ba6  0f f2 a4 60                                      addw r0, pc, #0x6a4
00058baa  4f f0 03 0a                                      mov.w sl, #3
00058bae  08 90                                            str r0, [sp, #0x20]
00058bb0  0d 9c                                            ldr r4, [sp, #0x34]
00058bb2  0f f2 a8 61                                      addw r1, pc, #0x6a8
00058bb6  20 6e                                            ldr r0, [r4, #0x60]
00058bb8  d9 f7 c2 e9                                      blx #0x31f40
00058bbc  0e 9b                                            ldr r3, [sp, #0x38]
00058bbe  05 46                                            mov r5, r0
00058bc0  00 21                                            movs r1, #0
00058bc2  10 a8                                            add r0, sp, #0x40
00058bc4  11 91                                            str r1, [sp, #0x44]
00058bc6  02 1d                                            adds r2, r0, #4
00058bc8  10 92                                            str r2, [sp, #0x40]
00058bca  00 2d                                            cmp r5, #0
00058bcc  12 90                                            str r0, [sp, #0x48]
00058bce  d3 f8 8c 20                                      ldr.w r2, [r3, #0x8c]
00058bd2  02 f1 01 02                                      add.w r2, r2, #1
00058bd6  c3 f8 8c 20                                      str.w r2, [r3, #0x8c]
00058bda  cd f8 10 a0                                      str.w sl, [sp, #0x10]
00058bde  08 bf                                            it eq
00058be0  01 21                                            moveq r1, #1
00058be2  03 91                                            str r1, [sp, #0xc]
00058be4  c6 f3 80 61                                      ubfx r1, r6, #0x1a, #1
00058be8  02 22                                            movs r2, #2
00058bea  16 f0 00 6f                                      tst.w r6, #0x8000000
00058bee  08 bf                                            it eq
00058bf0  0a 46                                            moveq r2, r1
00058bf2  1e 46                                            mov r6, r3
00058bf4  0a 92                                            str r2, [sp, #0x28]
00058bf6  0f a9                                            add r1, sp, #0x3c
00058bf8  cd e9 01 92                                      strd sb, r2, [sp, #4]
00058bfc  04 f1 68 02                                      add.w r2, r4, #0x68
00058c00  13 ab                                            add r3, sp, #0x4c
00058c02  00 91                                            str r1, [sp]
00058c04  31 46                                            mov r1, r6
00058c06  da f7 3a e9                                      blx #0x32e7c
00058c0a  81 46                                            mov sb, r0
00058c0c  d6 f8 8c 00                                      ldr.w r0, [r6, #0x8c]
00058c10  00 2d                                            cmp r5, #0
00058c12  a0 f1 01 00                                      sub.w r0, r0, #1
00058c16  c6 f8 8c 00                                      str.w r0, [r6, #0x8c]
00058c1a  0c 95                                            str r5, [sp, #0x30]
00058c1c  52 d0                                            beq #0x58cc4
00058c1e  13 ae                                            add r6, sp, #0x4c
00058c20  4e ce                                            ldm r6, {r1, r2, r3, r6}
00058c22  20 6e                                            ldr r0, [r4, #0x60]
00058c24  00 96                                            str r6, [sp]
00058c26  0e 9e                                            ldr r6, [sp, #0x38]
00058c28  17 9d                                            ldr r5, [sp, #0x5c]
00058c2a  cd e9 01 56                                      strd r5, r6, [sp, #4]
00058c2e  da f7 96 e8                                      blx #0x32d5c
00058c32  00 20                                            movs r0, #0
00058c34  06 90                                            str r0, [sp, #0x18]
00058c36  0f 9d                                            ldr r5, [sp, #0x3c]
00058c38  49 46                                            mov r1, sb
00058c3a  23 6e                                            ldr r3, [r4, #0x60]
00058c3c  42 46                                            mov r2, r8
00058c3e  28 46                                            mov r0, r5
00058c40  da f7 34 e9                                      blx #0x32eac
00058c44  02 46                                            mov r2, r0
00058c46  70 69                                            ldr r0, [r6, #0x14]
00058c48  d1 68                                            ldr r1, [r2, #0xc]
00058c4a  13 46                                            mov r3, r2
00058c4c  0b 93                                            str r3, [sp, #0x2c]
00058c4e  53 46                                            mov r3, sl
00058c50  da f7 32 e9                                      blx #0x32eb8
00058c54  00 28                                            cmp r0, #0
00058c56  a0 46                                            mov r8, r4
00058c58  11 d1                                            bne #0x58c7e
00058c5a  08 f1 04 06                                      add.w r6, r8, #4
00058c5e  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
00058c60  1c 90                                            str r0, [sp, #0x70]
00058c62  18 a8                                            add r0, sp, #0x60
00058c64  4e c0                                            stm r0!, {r1, r2, r3, r6}
00058c66  df f8 98 26                                      ldr.w r2, [pc, #0x698]
00058c6a  0e 9e                                            ldr r6, [sp, #0x38]
00058c6c  d8 f8 60 30                                      ldr.w r3, [r8, #0x60]
00058c70  7a 44                                            add r2, pc
00058c72  08 98                                            ldr r0, [sp, #0x20]
00058c74  00 90                                            str r0, [sp]
00058c76  18 a8                                            add r0, sp, #0x60
00058c78  31 46                                            mov r1, r6
00058c7a  d9 f7 1e ee                                      blx #0x328b8
00058c7e  d6 f8 88 00                                      ldr.w r0, [r6, #0x88]
00058c82  01 28                                            cmp r0, #1
00058c84  0d d1                                            bne #0x58ca2
00058c86  ba f1 02 0f                                      cmp.w sl, #2
00058c8a  04 bf                                            itt eq
00058c8c  d8 f8 74 00                                      ldreq.w r0, [r8, #0x74]
00058c90  00 28                                            cmpeq r0, #0
00058c92  06 d1                                            bne #0x58ca2
00058c94  df f8 6c 26                                      ldr.w r2, [pc, #0x66c]
00058c98  13 a8                                            add r0, sp, #0x4c
00058c9a  31 46                                            mov r1, r6
00058c9c  7a 44                                            add r2, pc
00058c9e  d9 f7 0c ee                                      blx #0x328b8
00058ca2  d8 f8 64 00                                      ldr.w r0, [r8, #0x64]
00058ca6  00 b3                                            cbz r0, #0x58cea
00058ca8  0c 99                                            ldr r1, [sp, #0x30]
00058caa  00 29                                            cmp r1, #0
00058cac  00 f0 4a 81                                      beq.w #0x58f44
00058cb0  13 ae                                            add r6, sp, #0x4c
00058cb2  4e ce                                            ldm r6, {r1, r2, r3, r6}
00058cb4  00 96                                            str r6, [sp]
00058cb6  0e 9e                                            ldr r6, [sp, #0x38]
00058cb8  17 9d                                            ldr r5, [sp, #0x5c]
00058cba  cd e9 01 56                                      strd r5, r6, [sp, #4]
00058cbe  da f7 4e e8                                      blx #0x32d5c
00058cc2  59 e1                                            b #0x58f78
00058cc4  0a f0 03 00                                      and r0, sl, #3
00058cc8  03 28                                            cmp r0, #3
00058cca  00 f0 03 82                                      beq.w #0x590d4
00058cce  02 28                                            cmp r0, #2
00058cd0  40 f0 08 82                                      bne.w #0x590e4
00058cd4  df f8 dc 15                                      ldr.w r1, [pc, #0x5dc]
00058cd8  70 69                                            ldr r0, [r6, #0x14]
00058cda  79 44                                            add r1, pc
00058cdc  d9 f7 d6 ee                                      blx #0x32a8c
00058ce0  00 28                                            cmp r0, #0
00058ce2  00 f0 06 82                                      beq.w #0x590f2
00058ce6  04 6c                                            ldr r4, [r0, #0x40]
00058ce8  0f e2                                            b #0x5910a
00058cea  b9 f1 00 0f                                      cmp.w sb, #0
00058cee  cd f8 24 a0                                      str.w sl, [sp, #0x24]
00058cf2  cd f8 14 b0                                      str.w fp, [sp, #0x14]
00058cf6  00 f0 d9 80                                      beq.w #0x58eac
00058cfa  0a 98                                            ldr r0, [sp, #0x28]
00058cfc  05 f1 10 0b                                      add.w fp, r5, #0x10
00058d00  00 28                                            cmp r0, #0
00058d02  08 bf                                            it eq
00058d04  01 20                                            moveq r0, #1
00058d06  0a 90                                            str r0, [sp, #0x28]
00058d08  05 98                                            ldr r0, [sp, #0x14]
00058d0a  0d 9c                                            ldr r4, [sp, #0x34]
00058d0c  04 30                                            adds r0, #4
00058d0e  07 90                                            str r0, [sp, #0x1c]
00058d10  df f8 04 06                                      ldr.w r0, [pc, #0x604]
00058d14  78 44                                            add r0, pc
00058d16  00 68                                            ldr r0, [r0]
00058d18  08 90                                            str r0, [sp, #0x20]
00058d1a  1e e0                                            b #0x58d5a
00058d1c  00 28                                            cmp r0, #0
00058d1e  00 f0 b8 80                                      beq.w #0x58e92
00058d22  99 78                                            ldrb r1, [r3, #2]
00058d24  5f 29                                            cmp r1, #0x5f
00058d26  40 f0 b4 80                                      bne.w #0x58e92
00058d2a  01 46                                            mov r1, r0
00058d2c  51 f8 18 2f                                      ldr r2, [r1, #0x18]!
00058d30  12 f4 c0 7f                                      tst.w r2, #0x180
00058d34  09 d0                                            beq #0x58d4a
00058d36  01 25                                            movs r5, #1
00058d38  0b 79                                            ldrb r3, [r1, #4]
00058d3a  65 f3 c8 12                                      bfi r2, r5, #7, #2
00058d3e  0a 60                                            str r2, [r1]
00058d40  0b 71                                            strb r3, [r1, #4]
00058d42  0b 99                                            ldr r1, [sp, #0x2c]
00058d44  da f7 be e8                                      blx #0x32ec4
00058d48  aa e0                                            b #0x58ea0
00058d4a  df f8 e0 25                                      ldr.w r2, [pc, #0x5e0]
00058d4e  13 a8                                            add r0, sp, #0x4c
00058d50  31 46                                            mov r1, r6
00058d52  7a 44                                            add r2, pc
00058d54  d9 f7 b0 ed                                      blx #0x328b8
00058d58  a2 e0                                            b #0x58ea0
00058d5a  30 46                                            mov r0, r6
00058d5c  44 21                                            movs r1, #0x44
00058d5e  d9 f7 e0 ec                                      blx #0x32720
00058d62  08 99                                            ldr r1, [sp, #0x20]
00058d64  82 46                                            mov sl, r0
00058d66  d9 f7 cc ed                                      blx #0x32900
00058d6a  5b e9 04 81                                      ldrd r8, r1, [fp, #-0x10]
00058d6e  30 46                                            mov r0, r6
00058d70  d9 f7 70 ec                                      blx #0x32654
00058d74  09 9b                                            ldr r3, [sp, #0x24]
00058d76  02 46                                            mov r2, r0
00058d78  5b f8 08 0c                                      ldr r0, [fp, #-0x8]
00058d7c  41 46                                            mov r1, r8
00058d7e  00 90                                            str r0, [sp]
00058d80  50 46                                            mov r0, sl
00058d82  d9 f7 fa ed                                      blx #0x32978
00058d86  55 46                                            mov r5, sl
00058d88  9b f8 00 20                                      ldrb.w r2, [fp]
00058d8c  55 f8 18 0f                                      ldr r0, [r5, #0x18]!
00058d90  02 f0 03 02                                      and r2, r2, #3
00058d94  9a f8 1c 10                                      ldrb.w r1, [sl, #0x1c]
00058d98  20 f4 c0 40                                      bic r0, r0, #0x6000
00058d9c  8a f8 1c 10                                      strb.w r1, [sl, #0x1c]
00058da0  40 ea 42 30                                      orr.w r0, r0, r2, lsl #13
00058da4  28 60                                            str r0, [r5]
00058da6  9b f8 00 20                                      ldrb.w r2, [fp]
00058daa  8a f8 1c 10                                      strb.w r1, [sl, #0x1c]
00058dae  92 08                                            lsrs r2, r2, #2
00058db0  62 f3 41 00                                      bfi r0, r2, #1, #1
00058db4  28 60                                            str r0, [r5]
00058db6  9b f8 00 20                                      ldrb.w r2, [fp]
00058dba  8a f8 1c 10                                      strb.w r1, [sl, #0x1c]
00058dbe  d1 08                                            lsrs r1, r2, #3
00058dc0  61 f3 82 00                                      bfi r0, r1, #2, #1
00058dc4  28 60                                            str r0, [r5]
00058dc6  0b 99                                            ldr r1, [sp, #0x2c]
00058dc8  50 46                                            mov r0, sl
00058dca  da f7 82 e8                                      blx #0x32ed0
00058dce  9b f8 00 00                                      ldrb.w r0, [fp]
00058dd2  03 22                                            movs r2, #3
00058dd4  29 68                                            ldr r1, [r5]
00058dd6  12 ea 10 1f                                      tst.w r2, r0, lsr #4
00058dda  0a 9a                                            ldr r2, [sp, #0x28]
00058ddc  18 bf                                            it ne
00058dde  02 09                                            lsrne r2, r0, #4
00058de0  62 f3 9b 61                                      bfi r1, r2, #0x1a, #2
00058de4  29 60                                            str r1, [r5]
00058de6  db f8 04 00                                      ldr.w r0, [fp, #4]
00058dea  41 1c                                            adds r1, r0, #1
00058dec  1c bf                                            itt ne
00058dee  e1 6b                                            ldrne r1, [r4, #0x3c]
00058df0  88 42                                            cmpne r0, r1
00058df2  0a d0                                            beq #0x58e0a
00058df4  df f8 3c 25                                      ldr.w r2, [pc, #0x53c]
00058df8  da f8 14 30                                      ldr.w r3, [sl, #0x14]
00058dfc  cd e9 00 01                                      strd r0, r1, [sp]
00058e00  13 a8                                            add r0, sp, #0x4c
00058e02  7a 44                                            add r2, pc
00058e04  31 46                                            mov r1, r6
00058e06  d9 f7 58 ed                                      blx #0x328b8
00058e0a  e0 6b                                            ldr r0, [r4, #0x3c]
00058e0c  ca f8 28 00                                      str.w r0, [sl, #0x28]
00058e10  0c 98                                            ldr r0, [sp, #0x30]
00058e12  38 b3                                            cbz r0, #0x58e64
00058e14  da f8 14 10                                      ldr.w r1, [sl, #0x14]
00058e18  70 69                                            ldr r0, [r6, #0x14]
00058e1a  d9 f7 38 ee                                      blx #0x32a8c
00058e1e  40 b1                                            cbz r0, #0x58e32
00058e20  df f8 0c 25                                      ldr.w r2, [pc, #0x50c]
00058e24  13 a8                                            add r0, sp, #0x4c
00058e26  da f8 14 30                                      ldr.w r3, [sl, #0x14]
00058e2a  31 46                                            mov r1, r6
00058e2c  7a 44                                            add r2, pc
00058e2e  d9 f7 44 ed                                      blx #0x328b8
00058e32  20 6a                                            ldr r0, [r4, #0x20]
00058e34  29 68                                            ldr r1, [r5]
00058e36  c0 f3 4a 40                                      ubfx r0, r0, #0x11, #0xb
00058e3a  60 f3 55 51                                      bfi r1, r0, #0x15, #1
00058e3e  29 60                                            str r1, [r5]
00058e40  60 6c                                            ldr r0, [r4, #0x44]
00058e42  51 46                                            mov r1, sl
00058e44  aa f8 22 00                                      strh.w r0, [sl, #0x22]
00058e48  70 69                                            ldr r0, [r6, #0x14]
00058e4a  d9 f7 8e ef                                      blx #0x32d68
00058e4e  07 99                                            ldr r1, [sp, #0x1c]
00058e50  4a f8 04 1f                                      str r1, [sl, #4]!
00058e54  48 68                                            ldr r0, [r1, #4]
00058e56  ca f8 04 00                                      str.w r0, [sl, #4]
00058e5a  c0 f8 00 a0                                      str.w sl, [r0]
00058e5e  c1 f8 04 a0                                      str.w sl, [r1, #4]
00058e62  1d e0                                            b #0x58ea0
00058e64  13 ab                                            add r3, sp, #0x4c
00058e66  0e cb                                            ldm r3, {r1, r2, r3}
00058e68  dd e9 16 06                                      ldrd r0, r6, [sp, #0x58]
00058e6c  cd e9 00 06                                      strd r0, r6, [sp]
00058e70  01 20                                            movs r0, #1
00058e72  0e 9e                                            ldr r6, [sp, #0x38]
00058e74  02 96                                            str r6, [sp, #8]
00058e76  03 90                                            str r0, [sp, #0xc]
00058e78  50 46                                            mov r0, sl
00058e7a  fd f7 af fa                                      bl #0x563dc
00058e7e  da f8 14 30                                      ldr.w r3, [sl, #0x14]
00058e82  33 b1                                            cbz r3, #0x58e92
00058e84  19 78                                            ldrb r1, [r3]
00058e86  67 29                                            cmp r1, #0x67
00058e88  04 bf                                            itt eq
00058e8a  59 78                                            ldrbeq r1, [r3, #1]
00058e8c  6c 29                                            cmpeq r1, #0x6c
00058e8e  3f f4 45 af                                      beq.w #0x58d1c
00058e92  df f8 94 24                                      ldr.w r2, [pc, #0x494]
00058e96  13 a8                                            add r0, sp, #0x4c
00058e98  31 46                                            mov r1, r6
00058e9a  7a 44                                            add r2, pc
00058e9c  d9 f7 0c ed                                      blx #0x328b8
00058ea0  0b f1 18 0b                                      add.w fp, fp, #0x18
00058ea4  b9 f1 01 09                                      subs.w sb, sb, #1
00058ea8  7f f4 57 af                                      bne.w #0x58d5a
00058eac  06 9a                                            ldr r2, [sp, #0x18]
00058eae  0b 98                                            ldr r0, [sp, #0x2c]
00058eb0  09 9e                                            ldr r6, [sp, #0x24]
00058eb2  90 42                                            cmp r0, r2
00058eb4  05 98                                            ldr r0, [sp, #0x14]
00058eb6  00 f0 b6 81                                      beq.w #0x59226
00058eba  0c 99                                            ldr r1, [sp, #0x30]
00058ebc  00 29                                            cmp r1, #0
00058ebe  40 f0 b2 81                                      bne.w #0x59226
00058ec2  05 68                                            ldr r5, [r0]
00058ec4  00 2d                                            cmp r5, #0
00058ec6  18 bf                                            it ne
00058ec8  04 3d                                            subne r5, #4
00058eca  68 68                                            ldr r0, [r5, #4]
00058ecc  00 28                                            cmp r0, #0
00058ece  00 f0 aa 81                                      beq.w #0x59226
00058ed2  04 38                                            subs r0, #4
00058ed4  00 f0 a7 81                                      beq.w #0x59226
00058ed8  df f8 40 84                                      ldr.w r8, [pc, #0x440]
00058edc  0d f1 4c 09                                      add.w sb, sp, #0x4c
00058ee0  4f f0 00 0a                                      mov.w sl, #0
00058ee4  f8 44                                            add r8, pc
00058ee6  1d e0                                            b #0x58f24
00058ee8  a0 69                                            ldr r0, [r4, #0x18]
00058eea  c0 f3 43 21                                      ubfx r1, r0, #9, #4
00058eee  b1 42                                            cmp r1, r6
00058ef0  21 d1                                            bne #0x58f36
00058ef2  10 f4 c0 7f                                      tst.w r0, #0x180
00058ef6  05 d1                                            bne #0x58f04
00058ef8  63 69                                            ldr r3, [r4, #0x14]
00058efa  48 46                                            mov r0, sb
00058efc  0e 99                                            ldr r1, [sp, #0x38]
00058efe  42 46                                            mov r2, r8
00058f00  d9 f7 da ec                                      blx #0x328b8
00058f04  0e 98                                            ldr r0, [sp, #0x38]
00058f06  61 69                                            ldr r1, [r4, #0x14]
00058f08  40 69                                            ldr r0, [r0, #0x14]
00058f0a  d9 f7 98 ee                                      blx #0x32c3c
00058f0e  60 68                                            ldr r0, [r4, #4]
00058f10  a1 68                                            ldr r1, [r4, #8]
00058f12  41 60                                            str r1, [r0, #4]
00058f14  a1 68                                            ldr r1, [r4, #8]
00058f16  08 60                                            str r0, [r1]
00058f18  c4 f8 08 a0                                      str.w sl, [r4, #8]
00058f1c  c4 f8 04 a0                                      str.w sl, [r4, #4]
00058f20  06 9a                                            ldr r2, [sp, #0x18]
00058f22  08 e0                                            b #0x58f36
00058f24  2c 46                                            mov r4, r5
00058f26  05 46                                            mov r5, r0
00058f28  2c b1                                            cbz r4, #0x58f36
00058f2a  e0 68                                            ldr r0, [r4, #0xc]
00058f2c  07 28                                            cmp r0, #7
00058f2e  04 bf                                            itt eq
00058f30  20 6c                                            ldreq r0, [r4, #0x40]
00058f32  90 42                                            cmpeq r0, r2
00058f34  d8 d0                                            beq #0x58ee8
00058f36  68 68                                            ldr r0, [r5, #4]
00058f38  00 28                                            cmp r0, #0
00058f3a  18 bf                                            it ne
00058f3c  04 38                                            subne r0, #4
00058f3e  00 28                                            cmp r0, #0
00058f40  f0 d1                                            bne #0x58f24
00058f42  70 e1                                            b #0x59226
00058f44  b9 f1 00 0f                                      cmp.w sb, #0
00058f48  16 d0                                            beq #0x58f78
00058f4a  04 35                                            adds r5, #4
00058f4c  55 f8 04 1c                                      ldr r1, [r5, #-0x4]
00058f50  48 68                                            ldr r0, [r1, #4]
00058f52  09 28                                            cmp r0, #9
00058f54  0c d1                                            bne #0x58f70
00058f56  13 ae                                            add r6, sp, #0x4c
00058f58  4c ce                                            ldm r6, {r2, r3, r6}
00058f5a  dd e9 16 4c                                      ldrd r4, ip, [sp, #0x58]
00058f5e  28 68                                            ldr r0, [r5]
00058f60  09 69                                            ldr r1, [r1, #0x10]
00058f62  00 96                                            str r6, [sp]
00058f64  0e 9e                                            ldr r6, [sp, #0x38]
00058f66  cd e9 01 4c                                      strd r4, ip, [sp, #4]
00058f6a  03 96                                            str r6, [sp, #0xc]
00058f6c  d9 f7 c2 ec                                      blx #0x328f4
00058f70  18 35                                            adds r5, #0x18
00058f72  b9 f1 01 09                                      subs.w sb, sb, #1
00058f76  e9 d1                                            bne #0x58f4c
00058f78  d8 f8 74 20                                      ldr.w r2, [r8, #0x74]
00058f7c  5a b3                                            cbz r2, #0x58fd6
00058f7e  92 f8 20 00                                      ldrb.w r0, [r2, #0x20]
00058f82  78 b1                                            cbz r0, #0x58fa4
00058f84  d6 f8 88 00                                      ldr.w r0, [r6, #0x88]
00058f88  01 28                                            cmp r0, #1
00058f8a  03 d1                                            bne #0x58f94
00058f8c  98 f8 20 00                                      ldrb.w r0, [r8, #0x20]
00058f90  80 06                                            lsls r0, r0, #0x1a
00058f92  07 d4                                            bmi #0x58fa4
00058f94  dc 4a                                            ldr r2, [pc, #0x370]
00058f96  13 a8                                            add r0, sp, #0x4c
00058f98  31 46                                            mov r1, r6
00058f9a  7a 44                                            add r2, pc
00058f9c  d9 f7 8c ec                                      blx #0x328b8
00058fa0  d8 f8 74 20                                      ldr.w r2, [r8, #0x74]
00058fa4  0b 99                                            ldr r1, [sp, #0x2c]
00058fa6  13 a8                                            add r0, sp, #0x4c
00058fa8  33 46                                            mov r3, r6
00058faa  fb f7 49 fc                                      bl #0x54840
00058fae  06 46                                            mov r6, r0
00058fb0  0e 98                                            ldr r0, [sp, #0x38]
00058fb2  44 21                                            movs r1, #0x44
00058fb4  d9 f7 b4 eb                                      blx #0x32720
00058fb8  81 46                                            mov sb, r0
00058fba  d4 48                                            ldr r0, [pc, #0x350]
00058fbc  78 44                                            add r0, pc
00058fbe  01 68                                            ldr r1, [r0]
00058fc0  48 46                                            mov r0, sb
00058fc2  d9 f7 9e ec                                      blx #0x32900
00058fc6  03 20                                            movs r0, #3
00058fc8  d8 f8 64 20                                      ldr.w r2, [r8, #0x64]
00058fcc  00 90                                            str r0, [sp]
00058fce  31 46                                            mov r1, r6
00058fd0  48 46                                            mov r0, sb
00058fd2  0e 9e                                            ldr r6, [sp, #0x38]
00058fd4  10 e0                                            b #0x58ff8
00058fd6  30 46                                            mov r0, r6
00058fd8  44 21                                            movs r1, #0x44
00058fda  d9 f7 a2 eb                                      blx #0x32720
00058fde  81 46                                            mov sb, r0
00058fe0  cb 48                                            ldr r0, [pc, #0x32c]
00058fe2  78 44                                            add r0, pc
00058fe4  01 68                                            ldr r1, [r0]
00058fe6  48 46                                            mov r0, sb
00058fe8  d9 f7 8a ec                                      blx #0x32900
00058fec  d8 f8 64 20                                      ldr.w r2, [r8, #0x64]
00058ff0  03 20                                            movs r0, #3
00058ff2  0b 99                                            ldr r1, [sp, #0x2c]
00058ff4  00 90                                            str r0, [sp]
00058ff6  48 46                                            mov r0, sb
00058ff8  53 46                                            mov r3, sl
00058ffa  d9 f7 be ec                                      blx #0x32978
00058ffe  0a 9a                                            ldr r2, [sp, #0x28]
00059000  4c 46                                            mov r4, sb
00059002  54 f8 18 0f                                      ldr r0, [r4, #0x18]!
00059006  00 2a                                            cmp r2, #0
00059008  4f ea 82 61                                      lsl.w r1, r2, #0x1a
0005900c  20 f0 40 60                                      bic r0, r0, #0xc000000
00059010  08 bf                                            it eq
00059012  4f f0 80 61                                      moveq.w r1, #0x4000000
00059016  ba f1 02 0f                                      cmp.w sl, #2
0005901a  40 ea 01 00                                      orr.w r0, r0, r1
0005901e  20 60                                            str r0, [r4]
00059020  04 bf                                            itt eq
00059022  d6 f8 88 00                                      ldreq.w r0, [r6, #0x88]
00059026  01 28                                            cmpeq r0, #1
00059028  0b d1                                            bne #0x59042
0005902a  13 ab                                            add r3, sp, #0x4c
0005902c  0e cb                                            ldm r3, {r1, r2, r3}
0005902e  dd e9 16 06                                      ldrd r0, r6, [sp, #0x58]
00059032  cd e9 00 06                                      strd r0, r6, [sp]
00059036  0e 9e                                            ldr r6, [sp, #0x38]
00059038  cd f8 08 90                                      str.w sb, [sp, #8]
0005903c  30 46                                            mov r0, r6
0005903e  fd f7 73 f9                                      bl #0x56328
00059042  d8 f8 64 10                                      ldr.w r1, [r8, #0x64]
00059046  70 69                                            ldr r0, [r6, #0x14]
00059048  d9 f7 20 ed                                      blx #0x32a8c
0005904c  32 46                                            mov r2, r6
0005904e  06 46                                            mov r6, r0
00059050  f6 b1                                            cbz r6, #0x59090
00059052  0c 98                                            ldr r0, [sp, #0x30]
00059054  38 b1                                            cbz r0, #0x59066
00059056  af 4a                                            ldr r2, [pc, #0x2bc]
00059058  13 a8                                            add r0, sp, #0x4c
0005905a  d8 f8 64 30                                      ldr.w r3, [r8, #0x64]
0005905e  0e 99                                            ldr r1, [sp, #0x38]
00059060  7a 44                                            add r2, pc
00059062  d9 f7 2a ec                                      blx #0x328b8
00059066  b0 69                                            ldr r0, [r6, #0x18]
00059068  20 f4 c0 70                                      bic r0, r0, #0x180
0005906c  b0 61                                            str r0, [r6, #0x18]
0005906e  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
00059072  30 61                                            str r0, [r6, #0x10]
00059074  30 46                                            mov r0, r6
00059076  0b 99                                            ldr r1, [sp, #0x2c]
00059078  d9 f7 24 ef                                      blx #0x32ec4
0005907c  b9 f1 00 0f                                      cmp.w sb, #0
00059080  00 f0 d1 80                                      beq.w #0x59226
00059084  d9 f8 00 00                                      ldr.w r0, [sb]
00059088  41 68                                            ldr r1, [r0, #4]
0005908a  48 46                                            mov r0, sb
0005908c  88 47                                            blx r1
0005908e  ca e0                                            b #0x59226
00059090  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
00059094  21 68                                            ldr r1, [r4]
00059096  c0 f3 4a 40                                      ubfx r0, r0, #0x11, #0xb
0005909a  60 f3 55 51                                      bfi r1, r0, #0x15, #1
0005909e  21 60                                            str r1, [r4]
000590a0  d8 f8 44 00                                      ldr.w r0, [r8, #0x44]
000590a4  49 46                                            mov r1, sb
000590a6  a9 f8 22 00                                      strh.w r0, [sb, #0x22]
000590aa  50 69                                            ldr r0, [r2, #0x14]
000590ac  d9 f7 5c ee                                      blx #0x32d68
000590b0  b9 f1 00 0f                                      cmp.w sb, #0
000590b4  18 bf                                            it ne
000590b6  09 f1 04 09                                      addne.w sb, sb, #4
000590ba  0b f1 04 00                                      add.w r0, fp, #4
000590be  c9 f8 00 00                                      str.w r0, [sb]
000590c2  db f8 08 00                                      ldr.w r0, [fp, #8]
000590c6  c9 f8 04 00                                      str.w r0, [sb, #4]
000590ca  c0 f8 00 90                                      str.w sb, [r0]
000590ce  cb f8 08 90                                      str.w sb, [fp, #8]
000590d2  a8 e0                                            b #0x59226
000590d4  65 49                                            ldr r1, [pc, #0x194]
000590d6  70 69                                            ldr r0, [r6, #0x14]
000590d8  79 44                                            add r1, pc
000590da  d9 f7 d8 ec                                      blx #0x32a8c
000590de  18 b3                                            cbz r0, #0x59128
000590e0  03 6c                                            ldr r3, [r0, #0x40]
000590e2  2d e0                                            b #0x59140
000590e4  8e 4a                                            ldr r2, [pc, #0x238]
000590e6  13 a8                                            add r0, sp, #0x4c
000590e8  31 46                                            mov r1, r6
000590ea  7a 44                                            add r2, pc
000590ec  d9 f7 e4 eb                                      blx #0x328b8
000590f0  99 e0                                            b #0x59226
000590f2  d6 f8 88 00                                      ldr.w r0, [r6, #0x88]
000590f6  d9 f7 fc ed                                      blx #0x32cf0
000590fa  6f 4a                                            ldr r2, [pc, #0x1bc]
000590fc  03 46                                            mov r3, r0
000590fe  13 a8                                            add r0, sp, #0x4c
00059100  31 46                                            mov r1, r6
00059102  7a 44                                            add r2, pc
00059104  d9 f7 d8 eb                                      blx #0x328b8
00059108  00 24                                            movs r4, #0
0005910a  0d 98                                            ldr r0, [sp, #0x34]
0005910c  40 6e                                            ldr r0, [r0, #0x64]
0005910e  38 b1                                            cbz r0, #0x59120
00059110  6a 49                                            ldr r1, [pc, #0x1a8]
00059112  79 44                                            add r1, pc
00059114  d8 f7 14 ef                                      blx #0x31f40
00059118  10 b9                                            cbnz r0, #0x59120
0005911a  0d 98                                            ldr r0, [sp, #0x34]
0005911c  40 6f                                            ldr r0, [r0, #0x74]
0005911e  c0 b9                                            cbnz r0, #0x59152
00059120  13 a8                                            add r0, sp, #0x4c
00059122  67 a2                                            adr r2, #0x19c
00059124  31 46                                            mov r1, r6
00059126  12 e0                                            b #0x5914e
00059128  d6 f8 88 00                                      ldr.w r0, [r6, #0x88]
0005912c  d9 f7 e0 ed                                      blx #0x32cf0
00059130  4f 4a                                            ldr r2, [pc, #0x13c]
00059132  03 46                                            mov r3, r0
00059134  13 a8                                            add r0, sp, #0x4c
00059136  31 46                                            mov r1, r6
00059138  7a 44                                            add r2, pc
0005913a  d9 f7 be eb                                      blx #0x328b8
0005913e  00 23                                            movs r3, #0
00059140  0d 98                                            ldr r0, [sp, #0x34]
00059142  40 6e                                            ldr r0, [r0, #0x64]
00059144  30 b1                                            cbz r0, #0x59154
00059146  13 a8                                            add r0, sp, #0x4c
00059148  4a a2                                            adr r2, #0x128
0005914a  31 46                                            mov r1, r6
0005914c  1c 46                                            mov r4, r3
0005914e  d9 f7 b4 eb                                      blx #0x328b8
00059152  23 46                                            mov r3, r4
00059154  00 2b                                            cmp r3, #0
00059156  66 d0                                            beq #0x59226
00059158  b9 f1 00 0f                                      cmp.w sb, #0
0005915c  cd f8 14 b0                                      str.w fp, [sp, #0x14]
00059160  cd f8 24 a0                                      str.w sl, [sp, #0x24]
00059164  3b d0                                            beq #0x591de
00059166  63 4c                                            ldr r4, [pc, #0x18c]
00059168  0d f1 4c 0a                                      add.w sl, sp, #0x4c
0005916c  0f 98                                            ldr r0, [sp, #0x3c]
0005916e  4e 46                                            mov r6, sb
00059170  7c 44                                            add r4, pc
00059172  00 f1 10 05                                      add.w r5, r0, #0x10
00059176  55 f8 0c 1c                                      ldr r1, [r5, #-0xc]
0005917a  18 46                                            mov r0, r3
0005917c  9b 46                                            mov fp, r3
0005917e  d9 f7 b4 eb                                      blx #0x328e8
00059182  41 1c                                            adds r1, r0, #1
00059184  22 d0                                            beq #0x591cc
00059186  db f8 14 10                                      ldr.w r1, [fp, #0x14]
0005918a  00 eb 40 00                                      add.w r0, r0, r0, lsl #1
0005918e  2b 78                                            ldrb r3, [r5]
00059190  01 eb c0 01                                      add.w r1, r1, r0, lsl #3
00059194  ca 68                                            ldr r2, [r1, #0xc]
00059196  45 f8 04 2c                                      str r2, [r5, #-0x4]
0005919a  09 7c                                            ldrb r1, [r1, #0x10]
0005919c  61 f3 01 03                                      bfi r3, r1, #0, #2
000591a0  2b 70                                            strb r3, [r5]
000591a2  db f8 14 10                                      ldr.w r1, [fp, #0x14]
000591a6  01 eb c0 01                                      add.w r1, r1, r0, lsl #3
000591aa  09 7c                                            ldrb r1, [r1, #0x10]
000591ac  89 08                                            lsrs r1, r1, #2
000591ae  61 f3 82 03                                      bfi r3, r1, #2, #1
000591b2  2b 70                                            strb r3, [r5]
000591b4  db f8 14 10                                      ldr.w r1, [fp, #0x14]
000591b8  01 eb c0 00                                      add.w r0, r1, r0, lsl #3
000591bc  03 f0 f7 01                                      and r1, r3, #0xf7
000591c0  00 7c                                            ldrb r0, [r0, #0x10]
000591c2  00 f0 08 00                                      and r0, r0, #8
000591c6  08 43                                            orrs r0, r1
000591c8  28 70                                            strb r0, [r5]
000591ca  04 e0                                            b #0x591d6
000591cc  0e 99                                            ldr r1, [sp, #0x38]
000591ce  50 46                                            mov r0, sl
000591d0  22 46                                            mov r2, r4
000591d2  d9 f7 72 eb                                      blx #0x328b8
000591d6  18 35                                            adds r5, #0x18
000591d8  01 3e                                            subs r6, #1
000591da  5b 46                                            mov r3, fp
000591dc  cb d1                                            bne #0x59176
000591de  18 a8                                            add r0, sp, #0x60
000591e0  1c 46                                            mov r4, r3
000591e2  d9 f7 20 ed                                      blx #0x32c24
000591e6  44 49                                            ldr r1, [pc, #0x110]
000591e8  22 46                                            mov r2, r4
000591ea  dd f8 14 b0                                      ldr.w fp, [sp, #0x14]
000591ee  79 44                                            add r1, pc
000591f0  dd f8 24 a0                                      ldr.w sl, [sp, #0x24]
000591f4  06 92                                            str r2, [sp, #0x18]
000591f6  00 22                                            movs r2, #0
000591f8  09 68                                            ldr r1, [r1]
000591fa  cd f8 7c a0                                      str.w sl, [sp, #0x7c]
000591fe  08 31                                            adds r1, #8
00059200  20 94                                            str r4, [sp, #0x80]
00059202  8d f8 84 20                                      strb.w r2, [sp, #0x84]
00059206  18 91                                            str r1, [sp, #0x60]
00059208  59 46                                            mov r1, fp
0005920a  d9 f7 12 ed                                      blx #0x32c30
0005920e  9d f8 84 00                                      ldrb.w r0, [sp, #0x84]
00059212  0e 9e                                            ldr r6, [sp, #0x38]
00059214  28 b1                                            cbz r0, #0x59222
00059216  39 4a                                            ldr r2, [pc, #0xe4]
00059218  13 a8                                            add r0, sp, #0x4c
0005921a  31 46                                            mov r1, r6
0005921c  7a 44                                            add r2, pc
0005921e  d9 f7 4c eb                                      blx #0x328b8
00059222  0d 9c                                            ldr r4, [sp, #0x34]
00059224  07 e5                                            b #0x58c36
00059226  3f 48                                            ldr r0, [pc, #0xfc]
00059228  22 99                                            ldr r1, [sp, #0x88]
0005922a  78 44                                            add r0, pc
0005922c  00 68                                            ldr r0, [r0]
0005922e  00 68                                            ldr r0, [r0]
00059230  40 1a                                            subs r0, r0, r1
00059232  01 bf                                            itttt eq
00059234  00 20                                            moveq r0, #0
00059236  23 b0                                            addeq sp, #0x8c
00059238  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
0005923c  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0005923e  d8 f7 10 ef                                      blx #0x32060
00059242  00 bf                                            nop
00059244  6e 39                                            subs r1, #0x6e
00059246  08 00                                            movs r0, r1
00059248  69 6e                                            ldr r1, [r5, #0x64]
0005924a  00 00                                            movs r0, r0
0005924c  6f 75                                            strb r7, [r5, #0x15]
0005924e  74 00                                            lsls r4, r6, #1
00059250  16 1a                                            subs r6, r2, r0
00059252  06 00                                            movs r6, r0
00059254  55 4e                                            ldr r6, [pc, #0x154]
00059256  4b 4e                                            ldr r6, [pc, #0x12c]
00059258  4f 57                                            ldrsb r7, [r1, r5]
0005925a  4e 00                                            lsls r6, r1, #1
0005925c  67 6c                                            ldr r7, [r4, #0x44]
0005925e  5f 50                                            str r7, [r3, r1]
00059260  65 72                                            strb r5, [r4, #9]
00059262  56 65                                            str r6, [r2, #0x54]
00059264  72 74                                            strb r2, [r6, #0x11]
00059266  65 78                                            ldrb r5, [r4, #1]
00059268  00 00                                            movs r0, r0
0005926a  00 00                                            movs r0, r0
0005926c  66 22                                            movs r2, #0x66
0005926e  06 00                                            movs r6, r0
00059270  12 22                                            movs r2, #0x12
00059272  06 00                                            movs r6, r0
00059274  67 6c                                            ldr r7, [r4, #0x44]
00059276  5f 50                                            str r7, [r3, r1]
00059278  65 72                                            strb r5, [r4, #9]
0005927a  56 65                                            str r6, [r2, #0x54]
0005927c  72 74                                            strb r2, [r6, #0x11]
0005927e  65 78                                            ldrb r5, [r4, #1]
00059280  20 6f                                            ldr r0, [r4, #0x70]
00059282  75 74                                            strb r5, [r6, #0x11]
00059284  70 75                                            strb r0, [r6, #0x15]
00059286  74 20                                            movs r0, #0x74
00059288  6d 61                                            str r5, [r5, #0x14]
0005928a  79 20                                            movs r0, #0x79
0005928c  6e 6f                                            ldr r6, [r5, #0x74]
0005928e  74 20                                            movs r0, #0x74
00059290  62 65                                            str r2, [r4, #0x54]
00059292  20 72                                            strb r0, [r4, #8]
00059294  65 64                                            str r5, [r4, #0x44]
00059296  65 63                                            str r5, [r4, #0x34]
00059298  6c 61                                            str r4, [r5, #0x14]
0005929a  72 65                                            str r2, [r6, #0x54]
0005929c  64 20                                            movs r0, #0x64
0005929e  77 69                                            ldr r7, [r6, #0x14]
000592a0  74 68                                            ldr r4, [r6, #4]
000592a2  20 61                                            str r0, [r4, #0x10]
000592a4  6e 20                                            movs r0, #0x6e
000592a6  69 6e                                            ldr r1, [r5, #0x64]
000592a8  73 74                                            strb r3, [r6, #0x11]
000592aa  61 6e                                            ldr r1, [r4, #0x64]
000592ac  63 65                                            str r3, [r4, #0x54]
000592ae  20 6e                                            ldr r0, [r4, #0x60]
000592b0  61 6d                                            ldr r1, [r4, #0x54]
000592b2  65 00                                            lsls r5, r4, #1
000592b4  1d 26                                            movs r6, #0x1d
000592b6  06 00                                            movs r6, r0
000592b8  fb 21                                            movs r1, #0xfb
000592ba  06 00                                            movs r6, r0
000592bc  e5 21                                            movs r1, #0xe5
000592be  06 00                                            movs r6, r0
000592c0  67 6c                                            ldr r7, [r4, #0x44]
000592c2  5f 50                                            str r7, [r3, r1]
000592c4  65 72                                            strb r5, [r4, #9]
000592c6  56 65                                            str r6, [r2, #0x54]
000592c8  72 74                                            strb r2, [r6, #0x11]
000592ca  65 78                                            ldrb r5, [r4, #1]
000592cc  20 69                                            ldr r0, [r4, #0x10]
000592ce  6e 70                                            strb r6, [r5, #1]
000592d0  75 74                                            strb r5, [r6, #0x11]
000592d2  20 6d                                            ldr r0, [r4, #0x50]
000592d4  75 73                                            strb r5, [r6, #0xd]
000592d6  74 20                                            movs r0, #0x74
000592d8  62 65                                            str r2, [r4, #0x54]
000592da  20 72                                            strb r0, [r4, #8]
000592dc  65 64                                            str r5, [r4, #0x44]
000592de  65 63                                            str r5, [r4, #0x34]
000592e0  6c 61                                            str r4, [r5, #0x14]
000592e2  72 65                                            str r2, [r6, #0x54]
000592e4  64 20                                            movs r0, #0x64
000592e6  61 73                                            strb r1, [r4, #0xd]
000592e8  20 67                                            str r0, [r4, #0x70]
000592ea  6c 5f                                            ldrsh r4, [r5, r5]
000592ec  69 6e                                            ldr r1, [r5, #0x64]
000592ee  5b 5d                                            ldrb r3, [r3, r5]
000592f0  00 00                                            movs r0, r0
000592f2  00 00                                            movs r0, r0
000592f4  53 22                                            movs r2, #0x53
000592f6  06 00                                            movs r6, r0
000592f8  62 33                                            adds r3, #0x62
000592fa  08 00                                            movs r0, r1
000592fc  fe 21                                            movs r1, #0xfe
000592fe  06 00                                            movs r6, r0
00059300  16 28                                            cmp r0, #0x16
00059302  06 00                                            movs r6, r0
00059304  1f 1e                                            subs r7, r3, #0
00059306  06 00                                            movs r6, r0
00059308  33 25                                            movs r5, #0x33
0005930a  06 00                                            movs r6, r0
0005930c  7c 35                                            adds r5, #0x7c
0005930e  08 00                                            movs r0, r1
00059310  56 35                                            adds r5, #0x56
00059312  08 00                                            movs r0, r1
00059314  ae 24                                            movs r4, #0xae
00059316  06 00                                            movs r6, r0
00059318  24 38                                            subs r0, #0x24
0005931a  08 00                                            movs r0, r1
0005931c  02 27                                            movs r7, #2
0005931e  06 00                                            movs r6, r0
00059320  a2 22                                            movs r2, #0xa2
00059322  06 00                                            movs r6, r0
00059324  8a 32                                            adds r2, #0x8a
00059326  08 00                                            movs r0, r1
00059328  e9 26                                            movs r6, #0xe9
0005932a  06 00                                            movs r6, r0
0005932c  73 28                                            cmp r0, #0x73
0005932e  06 00                                            movs r6, r0
00059330  e2 26                                            movs r6, #0xe2
00059332  06 00                                            movs r6, r0
00059334  1c 27                                            movs r7, #0x1c
00059336  06 00                                            movs r6, r0

; FUNCTION 0x0007c7d8, declared_size=136, range_size=136, mode=thumb
; class-group: ast_interface_block
; alias: _ZN19ast_interface_blockC2E18ast_type_qualifierPKcP19ast_array_specifier
; demangled: ast_interface_block::ast_interface_block(ast_type_qualifier, char const*, ast_array_specifier*)
; decoder-mode: thumb
0007c7d8  f0 b5                                            push {r4, r5, r6, r7, lr}
0007c7da  03 af                                            add r7, sp, #0xc
0007c7dc  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0007c7e0  1c 46                                            mov r4, r3
0007c7e2  15 46                                            mov r5, r2
0007c7e4  b6 f7 70 ec                                      blx #0x330c8
0007c7e8  07 f1 10 0e                                      add.w lr, r7, #0x10
0007c7ec  d7 e9 02 32                                      ldrd r3, r2, [r7, #8]
0007c7f0  d7 f8 1c c0                                      ldr.w ip, [r7, #0x1c]
0007c7f4  9e e8 42 40                                      ldm.w lr, {r1, r6, lr}
0007c7f8  c0 e9 08 54                                      strd r5, r4, [r0, #0x20]
0007c7fc  46 63                                            str r6, [r0, #0x34]
0007c7fe  01 63                                            str r1, [r0, #0x30]
0007c800  c2 62                                            str r2, [r0, #0x2c]
0007c802  83 62                                            str r3, [r0, #0x28]
0007c804  c0 f8 3c c0                                      str.w ip, [r0, #0x3c]
0007c808  df f8 50 c0                                      ldr.w ip, [pc, #0x50]
0007c80c  7c 6a                                            ldr r4, [r7, #0x24]
0007c80e  c0 f8 38 e0                                      str.w lr, [r0, #0x38]
0007c812  fc 44                                            add ip, pc
0007c814  44 64                                            str r4, [r0, #0x44]
0007c816  7b 6b                                            ldr r3, [r7, #0x34]
0007c818  fc 6b                                            ldr r4, [r7, #0x3c]
0007c81a  3d 6a                                            ldr r5, [r7, #0x20]
0007c81c  f9 6a                                            ldr r1, [r7, #0x2c]
0007c81e  05 64                                            str r5, [r0, #0x40]
0007c820  c1 64                                            str r1, [r0, #0x4c]
0007c822  ba 6a                                            ldr r2, [r7, #0x28]
0007c824  3e 6b                                            ldr r6, [r7, #0x30]
0007c826  bd 6b                                            ldr r5, [r7, #0x38]
0007c828  39 6c                                            ldr r1, [r7, #0x40]
0007c82a  82 64                                            str r2, [r0, #0x48]
0007c82c  c0 e9 14 63                                      strd r6, r3, [r0, #0x50]
0007c830  00 23                                            movs r3, #0
0007c832  c0 e9 16 54                                      strd r5, r4, [r0, #0x58]
0007c836  06 46                                            mov r6, r0
0007c838  41 66                                            str r1, [r0, #0x64]
0007c83a  dc f8 00 10                                      ldr.w r1, [ip]
0007c83e  7a 6c                                            ldr r2, [r7, #0x44]
0007c840  08 31                                            adds r1, #8
0007c842  03 66                                            str r3, [r0, #0x60]
0007c844  46 f8 6c 3f                                      str r3, [r6, #0x6c]!
0007c848  86 66                                            str r6, [r0, #0x68]
0007c84a  01 60                                            str r1, [r0]
0007c84c  00 f1 68 01                                      add.w r1, r0, #0x68
0007c850  01 67                                            str r1, [r0, #0x70]
0007c852  42 67                                            str r2, [r0, #0x74]
0007c854  5d f8 04 bb                                      ldr fp, [sp], #4
0007c858  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007c85a  00 bf                                            nop
0007c85c  f2 00                                            lsls r2, r6, #3
0007c85e  06 00                                            movs r6, r0
