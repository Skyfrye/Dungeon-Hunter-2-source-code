; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0030f55c, declared_size=124, range_size=124, mode=arm
; class-group: bool std::priv
; alias: _ZNSt4priv12__init_bostrIcSt11char_traitsIcEEEbRSt13basic_ostreamIT_T0_E
; demangled: bool std::priv::__init_bostr<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)
; decoder-mode: arm
0030f55c  10 40 2d e9                                      push {r4, lr}
0030f560  00 30 90 e5                                      ldr r3, [r0]
0030f564  00 40 a0 e1                                      mov r4, r0
0030f568  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f56c  03 30 80 e0                                      add r3, r0, r3
0030f570  08 20 93 e5                                      ldr r2, [r3, #8]
0030f574  00 00 52 e3                                      cmp r2, #0
0030f578  0d 00 00 1a                                      bne #0x30f5b4
0030f57c  48 20 93 e5                                      ldr r2, [r3, #0x48]
0030f580  00 00 52 e3                                      cmp r2, #0
0030f584  0c 00 00 0a                                      beq #0x30f5bc
0030f588  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
0030f58c  00 00 50 e3                                      cmp r0, #0
0030f590  03 00 00 0a                                      beq #0x30f5a4
0030f594  d5 ff ff eb                                      bl #0x30f4f0
0030f598  00 30 94 e5                                      ldr r3, [r4]
0030f59c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f5a0  03 30 84 e0                                      add r3, r4, r3
0030f5a4  08 00 93 e5                                      ldr r0, [r3, #8]
0030f5a8  01 00 70 e2                                      rsbs r0, r0, #1
0030f5ac  00 00 a0 33                                      movlo r0, #0
0030f5b0  10 80 bd e8                                      pop {r4, pc}
0030f5b4  00 00 a0 e3                                      mov r0, #0
0030f5b8  10 80 bd e8                                      pop {r4, pc}
0030f5bc  03 00 a0 e1                                      mov r0, r3
0030f5c0  01 10 a0 e3                                      mov r1, #1
0030f5c4  85 ff ff eb                                      bl #0x30f3e0
0030f5c8  00 30 94 e5                                      ldr r3, [r4]
0030f5cc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f5d0  03 30 84 e0                                      add r3, r4, r3
0030f5d4  eb ff ff ea                                      b #0x30f588

; FUNCTION 0x008a7e70, declared_size=536, range_size=536, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv21__get_decimal_integerIPwewEEbRT_S3_RT0_PT1_
; demangled: bool std::priv::__get_decimal_integer<wchar_t*, long double, wchar_t>(wchar_t*&, wchar_t*&, long double&, wchar_t*)
; decoder-mode: thumb
008a7e70  f0 b5                                            push {r4, r5, r6, r7, lr}
008a7e72  5f 46                                            mov r7, fp
008a7e74  56 46                                            mov r6, sl
008a7e76  4d 46                                            mov r5, sb
008a7e78  44 46                                            mov r4, r8
008a7e7a  f0 b4                                            push {r4, r5, r6, r7}
008a7e7c  80 4b                                            ldr r3, [pc, #0x200]
008a7e7e  81 4c                                            ldr r4, [pc, #0x204]
008a7e80  a3 b0                                            sub sp, #0x8c
008a7e82  7b 44                                            add r3, pc
008a7e84  06 93                                            str r3, [sp, #0x18]
008a7e86  1b 59                                            ldr r3, [r3, r4]
008a7e88  0e 1c                                            adds r6, r1, #0
008a7e8a  1b a9                                            add r1, sp, #0x6c
008a7e8c  1b 68                                            ldr r3, [r3]
008a7e8e  89 46                                            mov sb, r1
008a7e90  07 1c                                            adds r7, r0, #0
008a7e92  21 93                                            str r3, [sp, #0x84]
008a7e94  08 1c                                            adds r0, r1, #0
008a7e96  09 61                                            str r1, [r1, #0x10]
008a7e98  49 61                                            str r1, [r1, #0x14]
008a7e9a  10 21                                            movs r1, #0x10
008a7e9c  09 92                                            str r2, [sp, #0x24]
008a7e9e  07 94                                            str r4, [sp, #0x1c]
008a7ea0  69 f6 ec e3                                      blx #0x31167c
008a7ea4  4a 46                                            mov r2, sb
008a7ea6  13 69                                            ldr r3, [r2, #0x10]
008a7ea8  00 22                                            movs r2, #0
008a7eaa  1a 70                                            strb r2, [r3]
008a7eac  4b 46                                            mov r3, sb
008a7eae  5a 69                                            ldr r2, [r3, #0x14]
008a7eb0  1b 69                                            ldr r3, [r3, #0x10]
008a7eb2  d3 1a                                            subs r3, r2, r3
008a7eb4  1c 1c                                            adds r4, r3, #0
008a7eb6  63 1e                                            subs r3, r4, #1
008a7eb8  9c 41                                            sbcs r4, r3
008a7eba  03 94                                            str r4, [sp, #0xc]
008a7ebc  3b 68                                            ldr r3, [r7]
008a7ebe  32 68                                            ldr r2, [r6]
008a7ec0  93 42                                            cmp r3, r2
008a7ec2  00 d1                                            bne #0x8a7ec6
008a7ec4  bb e0                                            b #0x8a803e
008a7ec6  6a 46                                            mov r2, sp
008a7ec8  2c 32                                            adds r2, #0x2c
008a7eca  00 21                                            movs r1, #0
008a7ecc  08 92                                            str r2, [sp, #0x20]
008a7ece  04 92                                            str r2, [sp, #0x10]
008a7ed0  3a 1c                                            adds r2, r7, #0
008a7ed2  00 24                                            movs r4, #0
008a7ed4  8a 46                                            mov sl, r1
008a7ed6  0f 1c                                            adds r7, r1, #0
008a7ed8  90 46                                            mov r8, r2
008a7eda  05 94                                            str r4, [sp, #0x14]
008a7edc  61 4d                                            ldr r5, [pc, #0x184]
008a7ede  60 4c                                            ldr r4, [pc, #0x180]
008a7ee0  03 99                                            ldr r1, [sp, #0xc]
008a7ee2  18 68                                            ldr r0, [r3]
008a7ee4  00 29                                            cmp r1, #0
008a7ee6  02 d0                                            beq #0x8a7eee
008a7ee8  00 28                                            cmp r0, #0
008a7eea  00 d1                                            bne #0x8a7eee
008a7eec  77 e0                                            b #0x8a7fde
008a7eee  7f 28                                            cmp r0, #0x7f
008a7ef0  2f d9                                            bls #0x8a7f52
008a7ef2  00 94                                            str r4, [sp]
008a7ef4  01 95                                            str r5, [sp, #4]
008a7ef6  b8 46                                            mov r8, r7
008a7ef8  03 9a                                            ldr r2, [sp, #0xc]
008a7efa  00 2a                                            cmp r2, #0
008a7efc  08 d0                                            beq #0x8a7f10
008a7efe  04 9b                                            ldr r3, [sp, #0x10]
008a7f00  08 9c                                            ldr r4, [sp, #0x20]
008a7f02  a3 42                                            cmp r3, r4
008a7f04  04 d0                                            beq #0x8a7f10
008a7f06  19 1c                                            adds r1, r3, #0
008a7f08  42 46                                            mov r2, r8
008a7f0a  01 31                                            adds r1, #1
008a7f0c  1a 70                                            strb r2, [r3]
008a7f0e  04 91                                            str r1, [sp, #0x10]
008a7f10  53 46                                            mov r3, sl
008a7f12  00 2b                                            cmp r3, #0
008a7f14  00 d1                                            bne #0x8a7f18
008a7f16  90 e0                                            b #0x8a803a
008a7f18  05 9c                                            ldr r4, [sp, #0x14]
008a7f1a  00 2c                                            cmp r4, #0
008a7f1c  00 d1                                            bne #0x8a7f20
008a7f1e  79 e0                                            b #0x8a8014
008a7f20  09 99                                            ldr r1, [sp, #0x24]
008a7f22  51 4b                                            ldr r3, [pc, #0x144]
008a7f24  51 4c                                            ldr r4, [pc, #0x144]
008a7f26  0b 60                                            str r3, [r1]
008a7f28  4c 60                                            str r4, [r1, #4]
008a7f2a  00 24                                            movs r4, #0
008a7f2c  48 46                                            mov r0, sb
008a7f2e  6b f6 3e e5                                      blx #0x3139ac
008a7f32  20 1c                                            adds r0, r4, #0
008a7f34  07 99                                            ldr r1, [sp, #0x1c]
008a7f36  06 9c                                            ldr r4, [sp, #0x18]
008a7f38  21 9a                                            ldr r2, [sp, #0x84]
008a7f3a  63 58                                            ldr r3, [r4, r1]
008a7f3c  1b 68                                            ldr r3, [r3]
008a7f3e  9a 42                                            cmp r2, r3
008a7f40  00 d0                                            beq #0x8a7f44
008a7f42  89 e0                                            b #0x8a8058
008a7f44  23 b0                                            add sp, #0x8c
008a7f46  3c bc                                            pop {r2, r3, r4, r5}
008a7f48  90 46                                            mov r8, r2
008a7f4a  99 46                                            mov sb, r3
008a7f4c  a2 46                                            mov sl, r4
008a7f4e  ab 46                                            mov fp, r5
008a7f50  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a7f52  11 f0 b3 fc                                      bl #0x8b98bc
008a7f56  83 46                                            mov fp, r0
008a7f58  09 28                                            cmp r0, #9
008a7f5a  ca dc                                            bgt #0x8a7ef2
008a7f5c  01 23                                            movs r3, #1
008a7f5e  01 37                                            adds r7, #1
008a7f60  9a 44                                            add sl, r3
008a7f62  3f 06                                            lsls r7, r7, #0x18
008a7f64  20 1c                                            adds r0, r4, #0
008a7f66  29 1c                                            adds r1, r5, #0
008a7f68  41 4a                                            ldr r2, [pc, #0x104]
008a7f6a  42 4b                                            ldr r3, [pc, #0x108]
008a7f6c  3f 0e                                            lsrs r7, r7, #0x18
008a7f6e  65 f6 78 e7                                      blx #0x30de60
008a7f72  00 28                                            cmp r0, #0
008a7f74  0e d0                                            beq #0x8a7f94
008a7f76  00 94                                            str r4, [sp]
008a7f78  01 95                                            str r5, [sp, #4]
008a7f7a  01 24                                            movs r4, #1
008a7f7c  05 94                                            str r4, [sp, #0x14]
008a7f7e  41 46                                            mov r1, r8
008a7f80  0b 68                                            ldr r3, [r1]
008a7f82  04 33                                            adds r3, #4
008a7f84  41 46                                            mov r1, r8
008a7f86  0b 60                                            str r3, [r1]
008a7f88  32 68                                            ldr r2, [r6]
008a7f8a  93 42                                            cmp r3, r2
008a7f8c  25 d0                                            beq #0x8a7fda
008a7f8e  00 9c                                            ldr r4, [sp]
008a7f90  01 9d                                            ldr r5, [sp, #4]
008a7f92  a5 e7                                            b #0x8a7ee0
008a7f94  38 4a                                            ldr r2, [pc, #0xe0]
008a7f96  39 4b                                            ldr r3, [pc, #0xe4]
008a7f98  20 1c                                            adds r0, r4, #0
008a7f9a  29 1c                                            adds r1, r5, #0
008a7f9c  66 f6 8a e5                                      blx #0x30eab4
008a7fa0  00 90                                            str r0, [sp]
008a7fa2  01 91                                            str r1, [sp, #4]
008a7fa4  58 46                                            mov r0, fp
008a7fa6  66 f6 c4 e6                                      blx #0x30ed30
008a7faa  02 1c                                            adds r2, r0, #0
008a7fac  0b 1c                                            adds r3, r1, #0
008a7fae  00 98                                            ldr r0, [sp]
008a7fb0  01 99                                            ldr r1, [sp, #4]
008a7fb2  66 f6 c8 e5                                      blx #0x30eb44
008a7fb6  2b 4b                                            ldr r3, [pc, #0xac]
008a7fb8  29 4a                                            ldr r2, [pc, #0xa4]
008a7fba  00 90                                            str r0, [sp]
008a7fbc  01 91                                            str r1, [sp, #4]
008a7fbe  20 1c                                            adds r0, r4, #0
008a7fc0  29 1c                                            adds r1, r5, #0
008a7fc2  66 f6 2e e4                                      blx #0x30e820
008a7fc6  00 28                                            cmp r0, #0
008a7fc8  11 d0                                            beq #0x8a7fee
008a7fca  42 46                                            mov r2, r8
008a7fcc  13 68                                            ldr r3, [r2]
008a7fce  41 46                                            mov r1, r8
008a7fd0  04 33                                            adds r3, #4
008a7fd2  0b 60                                            str r3, [r1]
008a7fd4  32 68                                            ldr r2, [r6]
008a7fd6  93 42                                            cmp r3, r2
008a7fd8  d9 d1                                            bne #0x8a7f8e
008a7fda  b8 46                                            mov r8, r7
008a7fdc  8c e7                                            b #0x8a7ef8
008a7fde  04 9a                                            ldr r2, [sp, #0x10]
008a7fe0  17 70                                            strb r7, [r2]
008a7fe2  01 32                                            adds r2, #1
008a7fe4  04 92                                            str r2, [sp, #0x10]
008a7fe6  00 94                                            str r4, [sp]
008a7fe8  01 95                                            str r5, [sp, #4]
008a7fea  00 27                                            movs r7, #0
008a7fec  c9 e7                                            b #0x8a7f82
008a7fee  05 9b                                            ldr r3, [sp, #0x14]
008a7ff0  00 2b                                            cmp r3, #0
008a7ff2  0c d1                                            bne #0x8a800e
008a7ff4  20 1c                                            adds r0, r4, #0
008a7ff6  29 1c                                            adds r1, r5, #0
008a7ff8  00 9a                                            ldr r2, [sp]
008a7ffa  01 9b                                            ldr r3, [sp, #4]
008a7ffc  66 f6 e8 e1                                      blx #0x30e3d0
008a8000  00 28                                            cmp r0, #0
008a8002  02 d1                                            bne #0x8a800a
008a8004  41 46                                            mov r1, r8
008a8006  0b 68                                            ldr r3, [r1]
008a8008  bb e7                                            b #0x8a7f82
008a800a  01 22                                            movs r2, #1
008a800c  05 92                                            str r2, [sp, #0x14]
008a800e  44 46                                            mov r4, r8
008a8010  23 68                                            ldr r3, [r4]
008a8012  b6 e7                                            b #0x8a7f82
008a8014  09 9c                                            ldr r4, [sp, #0x24]
008a8016  00 9a                                            ldr r2, [sp]
008a8018  01 9b                                            ldr r3, [sp, #4]
008a801a  22 60                                            str r2, [r4]
008a801c  63 60                                            str r3, [r4, #4]
008a801e  03 99                                            ldr r1, [sp, #0xc]
008a8020  00 29                                            cmp r1, #0
008a8022  01 d1                                            bne #0x8a8028
008a8024  01 24                                            movs r4, #1
008a8026  81 e7                                            b #0x8a7f2c
008a8028  4b 46                                            mov r3, sb
008a802a  5a 69                                            ldr r2, [r3, #0x14]
008a802c  08 98                                            ldr r0, [sp, #0x20]
008a802e  1b 69                                            ldr r3, [r3, #0x10]
008a8030  04 99                                            ldr r1, [sp, #0x10]
008a8032  11 f0 1f fc                                      bl #0x8b9874
008a8036  00 28                                            cmp r0, #0
008a8038  f4 d1                                            bne #0x8a8024
008a803a  00 24                                            movs r4, #0
008a803c  76 e7                                            b #0x8a7f2c
008a803e  09 4b                                            ldr r3, [pc, #0x24]
008a8040  07 4a                                            ldr r2, [pc, #0x1c]
008a8042  00 92                                            str r2, [sp]
008a8044  01 93                                            str r3, [sp, #4]
008a8046  6b 46                                            mov r3, sp
008a8048  00 21                                            movs r1, #0
008a804a  2c 33                                            adds r3, #0x2c
008a804c  05 91                                            str r1, [sp, #0x14]
008a804e  8a 46                                            mov sl, r1
008a8050  08 93                                            str r3, [sp, #0x20]
008a8052  04 93                                            str r3, [sp, #0x10]
008a8054  88 46                                            mov r8, r1
008a8056  4f e7                                            b #0x8a7ef8
008a8058  66 f6 5a e1                                      blx #0x30e310
008a805c  c0 46                                            mov r8, r8
008a805e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a8060  00 00 00 00 00 00 00 00 ff ff ff ff ff ff ef 7f  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xef, 0x7f
008a8070  99 99 99 99 99 99 b9 7f 00 00 00 00 00 00 24 40  .byte 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0xb9, 0x7f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x40
008a8080  12 cc 0e 00 ac 40 00 00                          .byte 0x12, 0xcc, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a8088, declared_size=536, range_size=536, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv21__get_decimal_integerIPcecEEbRT_S3_RT0_PT1_
; demangled: bool std::priv::__get_decimal_integer<char*, long double, char>(char*&, char*&, long double&, char*)
; decoder-mode: thumb
008a8088  f0 b5                                            push {r4, r5, r6, r7, lr}
008a808a  5f 46                                            mov r7, fp
008a808c  56 46                                            mov r6, sl
008a808e  4d 46                                            mov r5, sb
008a8090  44 46                                            mov r4, r8
008a8092  f0 b4                                            push {r4, r5, r6, r7}
008a8094  80 4b                                            ldr r3, [pc, #0x200]
008a8096  81 4c                                            ldr r4, [pc, #0x204]
008a8098  a3 b0                                            sub sp, #0x8c
008a809a  7b 44                                            add r3, pc
008a809c  06 93                                            str r3, [sp, #0x18]
008a809e  1b 59                                            ldr r3, [r3, r4]
008a80a0  0e 1c                                            adds r6, r1, #0
008a80a2  1b a9                                            add r1, sp, #0x6c
008a80a4  1b 68                                            ldr r3, [r3]
008a80a6  89 46                                            mov sb, r1
008a80a8  07 1c                                            adds r7, r0, #0
008a80aa  21 93                                            str r3, [sp, #0x84]
008a80ac  08 1c                                            adds r0, r1, #0
008a80ae  09 61                                            str r1, [r1, #0x10]
008a80b0  49 61                                            str r1, [r1, #0x14]
008a80b2  10 21                                            movs r1, #0x10
008a80b4  09 92                                            str r2, [sp, #0x24]
008a80b6  07 94                                            str r4, [sp, #0x1c]
008a80b8  69 f6 e0 e2                                      blx #0x31167c
008a80bc  4a 46                                            mov r2, sb
008a80be  13 69                                            ldr r3, [r2, #0x10]
008a80c0  00 22                                            movs r2, #0
008a80c2  1a 70                                            strb r2, [r3]
008a80c4  4b 46                                            mov r3, sb
008a80c6  5a 69                                            ldr r2, [r3, #0x14]
008a80c8  1b 69                                            ldr r3, [r3, #0x10]
008a80ca  d3 1a                                            subs r3, r2, r3
008a80cc  1c 1c                                            adds r4, r3, #0
008a80ce  63 1e                                            subs r3, r4, #1
008a80d0  9c 41                                            sbcs r4, r3
008a80d2  03 94                                            str r4, [sp, #0xc]
008a80d4  3b 68                                            ldr r3, [r7]
008a80d6  32 68                                            ldr r2, [r6]
008a80d8  93 42                                            cmp r3, r2
008a80da  00 d1                                            bne #0x8a80de
008a80dc  bb e0                                            b #0x8a8256
008a80de  6a 46                                            mov r2, sp
008a80e0  2c 32                                            adds r2, #0x2c
008a80e2  00 21                                            movs r1, #0
008a80e4  08 92                                            str r2, [sp, #0x20]
008a80e6  04 92                                            str r2, [sp, #0x10]
008a80e8  3a 1c                                            adds r2, r7, #0
008a80ea  00 24                                            movs r4, #0
008a80ec  8a 46                                            mov sl, r1
008a80ee  0f 1c                                            adds r7, r1, #0
008a80f0  90 46                                            mov r8, r2
008a80f2  05 94                                            str r4, [sp, #0x14]
008a80f4  61 4d                                            ldr r5, [pc, #0x184]
008a80f6  60 4c                                            ldr r4, [pc, #0x180]
008a80f8  03 99                                            ldr r1, [sp, #0xc]
008a80fa  18 78                                            ldrb r0, [r3]
008a80fc  00 29                                            cmp r1, #0
008a80fe  02 d0                                            beq #0x8a8106
008a8100  00 28                                            cmp r0, #0
008a8102  00 d1                                            bne #0x8a8106
008a8104  77 e0                                            b #0x8a81f6
008a8106  7f 28                                            cmp r0, #0x7f
008a8108  2f d9                                            bls #0x8a816a
008a810a  00 94                                            str r4, [sp]
008a810c  01 95                                            str r5, [sp, #4]
008a810e  b8 46                                            mov r8, r7
008a8110  03 9a                                            ldr r2, [sp, #0xc]
008a8112  00 2a                                            cmp r2, #0
008a8114  08 d0                                            beq #0x8a8128
008a8116  04 9b                                            ldr r3, [sp, #0x10]
008a8118  08 9c                                            ldr r4, [sp, #0x20]
008a811a  a3 42                                            cmp r3, r4
008a811c  04 d0                                            beq #0x8a8128
008a811e  19 1c                                            adds r1, r3, #0
008a8120  42 46                                            mov r2, r8
008a8122  01 31                                            adds r1, #1
008a8124  1a 70                                            strb r2, [r3]
008a8126  04 91                                            str r1, [sp, #0x10]
008a8128  53 46                                            mov r3, sl
008a812a  00 2b                                            cmp r3, #0
008a812c  00 d1                                            bne #0x8a8130
008a812e  90 e0                                            b #0x8a8252
008a8130  05 9c                                            ldr r4, [sp, #0x14]
008a8132  00 2c                                            cmp r4, #0
008a8134  00 d1                                            bne #0x8a8138
008a8136  79 e0                                            b #0x8a822c
008a8138  09 99                                            ldr r1, [sp, #0x24]
008a813a  51 4b                                            ldr r3, [pc, #0x144]
008a813c  51 4c                                            ldr r4, [pc, #0x144]
008a813e  0b 60                                            str r3, [r1]
008a8140  4c 60                                            str r4, [r1, #4]
008a8142  00 24                                            movs r4, #0
008a8144  48 46                                            mov r0, sb
008a8146  6b f6 32 e4                                      blx #0x3139ac
008a814a  20 1c                                            adds r0, r4, #0
008a814c  07 99                                            ldr r1, [sp, #0x1c]
008a814e  06 9c                                            ldr r4, [sp, #0x18]
008a8150  21 9a                                            ldr r2, [sp, #0x84]
008a8152  63 58                                            ldr r3, [r4, r1]
008a8154  1b 68                                            ldr r3, [r3]
008a8156  9a 42                                            cmp r2, r3
008a8158  00 d0                                            beq #0x8a815c
008a815a  89 e0                                            b #0x8a8270
008a815c  23 b0                                            add sp, #0x8c
008a815e  3c bc                                            pop {r2, r3, r4, r5}
008a8160  90 46                                            mov r8, r2
008a8162  99 46                                            mov sb, r3
008a8164  a2 46                                            mov sl, r4
008a8166  ab 46                                            mov fp, r5
008a8168  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a816a  11 f0 a7 fb                                      bl #0x8b98bc
008a816e  83 46                                            mov fp, r0
008a8170  09 28                                            cmp r0, #9
008a8172  ca dc                                            bgt #0x8a810a
008a8174  01 23                                            movs r3, #1
008a8176  01 37                                            adds r7, #1
008a8178  9a 44                                            add sl, r3
008a817a  3f 06                                            lsls r7, r7, #0x18
008a817c  20 1c                                            adds r0, r4, #0
008a817e  29 1c                                            adds r1, r5, #0
008a8180  41 4a                                            ldr r2, [pc, #0x104]
008a8182  42 4b                                            ldr r3, [pc, #0x108]
008a8184  3f 0e                                            lsrs r7, r7, #0x18
008a8186  65 f6 6c e6                                      blx #0x30de60
008a818a  00 28                                            cmp r0, #0
008a818c  0e d0                                            beq #0x8a81ac
008a818e  00 94                                            str r4, [sp]
008a8190  01 95                                            str r5, [sp, #4]
008a8192  01 24                                            movs r4, #1
008a8194  05 94                                            str r4, [sp, #0x14]
008a8196  41 46                                            mov r1, r8
008a8198  0b 68                                            ldr r3, [r1]
008a819a  01 33                                            adds r3, #1
008a819c  41 46                                            mov r1, r8
008a819e  0b 60                                            str r3, [r1]
008a81a0  32 68                                            ldr r2, [r6]
008a81a2  93 42                                            cmp r3, r2
008a81a4  25 d0                                            beq #0x8a81f2
008a81a6  00 9c                                            ldr r4, [sp]
008a81a8  01 9d                                            ldr r5, [sp, #4]
008a81aa  a5 e7                                            b #0x8a80f8
008a81ac  38 4a                                            ldr r2, [pc, #0xe0]
008a81ae  39 4b                                            ldr r3, [pc, #0xe4]
008a81b0  20 1c                                            adds r0, r4, #0
008a81b2  29 1c                                            adds r1, r5, #0
008a81b4  66 f6 7e e4                                      blx #0x30eab4
008a81b8  00 90                                            str r0, [sp]
008a81ba  01 91                                            str r1, [sp, #4]
008a81bc  58 46                                            mov r0, fp
008a81be  66 f6 b8 e5                                      blx #0x30ed30
008a81c2  02 1c                                            adds r2, r0, #0
008a81c4  0b 1c                                            adds r3, r1, #0
008a81c6  00 98                                            ldr r0, [sp]
008a81c8  01 99                                            ldr r1, [sp, #4]
008a81ca  66 f6 bc e4                                      blx #0x30eb44
008a81ce  2b 4b                                            ldr r3, [pc, #0xac]
008a81d0  29 4a                                            ldr r2, [pc, #0xa4]
008a81d2  00 90                                            str r0, [sp]
008a81d4  01 91                                            str r1, [sp, #4]
008a81d6  20 1c                                            adds r0, r4, #0
008a81d8  29 1c                                            adds r1, r5, #0
008a81da  66 f6 22 e3                                      blx #0x30e820
008a81de  00 28                                            cmp r0, #0
008a81e0  11 d0                                            beq #0x8a8206
008a81e2  42 46                                            mov r2, r8
008a81e4  13 68                                            ldr r3, [r2]
008a81e6  41 46                                            mov r1, r8
008a81e8  01 33                                            adds r3, #1
008a81ea  0b 60                                            str r3, [r1]
008a81ec  32 68                                            ldr r2, [r6]
008a81ee  93 42                                            cmp r3, r2
008a81f0  d9 d1                                            bne #0x8a81a6
008a81f2  b8 46                                            mov r8, r7
008a81f4  8c e7                                            b #0x8a8110
008a81f6  04 9a                                            ldr r2, [sp, #0x10]
008a81f8  17 70                                            strb r7, [r2]
008a81fa  01 32                                            adds r2, #1
008a81fc  04 92                                            str r2, [sp, #0x10]
008a81fe  00 94                                            str r4, [sp]
008a8200  01 95                                            str r5, [sp, #4]
008a8202  00 27                                            movs r7, #0
008a8204  c9 e7                                            b #0x8a819a
008a8206  05 9b                                            ldr r3, [sp, #0x14]
008a8208  00 2b                                            cmp r3, #0
008a820a  0c d1                                            bne #0x8a8226
008a820c  20 1c                                            adds r0, r4, #0
008a820e  29 1c                                            adds r1, r5, #0
008a8210  00 9a                                            ldr r2, [sp]
008a8212  01 9b                                            ldr r3, [sp, #4]
008a8214  66 f6 dc e0                                      blx #0x30e3d0
008a8218  00 28                                            cmp r0, #0
008a821a  02 d1                                            bne #0x8a8222
008a821c  41 46                                            mov r1, r8
008a821e  0b 68                                            ldr r3, [r1]
008a8220  bb e7                                            b #0x8a819a
008a8222  01 22                                            movs r2, #1
008a8224  05 92                                            str r2, [sp, #0x14]
008a8226  44 46                                            mov r4, r8
008a8228  23 68                                            ldr r3, [r4]
008a822a  b6 e7                                            b #0x8a819a
008a822c  09 9c                                            ldr r4, [sp, #0x24]
008a822e  00 9a                                            ldr r2, [sp]
008a8230  01 9b                                            ldr r3, [sp, #4]
008a8232  22 60                                            str r2, [r4]
008a8234  63 60                                            str r3, [r4, #4]
008a8236  03 99                                            ldr r1, [sp, #0xc]
008a8238  00 29                                            cmp r1, #0
008a823a  01 d1                                            bne #0x8a8240
008a823c  01 24                                            movs r4, #1
008a823e  81 e7                                            b #0x8a8144
008a8240  4b 46                                            mov r3, sb
008a8242  5a 69                                            ldr r2, [r3, #0x14]
008a8244  08 98                                            ldr r0, [sp, #0x20]
008a8246  1b 69                                            ldr r3, [r3, #0x10]
008a8248  04 99                                            ldr r1, [sp, #0x10]
008a824a  11 f0 13 fb                                      bl #0x8b9874
008a824e  00 28                                            cmp r0, #0
008a8250  f4 d1                                            bne #0x8a823c
008a8252  00 24                                            movs r4, #0
008a8254  76 e7                                            b #0x8a8144
008a8256  09 4b                                            ldr r3, [pc, #0x24]
008a8258  07 4a                                            ldr r2, [pc, #0x1c]
008a825a  00 92                                            str r2, [sp]
008a825c  01 93                                            str r3, [sp, #4]
008a825e  6b 46                                            mov r3, sp
008a8260  00 21                                            movs r1, #0
008a8262  2c 33                                            adds r3, #0x2c
008a8264  05 91                                            str r1, [sp, #0x14]
008a8266  8a 46                                            mov sl, r1
008a8268  08 93                                            str r3, [sp, #0x20]
008a826a  04 93                                            str r3, [sp, #0x10]
008a826c  88 46                                            mov r8, r1
008a826e  4f e7                                            b #0x8a8110
008a8270  66 f6 4e e0                                      blx #0x30e310
008a8274  c0 46                                            mov r8, r8
008a8276  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a8278  00 00 00 00 00 00 00 00 ff ff ff ff ff ff ef 7f  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xef, 0x7f
008a8288  99 99 99 99 99 99 b9 7f 00 00 00 00 00 00 24 40  .byte 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0xb9, 0x7f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x40
008a8298  fa c9 0e 00 ac 40 00 00                          .byte 0xfa, 0xc9, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a9654, declared_size=500, range_size=500, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEEycEEbRT_S6_iRT0_ibT1_RKSsRKSt12__false_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, unsigned long long, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, int, unsigned long long&, int, bool, char, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&)
; decoder-mode: thumb
008a9654  f0 b5                                            push {r4, r5, r6, r7, lr}
008a9656  5f 46                                            mov r7, fp
008a9658  56 46                                            mov r6, sl
008a965a  4d 46                                            mov r5, sb
008a965c  44 46                                            mov r4, r8
008a965e  f0 b4                                            push {r4, r5, r6, r7}
008a9660  77 4c                                            ldr r4, [pc, #0x1dc]
008a9662  a1 b0                                            sub sp, #0x84
008a9664  02 91                                            str r1, [sp, #8]
008a9666  0c 93                                            str r3, [sp, #0x30]
008a9668  2d 99                                            ldr r1, [sp, #0xb4]
008a966a  7c 44                                            add r4, pc
008a966c  2a ab                                            add r3, sp, #0xa8
008a966e  07 94                                            str r4, [sp, #0x1c]
008a9670  04 1c                                            adds r4, r0, #0
008a9672  01 cb                                            ldm r3!, {r0}
008a9674  08 91                                            str r1, [sp, #0x20]
008a9676  91 46                                            mov sb, r2
008a9678  1b 78                                            ldrb r3, [r3]
008a967a  72 4a                                            ldr r2, [pc, #0x1c8]
008a967c  80 46                                            mov r8, r0
008a967e  0d 93                                            str r3, [sp, #0x34]
008a9680  2c ab                                            add r3, sp, #0xb0
008a9682  1b 78                                            ldrb r3, [r3]
008a9684  07 98                                            ldr r0, [sp, #0x1c]
008a9686  09 92                                            str r2, [sp, #0x24]
008a9688  03 93                                            str r3, [sp, #0xc]
008a968a  83 58                                            ldr r3, [r0, r2]
008a968c  00 27                                            movs r7, #0
008a968e  00 25                                            movs r5, #0
008a9690  00 26                                            movs r6, #0
008a9692  1b 68                                            ldr r3, [r3]
008a9694  1f 93                                            str r3, [sp, #0x7c]
008a9696  4a 69                                            ldr r2, [r1, #0x14]
008a9698  0b 69                                            ldr r3, [r1, #0x10]
008a969a  d3 1a                                            subs r3, r2, r3
008a969c  4a 46                                            mov r2, sb
008a969e  19 1c                                            adds r1, r3, #0
008a96a0  d2 17                                            asrs r2, r2, #0x1f
008a96a2  4b 1e                                            subs r3, r1, #1
008a96a4  99 41                                            sbcs r1, r3
008a96a6  06 92                                            str r2, [sp, #0x18]
008a96a8  06 9b                                            ldr r3, [sp, #0x18]
008a96aa  8b 46                                            mov fp, r1
008a96ac  4a 46                                            mov r2, sb
008a96ae  01 20                                            movs r0, #1
008a96b0  40 42                                            rsbs r0, r0, #0
008a96b2  c1 17                                            asrs r1, r0, #0x1f
008a96b4  65 f6 0e e1                                      blx #0x30e8d4
008a96b8  6b 46                                            mov r3, sp
008a96ba  0b 90                                            str r0, [sp, #0x2c]
008a96bc  00 20                                            movs r0, #0
008a96be  3c 33                                            adds r3, #0x3c
008a96c0  8a 46                                            mov sl, r1
008a96c2  04 90                                            str r0, [sp, #0x10]
008a96c4  02 99                                            ldr r1, [sp, #8]
008a96c6  20 1c                                            adds r0, r4, #0
008a96c8  0a 93                                            str r3, [sp, #0x28]
008a96ca  05 93                                            str r3, [sp, #0x14]
008a96cc  ff f7 8c ff                                      bl #0x8a95e8
008a96d0  00 28                                            cmp r0, #0
008a96d2  55 d1                                            bne #0x8a9780
008a96d4  a3 79                                            ldrb r3, [r4, #6]
008a96d6  00 2b                                            cmp r3, #0
008a96d8  00 d0                                            beq #0x8a96dc
008a96da  78 e0                                            b #0x8a97ce
008a96dc  20 68                                            ldr r0, [r4]
008a96de  83 68                                            ldr r3, [r0, #8]
008a96e0  c2 68                                            ldr r2, [r0, #0xc]
008a96e2  93 42                                            cmp r3, r2
008a96e4  00 d3                                            blo #0x8a96e8
008a96e6  8d e0                                            b #0x8a9804
008a96e8  18 78                                            ldrb r0, [r3]
008a96ea  03 06                                            lsls r3, r0, #0x18
008a96ec  01 30                                            adds r0, #1
008a96ee  1b 0e                                            lsrs r3, r3, #0x18
008a96f0  42 42                                            rsbs r2, r0, #0
008a96f2  42 41                                            adcs r2, r0
008a96f4  01 21                                            movs r1, #1
008a96f6  23 71                                            strb r3, [r4, #4]
008a96f8  62 71                                            strb r2, [r4, #5]
008a96fa  a1 71                                            strb r1, [r4, #6]
008a96fc  5a 46                                            mov r2, fp
008a96fe  00 2a                                            cmp r2, #0
008a9700  03 d0                                            beq #0x8a970a
008a9702  03 98                                            ldr r0, [sp, #0xc]
008a9704  98 42                                            cmp r0, r3
008a9706  00 d1                                            bne #0x8a970a
008a9708  76 e0                                            b #0x8a97f8
008a970a  ff 20                                            movs r0, #0xff
008a970c  7f 2b                                            cmp r3, #0x7f
008a970e  02 d8                                            bhi #0x8a9716
008a9710  18 1c                                            adds r0, r3, #0
008a9712  10 f0 d3 f8                                      bl #0x8b98bc
008a9716  81 45                                            cmp sb, r0
008a9718  32 dd                                            ble #0x8a9780
008a971a  01 37                                            adds r7, #1
008a971c  01 22                                            movs r2, #1
008a971e  3f 06                                            lsls r7, r7, #0x18
008a9720  90 44                                            add r8, r2
008a9722  3f 0e                                            lsrs r7, r7, #0x18
008a9724  b2 45                                            cmp sl, r6
008a9726  57 d3                                            blo #0x8a97d8
008a9728  b2 45                                            cmp sl, r6
008a972a  52 d0                                            beq #0x8a97d2
008a972c  00 90                                            str r0, [sp]
008a972e  c0 17                                            asrs r0, r0, #0x1f
008a9730  01 90                                            str r0, [sp, #4]
008a9732  4a 46                                            mov r2, sb
008a9734  06 9b                                            ldr r3, [sp, #0x18]
008a9736  28 1c                                            adds r0, r5, #0
008a9738  31 1c                                            adds r1, r6, #0
008a973a  65 f6 0e e1                                      blx #0x30e958
008a973e  00 9a                                            ldr r2, [sp]
008a9740  01 9b                                            ldr r3, [sp, #4]
008a9742  80 18                                            adds r0, r0, r2
008a9744  59 41                                            adcs r1, r3
008a9746  2b 1c                                            adds r3, r5, #0
008a9748  33 43                                            orrs r3, r6
008a974a  52 d0                                            beq #0x8a97f2
008a974c  04 9a                                            ldr r2, [sp, #0x10]
008a974e  00 2a                                            cmp r2, #0
008a9750  4f d1                                            bne #0x8a97f2
008a9752  b1 42                                            cmp r1, r6
008a9754  4d d8                                            bhi #0x8a97f2
008a9756  b1 42                                            cmp r1, r6
008a9758  49 d0                                            beq #0x8a97ee
008a975a  01 23                                            movs r3, #1
008a975c  05 1c                                            adds r5, r0, #0
008a975e  0e 1c                                            adds r6, r1, #0
008a9760  04 93                                            str r3, [sp, #0x10]
008a9762  20 68                                            ldr r0, [r4]
008a9764  83 68                                            ldr r3, [r0, #8]
008a9766  c2 68                                            ldr r2, [r0, #0xc]
008a9768  93 42                                            cmp r3, r2
008a976a  3c d2                                            bhs #0x8a97e6
008a976c  01 33                                            adds r3, #1
008a976e  83 60                                            str r3, [r0, #8]
008a9770  00 20                                            movs r0, #0
008a9772  a0 71                                            strb r0, [r4, #6]
008a9774  02 99                                            ldr r1, [sp, #8]
008a9776  20 1c                                            adds r0, r4, #0
008a9778  ff f7 36 ff                                      bl #0x8a95e8
008a977c  00 28                                            cmp r0, #0
008a977e  a9 d0                                            beq #0x8a96d4
008a9780  5c 46                                            mov r4, fp
008a9782  05 99                                            ldr r1, [sp, #0x14]
008a9784  2a 1c                                            adds r2, r5, #0
008a9786  33 1c                                            adds r3, r6, #0
008a9788  00 2c                                            cmp r4, #0
008a978a  04 d0                                            beq #0x8a9796
008a978c  0a 98                                            ldr r0, [sp, #0x28]
008a978e  81 42                                            cmp r1, r0
008a9790  01 d0                                            beq #0x8a9796
008a9792  0f 70                                            strb r7, [r1]
008a9794  01 31                                            adds r1, #1
008a9796  44 46                                            mov r4, r8
008a9798  00 20                                            movs r0, #0
008a979a  00 2c                                            cmp r4, #0
008a979c  09 dd                                            ble #0x8a97b2
008a979e  04 98                                            ldr r0, [sp, #0x10]
008a97a0  00 28                                            cmp r0, #0
008a97a2  33 d0                                            beq #0x8a980c
008a97a4  0c 9a                                            ldr r2, [sp, #0x30]
008a97a6  01 23                                            movs r3, #1
008a97a8  5b 42                                            rsbs r3, r3, #0
008a97aa  dc 17                                            asrs r4, r3, #0x1f
008a97ac  00 20                                            movs r0, #0
008a97ae  13 60                                            str r3, [r2]
008a97b0  54 60                                            str r4, [r2, #4]
008a97b2  07 9c                                            ldr r4, [sp, #0x1c]
008a97b4  09 99                                            ldr r1, [sp, #0x24]
008a97b6  1f 9a                                            ldr r2, [sp, #0x7c]
008a97b8  63 58                                            ldr r3, [r4, r1]
008a97ba  1b 68                                            ldr r3, [r3]
008a97bc  9a 42                                            cmp r2, r3
008a97be  3d d1                                            bne #0x8a983c
008a97c0  21 b0                                            add sp, #0x84
008a97c2  3c bc                                            pop {r2, r3, r4, r5}
008a97c4  90 46                                            mov r8, r2
008a97c6  99 46                                            mov sb, r3
008a97c8  a2 46                                            mov sl, r4
008a97ca  ab 46                                            mov fp, r5
008a97cc  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a97ce  23 79                                            ldrb r3, [r4, #4]
008a97d0  94 e7                                            b #0x8a96fc
008a97d2  0b 9b                                            ldr r3, [sp, #0x2c]
008a97d4  ab 42                                            cmp r3, r5
008a97d6  a9 d2                                            bhs #0x8a972c
008a97d8  01 20                                            movs r0, #1
008a97da  04 90                                            str r0, [sp, #0x10]
008a97dc  20 68                                            ldr r0, [r4]
008a97de  83 68                                            ldr r3, [r0, #8]
008a97e0  c2 68                                            ldr r2, [r0, #0xc]
008a97e2  93 42                                            cmp r3, r2
008a97e4  c2 d3                                            blo #0x8a976c
008a97e6  03 68                                            ldr r3, [r0]
008a97e8  5b 6a                                            ldr r3, [r3, #0x24]
008a97ea  98 47                                            blx r3
008a97ec  c0 e7                                            b #0x8a9770
008a97ee  a8 42                                            cmp r0, r5
008a97f0  b3 d9                                            bls #0x8a975a
008a97f2  05 1c                                            adds r5, r0, #0
008a97f4  0e 1c                                            adds r6, r1, #0
008a97f6  b4 e7                                            b #0x8a9762
008a97f8  05 99                                            ldr r1, [sp, #0x14]
008a97fa  0f 70                                            strb r7, [r1]
008a97fc  01 31                                            adds r1, #1
008a97fe  05 91                                            str r1, [sp, #0x14]
008a9800  00 27                                            movs r7, #0
008a9802  ae e7                                            b #0x8a9762
008a9804  03 68                                            ldr r3, [r0]
008a9806  1b 6a                                            ldr r3, [r3, #0x20]
008a9808  98 47                                            blx r3
008a980a  6e e7                                            b #0x8a96ea
008a980c  0d 9c                                            ldr r4, [sp, #0x34]
008a980e  00 2c                                            cmp r4, #0
008a9810  0d d1                                            bne #0x8a982e
008a9812  0c 9c                                            ldr r4, [sp, #0x30]
008a9814  22 60                                            str r2, [r4]
008a9816  63 60                                            str r3, [r4, #4]
008a9818  5a 46                                            mov r2, fp
008a981a  01 20                                            movs r0, #1
008a981c  00 2a                                            cmp r2, #0
008a981e  c8 d0                                            beq #0x8a97b2
008a9820  08 9b                                            ldr r3, [sp, #0x20]
008a9822  0a 98                                            ldr r0, [sp, #0x28]
008a9824  5a 69                                            ldr r2, [r3, #0x14]
008a9826  1b 69                                            ldr r3, [r3, #0x10]
008a9828  10 f0 24 f8                                      bl #0x8b9874
008a982c  c1 e7                                            b #0x8a97b2
008a982e  0c 98                                            ldr r0, [sp, #0x30]
008a9830  00 24                                            movs r4, #0
008a9832  6b 42                                            rsbs r3, r5, #0
008a9834  b4 41                                            sbcs r4, r6
008a9836  03 60                                            str r3, [r0]
008a9838  44 60                                            str r4, [r0, #4]
008a983a  ed e7                                            b #0x8a9818
008a983c  64 f6 68 e5                                      blx #0x30e310
; mapping-symbol data/literal pool
008a9840  2a b4 0e 00 ac 40 00 00                          .byte 0x2a, 0xb4, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a9848, declared_size=420, range_size=420, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEEtcEEbRT_S6_iRT0_ibT1_RKSsRKSt12__false_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, unsigned short, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, int, unsigned short&, int, bool, char, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&)
; decoder-mode: thumb
008a9848  f0 b5                                            push {r4, r5, r6, r7, lr}
008a984a  5f 46                                            mov r7, fp
008a984c  56 46                                            mov r6, sl
008a984e  4d 46                                            mov r5, sb
008a9850  44 46                                            mov r4, r8
008a9852  f0 b4                                            push {r4, r5, r6, r7}
008a9854  62 4c                                            ldr r4, [pc, #0x188]
008a9856  9d b0                                            sub sp, #0x74
008a9858  08 93                                            str r3, [sp, #0x20]
008a985a  7c 44                                            add r4, pc
008a985c  04 94                                            str r4, [sp, #0x10]
008a985e  26 ab                                            add r3, sp, #0x98
008a9860  04 1c                                            adds r4, r0, #0
008a9862  29 98                                            ldr r0, [sp, #0xa4]
008a9864  80 cb                                            ldm r3!, {r7}
008a9866  90 46                                            mov r8, r2
008a9868  05 90                                            str r0, [sp, #0x14]
008a986a  1b 78                                            ldrb r3, [r3]
008a986c  04 9a                                            ldr r2, [sp, #0x10]
008a986e  8a 46                                            mov sl, r1
008a9870  09 93                                            str r3, [sp, #0x24]
008a9872  28 ab                                            add r3, sp, #0xa0
008a9874  1b 78                                            ldrb r3, [r3]
008a9876  5b 49                                            ldr r1, [pc, #0x16c]
008a9878  00 26                                            movs r6, #0
008a987a  01 93                                            str r3, [sp, #4]
008a987c  53 58                                            ldr r3, [r2, r1]
008a987e  06 91                                            str r1, [sp, #0x18]
008a9880  00 25                                            movs r5, #0
008a9882  1b 68                                            ldr r3, [r3]
008a9884  ab 46                                            mov fp, r5
008a9886  1b 93                                            str r3, [sp, #0x6c]
008a9888  42 69                                            ldr r2, [r0, #0x14]
008a988a  03 69                                            ldr r3, [r0, #0x10]
008a988c  d3 1a                                            subs r3, r2, r3
008a988e  18 1c                                            adds r0, r3, #0
008a9890  42 46                                            mov r2, r8
008a9892  43 1e                                            subs r3, r0, #1
008a9894  98 41                                            sbcs r0, r3
008a9896  11 04                                            lsls r1, r2, #0x10
008a9898  81 46                                            mov sb, r0
008a989a  09 0c                                            lsrs r1, r1, #0x10
008a989c  52 48                                            ldr r0, [pc, #0x148]
008a989e  65 f6 d6 e1                                      blx #0x30ec4c
008a98a2  6b 46                                            mov r3, sp
008a98a4  00 04                                            lsls r0, r0, #0x10
008a98a6  2c 33                                            adds r3, #0x2c
008a98a8  00 0c                                            lsrs r0, r0, #0x10
008a98aa  00 90                                            str r0, [sp]
008a98ac  02 96                                            str r6, [sp, #8]
008a98ae  07 93                                            str r3, [sp, #0x1c]
008a98b0  03 93                                            str r3, [sp, #0xc]
008a98b2  2e e0                                            b #0x8a9912
008a98b4  20 68                                            ldr r0, [r4]
008a98b6  83 68                                            ldr r3, [r0, #8]
008a98b8  c2 68                                            ldr r2, [r0, #0xc]
008a98ba  93 42                                            cmp r3, r2
008a98bc  54 d2                                            bhs #0x8a9968
008a98be  18 78                                            ldrb r0, [r3]
008a98c0  03 06                                            lsls r3, r0, #0x18
008a98c2  01 30                                            adds r0, #1
008a98c4  42 42                                            rsbs r2, r0, #0
008a98c6  42 41                                            adcs r2, r0
008a98c8  1b 0e                                            lsrs r3, r3, #0x18
008a98ca  01 20                                            movs r0, #1
008a98cc  23 71                                            strb r3, [r4, #4]
008a98ce  62 71                                            strb r2, [r4, #5]
008a98d0  a0 71                                            strb r0, [r4, #6]
008a98d2  49 46                                            mov r1, sb
008a98d4  00 29                                            cmp r1, #0
008a98d6  02 d0                                            beq #0x8a98de
008a98d8  01 9a                                            ldr r2, [sp, #4]
008a98da  9a 42                                            cmp r2, r3
008a98dc  3e d0                                            beq #0x8a995c
008a98de  ff 20                                            movs r0, #0xff
008a98e0  7f 2b                                            cmp r3, #0x7f
008a98e2  02 d8                                            bhi #0x8a98ea
008a98e4  18 1c                                            adds r0, r3, #0
008a98e6  0f f0 e9 ff                                      bl #0x8b98bc
008a98ea  80 45                                            cmp r8, r0
008a98ec  40 dd                                            ble #0x8a9970
008a98ee  00 99                                            ldr r1, [sp]
008a98f0  01 36                                            adds r6, #1
008a98f2  36 06                                            lsls r6, r6, #0x18
008a98f4  01 37                                            adds r7, #1
008a98f6  36 0e                                            lsrs r6, r6, #0x18
008a98f8  8d 42                                            cmp r5, r1
008a98fa  15 d9                                            bls #0x8a9928
008a98fc  01 22                                            movs r2, #1
008a98fe  02 92                                            str r2, [sp, #8]
008a9900  20 68                                            ldr r0, [r4]
008a9902  83 68                                            ldr r3, [r0, #8]
008a9904  c2 68                                            ldr r2, [r0, #0xc]
008a9906  93 42                                            cmp r3, r2
008a9908  22 d2                                            bhs #0x8a9950
008a990a  01 33                                            adds r3, #1
008a990c  83 60                                            str r3, [r0, #8]
008a990e  5a 46                                            mov r2, fp
008a9910  a2 71                                            strb r2, [r4, #6]
008a9912  20 1c                                            adds r0, r4, #0
008a9914  51 46                                            mov r1, sl
008a9916  ff f7 67 fe                                      bl #0x8a95e8
008a991a  00 28                                            cmp r0, #0
008a991c  28 d1                                            bne #0x8a9970
008a991e  a3 79                                            ldrb r3, [r4, #6]
008a9920  00 2b                                            cmp r3, #0
008a9922  c7 d0                                            beq #0x8a98b4
008a9924  23 79                                            ldrb r3, [r4, #4]
008a9926  d4 e7                                            b #0x8a98d2
008a9928  43 46                                            mov r3, r8
008a992a  6b 43                                            muls r3, r5, r3
008a992c  c3 18                                            adds r3, r0, r3
008a992e  1b 04                                            lsls r3, r3, #0x10
008a9930  1b 0c                                            lsrs r3, r3, #0x10
008a9932  00 2d                                            cmp r5, #0
008a9934  10 d0                                            beq #0x8a9958
008a9936  02 98                                            ldr r0, [sp, #8]
008a9938  00 28                                            cmp r0, #0
008a993a  0d d1                                            bne #0x8a9958
008a993c  9d 42                                            cmp r5, r3
008a993e  0b d3                                            blo #0x8a9958
008a9940  01 21                                            movs r1, #1
008a9942  02 91                                            str r1, [sp, #8]
008a9944  20 68                                            ldr r0, [r4]
008a9946  1d 1c                                            adds r5, r3, #0
008a9948  c2 68                                            ldr r2, [r0, #0xc]
008a994a  83 68                                            ldr r3, [r0, #8]
008a994c  93 42                                            cmp r3, r2
008a994e  dc d3                                            blo #0x8a990a
008a9950  03 68                                            ldr r3, [r0]
008a9952  5b 6a                                            ldr r3, [r3, #0x24]
008a9954  98 47                                            blx r3
008a9956  da e7                                            b #0x8a990e
008a9958  1d 1c                                            adds r5, r3, #0
008a995a  d1 e7                                            b #0x8a9900
008a995c  03 9b                                            ldr r3, [sp, #0xc]
008a995e  1e 70                                            strb r6, [r3]
008a9960  01 33                                            adds r3, #1
008a9962  03 93                                            str r3, [sp, #0xc]
008a9964  00 26                                            movs r6, #0
008a9966  cb e7                                            b #0x8a9900
008a9968  03 68                                            ldr r3, [r0]
008a996a  1b 6a                                            ldr r3, [r3, #0x20]
008a996c  98 47                                            blx r3
008a996e  a7 e7                                            b #0x8a98c0
008a9970  4b 46                                            mov r3, sb
008a9972  03 99                                            ldr r1, [sp, #0xc]
008a9974  00 2b                                            cmp r3, #0
008a9976  04 d0                                            beq #0x8a9982
008a9978  07 9c                                            ldr r4, [sp, #0x1c]
008a997a  a1 42                                            cmp r1, r4
008a997c  01 d0                                            beq #0x8a9982
008a997e  0e 70                                            strb r6, [r1]
008a9980  01 31                                            adds r1, #1
008a9982  00 20                                            movs r0, #0
008a9984  00 2f                                            cmp r7, #0
008a9986  07 dd                                            ble #0x8a9998
008a9988  02 98                                            ldr r0, [sp, #8]
008a998a  00 28                                            cmp r0, #0
008a998c  12 d0                                            beq #0x8a99b4
008a998e  08 9a                                            ldr r2, [sp, #0x20]
008a9990  01 23                                            movs r3, #1
008a9992  5b 42                                            rsbs r3, r3, #0
008a9994  13 80                                            strh r3, [r2]
008a9996  00 20                                            movs r0, #0
008a9998  04 9c                                            ldr r4, [sp, #0x10]
008a999a  06 99                                            ldr r1, [sp, #0x18]
008a999c  1b 9a                                            ldr r2, [sp, #0x6c]
008a999e  63 58                                            ldr r3, [r4, r1]
008a99a0  1b 68                                            ldr r3, [r3]
008a99a2  9a 42                                            cmp r2, r3
008a99a4  1a d1                                            bne #0x8a99dc
008a99a6  1d b0                                            add sp, #0x74
008a99a8  3c bc                                            pop {r2, r3, r4, r5}
008a99aa  90 46                                            mov r8, r2
008a99ac  99 46                                            mov sb, r3
008a99ae  a2 46                                            mov sl, r4
008a99b0  ab 46                                            mov fp, r5
008a99b2  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a99b4  09 9a                                            ldr r2, [sp, #0x24]
008a99b6  00 2a                                            cmp r2, #0
008a99b8  0c d1                                            bne #0x8a99d4
008a99ba  08 9c                                            ldr r4, [sp, #0x20]
008a99bc  25 80                                            strh r5, [r4]
008a99be  4a 46                                            mov r2, sb
008a99c0  01 20                                            movs r0, #1
008a99c2  00 2a                                            cmp r2, #0
008a99c4  e8 d0                                            beq #0x8a9998
008a99c6  05 9b                                            ldr r3, [sp, #0x14]
008a99c8  07 98                                            ldr r0, [sp, #0x1c]
008a99ca  5a 69                                            ldr r2, [r3, #0x14]
008a99cc  1b 69                                            ldr r3, [r3, #0x10]
008a99ce  0f f0 51 ff                                      bl #0x8b9874
008a99d2  e1 e7                                            b #0x8a9998
008a99d4  08 9b                                            ldr r3, [sp, #0x20]
008a99d6  6d 42                                            rsbs r5, r5, #0
008a99d8  1d 80                                            strh r5, [r3]
008a99da  f0 e7                                            b #0x8a99be
008a99dc  64 f6 98 e4                                      blx #0x30e310
; mapping-symbol data/literal pool
008a99e0  3a b2 0e 00 ac 40 00 00 ff ff 00 00              .byte 0x3a, 0xb2, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00

; FUNCTION 0x008a99ec, declared_size=408, range_size=408, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEEmcEEbRT_S6_iRT0_ibT1_RKSsRKSt12__false_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, unsigned long, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, int, unsigned long&, int, bool, char, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&)
; decoder-mode: thumb
008a99ec  f0 b5                                            push {r4, r5, r6, r7, lr}
008a99ee  5f 46                                            mov r7, fp
008a99f0  56 46                                            mov r6, sl
008a99f2  4d 46                                            mov r5, sb
008a99f4  44 46                                            mov r4, r8
008a99f6  f0 b4                                            push {r4, r5, r6, r7}
008a99f8  60 4c                                            ldr r4, [pc, #0x180]
008a99fa  9d b0                                            sub sp, #0x74
008a99fc  08 93                                            str r3, [sp, #0x20]
008a99fe  7c 44                                            add r4, pc
008a9a00  04 94                                            str r4, [sp, #0x10]
008a9a02  26 ab                                            add r3, sp, #0x98
008a9a04  04 1c                                            adds r4, r0, #0
008a9a06  29 98                                            ldr r0, [sp, #0xa4]
008a9a08  80 cb                                            ldm r3!, {r7}
008a9a0a  90 46                                            mov r8, r2
008a9a0c  05 90                                            str r0, [sp, #0x14]
008a9a0e  1b 78                                            ldrb r3, [r3]
008a9a10  04 9a                                            ldr r2, [sp, #0x10]
008a9a12  8a 46                                            mov sl, r1
008a9a14  09 93                                            str r3, [sp, #0x24]
008a9a16  28 ab                                            add r3, sp, #0xa0
008a9a18  1b 78                                            ldrb r3, [r3]
008a9a1a  59 49                                            ldr r1, [pc, #0x164]
008a9a1c  00 25                                            movs r5, #0
008a9a1e  01 93                                            str r3, [sp, #4]
008a9a20  53 58                                            ldr r3, [r2, r1]
008a9a22  06 91                                            str r1, [sp, #0x18]
008a9a24  41 46                                            mov r1, r8
008a9a26  1b 68                                            ldr r3, [r3]
008a9a28  00 26                                            movs r6, #0
008a9a2a  ab 46                                            mov fp, r5
008a9a2c  1b 93                                            str r3, [sp, #0x6c]
008a9a2e  42 69                                            ldr r2, [r0, #0x14]
008a9a30  03 69                                            ldr r3, [r0, #0x10]
008a9a32  d3 1a                                            subs r3, r2, r3
008a9a34  18 1c                                            adds r0, r3, #0
008a9a36  43 1e                                            subs r3, r0, #1
008a9a38  98 41                                            sbcs r0, r3
008a9a3a  81 46                                            mov sb, r0
008a9a3c  01 20                                            movs r0, #1
008a9a3e  40 42                                            rsbs r0, r0, #0
008a9a40  65 f6 04 e1                                      blx #0x30ec4c
008a9a44  69 46                                            mov r1, sp
008a9a46  2c 31                                            adds r1, #0x2c
008a9a48  00 90                                            str r0, [sp]
008a9a4a  07 91                                            str r1, [sp, #0x1c]
008a9a4c  03 91                                            str r1, [sp, #0xc]
008a9a4e  02 95                                            str r5, [sp, #8]
008a9a50  2e e0                                            b #0x8a9ab0
008a9a52  20 68                                            ldr r0, [r4]
008a9a54  83 68                                            ldr r3, [r0, #8]
008a9a56  c2 68                                            ldr r2, [r0, #0xc]
008a9a58  93 42                                            cmp r3, r2
008a9a5a  52 d2                                            bhs #0x8a9b02
008a9a5c  18 78                                            ldrb r0, [r3]
008a9a5e  03 06                                            lsls r3, r0, #0x18
008a9a60  01 30                                            adds r0, #1
008a9a62  42 42                                            rsbs r2, r0, #0
008a9a64  42 41                                            adcs r2, r0
008a9a66  1b 0e                                            lsrs r3, r3, #0x18
008a9a68  62 71                                            strb r2, [r4, #5]
008a9a6a  01 22                                            movs r2, #1
008a9a6c  23 71                                            strb r3, [r4, #4]
008a9a6e  a2 71                                            strb r2, [r4, #6]
008a9a70  48 46                                            mov r0, sb
008a9a72  00 28                                            cmp r0, #0
008a9a74  02 d0                                            beq #0x8a9a7c
008a9a76  01 99                                            ldr r1, [sp, #4]
008a9a78  99 42                                            cmp r1, r3
008a9a7a  3c d0                                            beq #0x8a9af6
008a9a7c  ff 20                                            movs r0, #0xff
008a9a7e  7f 2b                                            cmp r3, #0x7f
008a9a80  02 d8                                            bhi #0x8a9a88
008a9a82  18 1c                                            adds r0, r3, #0
008a9a84  0f f0 1a ff                                      bl #0x8b98bc
008a9a88  80 45                                            cmp r8, r0
008a9a8a  3e dd                                            ble #0x8a9b0a
008a9a8c  00 9b                                            ldr r3, [sp]
008a9a8e  01 36                                            adds r6, #1
008a9a90  36 06                                            lsls r6, r6, #0x18
008a9a92  01 37                                            adds r7, #1
008a9a94  36 0e                                            lsrs r6, r6, #0x18
008a9a96  9d 42                                            cmp r5, r3
008a9a98  15 d9                                            bls #0x8a9ac6
008a9a9a  01 20                                            movs r0, #1
008a9a9c  02 90                                            str r0, [sp, #8]
008a9a9e  20 68                                            ldr r0, [r4]
008a9aa0  83 68                                            ldr r3, [r0, #8]
008a9aa2  c2 68                                            ldr r2, [r0, #0xc]
008a9aa4  93 42                                            cmp r3, r2
008a9aa6  20 d2                                            bhs #0x8a9aea
008a9aa8  01 33                                            adds r3, #1
008a9aaa  83 60                                            str r3, [r0, #8]
008a9aac  5b 46                                            mov r3, fp
008a9aae  a3 71                                            strb r3, [r4, #6]
008a9ab0  20 1c                                            adds r0, r4, #0
008a9ab2  51 46                                            mov r1, sl
008a9ab4  ff f7 98 fd                                      bl #0x8a95e8
008a9ab8  00 28                                            cmp r0, #0
008a9aba  26 d1                                            bne #0x8a9b0a
008a9abc  a3 79                                            ldrb r3, [r4, #6]
008a9abe  00 2b                                            cmp r3, #0
008a9ac0  c7 d0                                            beq #0x8a9a52
008a9ac2  23 79                                            ldrb r3, [r4, #4]
008a9ac4  d4 e7                                            b #0x8a9a70
008a9ac6  43 46                                            mov r3, r8
008a9ac8  6b 43                                            muls r3, r5, r3
008a9aca  c0 18                                            adds r0, r0, r3
008a9acc  00 2d                                            cmp r5, #0
008a9ace  10 d0                                            beq #0x8a9af2
008a9ad0  02 99                                            ldr r1, [sp, #8]
008a9ad2  00 29                                            cmp r1, #0
008a9ad4  0d d1                                            bne #0x8a9af2
008a9ad6  85 42                                            cmp r5, r0
008a9ad8  0b d3                                            blo #0x8a9af2
008a9ada  01 22                                            movs r2, #1
008a9adc  02 92                                            str r2, [sp, #8]
008a9ade  05 1c                                            adds r5, r0, #0
008a9ae0  20 68                                            ldr r0, [r4]
008a9ae2  83 68                                            ldr r3, [r0, #8]
008a9ae4  c2 68                                            ldr r2, [r0, #0xc]
008a9ae6  93 42                                            cmp r3, r2
008a9ae8  de d3                                            blo #0x8a9aa8
008a9aea  03 68                                            ldr r3, [r0]
008a9aec  5b 6a                                            ldr r3, [r3, #0x24]
008a9aee  98 47                                            blx r3
008a9af0  dc e7                                            b #0x8a9aac
008a9af2  05 1c                                            adds r5, r0, #0
008a9af4  d3 e7                                            b #0x8a9a9e
008a9af6  03 9a                                            ldr r2, [sp, #0xc]
008a9af8  16 70                                            strb r6, [r2]
008a9afa  01 32                                            adds r2, #1
008a9afc  03 92                                            str r2, [sp, #0xc]
008a9afe  00 26                                            movs r6, #0
008a9b00  cd e7                                            b #0x8a9a9e
008a9b02  03 68                                            ldr r3, [r0]
008a9b04  1b 6a                                            ldr r3, [r3, #0x20]
008a9b06  98 47                                            blx r3
008a9b08  a9 e7                                            b #0x8a9a5e
008a9b0a  4c 46                                            mov r4, sb
008a9b0c  03 99                                            ldr r1, [sp, #0xc]
008a9b0e  00 2c                                            cmp r4, #0
008a9b10  04 d0                                            beq #0x8a9b1c
008a9b12  07 98                                            ldr r0, [sp, #0x1c]
008a9b14  81 42                                            cmp r1, r0
008a9b16  01 d0                                            beq #0x8a9b1c
008a9b18  0e 70                                            strb r6, [r1]
008a9b1a  01 31                                            adds r1, #1
008a9b1c  00 20                                            movs r0, #0
008a9b1e  00 2f                                            cmp r7, #0
008a9b20  07 dd                                            ble #0x8a9b32
008a9b22  02 9a                                            ldr r2, [sp, #8]
008a9b24  00 2a                                            cmp r2, #0
008a9b26  12 d0                                            beq #0x8a9b4e
008a9b28  08 9a                                            ldr r2, [sp, #0x20]
008a9b2a  01 23                                            movs r3, #1
008a9b2c  5b 42                                            rsbs r3, r3, #0
008a9b2e  13 60                                            str r3, [r2]
008a9b30  00 20                                            movs r0, #0
008a9b32  04 9c                                            ldr r4, [sp, #0x10]
008a9b34  06 99                                            ldr r1, [sp, #0x18]
008a9b36  1b 9a                                            ldr r2, [sp, #0x6c]
008a9b38  63 58                                            ldr r3, [r4, r1]
008a9b3a  1b 68                                            ldr r3, [r3]
008a9b3c  9a 42                                            cmp r2, r3
008a9b3e  1a d1                                            bne #0x8a9b76
008a9b40  1d b0                                            add sp, #0x74
008a9b42  3c bc                                            pop {r2, r3, r4, r5}
008a9b44  90 46                                            mov r8, r2
008a9b46  99 46                                            mov sb, r3
008a9b48  a2 46                                            mov sl, r4
008a9b4a  ab 46                                            mov fp, r5
008a9b4c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a9b4e  09 9b                                            ldr r3, [sp, #0x24]
008a9b50  00 2b                                            cmp r3, #0
008a9b52  0c d1                                            bne #0x8a9b6e
008a9b54  08 98                                            ldr r0, [sp, #0x20]
008a9b56  05 60                                            str r5, [r0]
008a9b58  4a 46                                            mov r2, sb
008a9b5a  01 20                                            movs r0, #1
008a9b5c  00 2a                                            cmp r2, #0
008a9b5e  e8 d0                                            beq #0x8a9b32
008a9b60  05 9b                                            ldr r3, [sp, #0x14]
008a9b62  07 98                                            ldr r0, [sp, #0x1c]
008a9b64  5a 69                                            ldr r2, [r3, #0x14]
008a9b66  1b 69                                            ldr r3, [r3, #0x10]
008a9b68  0f f0 84 fe                                      bl #0x8b9874
008a9b6c  e1 e7                                            b #0x8a9b32
008a9b6e  08 9c                                            ldr r4, [sp, #0x20]
008a9b70  6d 42                                            rsbs r5, r5, #0
008a9b72  25 60                                            str r5, [r4]
008a9b74  f0 e7                                            b #0x8a9b58
008a9b76  64 f6 cc e3                                      blx #0x30e310
008a9b7a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a9b7c  96 b0 0e 00 ac 40 00 00                          .byte 0x96, 0xb0, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a9dd0, declared_size=552, range_size=552, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEExcEEbRT_S6_iRT0_ibT1_RKSsRKSt11__true_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, long long, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, int, long long&, int, bool, char, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__true_type const&)
; decoder-mode: thumb
008a9dd0  f0 b5                                            push {r4, r5, r6, r7, lr}
008a9dd2  5f 46                                            mov r7, fp
008a9dd4  56 46                                            mov r6, sl
008a9dd6  4d 46                                            mov r5, sb
008a9dd8  44 46                                            mov r4, r8
008a9dda  f0 b4                                            push {r4, r5, r6, r7}
008a9ddc  a3 b0                                            sub sp, #0x8c
008a9dde  84 4c                                            ldr r4, [pc, #0x210]
008a9de0  0f 93                                            str r3, [sp, #0x3c]
008a9de2  92 46                                            mov sl, r2
008a9de4  2c ab                                            add r3, sp, #0xb0
008a9de6  2f 9a                                            ldr r2, [sp, #0xbc]
008a9de8  04 91                                            str r1, [sp, #0x10]
008a9dea  02 cb                                            ldm r3!, {r1}
008a9dec  7c 44                                            add r4, pc
008a9dee  09 94                                            str r4, [sp, #0x24]
008a9df0  0a 92                                            str r2, [sp, #0x28]
008a9df2  1b 78                                            ldrb r3, [r3]
008a9df4  89 46                                            mov sb, r1
008a9df6  09 99                                            ldr r1, [sp, #0x24]
008a9df8  0e 93                                            str r3, [sp, #0x38]
008a9dfa  2e ab                                            add r3, sp, #0xb8
008a9dfc  1b 78                                            ldrb r3, [r3]
008a9dfe  04 1c                                            adds r4, r0, #0
008a9e00  00 26                                            movs r6, #0
008a9e02  00 27                                            movs r7, #0
008a9e04  06 93                                            str r3, [sp, #0x18]
008a9e06  7b 4b                                            ldr r3, [pc, #0x1ec]
008a9e08  0b 93                                            str r3, [sp, #0x2c]
008a9e0a  cb 58                                            ldr r3, [r1, r3]
008a9e0c  1b 68                                            ldr r3, [r3]
008a9e0e  21 93                                            str r3, [sp, #0x84]
008a9e10  13 1c                                            adds r3, r2, #0
008a9e12  1b 69                                            ldr r3, [r3, #0x10]
008a9e14  52 69                                            ldr r2, [r2, #0x14]
008a9e16  d3 1a                                            subs r3, r2, r3
008a9e18  52 46                                            mov r2, sl
008a9e1a  19 1c                                            adds r1, r3, #0
008a9e1c  d2 17                                            asrs r2, r2, #0x1f
008a9e1e  4b 1e                                            subs r3, r1, #1
008a9e20  99 41                                            sbcs r1, r3
008a9e22  08 92                                            str r2, [sp, #0x20]
008a9e24  01 91                                            str r1, [sp, #4]
008a9e26  52 46                                            mov r2, sl
008a9e28  08 9b                                            ldr r3, [sp, #0x20]
008a9e2a  6e 49                                            ldr r1, [pc, #0x1b8]
008a9e2c  6c 48                                            ldr r0, [pc, #0x1b0]
008a9e2e  64 f6 0e e1                                      blx #0x30e04c
008a9e32  6b 46                                            mov r3, sp
008a9e34  8b 46                                            mov fp, r1
008a9e36  00 21                                            movs r1, #0
008a9e38  44 33                                            adds r3, #0x44
008a9e3a  0d 90                                            str r0, [sp, #0x34]
008a9e3c  88 46                                            mov r8, r1
008a9e3e  00 22                                            movs r2, #0
008a9e40  20 1c                                            adds r0, r4, #0
008a9e42  04 99                                            ldr r1, [sp, #0x10]
008a9e44  0c 93                                            str r3, [sp, #0x30]
008a9e46  05 93                                            str r3, [sp, #0x14]
008a9e48  07 92                                            str r2, [sp, #0x1c]
008a9e4a  ff f7 cd fb                                      bl #0x8a95e8
008a9e4e  00 28                                            cmp r0, #0
008a9e50  57 d1                                            bne #0x8a9f02
008a9e52  a3 79                                            ldrb r3, [r4, #6]
008a9e54  00 2b                                            cmp r3, #0
008a9e56  00 d0                                            beq #0x8a9e5a
008a9e58  7d e0                                            b #0x8a9f56
008a9e5a  20 68                                            ldr r0, [r4]
008a9e5c  83 68                                            ldr r3, [r0, #8]
008a9e5e  c2 68                                            ldr r2, [r0, #0xc]
008a9e60  93 42                                            cmp r3, r2
008a9e62  00 d3                                            blo #0x8a9e66
008a9e64  94 e0                                            b #0x8a9f90
008a9e66  1a 78                                            ldrb r2, [r3]
008a9e68  10 06                                            lsls r0, r2, #0x18
008a9e6a  01 32                                            adds r2, #1
008a9e6c  53 42                                            rsbs r3, r2, #0
008a9e6e  53 41                                            adcs r3, r2
008a9e70  00 0e                                            lsrs r0, r0, #0x18
008a9e72  63 71                                            strb r3, [r4, #5]
008a9e74  01 23                                            movs r3, #1
008a9e76  20 71                                            strb r0, [r4, #4]
008a9e78  a3 71                                            strb r3, [r4, #6]
008a9e7a  01 99                                            ldr r1, [sp, #4]
008a9e7c  00 29                                            cmp r1, #0
008a9e7e  03 d0                                            beq #0x8a9e88
008a9e80  06 9a                                            ldr r2, [sp, #0x18]
008a9e82  82 42                                            cmp r2, r0
008a9e84  00 d1                                            bne #0x8a9e88
008a9e86  7b e0                                            b #0x8a9f80
008a9e88  ff 25                                            movs r5, #0xff
008a9e8a  7f 28                                            cmp r0, #0x7f
008a9e8c  02 d8                                            bhi #0x8a9e94
008a9e8e  0f f0 15 fd                                      bl #0x8b98bc
008a9e92  05 1c                                            adds r5, r0, #0
008a9e94  aa 45                                            cmp sl, r5
008a9e96  34 dd                                            ble #0x8a9f02
008a9e98  01 23                                            movs r3, #1
008a9e9a  99 44                                            add sb, r3
008a9e9c  43 46                                            mov r3, r8
008a9e9e  01 33                                            adds r3, #1
008a9ea0  1b 06                                            lsls r3, r3, #0x18
008a9ea2  1b 0e                                            lsrs r3, r3, #0x18
008a9ea4  98 46                                            mov r8, r3
008a9ea6  bb 45                                            cmp fp, r7
008a9ea8  5a dc                                            bgt #0x8a9f60
008a9eaa  bb 45                                            cmp fp, r7
008a9eac  55 d0                                            beq #0x8a9f5a
008a9eae  52 46                                            mov r2, sl
008a9eb0  08 9b                                            ldr r3, [sp, #0x20]
008a9eb2  30 1c                                            adds r0, r6, #0
008a9eb4  39 1c                                            adds r1, r7, #0
008a9eb6  64 f6 50 e5                                      blx #0x30e958
008a9eba  02 95                                            str r5, [sp, #8]
008a9ebc  ed 17                                            asrs r5, r5, #0x1f
008a9ebe  03 95                                            str r5, [sp, #0xc]
008a9ec0  02 9a                                            ldr r2, [sp, #8]
008a9ec2  03 9b                                            ldr r3, [sp, #0xc]
008a9ec4  80 1a                                            subs r0, r0, r2
008a9ec6  99 41                                            sbcs r1, r3
008a9ec8  33 1c                                            adds r3, r6, #0
008a9eca  3b 43                                            orrs r3, r7
008a9ecc  55 d0                                            beq #0x8a9f7a
008a9ece  07 9a                                            ldr r2, [sp, #0x1c]
008a9ed0  00 2a                                            cmp r2, #0
008a9ed2  52 d1                                            bne #0x8a9f7a
008a9ed4  8f 42                                            cmp r7, r1
008a9ed6  50 dc                                            bgt #0x8a9f7a
008a9ed8  8f 42                                            cmp r7, r1
008a9eda  4c d0                                            beq #0x8a9f76
008a9edc  01 23                                            movs r3, #1
008a9ede  06 1c                                            adds r6, r0, #0
008a9ee0  0f 1c                                            adds r7, r1, #0
008a9ee2  07 93                                            str r3, [sp, #0x1c]
008a9ee4  20 68                                            ldr r0, [r4]
008a9ee6  83 68                                            ldr r3, [r0, #8]
008a9ee8  c2 68                                            ldr r2, [r0, #0xc]
008a9eea  93 42                                            cmp r3, r2
008a9eec  3f d2                                            bhs #0x8a9f6e
008a9eee  01 33                                            adds r3, #1
008a9ef0  83 60                                            str r3, [r0, #8]
008a9ef2  00 21                                            movs r1, #0
008a9ef4  a1 71                                            strb r1, [r4, #6]
008a9ef6  20 1c                                            adds r0, r4, #0
008a9ef8  04 99                                            ldr r1, [sp, #0x10]
008a9efa  ff f7 75 fb                                      bl #0x8a95e8
008a9efe  00 28                                            cmp r0, #0
008a9f00  a7 d0                                            beq #0x8a9e52
008a9f02  01 9a                                            ldr r2, [sp, #4]
008a9f04  00 2a                                            cmp r2, #0
008a9f06  08 d0                                            beq #0x8a9f1a
008a9f08  05 9b                                            ldr r3, [sp, #0x14]
008a9f0a  0c 9c                                            ldr r4, [sp, #0x30]
008a9f0c  a3 42                                            cmp r3, r4
008a9f0e  04 d0                                            beq #0x8a9f1a
008a9f10  19 1c                                            adds r1, r3, #0
008a9f12  42 46                                            mov r2, r8
008a9f14  01 31                                            adds r1, #1
008a9f16  1a 70                                            strb r2, [r3]
008a9f18  05 91                                            str r1, [sp, #0x14]
008a9f1a  4b 46                                            mov r3, sb
008a9f1c  00 20                                            movs r0, #0
008a9f1e  00 2b                                            cmp r3, #0
008a9f20  0b dd                                            ble #0x8a9f3a
008a9f22  07 9c                                            ldr r4, [sp, #0x1c]
008a9f24  00 2c                                            cmp r4, #0
008a9f26  38 d0                                            beq #0x8a9f9a
008a9f28  0e 99                                            ldr r1, [sp, #0x38]
008a9f2a  00 29                                            cmp r1, #0
008a9f2c  4a d0                                            beq #0x8a9fc4
008a9f2e  0f 9a                                            ldr r2, [sp, #0x3c]
008a9f30  2c 4c                                            ldr r4, [pc, #0xb0]
008a9f32  2b 4b                                            ldr r3, [pc, #0xac]
008a9f34  00 20                                            movs r0, #0
008a9f36  13 60                                            str r3, [r2]
008a9f38  54 60                                            str r4, [r2, #4]
008a9f3a  0b 9a                                            ldr r2, [sp, #0x2c]
008a9f3c  09 99                                            ldr r1, [sp, #0x24]
008a9f3e  8b 58                                            ldr r3, [r1, r2]
008a9f40  21 9a                                            ldr r2, [sp, #0x84]
008a9f42  1b 68                                            ldr r3, [r3]
008a9f44  9a 42                                            cmp r2, r3
008a9f46  48 d1                                            bne #0x8a9fda
008a9f48  23 b0                                            add sp, #0x8c
008a9f4a  3c bc                                            pop {r2, r3, r4, r5}
008a9f4c  90 46                                            mov r8, r2
008a9f4e  99 46                                            mov sb, r3
008a9f50  a2 46                                            mov sl, r4
008a9f52  ab 46                                            mov fp, r5
008a9f54  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a9f56  20 79                                            ldrb r0, [r4, #4]
008a9f58  8f e7                                            b #0x8a9e7a
008a9f5a  0d 99                                            ldr r1, [sp, #0x34]
008a9f5c  b1 42                                            cmp r1, r6
008a9f5e  a6 d9                                            bls #0x8a9eae
008a9f60  01 22                                            movs r2, #1
008a9f62  07 92                                            str r2, [sp, #0x1c]
008a9f64  20 68                                            ldr r0, [r4]
008a9f66  83 68                                            ldr r3, [r0, #8]
008a9f68  c2 68                                            ldr r2, [r0, #0xc]
008a9f6a  93 42                                            cmp r3, r2
008a9f6c  bf d3                                            blo #0x8a9eee
008a9f6e  03 68                                            ldr r3, [r0]
008a9f70  5b 6a                                            ldr r3, [r3, #0x24]
008a9f72  98 47                                            blx r3
008a9f74  bd e7                                            b #0x8a9ef2
008a9f76  86 42                                            cmp r6, r0
008a9f78  b0 d9                                            bls #0x8a9edc
008a9f7a  06 1c                                            adds r6, r0, #0
008a9f7c  0f 1c                                            adds r7, r1, #0
008a9f7e  b1 e7                                            b #0x8a9ee4
008a9f80  05 9b                                            ldr r3, [sp, #0x14]
008a9f82  41 46                                            mov r1, r8
008a9f84  00 22                                            movs r2, #0
008a9f86  19 70                                            strb r1, [r3]
008a9f88  01 33                                            adds r3, #1
008a9f8a  05 93                                            str r3, [sp, #0x14]
008a9f8c  90 46                                            mov r8, r2
008a9f8e  a9 e7                                            b #0x8a9ee4
008a9f90  03 68                                            ldr r3, [r0]
008a9f92  1b 6a                                            ldr r3, [r3, #0x20]
008a9f94  98 47                                            blx r3
008a9f96  02 1c                                            adds r2, r0, #0
008a9f98  66 e7                                            b #0x8a9e68
008a9f9a  0e 9a                                            ldr r2, [sp, #0x38]
008a9f9c  00 2a                                            cmp r2, #0
008a9f9e  18 d1                                            bne #0x8a9fd2
008a9fa0  0f 99                                            ldr r1, [sp, #0x3c]
008a9fa2  00 24                                            movs r4, #0
008a9fa4  73 42                                            rsbs r3, r6, #0
008a9fa6  bc 41                                            sbcs r4, r7
008a9fa8  0b 60                                            str r3, [r1]
008a9faa  4c 60                                            str r4, [r1, #4]
008a9fac  01 9b                                            ldr r3, [sp, #4]
008a9fae  01 20                                            movs r0, #1
008a9fb0  00 2b                                            cmp r3, #0
008a9fb2  c2 d0                                            beq #0x8a9f3a
008a9fb4  0a 9c                                            ldr r4, [sp, #0x28]
008a9fb6  0c 98                                            ldr r0, [sp, #0x30]
008a9fb8  05 99                                            ldr r1, [sp, #0x14]
008a9fba  62 69                                            ldr r2, [r4, #0x14]
008a9fbc  23 69                                            ldr r3, [r4, #0x10]
008a9fbe  0f f0 59 fc                                      bl #0x8b9874
008a9fc2  ba e7                                            b #0x8a9f3a
008a9fc4  0f 99                                            ldr r1, [sp, #0x3c]
008a9fc6  08 4b                                            ldr r3, [pc, #0x20]
008a9fc8  08 4c                                            ldr r4, [pc, #0x20]
008a9fca  00 20                                            movs r0, #0
008a9fcc  0b 60                                            str r3, [r1]
008a9fce  4c 60                                            str r4, [r1, #4]
008a9fd0  b3 e7                                            b #0x8a9f3a
008a9fd2  0f 9a                                            ldr r2, [sp, #0x3c]
008a9fd4  16 60                                            str r6, [r2]
008a9fd6  57 60                                            str r7, [r2, #4]
008a9fd8  e8 e7                                            b #0x8a9fac
008a9fda  64 f6 9a e1                                      blx #0x30e310
008a9fde  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a9fe0  00 00 00 00 00 00 00 80 ff ff ff ff ff ff ff 7f  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x7f
008a9ff0  a8 ac 0e 00 ac 40 00 00                          .byte 0xa8, 0xac, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008a9ff8, declared_size=280, range_size=280, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv21__copy_grouped_digitsISt19istreambuf_iteratorIcSt11char_traitsIcEEcEEbRT_S5_RNS_16__basic_iostringIcEEPKT0_SA_RKSsRb
; demangled: bool std::priv::__copy_grouped_digits<std::istreambuf_iterator<char, std::char_traits<char> >, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >, std::priv::__basic_iostring<char>&, char const*, char, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, bool&)
; decoder-mode: thumb
008a9ff8  f0 b5                                            push {r4, r5, r6, r7, lr}
008a9ffa  5f 46                                            mov r7, fp
008a9ffc  56 46                                            mov r6, sl
008a9ffe  4d 46                                            mov r5, sb
008aa000  44 46                                            mov r4, r8
008aa002  f0 b4                                            push {r4, r5, r6, r7}
008aa004  40 4c                                            ldr r4, [pc, #0x100]
008aa006  9b b0                                            sub sp, #0x6c
008aa008  06 af                                            add r7, sp, #0x18
008aa00a  7a 60                                            str r2, [r7, #4]
008aa00c  7c 44                                            add r4, pc
008aa00e  01 94                                            str r4, [sp, #4]
008aa010  04 1c                                            adds r4, r0, #0
008aa012  26 98                                            ldr r0, [sp, #0x98]
008aa014  00 93                                            str r3, [sp]
008aa016  25 ab                                            add r3, sp, #0x94
008aa018  3c 4a                                            ldr r2, [pc, #0xf0]
008aa01a  1b 78                                            ldrb r3, [r3]
008aa01c  03 90                                            str r0, [sp, #0xc]
008aa01e  01 98                                            ldr r0, [sp, #4]
008aa020  98 46                                            mov r8, r3
008aa022  06 91                                            str r1, [sp, #0x18]
008aa024  83 58                                            ldr r3, [r0, r2]
008aa026  27 99                                            ldr r1, [sp, #0x9c]
008aa028  00 25                                            movs r5, #0
008aa02a  1b 68                                            ldr r3, [r3]
008aa02c  05 91                                            str r1, [sp, #0x14]
008aa02e  69 46                                            mov r1, sp
008aa030  24 31                                            adds r1, #0x24
008aa032  04 92                                            str r2, [sp, #0x10]
008aa034  01 22                                            movs r2, #1
008aa036  19 93                                            str r3, [sp, #0x64]
008aa038  02 91                                            str r1, [sp, #8]
008aa03a  0e 1c                                            adds r6, r1, #0
008aa03c  ab 46                                            mov fp, r5
008aa03e  92 46                                            mov sl, r2
008aa040  a9 46                                            mov sb, r5
008aa042  27 e0                                            b #0x8aa094
008aa044  20 68                                            ldr r0, [r4]
008aa046  83 68                                            ldr r3, [r0, #8]
008aa048  c2 68                                            ldr r2, [r0, #0xc]
008aa04a  93 42                                            cmp r3, r2
008aa04c  3a d2                                            bhs #0x8aa0c4
008aa04e  18 78                                            ldrb r0, [r3]
008aa050  01 06                                            lsls r1, r0, #0x18
008aa052  01 30                                            adds r0, #1
008aa054  43 42                                            rsbs r3, r0, #0
008aa056  43 41                                            adcs r3, r0
008aa058  09 0e                                            lsrs r1, r1, #0x18
008aa05a  63 71                                            strb r3, [r4, #5]
008aa05c  53 46                                            mov r3, sl
008aa05e  21 71                                            strb r1, [r4, #4]
008aa060  a3 71                                            strb r3, [r4, #6]
008aa062  88 45                                            cmp r8, r1
008aa064  22 d0                                            beq #0x8aa0ac
008aa066  0b 1c                                            adds r3, r1, #0
008aa068  30 3b                                            subs r3, #0x30
008aa06a  1b 06                                            lsls r3, r3, #0x18
008aa06c  1b 0e                                            lsrs r3, r3, #0x18
008aa06e  09 2b                                            cmp r3, #9
008aa070  2c d8                                            bhi #0x8aa0cc
008aa072  00 98                                            ldr r0, [sp]
008aa074  fe f7 ba fa                                      bl #0x8a85ec
008aa078  01 20                                            movs r0, #1
008aa07a  83 46                                            mov fp, r0
008aa07c  20 68                                            ldr r0, [r4]
008aa07e  01 35                                            adds r5, #1
008aa080  2d 06                                            lsls r5, r5, #0x18
008aa082  83 68                                            ldr r3, [r0, #8]
008aa084  c2 68                                            ldr r2, [r0, #0xc]
008aa086  2d 0e                                            lsrs r5, r5, #0x18
008aa088  93 42                                            cmp r3, r2
008aa08a  17 d2                                            bhs #0x8aa0bc
008aa08c  01 33                                            adds r3, #1
008aa08e  83 60                                            str r3, [r0, #8]
008aa090  49 46                                            mov r1, sb
008aa092  a1 71                                            strb r1, [r4, #6]
008aa094  20 1c                                            adds r0, r4, #0
008aa096  39 1c                                            adds r1, r7, #0
008aa098  ff f7 a6 fa                                      bl #0x8a95e8
008aa09c  00 28                                            cmp r0, #0
008aa09e  15 d1                                            bne #0x8aa0cc
008aa0a0  a3 79                                            ldrb r3, [r4, #6]
008aa0a2  00 2b                                            cmp r3, #0
008aa0a4  ce d0                                            beq #0x8aa044
008aa0a6  21 79                                            ldrb r1, [r4, #4]
008aa0a8  88 45                                            cmp r8, r1
008aa0aa  dc d1                                            bne #0x8aa066
008aa0ac  35 70                                            strb r5, [r6]
008aa0ae  20 68                                            ldr r0, [r4]
008aa0b0  01 36                                            adds r6, #1
008aa0b2  00 25                                            movs r5, #0
008aa0b4  83 68                                            ldr r3, [r0, #8]
008aa0b6  c2 68                                            ldr r2, [r0, #0xc]
008aa0b8  93 42                                            cmp r3, r2
008aa0ba  e7 d3                                            blo #0x8aa08c
008aa0bc  03 68                                            ldr r3, [r0]
008aa0be  5b 6a                                            ldr r3, [r3, #0x24]
008aa0c0  98 47                                            blx r3
008aa0c2  e5 e7                                            b #0x8aa090
008aa0c4  03 68                                            ldr r3, [r0]
008aa0c6  1b 6a                                            ldr r3, [r3, #0x20]
008aa0c8  98 47                                            blx r3
008aa0ca  c1 e7                                            b #0x8aa050
008aa0cc  02 99                                            ldr r1, [sp, #8]
008aa0ce  8e 42                                            cmp r6, r1
008aa0d0  01 d0                                            beq #0x8aa0d6
008aa0d2  35 70                                            strb r5, [r6]
008aa0d4  71 1c                                            adds r1, r6, #1
008aa0d6  03 9b                                            ldr r3, [sp, #0xc]
008aa0d8  02 98                                            ldr r0, [sp, #8]
008aa0da  5a 69                                            ldr r2, [r3, #0x14]
008aa0dc  1b 69                                            ldr r3, [r3, #0x10]
008aa0de  0f f0 c9 fb                                      bl #0x8b9874
008aa0e2  05 9c                                            ldr r4, [sp, #0x14]
008aa0e4  20 70                                            strb r0, [r4]
008aa0e6  04 9a                                            ldr r2, [sp, #0x10]
008aa0e8  01 99                                            ldr r1, [sp, #4]
008aa0ea  58 46                                            mov r0, fp
008aa0ec  8b 58                                            ldr r3, [r1, r2]
008aa0ee  19 9a                                            ldr r2, [sp, #0x64]
008aa0f0  1b 68                                            ldr r3, [r3]
008aa0f2  9a 42                                            cmp r2, r3
008aa0f4  06 d1                                            bne #0x8aa104
008aa0f6  1b b0                                            add sp, #0x6c
008aa0f8  3c bc                                            pop {r2, r3, r4, r5}
008aa0fa  90 46                                            mov r8, r2
008aa0fc  99 46                                            mov sb, r3
008aa0fe  a2 46                                            mov sl, r4
008aa100  ab 46                                            mov fp, r5
008aa102  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aa104  64 f6 04 e1                                      blx #0x30e310
; mapping-symbol data/literal pool
008aa108  88 aa 0e 00 ac 40 00 00                          .byte 0x88, 0xaa, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008aa110, declared_size=436, range_size=436, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEElcEEbRT_S6_iRT0_ibT1_RKSsRKSt11__true_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, long, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, int, long&, int, bool, char, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__true_type const&)
; decoder-mode: thumb
008aa110  f0 b5                                            push {r4, r5, r6, r7, lr}
008aa112  5f 46                                            mov r7, fp
008aa114  56 46                                            mov r6, sl
008aa116  4d 46                                            mov r5, sb
008aa118  44 46                                            mov r4, r8
008aa11a  f0 b4                                            push {r4, r5, r6, r7}
008aa11c  9d b0                                            sub sp, #0x74
008aa11e  66 4c                                            ldr r4, [pc, #0x198]
008aa120  09 93                                            str r3, [sp, #0x24]
008aa122  8a 46                                            mov sl, r1
008aa124  26 ab                                            add r3, sp, #0x98
008aa126  29 99                                            ldr r1, [sp, #0xa4]
008aa128  80 cb                                            ldm r3!, {r7}
008aa12a  7c 44                                            add r4, pc
008aa12c  04 94                                            str r4, [sp, #0x10]
008aa12e  05 91                                            str r1, [sp, #0x14]
008aa130  1b 78                                            ldrb r3, [r3]
008aa132  90 46                                            mov r8, r2
008aa134  04 99                                            ldr r1, [sp, #0x10]
008aa136  08 93                                            str r3, [sp, #0x20]
008aa138  28 ab                                            add r3, sp, #0xa0
008aa13a  1b 78                                            ldrb r3, [r3]
008aa13c  5f 4a                                            ldr r2, [pc, #0x17c]
008aa13e  04 1c                                            adds r4, r0, #0
008aa140  02 93                                            str r3, [sp, #8]
008aa142  8b 58                                            ldr r3, [r1, r2]
008aa144  06 92                                            str r2, [sp, #0x18]
008aa146  80 20                                            movs r0, #0x80
008aa148  1b 68                                            ldr r3, [r3]
008aa14a  00 06                                            lsls r0, r0, #0x18
008aa14c  00 25                                            movs r5, #0
008aa14e  1b 93                                            str r3, [sp, #0x6c]
008aa150  05 9b                                            ldr r3, [sp, #0x14]
008aa152  00 26                                            movs r6, #0
008aa154  ab 46                                            mov fp, r5
008aa156  5a 69                                            ldr r2, [r3, #0x14]
008aa158  1b 69                                            ldr r3, [r3, #0x10]
008aa15a  d3 1a                                            subs r3, r2, r3
008aa15c  19 1c                                            adds r1, r3, #0
008aa15e  4b 1e                                            subs r3, r1, #1
008aa160  99 41                                            sbcs r1, r3
008aa162  89 46                                            mov sb, r1
008aa164  41 46                                            mov r1, r8
008aa166  64 f6 9e e0                                      blx #0x30e2a4
008aa16a  6a 46                                            mov r2, sp
008aa16c  2c 32                                            adds r2, #0x2c
008aa16e  00 90                                            str r0, [sp]
008aa170  07 92                                            str r2, [sp, #0x1c]
008aa172  01 92                                            str r2, [sp, #4]
008aa174  03 95                                            str r5, [sp, #0xc]
008aa176  2e e0                                            b #0x8aa1d6
008aa178  20 68                                            ldr r0, [r4]
008aa17a  83 68                                            ldr r3, [r0, #8]
008aa17c  c2 68                                            ldr r2, [r0, #0xc]
008aa17e  93 42                                            cmp r3, r2
008aa180  52 d2                                            bhs #0x8aa228
008aa182  18 78                                            ldrb r0, [r3]
008aa184  03 06                                            lsls r3, r0, #0x18
008aa186  01 30                                            adds r0, #1
008aa188  1b 0e                                            lsrs r3, r3, #0x18
008aa18a  42 42                                            rsbs r2, r0, #0
008aa18c  42 41                                            adcs r2, r0
008aa18e  01 21                                            movs r1, #1
008aa190  23 71                                            strb r3, [r4, #4]
008aa192  62 71                                            strb r2, [r4, #5]
008aa194  a1 71                                            strb r1, [r4, #6]
008aa196  4a 46                                            mov r2, sb
008aa198  00 2a                                            cmp r2, #0
008aa19a  02 d0                                            beq #0x8aa1a2
008aa19c  02 99                                            ldr r1, [sp, #8]
008aa19e  99 42                                            cmp r1, r3
008aa1a0  3c d0                                            beq #0x8aa21c
008aa1a2  ff 20                                            movs r0, #0xff
008aa1a4  7f 2b                                            cmp r3, #0x7f
008aa1a6  02 d8                                            bhi #0x8aa1ae
008aa1a8  18 1c                                            adds r0, r3, #0
008aa1aa  0f f0 87 fb                                      bl #0x8b98bc
008aa1ae  80 45                                            cmp r8, r0
008aa1b0  3e dd                                            ble #0x8aa230
008aa1b2  00 9b                                            ldr r3, [sp]
008aa1b4  01 36                                            adds r6, #1
008aa1b6  36 06                                            lsls r6, r6, #0x18
008aa1b8  01 37                                            adds r7, #1
008aa1ba  36 0e                                            lsrs r6, r6, #0x18
008aa1bc  9d 42                                            cmp r5, r3
008aa1be  15 da                                            bge #0x8aa1ec
008aa1c0  01 21                                            movs r1, #1
008aa1c2  03 91                                            str r1, [sp, #0xc]
008aa1c4  20 68                                            ldr r0, [r4]
008aa1c6  83 68                                            ldr r3, [r0, #8]
008aa1c8  c2 68                                            ldr r2, [r0, #0xc]
008aa1ca  93 42                                            cmp r3, r2
008aa1cc  20 d2                                            bhs #0x8aa210
008aa1ce  01 33                                            adds r3, #1
008aa1d0  83 60                                            str r3, [r0, #8]
008aa1d2  59 46                                            mov r1, fp
008aa1d4  a1 71                                            strb r1, [r4, #6]
008aa1d6  20 1c                                            adds r0, r4, #0
008aa1d8  51 46                                            mov r1, sl
008aa1da  ff f7 05 fa                                      bl #0x8a95e8
008aa1de  00 28                                            cmp r0, #0
008aa1e0  26 d1                                            bne #0x8aa230
008aa1e2  a3 79                                            ldrb r3, [r4, #6]
008aa1e4  00 2b                                            cmp r3, #0
008aa1e6  c7 d0                                            beq #0x8aa178
008aa1e8  23 79                                            ldrb r3, [r4, #4]
008aa1ea  d4 e7                                            b #0x8aa196
008aa1ec  43 46                                            mov r3, r8
008aa1ee  6b 43                                            muls r3, r5, r3
008aa1f0  18 1a                                            subs r0, r3, r0
008aa1f2  00 2d                                            cmp r5, #0
008aa1f4  10 d0                                            beq #0x8aa218
008aa1f6  03 9a                                            ldr r2, [sp, #0xc]
008aa1f8  00 2a                                            cmp r2, #0
008aa1fa  0d d1                                            bne #0x8aa218
008aa1fc  85 42                                            cmp r5, r0
008aa1fe  0b dc                                            bgt #0x8aa218
008aa200  01 23                                            movs r3, #1
008aa202  03 93                                            str r3, [sp, #0xc]
008aa204  05 1c                                            adds r5, r0, #0
008aa206  20 68                                            ldr r0, [r4]
008aa208  83 68                                            ldr r3, [r0, #8]
008aa20a  c2 68                                            ldr r2, [r0, #0xc]
008aa20c  93 42                                            cmp r3, r2
008aa20e  de d3                                            blo #0x8aa1ce
008aa210  03 68                                            ldr r3, [r0]
008aa212  5b 6a                                            ldr r3, [r3, #0x24]
008aa214  98 47                                            blx r3
008aa216  dc e7                                            b #0x8aa1d2
008aa218  05 1c                                            adds r5, r0, #0
008aa21a  d3 e7                                            b #0x8aa1c4
008aa21c  01 9a                                            ldr r2, [sp, #4]
008aa21e  16 70                                            strb r6, [r2]
008aa220  01 32                                            adds r2, #1
008aa222  01 92                                            str r2, [sp, #4]
008aa224  00 26                                            movs r6, #0
008aa226  cd e7                                            b #0x8aa1c4
008aa228  03 68                                            ldr r3, [r0]
008aa22a  1b 6a                                            ldr r3, [r3, #0x20]
008aa22c  98 47                                            blx r3
008aa22e  a9 e7                                            b #0x8aa184
008aa230  4a 46                                            mov r2, sb
008aa232  00 2a                                            cmp r2, #0
008aa234  07 d0                                            beq #0x8aa246
008aa236  01 9b                                            ldr r3, [sp, #4]
008aa238  07 9c                                            ldr r4, [sp, #0x1c]
008aa23a  a3 42                                            cmp r3, r4
008aa23c  03 d0                                            beq #0x8aa246
008aa23e  19 1c                                            adds r1, r3, #0
008aa240  01 31                                            adds r1, #1
008aa242  1e 70                                            strb r6, [r3]
008aa244  01 91                                            str r1, [sp, #4]
008aa246  00 20                                            movs r0, #0
008aa248  00 2f                                            cmp r7, #0
008aa24a  0a dd                                            ble #0x8aa262
008aa24c  03 9a                                            ldr r2, [sp, #0xc]
008aa24e  00 2a                                            cmp r2, #0
008aa250  15 d0                                            beq #0x8aa27e
008aa252  08 9b                                            ldr r3, [sp, #0x20]
008aa254  00 2b                                            cmp r3, #0
008aa256  24 d0                                            beq #0x8aa2a2
008aa258  09 9a                                            ldr r2, [sp, #0x24]
008aa25a  80 23                                            movs r3, #0x80
008aa25c  1b 06                                            lsls r3, r3, #0x18
008aa25e  13 60                                            str r3, [r2]
008aa260  00 20                                            movs r0, #0
008aa262  06 9a                                            ldr r2, [sp, #0x18]
008aa264  04 99                                            ldr r1, [sp, #0x10]
008aa266  8b 58                                            ldr r3, [r1, r2]
008aa268  1b 9a                                            ldr r2, [sp, #0x6c]
008aa26a  1b 68                                            ldr r3, [r3]
008aa26c  9a 42                                            cmp r2, r3
008aa26e  20 d1                                            bne #0x8aa2b2
008aa270  1d b0                                            add sp, #0x74
008aa272  3c bc                                            pop {r2, r3, r4, r5}
008aa274  90 46                                            mov r8, r2
008aa276  99 46                                            mov sb, r3
008aa278  a2 46                                            mov sl, r4
008aa27a  ab 46                                            mov fp, r5
008aa27c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aa27e  08 9c                                            ldr r4, [sp, #0x20]
008aa280  00 2c                                            cmp r4, #0
008aa282  13 d1                                            bne #0x8aa2ac
008aa284  09 99                                            ldr r1, [sp, #0x24]
008aa286  6d 42                                            rsbs r5, r5, #0
008aa288  0d 60                                            str r5, [r1]
008aa28a  4b 46                                            mov r3, sb
008aa28c  01 20                                            movs r0, #1
008aa28e  00 2b                                            cmp r3, #0
008aa290  e7 d0                                            beq #0x8aa262
008aa292  05 9c                                            ldr r4, [sp, #0x14]
008aa294  07 98                                            ldr r0, [sp, #0x1c]
008aa296  01 99                                            ldr r1, [sp, #4]
008aa298  62 69                                            ldr r2, [r4, #0x14]
008aa29a  23 69                                            ldr r3, [r4, #0x10]
008aa29c  0f f0 ea fa                                      bl #0x8b9874
008aa2a0  df e7                                            b #0x8aa262
008aa2a2  07 4b                                            ldr r3, [pc, #0x1c]
008aa2a4  09 9c                                            ldr r4, [sp, #0x24]
008aa2a6  00 20                                            movs r0, #0
008aa2a8  23 60                                            str r3, [r4]
008aa2aa  da e7                                            b #0x8aa262
008aa2ac  09 99                                            ldr r1, [sp, #0x24]
008aa2ae  0d 60                                            str r5, [r1]
008aa2b0  eb e7                                            b #0x8aa28a
008aa2b2  64 f6 2e e0                                      blx #0x30e310
008aa2b6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008aa2b8  6a a9 0e 00 ac 40 00 00 ff ff ff 7f              .byte 0x6a, 0xa9, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xff, 0xff, 0xff, 0x7f

; FUNCTION 0x008aa2c4, declared_size=408, range_size=408, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIcSt11char_traitsIcEEjcEEbRT_S6_iRT0_ibT1_RKSsRKSt12__false_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<char, std::char_traits<char> >, unsigned int, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, int, unsigned int&, int, bool, char, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&)
; decoder-mode: thumb
008aa2c4  f0 b5                                            push {r4, r5, r6, r7, lr}
008aa2c6  5f 46                                            mov r7, fp
008aa2c8  56 46                                            mov r6, sl
008aa2ca  4d 46                                            mov r5, sb
008aa2cc  44 46                                            mov r4, r8
008aa2ce  f0 b4                                            push {r4, r5, r6, r7}
008aa2d0  60 4c                                            ldr r4, [pc, #0x180]
008aa2d2  9d b0                                            sub sp, #0x74
008aa2d4  08 93                                            str r3, [sp, #0x20]
008aa2d6  7c 44                                            add r4, pc
008aa2d8  04 94                                            str r4, [sp, #0x10]
008aa2da  26 ab                                            add r3, sp, #0x98
008aa2dc  04 1c                                            adds r4, r0, #0
008aa2de  29 98                                            ldr r0, [sp, #0xa4]
008aa2e0  80 cb                                            ldm r3!, {r7}
008aa2e2  90 46                                            mov r8, r2
008aa2e4  05 90                                            str r0, [sp, #0x14]
008aa2e6  1b 78                                            ldrb r3, [r3]
008aa2e8  04 9a                                            ldr r2, [sp, #0x10]
008aa2ea  8a 46                                            mov sl, r1
008aa2ec  09 93                                            str r3, [sp, #0x24]
008aa2ee  28 ab                                            add r3, sp, #0xa0
008aa2f0  1b 78                                            ldrb r3, [r3]
008aa2f2  59 49                                            ldr r1, [pc, #0x164]
008aa2f4  00 25                                            movs r5, #0
008aa2f6  01 93                                            str r3, [sp, #4]
008aa2f8  53 58                                            ldr r3, [r2, r1]
008aa2fa  06 91                                            str r1, [sp, #0x18]
008aa2fc  41 46                                            mov r1, r8
008aa2fe  1b 68                                            ldr r3, [r3]
008aa300  00 26                                            movs r6, #0
008aa302  ab 46                                            mov fp, r5
008aa304  1b 93                                            str r3, [sp, #0x6c]
008aa306  42 69                                            ldr r2, [r0, #0x14]
008aa308  03 69                                            ldr r3, [r0, #0x10]
008aa30a  d3 1a                                            subs r3, r2, r3
008aa30c  18 1c                                            adds r0, r3, #0
008aa30e  43 1e                                            subs r3, r0, #1
008aa310  98 41                                            sbcs r0, r3
008aa312  81 46                                            mov sb, r0
008aa314  01 20                                            movs r0, #1
008aa316  40 42                                            rsbs r0, r0, #0
008aa318  64 f6 98 e4                                      blx #0x30ec4c
008aa31c  69 46                                            mov r1, sp
008aa31e  2c 31                                            adds r1, #0x2c
008aa320  00 90                                            str r0, [sp]
008aa322  07 91                                            str r1, [sp, #0x1c]
008aa324  03 91                                            str r1, [sp, #0xc]
008aa326  02 95                                            str r5, [sp, #8]
008aa328  2e e0                                            b #0x8aa388
008aa32a  20 68                                            ldr r0, [r4]
008aa32c  83 68                                            ldr r3, [r0, #8]
008aa32e  c2 68                                            ldr r2, [r0, #0xc]
008aa330  93 42                                            cmp r3, r2
008aa332  52 d2                                            bhs #0x8aa3da
008aa334  18 78                                            ldrb r0, [r3]
008aa336  03 06                                            lsls r3, r0, #0x18
008aa338  01 30                                            adds r0, #1
008aa33a  42 42                                            rsbs r2, r0, #0
008aa33c  42 41                                            adcs r2, r0
008aa33e  1b 0e                                            lsrs r3, r3, #0x18
008aa340  62 71                                            strb r2, [r4, #5]
008aa342  01 22                                            movs r2, #1
008aa344  23 71                                            strb r3, [r4, #4]
008aa346  a2 71                                            strb r2, [r4, #6]
008aa348  48 46                                            mov r0, sb
008aa34a  00 28                                            cmp r0, #0
008aa34c  02 d0                                            beq #0x8aa354
008aa34e  01 99                                            ldr r1, [sp, #4]
008aa350  99 42                                            cmp r1, r3
008aa352  3c d0                                            beq #0x8aa3ce
008aa354  ff 20                                            movs r0, #0xff
008aa356  7f 2b                                            cmp r3, #0x7f
008aa358  02 d8                                            bhi #0x8aa360
008aa35a  18 1c                                            adds r0, r3, #0
008aa35c  0f f0 ae fa                                      bl #0x8b98bc
008aa360  80 45                                            cmp r8, r0
008aa362  3e dd                                            ble #0x8aa3e2
008aa364  00 9b                                            ldr r3, [sp]
008aa366  01 36                                            adds r6, #1
008aa368  36 06                                            lsls r6, r6, #0x18
008aa36a  01 37                                            adds r7, #1
008aa36c  36 0e                                            lsrs r6, r6, #0x18
008aa36e  9d 42                                            cmp r5, r3
008aa370  15 d9                                            bls #0x8aa39e
008aa372  01 20                                            movs r0, #1
008aa374  02 90                                            str r0, [sp, #8]
008aa376  20 68                                            ldr r0, [r4]
008aa378  83 68                                            ldr r3, [r0, #8]
008aa37a  c2 68                                            ldr r2, [r0, #0xc]
008aa37c  93 42                                            cmp r3, r2
008aa37e  20 d2                                            bhs #0x8aa3c2
008aa380  01 33                                            adds r3, #1
008aa382  83 60                                            str r3, [r0, #8]
008aa384  5b 46                                            mov r3, fp
008aa386  a3 71                                            strb r3, [r4, #6]
008aa388  20 1c                                            adds r0, r4, #0
008aa38a  51 46                                            mov r1, sl
008aa38c  ff f7 2c f9                                      bl #0x8a95e8
008aa390  00 28                                            cmp r0, #0
008aa392  26 d1                                            bne #0x8aa3e2
008aa394  a3 79                                            ldrb r3, [r4, #6]
008aa396  00 2b                                            cmp r3, #0
008aa398  c7 d0                                            beq #0x8aa32a
008aa39a  23 79                                            ldrb r3, [r4, #4]
008aa39c  d4 e7                                            b #0x8aa348
008aa39e  43 46                                            mov r3, r8
008aa3a0  6b 43                                            muls r3, r5, r3
008aa3a2  c0 18                                            adds r0, r0, r3
008aa3a4  00 2d                                            cmp r5, #0
008aa3a6  10 d0                                            beq #0x8aa3ca
008aa3a8  02 99                                            ldr r1, [sp, #8]
008aa3aa  00 29                                            cmp r1, #0
008aa3ac  0d d1                                            bne #0x8aa3ca
008aa3ae  85 42                                            cmp r5, r0
008aa3b0  0b d3                                            blo #0x8aa3ca
008aa3b2  01 22                                            movs r2, #1
008aa3b4  02 92                                            str r2, [sp, #8]
008aa3b6  05 1c                                            adds r5, r0, #0
008aa3b8  20 68                                            ldr r0, [r4]
008aa3ba  83 68                                            ldr r3, [r0, #8]
008aa3bc  c2 68                                            ldr r2, [r0, #0xc]
008aa3be  93 42                                            cmp r3, r2
008aa3c0  de d3                                            blo #0x8aa380
008aa3c2  03 68                                            ldr r3, [r0]
008aa3c4  5b 6a                                            ldr r3, [r3, #0x24]
008aa3c6  98 47                                            blx r3
008aa3c8  dc e7                                            b #0x8aa384
008aa3ca  05 1c                                            adds r5, r0, #0
008aa3cc  d3 e7                                            b #0x8aa376
008aa3ce  03 9a                                            ldr r2, [sp, #0xc]
008aa3d0  16 70                                            strb r6, [r2]
008aa3d2  01 32                                            adds r2, #1
008aa3d4  03 92                                            str r2, [sp, #0xc]
008aa3d6  00 26                                            movs r6, #0
008aa3d8  cd e7                                            b #0x8aa376
008aa3da  03 68                                            ldr r3, [r0]
008aa3dc  1b 6a                                            ldr r3, [r3, #0x20]
008aa3de  98 47                                            blx r3
008aa3e0  a9 e7                                            b #0x8aa336
008aa3e2  4c 46                                            mov r4, sb
008aa3e4  03 99                                            ldr r1, [sp, #0xc]
008aa3e6  00 2c                                            cmp r4, #0
008aa3e8  04 d0                                            beq #0x8aa3f4
008aa3ea  07 98                                            ldr r0, [sp, #0x1c]
008aa3ec  81 42                                            cmp r1, r0
008aa3ee  01 d0                                            beq #0x8aa3f4
008aa3f0  0e 70                                            strb r6, [r1]
008aa3f2  01 31                                            adds r1, #1
008aa3f4  00 20                                            movs r0, #0
008aa3f6  00 2f                                            cmp r7, #0
008aa3f8  07 dd                                            ble #0x8aa40a
008aa3fa  02 9a                                            ldr r2, [sp, #8]
008aa3fc  00 2a                                            cmp r2, #0
008aa3fe  12 d0                                            beq #0x8aa426
008aa400  08 9a                                            ldr r2, [sp, #0x20]
008aa402  01 23                                            movs r3, #1
008aa404  5b 42                                            rsbs r3, r3, #0
008aa406  13 60                                            str r3, [r2]
008aa408  00 20                                            movs r0, #0
008aa40a  04 9c                                            ldr r4, [sp, #0x10]
008aa40c  06 99                                            ldr r1, [sp, #0x18]
008aa40e  1b 9a                                            ldr r2, [sp, #0x6c]
008aa410  63 58                                            ldr r3, [r4, r1]
008aa412  1b 68                                            ldr r3, [r3]
008aa414  9a 42                                            cmp r2, r3
008aa416  1a d1                                            bne #0x8aa44e
008aa418  1d b0                                            add sp, #0x74
008aa41a  3c bc                                            pop {r2, r3, r4, r5}
008aa41c  90 46                                            mov r8, r2
008aa41e  99 46                                            mov sb, r3
008aa420  a2 46                                            mov sl, r4
008aa422  ab 46                                            mov fp, r5
008aa424  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aa426  09 9b                                            ldr r3, [sp, #0x24]
008aa428  00 2b                                            cmp r3, #0
008aa42a  0c d1                                            bne #0x8aa446
008aa42c  08 98                                            ldr r0, [sp, #0x20]
008aa42e  05 60                                            str r5, [r0]
008aa430  4a 46                                            mov r2, sb
008aa432  01 20                                            movs r0, #1
008aa434  00 2a                                            cmp r2, #0
008aa436  e8 d0                                            beq #0x8aa40a
008aa438  05 9b                                            ldr r3, [sp, #0x14]
008aa43a  07 98                                            ldr r0, [sp, #0x1c]
008aa43c  5a 69                                            ldr r2, [r3, #0x14]
008aa43e  1b 69                                            ldr r3, [r3, #0x10]
008aa440  0f f0 18 fa                                      bl #0x8b9874
008aa444  e1 e7                                            b #0x8aa40a
008aa446  08 9c                                            ldr r4, [sp, #0x20]
008aa448  6d 42                                            rsbs r5, r5, #0
008aa44a  25 60                                            str r5, [r4]
008aa44c  f0 e7                                            b #0x8aa430
008aa44e  63 f6 60 e7                                      blx #0x30e310
008aa452  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008aa454  be a7 0e 00 ac 40 00 00                          .byte 0xbe, 0xa7, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008aa45c, declared_size=412, range_size=412, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv21__get_decimal_integerISt19istreambuf_iteratorIcSt11char_traitsIcEEicEEbRT_S6_RT0_PT1_
; demangled: bool std::priv::__get_decimal_integer<std::istreambuf_iterator<char, std::char_traits<char> >, int, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, int&, char*)
; decoder-mode: thumb
008aa45c  f0 b5                                            push {r4, r5, r6, r7, lr}
008aa45e  5f 46                                            mov r7, fp
008aa460  56 46                                            mov r6, sl
008aa462  4d 46                                            mov r5, sb
008aa464  44 46                                            mov r4, r8
008aa466  f0 b4                                            push {r4, r5, r6, r7}
008aa468  5f 4b                                            ldr r3, [pc, #0x17c]
008aa46a  04 1c                                            adds r4, r0, #0
008aa46c  5f 48                                            ldr r0, [pc, #0x17c]
008aa46e  9f b0                                            sub sp, #0x7c
008aa470  7b 44                                            add r3, pc
008aa472  02 93                                            str r3, [sp, #8]
008aa474  1b 58                                            ldr r3, [r3, r0]
008aa476  8b 46                                            mov fp, r1
008aa478  17 a9                                            add r1, sp, #0x5c
008aa47a  1b 68                                            ldr r3, [r3]
008aa47c  88 46                                            mov r8, r1
008aa47e  03 90                                            str r0, [sp, #0xc]
008aa480  1d 93                                            str r3, [sp, #0x74]
008aa482  08 1c                                            adds r0, r1, #0
008aa484  09 61                                            str r1, [r1, #0x10]
008aa486  49 61                                            str r1, [r1, #0x14]
008aa488  10 21                                            movs r1, #0x10
008aa48a  05 92                                            str r2, [sp, #0x14]
008aa48c  67 f6 f6 e0                                      blx #0x31167c
008aa490  42 46                                            mov r2, r8
008aa492  13 69                                            ldr r3, [r2, #0x10]
008aa494  00 22                                            movs r2, #0
008aa496  69 46                                            mov r1, sp
008aa498  1a 70                                            strb r2, [r3]
008aa49a  43 46                                            mov r3, r8
008aa49c  5a 69                                            ldr r2, [r3, #0x14]
008aa49e  1b 69                                            ldr r3, [r3, #0x10]
008aa4a0  1c 31                                            adds r1, #0x1c
008aa4a2  00 25                                            movs r5, #0
008aa4a4  d3 1a                                            subs r3, r2, r3
008aa4a6  18 1c                                            adds r0, r3, #0
008aa4a8  43 1e                                            subs r3, r0, #1
008aa4aa  98 41                                            sbcs r0, r3
008aa4ac  82 46                                            mov sl, r0
008aa4ae  04 91                                            str r1, [sp, #0x10]
008aa4b0  01 91                                            str r1, [sp, #4]
008aa4b2  00 26                                            movs r6, #0
008aa4b4  00 95                                            str r5, [sp]
008aa4b6  2f 1c                                            adds r7, r5, #0
008aa4b8  20 1c                                            adds r0, r4, #0
008aa4ba  59 46                                            mov r1, fp
008aa4bc  ff f7 94 f8                                      bl #0x8a95e8
008aa4c0  00 28                                            cmp r0, #0
008aa4c2  19 d1                                            bne #0x8aa4f8
008aa4c4  a3 79                                            ldrb r3, [r4, #6]
008aa4c6  00 2b                                            cmp r3, #0
008aa4c8  3c d1                                            bne #0x8aa544
008aa4ca  20 68                                            ldr r0, [r4]
008aa4cc  83 68                                            ldr r3, [r0, #8]
008aa4ce  c2 68                                            ldr r2, [r0, #0xc]
008aa4d0  93 42                                            cmp r3, r2
008aa4d2  00 d3                                            blo #0x8aa4d6
008aa4d4  6f e0                                            b #0x8aa5b6
008aa4d6  1a 78                                            ldrb r2, [r3]
008aa4d8  10 06                                            lsls r0, r2, #0x18
008aa4da  01 32                                            adds r2, #1
008aa4dc  53 42                                            rsbs r3, r2, #0
008aa4de  53 41                                            adcs r3, r2
008aa4e0  00 0e                                            lsrs r0, r0, #0x18
008aa4e2  01 22                                            movs r2, #1
008aa4e4  20 71                                            strb r0, [r4, #4]
008aa4e6  63 71                                            strb r3, [r4, #5]
008aa4e8  a2 71                                            strb r2, [r4, #6]
008aa4ea  53 46                                            mov r3, sl
008aa4ec  00 2b                                            cmp r3, #0
008aa4ee  01 d0                                            beq #0x8aa4f4
008aa4f0  00 28                                            cmp r0, #0
008aa4f2  59 d0                                            beq #0x8aa5a8
008aa4f4  7f 28                                            cmp r0, #0x7f
008aa4f6  27 d9                                            bls #0x8aa548
008aa4f8  52 46                                            mov r2, sl
008aa4fa  b9 46                                            mov sb, r7
008aa4fc  01 99                                            ldr r1, [sp, #4]
008aa4fe  00 2a                                            cmp r2, #0
008aa500  04 d0                                            beq #0x8aa50c
008aa502  04 9b                                            ldr r3, [sp, #0x10]
008aa504  99 42                                            cmp r1, r3
008aa506  01 d0                                            beq #0x8aa50c
008aa508  0e 70                                            strb r6, [r1]
008aa50a  01 31                                            adds r1, #1
008aa50c  48 46                                            mov r0, sb
008aa50e  00 28                                            cmp r0, #0
008aa510  65 d0                                            beq #0x8aa5de
008aa512  00 9a                                            ldr r2, [sp]
008aa514  00 2a                                            cmp r2, #0
008aa516  53 d0                                            beq #0x8aa5c0
008aa518  35 4b                                            ldr r3, [pc, #0xd4]
008aa51a  05 98                                            ldr r0, [sp, #0x14]
008aa51c  00 24                                            movs r4, #0
008aa51e  03 60                                            str r3, [r0]
008aa520  40 46                                            mov r0, r8
008aa522  69 f6 44 e2                                      blx #0x3139ac
008aa526  03 9a                                            ldr r2, [sp, #0xc]
008aa528  02 99                                            ldr r1, [sp, #8]
008aa52a  20 1c                                            adds r0, r4, #0
008aa52c  8b 58                                            ldr r3, [r1, r2]
008aa52e  1d 9a                                            ldr r2, [sp, #0x74]
008aa530  1b 68                                            ldr r3, [r3]
008aa532  9a 42                                            cmp r2, r3
008aa534  55 d1                                            bne #0x8aa5e2
008aa536  1f b0                                            add sp, #0x7c
008aa538  3c bc                                            pop {r2, r3, r4, r5}
008aa53a  90 46                                            mov r8, r2
008aa53c  99 46                                            mov sb, r3
008aa53e  a2 46                                            mov sl, r4
008aa540  ab 46                                            mov fp, r5
008aa542  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aa544  20 79                                            ldrb r0, [r4, #4]
008aa546  d0 e7                                            b #0x8aa4ea
008aa548  0f f0 b8 f9                                      bl #0x8b98bc
008aa54c  09 28                                            cmp r0, #9
008aa54e  d3 dc                                            bgt #0x8aa4f8
008aa550  28 49                                            ldr r1, [pc, #0xa0]
008aa552  01 36                                            adds r6, #1
008aa554  36 06                                            lsls r6, r6, #0x18
008aa556  01 37                                            adds r7, #1
008aa558  36 0e                                            lsrs r6, r6, #0x18
008aa55a  8d 42                                            cmp r5, r1
008aa55c  0d dd                                            ble #0x8aa57a
008aa55e  01 22                                            movs r2, #1
008aa560  a9 46                                            mov sb, r5
008aa562  00 92                                            str r2, [sp]
008aa564  20 68                                            ldr r0, [r4]
008aa566  83 68                                            ldr r3, [r0, #8]
008aa568  c2 68                                            ldr r2, [r0, #0xc]
008aa56a  93 42                                            cmp r3, r2
008aa56c  18 d2                                            bhs #0x8aa5a0
008aa56e  01 33                                            adds r3, #1
008aa570  83 60                                            str r3, [r0, #8]
008aa572  00 21                                            movs r1, #0
008aa574  a1 71                                            strb r1, [r4, #6]
008aa576  4d 46                                            mov r5, sb
008aa578  9e e7                                            b #0x8aa4b8
008aa57a  ab 00                                            lsls r3, r5, #2
008aa57c  5b 19                                            adds r3, r3, r5
008aa57e  5b 00                                            lsls r3, r3, #1
008aa580  c0 18                                            adds r0, r0, r3
008aa582  81 46                                            mov sb, r0
008aa584  00 2d                                            cmp r5, #0
008aa586  ed d0                                            beq #0x8aa564
008aa588  00 9b                                            ldr r3, [sp]
008aa58a  00 2b                                            cmp r3, #0
008aa58c  ea d1                                            bne #0x8aa564
008aa58e  4d 45                                            cmp r5, sb
008aa590  e8 db                                            blt #0x8aa564
008aa592  01 20                                            movs r0, #1
008aa594  00 90                                            str r0, [sp]
008aa596  20 68                                            ldr r0, [r4]
008aa598  83 68                                            ldr r3, [r0, #8]
008aa59a  c2 68                                            ldr r2, [r0, #0xc]
008aa59c  93 42                                            cmp r3, r2
008aa59e  e6 d3                                            blo #0x8aa56e
008aa5a0  03 68                                            ldr r3, [r0]
008aa5a2  5b 6a                                            ldr r3, [r3, #0x24]
008aa5a4  98 47                                            blx r3
008aa5a6  e4 e7                                            b #0x8aa572
008aa5a8  01 98                                            ldr r0, [sp, #4]
008aa5aa  a9 46                                            mov sb, r5
008aa5ac  06 70                                            strb r6, [r0]
008aa5ae  01 30                                            adds r0, #1
008aa5b0  01 90                                            str r0, [sp, #4]
008aa5b2  00 26                                            movs r6, #0
008aa5b4  d6 e7                                            b #0x8aa564
008aa5b6  03 68                                            ldr r3, [r0]
008aa5b8  1b 6a                                            ldr r3, [r3, #0x20]
008aa5ba  98 47                                            blx r3
008aa5bc  02 1c                                            adds r2, r0, #0
008aa5be  8b e7                                            b #0x8aa4d8
008aa5c0  05 9b                                            ldr r3, [sp, #0x14]
008aa5c2  50 46                                            mov r0, sl
008aa5c4  1d 60                                            str r5, [r3]
008aa5c6  00 28                                            cmp r0, #0
008aa5c8  01 d1                                            bne #0x8aa5ce
008aa5ca  01 24                                            movs r4, #1
008aa5cc  a8 e7                                            b #0x8aa520
008aa5ce  43 46                                            mov r3, r8
008aa5d0  5a 69                                            ldr r2, [r3, #0x14]
008aa5d2  04 98                                            ldr r0, [sp, #0x10]
008aa5d4  1b 69                                            ldr r3, [r3, #0x10]
008aa5d6  0f f0 4d f9                                      bl #0x8b9874
008aa5da  00 28                                            cmp r0, #0
008aa5dc  f5 d1                                            bne #0x8aa5ca
008aa5de  00 24                                            movs r4, #0
008aa5e0  9e e7                                            b #0x8aa520
008aa5e2  63 f6 96 e6                                      blx #0x30e310
008aa5e6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008aa5e8  24 a6 0e 00 ac 40 00 00 ff ff ff 7f cc cc cc 0c  .byte 0x24, 0xa6, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xff, 0xff, 0xff, 0x7f, 0xcc, 0xcc, 0xcc, 0x0c

; FUNCTION 0x008aab6c, declared_size=412, range_size=412, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEElwEEbRT_S6_iRT0_ibT1_RKSsRKSt11__true_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, long, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, int, long&, int, bool, wchar_t, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__true_type const&)
; decoder-mode: thumb
008aab6c  f0 b5                                            push {r4, r5, r6, r7, lr}
008aab6e  5f 46                                            mov r7, fp
008aab70  56 46                                            mov r6, sl
008aab72  4d 46                                            mov r5, sb
008aab74  44 46                                            mov r4, r8
008aab76  f0 b4                                            push {r4, r5, r6, r7}
008aab78  9d b0                                            sub sp, #0x74
008aab7a  60 4c                                            ldr r4, [pc, #0x180]
008aab7c  09 93                                            str r3, [sp, #0x24]
008aab7e  8a 46                                            mov sl, r1
008aab80  26 ab                                            add r3, sp, #0x98
008aab82  29 99                                            ldr r1, [sp, #0xa4]
008aab84  80 cb                                            ldm r3!, {r7}
008aab86  7c 44                                            add r4, pc
008aab88  04 94                                            str r4, [sp, #0x10]
008aab8a  05 91                                            str r1, [sp, #0x14]
008aab8c  1b 78                                            ldrb r3, [r3]
008aab8e  90 46                                            mov r8, r2
008aab90  04 99                                            ldr r1, [sp, #0x10]
008aab92  5b 4a                                            ldr r2, [pc, #0x16c]
008aab94  08 93                                            str r3, [sp, #0x20]
008aab96  04 1c                                            adds r4, r0, #0
008aab98  8b 58                                            ldr r3, [r1, r2]
008aab9a  06 92                                            str r2, [sp, #0x18]
008aab9c  80 20                                            movs r0, #0x80
008aab9e  1b 68                                            ldr r3, [r3]
008aaba0  00 06                                            lsls r0, r0, #0x18
008aaba2  00 25                                            movs r5, #0
008aaba4  1b 93                                            str r3, [sp, #0x6c]
008aaba6  05 9b                                            ldr r3, [sp, #0x14]
008aaba8  00 26                                            movs r6, #0
008aabaa  ab 46                                            mov fp, r5
008aabac  5a 69                                            ldr r2, [r3, #0x14]
008aabae  1b 69                                            ldr r3, [r3, #0x10]
008aabb0  d3 1a                                            subs r3, r2, r3
008aabb2  19 1c                                            adds r1, r3, #0
008aabb4  4b 1e                                            subs r3, r1, #1
008aabb6  99 41                                            sbcs r1, r3
008aabb8  89 46                                            mov sb, r1
008aabba  41 46                                            mov r1, r8
008aabbc  63 f6 72 e3                                      blx #0x30e2a4
008aabc0  6a 46                                            mov r2, sp
008aabc2  2c 32                                            adds r2, #0x2c
008aabc4  01 90                                            str r0, [sp, #4]
008aabc6  07 92                                            str r2, [sp, #0x1c]
008aabc8  02 92                                            str r2, [sp, #8]
008aabca  03 95                                            str r5, [sp, #0xc]
008aabcc  37 e0                                            b #0x8aac3e
008aabce  20 68                                            ldr r0, [r4]
008aabd0  83 68                                            ldr r3, [r0, #8]
008aabd2  c2 68                                            ldr r2, [r0, #0xc]
008aabd4  93 42                                            cmp r3, r2
008aabd6  49 d2                                            bhs #0x8aac6c
008aabd8  18 68                                            ldr r0, [r3]
008aabda  42 1c                                            adds r2, r0, #1
008aabdc  53 42                                            rsbs r3, r2, #0
008aabde  53 41                                            adcs r3, r2
008aabe0  23 72                                            strb r3, [r4, #8]
008aabe2  01 23                                            movs r3, #1
008aabe4  60 60                                            str r0, [r4, #4]
008aabe6  63 72                                            strb r3, [r4, #9]
008aabe8  49 46                                            mov r1, sb
008aabea  00 29                                            cmp r1, #0
008aabec  02 d0                                            beq #0x8aabf4
008aabee  28 9a                                            ldr r2, [sp, #0xa0]
008aabf0  82 42                                            cmp r2, r0
008aabf2  35 d0                                            beq #0x8aac60
008aabf4  ff 23                                            movs r3, #0xff
008aabf6  7f 28                                            cmp r0, #0x7f
008aabf8  02 d8                                            bhi #0x8aac00
008aabfa  0e f0 5f fe                                      bl #0x8b98bc
008aabfe  03 1c                                            adds r3, r0, #0
008aac00  98 45                                            cmp r8, r3
008aac02  37 dd                                            ble #0x8aac74
008aac04  01 99                                            ldr r1, [sp, #4]
008aac06  01 36                                            adds r6, #1
008aac08  36 06                                            lsls r6, r6, #0x18
008aac0a  01 37                                            adds r7, #1
008aac0c  36 0e                                            lsrs r6, r6, #0x18
008aac0e  8d 42                                            cmp r5, r1
008aac10  0a db                                            blt #0x8aac28
008aac12  42 46                                            mov r2, r8
008aac14  6a 43                                            muls r2, r5, r2
008aac16  d3 1a                                            subs r3, r2, r3
008aac18  00 2d                                            cmp r5, #0
008aac1a  1f d0                                            beq #0x8aac5c
008aac1c  03 99                                            ldr r1, [sp, #0xc]
008aac1e  00 29                                            cmp r1, #0
008aac20  1c d1                                            bne #0x8aac5c
008aac22  9d 42                                            cmp r5, r3
008aac24  1a dc                                            bgt #0x8aac5c
008aac26  1d 1c                                            adds r5, r3, #0
008aac28  01 22                                            movs r2, #1
008aac2a  03 92                                            str r2, [sp, #0xc]
008aac2c  20 68                                            ldr r0, [r4]
008aac2e  83 68                                            ldr r3, [r0, #8]
008aac30  c2 68                                            ldr r2, [r0, #0xc]
008aac32  93 42                                            cmp r3, r2
008aac34  0e d2                                            bhs #0x8aac54
008aac36  04 33                                            adds r3, #4
008aac38  83 60                                            str r3, [r0, #8]
008aac3a  5b 46                                            mov r3, fp
008aac3c  63 72                                            strb r3, [r4, #9]
008aac3e  20 1c                                            adds r0, r4, #0
008aac40  51 46                                            mov r1, sl
008aac42  ff f7 31 fe                                      bl #0x8aa8a8
008aac46  00 28                                            cmp r0, #0
008aac48  14 d1                                            bne #0x8aac74
008aac4a  63 7a                                            ldrb r3, [r4, #9]
008aac4c  00 2b                                            cmp r3, #0
008aac4e  be d0                                            beq #0x8aabce
008aac50  60 68                                            ldr r0, [r4, #4]
008aac52  c9 e7                                            b #0x8aabe8
008aac54  03 68                                            ldr r3, [r0]
008aac56  5b 6a                                            ldr r3, [r3, #0x24]
008aac58  98 47                                            blx r3
008aac5a  ee e7                                            b #0x8aac3a
008aac5c  1d 1c                                            adds r5, r3, #0
008aac5e  e5 e7                                            b #0x8aac2c
008aac60  02 9b                                            ldr r3, [sp, #8]
008aac62  1e 70                                            strb r6, [r3]
008aac64  01 33                                            adds r3, #1
008aac66  02 93                                            str r3, [sp, #8]
008aac68  00 26                                            movs r6, #0
008aac6a  df e7                                            b #0x8aac2c
008aac6c  03 68                                            ldr r3, [r0]
008aac6e  1b 6a                                            ldr r3, [r3, #0x20]
008aac70  98 47                                            blx r3
008aac72  b2 e7                                            b #0x8aabda
008aac74  4c 46                                            mov r4, sb
008aac76  00 2c                                            cmp r4, #0
008aac78  07 d0                                            beq #0x8aac8a
008aac7a  02 99                                            ldr r1, [sp, #8]
008aac7c  07 9a                                            ldr r2, [sp, #0x1c]
008aac7e  91 42                                            cmp r1, r2
008aac80  03 d0                                            beq #0x8aac8a
008aac82  0b 1c                                            adds r3, r1, #0
008aac84  01 33                                            adds r3, #1
008aac86  0e 70                                            strb r6, [r1]
008aac88  02 93                                            str r3, [sp, #8]
008aac8a  00 20                                            movs r0, #0
008aac8c  00 2f                                            cmp r7, #0
008aac8e  0a dd                                            ble #0x8aaca6
008aac90  03 9c                                            ldr r4, [sp, #0xc]
008aac92  00 2c                                            cmp r4, #0
008aac94  15 d0                                            beq #0x8aacc2
008aac96  08 99                                            ldr r1, [sp, #0x20]
008aac98  00 29                                            cmp r1, #0
008aac9a  24 d0                                            beq #0x8aace6
008aac9c  09 9c                                            ldr r4, [sp, #0x24]
008aac9e  80 23                                            movs r3, #0x80
008aaca0  1b 06                                            lsls r3, r3, #0x18
008aaca2  23 60                                            str r3, [r4]
008aaca4  00 20                                            movs r0, #0
008aaca6  04 9c                                            ldr r4, [sp, #0x10]
008aaca8  06 99                                            ldr r1, [sp, #0x18]
008aacaa  1b 9a                                            ldr r2, [sp, #0x6c]
008aacac  63 58                                            ldr r3, [r4, r1]
008aacae  1b 68                                            ldr r3, [r3]
008aacb0  9a 42                                            cmp r2, r3
008aacb2  20 d1                                            bne #0x8aacf6
008aacb4  1d b0                                            add sp, #0x74
008aacb6  3c bc                                            pop {r2, r3, r4, r5}
008aacb8  90 46                                            mov r8, r2
008aacba  99 46                                            mov sb, r3
008aacbc  a2 46                                            mov sl, r4
008aacbe  ab 46                                            mov fp, r5
008aacc0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aacc2  08 9a                                            ldr r2, [sp, #0x20]
008aacc4  00 2a                                            cmp r2, #0
008aacc6  13 d1                                            bne #0x8aacf0
008aacc8  09 9b                                            ldr r3, [sp, #0x24]
008aacca  6d 42                                            rsbs r5, r5, #0
008aaccc  1d 60                                            str r5, [r3]
008aacce  49 46                                            mov r1, sb
008aacd0  01 20                                            movs r0, #1
008aacd2  00 29                                            cmp r1, #0
008aacd4  e7 d0                                            beq #0x8aaca6
008aacd6  05 9b                                            ldr r3, [sp, #0x14]
008aacd8  07 98                                            ldr r0, [sp, #0x1c]
008aacda  02 99                                            ldr r1, [sp, #8]
008aacdc  5a 69                                            ldr r2, [r3, #0x14]
008aacde  1b 69                                            ldr r3, [r3, #0x10]
008aace0  0e f0 c8 fd                                      bl #0x8b9874
008aace4  df e7                                            b #0x8aaca6
008aace6  07 4b                                            ldr r3, [pc, #0x1c]
008aace8  09 9a                                            ldr r2, [sp, #0x24]
008aacea  00 20                                            movs r0, #0
008aacec  13 60                                            str r3, [r2]
008aacee  da e7                                            b #0x8aaca6
008aacf0  09 9b                                            ldr r3, [sp, #0x24]
008aacf2  1d 60                                            str r5, [r3]
008aacf4  eb e7                                            b #0x8aacce
008aacf6  63 f6 0c e3                                      blx #0x30e310
008aacfa  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008aacfc  0e 9f 0e 00 ac 40 00 00 ff ff ff 7f              .byte 0x0e, 0x9f, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xff, 0xff, 0xff, 0x7f

; FUNCTION 0x008aad08, declared_size=536, range_size=536, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEExwEEbRT_S6_iRT0_ibT1_RKSsRKSt11__true_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, long long, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, int, long long&, int, bool, wchar_t, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__true_type const&)
; decoder-mode: thumb
008aad08  f0 b5                                            push {r4, r5, r6, r7, lr}
008aad0a  5f 46                                            mov r7, fp
008aad0c  56 46                                            mov r6, sl
008aad0e  4d 46                                            mov r5, sb
008aad10  44 46                                            mov r4, r8
008aad12  f0 b4                                            push {r4, r5, r6, r7}
008aad14  a3 b0                                            sub sp, #0x8c
008aad16  80 4c                                            ldr r4, [pc, #0x200]
008aad18  0f 93                                            str r3, [sp, #0x3c]
008aad1a  92 46                                            mov sl, r2
008aad1c  2c ab                                            add r3, sp, #0xb0
008aad1e  2f 9a                                            ldr r2, [sp, #0xbc]
008aad20  05 91                                            str r1, [sp, #0x14]
008aad22  02 cb                                            ldm r3!, {r1}
008aad24  7c 44                                            add r4, pc
008aad26  09 94                                            str r4, [sp, #0x24]
008aad28  0a 92                                            str r2, [sp, #0x28]
008aad2a  1b 78                                            ldrb r3, [r3]
008aad2c  89 46                                            mov sb, r1
008aad2e  09 99                                            ldr r1, [sp, #0x24]
008aad30  0e 93                                            str r3, [sp, #0x38]
008aad32  7a 4b                                            ldr r3, [pc, #0x1e8]
008aad34  04 1c                                            adds r4, r0, #0
008aad36  00 26                                            movs r6, #0
008aad38  00 27                                            movs r7, #0
008aad3a  0b 93                                            str r3, [sp, #0x2c]
008aad3c  cb 58                                            ldr r3, [r1, r3]
008aad3e  1b 68                                            ldr r3, [r3]
008aad40  21 93                                            str r3, [sp, #0x84]
008aad42  13 1c                                            adds r3, r2, #0
008aad44  1b 69                                            ldr r3, [r3, #0x10]
008aad46  52 69                                            ldr r2, [r2, #0x14]
008aad48  d3 1a                                            subs r3, r2, r3
008aad4a  52 46                                            mov r2, sl
008aad4c  19 1c                                            adds r1, r3, #0
008aad4e  d2 17                                            asrs r2, r2, #0x1f
008aad50  4b 1e                                            subs r3, r1, #1
008aad52  99 41                                            sbcs r1, r3
008aad54  08 92                                            str r2, [sp, #0x20]
008aad56  01 91                                            str r1, [sp, #4]
008aad58  08 9b                                            ldr r3, [sp, #0x20]
008aad5a  6c 49                                            ldr r1, [pc, #0x1b0]
008aad5c  6a 48                                            ldr r0, [pc, #0x1a8]
008aad5e  52 46                                            mov r2, sl
008aad60  63 f6 74 e1                                      blx #0x30e04c
008aad64  6b 46                                            mov r3, sp
008aad66  8b 46                                            mov fp, r1
008aad68  00 21                                            movs r1, #0
008aad6a  44 33                                            adds r3, #0x44
008aad6c  0d 90                                            str r0, [sp, #0x34]
008aad6e  88 46                                            mov r8, r1
008aad70  07 91                                            str r1, [sp, #0x1c]
008aad72  20 1c                                            adds r0, r4, #0
008aad74  05 99                                            ldr r1, [sp, #0x14]
008aad76  0c 93                                            str r3, [sp, #0x30]
008aad78  06 93                                            str r3, [sp, #0x18]
008aad7a  ff f7 95 fd                                      bl #0x8aa8a8
008aad7e  00 28                                            cmp r0, #0
008aad80  55 d1                                            bne #0x8aae2e
008aad82  63 7a                                            ldrb r3, [r4, #9]
008aad84  00 2b                                            cmp r3, #0
008aad86  00 d0                                            beq #0x8aad8a
008aad88  7b e0                                            b #0x8aae82
008aad8a  20 68                                            ldr r0, [r4]
008aad8c  83 68                                            ldr r3, [r0, #8]
008aad8e  c2 68                                            ldr r2, [r0, #0xc]
008aad90  93 42                                            cmp r3, r2
008aad92  00 d3                                            blo #0x8aad96
008aad94  92 e0                                            b #0x8aaebc
008aad96  18 68                                            ldr r0, [r3]
008aad98  42 1c                                            adds r2, r0, #1
008aad9a  53 42                                            rsbs r3, r2, #0
008aad9c  53 41                                            adcs r3, r2
008aad9e  01 22                                            movs r2, #1
008aada0  60 60                                            str r0, [r4, #4]
008aada2  23 72                                            strb r3, [r4, #8]
008aada4  62 72                                            strb r2, [r4, #9]
008aada6  01 9b                                            ldr r3, [sp, #4]
008aada8  00 2b                                            cmp r3, #0
008aadaa  03 d0                                            beq #0x8aadb4
008aadac  2e 99                                            ldr r1, [sp, #0xb8]
008aadae  81 42                                            cmp r1, r0
008aadb0  00 d1                                            bne #0x8aadb4
008aadb2  7b e0                                            b #0x8aaeac
008aadb4  ff 25                                            movs r5, #0xff
008aadb6  7f 28                                            cmp r0, #0x7f
008aadb8  02 d8                                            bhi #0x8aadc0
008aadba  0e f0 7f fd                                      bl #0x8b98bc
008aadbe  05 1c                                            adds r5, r0, #0
008aadc0  aa 45                                            cmp sl, r5
008aadc2  34 dd                                            ble #0x8aae2e
008aadc4  43 46                                            mov r3, r8
008aadc6  01 33                                            adds r3, #1
008aadc8  1b 06                                            lsls r3, r3, #0x18
008aadca  01 22                                            movs r2, #1
008aadcc  1b 0e                                            lsrs r3, r3, #0x18
008aadce  91 44                                            add sb, r2
008aadd0  98 46                                            mov r8, r3
008aadd2  bb 45                                            cmp fp, r7
008aadd4  5a dc                                            bgt #0x8aae8c
008aadd6  bb 45                                            cmp fp, r7
008aadd8  55 d0                                            beq #0x8aae86
008aadda  52 46                                            mov r2, sl
008aaddc  08 9b                                            ldr r3, [sp, #0x20]
008aadde  30 1c                                            adds r0, r6, #0
008aade0  39 1c                                            adds r1, r7, #0
008aade2  63 f6 ba e5                                      blx #0x30e958
008aade6  02 95                                            str r5, [sp, #8]
008aade8  ed 17                                            asrs r5, r5, #0x1f
008aadea  03 95                                            str r5, [sp, #0xc]
008aadec  02 9a                                            ldr r2, [sp, #8]
008aadee  03 9b                                            ldr r3, [sp, #0xc]
008aadf0  80 1a                                            subs r0, r0, r2
008aadf2  99 41                                            sbcs r1, r3
008aadf4  33 1c                                            adds r3, r6, #0
008aadf6  3b 43                                            orrs r3, r7
008aadf8  55 d0                                            beq #0x8aaea6
008aadfa  07 9a                                            ldr r2, [sp, #0x1c]
008aadfc  00 2a                                            cmp r2, #0
008aadfe  52 d1                                            bne #0x8aaea6
008aae00  8f 42                                            cmp r7, r1
008aae02  50 dc                                            bgt #0x8aaea6
008aae04  8f 42                                            cmp r7, r1
008aae06  4c d0                                            beq #0x8aaea2
008aae08  01 23                                            movs r3, #1
008aae0a  06 1c                                            adds r6, r0, #0
008aae0c  0f 1c                                            adds r7, r1, #0
008aae0e  07 93                                            str r3, [sp, #0x1c]
008aae10  20 68                                            ldr r0, [r4]
008aae12  83 68                                            ldr r3, [r0, #8]
008aae14  c2 68                                            ldr r2, [r0, #0xc]
008aae16  93 42                                            cmp r3, r2
008aae18  3f d2                                            bhs #0x8aae9a
008aae1a  04 33                                            adds r3, #4
008aae1c  83 60                                            str r3, [r0, #8]
008aae1e  00 21                                            movs r1, #0
008aae20  61 72                                            strb r1, [r4, #9]
008aae22  20 1c                                            adds r0, r4, #0
008aae24  05 99                                            ldr r1, [sp, #0x14]
008aae26  ff f7 3f fd                                      bl #0x8aa8a8
008aae2a  00 28                                            cmp r0, #0
008aae2c  a9 d0                                            beq #0x8aad82
008aae2e  01 9a                                            ldr r2, [sp, #4]
008aae30  00 2a                                            cmp r2, #0
008aae32  08 d0                                            beq #0x8aae46
008aae34  06 9b                                            ldr r3, [sp, #0x18]
008aae36  0c 9c                                            ldr r4, [sp, #0x30]
008aae38  a3 42                                            cmp r3, r4
008aae3a  04 d0                                            beq #0x8aae46
008aae3c  19 1c                                            adds r1, r3, #0
008aae3e  42 46                                            mov r2, r8
008aae40  01 31                                            adds r1, #1
008aae42  1a 70                                            strb r2, [r3]
008aae44  06 91                                            str r1, [sp, #0x18]
008aae46  4b 46                                            mov r3, sb
008aae48  00 20                                            movs r0, #0
008aae4a  00 2b                                            cmp r3, #0
008aae4c  0b dd                                            ble #0x8aae66
008aae4e  07 9c                                            ldr r4, [sp, #0x1c]
008aae50  00 2c                                            cmp r4, #0
008aae52  37 d0                                            beq #0x8aaec4
008aae54  0e 99                                            ldr r1, [sp, #0x38]
008aae56  00 29                                            cmp r1, #0
008aae58  49 d0                                            beq #0x8aaeee
008aae5a  0f 9a                                            ldr r2, [sp, #0x3c]
008aae5c  2b 4c                                            ldr r4, [pc, #0xac]
008aae5e  2a 4b                                            ldr r3, [pc, #0xa8]
008aae60  00 20                                            movs r0, #0
008aae62  13 60                                            str r3, [r2]
008aae64  54 60                                            str r4, [r2, #4]
008aae66  0b 9a                                            ldr r2, [sp, #0x2c]
008aae68  09 99                                            ldr r1, [sp, #0x24]
008aae6a  8b 58                                            ldr r3, [r1, r2]
008aae6c  21 9a                                            ldr r2, [sp, #0x84]
008aae6e  1b 68                                            ldr r3, [r3]
008aae70  9a 42                                            cmp r2, r3
008aae72  47 d1                                            bne #0x8aaf04
008aae74  23 b0                                            add sp, #0x8c
008aae76  3c bc                                            pop {r2, r3, r4, r5}
008aae78  90 46                                            mov r8, r2
008aae7a  99 46                                            mov sb, r3
008aae7c  a2 46                                            mov sl, r4
008aae7e  ab 46                                            mov fp, r5
008aae80  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aae82  60 68                                            ldr r0, [r4, #4]
008aae84  8f e7                                            b #0x8aada6
008aae86  0d 9b                                            ldr r3, [sp, #0x34]
008aae88  b3 42                                            cmp r3, r6
008aae8a  a6 d9                                            bls #0x8aadda
008aae8c  01 21                                            movs r1, #1
008aae8e  07 91                                            str r1, [sp, #0x1c]
008aae90  20 68                                            ldr r0, [r4]
008aae92  83 68                                            ldr r3, [r0, #8]
008aae94  c2 68                                            ldr r2, [r0, #0xc]
008aae96  93 42                                            cmp r3, r2
008aae98  bf d3                                            blo #0x8aae1a
008aae9a  03 68                                            ldr r3, [r0]
008aae9c  5b 6a                                            ldr r3, [r3, #0x24]
008aae9e  98 47                                            blx r3
008aaea0  bd e7                                            b #0x8aae1e
008aaea2  86 42                                            cmp r6, r0
008aaea4  b0 d9                                            bls #0x8aae08
008aaea6  06 1c                                            adds r6, r0, #0
008aaea8  0f 1c                                            adds r7, r1, #0
008aaeaa  b1 e7                                            b #0x8aae10
008aaeac  06 9a                                            ldr r2, [sp, #0x18]
008aaeae  43 46                                            mov r3, r8
008aaeb0  00 21                                            movs r1, #0
008aaeb2  13 70                                            strb r3, [r2]
008aaeb4  01 32                                            adds r2, #1
008aaeb6  06 92                                            str r2, [sp, #0x18]
008aaeb8  88 46                                            mov r8, r1
008aaeba  a9 e7                                            b #0x8aae10
008aaebc  03 68                                            ldr r3, [r0]
008aaebe  1b 6a                                            ldr r3, [r3, #0x20]
008aaec0  98 47                                            blx r3
008aaec2  69 e7                                            b #0x8aad98
008aaec4  0e 9a                                            ldr r2, [sp, #0x38]
008aaec6  00 2a                                            cmp r2, #0
008aaec8  18 d1                                            bne #0x8aaefc
008aaeca  0f 99                                            ldr r1, [sp, #0x3c]
008aaecc  00 24                                            movs r4, #0
008aaece  73 42                                            rsbs r3, r6, #0
008aaed0  bc 41                                            sbcs r4, r7
008aaed2  0b 60                                            str r3, [r1]
008aaed4  4c 60                                            str r4, [r1, #4]
008aaed6  01 9b                                            ldr r3, [sp, #4]
008aaed8  01 20                                            movs r0, #1
008aaeda  00 2b                                            cmp r3, #0
008aaedc  c3 d0                                            beq #0x8aae66
008aaede  0a 9c                                            ldr r4, [sp, #0x28]
008aaee0  0c 98                                            ldr r0, [sp, #0x30]
008aaee2  06 99                                            ldr r1, [sp, #0x18]
008aaee4  62 69                                            ldr r2, [r4, #0x14]
008aaee6  23 69                                            ldr r3, [r4, #0x10]
008aaee8  0e f0 c4 fc                                      bl #0x8b9874
008aaeec  bb e7                                            b #0x8aae66
008aaeee  0f 99                                            ldr r1, [sp, #0x3c]
008aaef0  07 4b                                            ldr r3, [pc, #0x1c]
008aaef2  08 4c                                            ldr r4, [pc, #0x20]
008aaef4  00 20                                            movs r0, #0
008aaef6  0b 60                                            str r3, [r1]
008aaef8  4c 60                                            str r4, [r1, #4]
008aaefa  b4 e7                                            b #0x8aae66
008aaefc  0f 9a                                            ldr r2, [sp, #0x3c]
008aaefe  16 60                                            str r6, [r2]
008aaf00  57 60                                            str r7, [r2, #4]
008aaf02  e8 e7                                            b #0x8aaed6
008aaf04  63 f6 04 e2                                      blx #0x30e310
; mapping-symbol data/literal pool
008aaf08  00 00 00 00 00 00 00 80 ff ff ff ff ff ff ff 7f  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x7f
008aaf18  70 9d 0e 00 ac 40 00 00                          .byte 0x70, 0x9d, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008aaf20, declared_size=404, range_size=404, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv21__get_decimal_integerISt19istreambuf_iteratorIwSt11char_traitsIwEEiwEEbRT_S6_RT0_PT1_
; demangled: bool std::priv::__get_decimal_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, int, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, int&, wchar_t*)
; decoder-mode: thumb
008aaf20  f0 b5                                            push {r4, r5, r6, r7, lr}
008aaf22  5f 46                                            mov r7, fp
008aaf24  56 46                                            mov r6, sl
008aaf26  4d 46                                            mov r5, sb
008aaf28  44 46                                            mov r4, r8
008aaf2a  f0 b4                                            push {r4, r5, r6, r7}
008aaf2c  5d 4b                                            ldr r3, [pc, #0x174]
008aaf2e  04 1c                                            adds r4, r0, #0
008aaf30  5d 48                                            ldr r0, [pc, #0x174]
008aaf32  9f b0                                            sub sp, #0x7c
008aaf34  7b 44                                            add r3, pc
008aaf36  02 93                                            str r3, [sp, #8]
008aaf38  1b 58                                            ldr r3, [r3, r0]
008aaf3a  8b 46                                            mov fp, r1
008aaf3c  17 a9                                            add r1, sp, #0x5c
008aaf3e  1b 68                                            ldr r3, [r3]
008aaf40  88 46                                            mov r8, r1
008aaf42  03 90                                            str r0, [sp, #0xc]
008aaf44  1d 93                                            str r3, [sp, #0x74]
008aaf46  08 1c                                            adds r0, r1, #0
008aaf48  09 61                                            str r1, [r1, #0x10]
008aaf4a  49 61                                            str r1, [r1, #0x14]
008aaf4c  10 21                                            movs r1, #0x10
008aaf4e  05 92                                            str r2, [sp, #0x14]
008aaf50  66 f6 94 e3                                      blx #0x31167c
008aaf54  42 46                                            mov r2, r8
008aaf56  13 69                                            ldr r3, [r2, #0x10]
008aaf58  00 22                                            movs r2, #0
008aaf5a  00 21                                            movs r1, #0
008aaf5c  1a 70                                            strb r2, [r3]
008aaf5e  43 46                                            mov r3, r8
008aaf60  5a 69                                            ldr r2, [r3, #0x14]
008aaf62  1b 69                                            ldr r3, [r3, #0x10]
008aaf64  00 25                                            movs r5, #0
008aaf66  00 26                                            movs r6, #0
008aaf68  d3 1a                                            subs r3, r2, r3
008aaf6a  18 1c                                            adds r0, r3, #0
008aaf6c  6a 46                                            mov r2, sp
008aaf6e  1c 32                                            adds r2, #0x1c
008aaf70  43 1e                                            subs r3, r0, #1
008aaf72  98 41                                            sbcs r0, r3
008aaf74  82 46                                            mov sl, r0
008aaf76  04 92                                            str r2, [sp, #0x10]
008aaf78  01 92                                            str r2, [sp, #4]
008aaf7a  00 95                                            str r5, [sp]
008aaf7c  0f 1c                                            adds r7, r1, #0
008aaf7e  20 1c                                            adds r0, r4, #0
008aaf80  59 46                                            mov r1, fp
008aaf82  ff f7 91 fc                                      bl #0x8aa8a8
008aaf86  00 28                                            cmp r0, #0
008aaf88  16 d1                                            bne #0x8aafb8
008aaf8a  63 7a                                            ldrb r3, [r4, #9]
008aaf8c  00 2b                                            cmp r3, #0
008aaf8e  39 d1                                            bne #0x8ab004
008aaf90  20 68                                            ldr r0, [r4]
008aaf92  83 68                                            ldr r3, [r0, #8]
008aaf94  c2 68                                            ldr r2, [r0, #0xc]
008aaf96  93 42                                            cmp r3, r2
008aaf98  6d d2                                            bhs #0x8ab076
008aaf9a  18 68                                            ldr r0, [r3]
008aaf9c  42 1c                                            adds r2, r0, #1
008aaf9e  53 42                                            rsbs r3, r2, #0
008aafa0  53 41                                            adcs r3, r2
008aafa2  23 72                                            strb r3, [r4, #8]
008aafa4  01 23                                            movs r3, #1
008aafa6  60 60                                            str r0, [r4, #4]
008aafa8  63 72                                            strb r3, [r4, #9]
008aafaa  51 46                                            mov r1, sl
008aafac  00 29                                            cmp r1, #0
008aafae  01 d0                                            beq #0x8aafb4
008aafb0  00 28                                            cmp r0, #0
008aafb2  59 d0                                            beq #0x8ab068
008aafb4  7f 28                                            cmp r0, #0x7f
008aafb6  27 d9                                            bls #0x8ab008
008aafb8  50 46                                            mov r0, sl
008aafba  b9 46                                            mov sb, r7
008aafbc  01 99                                            ldr r1, [sp, #4]
008aafbe  00 28                                            cmp r0, #0
008aafc0  04 d0                                            beq #0x8aafcc
008aafc2  04 9a                                            ldr r2, [sp, #0x10]
008aafc4  91 42                                            cmp r1, r2
008aafc6  01 d0                                            beq #0x8aafcc
008aafc8  0e 70                                            strb r6, [r1]
008aafca  01 31                                            adds r1, #1
008aafcc  4b 46                                            mov r3, sb
008aafce  00 2b                                            cmp r3, #0
008aafd0  64 d0                                            beq #0x8ab09c
008aafd2  00 98                                            ldr r0, [sp]
008aafd4  00 28                                            cmp r0, #0
008aafd6  52 d0                                            beq #0x8ab07e
008aafd8  34 4b                                            ldr r3, [pc, #0xd0]
008aafda  05 99                                            ldr r1, [sp, #0x14]
008aafdc  00 24                                            movs r4, #0
008aafde  0b 60                                            str r3, [r1]
008aafe0  40 46                                            mov r0, r8
008aafe2  68 f6 e4 e4                                      blx #0x3139ac
008aafe6  03 9a                                            ldr r2, [sp, #0xc]
008aafe8  02 99                                            ldr r1, [sp, #8]
008aafea  20 1c                                            adds r0, r4, #0
008aafec  8b 58                                            ldr r3, [r1, r2]
008aafee  1d 9a                                            ldr r2, [sp, #0x74]
008aaff0  1b 68                                            ldr r3, [r3]
008aaff2  9a 42                                            cmp r2, r3
008aaff4  54 d1                                            bne #0x8ab0a0
008aaff6  1f b0                                            add sp, #0x7c
008aaff8  3c bc                                            pop {r2, r3, r4, r5}
008aaffa  90 46                                            mov r8, r2
008aaffc  99 46                                            mov sb, r3
008aaffe  a2 46                                            mov sl, r4
008ab000  ab 46                                            mov fp, r5
008ab002  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ab004  60 68                                            ldr r0, [r4, #4]
008ab006  d0 e7                                            b #0x8aafaa
008ab008  0e f0 58 fc                                      bl #0x8b98bc
008ab00c  09 28                                            cmp r0, #9
008ab00e  d3 dc                                            bgt #0x8aafb8
008ab010  27 4b                                            ldr r3, [pc, #0x9c]
008ab012  01 36                                            adds r6, #1
008ab014  36 06                                            lsls r6, r6, #0x18
008ab016  01 37                                            adds r7, #1
008ab018  36 0e                                            lsrs r6, r6, #0x18
008ab01a  9d 42                                            cmp r5, r3
008ab01c  0d dd                                            ble #0x8ab03a
008ab01e  01 20                                            movs r0, #1
008ab020  a9 46                                            mov sb, r5
008ab022  00 90                                            str r0, [sp]
008ab024  20 68                                            ldr r0, [r4]
008ab026  83 68                                            ldr r3, [r0, #8]
008ab028  c2 68                                            ldr r2, [r0, #0xc]
008ab02a  93 42                                            cmp r3, r2
008ab02c  18 d2                                            bhs #0x8ab060
008ab02e  04 33                                            adds r3, #4
008ab030  83 60                                            str r3, [r0, #8]
008ab032  00 23                                            movs r3, #0
008ab034  63 72                                            strb r3, [r4, #9]
008ab036  4d 46                                            mov r5, sb
008ab038  a1 e7                                            b #0x8aaf7e
008ab03a  ab 00                                            lsls r3, r5, #2
008ab03c  5b 19                                            adds r3, r3, r5
008ab03e  5b 00                                            lsls r3, r3, #1
008ab040  c0 18                                            adds r0, r0, r3
008ab042  81 46                                            mov sb, r0
008ab044  00 2d                                            cmp r5, #0
008ab046  ed d0                                            beq #0x8ab024
008ab048  00 99                                            ldr r1, [sp]
008ab04a  00 29                                            cmp r1, #0
008ab04c  ea d1                                            bne #0x8ab024
008ab04e  4d 45                                            cmp r5, sb
008ab050  e8 db                                            blt #0x8ab024
008ab052  01 22                                            movs r2, #1
008ab054  00 92                                            str r2, [sp]
008ab056  20 68                                            ldr r0, [r4]
008ab058  83 68                                            ldr r3, [r0, #8]
008ab05a  c2 68                                            ldr r2, [r0, #0xc]
008ab05c  93 42                                            cmp r3, r2
008ab05e  e6 d3                                            blo #0x8ab02e
008ab060  03 68                                            ldr r3, [r0]
008ab062  5b 6a                                            ldr r3, [r3, #0x24]
008ab064  98 47                                            blx r3
008ab066  e4 e7                                            b #0x8ab032
008ab068  01 9a                                            ldr r2, [sp, #4]
008ab06a  a9 46                                            mov sb, r5
008ab06c  16 70                                            strb r6, [r2]
008ab06e  01 32                                            adds r2, #1
008ab070  01 92                                            str r2, [sp, #4]
008ab072  00 26                                            movs r6, #0
008ab074  d6 e7                                            b #0x8ab024
008ab076  03 68                                            ldr r3, [r0]
008ab078  1b 6a                                            ldr r3, [r3, #0x20]
008ab07a  98 47                                            blx r3
008ab07c  8e e7                                            b #0x8aaf9c
008ab07e  05 9b                                            ldr r3, [sp, #0x14]
008ab080  50 46                                            mov r0, sl
008ab082  1d 60                                            str r5, [r3]
008ab084  00 28                                            cmp r0, #0
008ab086  01 d1                                            bne #0x8ab08c
008ab088  01 24                                            movs r4, #1
008ab08a  a9 e7                                            b #0x8aafe0
008ab08c  43 46                                            mov r3, r8
008ab08e  5a 69                                            ldr r2, [r3, #0x14]
008ab090  04 98                                            ldr r0, [sp, #0x10]
008ab092  1b 69                                            ldr r3, [r3, #0x10]
008ab094  0e f0 ee fb                                      bl #0x8b9874
008ab098  00 28                                            cmp r0, #0
008ab09a  f5 d1                                            bne #0x8ab088
008ab09c  00 24                                            movs r4, #0
008ab09e  9f e7                                            b #0x8aafe0
008ab0a0  63 f6 36 e1                                      blx #0x30e310
; mapping-symbol data/literal pool
008ab0a4  60 9b 0e 00 ac 40 00 00 ff ff ff 7f cc cc cc 0c  .byte 0x60, 0x9b, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xff, 0xff, 0xff, 0x7f, 0xcc, 0xcc, 0xcc, 0x0c

; FUNCTION 0x008ab0b4, declared_size=412, range_size=412, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEEtwEEbRT_S6_iRT0_ibT1_RKSsRKSt12__false_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, unsigned short, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, int, unsigned short&, int, bool, wchar_t, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&)
; decoder-mode: thumb
008ab0b4  f0 b5                                            push {r4, r5, r6, r7, lr}
008ab0b6  5f 46                                            mov r7, fp
008ab0b8  56 46                                            mov r6, sl
008ab0ba  4d 46                                            mov r5, sb
008ab0bc  44 46                                            mov r4, r8
008ab0be  f0 b4                                            push {r4, r5, r6, r7}
008ab0c0  60 4c                                            ldr r4, [pc, #0x180]
008ab0c2  9d b0                                            sub sp, #0x74
008ab0c4  08 93                                            str r3, [sp, #0x20]
008ab0c6  7c 44                                            add r4, pc
008ab0c8  04 94                                            str r4, [sp, #0x10]
008ab0ca  26 ab                                            add r3, sp, #0x98
008ab0cc  04 1c                                            adds r4, r0, #0
008ab0ce  29 98                                            ldr r0, [sp, #0xa4]
008ab0d0  80 cb                                            ldm r3!, {r7}
008ab0d2  90 46                                            mov r8, r2
008ab0d4  05 90                                            str r0, [sp, #0x14]
008ab0d6  1b 78                                            ldrb r3, [r3]
008ab0d8  04 9a                                            ldr r2, [sp, #0x10]
008ab0da  8a 46                                            mov sl, r1
008ab0dc  5a 49                                            ldr r1, [pc, #0x168]
008ab0de  09 93                                            str r3, [sp, #0x24]
008ab0e0  00 25                                            movs r5, #0
008ab0e2  53 58                                            ldr r3, [r2, r1]
008ab0e4  06 91                                            str r1, [sp, #0x18]
008ab0e6  00 26                                            movs r6, #0
008ab0e8  1b 68                                            ldr r3, [r3]
008ab0ea  ab 46                                            mov fp, r5
008ab0ec  1b 93                                            str r3, [sp, #0x6c]
008ab0ee  42 69                                            ldr r2, [r0, #0x14]
008ab0f0  03 69                                            ldr r3, [r0, #0x10]
008ab0f2  d3 1a                                            subs r3, r2, r3
008ab0f4  18 1c                                            adds r0, r3, #0
008ab0f6  42 46                                            mov r2, r8
008ab0f8  43 1e                                            subs r3, r0, #1
008ab0fa  98 41                                            sbcs r0, r3
008ab0fc  11 04                                            lsls r1, r2, #0x10
008ab0fe  81 46                                            mov sb, r0
008ab100  09 0c                                            lsrs r1, r1, #0x10
008ab102  52 48                                            ldr r0, [pc, #0x148]
008ab104  63 f6 a2 e5                                      blx #0x30ec4c
008ab108  6b 46                                            mov r3, sp
008ab10a  00 04                                            lsls r0, r0, #0x10
008ab10c  2c 33                                            adds r3, #0x2c
008ab10e  00 0c                                            lsrs r0, r0, #0x10
008ab110  01 90                                            str r0, [sp, #4]
008ab112  07 93                                            str r3, [sp, #0x1c]
008ab114  03 93                                            str r3, [sp, #0xc]
008ab116  02 95                                            str r5, [sp, #8]
008ab118  2c e0                                            b #0x8ab174
008ab11a  20 68                                            ldr r0, [r4]
008ab11c  83 68                                            ldr r3, [r0, #8]
008ab11e  c2 68                                            ldr r2, [r0, #0xc]
008ab120  93 42                                            cmp r3, r2
008ab122  52 d2                                            bhs #0x8ab1ca
008ab124  18 68                                            ldr r0, [r3]
008ab126  42 1c                                            adds r2, r0, #1
008ab128  53 42                                            rsbs r3, r2, #0
008ab12a  53 41                                            adcs r3, r2
008ab12c  01 21                                            movs r1, #1
008ab12e  60 60                                            str r0, [r4, #4]
008ab130  23 72                                            strb r3, [r4, #8]
008ab132  61 72                                            strb r1, [r4, #9]
008ab134  4a 46                                            mov r2, sb
008ab136  00 2a                                            cmp r2, #0
008ab138  02 d0                                            beq #0x8ab140
008ab13a  28 9b                                            ldr r3, [sp, #0xa0]
008ab13c  83 42                                            cmp r3, r0
008ab13e  3e d0                                            beq #0x8ab1be
008ab140  ff 23                                            movs r3, #0xff
008ab142  7f 28                                            cmp r0, #0x7f
008ab144  02 d8                                            bhi #0x8ab14c
008ab146  0e f0 b9 fb                                      bl #0x8b98bc
008ab14a  03 1c                                            adds r3, r0, #0
008ab14c  98 45                                            cmp r8, r3
008ab14e  40 dd                                            ble #0x8ab1d2
008ab150  01 99                                            ldr r1, [sp, #4]
008ab152  01 36                                            adds r6, #1
008ab154  36 06                                            lsls r6, r6, #0x18
008ab156  01 37                                            adds r7, #1
008ab158  36 0e                                            lsrs r6, r6, #0x18
008ab15a  8d 42                                            cmp r5, r1
008ab15c  15 d9                                            bls #0x8ab18a
008ab15e  01 22                                            movs r2, #1
008ab160  02 92                                            str r2, [sp, #8]
008ab162  20 68                                            ldr r0, [r4]
008ab164  83 68                                            ldr r3, [r0, #8]
008ab166  c2 68                                            ldr r2, [r0, #0xc]
008ab168  93 42                                            cmp r3, r2
008ab16a  22 d2                                            bhs #0x8ab1b2
008ab16c  04 33                                            adds r3, #4
008ab16e  83 60                                            str r3, [r0, #8]
008ab170  5a 46                                            mov r2, fp
008ab172  62 72                                            strb r2, [r4, #9]
008ab174  20 1c                                            adds r0, r4, #0
008ab176  51 46                                            mov r1, sl
008ab178  ff f7 96 fb                                      bl #0x8aa8a8
008ab17c  00 28                                            cmp r0, #0
008ab17e  28 d1                                            bne #0x8ab1d2
008ab180  63 7a                                            ldrb r3, [r4, #9]
008ab182  00 2b                                            cmp r3, #0
008ab184  c9 d0                                            beq #0x8ab11a
008ab186  60 68                                            ldr r0, [r4, #4]
008ab188  d4 e7                                            b #0x8ab134
008ab18a  42 46                                            mov r2, r8
008ab18c  6a 43                                            muls r2, r5, r2
008ab18e  9b 18                                            adds r3, r3, r2
008ab190  1b 04                                            lsls r3, r3, #0x10
008ab192  1b 0c                                            lsrs r3, r3, #0x10
008ab194  00 2d                                            cmp r5, #0
008ab196  10 d0                                            beq #0x8ab1ba
008ab198  02 98                                            ldr r0, [sp, #8]
008ab19a  00 28                                            cmp r0, #0
008ab19c  0d d1                                            bne #0x8ab1ba
008ab19e  9d 42                                            cmp r5, r3
008ab1a0  0b d3                                            blo #0x8ab1ba
008ab1a2  01 21                                            movs r1, #1
008ab1a4  02 91                                            str r1, [sp, #8]
008ab1a6  20 68                                            ldr r0, [r4]
008ab1a8  1d 1c                                            adds r5, r3, #0
008ab1aa  c2 68                                            ldr r2, [r0, #0xc]
008ab1ac  83 68                                            ldr r3, [r0, #8]
008ab1ae  93 42                                            cmp r3, r2
008ab1b0  dc d3                                            blo #0x8ab16c
008ab1b2  03 68                                            ldr r3, [r0]
008ab1b4  5b 6a                                            ldr r3, [r3, #0x24]
008ab1b6  98 47                                            blx r3
008ab1b8  da e7                                            b #0x8ab170
008ab1ba  1d 1c                                            adds r5, r3, #0
008ab1bc  d1 e7                                            b #0x8ab162
008ab1be  03 98                                            ldr r0, [sp, #0xc]
008ab1c0  06 70                                            strb r6, [r0]
008ab1c2  01 30                                            adds r0, #1
008ab1c4  03 90                                            str r0, [sp, #0xc]
008ab1c6  00 26                                            movs r6, #0
008ab1c8  cb e7                                            b #0x8ab162
008ab1ca  03 68                                            ldr r3, [r0]
008ab1cc  1b 6a                                            ldr r3, [r3, #0x20]
008ab1ce  98 47                                            blx r3
008ab1d0  a9 e7                                            b #0x8ab126
008ab1d2  4b 46                                            mov r3, sb
008ab1d4  03 99                                            ldr r1, [sp, #0xc]
008ab1d6  00 2b                                            cmp r3, #0
008ab1d8  04 d0                                            beq #0x8ab1e4
008ab1da  07 9c                                            ldr r4, [sp, #0x1c]
008ab1dc  a1 42                                            cmp r1, r4
008ab1de  01 d0                                            beq #0x8ab1e4
008ab1e0  0e 70                                            strb r6, [r1]
008ab1e2  01 31                                            adds r1, #1
008ab1e4  00 20                                            movs r0, #0
008ab1e6  00 2f                                            cmp r7, #0
008ab1e8  07 dd                                            ble #0x8ab1fa
008ab1ea  02 98                                            ldr r0, [sp, #8]
008ab1ec  00 28                                            cmp r0, #0
008ab1ee  12 d0                                            beq #0x8ab216
008ab1f0  08 9a                                            ldr r2, [sp, #0x20]
008ab1f2  01 23                                            movs r3, #1
008ab1f4  5b 42                                            rsbs r3, r3, #0
008ab1f6  13 80                                            strh r3, [r2]
008ab1f8  00 20                                            movs r0, #0
008ab1fa  04 9c                                            ldr r4, [sp, #0x10]
008ab1fc  06 99                                            ldr r1, [sp, #0x18]
008ab1fe  1b 9a                                            ldr r2, [sp, #0x6c]
008ab200  63 58                                            ldr r3, [r4, r1]
008ab202  1b 68                                            ldr r3, [r3]
008ab204  9a 42                                            cmp r2, r3
008ab206  1a d1                                            bne #0x8ab23e
008ab208  1d b0                                            add sp, #0x74
008ab20a  3c bc                                            pop {r2, r3, r4, r5}
008ab20c  90 46                                            mov r8, r2
008ab20e  99 46                                            mov sb, r3
008ab210  a2 46                                            mov sl, r4
008ab212  ab 46                                            mov fp, r5
008ab214  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ab216  09 9a                                            ldr r2, [sp, #0x24]
008ab218  00 2a                                            cmp r2, #0
008ab21a  0c d1                                            bne #0x8ab236
008ab21c  08 9c                                            ldr r4, [sp, #0x20]
008ab21e  25 80                                            strh r5, [r4]
008ab220  4a 46                                            mov r2, sb
008ab222  01 20                                            movs r0, #1
008ab224  00 2a                                            cmp r2, #0
008ab226  e8 d0                                            beq #0x8ab1fa
008ab228  05 9b                                            ldr r3, [sp, #0x14]
008ab22a  07 98                                            ldr r0, [sp, #0x1c]
008ab22c  5a 69                                            ldr r2, [r3, #0x14]
008ab22e  1b 69                                            ldr r3, [r3, #0x10]
008ab230  0e f0 20 fb                                      bl #0x8b9874
008ab234  e1 e7                                            b #0x8ab1fa
008ab236  08 9b                                            ldr r3, [sp, #0x20]
008ab238  6d 42                                            rsbs r5, r5, #0
008ab23a  1d 80                                            strh r5, [r3]
008ab23c  f0 e7                                            b #0x8ab220
008ab23e  63 f6 68 e0                                      blx #0x30e310
008ab242  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008ab244  ce 99 0e 00 ac 40 00 00 ff ff 00 00              .byte 0xce, 0x99, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00

; FUNCTION 0x008ab250, declared_size=476, range_size=476, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEEywEEbRT_S6_iRT0_ibT1_RKSsRKSt12__false_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, unsigned long long, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, int, unsigned long long&, int, bool, wchar_t, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&)
; decoder-mode: thumb
008ab250  f0 b5                                            push {r4, r5, r6, r7, lr}
008ab252  5f 46                                            mov r7, fp
008ab254  56 46                                            mov r6, sl
008ab256  4d 46                                            mov r5, sb
008ab258  44 46                                            mov r4, r8
008ab25a  f0 b4                                            push {r4, r5, r6, r7}
008ab25c  71 4c                                            ldr r4, [pc, #0x1c4]
008ab25e  a1 b0                                            sub sp, #0x84
008ab260  03 91                                            str r1, [sp, #0xc]
008ab262  0c 93                                            str r3, [sp, #0x30]
008ab264  2d 99                                            ldr r1, [sp, #0xb4]
008ab266  7c 44                                            add r4, pc
008ab268  2a ab                                            add r3, sp, #0xa8
008ab26a  07 94                                            str r4, [sp, #0x1c]
008ab26c  04 1c                                            adds r4, r0, #0
008ab26e  01 cb                                            ldm r3!, {r0}
008ab270  08 91                                            str r1, [sp, #0x20]
008ab272  91 46                                            mov sb, r2
008ab274  1b 78                                            ldrb r3, [r3]
008ab276  6c 4a                                            ldr r2, [pc, #0x1b0]
008ab278  80 46                                            mov r8, r0
008ab27a  07 98                                            ldr r0, [sp, #0x1c]
008ab27c  0d 93                                            str r3, [sp, #0x34]
008ab27e  09 92                                            str r2, [sp, #0x24]
008ab280  83 58                                            ldr r3, [r0, r2]
008ab282  00 27                                            movs r7, #0
008ab284  00 25                                            movs r5, #0
008ab286  00 26                                            movs r6, #0
008ab288  1b 68                                            ldr r3, [r3]
008ab28a  1f 93                                            str r3, [sp, #0x7c]
008ab28c  4a 69                                            ldr r2, [r1, #0x14]
008ab28e  0b 69                                            ldr r3, [r1, #0x10]
008ab290  d3 1a                                            subs r3, r2, r3
008ab292  4a 46                                            mov r2, sb
008ab294  19 1c                                            adds r1, r3, #0
008ab296  d2 17                                            asrs r2, r2, #0x1f
008ab298  4b 1e                                            subs r3, r1, #1
008ab29a  99 41                                            sbcs r1, r3
008ab29c  06 92                                            str r2, [sp, #0x18]
008ab29e  06 9b                                            ldr r3, [sp, #0x18]
008ab2a0  8b 46                                            mov fp, r1
008ab2a2  4a 46                                            mov r2, sb
008ab2a4  01 20                                            movs r0, #1
008ab2a6  40 42                                            rsbs r0, r0, #0
008ab2a8  c1 17                                            asrs r1, r0, #0x1f
008ab2aa  63 f6 14 e3                                      blx #0x30e8d4
008ab2ae  0b 90                                            str r0, [sp, #0x2c]
008ab2b0  68 46                                            mov r0, sp
008ab2b2  3c 30                                            adds r0, #0x3c
008ab2b4  8a 46                                            mov sl, r1
008ab2b6  00 23                                            movs r3, #0
008ab2b8  0a 90                                            str r0, [sp, #0x28]
008ab2ba  05 90                                            str r0, [sp, #0x14]
008ab2bc  03 99                                            ldr r1, [sp, #0xc]
008ab2be  20 1c                                            adds r0, r4, #0
008ab2c0  04 93                                            str r3, [sp, #0x10]
008ab2c2  ff f7 f1 fa                                      bl #0x8aa8a8
008ab2c6  00 28                                            cmp r0, #0
008ab2c8  52 d1                                            bne #0x8ab370
008ab2ca  63 7a                                            ldrb r3, [r4, #9]
008ab2cc  00 2b                                            cmp r3, #0
008ab2ce  00 d0                                            beq #0x8ab2d2
008ab2d0  75 e0                                            b #0x8ab3be
008ab2d2  20 68                                            ldr r0, [r4]
008ab2d4  83 68                                            ldr r3, [r0, #8]
008ab2d6  c2 68                                            ldr r2, [r0, #0xc]
008ab2d8  93 42                                            cmp r3, r2
008ab2da  00 d3                                            blo #0x8ab2de
008ab2dc  80 e0                                            b #0x8ab3e0
008ab2de  18 68                                            ldr r0, [r3]
008ab2e0  42 1c                                            adds r2, r0, #1
008ab2e2  53 42                                            rsbs r3, r2, #0
008ab2e4  53 41                                            adcs r3, r2
008ab2e6  01 21                                            movs r1, #1
008ab2e8  60 60                                            str r0, [r4, #4]
008ab2ea  23 72                                            strb r3, [r4, #8]
008ab2ec  61 72                                            strb r1, [r4, #9]
008ab2ee  5a 46                                            mov r2, fp
008ab2f0  00 2a                                            cmp r2, #0
008ab2f2  02 d0                                            beq #0x8ab2fa
008ab2f4  2c 9b                                            ldr r3, [sp, #0xb0]
008ab2f6  83 42                                            cmp r3, r0
008ab2f8  6c d0                                            beq #0x8ab3d4
008ab2fa  ff 23                                            movs r3, #0xff
008ab2fc  7f 28                                            cmp r0, #0x7f
008ab2fe  02 d8                                            bhi #0x8ab306
008ab300  0e f0 dc fa                                      bl #0x8b98bc
008ab304  03 1c                                            adds r3, r0, #0
008ab306  99 45                                            cmp sb, r3
008ab308  32 dd                                            ble #0x8ab370
008ab30a  01 37                                            adds r7, #1
008ab30c  01 21                                            movs r1, #1
008ab30e  3f 06                                            lsls r7, r7, #0x18
008ab310  88 44                                            add r8, r1
008ab312  3f 0e                                            lsrs r7, r7, #0x18
008ab314  b2 45                                            cmp sl, r6
008ab316  1a d3                                            blo #0x8ab34e
008ab318  b2 45                                            cmp sl, r6
008ab31a  65 d0                                            beq #0x8ab3e8
008ab31c  00 93                                            str r3, [sp]
008ab31e  db 17                                            asrs r3, r3, #0x1f
008ab320  01 93                                            str r3, [sp, #4]
008ab322  4a 46                                            mov r2, sb
008ab324  06 9b                                            ldr r3, [sp, #0x18]
008ab326  28 1c                                            adds r0, r5, #0
008ab328  31 1c                                            adds r1, r6, #0
008ab32a  63 f6 16 e3                                      blx #0x30e958
008ab32e  00 9a                                            ldr r2, [sp]
008ab330  01 9b                                            ldr r3, [sp, #4]
008ab332  80 18                                            adds r0, r0, r2
008ab334  59 41                                            adcs r1, r3
008ab336  2b 1c                                            adds r3, r5, #0
008ab338  33 43                                            orrs r3, r6
008ab33a  48 d0                                            beq #0x8ab3ce
008ab33c  04 9a                                            ldr r2, [sp, #0x10]
008ab33e  00 2a                                            cmp r2, #0
008ab340  45 d1                                            bne #0x8ab3ce
008ab342  b1 42                                            cmp r1, r6
008ab344  43 d8                                            bhi #0x8ab3ce
008ab346  b1 42                                            cmp r1, r6
008ab348  3f d0                                            beq #0x8ab3ca
008ab34a  05 1c                                            adds r5, r0, #0
008ab34c  0e 1c                                            adds r6, r1, #0
008ab34e  01 23                                            movs r3, #1
008ab350  04 93                                            str r3, [sp, #0x10]
008ab352  20 68                                            ldr r0, [r4]
008ab354  83 68                                            ldr r3, [r0, #8]
008ab356  c2 68                                            ldr r2, [r0, #0xc]
008ab358  93 42                                            cmp r3, r2
008ab35a  32 d2                                            bhs #0x8ab3c2
008ab35c  04 33                                            adds r3, #4
008ab35e  83 60                                            str r3, [r0, #8]
008ab360  00 20                                            movs r0, #0
008ab362  60 72                                            strb r0, [r4, #9]
008ab364  03 99                                            ldr r1, [sp, #0xc]
008ab366  20 1c                                            adds r0, r4, #0
008ab368  ff f7 9e fa                                      bl #0x8aa8a8
008ab36c  00 28                                            cmp r0, #0
008ab36e  ac d0                                            beq #0x8ab2ca
008ab370  5c 46                                            mov r4, fp
008ab372  05 99                                            ldr r1, [sp, #0x14]
008ab374  2a 1c                                            adds r2, r5, #0
008ab376  33 1c                                            adds r3, r6, #0
008ab378  00 2c                                            cmp r4, #0
008ab37a  04 d0                                            beq #0x8ab386
008ab37c  0a 98                                            ldr r0, [sp, #0x28]
008ab37e  81 42                                            cmp r1, r0
008ab380  01 d0                                            beq #0x8ab386
008ab382  0f 70                                            strb r7, [r1]
008ab384  01 31                                            adds r1, #1
008ab386  44 46                                            mov r4, r8
008ab388  00 20                                            movs r0, #0
008ab38a  00 2c                                            cmp r4, #0
008ab38c  09 dd                                            ble #0x8ab3a2
008ab38e  04 98                                            ldr r0, [sp, #0x10]
008ab390  00 28                                            cmp r0, #0
008ab392  2d d0                                            beq #0x8ab3f0
008ab394  0c 9a                                            ldr r2, [sp, #0x30]
008ab396  01 23                                            movs r3, #1
008ab398  5b 42                                            rsbs r3, r3, #0
008ab39a  dc 17                                            asrs r4, r3, #0x1f
008ab39c  00 20                                            movs r0, #0
008ab39e  13 60                                            str r3, [r2]
008ab3a0  54 60                                            str r4, [r2, #4]
008ab3a2  07 9c                                            ldr r4, [sp, #0x1c]
008ab3a4  09 99                                            ldr r1, [sp, #0x24]
008ab3a6  1f 9a                                            ldr r2, [sp, #0x7c]
008ab3a8  63 58                                            ldr r3, [r4, r1]
008ab3aa  1b 68                                            ldr r3, [r3]
008ab3ac  9a 42                                            cmp r2, r3
008ab3ae  37 d1                                            bne #0x8ab420
008ab3b0  21 b0                                            add sp, #0x84
008ab3b2  3c bc                                            pop {r2, r3, r4, r5}
008ab3b4  90 46                                            mov r8, r2
008ab3b6  99 46                                            mov sb, r3
008ab3b8  a2 46                                            mov sl, r4
008ab3ba  ab 46                                            mov fp, r5
008ab3bc  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ab3be  60 68                                            ldr r0, [r4, #4]
008ab3c0  95 e7                                            b #0x8ab2ee
008ab3c2  03 68                                            ldr r3, [r0]
008ab3c4  5b 6a                                            ldr r3, [r3, #0x24]
008ab3c6  98 47                                            blx r3
008ab3c8  ca e7                                            b #0x8ab360
008ab3ca  a8 42                                            cmp r0, r5
008ab3cc  bd d9                                            bls #0x8ab34a
008ab3ce  05 1c                                            adds r5, r0, #0
008ab3d0  0e 1c                                            adds r6, r1, #0
008ab3d2  be e7                                            b #0x8ab352
008ab3d4  05 98                                            ldr r0, [sp, #0x14]
008ab3d6  07 70                                            strb r7, [r0]
008ab3d8  01 30                                            adds r0, #1
008ab3da  05 90                                            str r0, [sp, #0x14]
008ab3dc  00 27                                            movs r7, #0
008ab3de  b8 e7                                            b #0x8ab352
008ab3e0  03 68                                            ldr r3, [r0]
008ab3e2  1b 6a                                            ldr r3, [r3, #0x20]
008ab3e4  98 47                                            blx r3
008ab3e6  7b e7                                            b #0x8ab2e0
008ab3e8  0b 9a                                            ldr r2, [sp, #0x2c]
008ab3ea  aa 42                                            cmp r2, r5
008ab3ec  96 d2                                            bhs #0x8ab31c
008ab3ee  ae e7                                            b #0x8ab34e
008ab3f0  0d 9c                                            ldr r4, [sp, #0x34]
008ab3f2  00 2c                                            cmp r4, #0
008ab3f4  0d d1                                            bne #0x8ab412
008ab3f6  0c 9c                                            ldr r4, [sp, #0x30]
008ab3f8  22 60                                            str r2, [r4]
008ab3fa  63 60                                            str r3, [r4, #4]
008ab3fc  5a 46                                            mov r2, fp
008ab3fe  01 20                                            movs r0, #1
008ab400  00 2a                                            cmp r2, #0
008ab402  ce d0                                            beq #0x8ab3a2
008ab404  08 9b                                            ldr r3, [sp, #0x20]
008ab406  0a 98                                            ldr r0, [sp, #0x28]
008ab408  5a 69                                            ldr r2, [r3, #0x14]
008ab40a  1b 69                                            ldr r3, [r3, #0x10]
008ab40c  0e f0 32 fa                                      bl #0x8b9874
008ab410  c7 e7                                            b #0x8ab3a2
008ab412  0c 98                                            ldr r0, [sp, #0x30]
008ab414  00 24                                            movs r4, #0
008ab416  6b 42                                            rsbs r3, r5, #0
008ab418  b4 41                                            sbcs r4, r6
008ab41a  03 60                                            str r3, [r0]
008ab41c  44 60                                            str r4, [r0, #4]
008ab41e  ed e7                                            b #0x8ab3fc
008ab420  62 f6 76 e7                                      blx #0x30e310
; mapping-symbol data/literal pool
008ab424  2e 98 0e 00 ac 40 00 00                          .byte 0x2e, 0x98, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008ab42c, declared_size=182, range_size=182, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__copy_digitsISt19istreambuf_iteratorIwSt11char_traitsIwEEwEEbRT_S5_RNS_16__basic_iostringIcEEPKT0_
; demangled: bool std::priv::__copy_digits<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::priv::__basic_iostring<char>&, wchar_t const*)
; decoder-mode: thumb
008ab42c  f0 b5                                            push {r4, r5, r6, r7, lr}
008ab42e  5f 46                                            mov r7, fp
008ab430  56 46                                            mov r6, sl
008ab432  4d 46                                            mov r5, sb
008ab434  44 46                                            mov r4, r8
008ab436  f0 b4                                            push {r4, r5, r6, r7}
008ab438  87 b0                                            sub sp, #0x1c
008ab43a  01 ad                                            add r5, sp, #4
008ab43c  ab 60                                            str r3, [r5, #8]
008ab43e  10 9b                                            ldr r3, [sp, #0x40]
008ab440  00 26                                            movs r6, #0
008ab442  04 1c                                            adds r4, r0, #0
008ab444  9a 46                                            mov sl, r3
008ab446  11 9b                                            ldr r3, [sp, #0x44]
008ab448  01 91                                            str r1, [sp, #4]
008ab44a  6a 60                                            str r2, [r5, #4]
008ab44c  99 46                                            mov sb, r3
008ab44e  01 23                                            movs r3, #1
008ab450  9b 46                                            mov fp, r3
008ab452  05 af                                            add r7, sp, #0x14
008ab454  b0 46                                            mov r8, r6
008ab456  23 e0                                            b #0x8ab4a0
008ab458  20 68                                            ldr r0, [r4]
008ab45a  83 68                                            ldr r3, [r0, #8]
008ab45c  c2 68                                            ldr r2, [r0, #0xc]
008ab45e  93 42                                            cmp r3, r2
008ab460  3b d2                                            bhs #0x8ab4da
008ab462  18 68                                            ldr r0, [r3]
008ab464  42 1c                                            adds r2, r0, #1
008ab466  53 42                                            rsbs r3, r2, #0
008ab468  53 41                                            adcs r3, r2
008ab46a  23 72                                            strb r3, [r4, #8]
008ab46c  5b 46                                            mov r3, fp
008ab46e  60 60                                            str r0, [r4, #4]
008ab470  05 90                                            str r0, [sp, #0x14]
008ab472  63 72                                            strb r3, [r4, #9]
008ab474  38 1c                                            adds r0, r7, #0
008ab476  49 46                                            mov r1, sb
008ab478  0e f0 76 fa                                      bl #0x8b9968
008ab47c  00 28                                            cmp r0, #0
008ab47e  20 d0                                            beq #0x8ab4c2
008ab480  05 99                                            ldr r1, [sp, #0x14]
008ab482  50 46                                            mov r0, sl
008ab484  09 06                                            lsls r1, r1, #0x18
008ab486  09 0e                                            lsrs r1, r1, #0x18
008ab488  fd f7 b0 f8                                      bl #0x8a85ec
008ab48c  20 68                                            ldr r0, [r4]
008ab48e  83 68                                            ldr r3, [r0, #8]
008ab490  c2 68                                            ldr r2, [r0, #0xc]
008ab492  93 42                                            cmp r3, r2
008ab494  1d d2                                            bhs #0x8ab4d2
008ab496  04 33                                            adds r3, #4
008ab498  83 60                                            str r3, [r0, #8]
008ab49a  43 46                                            mov r3, r8
008ab49c  63 72                                            strb r3, [r4, #9]
008ab49e  01 26                                            movs r6, #1
008ab4a0  20 1c                                            adds r0, r4, #0
008ab4a2  29 1c                                            adds r1, r5, #0
008ab4a4  ff f7 00 fa                                      bl #0x8aa8a8
008ab4a8  00 28                                            cmp r0, #0
008ab4aa  0a d1                                            bne #0x8ab4c2
008ab4ac  63 7a                                            ldrb r3, [r4, #9]
008ab4ae  00 2b                                            cmp r3, #0
008ab4b0  d2 d0                                            beq #0x8ab458
008ab4b2  60 68                                            ldr r0, [r4, #4]
008ab4b4  49 46                                            mov r1, sb
008ab4b6  05 90                                            str r0, [sp, #0x14]
008ab4b8  38 1c                                            adds r0, r7, #0
008ab4ba  0e f0 55 fa                                      bl #0x8b9968
008ab4be  00 28                                            cmp r0, #0
008ab4c0  de d1                                            bne #0x8ab480
008ab4c2  07 b0                                            add sp, #0x1c
008ab4c4  30 1c                                            adds r0, r6, #0
008ab4c6  3c bc                                            pop {r2, r3, r4, r5}
008ab4c8  90 46                                            mov r8, r2
008ab4ca  99 46                                            mov sb, r3
008ab4cc  a2 46                                            mov sl, r4
008ab4ce  ab 46                                            mov fp, r5
008ab4d0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ab4d2  03 68                                            ldr r3, [r0]
008ab4d4  5b 6a                                            ldr r3, [r3, #0x24]
008ab4d6  98 47                                            blx r3
008ab4d8  df e7                                            b #0x8ab49a
008ab4da  03 68                                            ldr r3, [r0]
008ab4dc  1b 6a                                            ldr r3, [r3, #0x20]
008ab4de  98 47                                            blx r3
008ab4e0  c0 e7                                            b #0x8ab464

; FUNCTION 0x008ab4e4, declared_size=396, range_size=396, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEEmwEEbRT_S6_iRT0_ibT1_RKSsRKSt12__false_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, unsigned long, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, int, unsigned long&, int, bool, wchar_t, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&)
; decoder-mode: thumb
008ab4e4  f0 b5                                            push {r4, r5, r6, r7, lr}
008ab4e6  5f 46                                            mov r7, fp
008ab4e8  56 46                                            mov r6, sl
008ab4ea  4d 46                                            mov r5, sb
008ab4ec  44 46                                            mov r4, r8
008ab4ee  f0 b4                                            push {r4, r5, r6, r7}
008ab4f0  5d 4c                                            ldr r4, [pc, #0x174]
008ab4f2  9d b0                                            sub sp, #0x74
008ab4f4  08 93                                            str r3, [sp, #0x20]
008ab4f6  7c 44                                            add r4, pc
008ab4f8  04 94                                            str r4, [sp, #0x10]
008ab4fa  26 ab                                            add r3, sp, #0x98
008ab4fc  04 1c                                            adds r4, r0, #0
008ab4fe  29 98                                            ldr r0, [sp, #0xa4]
008ab500  80 cb                                            ldm r3!, {r7}
008ab502  90 46                                            mov r8, r2
008ab504  05 90                                            str r0, [sp, #0x14]
008ab506  1b 78                                            ldrb r3, [r3]
008ab508  04 9a                                            ldr r2, [sp, #0x10]
008ab50a  8a 46                                            mov sl, r1
008ab50c  57 49                                            ldr r1, [pc, #0x15c]
008ab50e  09 93                                            str r3, [sp, #0x24]
008ab510  00 25                                            movs r5, #0
008ab512  53 58                                            ldr r3, [r2, r1]
008ab514  06 91                                            str r1, [sp, #0x18]
008ab516  41 46                                            mov r1, r8
008ab518  1b 68                                            ldr r3, [r3]
008ab51a  00 26                                            movs r6, #0
008ab51c  ab 46                                            mov fp, r5
008ab51e  1b 93                                            str r3, [sp, #0x6c]
008ab520  42 69                                            ldr r2, [r0, #0x14]
008ab522  03 69                                            ldr r3, [r0, #0x10]
008ab524  d3 1a                                            subs r3, r2, r3
008ab526  18 1c                                            adds r0, r3, #0
008ab528  43 1e                                            subs r3, r0, #1
008ab52a  98 41                                            sbcs r0, r3
008ab52c  81 46                                            mov sb, r0
008ab52e  01 20                                            movs r0, #1
008ab530  40 42                                            rsbs r0, r0, #0
008ab532  63 f6 8c e3                                      blx #0x30ec4c
008ab536  69 46                                            mov r1, sp
008ab538  2c 31                                            adds r1, #0x2c
008ab53a  01 90                                            str r0, [sp, #4]
008ab53c  07 91                                            str r1, [sp, #0x1c]
008ab53e  03 91                                            str r1, [sp, #0xc]
008ab540  02 95                                            str r5, [sp, #8]
008ab542  2c e0                                            b #0x8ab59e
008ab544  20 68                                            ldr r0, [r4]
008ab546  83 68                                            ldr r3, [r0, #8]
008ab548  c2 68                                            ldr r2, [r0, #0xc]
008ab54a  93 42                                            cmp r3, r2
008ab54c  50 d2                                            bhs #0x8ab5f0
008ab54e  18 68                                            ldr r0, [r3]
008ab550  42 1c                                            adds r2, r0, #1
008ab552  53 42                                            rsbs r3, r2, #0
008ab554  53 41                                            adcs r3, r2
008ab556  01 22                                            movs r2, #1
008ab558  60 60                                            str r0, [r4, #4]
008ab55a  23 72                                            strb r3, [r4, #8]
008ab55c  62 72                                            strb r2, [r4, #9]
008ab55e  4b 46                                            mov r3, sb
008ab560  00 2b                                            cmp r3, #0
008ab562  02 d0                                            beq #0x8ab56a
008ab564  28 99                                            ldr r1, [sp, #0xa0]
008ab566  81 42                                            cmp r1, r0
008ab568  3c d0                                            beq #0x8ab5e4
008ab56a  ff 23                                            movs r3, #0xff
008ab56c  7f 28                                            cmp r0, #0x7f
008ab56e  02 d8                                            bhi #0x8ab576
008ab570  0e f0 a4 f9                                      bl #0x8b98bc
008ab574  03 1c                                            adds r3, r0, #0
008ab576  98 45                                            cmp r8, r3
008ab578  3e dd                                            ble #0x8ab5f8
008ab57a  01 98                                            ldr r0, [sp, #4]
008ab57c  01 36                                            adds r6, #1
008ab57e  36 06                                            lsls r6, r6, #0x18
008ab580  01 37                                            adds r7, #1
008ab582  36 0e                                            lsrs r6, r6, #0x18
008ab584  85 42                                            cmp r5, r0
008ab586  15 d9                                            bls #0x8ab5b4
008ab588  01 21                                            movs r1, #1
008ab58a  02 91                                            str r1, [sp, #8]
008ab58c  20 68                                            ldr r0, [r4]
008ab58e  83 68                                            ldr r3, [r0, #8]
008ab590  c2 68                                            ldr r2, [r0, #0xc]
008ab592  93 42                                            cmp r3, r2
008ab594  20 d2                                            bhs #0x8ab5d8
008ab596  04 33                                            adds r3, #4
008ab598  83 60                                            str r3, [r0, #8]
008ab59a  58 46                                            mov r0, fp
008ab59c  60 72                                            strb r0, [r4, #9]
008ab59e  20 1c                                            adds r0, r4, #0
008ab5a0  51 46                                            mov r1, sl
008ab5a2  ff f7 81 f9                                      bl #0x8aa8a8
008ab5a6  00 28                                            cmp r0, #0
008ab5a8  26 d1                                            bne #0x8ab5f8
008ab5aa  63 7a                                            ldrb r3, [r4, #9]
008ab5ac  00 2b                                            cmp r3, #0
008ab5ae  c9 d0                                            beq #0x8ab544
008ab5b0  60 68                                            ldr r0, [r4, #4]
008ab5b2  d4 e7                                            b #0x8ab55e
008ab5b4  42 46                                            mov r2, r8
008ab5b6  6a 43                                            muls r2, r5, r2
008ab5b8  9b 18                                            adds r3, r3, r2
008ab5ba  00 2d                                            cmp r5, #0
008ab5bc  10 d0                                            beq #0x8ab5e0
008ab5be  02 9a                                            ldr r2, [sp, #8]
008ab5c0  00 2a                                            cmp r2, #0
008ab5c2  0d d1                                            bne #0x8ab5e0
008ab5c4  9d 42                                            cmp r5, r3
008ab5c6  0b d3                                            blo #0x8ab5e0
008ab5c8  1d 1c                                            adds r5, r3, #0
008ab5ca  01 23                                            movs r3, #1
008ab5cc  02 93                                            str r3, [sp, #8]
008ab5ce  20 68                                            ldr r0, [r4]
008ab5d0  83 68                                            ldr r3, [r0, #8]
008ab5d2  c2 68                                            ldr r2, [r0, #0xc]
008ab5d4  93 42                                            cmp r3, r2
008ab5d6  de d3                                            blo #0x8ab596
008ab5d8  03 68                                            ldr r3, [r0]
008ab5da  5b 6a                                            ldr r3, [r3, #0x24]
008ab5dc  98 47                                            blx r3
008ab5de  dc e7                                            b #0x8ab59a
008ab5e0  1d 1c                                            adds r5, r3, #0
008ab5e2  d3 e7                                            b #0x8ab58c
008ab5e4  03 9a                                            ldr r2, [sp, #0xc]
008ab5e6  16 70                                            strb r6, [r2]
008ab5e8  01 32                                            adds r2, #1
008ab5ea  03 92                                            str r2, [sp, #0xc]
008ab5ec  00 26                                            movs r6, #0
008ab5ee  cd e7                                            b #0x8ab58c
008ab5f0  03 68                                            ldr r3, [r0]
008ab5f2  1b 6a                                            ldr r3, [r3, #0x20]
008ab5f4  98 47                                            blx r3
008ab5f6  ab e7                                            b #0x8ab550
008ab5f8  4a 46                                            mov r2, sb
008ab5fa  03 99                                            ldr r1, [sp, #0xc]
008ab5fc  00 2a                                            cmp r2, #0
008ab5fe  04 d0                                            beq #0x8ab60a
008ab600  07 9b                                            ldr r3, [sp, #0x1c]
008ab602  99 42                                            cmp r1, r3
008ab604  01 d0                                            beq #0x8ab60a
008ab606  0e 70                                            strb r6, [r1]
008ab608  01 31                                            adds r1, #1
008ab60a  00 20                                            movs r0, #0
008ab60c  00 2f                                            cmp r7, #0
008ab60e  07 dd                                            ble #0x8ab620
008ab610  02 9c                                            ldr r4, [sp, #8]
008ab612  00 2c                                            cmp r4, #0
008ab614  12 d0                                            beq #0x8ab63c
008ab616  08 9c                                            ldr r4, [sp, #0x20]
008ab618  01 23                                            movs r3, #1
008ab61a  5b 42                                            rsbs r3, r3, #0
008ab61c  23 60                                            str r3, [r4]
008ab61e  00 20                                            movs r0, #0
008ab620  06 9a                                            ldr r2, [sp, #0x18]
008ab622  04 99                                            ldr r1, [sp, #0x10]
008ab624  8b 58                                            ldr r3, [r1, r2]
008ab626  1b 9a                                            ldr r2, [sp, #0x6c]
008ab628  1b 68                                            ldr r3, [r3]
008ab62a  9a 42                                            cmp r2, r3
008ab62c  1a d1                                            bne #0x8ab664
008ab62e  1d b0                                            add sp, #0x74
008ab630  3c bc                                            pop {r2, r3, r4, r5}
008ab632  90 46                                            mov r8, r2
008ab634  99 46                                            mov sb, r3
008ab636  a2 46                                            mov sl, r4
008ab638  ab 46                                            mov fp, r5
008ab63a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ab63c  09 98                                            ldr r0, [sp, #0x24]
008ab63e  00 28                                            cmp r0, #0
008ab640  0c d1                                            bne #0x8ab65c
008ab642  08 9b                                            ldr r3, [sp, #0x20]
008ab644  1d 60                                            str r5, [r3]
008ab646  4c 46                                            mov r4, sb
008ab648  01 20                                            movs r0, #1
008ab64a  00 2c                                            cmp r4, #0
008ab64c  e8 d0                                            beq #0x8ab620
008ab64e  05 98                                            ldr r0, [sp, #0x14]
008ab650  42 69                                            ldr r2, [r0, #0x14]
008ab652  03 69                                            ldr r3, [r0, #0x10]
008ab654  07 98                                            ldr r0, [sp, #0x1c]
008ab656  0e f0 0d f9                                      bl #0x8b9874
008ab65a  e1 e7                                            b #0x8ab620
008ab65c  08 9a                                            ldr r2, [sp, #0x20]
008ab65e  6d 42                                            rsbs r5, r5, #0
008ab660  15 60                                            str r5, [r2]
008ab662  f0 e7                                            b #0x8ab646
008ab664  62 f6 54 e6                                      blx #0x30e310
; mapping-symbol data/literal pool
008ab668  9e 95 0e 00 ac 40 00 00                          .byte 0x9e, 0x95, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008ab930, declared_size=304, range_size=304, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv21__copy_grouped_digitsISt19istreambuf_iteratorIwSt11char_traitsIwEEwEEbRT_S5_RNS_16__basic_iostringIcEEPKT0_SA_RKSsRb
; demangled: bool std::priv::__copy_grouped_digits<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::priv::__basic_iostring<char>&, wchar_t const*, wchar_t, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, bool&)
; decoder-mode: thumb
008ab930  f0 b5                                            push {r4, r5, r6, r7, lr}
008ab932  5f 46                                            mov r7, fp
008ab934  56 46                                            mov r6, sl
008ab936  4d 46                                            mov r5, sb
008ab938  44 46                                            mov r4, r8
008ab93a  f0 b4                                            push {r4, r5, r6, r7}
008ab93c  9d b0                                            sub sp, #0x74
008ab93e  46 4c                                            ldr r4, [pc, #0x118]
008ab940  07 af                                            add r7, sp, #0x1c
008ab942  7a 60                                            str r2, [r7, #4]
008ab944  07 91                                            str r1, [sp, #0x1c]
008ab946  28 9a                                            ldr r2, [sp, #0xa0]
008ab948  27 99                                            ldr r1, [sp, #0x9c]
008ab94a  7c 44                                            add r4, pc
008ab94c  bb 60                                            str r3, [r7, #8]
008ab94e  02 94                                            str r4, [sp, #8]
008ab950  29 9b                                            ldr r3, [sp, #0xa4]
008ab952  88 46                                            mov r8, r1
008ab954  93 46                                            mov fp, r2
008ab956  41 49                                            ldr r1, [pc, #0x104]
008ab958  02 9a                                            ldr r2, [sp, #8]
008ab95a  04 93                                            str r3, [sp, #0x10]
008ab95c  04 1c                                            adds r4, r0, #0
008ab95e  53 58                                            ldr r3, [r2, r1]
008ab960  26 98                                            ldr r0, [sp, #0x98]
008ab962  00 25                                            movs r5, #0
008ab964  1b 68                                            ldr r3, [r3]
008ab966  01 90                                            str r0, [sp, #4]
008ab968  2a 98                                            ldr r0, [sp, #0xa8]
008ab96a  1b 93                                            str r3, [sp, #0x6c]
008ab96c  6b 46                                            mov r3, sp
008ab96e  2c 33                                            adds r3, #0x2c
008ab970  06 90                                            str r0, [sp, #0x18]
008ab972  0a a8                                            add r0, sp, #0x28
008ab974  05 91                                            str r1, [sp, #0x14]
008ab976  03 93                                            str r3, [sp, #0xc]
008ab978  1e 1c                                            adds r6, r3, #0
008ab97a  00 95                                            str r5, [sp]
008ab97c  81 46                                            mov sb, r0
008ab97e  aa 46                                            mov sl, r5
008ab980  0b e0                                            b #0x8ab99a
008ab982  35 70                                            strb r5, [r6]
008ab984  20 68                                            ldr r0, [r4]
008ab986  01 36                                            adds r6, #1
008ab988  00 25                                            movs r5, #0
008ab98a  83 68                                            ldr r3, [r0, #8]
008ab98c  c2 68                                            ldr r2, [r0, #0xc]
008ab98e  93 42                                            cmp r3, r2
008ab990  33 d2                                            bhs #0x8ab9fa
008ab992  04 33                                            adds r3, #4
008ab994  83 60                                            str r3, [r0, #8]
008ab996  53 46                                            mov r3, sl
008ab998  63 72                                            strb r3, [r4, #9]
008ab99a  20 1c                                            adds r0, r4, #0
008ab99c  39 1c                                            adds r1, r7, #0
008ab99e  fe f7 83 ff                                      bl #0x8aa8a8
008ab9a2  00 28                                            cmp r0, #0
008ab9a4  36 d1                                            bne #0x8aba14
008ab9a6  63 7a                                            ldrb r3, [r4, #9]
008ab9a8  00 2b                                            cmp r3, #0
008ab9aa  2a d1                                            bne #0x8aba02
008ab9ac  20 68                                            ldr r0, [r4]
008ab9ae  83 68                                            ldr r3, [r0, #8]
008ab9b0  c2 68                                            ldr r2, [r0, #0xc]
008ab9b2  93 42                                            cmp r3, r2
008ab9b4  4a d2                                            bhs #0x8aba4c
008ab9b6  18 68                                            ldr r0, [r3]
008ab9b8  42 1c                                            adds r2, r0, #1
008ab9ba  53 42                                            rsbs r3, r2, #0
008ab9bc  53 41                                            adcs r3, r2
008ab9be  01 21                                            movs r1, #1
008ab9c0  60 60                                            str r0, [r4, #4]
008ab9c2  61 72                                            strb r1, [r4, #9]
008ab9c4  23 72                                            strb r3, [r4, #8]
008ab9c6  59 46                                            mov r1, fp
008ab9c8  0a 90                                            str r0, [sp, #0x28]
008ab9ca  42 46                                            mov r2, r8
008ab9cc  48 46                                            mov r0, sb
008ab9ce  0d f0 e5 ff                                      bl #0x8b999c
008ab9d2  00 28                                            cmp r0, #0
008ab9d4  1e d0                                            beq #0x8aba14
008ab9d6  0a 99                                            ldr r1, [sp, #0x28]
008ab9d8  2c 29                                            cmp r1, #0x2c
008ab9da  d2 d0                                            beq #0x8ab982
008ab9dc  09 06                                            lsls r1, r1, #0x18
008ab9de  01 98                                            ldr r0, [sp, #4]
008ab9e0  09 0e                                            lsrs r1, r1, #0x18
008ab9e2  fc f7 03 fe                                      bl #0x8a85ec
008ab9e6  01 22                                            movs r2, #1
008ab9e8  00 92                                            str r2, [sp]
008ab9ea  20 68                                            ldr r0, [r4]
008ab9ec  01 35                                            adds r5, #1
008ab9ee  2d 06                                            lsls r5, r5, #0x18
008ab9f0  83 68                                            ldr r3, [r0, #8]
008ab9f2  c2 68                                            ldr r2, [r0, #0xc]
008ab9f4  2d 0e                                            lsrs r5, r5, #0x18
008ab9f6  93 42                                            cmp r3, r2
008ab9f8  cb d3                                            blo #0x8ab992
008ab9fa  03 68                                            ldr r3, [r0]
008ab9fc  5b 6a                                            ldr r3, [r3, #0x24]
008ab9fe  98 47                                            blx r3
008aba00  c9 e7                                            b #0x8ab996
008aba02  60 68                                            ldr r0, [r4, #4]
008aba04  59 46                                            mov r1, fp
008aba06  42 46                                            mov r2, r8
008aba08  0a 90                                            str r0, [sp, #0x28]
008aba0a  48 46                                            mov r0, sb
008aba0c  0d f0 c6 ff                                      bl #0x8b999c
008aba10  00 28                                            cmp r0, #0
008aba12  e0 d1                                            bne #0x8ab9d6
008aba14  03 99                                            ldr r1, [sp, #0xc]
008aba16  8e 42                                            cmp r6, r1
008aba18  01 d0                                            beq #0x8aba1e
008aba1a  35 70                                            strb r5, [r6]
008aba1c  71 1c                                            adds r1, r6, #1
008aba1e  04 9c                                            ldr r4, [sp, #0x10]
008aba20  03 98                                            ldr r0, [sp, #0xc]
008aba22  62 69                                            ldr r2, [r4, #0x14]
008aba24  23 69                                            ldr r3, [r4, #0x10]
008aba26  0d f0 25 ff                                      bl #0x8b9874
008aba2a  06 99                                            ldr r1, [sp, #0x18]
008aba2c  08 70                                            strb r0, [r1]
008aba2e  02 9a                                            ldr r2, [sp, #8]
008aba30  05 9c                                            ldr r4, [sp, #0x14]
008aba32  00 98                                            ldr r0, [sp]
008aba34  13 59                                            ldr r3, [r2, r4]
008aba36  1b 9a                                            ldr r2, [sp, #0x6c]
008aba38  1b 68                                            ldr r3, [r3]
008aba3a  9a 42                                            cmp r2, r3
008aba3c  0a d1                                            bne #0x8aba54
008aba3e  1d b0                                            add sp, #0x74
008aba40  3c bc                                            pop {r2, r3, r4, r5}
008aba42  90 46                                            mov r8, r2
008aba44  99 46                                            mov sb, r3
008aba46  a2 46                                            mov sl, r4
008aba48  ab 46                                            mov fp, r5
008aba4a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aba4c  03 68                                            ldr r3, [r0]
008aba4e  1b 6a                                            ldr r3, [r3, #0x20]
008aba50  98 47                                            blx r3
008aba52  b1 e7                                            b #0x8ab9b8
008aba54  62 f6 5c e4                                      blx #0x30e310
; mapping-symbol data/literal pool
008aba58  4a 91 0e 00 ac 40 00 00                          .byte 0x4a, 0x91, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008ac61c, declared_size=588, range_size=588, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv12__read_floatISt19istreambuf_iteratorIwSt11char_traitsIwEEwEEbRNS_16__basic_iostringIcEERT_S9_RKSt5ctypeIT0_ERKSt8numpunctISB_E
; demangled: bool std::priv::__read_float<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, wchar_t>(std::priv::__basic_iostring<char>&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::ctype<wchar_t> const&, std::numpunct<wchar_t> const&)
; decoder-mode: thumb
008ac61c  f0 b5                                            push {r4, r5, r6, r7, lr}
008ac61e  5f 46                                            mov r7, fp
008ac620  56 46                                            mov r6, sl
008ac622  4d 46                                            mov r5, sb
008ac624  44 46                                            mov r4, r8
008ac626  f0 b4                                            push {r4, r5, r6, r7}
008ac628  8d 4c                                            ldr r4, [pc, #0x234]
008ac62a  15 1c                                            adds r5, r2, #0
008ac62c  98 46                                            mov r8, r3
008ac62e  a1 46                                            mov sb, r4
008ac630  0c 1c                                            adds r4, r1, #0
008ac632  8c 49                                            ldr r1, [pc, #0x230]
008ac634  f9 44                                            add sb, pc
008ac636  4a 46                                            mov r2, sb
008ac638  53 58                                            ldr r3, [r2, r1]
008ac63a  a9 b0                                            sub sp, #0xa4
008ac63c  32 9e                                            ldr r6, [sp, #0xc8]
008ac63e  1b 68                                            ldr r3, [r3]
008ac640  09 91                                            str r1, [sp, #0x24]
008ac642  21 af                                            add r7, sp, #0x84
008ac644  27 93                                            str r3, [sp, #0x9c]
008ac646  33 68                                            ldr r3, [r6]
008ac648  31 1c                                            adds r1, r6, #0
008ac64a  83 46                                            mov fp, r0
008ac64c  1b 69                                            ldr r3, [r3, #0x10]
008ac64e  38 1c                                            adds r0, r7, #0
008ac650  98 47                                            blx r3
008ac652  6b 46                                            mov r3, sp
008ac654  83 33                                            adds r3, #0x83
008ac656  07 93                                            str r3, [sp, #0x1c]
008ac658  07 99                                            ldr r1, [sp, #0x1c]
008ac65a  01 23                                            movs r3, #1
008ac65c  30 1c                                            adds r0, r6, #0
008ac65e  0b 70                                            strb r3, [r1]
008ac660  33 68                                            ldr r3, [r6]
008ac662  9b 68                                            ldr r3, [r3, #8]
008ac664  98 47                                            blx r3
008ac666  0b 90                                            str r0, [sp, #0x2c]
008ac668  33 68                                            ldr r3, [r6]
008ac66a  30 1c                                            adds r0, r6, #0
008ac66c  2e 1c                                            adds r6, r5, #0
008ac66e  db 68                                            ldr r3, [r3, #0xc]
008ac670  98 47                                            blx r3
008ac672  6a 46                                            mov r2, sp
008ac674  30 32                                            adds r2, #0x30
008ac676  1c ab                                            add r3, sp, #0x70
008ac678  0a 90                                            str r0, [sp, #0x28]
008ac67a  00 93                                            str r3, [sp]
008ac67c  40 46                                            mov r0, r8
008ac67e  08 92                                            str r2, [sp, #0x20]
008ac680  01 92                                            str r2, [sp, #4]
008ac682  1f a9                                            add r1, sp, #0x7c
008ac684  1e aa                                            add r2, sp, #0x78
008ac686  1d ab                                            add r3, sp, #0x74
008ac688  0e f0 78 fa                                      bl #0x8bab7c
008ac68c  08 ce                                            ldm r6!, {r3}
008ac68e  6a 46                                            mov r2, sp
008ac690  04 32                                            adds r2, #4
008ac692  90 46                                            mov r8, r2
008ac694  04 3a                                            subs r2, #4
008ac696  08 c2                                            stm r2!, {r3}
008ac698  6b 68                                            ldr r3, [r5, #4]
008ac69a  19 a8                                            add r0, sp, #0x64
008ac69c  01 93                                            str r3, [sp, #4]
008ac69e  73 68                                            ldr r3, [r6, #4]
008ac6a0  53 60                                            str r3, [r2, #4]
008ac6a2  5b 46                                            mov r3, fp
008ac6a4  03 93                                            str r3, [sp, #0xc]
008ac6a6  1f 9b                                            ldr r3, [sp, #0x7c]
008ac6a8  04 93                                            str r3, [sp, #0x10]
008ac6aa  1e 9b                                            ldr r3, [sp, #0x78]
008ac6ac  05 93                                            str r3, [sp, #0x14]
008ac6ae  21 68                                            ldr r1, [r4]
008ac6b0  62 68                                            ldr r2, [r4, #4]
008ac6b2  a3 68                                            ldr r3, [r4, #8]
008ac6b4  ff f7 54 fb                                      bl #0x8abd60
008ac6b8  19 9b                                            ldr r3, [sp, #0x64]
008ac6ba  21 1c                                            adds r1, r4, #0
008ac6bc  04 31                                            adds r1, #4
008ac6be  8a 46                                            mov sl, r1
008ac6c0  04 39                                            subs r1, #4
008ac6c2  08 c1                                            stm r1!, {r3}
008ac6c4  1a 9b                                            ldr r3, [sp, #0x68]
008ac6c6  52 46                                            mov r2, sl
008ac6c8  63 60                                            str r3, [r4, #4]
008ac6ca  1b ab                                            add r3, sp, #0x6c
008ac6cc  1b 88                                            ldrh r3, [r3]
008ac6ce  93 80                                            strh r3, [r2, #4]
008ac6d0  7a 69                                            ldr r2, [r7, #0x14]
008ac6d2  3b 69                                            ldr r3, [r7, #0x10]
008ac6d4  9a 42                                            cmp r2, r3
008ac6d6  00 d1                                            bne #0x8ac6da
008ac6d8  ac e0                                            b #0x8ac834
008ac6da  5b 46                                            mov r3, fp
008ac6dc  08 99                                            ldr r1, [sp, #0x20]
008ac6de  0a 9a                                            ldr r2, [sp, #0x28]
008ac6e0  00 93                                            str r3, [sp]
008ac6e2  07 9b                                            ldr r3, [sp, #0x1c]
008ac6e4  01 91                                            str r1, [sp, #4]
008ac6e6  02 92                                            str r2, [sp, #8]
008ac6e8  04 93                                            str r3, [sp, #0x10]
008ac6ea  20 1c                                            adds r0, r4, #0
008ac6ec  29 68                                            ldr r1, [r5]
008ac6ee  6a 68                                            ldr r2, [r5, #4]
008ac6f0  ab 68                                            ldr r3, [r5, #8]
008ac6f2  03 97                                            str r7, [sp, #0xc]
008ac6f4  ff f7 1c f9                                      bl #0x8ab930
008ac6f8  07 90                                            str r0, [sp, #0x1c]
008ac6fa  20 1c                                            adds r0, r4, #0
008ac6fc  29 1c                                            adds r1, r5, #0
008ac6fe  fe f7 d3 f8                                      bl #0x8aa8a8
008ac702  00 28                                            cmp r0, #0
008ac704  23 d0                                            beq #0x8ac74e
008ac706  00 20                                            movs r0, #0
008ac708  07 9b                                            ldr r3, [sp, #0x1c]
008ac70a  00 2b                                            cmp r3, #0
008ac70c  1a d0                                            beq #0x8ac744
008ac70e  20 1c                                            adds r0, r4, #0
008ac710  29 1c                                            adds r1, r5, #0
008ac712  fe f7 c9 f8                                      bl #0x8aa8a8
008ac716  00 28                                            cmp r0, #0
008ac718  46 d0                                            beq #0x8ac7a8
008ac71a  01 22                                            movs r2, #1
008ac71c  07 92                                            str r2, [sp, #0x1c]
008ac71e  38 1c                                            adds r0, r7, #0
008ac720  67 f6 44 e1                                      blx #0x3139ac
008ac724  09 99                                            ldr r1, [sp, #0x24]
008ac726  4c 46                                            mov r4, sb
008ac728  27 9a                                            ldr r2, [sp, #0x9c]
008ac72a  63 58                                            ldr r3, [r4, r1]
008ac72c  07 98                                            ldr r0, [sp, #0x1c]
008ac72e  1b 68                                            ldr r3, [r3]
008ac730  9a 42                                            cmp r2, r3
008ac732  00 d0                                            beq #0x8ac736
008ac734  92 e0                                            b #0x8ac85c
008ac736  29 b0                                            add sp, #0xa4
008ac738  3c bc                                            pop {r2, r3, r4, r5}
008ac73a  90 46                                            mov r8, r2
008ac73c  99 46                                            mov sb, r3
008ac73e  a2 46                                            mov sl, r4
008ac740  ab 46                                            mov fp, r5
008ac742  f0 bd                                            pop {r4, r5, r6, r7, pc}
008ac744  00 21                                            movs r1, #0
008ac746  07 91                                            str r1, [sp, #0x1c]
008ac748  00 28                                            cmp r0, #0
008ac74a  e8 d0                                            beq #0x8ac71e
008ac74c  df e7                                            b #0x8ac70e
008ac74e  63 7a                                            ldrb r3, [r4, #9]
008ac750  00 2b                                            cmp r3, #0
008ac752  27 d1                                            bne #0x8ac7a4
008ac754  20 68                                            ldr r0, [r4]
008ac756  82 68                                            ldr r2, [r0, #8]
008ac758  c3 68                                            ldr r3, [r0, #0xc]
008ac75a  9a 42                                            cmp r2, r3
008ac75c  76 d2                                            bhs #0x8ac84c
008ac75e  10 68                                            ldr r0, [r2]
008ac760  43 1c                                            adds r3, r0, #1
008ac762  5a 42                                            rsbs r2, r3, #0
008ac764  5a 41                                            adcs r2, r3
008ac766  01 23                                            movs r3, #1
008ac768  60 60                                            str r0, [r4, #4]
008ac76a  22 72                                            strb r2, [r4, #8]
008ac76c  63 72                                            strb r3, [r4, #9]
008ac76e  0b 9b                                            ldr r3, [sp, #0x2c]
008ac770  83 42                                            cmp r3, r0
008ac772  c8 d1                                            bne #0x8ac706
008ac774  58 46                                            mov r0, fp
008ac776  2e 21                                            movs r1, #0x2e
008ac778  fb f7 38 ff                                      bl #0x8a85ec
008ac77c  20 68                                            ldr r0, [r4]
008ac77e  82 68                                            ldr r2, [r0, #8]
008ac780  c3 68                                            ldr r3, [r0, #0xc]
008ac782  9a 42                                            cmp r2, r3
008ac784  52 d2                                            bhs #0x8ac82c
008ac786  04 32                                            adds r2, #4
008ac788  82 60                                            str r2, [r0, #8]
008ac78a  00 23                                            movs r3, #0
008ac78c  63 72                                            strb r3, [r4, #9]
008ac78e  08 9a                                            ldr r2, [sp, #0x20]
008ac790  59 46                                            mov r1, fp
008ac792  00 91                                            str r1, [sp]
008ac794  01 92                                            str r2, [sp, #4]
008ac796  20 1c                                            adds r0, r4, #0
008ac798  29 68                                            ldr r1, [r5]
008ac79a  6a 68                                            ldr r2, [r5, #4]
008ac79c  ab 68                                            ldr r3, [r5, #8]
008ac79e  fe f7 45 fe                                      bl #0x8ab42c
008ac7a2  b1 e7                                            b #0x8ac708
008ac7a4  60 68                                            ldr r0, [r4, #4]
008ac7a6  e2 e7                                            b #0x8ac76e
008ac7a8  20 1c                                            adds r0, r4, #0
008ac7aa  f8 f7 bd f9                                      bl #0x8a4b28
008ac7ae  63 68                                            ldr r3, [r4, #4]
008ac7b0  1d 9a                                            ldr r2, [sp, #0x74]
008ac7b2  9a 42                                            cmp r2, r3
008ac7b4  06 d0                                            beq #0x8ac7c4
008ac7b6  20 1c                                            adds r0, r4, #0
008ac7b8  f8 f7 b6 f9                                      bl #0x8a4b28
008ac7bc  63 68                                            ldr r3, [r4, #4]
008ac7be  1c 9a                                            ldr r2, [sp, #0x70]
008ac7c0  9a 42                                            cmp r2, r3
008ac7c2  aa d1                                            bne #0x8ac71a
008ac7c4  58 46                                            mov r0, fp
008ac7c6  65 21                                            movs r1, #0x65
008ac7c8  fb f7 10 ff                                      bl #0x8a85ec
008ac7cc  20 68                                            ldr r0, [r4]
008ac7ce  83 68                                            ldr r3, [r0, #8]
008ac7d0  c2 68                                            ldr r2, [r0, #0xc]
008ac7d2  93 42                                            cmp r3, r2
008ac7d4  3e d2                                            bhs #0x8ac854
008ac7d6  04 33                                            adds r3, #4
008ac7d8  83 60                                            str r3, [r0, #8]
008ac7da  00 23                                            movs r3, #0
008ac7dc  63 72                                            strb r3, [r4, #9]
008ac7de  2b 68                                            ldr r3, [r5]
008ac7e0  42 46                                            mov r2, r8
008ac7e2  16 a8                                            add r0, sp, #0x58
008ac7e4  00 93                                            str r3, [sp]
008ac7e6  6b 68                                            ldr r3, [r5, #4]
008ac7e8  01 93                                            str r3, [sp, #4]
008ac7ea  73 68                                            ldr r3, [r6, #4]
008ac7ec  53 60                                            str r3, [r2, #4]
008ac7ee  5b 46                                            mov r3, fp
008ac7f0  03 93                                            str r3, [sp, #0xc]
008ac7f2  1f 9b                                            ldr r3, [sp, #0x7c]
008ac7f4  04 93                                            str r3, [sp, #0x10]
008ac7f6  1e 9b                                            ldr r3, [sp, #0x78]
008ac7f8  05 93                                            str r3, [sp, #0x14]
008ac7fa  21 68                                            ldr r1, [r4]
008ac7fc  62 68                                            ldr r2, [r4, #4]
008ac7fe  a3 68                                            ldr r3, [r4, #8]
008ac800  ff f7 ae fa                                      bl #0x8abd60
008ac804  16 9b                                            ldr r3, [sp, #0x58]
008ac806  51 46                                            mov r1, sl
008ac808  5a 46                                            mov r2, fp
008ac80a  23 60                                            str r3, [r4]
008ac80c  17 9b                                            ldr r3, [sp, #0x5c]
008ac80e  20 1c                                            adds r0, r4, #0
008ac810  63 60                                            str r3, [r4, #4]
008ac812  18 ab                                            add r3, sp, #0x60
008ac814  1b 88                                            ldrh r3, [r3]
008ac816  8b 80                                            strh r3, [r1, #4]
008ac818  08 9b                                            ldr r3, [sp, #0x20]
008ac81a  00 92                                            str r2, [sp]
008ac81c  29 68                                            ldr r1, [r5]
008ac81e  01 93                                            str r3, [sp, #4]
008ac820  6a 68                                            ldr r2, [r5, #4]
008ac822  ab 68                                            ldr r3, [r5, #8]
008ac824  fe f7 02 fe                                      bl #0x8ab42c
008ac828  07 90                                            str r0, [sp, #0x1c]
008ac82a  78 e7                                            b #0x8ac71e
008ac82c  03 68                                            ldr r3, [r0]
008ac82e  5b 6a                                            ldr r3, [r3, #0x24]
008ac830  98 47                                            blx r3
008ac832  aa e7                                            b #0x8ac78a
008ac834  08 9a                                            ldr r2, [sp, #0x20]
008ac836  59 46                                            mov r1, fp
008ac838  00 91                                            str r1, [sp]
008ac83a  01 92                                            str r2, [sp, #4]
008ac83c  20 1c                                            adds r0, r4, #0
008ac83e  29 68                                            ldr r1, [r5]
008ac840  6a 68                                            ldr r2, [r5, #4]
008ac842  ab 68                                            ldr r3, [r5, #8]
008ac844  fe f7 f2 fd                                      bl #0x8ab42c
008ac848  07 90                                            str r0, [sp, #0x1c]
008ac84a  56 e7                                            b #0x8ac6fa
008ac84c  03 68                                            ldr r3, [r0]
008ac84e  1b 6a                                            ldr r3, [r3, #0x20]
008ac850  98 47                                            blx r3
008ac852  85 e7                                            b #0x8ac760
008ac854  03 68                                            ldr r3, [r0]
008ac856  5b 6a                                            ldr r3, [r3, #0x24]
008ac858  98 47                                            blx r3
008ac85a  be e7                                            b #0x8ac7da
008ac85c  61 f6 58 e5                                      blx #0x30e310
; mapping-symbol data/literal pool
008ac860  60 84 0e 00 ac 40 00 00                          .byte 0x60, 0x84, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008aed28, declared_size=910, range_size=910, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv20__get_monetary_valueISt19istreambuf_iteratorIwSt11char_traitsIwEESt20back_insert_iteratorISbIwS3_SaIwEEEwEEbRT_S9_T0_RKSt5ctypeIT1_ESD_iSD_RKSsRb
; demangled: bool std::priv::__get_monetary_value<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::back_insert_iterator<std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > >, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::back_insert_iterator<std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > >, std::ctype<wchar_t> const&, wchar_t, int, wchar_t, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, bool&)
; decoder-mode: thumb
008aed28  f0 b5                                            push {r4, r5, r6, r7, lr}
008aed2a  5f 46                                            mov r7, fp
008aed2c  56 46                                            mov r6, sl
008aed2e  4d 46                                            mov r5, sb
008aed30  44 46                                            mov r4, r8
008aed32  f0 b4                                            push {r4, r5, r6, r7}
008aed34  c9 4c                                            ldr r4, [pc, #0x324]
008aed36  b1 b0                                            sub sp, #0xc4
008aed38  3a 9d                                            ldr r5, [sp, #0xe8]
008aed3a  7c 44                                            add r4, pc
008aed3c  01 94                                            str r4, [sp, #4]
008aed3e  05 af                                            add r7, sp, #0x14
008aed40  bb 60                                            str r3, [r7, #8]
008aed42  ab 46                                            mov fp, r5
008aed44  c6 4b                                            ldr r3, [pc, #0x318]
008aed46  01 9d                                            ldr r5, [sp, #4]
008aed48  7a 60                                            str r2, [r7, #4]
008aed4a  04 93                                            str r3, [sp, #0x10]
008aed4c  eb 58                                            ldr r3, [r5, r3]
008aed4e  05 91                                            str r1, [sp, #0x14]
008aed50  40 9a                                            ldr r2, [sp, #0x100]
008aed52  3f 99                                            ldr r1, [sp, #0xfc]
008aed54  1b 68                                            ldr r3, [r3]
008aed56  02 92                                            str r2, [sp, #8]
008aed58  03 91                                            str r1, [sp, #0xc]
008aed5a  2f 93                                            str r3, [sp, #0xbc]
008aed5c  04 1c                                            adds r4, r0, #0
008aed5e  00 68                                            ldr r0, [r0]
008aed60  3b 9e                                            ldr r6, [sp, #0xec]
008aed62  00 28                                            cmp r0, #0
008aed64  0f d0                                            beq #0x8aed86
008aed66  63 7a                                            ldrb r3, [r4, #9]
008aed68  00 2b                                            cmp r3, #0
008aed6a  0c d1                                            bne #0x8aed86
008aed6c  83 68                                            ldr r3, [r0, #8]
008aed6e  c2 68                                            ldr r2, [r0, #0xc]
008aed70  93 42                                            cmp r3, r2
008aed72  00 d3                                            blo #0x8aed76
008aed74  8a e1                                            b #0x8af08c
008aed76  18 68                                            ldr r0, [r3]
008aed78  60 60                                            str r0, [r4, #4]
008aed7a  01 30                                            adds r0, #1
008aed7c  43 42                                            rsbs r3, r0, #0
008aed7e  43 41                                            adcs r3, r0
008aed80  23 72                                            strb r3, [r4, #8]
008aed82  01 23                                            movs r3, #1
008aed84  63 72                                            strb r3, [r4, #9]
008aed86  05 98                                            ldr r0, [sp, #0x14]
008aed88  00 28                                            cmp r0, #0
008aed8a  22 d0                                            beq #0x8aedd2
008aed8c  7b 7a                                            ldrb r3, [r7, #9]
008aed8e  00 2b                                            cmp r3, #0
008aed90  1f d1                                            bne #0x8aedd2
008aed92  83 68                                            ldr r3, [r0, #8]
008aed94  c2 68                                            ldr r2, [r0, #0xc]
008aed96  93 42                                            cmp r3, r2
008aed98  00 d3                                            blo #0x8aed9c
008aed9a  6f e1                                            b #0x8af07c
008aed9c  18 68                                            ldr r0, [r3]
008aed9e  78 60                                            str r0, [r7, #4]
008aeda0  01 30                                            adds r0, #1
008aeda2  01 22                                            movs r2, #1
008aeda4  43 42                                            rsbs r3, r0, #0
008aeda6  43 41                                            adcs r3, r0
008aeda8  3b 72                                            strb r3, [r7, #8]
008aedaa  7a 72                                            strb r2, [r7, #9]
008aedac  22 7a                                            ldrb r2, [r4, #8]
008aedae  9a 42                                            cmp r2, r3
008aedb0  13 d1                                            bne #0x8aedda
008aedb2  00 20                                            movs r0, #0
008aedb4  01 9a                                            ldr r2, [sp, #4]
008aedb6  04 9c                                            ldr r4, [sp, #0x10]
008aedb8  13 59                                            ldr r3, [r2, r4]
008aedba  2f 9a                                            ldr r2, [sp, #0xbc]
008aedbc  1b 68                                            ldr r3, [r3]
008aedbe  9a 42                                            cmp r2, r3
008aedc0  00 d0                                            beq #0x8aedc4
008aedc2  76 e1                                            b #0x8af0b2
008aedc4  31 b0                                            add sp, #0xc4
008aedc6  3c bc                                            pop {r2, r3, r4, r5}
008aedc8  90 46                                            mov r8, r2
008aedca  99 46                                            mov sb, r3
008aedcc  a2 46                                            mov sl, r4
008aedce  ab 46                                            mov fp, r5
008aedd0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aedd2  3b 7a                                            ldrb r3, [r7, #8]
008aedd4  22 7a                                            ldrb r2, [r4, #8]
008aedd6  9a 42                                            cmp r2, r3
008aedd8  eb d0                                            beq #0x8aedb2
008aedda  63 7a                                            ldrb r3, [r4, #9]
008aeddc  00 2b                                            cmp r3, #0
008aedde  00 d0                                            beq #0x8aede2
008aede0  96 e0                                            b #0x8aef10
008aede2  20 68                                            ldr r0, [r4]
008aede4  83 68                                            ldr r3, [r0, #8]
008aede6  c2 68                                            ldr r2, [r0, #0xc]
008aede8  93 42                                            cmp r3, r2
008aedea  00 d3                                            blo #0x8aedee
008aedec  58 e1                                            b #0x8af0a0
008aedee  1a 68                                            ldr r2, [r3]
008aedf0  51 1c                                            adds r1, r2, #1
008aedf2  4b 42                                            rsbs r3, r1, #0
008aedf4  4b 41                                            adcs r3, r1
008aedf6  23 72                                            strb r3, [r4, #8]
008aedf8  01 23                                            movs r3, #1
008aedfa  62 60                                            str r2, [r4, #4]
008aedfc  63 72                                            strb r3, [r4, #9]
008aedfe  33 68                                            ldr r3, [r6]
008aee00  30 1c                                            adds r0, r6, #0
008aee02  40 21                                            movs r1, #0x40
008aee04  9b 68                                            ldr r3, [r3, #8]
008aee06  98 47                                            blx r3
008aee08  00 28                                            cmp r0, #0
008aee0a  d2 d0                                            beq #0x8aedb2
008aee0c  03 9d                                            ldr r5, [sp, #0xc]
008aee0e  00 21                                            movs r1, #0
008aee10  6a 69                                            ldr r2, [r5, #0x14]
008aee12  2b 69                                            ldr r3, [r5, #0x10]
008aee14  0f ad                                            add r5, sp, #0x3c
008aee16  d3 1a                                            subs r3, r2, r3
008aee18  5a 1e                                            subs r2, r3, #1
008aee1a  93 41                                            sbcs r3, r2
008aee1c  5b 42                                            rsbs r3, r3, #0
008aee1e  1d 40                                            ands r5, r3
008aee20  0c ab                                            add r3, sp, #0x30
008aee22  01 22                                            movs r2, #1
008aee24  99 46                                            mov sb, r3
008aee26  3b 1c                                            adds r3, r7, #0
008aee28  92 46                                            mov sl, r2
008aee2a  0f 1c                                            adds r7, r1, #0
008aee2c  98 46                                            mov r8, r3
008aee2e  20 1c                                            adds r0, r4, #0
008aee30  41 46                                            mov r1, r8
008aee32  fb f7 39 fd                                      bl #0x8aa8a8
008aee36  00 28                                            cmp r0, #0
008aee38  3e d1                                            bne #0x8aeeb8
008aee3a  63 7a                                            ldrb r3, [r4, #9]
008aee3c  00 2b                                            cmp r3, #0
008aee3e  69 d1                                            bne #0x8aef14
008aee40  20 68                                            ldr r0, [r4]
008aee42  83 68                                            ldr r3, [r0, #8]
008aee44  c2 68                                            ldr r2, [r0, #0xc]
008aee46  93 42                                            cmp r3, r2
008aee48  00 d3                                            blo #0x8aee4c
008aee4a  8d e0                                            b #0x8aef68
008aee4c  1a 68                                            ldr r2, [r3]
008aee4e  51 1c                                            adds r1, r2, #1
008aee50  4b 42                                            rsbs r3, r1, #0
008aee52  4b 41                                            adcs r3, r1
008aee54  51 46                                            mov r1, sl
008aee56  61 72                                            strb r1, [r4, #9]
008aee58  62 60                                            str r2, [r4, #4]
008aee5a  23 72                                            strb r3, [r4, #8]
008aee5c  33 68                                            ldr r3, [r6]
008aee5e  30 1c                                            adds r0, r6, #0
008aee60  40 21                                            movs r1, #0x40
008aee62  9b 68                                            ldr r3, [r3, #8]
008aee64  98 47                                            blx r3
008aee66  00 28                                            cmp r0, #0
008aee68  5c d1                                            bne #0x8aef24
008aee6a  00 2d                                            cmp r5, #0
008aee6c  24 d0                                            beq #0x8aeeb8
008aee6e  63 7a                                            ldrb r3, [r4, #9]
008aee70  00 2b                                            cmp r3, #0
008aee72  73 d1                                            bne #0x8aef5c
008aee74  20 68                                            ldr r0, [r4]
008aee76  83 68                                            ldr r3, [r0, #8]
008aee78  c2 68                                            ldr r2, [r0, #0xc]
008aee7a  93 42                                            cmp r3, r2
008aee7c  79 d2                                            bhs #0x8aef72
008aee7e  18 68                                            ldr r0, [r3]
008aee80  42 1c                                            adds r2, r0, #1
008aee82  53 42                                            rsbs r3, r2, #0
008aee84  53 41                                            adcs r3, r2
008aee86  23 72                                            strb r3, [r4, #8]
008aee88  53 46                                            mov r3, sl
008aee8a  60 60                                            str r0, [r4, #4]
008aee8c  63 72                                            strb r3, [r4, #9]
008aee8e  3e 99                                            ldr r1, [sp, #0xf8]
008aee90  81 42                                            cmp r1, r0
008aee92  11 d1                                            bne #0x8aeeb8
008aee94  2f 70                                            strb r7, [r5]
008aee96  20 68                                            ldr r0, [r4]
008aee98  01 35                                            adds r5, #1
008aee9a  83 68                                            ldr r3, [r0, #8]
008aee9c  c2 68                                            ldr r2, [r0, #0xc]
008aee9e  93 42                                            cmp r3, r2
008aeea0  5e d2                                            bhs #0x8aef60
008aeea2  04 33                                            adds r3, #4
008aeea4  83 60                                            str r3, [r0, #8]
008aeea6  00 22                                            movs r2, #0
008aeea8  62 72                                            strb r2, [r4, #9]
008aeeaa  20 1c                                            adds r0, r4, #0
008aeeac  41 46                                            mov r1, r8
008aeeae  00 27                                            movs r7, #0
008aeeb0  fb f7 fa fc                                      bl #0x8aa8a8
008aeeb4  00 28                                            cmp r0, #0
008aeeb6  c0 d0                                            beq #0x8aee3a
008aeeb8  43 46                                            mov r3, r8
008aeeba  b8 46                                            mov r8, r7
008aeebc  1f 1c                                            adds r7, r3, #0
008aeebe  03 9b                                            ldr r3, [sp, #0xc]
008aeec0  5a 69                                            ldr r2, [r3, #0x14]
008aeec2  1b 69                                            ldr r3, [r3, #0x10]
008aeec4  9a 42                                            cmp r2, r3
008aeec6  00 d1                                            bne #0x8aeeca
008aeec8  e4 e0                                            b #0x8af094
008aeeca  0f a8                                            add r0, sp, #0x3c
008aeecc  01 1c                                            adds r1, r0, #0
008aeece  85 42                                            cmp r5, r0
008aeed0  05 d0                                            beq #0x8aeede
008aeed2  41 46                                            mov r1, r8
008aeed4  29 70                                            strb r1, [r5]
008aeed6  03 9b                                            ldr r3, [sp, #0xc]
008aeed8  69 1c                                            adds r1, r5, #1
008aeeda  5a 69                                            ldr r2, [r3, #0x14]
008aeedc  1b 69                                            ldr r3, [r3, #0x10]
008aeede  0a f0 c9 fc                                      bl #0x8b9874
008aeee2  02 9d                                            ldr r5, [sp, #8]
008aeee4  39 1c                                            adds r1, r7, #0
008aeee6  28 70                                            strb r0, [r5]
008aeee8  20 1c                                            adds r0, r4, #0
008aeeea  fb f7 dd fc                                      bl #0x8aa8a8
008aeeee  00 28                                            cmp r0, #0
008aeef0  48 d0                                            beq #0x8aef84
008aeef2  3d 99                                            ldr r1, [sp, #0xf4]
008aeef4  00 29                                            cmp r1, #0
008aeef6  09 d0                                            beq #0x8aef0c
008aeef8  00 24                                            movs r4, #0
008aeefa  5d 46                                            mov r5, fp
008aeefc  0e 1c                                            adds r6, r1, #0
008aeefe  28 1c                                            adds r0, r5, #0
008aef00  30 21                                            movs r1, #0x30
008aef02  01 34                                            adds r4, #1
008aef04  f7 f7 c6 fe                                      bl #0x8a6c94
008aef08  b4 42                                            cmp r4, r6
008aef0a  f8 d1                                            bne #0x8aeefe
008aef0c  01 20                                            movs r0, #1
008aef0e  51 e7                                            b #0x8aedb4
008aef10  62 68                                            ldr r2, [r4, #4]
008aef12  74 e7                                            b #0x8aedfe
008aef14  33 68                                            ldr r3, [r6]
008aef16  62 68                                            ldr r2, [r4, #4]
008aef18  30 1c                                            adds r0, r6, #0
008aef1a  9b 68                                            ldr r3, [r3, #8]
008aef1c  40 21                                            movs r1, #0x40
008aef1e  98 47                                            blx r3
008aef20  00 28                                            cmp r0, #0
008aef22  a2 d0                                            beq #0x8aee6a
008aef24  21 1c                                            adds r1, r4, #0
008aef26  00 22                                            movs r2, #0
008aef28  48 46                                            mov r0, sb
008aef2a  fa f7 d5 f9                                      bl #0x8a92d8
008aef2e  4a 46                                            mov r2, sb
008aef30  53 7a                                            ldrb r3, [r2, #9]
008aef32  01 37                                            adds r7, #1
008aef34  3f 06                                            lsls r7, r7, #0x18
008aef36  3f 0e                                            lsrs r7, r7, #0x18
008aef38  51 68                                            ldr r1, [r2, #4]
008aef3a  00 2b                                            cmp r3, #0
008aef3c  0a d1                                            bne #0x8aef54
008aef3e  10 68                                            ldr r0, [r2]
008aef40  83 68                                            ldr r3, [r0, #8]
008aef42  c2 68                                            ldr r2, [r0, #0xc]
008aef44  93 42                                            cmp r3, r2
008aef46  18 d2                                            bhs #0x8aef7a
008aef48  19 68                                            ldr r1, [r3]
008aef4a  4a 1c                                            adds r2, r1, #1
008aef4c  53 42                                            rsbs r3, r2, #0
008aef4e  53 41                                            adcs r3, r2
008aef50  4a 46                                            mov r2, sb
008aef52  13 72                                            strb r3, [r2, #8]
008aef54  58 46                                            mov r0, fp
008aef56  f7 f7 9d fe                                      bl #0x8a6c94
008aef5a  68 e7                                            b #0x8aee2e
008aef5c  60 68                                            ldr r0, [r4, #4]
008aef5e  96 e7                                            b #0x8aee8e
008aef60  03 68                                            ldr r3, [r0]
008aef62  5b 6a                                            ldr r3, [r3, #0x24]
008aef64  98 47                                            blx r3
008aef66  9e e7                                            b #0x8aeea6
008aef68  03 68                                            ldr r3, [r0]
008aef6a  1b 6a                                            ldr r3, [r3, #0x20]
008aef6c  98 47                                            blx r3
008aef6e  02 1c                                            adds r2, r0, #0
008aef70  6d e7                                            b #0x8aee4e
008aef72  03 68                                            ldr r3, [r0]
008aef74  1b 6a                                            ldr r3, [r3, #0x20]
008aef76  98 47                                            blx r3
008aef78  82 e7                                            b #0x8aee80
008aef7a  03 68                                            ldr r3, [r0]
008aef7c  1b 6a                                            ldr r3, [r3, #0x20]
008aef7e  98 47                                            blx r3
008aef80  01 1c                                            adds r1, r0, #0
008aef82  e2 e7                                            b #0x8aef4a
008aef84  63 7a                                            ldrb r3, [r4, #9]
008aef86  00 2b                                            cmp r3, #0
008aef88  00 d0                                            beq #0x8aef8c
008aef8a  87 e0                                            b #0x8af09c
008aef8c  20 68                                            ldr r0, [r4]
008aef8e  83 68                                            ldr r3, [r0, #8]
008aef90  c2 68                                            ldr r2, [r0, #0xc]
008aef92  93 42                                            cmp r3, r2
008aef94  00 d3                                            blo #0x8aef98
008aef96  88 e0                                            b #0x8af0aa
008aef98  18 68                                            ldr r0, [r3]
008aef9a  42 1c                                            adds r2, r0, #1
008aef9c  53 42                                            rsbs r3, r2, #0
008aef9e  53 41                                            adcs r3, r2
008aefa0  23 72                                            strb r3, [r4, #8]
008aefa2  01 23                                            movs r3, #1
008aefa4  60 60                                            str r0, [r4, #4]
008aefa6  63 72                                            strb r3, [r4, #9]
008aefa8  3c 9b                                            ldr r3, [sp, #0xf0]
008aefaa  83 42                                            cmp r3, r0
008aefac  a1 d1                                            bne #0x8aeef2
008aefae  20 68                                            ldr r0, [r4]
008aefb0  83 68                                            ldr r3, [r0, #8]
008aefb2  c2 68                                            ldr r2, [r0, #0xc]
008aefb4  93 42                                            cmp r3, r2
008aefb6  65 d2                                            bhs #0x8af084
008aefb8  04 33                                            adds r3, #4
008aefba  83 60                                            str r3, [r0, #8]
008aefbc  00 23                                            movs r3, #0
008aefbe  09 ad                                            add r5, sp, #0x24
008aefc0  98 46                                            mov r8, r3
008aefc2  63 72                                            strb r3, [r4, #9]
008aefc4  01 22                                            movs r2, #1
008aefc6  2b 1c                                            adds r3, r5, #0
008aefc8  91 46                                            mov sb, r2
008aefca  45 46                                            mov r5, r8
008aefcc  b8 46                                            mov r8, r7
008aefce  37 1c                                            adds r7, r6, #0
008aefd0  1e 1c                                            adds r6, r3, #0
008aefd2  20 1c                                            adds r0, r4, #0
008aefd4  41 46                                            mov r1, r8
008aefd6  fb f7 67 fc                                      bl #0x8aa8a8
008aefda  00 28                                            cmp r0, #0
008aefdc  0e d0                                            beq #0x8aeffc
008aefde  02 9c                                            ldr r4, [sp, #8]
008aefe0  a8 46                                            mov r8, r5
008aefe2  00 22                                            movs r2, #0
008aefe4  23 78                                            ldrb r3, [r4]
008aefe6  00 2b                                            cmp r3, #0
008aefe8  04 d0                                            beq #0x8aeff4
008aefea  3d 9c                                            ldr r4, [sp, #0xf4]
008aefec  45 46                                            mov r5, r8
008aefee  63 1b                                            subs r3, r4, r5
008aeff0  5a 42                                            rsbs r2, r3, #0
008aeff2  5a 41                                            adcs r2, r3
008aeff4  02 99                                            ldr r1, [sp, #8]
008aeff6  01 20                                            movs r0, #1
008aeff8  0a 70                                            strb r2, [r1]
008aeffa  db e6                                            b #0x8aedb4
008aeffc  63 7a                                            ldrb r3, [r4, #9]
008aeffe  00 2b                                            cmp r3, #0
008af000  35 d1                                            bne #0x8af06e
008af002  20 68                                            ldr r0, [r4]
008af004  83 68                                            ldr r3, [r0, #8]
008af006  c2 68                                            ldr r2, [r0, #0xc]
008af008  93 42                                            cmp r3, r2
008af00a  32 d2                                            bhs #0x8af072
008af00c  1a 68                                            ldr r2, [r3]
008af00e  51 1c                                            adds r1, r2, #1
008af010  4b 42                                            rsbs r3, r1, #0
008af012  4b 41                                            adcs r3, r1
008af014  23 72                                            strb r3, [r4, #8]
008af016  4b 46                                            mov r3, sb
008af018  62 60                                            str r2, [r4, #4]
008af01a  63 72                                            strb r3, [r4, #9]
008af01c  3b 68                                            ldr r3, [r7]
008af01e  38 1c                                            adds r0, r7, #0
008af020  40 21                                            movs r1, #0x40
008af022  9b 68                                            ldr r3, [r3, #8]
008af024  98 47                                            blx r3
008af026  00 28                                            cmp r0, #0
008af028  d9 d0                                            beq #0x8aefde
008af02a  21 1c                                            adds r1, r4, #0
008af02c  30 1c                                            adds r0, r6, #0
008af02e  00 22                                            movs r2, #0
008af030  fa f7 52 f9                                      bl #0x8a92d8
008af034  73 7a                                            ldrb r3, [r6, #9]
008af036  71 68                                            ldr r1, [r6, #4]
008af038  00 2b                                            cmp r3, #0
008af03a  09 d1                                            bne #0x8af050
008af03c  30 68                                            ldr r0, [r6]
008af03e  83 68                                            ldr r3, [r0, #8]
008af040  c2 68                                            ldr r2, [r0, #0xc]
008af042  93 42                                            cmp r3, r2
008af044  0e d2                                            bhs #0x8af064
008af046  19 68                                            ldr r1, [r3]
008af048  4a 1c                                            adds r2, r1, #1
008af04a  53 42                                            rsbs r3, r2, #0
008af04c  53 41                                            adcs r3, r2
008af04e  33 72                                            strb r3, [r6, #8]
008af050  58 46                                            mov r0, fp
008af052  f7 f7 1f fe                                      bl #0x8a6c94
008af056  01 35                                            adds r5, #1
008af058  bb e7                                            b #0x8aefd2
008af05a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008af05c  5a 5d 0e 00 ac 40 00 00                          .byte 0x5a, 0x5d, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00
; decoder-mode: thumb
008af064  03 68                                            ldr r3, [r0]
008af066  1b 6a                                            ldr r3, [r3, #0x20]
008af068  98 47                                            blx r3
008af06a  01 1c                                            adds r1, r0, #0
008af06c  ec e7                                            b #0x8af048
008af06e  62 68                                            ldr r2, [r4, #4]
008af070  d4 e7                                            b #0x8af01c
008af072  03 68                                            ldr r3, [r0]
008af074  1b 6a                                            ldr r3, [r3, #0x20]
008af076  98 47                                            blx r3
008af078  02 1c                                            adds r2, r0, #0
008af07a  c8 e7                                            b #0x8af00e
008af07c  03 68                                            ldr r3, [r0]
008af07e  1b 6a                                            ldr r3, [r3, #0x20]
008af080  98 47                                            blx r3
008af082  8c e6                                            b #0x8aed9e
008af084  03 68                                            ldr r3, [r0]
008af086  5b 6a                                            ldr r3, [r3, #0x24]
008af088  98 47                                            blx r3
008af08a  97 e7                                            b #0x8aefbc
008af08c  03 68                                            ldr r3, [r0]
008af08e  1b 6a                                            ldr r3, [r3, #0x20]
008af090  98 47                                            blx r3
008af092  71 e6                                            b #0x8aed78
008af094  02 9d                                            ldr r5, [sp, #8]
008af096  01 23                                            movs r3, #1
008af098  2b 70                                            strb r3, [r5]
008af09a  88 e7                                            b #0x8aefae
008af09c  60 68                                            ldr r0, [r4, #4]
008af09e  83 e7                                            b #0x8aefa8
008af0a0  03 68                                            ldr r3, [r0]
008af0a2  1b 6a                                            ldr r3, [r3, #0x20]
008af0a4  98 47                                            blx r3
008af0a6  02 1c                                            adds r2, r0, #0
008af0a8  a2 e6                                            b #0x8aedf0
008af0aa  03 68                                            ldr r3, [r0]
008af0ac  1b 6a                                            ldr r3, [r3, #0x20]
008af0ae  98 47                                            blx r3
008af0b0  73 e7                                            b #0x8aef9a
008af0b2  5f f6 2e e1                                      blx #0x30e310

; FUNCTION 0x008afb78, declared_size=252, range_size=252, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__copy_digitsISt19istreambuf_iteratorIcSt11char_traitsIcEEcEEbRT_S5_RNS_16__basic_iostringIcEEPKT0_
; demangled: bool std::priv::__copy_digits<std::istreambuf_iterator<char, std::char_traits<char> >, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >, std::priv::__basic_iostring<char>&, char const*)
; decoder-mode: thumb
008afb78  f0 b5                                            push {r4, r5, r6, r7, lr}
008afb7a  5f 46                                            mov r7, fp
008afb7c  56 46                                            mov r6, sl
008afb7e  4d 46                                            mov r5, sb
008afb80  44 46                                            mov r4, r8
008afb82  f0 b4                                            push {r4, r5, r6, r7}
008afb84  9a 46                                            mov sl, r3
008afb86  00 23                                            movs r3, #0
008afb88  83 b0                                            sub sp, #0xc
008afb8a  99 46                                            mov sb, r3
008afb8c  01 23                                            movs r3, #1
008afb8e  00 91                                            str r1, [sp]
008afb90  01 92                                            str r2, [sp, #4]
008afb92  04 1c                                            adds r4, r0, #0
008afb94  98 46                                            mov r8, r3
008afb96  68 46                                            mov r0, sp
008afb98  00 23                                            movs r3, #0
008afb9a  0d 1c                                            adds r5, r1, #0
008afb9c  46 79                                            ldrb r6, [r0, #5]
008afb9e  87 79                                            ldrb r7, [r0, #6]
008afba0  9b 46                                            mov fp, r3
008afba2  22 e0                                            b #0x8afbea
008afba4  20 68                                            ldr r0, [r4]
008afba6  83 68                                            ldr r3, [r0, #8]
008afba8  c2 68                                            ldr r2, [r0, #0xc]
008afbaa  93 42                                            cmp r3, r2
008afbac  55 d2                                            bhs #0x8afc5a
008afbae  18 78                                            ldrb r0, [r3]
008afbb0  01 06                                            lsls r1, r0, #0x18
008afbb2  01 30                                            adds r0, #1
008afbb4  43 42                                            rsbs r3, r0, #0
008afbb6  43 41                                            adcs r3, r0
008afbb8  09 0e                                            lsrs r1, r1, #0x18
008afbba  63 71                                            strb r3, [r4, #5]
008afbbc  43 46                                            mov r3, r8
008afbbe  a3 71                                            strb r3, [r4, #6]
008afbc0  0b 1c                                            adds r3, r1, #0
008afbc2  30 3b                                            subs r3, #0x30
008afbc4  1b 06                                            lsls r3, r3, #0x18
008afbc6  1b 0e                                            lsrs r3, r3, #0x18
008afbc8  21 71                                            strb r1, [r4, #4]
008afbca  09 2b                                            cmp r3, #9
008afbcc  39 d8                                            bhi #0x8afc42
008afbce  50 46                                            mov r0, sl
008afbd0  f8 f7 0c fd                                      bl #0x8a85ec
008afbd4  20 68                                            ldr r0, [r4]
008afbd6  83 68                                            ldr r3, [r0, #8]
008afbd8  c2 68                                            ldr r2, [r0, #0xc]
008afbda  93 42                                            cmp r3, r2
008afbdc  39 d2                                            bhs #0x8afc52
008afbde  01 33                                            adds r3, #1
008afbe0  83 60                                            str r3, [r0, #8]
008afbe2  5b 46                                            mov r3, fp
008afbe4  a3 71                                            strb r3, [r4, #6]
008afbe6  01 23                                            movs r3, #1
008afbe8  99 46                                            mov sb, r3
008afbea  20 68                                            ldr r0, [r4]
008afbec  00 28                                            cmp r0, #0
008afbee  0e d0                                            beq #0x8afc0e
008afbf0  a3 79                                            ldrb r3, [r4, #6]
008afbf2  00 2b                                            cmp r3, #0
008afbf4  0b d1                                            bne #0x8afc0e
008afbf6  83 68                                            ldr r3, [r0, #8]
008afbf8  c2 68                                            ldr r2, [r0, #0xc]
008afbfa  93 42                                            cmp r3, r2
008afbfc  36 d2                                            bhs #0x8afc6c
008afbfe  18 78                                            ldrb r0, [r3]
008afc00  20 71                                            strb r0, [r4, #4]
008afc02  01 30                                            adds r0, #1
008afc04  43 42                                            rsbs r3, r0, #0
008afc06  43 41                                            adcs r3, r0
008afc08  63 71                                            strb r3, [r4, #5]
008afc0a  43 46                                            mov r3, r8
008afc0c  a3 71                                            strb r3, [r4, #6]
008afc0e  00 2d                                            cmp r5, #0
008afc10  0a d0                                            beq #0x8afc28
008afc12  00 2f                                            cmp r7, #0
008afc14  08 d1                                            bne #0x8afc28
008afc16  ab 68                                            ldr r3, [r5, #8]
008afc18  ea 68                                            ldr r2, [r5, #0xc]
008afc1a  93 42                                            cmp r3, r2
008afc1c  21 d2                                            bhs #0x8afc62
008afc1e  18 78                                            ldrb r0, [r3]
008afc20  01 30                                            adds r0, #1
008afc22  46 42                                            rsbs r6, r0, #0
008afc24  46 41                                            adcs r6, r0
008afc26  01 27                                            movs r7, #1
008afc28  63 79                                            ldrb r3, [r4, #5]
008afc2a  b3 42                                            cmp r3, r6
008afc2c  09 d0                                            beq #0x8afc42
008afc2e  a3 79                                            ldrb r3, [r4, #6]
008afc30  00 2b                                            cmp r3, #0
008afc32  b7 d0                                            beq #0x8afba4
008afc34  21 79                                            ldrb r1, [r4, #4]
008afc36  0b 1c                                            adds r3, r1, #0
008afc38  30 3b                                            subs r3, #0x30
008afc3a  1b 06                                            lsls r3, r3, #0x18
008afc3c  1b 0e                                            lsrs r3, r3, #0x18
008afc3e  09 2b                                            cmp r3, #9
008afc40  c5 d9                                            bls #0x8afbce
008afc42  03 b0                                            add sp, #0xc
008afc44  48 46                                            mov r0, sb
008afc46  3c bc                                            pop {r2, r3, r4, r5}
008afc48  90 46                                            mov r8, r2
008afc4a  99 46                                            mov sb, r3
008afc4c  a2 46                                            mov sl, r4
008afc4e  ab 46                                            mov fp, r5
008afc50  f0 bd                                            pop {r4, r5, r6, r7, pc}
008afc52  03 68                                            ldr r3, [r0]
008afc54  5b 6a                                            ldr r3, [r3, #0x24]
008afc56  98 47                                            blx r3
008afc58  c3 e7                                            b #0x8afbe2
008afc5a  03 68                                            ldr r3, [r0]
008afc5c  1b 6a                                            ldr r3, [r3, #0x20]
008afc5e  98 47                                            blx r3
008afc60  a6 e7                                            b #0x8afbb0
008afc62  2b 68                                            ldr r3, [r5]
008afc64  28 1c                                            adds r0, r5, #0
008afc66  1b 6a                                            ldr r3, [r3, #0x20]
008afc68  98 47                                            blx r3
008afc6a  d9 e7                                            b #0x8afc20
008afc6c  03 68                                            ldr r3, [r0]
008afc6e  1b 6a                                            ldr r3, [r3, #0x20]
008afc70  98 47                                            blx r3
008afc72  c5 e7                                            b #0x8afc00

; FUNCTION 0x008afc74, declared_size=516, range_size=516, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv12__read_floatISt19istreambuf_iteratorIcSt11char_traitsIcEEcEEbRNS_16__basic_iostringIcEERT_S9_RKSt5ctypeIT0_ERKSt8numpunctISB_E
; demangled: bool std::priv::__read_float<std::istreambuf_iterator<char, std::char_traits<char> >, char>(std::priv::__basic_iostring<char>&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >&, std::ctype<char> const&, std::numpunct<char> const&)
; decoder-mode: thumb
008afc74  f0 b5                                            push {r4, r5, r6, r7, lr}
008afc76  5f 46                                            mov r7, fp
008afc78  56 46                                            mov r6, sl
008afc7a  4d 46                                            mov r5, sb
008afc7c  44 46                                            mov r4, r8
008afc7e  f0 b4                                            push {r4, r5, r6, r7}
008afc80  7b 4b                                            ldr r3, [pc, #0x1ec]
008afc82  15 1c                                            adds r5, r2, #0
008afc84  7b 4a                                            ldr r2, [pc, #0x1ec]
008afc86  98 46                                            mov r8, r3
008afc88  f8 44                                            add r8, pc
008afc8a  92 46                                            mov sl, r2
008afc8c  42 46                                            mov r2, r8
008afc8e  52 44                                            add r2, sl
008afc90  13 68                                            ldr r3, [r2]
008afc92  97 b0                                            sub sp, #0x5c
008afc94  20 9e                                            ldr r6, [sp, #0x80]
008afc96  1b 68                                            ldr r3, [r3]
008afc98  0c af                                            add r7, sp, #0x30
008afc9a  0c 1c                                            adds r4, r1, #0
008afc9c  15 93                                            str r3, [sp, #0x54]
008afc9e  33 68                                            ldr r3, [r6]
008afca0  31 1c                                            adds r1, r6, #0
008afca2  81 46                                            mov sb, r0
008afca4  1b 69                                            ldr r3, [r3, #0x10]
008afca6  38 1c                                            adds r0, r7, #0
008afca8  98 47                                            blx r3
008afcaa  2f 23                                            movs r3, #0x2f
008afcac  6b 44                                            add r3, sp, r3
008afcae  9b 46                                            mov fp, r3
008afcb0  5a 46                                            mov r2, fp
008afcb2  01 23                                            movs r3, #1
008afcb4  13 70                                            strb r3, [r2]
008afcb6  33 68                                            ldr r3, [r6]
008afcb8  30 1c                                            adds r0, r6, #0
008afcba  9b 68                                            ldr r3, [r3, #8]
008afcbc  98 47                                            blx r3
008afcbe  05 90                                            str r0, [sp, #0x14]
008afcc0  33 68                                            ldr r3, [r6]
008afcc2  30 1c                                            adds r0, r6, #0
008afcc4  db 68                                            ldr r3, [r3, #0xc]
008afcc6  98 47                                            blx r3
008afcc8  4b 46                                            mov r3, sb
008afcca  01 93                                            str r3, [sp, #4]
008afccc  2b 23                                            movs r3, #0x2b
008afcce  02 93                                            str r3, [sp, #8]
008afcd0  2d 23                                            movs r3, #0x2d
008afcd2  03 93                                            str r3, [sp, #0xc]
008afcd4  6b 68                                            ldr r3, [r5, #4]
008afcd6  62 68                                            ldr r2, [r4, #4]
008afcd8  06 1c                                            adds r6, r0, #0
008afcda  00 93                                            str r3, [sp]
008afcdc  09 a8                                            add r0, sp, #0x24
008afcde  2b 68                                            ldr r3, [r5]
008afce0  21 68                                            ldr r1, [r4]
008afce2  fb f7 f7 ff                                      bl #0x8abcd4
008afce6  09 9b                                            ldr r3, [sp, #0x24]
008afce8  23 60                                            str r3, [r4]
008afcea  0a ab                                            add r3, sp, #0x28
008afcec  1b 88                                            ldrh r3, [r3]
008afcee  a3 80                                            strh r3, [r4, #4]
008afcf0  6b 46                                            mov r3, sp
008afcf2  2a 33                                            adds r3, #0x2a
008afcf4  1b 78                                            ldrb r3, [r3]
008afcf6  a3 71                                            strb r3, [r4, #6]
008afcf8  7a 69                                            ldr r2, [r7, #0x14]
008afcfa  3b 69                                            ldr r3, [r7, #0x10]
008afcfc  9a 42                                            cmp r2, r3
008afcfe  00 d1                                            bne #0x8afd02
008afd00  9f e0                                            b #0x8afe42
008afd02  6a 46                                            mov r2, sp
008afd04  48 32                                            adds r2, #0x48
008afd06  5b 46                                            mov r3, fp
008afd08  04 92                                            str r2, [sp, #0x10]
008afd0a  00 92                                            str r2, [sp]
008afd0c  03 93                                            str r3, [sp, #0xc]
008afd0e  20 1c                                            adds r0, r4, #0
008afd10  29 68                                            ldr r1, [r5]
008afd12  6a 68                                            ldr r2, [r5, #4]
008afd14  4b 46                                            mov r3, sb
008afd16  01 96                                            str r6, [sp, #4]
008afd18  02 97                                            str r7, [sp, #8]
008afd1a  fa f7 6d f9                                      bl #0x8a9ff8
008afd1e  06 1c                                            adds r6, r0, #0
008afd20  20 1c                                            adds r0, r4, #0
008afd22  29 1c                                            adds r1, r5, #0
008afd24  f9 f7 60 fc                                      bl #0x8a95e8
008afd28  00 28                                            cmp r0, #0
008afd2a  1f d0                                            beq #0x8afd6c
008afd2c  00 20                                            movs r0, #0
008afd2e  00 2e                                            cmp r6, #0
008afd30  19 d0                                            beq #0x8afd66
008afd32  20 1c                                            adds r0, r4, #0
008afd34  29 1c                                            adds r1, r5, #0
008afd36  f9 f7 57 fc                                      bl #0x8a95e8
008afd3a  00 28                                            cmp r0, #0
008afd3c  43 d0                                            beq #0x8afdc6
008afd3e  01 26                                            movs r6, #1
008afd40  38 1c                                            adds r0, r7, #0
008afd42  63 f6 34 e6                                      blx #0x3139ac
008afd46  42 46                                            mov r2, r8
008afd48  52 44                                            add r2, sl
008afd4a  13 68                                            ldr r3, [r2]
008afd4c  15 9a                                            ldr r2, [sp, #0x54]
008afd4e  30 1c                                            adds r0, r6, #0
008afd50  1b 68                                            ldr r3, [r3]
008afd52  9a 42                                            cmp r2, r3
008afd54  00 d0                                            beq #0x8afd58
008afd56  88 e0                                            b #0x8afe6a
008afd58  17 b0                                            add sp, #0x5c
008afd5a  3c bc                                            pop {r2, r3, r4, r5}
008afd5c  90 46                                            mov r8, r2
008afd5e  99 46                                            mov sb, r3
008afd60  a2 46                                            mov sl, r4
008afd62  ab 46                                            mov fp, r5
008afd64  f0 bd                                            pop {r4, r5, r6, r7, pc}
008afd66  00 28                                            cmp r0, #0
008afd68  ea d0                                            beq #0x8afd40
008afd6a  e2 e7                                            b #0x8afd32
008afd6c  a3 79                                            ldrb r3, [r4, #6]
008afd6e  00 2b                                            cmp r3, #0
008afd70  27 d1                                            bne #0x8afdc2
008afd72  20 68                                            ldr r0, [r4]
008afd74  83 68                                            ldr r3, [r0, #8]
008afd76  c2 68                                            ldr r2, [r0, #0xc]
008afd78  93 42                                            cmp r3, r2
008afd7a  6e d2                                            bhs #0x8afe5a
008afd7c  18 78                                            ldrb r0, [r3]
008afd7e  03 06                                            lsls r3, r0, #0x18
008afd80  01 30                                            adds r0, #1
008afd82  42 42                                            rsbs r2, r0, #0
008afd84  42 41                                            adcs r2, r0
008afd86  1b 0e                                            lsrs r3, r3, #0x18
008afd88  62 71                                            strb r2, [r4, #5]
008afd8a  01 22                                            movs r2, #1
008afd8c  23 71                                            strb r3, [r4, #4]
008afd8e  a2 71                                            strb r2, [r4, #6]
008afd90  05 9a                                            ldr r2, [sp, #0x14]
008afd92  9a 42                                            cmp r2, r3
008afd94  ca d1                                            bne #0x8afd2c
008afd96  48 46                                            mov r0, sb
008afd98  2e 21                                            movs r1, #0x2e
008afd9a  f8 f7 27 fc                                      bl #0x8a85ec
008afd9e  20 68                                            ldr r0, [r4]
008afda0  83 68                                            ldr r3, [r0, #8]
008afda2  c2 68                                            ldr r2, [r0, #0xc]
008afda4  93 42                                            cmp r3, r2
008afda6  48 d2                                            bhs #0x8afe3a
008afda8  01 33                                            adds r3, #1
008afdaa  83 60                                            str r3, [r0, #8]
008afdac  00 23                                            movs r3, #0
008afdae  a3 71                                            strb r3, [r4, #6]
008afdb0  04 9b                                            ldr r3, [sp, #0x10]
008afdb2  20 1c                                            adds r0, r4, #0
008afdb4  29 68                                            ldr r1, [r5]
008afdb6  00 93                                            str r3, [sp]
008afdb8  6a 68                                            ldr r2, [r5, #4]
008afdba  4b 46                                            mov r3, sb
008afdbc  ff f7 dc fe                                      bl #0x8afb78
008afdc0  b5 e7                                            b #0x8afd2e
008afdc2  23 79                                            ldrb r3, [r4, #4]
008afdc4  e4 e7                                            b #0x8afd90
008afdc6  20 1c                                            adds r0, r4, #0
008afdc8  f4 f7 c6 fe                                      bl #0x8a4b58
008afdcc  23 79                                            ldrb r3, [r4, #4]
008afdce  65 2b                                            cmp r3, #0x65
008afdd0  05 d0                                            beq #0x8afdde
008afdd2  20 1c                                            adds r0, r4, #0
008afdd4  f4 f7 c0 fe                                      bl #0x8a4b58
008afdd8  23 79                                            ldrb r3, [r4, #4]
008afdda  45 2b                                            cmp r3, #0x45
008afddc  af d1                                            bne #0x8afd3e
008afdde  48 46                                            mov r0, sb
008afde0  65 21                                            movs r1, #0x65
008afde2  f8 f7 03 fc                                      bl #0x8a85ec
008afde6  20 68                                            ldr r0, [r4]
008afde8  83 68                                            ldr r3, [r0, #8]
008afdea  c2 68                                            ldr r2, [r0, #0xc]
008afdec  93 42                                            cmp r3, r2
008afdee  38 d2                                            bhs #0x8afe62
008afdf0  01 33                                            adds r3, #1
008afdf2  83 60                                            str r3, [r0, #8]
008afdf4  00 23                                            movs r3, #0
008afdf6  a3 71                                            strb r3, [r4, #6]
008afdf8  2b 23                                            movs r3, #0x2b
008afdfa  02 93                                            str r3, [sp, #8]
008afdfc  2d 23                                            movs r3, #0x2d
008afdfe  03 93                                            str r3, [sp, #0xc]
008afe00  6b 68                                            ldr r3, [r5, #4]
008afe02  4a 46                                            mov r2, sb
008afe04  01 92                                            str r2, [sp, #4]
008afe06  00 93                                            str r3, [sp]
008afe08  07 a8                                            add r0, sp, #0x1c
008afe0a  2b 68                                            ldr r3, [r5]
008afe0c  21 68                                            ldr r1, [r4]
008afe0e  62 68                                            ldr r2, [r4, #4]
008afe10  fb f7 60 ff                                      bl #0x8abcd4
008afe14  07 9b                                            ldr r3, [sp, #0x1c]
008afe16  20 1c                                            adds r0, r4, #0
008afe18  23 60                                            str r3, [r4]
008afe1a  08 ab                                            add r3, sp, #0x20
008afe1c  1b 88                                            ldrh r3, [r3]
008afe1e  a3 80                                            strh r3, [r4, #4]
008afe20  6b 46                                            mov r3, sp
008afe22  22 33                                            adds r3, #0x22
008afe24  1b 78                                            ldrb r3, [r3]
008afe26  a3 71                                            strb r3, [r4, #6]
008afe28  04 9b                                            ldr r3, [sp, #0x10]
008afe2a  29 68                                            ldr r1, [r5]
008afe2c  6a 68                                            ldr r2, [r5, #4]
008afe2e  00 93                                            str r3, [sp]
008afe30  4b 46                                            mov r3, sb
008afe32  ff f7 a1 fe                                      bl #0x8afb78
008afe36  06 1c                                            adds r6, r0, #0
008afe38  82 e7                                            b #0x8afd40
008afe3a  03 68                                            ldr r3, [r0]
008afe3c  5b 6a                                            ldr r3, [r3, #0x24]
008afe3e  98 47                                            blx r3
008afe40  b4 e7                                            b #0x8afdac
008afe42  6a 46                                            mov r2, sp
008afe44  48 32                                            adds r2, #0x48
008afe46  04 92                                            str r2, [sp, #0x10]
008afe48  00 92                                            str r2, [sp]
008afe4a  20 1c                                            adds r0, r4, #0
008afe4c  29 68                                            ldr r1, [r5]
008afe4e  6a 68                                            ldr r2, [r5, #4]
008afe50  4b 46                                            mov r3, sb
008afe52  ff f7 91 fe                                      bl #0x8afb78
008afe56  06 1c                                            adds r6, r0, #0
008afe58  62 e7                                            b #0x8afd20
008afe5a  03 68                                            ldr r3, [r0]
008afe5c  1b 6a                                            ldr r3, [r3, #0x20]
008afe5e  98 47                                            blx r3
008afe60  8d e7                                            b #0x8afd7e
008afe62  03 68                                            ldr r3, [r0]
008afe64  5b 6a                                            ldr r3, [r3, #0x24]
008afe66  98 47                                            blx r3
008afe68  c4 e7                                            b #0x8afdf4
008afe6a  5e f6 52 e2                                      blx #0x30e310
008afe6e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008afe70  0c 4e 0e 00 ac 40 00 00                          .byte 0x0c, 0x4e, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008b0180, declared_size=484, range_size=484, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv13__get_integerISt19istreambuf_iteratorIwSt11char_traitsIwEEjwEEbRT_S6_iRT0_ibT1_RKSsRKSt12__false_type
; demangled: bool std::priv::__get_integer<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, unsigned int, wchar_t>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >&, int, unsigned int&, int, bool, wchar_t, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::__false_type const&)
; decoder-mode: thumb
008b0180  f0 b5                                            push {r4, r5, r6, r7, lr}
008b0182  5f 46                                            mov r7, fp
008b0184  56 46                                            mov r6, sl
008b0186  4d 46                                            mov r5, sb
008b0188  44 46                                            mov r4, r8
008b018a  f0 b4                                            push {r4, r5, r6, r7}
008b018c  73 4c                                            ldr r4, [pc, #0x1cc]
008b018e  9d b0                                            sub sp, #0x74
008b0190  08 93                                            str r3, [sp, #0x20]
008b0192  7c 44                                            add r4, pc
008b0194  26 ab                                            add r3, sp, #0x98
008b0196  0d 1c                                            adds r5, r1, #0
008b0198  29 99                                            ldr r1, [sp, #0xa4]
008b019a  04 94                                            str r4, [sp, #0x10]
008b019c  04 1c                                            adds r4, r0, #0
008b019e  01 cb                                            ldm r3!, {r0}
008b01a0  05 91                                            str r1, [sp, #0x14]
008b01a2  92 46                                            mov sl, r2
008b01a4  1b 78                                            ldrb r3, [r3]
008b01a6  6e 4a                                            ldr r2, [pc, #0x1b8]
008b01a8  81 46                                            mov sb, r0
008b01aa  04 98                                            ldr r0, [sp, #0x10]
008b01ac  09 93                                            str r3, [sp, #0x24]
008b01ae  06 92                                            str r2, [sp, #0x18]
008b01b0  83 58                                            ldr r3, [r0, r2]
008b01b2  01 20                                            movs r0, #1
008b01b4  40 42                                            rsbs r0, r0, #0
008b01b6  1b 68                                            ldr r3, [r3]
008b01b8  00 26                                            movs r6, #0
008b01ba  00 27                                            movs r7, #0
008b01bc  1b 93                                            str r3, [sp, #0x6c]
008b01be  4a 69                                            ldr r2, [r1, #0x14]
008b01c0  0b 69                                            ldr r3, [r1, #0x10]
008b01c2  d3 1a                                            subs r3, r2, r3
008b01c4  19 1c                                            adds r1, r3, #0
008b01c6  4b 1e                                            subs r3, r1, #1
008b01c8  99 41                                            sbcs r1, r3
008b01ca  8b 46                                            mov fp, r1
008b01cc  51 46                                            mov r1, sl
008b01ce  5e f6 3e e5                                      blx #0x30ec4c
008b01d2  6a 46                                            mov r2, sp
008b01d4  2c 32                                            adds r2, #0x2c
008b01d6  01 23                                            movs r3, #1
008b01d8  01 90                                            str r0, [sp, #4]
008b01da  07 92                                            str r2, [sp, #0x1c]
008b01dc  03 92                                            str r2, [sp, #0xc]
008b01de  02 96                                            str r6, [sp, #8]
008b01e0  98 46                                            mov r8, r3
008b01e2  20 68                                            ldr r0, [r4]
008b01e4  00 28                                            cmp r0, #0
008b01e6  0f d0                                            beq #0x8b0208
008b01e8  63 7a                                            ldrb r3, [r4, #9]
008b01ea  00 2b                                            cmp r3, #0
008b01ec  0c d1                                            bne #0x8b0208
008b01ee  83 68                                            ldr r3, [r0, #8]
008b01f0  c2 68                                            ldr r2, [r0, #0xc]
008b01f2  93 42                                            cmp r3, r2
008b01f4  00 d3                                            blo #0x8b01f8
008b01f6  97 e0                                            b #0x8b0328
008b01f8  18 68                                            ldr r0, [r3]
008b01fa  60 60                                            str r0, [r4, #4]
008b01fc  01 30                                            adds r0, #1
008b01fe  43 42                                            rsbs r3, r0, #0
008b0200  43 41                                            adcs r3, r0
008b0202  23 72                                            strb r3, [r4, #8]
008b0204  43 46                                            mov r3, r8
008b0206  63 72                                            strb r3, [r4, #9]
008b0208  28 68                                            ldr r0, [r5]
008b020a  00 28                                            cmp r0, #0
008b020c  4f d0                                            beq #0x8b02ae
008b020e  6b 7a                                            ldrb r3, [r5, #9]
008b0210  00 2b                                            cmp r3, #0
008b0212  4c d1                                            bne #0x8b02ae
008b0214  83 68                                            ldr r3, [r0, #8]
008b0216  c2 68                                            ldr r2, [r0, #0xc]
008b0218  93 42                                            cmp r3, r2
008b021a  00 d3                                            blo #0x8b021e
008b021c  80 e0                                            b #0x8b0320
008b021e  18 68                                            ldr r0, [r3]
008b0220  68 60                                            str r0, [r5, #4]
008b0222  01 30                                            adds r0, #1
008b0224  43 42                                            rsbs r3, r0, #0
008b0226  43 41                                            adcs r3, r0
008b0228  40 46                                            mov r0, r8
008b022a  2b 72                                            strb r3, [r5, #8]
008b022c  68 72                                            strb r0, [r5, #9]
008b022e  22 7a                                            ldrb r2, [r4, #8]
008b0230  9a 42                                            cmp r2, r3
008b0232  40 d0                                            beq #0x8b02b6
008b0234  63 7a                                            ldrb r3, [r4, #9]
008b0236  00 2b                                            cmp r3, #0
008b0238  60 d1                                            bne #0x8b02fc
008b023a  20 68                                            ldr r0, [r4]
008b023c  83 68                                            ldr r3, [r0, #8]
008b023e  c2 68                                            ldr r2, [r0, #0xc]
008b0240  93 42                                            cmp r3, r2
008b0242  69 d2                                            bhs #0x8b0318
008b0244  18 68                                            ldr r0, [r3]
008b0246  42 1c                                            adds r2, r0, #1
008b0248  53 42                                            rsbs r3, r2, #0
008b024a  53 41                                            adcs r3, r2
008b024c  41 46                                            mov r1, r8
008b024e  60 60                                            str r0, [r4, #4]
008b0250  23 72                                            strb r3, [r4, #8]
008b0252  61 72                                            strb r1, [r4, #9]
008b0254  5a 46                                            mov r2, fp
008b0256  00 2a                                            cmp r2, #0
008b0258  02 d0                                            beq #0x8b0260
008b025a  28 9b                                            ldr r3, [sp, #0xa0]
008b025c  83 42                                            cmp r3, r0
008b025e  55 d0                                            beq #0x8b030c
008b0260  ff 23                                            movs r3, #0xff
008b0262  7f 28                                            cmp r0, #0x7f
008b0264  02 d8                                            bhi #0x8b026c
008b0266  09 f0 29 fb                                      bl #0x8b98bc
008b026a  03 1c                                            adds r3, r0, #0
008b026c  9a 45                                            cmp sl, r3
008b026e  22 dd                                            ble #0x8b02b6
008b0270  01 9a                                            ldr r2, [sp, #4]
008b0272  01 37                                            adds r7, #1
008b0274  01 21                                            movs r1, #1
008b0276  3f 06                                            lsls r7, r7, #0x18
008b0278  89 44                                            add sb, r1
008b027a  3f 0e                                            lsrs r7, r7, #0x18
008b027c  96 42                                            cmp r6, r2
008b027e  0b d8                                            bhi #0x8b0298
008b0280  52 46                                            mov r2, sl
008b0282  72 43                                            muls r2, r6, r2
008b0284  9b 18                                            adds r3, r3, r2
008b0286  00 2e                                            cmp r6, #0
008b0288  3e d0                                            beq #0x8b0308
008b028a  02 98                                            ldr r0, [sp, #8]
008b028c  00 28                                            cmp r0, #0
008b028e  3b d1                                            bne #0x8b0308
008b0290  9e 42                                            cmp r6, r3
008b0292  39 d3                                            blo #0x8b0308
008b0294  1e 1c                                            adds r6, r3, #0
008b0296  01 21                                            movs r1, #1
008b0298  02 91                                            str r1, [sp, #8]
008b029a  20 68                                            ldr r0, [r4]
008b029c  83 68                                            ldr r3, [r0, #8]
008b029e  c2 68                                            ldr r2, [r0, #0xc]
008b02a0  93 42                                            cmp r3, r2
008b02a2  2d d2                                            bhs #0x8b0300
008b02a4  04 33                                            adds r3, #4
008b02a6  83 60                                            str r3, [r0, #8]
008b02a8  00 22                                            movs r2, #0
008b02aa  62 72                                            strb r2, [r4, #9]
008b02ac  99 e7                                            b #0x8b01e2
008b02ae  2b 7a                                            ldrb r3, [r5, #8]
008b02b0  22 7a                                            ldrb r2, [r4, #8]
008b02b2  9a 42                                            cmp r2, r3
008b02b4  be d1                                            bne #0x8b0234
008b02b6  5a 46                                            mov r2, fp
008b02b8  03 99                                            ldr r1, [sp, #0xc]
008b02ba  00 2a                                            cmp r2, #0
008b02bc  04 d0                                            beq #0x8b02c8
008b02be  07 9b                                            ldr r3, [sp, #0x1c]
008b02c0  99 42                                            cmp r1, r3
008b02c2  01 d0                                            beq #0x8b02c8
008b02c4  0f 70                                            strb r7, [r1]
008b02c6  01 31                                            adds r1, #1
008b02c8  4c 46                                            mov r4, sb
008b02ca  00 20                                            movs r0, #0
008b02cc  00 2c                                            cmp r4, #0
008b02ce  07 dd                                            ble #0x8b02e0
008b02d0  02 98                                            ldr r0, [sp, #8]
008b02d2  00 28                                            cmp r0, #0
008b02d4  2c d0                                            beq #0x8b0330
008b02d6  08 9a                                            ldr r2, [sp, #0x20]
008b02d8  01 23                                            movs r3, #1
008b02da  5b 42                                            rsbs r3, r3, #0
008b02dc  13 60                                            str r3, [r2]
008b02de  00 20                                            movs r0, #0
008b02e0  04 9c                                            ldr r4, [sp, #0x10]
008b02e2  06 99                                            ldr r1, [sp, #0x18]
008b02e4  1b 9a                                            ldr r2, [sp, #0x6c]
008b02e6  63 58                                            ldr r3, [r4, r1]
008b02e8  1b 68                                            ldr r3, [r3]
008b02ea  9a 42                                            cmp r2, r3
008b02ec  34 d1                                            bne #0x8b0358
008b02ee  1d b0                                            add sp, #0x74
008b02f0  3c bc                                            pop {r2, r3, r4, r5}
008b02f2  90 46                                            mov r8, r2
008b02f4  99 46                                            mov sb, r3
008b02f6  a2 46                                            mov sl, r4
008b02f8  ab 46                                            mov fp, r5
008b02fa  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b02fc  60 68                                            ldr r0, [r4, #4]
008b02fe  a9 e7                                            b #0x8b0254
008b0300  03 68                                            ldr r3, [r0]
008b0302  5b 6a                                            ldr r3, [r3, #0x24]
008b0304  98 47                                            blx r3
008b0306  cf e7                                            b #0x8b02a8
008b0308  1e 1c                                            adds r6, r3, #0
008b030a  c6 e7                                            b #0x8b029a
008b030c  03 98                                            ldr r0, [sp, #0xc]
008b030e  07 70                                            strb r7, [r0]
008b0310  01 30                                            adds r0, #1
008b0312  03 90                                            str r0, [sp, #0xc]
008b0314  00 27                                            movs r7, #0
008b0316  c0 e7                                            b #0x8b029a
008b0318  03 68                                            ldr r3, [r0]
008b031a  1b 6a                                            ldr r3, [r3, #0x20]
008b031c  98 47                                            blx r3
008b031e  92 e7                                            b #0x8b0246
008b0320  03 68                                            ldr r3, [r0]
008b0322  1b 6a                                            ldr r3, [r3, #0x20]
008b0324  98 47                                            blx r3
008b0326  7b e7                                            b #0x8b0220
008b0328  03 68                                            ldr r3, [r0]
008b032a  1b 6a                                            ldr r3, [r3, #0x20]
008b032c  98 47                                            blx r3
008b032e  64 e7                                            b #0x8b01fa
008b0330  09 9a                                            ldr r2, [sp, #0x24]
008b0332  00 2a                                            cmp r2, #0
008b0334  0c d1                                            bne #0x8b0350
008b0336  08 9c                                            ldr r4, [sp, #0x20]
008b0338  26 60                                            str r6, [r4]
008b033a  5a 46                                            mov r2, fp
008b033c  01 20                                            movs r0, #1
008b033e  00 2a                                            cmp r2, #0
008b0340  ce d0                                            beq #0x8b02e0
008b0342  05 9b                                            ldr r3, [sp, #0x14]
008b0344  07 98                                            ldr r0, [sp, #0x1c]
008b0346  5a 69                                            ldr r2, [r3, #0x14]
008b0348  1b 69                                            ldr r3, [r3, #0x10]
008b034a  09 f0 93 fa                                      bl #0x8b9874
008b034e  c7 e7                                            b #0x8b02e0
008b0350  08 9b                                            ldr r3, [sp, #0x20]
008b0352  76 42                                            rsbs r6, r6, #0
008b0354  1e 60                                            str r6, [r3]
008b0356  f0 e7                                            b #0x8b033a
008b0358  5d f6 da e7                                      blx #0x30e310
; mapping-symbol data/literal pool
008b035c  02 49 0e 00 ac 40 00 00                          .byte 0x02, 0x49, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008b1ff4, declared_size=936, range_size=936, mode=thumb
; class-group: bool std::priv
; alias: _ZNSt4priv20__get_monetary_valueISt19istreambuf_iteratorIcSt11char_traitsIcEESt20back_insert_iteratorISsEcEEbRT_S7_T0_RKSt5ctypeIT1_ESB_iSB_RKSsRb
; demangled: bool std::priv::__get_monetary_value<std::istreambuf_iterator<char, std::char_traits<char> >, std::back_insert_iterator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, char>(std::istreambuf_iterator<char, std::char_traits<char> >&, std::istreambuf_iterator<char, std::char_traits<char> >, std::back_insert_iterator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::ctype<char> const&, char, int, char, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, bool&)
; decoder-mode: thumb
008b1ff4  f0 b5                                            push {r4, r5, r6, r7, lr}
008b1ff6  5f 46                                            mov r7, fp
008b1ff8  56 46                                            mov r6, sl
008b1ffa  4d 46                                            mov r5, sb
008b1ffc  44 46                                            mov r4, r8
008b1ffe  f0 b4                                            push {r4, r5, r6, r7}
008b2000  b1 b0                                            sub sp, #0xc4
008b2002  08 af                                            add r7, sp, #0x20
008b2004  7a 60                                            str r2, [r7, #4]
008b2006  b7 4c                                            ldr r4, [pc, #0x2dc]
008b2008  08 91                                            str r1, [sp, #0x20]
008b200a  04 93                                            str r3, [sp, #0x10]
008b200c  3e 9d                                            ldr r5, [sp, #0xf8]
008b200e  3a ab                                            add r3, sp, #0xe8
008b2010  3f 99                                            ldr r1, [sp, #0xfc]
008b2012  40 cb                                            ldm r3!, {r6}
008b2014  7c 44                                            add r4, pc
008b2016  02 94                                            str r4, [sp, #8]
008b2018  05 95                                            str r5, [sp, #0x14]
008b201a  03 91                                            str r1, [sp, #0xc]
008b201c  1b 78                                            ldrb r3, [r3]
008b201e  b2 4a                                            ldr r2, [pc, #0x2c8]
008b2020  02 9d                                            ldr r5, [sp, #8]
008b2022  07 93                                            str r3, [sp, #0x1c]
008b2024  3d ab                                            add r3, sp, #0xf4
008b2026  1b 78                                            ldrb r3, [r3]
008b2028  06 92                                            str r2, [sp, #0x18]
008b202a  04 1c                                            adds r4, r0, #0
008b202c  01 93                                            str r3, [sp, #4]
008b202e  ab 58                                            ldr r3, [r5, r2]
008b2030  1b 68                                            ldr r3, [r3]
008b2032  2f 93                                            str r3, [sp, #0xbc]
008b2034  00 68                                            ldr r0, [r0]
008b2036  00 28                                            cmp r0, #0
008b2038  0f d0                                            beq #0x8b205a
008b203a  a3 79                                            ldrb r3, [r4, #6]
008b203c  00 2b                                            cmp r3, #0
008b203e  0c d1                                            bne #0x8b205a
008b2040  83 68                                            ldr r3, [r0, #8]
008b2042  c2 68                                            ldr r2, [r0, #0xc]
008b2044  93 42                                            cmp r3, r2
008b2046  00 d3                                            blo #0x8b204a
008b2048  94 e1                                            b #0x8b2374
008b204a  18 78                                            ldrb r0, [r3]
008b204c  20 71                                            strb r0, [r4, #4]
008b204e  01 30                                            adds r0, #1
008b2050  43 42                                            rsbs r3, r0, #0
008b2052  43 41                                            adcs r3, r0
008b2054  63 71                                            strb r3, [r4, #5]
008b2056  01 23                                            movs r3, #1
008b2058  a3 71                                            strb r3, [r4, #6]
008b205a  08 98                                            ldr r0, [sp, #0x20]
008b205c  00 28                                            cmp r0, #0
008b205e  22 d0                                            beq #0x8b20a6
008b2060  bb 79                                            ldrb r3, [r7, #6]
008b2062  00 2b                                            cmp r3, #0
008b2064  1f d1                                            bne #0x8b20a6
008b2066  83 68                                            ldr r3, [r0, #8]
008b2068  c2 68                                            ldr r2, [r0, #0xc]
008b206a  93 42                                            cmp r3, r2
008b206c  00 d3                                            blo #0x8b2070
008b206e  79 e1                                            b #0x8b2364
008b2070  18 78                                            ldrb r0, [r3]
008b2072  38 71                                            strb r0, [r7, #4]
008b2074  01 30                                            adds r0, #1
008b2076  01 22                                            movs r2, #1
008b2078  43 42                                            rsbs r3, r0, #0
008b207a  43 41                                            adcs r3, r0
008b207c  7b 71                                            strb r3, [r7, #5]
008b207e  ba 71                                            strb r2, [r7, #6]
008b2080  62 79                                            ldrb r2, [r4, #5]
008b2082  9a 42                                            cmp r2, r3
008b2084  13 d1                                            bne #0x8b20ae
008b2086  00 20                                            movs r0, #0
008b2088  02 9a                                            ldr r2, [sp, #8]
008b208a  06 9c                                            ldr r4, [sp, #0x18]
008b208c  13 59                                            ldr r3, [r2, r4]
008b208e  2f 9a                                            ldr r2, [sp, #0xbc]
008b2090  1b 68                                            ldr r3, [r3]
008b2092  9a 42                                            cmp r2, r3
008b2094  00 d0                                            beq #0x8b2098
008b2096  7f e1                                            b #0x8b2398
008b2098  31 b0                                            add sp, #0xc4
008b209a  3c bc                                            pop {r2, r3, r4, r5}
008b209c  90 46                                            mov r8, r2
008b209e  99 46                                            mov sb, r3
008b20a0  a2 46                                            mov sl, r4
008b20a2  ab 46                                            mov fp, r5
008b20a4  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b20a6  7b 79                                            ldrb r3, [r7, #5]
008b20a8  62 79                                            ldrb r2, [r4, #5]
008b20aa  9a 42                                            cmp r2, r3
008b20ac  eb d0                                            beq #0x8b2086
008b20ae  a3 79                                            ldrb r3, [r4, #6]
008b20b0  00 2b                                            cmp r3, #0
008b20b2  00 d0                                            beq #0x8b20b6
008b20b4  9c e0                                            b #0x8b21f0
008b20b6  20 68                                            ldr r0, [r4]
008b20b8  83 68                                            ldr r3, [r0, #8]
008b20ba  c2 68                                            ldr r2, [r0, #0xc]
008b20bc  93 42                                            cmp r3, r2
008b20be  00 d3                                            blo #0x8b20c2
008b20c0  62 e1                                            b #0x8b2388
008b20c2  18 78                                            ldrb r0, [r3]
008b20c4  41 1c                                            adds r1, r0, #1
008b20c6  4a 42                                            rsbs r2, r1, #0
008b20c8  4a 41                                            adcs r2, r1
008b20ca  03 06                                            lsls r3, r0, #0x18
008b20cc  1b 0e                                            lsrs r3, r3, #0x18
008b20ce  62 71                                            strb r2, [r4, #5]
008b20d0  01 22                                            movs r2, #1
008b20d2  23 71                                            strb r3, [r4, #4]
008b20d4  a2 71                                            strb r2, [r4, #6]
008b20d6  f2 68                                            ldr r2, [r6, #0xc]
008b20d8  9b 00                                            lsls r3, r3, #2
008b20da  9b 58                                            ldr r3, [r3, r2]
008b20dc  59 06                                            lsls r1, r3, #0x19
008b20de  d2 d5                                            bpl #0x8b2086
008b20e0  05 9d                                            ldr r5, [sp, #0x14]
008b20e2  00 21                                            movs r1, #0
008b20e4  88 46                                            mov r8, r1
008b20e6  2a 69                                            ldr r2, [r5, #0x10]
008b20e8  6b 69                                            ldr r3, [r5, #0x14]
008b20ea  0f ad                                            add r5, sp, #0x3c
008b20ec  0d a9                                            add r1, sp, #0x34
008b20ee  9b 1a                                            subs r3, r3, r2
008b20f0  5a 1e                                            subs r2, r3, #1
008b20f2  93 41                                            sbcs r3, r2
008b20f4  5b 42                                            rsbs r3, r3, #0
008b20f6  1d 40                                            ands r5, r3
008b20f8  40 23                                            movs r3, #0x40
008b20fa  01 22                                            movs r2, #1
008b20fc  9b 46                                            mov fp, r3
008b20fe  3b 1c                                            adds r3, r7, #0
008b2100  92 46                                            mov sl, r2
008b2102  47 46                                            mov r7, r8
008b2104  89 46                                            mov sb, r1
008b2106  98 46                                            mov r8, r3
008b2108  20 1c                                            adds r0, r4, #0
008b210a  41 46                                            mov r1, r8
008b210c  f7 f7 6c fa                                      bl #0x8a95e8
008b2110  00 28                                            cmp r0, #0
008b2112  41 d1                                            bne #0x8b2198
008b2114  a3 79                                            ldrb r3, [r4, #6]
008b2116  00 2b                                            cmp r3, #0
008b2118  6c d1                                            bne #0x8b21f4
008b211a  20 68                                            ldr r0, [r4]
008b211c  83 68                                            ldr r3, [r0, #8]
008b211e  c2 68                                            ldr r2, [r0, #0xc]
008b2120  93 42                                            cmp r3, r2
008b2122  00 d3                                            blo #0x8b2126
008b2124  8f e0                                            b #0x8b2246
008b2126  18 78                                            ldrb r0, [r3]
008b2128  03 06                                            lsls r3, r0, #0x18
008b212a  01 30                                            adds r0, #1
008b212c  42 42                                            rsbs r2, r0, #0
008b212e  42 41                                            adcs r2, r0
008b2130  62 71                                            strb r2, [r4, #5]
008b2132  1b 0e                                            lsrs r3, r3, #0x18
008b2134  52 46                                            mov r2, sl
008b2136  23 71                                            strb r3, [r4, #4]
008b2138  a2 71                                            strb r2, [r4, #6]
008b213a  f2 68                                            ldr r2, [r6, #0xc]
008b213c  99 00                                            lsls r1, r3, #2
008b213e  8a 58                                            ldr r2, [r1, r2]
008b2140  59 46                                            mov r1, fp
008b2142  11 42                                            tst r1, r2
008b2144  5d d1                                            bne #0x8b2202
008b2146  00 2d                                            cmp r5, #0
008b2148  26 d0                                            beq #0x8b2198
008b214a  a2 79                                            ldrb r2, [r4, #6]
008b214c  00 2a                                            cmp r2, #0
008b214e  0e d1                                            bne #0x8b216e
008b2150  20 68                                            ldr r0, [r4]
008b2152  83 68                                            ldr r3, [r0, #8]
008b2154  c2 68                                            ldr r2, [r0, #0xc]
008b2156  93 42                                            cmp r3, r2
008b2158  79 d2                                            bhs #0x8b224e
008b215a  18 78                                            ldrb r0, [r3]
008b215c  03 06                                            lsls r3, r0, #0x18
008b215e  01 30                                            adds r0, #1
008b2160  1b 0e                                            lsrs r3, r3, #0x18
008b2162  42 42                                            rsbs r2, r0, #0
008b2164  42 41                                            adcs r2, r0
008b2166  51 46                                            mov r1, sl
008b2168  23 71                                            strb r3, [r4, #4]
008b216a  62 71                                            strb r2, [r4, #5]
008b216c  a1 71                                            strb r1, [r4, #6]
008b216e  01 9a                                            ldr r2, [sp, #4]
008b2170  9a 42                                            cmp r2, r3
008b2172  11 d1                                            bne #0x8b2198
008b2174  2f 70                                            strb r7, [r5]
008b2176  20 68                                            ldr r0, [r4]
008b2178  01 35                                            adds r5, #1
008b217a  83 68                                            ldr r3, [r0, #8]
008b217c  c2 68                                            ldr r2, [r0, #0xc]
008b217e  93 42                                            cmp r3, r2
008b2180  5d d2                                            bhs #0x8b223e
008b2182  01 33                                            adds r3, #1
008b2184  83 60                                            str r3, [r0, #8]
008b2186  00 23                                            movs r3, #0
008b2188  a3 71                                            strb r3, [r4, #6]
008b218a  20 1c                                            adds r0, r4, #0
008b218c  41 46                                            mov r1, r8
008b218e  00 27                                            movs r7, #0
008b2190  f7 f7 2a fa                                      bl #0x8a95e8
008b2194  00 28                                            cmp r0, #0
008b2196  bd d0                                            beq #0x8b2114
008b2198  05 99                                            ldr r1, [sp, #0x14]
008b219a  43 46                                            mov r3, r8
008b219c  b8 46                                            mov r8, r7
008b219e  4a 69                                            ldr r2, [r1, #0x14]
008b21a0  1f 1c                                            adds r7, r3, #0
008b21a2  0b 69                                            ldr r3, [r1, #0x10]
008b21a4  9a 42                                            cmp r2, r3
008b21a6  00 d1                                            bne #0x8b21aa
008b21a8  e8 e0                                            b #0x8b237c
008b21aa  0f a8                                            add r0, sp, #0x3c
008b21ac  01 1c                                            adds r1, r0, #0
008b21ae  85 42                                            cmp r5, r0
008b21b0  05 d0                                            beq #0x8b21be
008b21b2  43 46                                            mov r3, r8
008b21b4  2b 70                                            strb r3, [r5]
008b21b6  69 1c                                            adds r1, r5, #1
008b21b8  05 9d                                            ldr r5, [sp, #0x14]
008b21ba  6a 69                                            ldr r2, [r5, #0x14]
008b21bc  2b 69                                            ldr r3, [r5, #0x10]
008b21be  07 f0 59 fb                                      bl #0x8b9874
008b21c2  03 99                                            ldr r1, [sp, #0xc]
008b21c4  08 70                                            strb r0, [r1]
008b21c6  20 1c                                            adds r0, r4, #0
008b21c8  39 1c                                            adds r1, r7, #0
008b21ca  f7 f7 0d fa                                      bl #0x8a95e8
008b21ce  00 28                                            cmp r0, #0
008b21d0  45 d0                                            beq #0x8b225e
008b21d2  3c 9b                                            ldr r3, [sp, #0xf0]
008b21d4  00 2b                                            cmp r3, #0
008b21d6  09 d0                                            beq #0x8b21ec
008b21d8  04 9d                                            ldr r5, [sp, #0x10]
008b21da  00 24                                            movs r4, #0
008b21dc  1e 1c                                            adds r6, r3, #0
008b21de  28 1c                                            adds r0, r5, #0
008b21e0  30 21                                            movs r1, #0x30
008b21e2  01 34                                            adds r4, #1
008b21e4  78 f6 3a e0                                      blx #0x32a25c
008b21e8  b4 42                                            cmp r4, r6
008b21ea  f8 d1                                            bne #0x8b21de
008b21ec  01 20                                            movs r0, #1
008b21ee  4b e7                                            b #0x8b2088
008b21f0  23 79                                            ldrb r3, [r4, #4]
008b21f2  70 e7                                            b #0x8b20d6
008b21f4  23 79                                            ldrb r3, [r4, #4]
008b21f6  f2 68                                            ldr r2, [r6, #0xc]
008b21f8  99 00                                            lsls r1, r3, #2
008b21fa  8a 58                                            ldr r2, [r1, r2]
008b21fc  59 46                                            mov r1, fp
008b21fe  11 42                                            tst r1, r2
008b2200  a1 d0                                            beq #0x8b2146
008b2202  21 1c                                            adds r1, r4, #0
008b2204  00 22                                            movs r2, #0
008b2206  48 46                                            mov r0, sb
008b2208  f7 f7 92 f8                                      bl #0x8a9330
008b220c  4a 46                                            mov r2, sb
008b220e  93 79                                            ldrb r3, [r2, #6]
008b2210  01 37                                            adds r7, #1
008b2212  3f 06                                            lsls r7, r7, #0x18
008b2214  3f 0e                                            lsrs r7, r7, #0x18
008b2216  11 79                                            ldrb r1, [r2, #4]
008b2218  00 2b                                            cmp r3, #0
008b221a  0c d1                                            bne #0x8b2236
008b221c  10 68                                            ldr r0, [r2]
008b221e  83 68                                            ldr r3, [r0, #8]
008b2220  c2 68                                            ldr r2, [r0, #0xc]
008b2222  93 42                                            cmp r3, r2
008b2224  17 d2                                            bhs #0x8b2256
008b2226  18 78                                            ldrb r0, [r3]
008b2228  01 06                                            lsls r1, r0, #0x18
008b222a  01 30                                            adds r0, #1
008b222c  43 42                                            rsbs r3, r0, #0
008b222e  43 41                                            adcs r3, r0
008b2230  4a 46                                            mov r2, sb
008b2232  09 0e                                            lsrs r1, r1, #0x18
008b2234  53 71                                            strb r3, [r2, #5]
008b2236  04 98                                            ldr r0, [sp, #0x10]
008b2238  78 f6 10 e0                                      blx #0x32a25c
008b223c  64 e7                                            b #0x8b2108
008b223e  03 68                                            ldr r3, [r0]
008b2240  5b 6a                                            ldr r3, [r3, #0x24]
008b2242  98 47                                            blx r3
008b2244  9f e7                                            b #0x8b2186
008b2246  03 68                                            ldr r3, [r0]
008b2248  1b 6a                                            ldr r3, [r3, #0x20]
008b224a  98 47                                            blx r3
008b224c  6c e7                                            b #0x8b2128
008b224e  03 68                                            ldr r3, [r0]
008b2250  1b 6a                                            ldr r3, [r3, #0x20]
008b2252  98 47                                            blx r3
008b2254  82 e7                                            b #0x8b215c
008b2256  03 68                                            ldr r3, [r0]
008b2258  1b 6a                                            ldr r3, [r3, #0x20]
008b225a  98 47                                            blx r3
008b225c  e4 e7                                            b #0x8b2228
008b225e  a3 79                                            ldrb r3, [r4, #6]
008b2260  00 2b                                            cmp r3, #0
008b2262  00 d0                                            beq #0x8b2266
008b2264  8e e0                                            b #0x8b2384
008b2266  20 68                                            ldr r0, [r4]
008b2268  83 68                                            ldr r3, [r0, #8]
008b226a  c2 68                                            ldr r2, [r0, #0xc]
008b226c  93 42                                            cmp r3, r2
008b226e  00 d3                                            blo #0x8b2272
008b2270  8e e0                                            b #0x8b2390
008b2272  18 78                                            ldrb r0, [r3]
008b2274  03 06                                            lsls r3, r0, #0x18
008b2276  01 30                                            adds r0, #1
008b2278  42 42                                            rsbs r2, r0, #0
008b227a  42 41                                            adcs r2, r0
008b227c  1b 0e                                            lsrs r3, r3, #0x18
008b227e  62 71                                            strb r2, [r4, #5]
008b2280  01 22                                            movs r2, #1
008b2282  23 71                                            strb r3, [r4, #4]
008b2284  a2 71                                            strb r2, [r4, #6]
008b2286  07 9a                                            ldr r2, [sp, #0x1c]
008b2288  9a 42                                            cmp r2, r3
008b228a  a2 d1                                            bne #0x8b21d2
008b228c  20 68                                            ldr r0, [r4]
008b228e  83 68                                            ldr r3, [r0, #8]
008b2290  c2 68                                            ldr r2, [r0, #0xc]
008b2292  93 42                                            cmp r3, r2
008b2294  6a d2                                            bhs #0x8b236c
008b2296  01 33                                            adds r3, #1
008b2298  83 60                                            str r3, [r0, #8]
008b229a  00 23                                            movs r3, #0
008b229c  a3 71                                            strb r3, [r4, #6]
008b229e  01 25                                            movs r5, #1
008b22a0  04 9a                                            ldr r2, [sp, #0x10]
008b22a2  aa 46                                            mov sl, r5
008b22a4  0b ad                                            add r5, sp, #0x2c
008b22a6  98 46                                            mov r8, r3
008b22a8  40 21                                            movs r1, #0x40
008b22aa  2b 1c                                            adds r3, r5, #0
008b22ac  89 46                                            mov sb, r1
008b22ae  25 1c                                            adds r5, r4, #0
008b22b0  93 46                                            mov fp, r2
008b22b2  44 46                                            mov r4, r8
008b22b4  b8 46                                            mov r8, r7
008b22b6  37 1c                                            adds r7, r6, #0
008b22b8  1e 1c                                            adds r6, r3, #0
008b22ba  28 1c                                            adds r0, r5, #0
008b22bc  41 46                                            mov r1, r8
008b22be  f7 f7 93 f9                                      bl #0x8a95e8
008b22c2  00 28                                            cmp r0, #0
008b22c4  12 d0                                            beq #0x8b22ec
008b22c6  03 9a                                            ldr r2, [sp, #0xc]
008b22c8  a0 46                                            mov r8, r4
008b22ca  13 78                                            ldrb r3, [r2]
008b22cc  00 22                                            movs r2, #0
008b22ce  00 2b                                            cmp r3, #0
008b22d0  04 d0                                            beq #0x8b22dc
008b22d2  3c 9c                                            ldr r4, [sp, #0xf0]
008b22d4  45 46                                            mov r5, r8
008b22d6  63 1b                                            subs r3, r4, r5
008b22d8  5a 42                                            rsbs r2, r3, #0
008b22da  5a 41                                            adcs r2, r3
008b22dc  03 99                                            ldr r1, [sp, #0xc]
008b22de  01 20                                            movs r0, #1
008b22e0  0a 70                                            strb r2, [r1]
008b22e2  d1 e6                                            b #0x8b2088
; mapping-symbol data/literal pool
008b22e4  80 2a 0e 00 ac 40 00 00                          .byte 0x80, 0x2a, 0x0e, 0x00, 0xac, 0x40, 0x00, 0x00
; decoder-mode: thumb
008b22ec  ab 79                                            ldrb r3, [r5, #6]
008b22ee  00 2b                                            cmp r3, #0
008b22f0  32 d1                                            bne #0x8b2358
008b22f2  28 68                                            ldr r0, [r5]
008b22f4  83 68                                            ldr r3, [r0, #8]
008b22f6  c2 68                                            ldr r2, [r0, #0xc]
008b22f8  93 42                                            cmp r3, r2
008b22fa  2f d2                                            bhs #0x8b235c
008b22fc  18 78                                            ldrb r0, [r3]
008b22fe  03 06                                            lsls r3, r0, #0x18
008b2300  01 30                                            adds r0, #1
008b2302  1b 0e                                            lsrs r3, r3, #0x18
008b2304  42 42                                            rsbs r2, r0, #0
008b2306  42 41                                            adcs r2, r0
008b2308  51 46                                            mov r1, sl
008b230a  2b 71                                            strb r3, [r5, #4]
008b230c  6a 71                                            strb r2, [r5, #5]
008b230e  a9 71                                            strb r1, [r5, #6]
008b2310  fa 68                                            ldr r2, [r7, #0xc]
008b2312  9b 00                                            lsls r3, r3, #2
008b2314  9b 58                                            ldr r3, [r3, r2]
008b2316  4a 46                                            mov r2, sb
008b2318  1a 42                                            tst r2, r3
008b231a  d4 d0                                            beq #0x8b22c6
008b231c  29 1c                                            adds r1, r5, #0
008b231e  30 1c                                            adds r0, r6, #0
008b2320  00 22                                            movs r2, #0
008b2322  f7 f7 05 f8                                      bl #0x8a9330
008b2326  b3 79                                            ldrb r3, [r6, #6]
008b2328  31 79                                            ldrb r1, [r6, #4]
008b232a  00 2b                                            cmp r3, #0
008b232c  0b d1                                            bne #0x8b2346
008b232e  30 68                                            ldr r0, [r6]
008b2330  83 68                                            ldr r3, [r0, #8]
008b2332  c2 68                                            ldr r2, [r0, #0xc]
008b2334  93 42                                            cmp r3, r2
008b2336  0b d2                                            bhs #0x8b2350
008b2338  18 78                                            ldrb r0, [r3]
008b233a  01 06                                            lsls r1, r0, #0x18
008b233c  01 30                                            adds r0, #1
008b233e  43 42                                            rsbs r3, r0, #0
008b2340  43 41                                            adcs r3, r0
008b2342  09 0e                                            lsrs r1, r1, #0x18
008b2344  73 71                                            strb r3, [r6, #5]
008b2346  58 46                                            mov r0, fp
008b2348  77 f6 88 e7                                      blx #0x32a25c
008b234c  01 34                                            adds r4, #1
008b234e  b4 e7                                            b #0x8b22ba
008b2350  03 68                                            ldr r3, [r0]
008b2352  1b 6a                                            ldr r3, [r3, #0x20]
008b2354  98 47                                            blx r3
008b2356  f0 e7                                            b #0x8b233a
008b2358  2b 79                                            ldrb r3, [r5, #4]
008b235a  d9 e7                                            b #0x8b2310
008b235c  03 68                                            ldr r3, [r0]
008b235e  1b 6a                                            ldr r3, [r3, #0x20]
008b2360  98 47                                            blx r3
008b2362  cc e7                                            b #0x8b22fe
008b2364  03 68                                            ldr r3, [r0]
008b2366  1b 6a                                            ldr r3, [r3, #0x20]
008b2368  98 47                                            blx r3
008b236a  82 e6                                            b #0x8b2072
008b236c  03 68                                            ldr r3, [r0]
008b236e  5b 6a                                            ldr r3, [r3, #0x24]
008b2370  98 47                                            blx r3
008b2372  92 e7                                            b #0x8b229a
008b2374  03 68                                            ldr r3, [r0]
008b2376  1b 6a                                            ldr r3, [r3, #0x20]
008b2378  98 47                                            blx r3
008b237a  67 e6                                            b #0x8b204c
008b237c  03 9a                                            ldr r2, [sp, #0xc]
008b237e  01 23                                            movs r3, #1
008b2380  13 70                                            strb r3, [r2]
008b2382  83 e7                                            b #0x8b228c
008b2384  23 79                                            ldrb r3, [r4, #4]
008b2386  7e e7                                            b #0x8b2286
008b2388  03 68                                            ldr r3, [r0]
008b238a  1b 6a                                            ldr r3, [r3, #0x20]
008b238c  98 47                                            blx r3
008b238e  99 e6                                            b #0x8b20c4
008b2390  03 68                                            ldr r3, [r0]
008b2392  1b 6a                                            ldr r3, [r3, #0x20]
008b2394  98 47                                            blx r3
008b2396  6d e7                                            b #0x8b2274
008b2398  5b f6 ba e7                                      blx #0x30e310
