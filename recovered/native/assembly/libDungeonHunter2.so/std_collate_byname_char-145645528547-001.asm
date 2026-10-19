; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b5340, declared_size=228, range_size=228, mode=thumb
; class-group: std::collate_byname<char>
; alias: _ZNKSt14collate_bynameIcE12do_transformEPKcS2_
; demangled: std::collate_byname<char>::do_transform(char const*, char const*) const
; decoder-mode: thumb
008b5340  f0 b5                                            push {r4, r5, r6, r7, lr}
008b5342  5f 46                                            mov r7, fp
008b5344  56 46                                            mov r6, sl
008b5346  4d 46                                            mov r5, sb
008b5348  44 46                                            mov r4, r8
008b534a  f0 b4                                            push {r4, r5, r6, r7}
008b534c  33 4e                                            ldr r6, [pc, #0xcc]
008b534e  0f 1c                                            adds r7, r1, #0
008b5350  33 49                                            ldr r1, [pc, #0xcc]
008b5352  7e 44                                            add r6, pc
008b5354  90 46                                            mov r8, r2
008b5356  72 58                                            ldr r2, [r6, r1]
008b5358  8d b0                                            sub sp, #0x34
008b535a  05 1c                                            adds r5, r0, #0
008b535c  12 68                                            ldr r2, [r2]
008b535e  89 46                                            mov sb, r1
008b5360  0b 92                                            str r2, [sp, #0x2c]
008b5362  98 45                                            cmp r8, r3
008b5364  4b d0                                            beq #0x8b53fe
008b5366  42 46                                            mov r2, r8
008b5368  9a 1a                                            subs r2, r3, r2
008b536a  f8 68                                            ldr r0, [r7, #0xc]
008b536c  00 21                                            movs r1, #0
008b536e  00 92                                            str r2, [sp]
008b5370  43 46                                            mov r3, r8
008b5372  93 46                                            mov fp, r2
008b5374  00 22                                            movs r2, #0
008b5376  01 f0 7b fc                                      bl #0x8b6c70
008b537a  03 1c                                            adds r3, r0, #0
008b537c  01 33                                            adds r3, #1
008b537e  05 ac                                            add r4, sp, #0x14
008b5380  19 1c                                            adds r1, r3, #0
008b5382  82 46                                            mov sl, r0
008b5384  20 1c                                            adds r0, r4, #0
008b5386  03 93                                            str r3, [sp, #0xc]
008b5388  24 61                                            str r4, [r4, #0x10]
008b538a  64 61                                            str r4, [r4, #0x14]
008b538c  5c f6 76 e1                                      blx #0x31167c
008b5390  63 69                                            ldr r3, [r4, #0x14]
008b5392  51 46                                            mov r1, sl
008b5394  58 18                                            adds r0, r3, r1
008b5396  c1 1a                                            subs r1, r0, r3
008b5398  00 29                                            cmp r1, #0
008b539a  05 dd                                            ble #0x8b53a8
008b539c  59 18                                            adds r1, r3, r1
008b539e  00 22                                            movs r2, #0
008b53a0  1a 70                                            strb r2, [r3]
008b53a2  01 33                                            adds r3, #1
008b53a4  8b 42                                            cmp r3, r1
008b53a6  fb d1                                            bne #0x8b53a0
008b53a8  00 23                                            movs r3, #0
008b53aa  20 61                                            str r0, [r4, #0x10]
008b53ac  5a 46                                            mov r2, fp
008b53ae  03 70                                            strb r3, [r0]
008b53b0  61 69                                            ldr r1, [r4, #0x14]
008b53b2  f8 68                                            ldr r0, [r7, #0xc]
008b53b4  43 46                                            mov r3, r8
008b53b6  00 92                                            str r2, [sp]
008b53b8  03 9a                                            ldr r2, [sp, #0xc]
008b53ba  01 f0 59 fc                                      bl #0x8b6c70
008b53be  28 1c                                            adds r0, r5, #0
008b53c0  2d 61                                            str r5, [r5, #0x10]
008b53c2  6d 61                                            str r5, [r5, #0x14]
008b53c4  61 69                                            ldr r1, [r4, #0x14]
008b53c6  22 69                                            ldr r2, [r4, #0x10]
008b53c8  5c f6 8e e1                                      blx #0x3116e8
008b53cc  60 69                                            ldr r0, [r4, #0x14]
008b53ce  a0 42                                            cmp r0, r4
008b53d0  07 d0                                            beq #0x8b53e2
008b53d2  00 28                                            cmp r0, #0
008b53d4  05 d0                                            beq #0x8b53e2
008b53d6  21 68                                            ldr r1, [r4]
008b53d8  09 1a                                            subs r1, r1, r0
008b53da  80 29                                            cmp r1, #0x80
008b53dc  18 d8                                            bhi #0x8b5410
008b53de  00 f0 3d ff                                      bl #0x8b625c
008b53e2  49 46                                            mov r1, sb
008b53e4  73 58                                            ldr r3, [r6, r1]
008b53e6  0b 9a                                            ldr r2, [sp, #0x2c]
008b53e8  28 1c                                            adds r0, r5, #0
008b53ea  1b 68                                            ldr r3, [r3]
008b53ec  9a 42                                            cmp r2, r3
008b53ee  12 d1                                            bne #0x8b5416
008b53f0  0d b0                                            add sp, #0x34
008b53f2  3c bc                                            pop {r2, r3, r4, r5}
008b53f4  90 46                                            mov r8, r2
008b53f6  99 46                                            mov sb, r3
008b53f8  a2 46                                            mov sl, r4
008b53fa  ab 46                                            mov fp, r5
008b53fc  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b53fe  28 61                                            str r0, [r5, #0x10]
008b5400  68 61                                            str r0, [r5, #0x14]
008b5402  10 21                                            movs r1, #0x10
008b5404  5c f6 3a e1                                      blx #0x31167c
008b5408  2b 69                                            ldr r3, [r5, #0x10]
008b540a  00 22                                            movs r2, #0
008b540c  1a 70                                            strb r2, [r3]
008b540e  e8 e7                                            b #0x8b53e2
008b5410  58 f6 4e e7                                      blx #0x30e2b0
008b5414  e5 e7                                            b #0x8b53e2
008b5416  58 f6 7c e7                                      blx #0x30e310
008b541a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b541c  42 f7 0d 00 ac 40 00 00                          .byte 0x42, 0xf7, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008b5424, declared_size=22, range_size=22, mode=thumb
; class-group: std::collate_byname<char>
; alias: _ZNKSt14collate_bynameIcE10do_compareEPKcS2_S2_S2_
; demangled: std::collate_byname<char>::do_compare(char const*, char const*, char const*, char const*) const
; decoder-mode: thumb
008b5424  10 b5                                            push {r4, lr}
008b5426  82 b0                                            sub sp, #8
008b5428  04 9c                                            ldr r4, [sp, #0x10]
008b542a  c0 68                                            ldr r0, [r0, #0xc]
008b542c  52 1a                                            subs r2, r2, r1
008b542e  e4 1a                                            subs r4, r4, r3
008b5430  00 94                                            str r4, [sp]
008b5432  01 f0 8d fc                                      bl #0x8b6d50
008b5436  02 b0                                            add sp, #8
008b5438  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b543c, declared_size=40, range_size=40, mode=thumb
; class-group: std::collate_byname<char>
; alias: _ZNSt14collate_bynameIcED1Ev
; demangled: std::collate_byname<char>::~collate_byname()
; decoder-mode: thumb
008b543c  10 b5                                            push {r4, lr}
008b543e  07 4b                                            ldr r3, [pc, #0x1c]
008b5440  07 4a                                            ldr r2, [pc, #0x1c]
008b5442  04 1c                                            adds r4, r0, #0
008b5444  7b 44                                            add r3, pc
008b5446  9a 58                                            ldr r2, [r3, r2]
008b5448  08 32                                            adds r2, #8
008b544a  02 60                                            str r2, [r0]
008b544c  c0 68                                            ldr r0, [r0, #0xc]
008b544e  fe f7 55 fc                                      bl #0x8b3cfc
008b5452  20 1c                                            adds r0, r4, #0
008b5454  03 f0 bc fe                                      bl #0x8b91d0
008b5458  20 1c                                            adds r0, r4, #0
008b545a  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b545c  50 f6 0d 00 48 45 00 00                          .byte 0x50, 0xf6, 0x0d, 0x00, 0x48, 0x45, 0x00, 0x00

; FUNCTION 0x008b5464, declared_size=18, range_size=18, mode=thumb
; class-group: std::collate_byname<char>
; alias: _ZNSt14collate_bynameIcED0Ev
; demangled: std::collate_byname<char>::~collate_byname()
; decoder-mode: thumb
008b5464  10 b5                                            push {r4, lr}
008b5466  04 1c                                            adds r4, r0, #0
008b5468  ff f7 e8 ff                                      bl #0x8b543c
008b546c  20 1c                                            adds r0, r4, #0
008b546e  58 f6 20 e7                                      blx #0x30e2b0
008b5472  20 1c                                            adds r0, r4, #0
008b5474  10 bd                                            pop {r4, pc}

; FUNCTION 0x008b5478, declared_size=40, range_size=40, mode=thumb
; class-group: std::collate_byname<char>
; alias: _ZNSt14collate_bynameIcED2Ev
; demangled: std::collate_byname<char>::~collate_byname()
; decoder-mode: thumb
008b5478  10 b5                                            push {r4, lr}
008b547a  07 4b                                            ldr r3, [pc, #0x1c]
008b547c  07 4a                                            ldr r2, [pc, #0x1c]
008b547e  04 1c                                            adds r4, r0, #0
008b5480  7b 44                                            add r3, pc
008b5482  9a 58                                            ldr r2, [r3, r2]
008b5484  08 32                                            adds r2, #8
008b5486  02 60                                            str r2, [r0]
008b5488  c0 68                                            ldr r0, [r0, #0xc]
008b548a  fe f7 37 fc                                      bl #0x8b3cfc
008b548e  20 1c                                            adds r0, r4, #0
008b5490  03 f0 9e fe                                      bl #0x8b91d0
008b5494  20 1c                                            adds r0, r4, #0
008b5496  10 bd                                            pop {r4, pc}
; mapping-symbol data/literal pool
008b5498  14 f6 0d 00 48 45 00 00                          .byte 0x14, 0xf6, 0x0d, 0x00, 0x48, 0x45, 0x00, 0x00

; FUNCTION 0x008b5e94, declared_size=124, range_size=124, mode=thumb
; class-group: std::collate_byname<char>
; alias: _ZNSt14collate_bynameIcEC1EPKcj
; demangled: std::collate_byname<char>::collate_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5e94  70 b5                                            push {r4, r5, r6, lr}
008b5e96  1a 4c                                            ldr r4, [pc, #0x68]
008b5e98  1a 4e                                            ldr r6, [pc, #0x68]
008b5e9a  c4 b0                                            sub sp, #0x110
008b5e9c  7c 44                                            add r4, pc
008b5e9e  a3 59                                            ldr r3, [r4, r6]
008b5ea0  01 91                                            str r1, [sp, #4]
008b5ea2  05 1c                                            adds r5, r0, #0
008b5ea4  1b 68                                            ldr r3, [r3]
008b5ea6  00 21                                            movs r1, #0
008b5ea8  43 93                                            str r3, [sp, #0x10c]
008b5eaa  53 1e                                            subs r3, r2, #1
008b5eac  9a 41                                            sbcs r2, r3
008b5eae  42 60                                            str r2, [r0, #4]
008b5eb0  08 30                                            adds r0, #8
008b5eb2  58 f6 7e e0                                      blx #0x30dfb0
008b5eb6  14 4b                                            ldr r3, [pc, #0x50]
008b5eb8  e3 58                                            ldr r3, [r4, r3]
008b5eba  08 33                                            adds r3, #8
008b5ebc  2b 60                                            str r3, [r5]
008b5ebe  01 9b                                            ldr r3, [sp, #4]
008b5ec0  00 2b                                            cmp r3, #0
008b5ec2  17 d0                                            beq #0x8b5ef4
008b5ec4  01 a8                                            add r0, sp, #4
008b5ec6  03 a9                                            add r1, sp, #0xc
008b5ec8  00 22                                            movs r2, #0
008b5eca  02 ab                                            add r3, sp, #8
008b5ecc  fe f7 50 f9                                      bl #0x8b4170
008b5ed0  e8 60                                            str r0, [r5, #0xc]
008b5ed2  00 28                                            cmp r0, #0
008b5ed4  07 d0                                            beq #0x8b5ee6
008b5ed6  a3 59                                            ldr r3, [r4, r6]
008b5ed8  43 9a                                            ldr r2, [sp, #0x10c]
008b5eda  28 1c                                            adds r0, r5, #0
008b5edc  1b 68                                            ldr r3, [r3]
008b5ede  9a 42                                            cmp r2, r3
008b5ee0  0b d1                                            bne #0x8b5efa
008b5ee2  44 b0                                            add sp, #0x110
008b5ee4  70 bd                                            pop {r4, r5, r6, pc}
008b5ee6  09 4a                                            ldr r2, [pc, #0x24]
008b5ee8  02 98                                            ldr r0, [sp, #8]
008b5eea  01 99                                            ldr r1, [sp, #4]
008b5eec  7a 44                                            add r2, pc
008b5eee  ee f7 6f fc                                      bl #0x8a47d0
008b5ef2  f0 e7                                            b #0x8b5ed6
008b5ef4  ed f7 e4 fa                                      bl #0x8a34c0
008b5ef8  e4 e7                                            b #0x8b5ec4
008b5efa  58 f6 0a e2                                      blx #0x30e310
008b5efe  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5f00  f8 eb 0d 00 ac 40 00 00 48 45 00 00 14 fe 05 00  .byte 0xf8, 0xeb, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x45, 0x00, 0x00, 0x14, 0xfe, 0x05, 0x00

; FUNCTION 0x008b5f10, declared_size=124, range_size=124, mode=thumb
; class-group: std::collate_byname<char>
; alias: _ZNSt14collate_bynameIcEC2EPKcj
; demangled: std::collate_byname<char>::collate_byname(char const*, unsigned int)
; decoder-mode: thumb
008b5f10  70 b5                                            push {r4, r5, r6, lr}
008b5f12  1a 4c                                            ldr r4, [pc, #0x68]
008b5f14  1a 4e                                            ldr r6, [pc, #0x68]
008b5f16  c4 b0                                            sub sp, #0x110
008b5f18  7c 44                                            add r4, pc
008b5f1a  a3 59                                            ldr r3, [r4, r6]
008b5f1c  01 91                                            str r1, [sp, #4]
008b5f1e  05 1c                                            adds r5, r0, #0
008b5f20  1b 68                                            ldr r3, [r3]
008b5f22  00 21                                            movs r1, #0
008b5f24  43 93                                            str r3, [sp, #0x10c]
008b5f26  53 1e                                            subs r3, r2, #1
008b5f28  9a 41                                            sbcs r2, r3
008b5f2a  42 60                                            str r2, [r0, #4]
008b5f2c  08 30                                            adds r0, #8
008b5f2e  58 f6 40 e0                                      blx #0x30dfb0
008b5f32  14 4b                                            ldr r3, [pc, #0x50]
008b5f34  e3 58                                            ldr r3, [r4, r3]
008b5f36  08 33                                            adds r3, #8
008b5f38  2b 60                                            str r3, [r5]
008b5f3a  01 9b                                            ldr r3, [sp, #4]
008b5f3c  00 2b                                            cmp r3, #0
008b5f3e  17 d0                                            beq #0x8b5f70
008b5f40  01 a8                                            add r0, sp, #4
008b5f42  03 a9                                            add r1, sp, #0xc
008b5f44  00 22                                            movs r2, #0
008b5f46  02 ab                                            add r3, sp, #8
008b5f48  fe f7 12 f9                                      bl #0x8b4170
008b5f4c  e8 60                                            str r0, [r5, #0xc]
008b5f4e  00 28                                            cmp r0, #0
008b5f50  07 d0                                            beq #0x8b5f62
008b5f52  a3 59                                            ldr r3, [r4, r6]
008b5f54  43 9a                                            ldr r2, [sp, #0x10c]
008b5f56  28 1c                                            adds r0, r5, #0
008b5f58  1b 68                                            ldr r3, [r3]
008b5f5a  9a 42                                            cmp r2, r3
008b5f5c  0b d1                                            bne #0x8b5f76
008b5f5e  44 b0                                            add sp, #0x110
008b5f60  70 bd                                            pop {r4, r5, r6, pc}
008b5f62  09 4a                                            ldr r2, [pc, #0x24]
008b5f64  02 98                                            ldr r0, [sp, #8]
008b5f66  01 99                                            ldr r1, [sp, #4]
008b5f68  7a 44                                            add r2, pc
008b5f6a  ee f7 31 fc                                      bl #0x8a47d0
008b5f6e  f0 e7                                            b #0x8b5f52
008b5f70  ed f7 a6 fa                                      bl #0x8a34c0
008b5f74  e4 e7                                            b #0x8b5f40
008b5f76  58 f6 cc e1                                      blx #0x30e310
008b5f7a  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b5f7c  7c eb 0d 00 ac 40 00 00 48 45 00 00 98 fd 05 00  .byte 0x7c, 0xeb, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x45, 0x00, 0x00, 0x98, 0xfd, 0x05, 0x00
