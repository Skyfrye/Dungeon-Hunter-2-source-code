; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a4d8c, declared_size=64, range_size=64, mode=thumb
; class-group: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >
; alias: _ZNSt6vectorIPNSt6locale5facetESaIS2_EE20_M_compute_next_sizeEj
; demangled: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >::_M_compute_next_size(unsigned int)
; decoder-mode: thumb
008a4d8c  70 b5                                            push {r4, r5, r6, lr}
008a4d8e  03 68                                            ldr r3, [r0]
008a4d90  44 68                                            ldr r4, [r0, #4]
008a4d92  0d 1c                                            adds r5, r1, #0
008a4d94  e4 1a                                            subs r4, r4, r3
008a4d96  0b 4b                                            ldr r3, [pc, #0x2c]
008a4d98  a4 10                                            asrs r4, r4, #2
008a4d9a  1b 1b                                            subs r3, r3, r4
008a4d9c  ab 42                                            cmp r3, r5
008a4d9e  0b d3                                            blo #0x8a4db8
008a4da0  20 1c                                            adds r0, r4, #0
008a4da2  ac 42                                            cmp r4, r5
008a4da4  00 d2                                            bhs #0x8a4da8
008a4da6  28 1c                                            adds r0, r5, #0
008a4da8  06 4b                                            ldr r3, [pc, #0x18]
008a4daa  00 19                                            adds r0, r0, r4
008a4dac  98 42                                            cmp r0, r3
008a4dae  01 d8                                            bhi #0x8a4db4
008a4db0  a0 42                                            cmp r0, r4
008a4db2  00 d2                                            bhs #0x8a4db6
008a4db4  03 48                                            ldr r0, [pc, #0xc]
008a4db6  70 bd                                            pop {r4, r5, r6, pc}
008a4db8  03 48                                            ldr r0, [pc, #0xc]
008a4dba  78 44                                            add r0, pc
008a4dbc  fd f7 8a fd                                      bl #0x8a28d4
008a4dc0  ee e7                                            b #0x8a4da0
008a4dc2  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4dc4  ff ff ff 3f 52 0e 07 00                          .byte 0xff, 0xff, 0xff, 0x3f, 0x52, 0x0e, 0x07, 0x00

; FUNCTION 0x008a54a8, declared_size=220, range_size=220, mode=thumb
; class-group: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >
; alias: _ZNSt6vectorIPNSt6locale5facetESaIS2_EE18_M_fill_insert_auxEPS2_jRKS2_RKSt12__false_type
; demangled: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >::_M_fill_insert_aux(std::locale::facet**, unsigned int, std::locale::facet* const&, std::__false_type const&)
; decoder-mode: thumb
008a54a8  f0 b5                                            push {r4, r5, r6, r7, lr}
008a54aa  4f 46                                            mov r7, sb
008a54ac  46 46                                            mov r6, r8
008a54ae  c0 b4                                            push {r6, r7}
008a54b0  1e 1c                                            adds r6, r3, #0
008a54b2  03 68                                            ldr r3, [r0]
008a54b4  85 b0                                            sub sp, #0x14
008a54b6  07 1c                                            adds r7, r0, #0
008a54b8  0d 1c                                            adds r5, r1, #0
008a54ba  9e 42                                            cmp r6, r3
008a54bc  2f d3                                            blo #0x8a551e
008a54be  41 68                                            ldr r1, [r0, #4]
008a54c0  88 46                                            mov r8, r1
008a54c2  46 45                                            cmp r6, r8
008a54c4  55 d3                                            blo #0x8a5572
008a54c6  41 46                                            mov r1, r8
008a54c8  4b 1b                                            subs r3, r1, r5
008a54ca  9c 10                                            asrs r4, r3, #2
008a54cc  a2 42                                            cmp r2, r4
008a54ce  2d d3                                            blo #0x8a552c
008a54d0  12 1b                                            subs r2, r2, r4
008a54d2  92 00                                            lsls r2, r2, #2
008a54d4  94 46                                            mov ip, r2
008a54d6  92 10                                            asrs r2, r2, #2
008a54d8  c4 44                                            add ip, r8
008a54da  00 2a                                            cmp r2, #0
008a54dc  05 dd                                            ble #0x8a54ea
008a54de  41 46                                            mov r1, r8
008a54e0  30 68                                            ldr r0, [r6]
008a54e2  01 3a                                            subs r2, #1
008a54e4  01 c1                                            stm r1!, {r0}
008a54e6  00 2a                                            cmp r2, #0
008a54e8  fa d1                                            bne #0x8a54e0
008a54ea  62 46                                            mov r2, ip
008a54ec  7a 60                                            str r2, [r7, #4]
008a54ee  45 45                                            cmp r5, r8
008a54f0  06 d0                                            beq #0x8a5500
008a54f2  60 46                                            mov r0, ip
008a54f4  1a 1c                                            adds r2, r3, #0
008a54f6  29 1c                                            adds r1, r5, #0
008a54f8  69 f6 b6 e1                                      blx #0x30e868
008a54fc  7b 68                                            ldr r3, [r7, #4]
008a54fe  9c 46                                            mov ip, r3
008a5500  a3 00                                            lsls r3, r4, #2
008a5502  63 44                                            add r3, ip
008a5504  7b 60                                            str r3, [r7, #4]
008a5506  00 2c                                            cmp r4, #0
008a5508  04 dd                                            ble #0x8a5514
008a550a  33 68                                            ldr r3, [r6]
008a550c  01 3c                                            subs r4, #1
008a550e  08 c5                                            stm r5!, {r3}
008a5510  00 2c                                            cmp r4, #0
008a5512  fa d1                                            bne #0x8a550a
008a5514  05 b0                                            add sp, #0x14
008a5516  0c bc                                            pop {r2, r3}
008a5518  90 46                                            mov r8, r2
008a551a  99 46                                            mov sb, r3
008a551c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a551e  41 68                                            ldr r1, [r0, #4]
008a5520  88 46                                            mov r8, r1
008a5522  41 46                                            mov r1, r8
008a5524  4b 1b                                            subs r3, r1, r5
008a5526  9c 10                                            asrs r4, r3, #2
008a5528  a2 42                                            cmp r2, r4
008a552a  d1 d2                                            bhs #0x8a54d0
008a552c  92 00                                            lsls r2, r2, #2
008a552e  41 46                                            mov r1, r8
008a5530  8b 1a                                            subs r3, r1, r2
008a5532  91 46                                            mov sb, r2
008a5534  44 46                                            mov r4, r8
008a5536  43 45                                            cmp r3, r8
008a5538  07 d0                                            beq #0x8a554a
008a553a  1c 1c                                            adds r4, r3, #0
008a553c  43 46                                            mov r3, r8
008a553e  1a 1b                                            subs r2, r3, r4
008a5540  40 46                                            mov r0, r8
008a5542  21 1c                                            adds r1, r4, #0
008a5544  69 f6 90 e1                                      blx #0x30e868
008a5548  7b 68                                            ldr r3, [r7, #4]
008a554a  4b 44                                            add r3, sb
008a554c  62 1b                                            subs r2, r4, r5
008a554e  7b 60                                            str r3, [r7, #4]
008a5550  00 2a                                            cmp r2, #0
008a5552  04 dd                                            ble #0x8a555e
008a5554  41 46                                            mov r1, r8
008a5556  88 1a                                            subs r0, r1, r2
008a5558  29 1c                                            adds r1, r5, #0
008a555a  68 f6 ee e4                                      blx #0x30df38
008a555e  4a 46                                            mov r2, sb
008a5560  93 10                                            asrs r3, r2, #2
008a5562  00 2b                                            cmp r3, #0
008a5564  d6 dd                                            ble #0x8a5514
008a5566  32 68                                            ldr r2, [r6]
008a5568  01 3b                                            subs r3, #1
008a556a  04 c5                                            stm r5!, {r2}
008a556c  00 2b                                            cmp r3, #0
008a556e  fa d1                                            bne #0x8a5566
008a5570  d0 e7                                            b #0x8a5514
008a5572  33 68                                            ldr r3, [r6]
008a5574  29 1c                                            adds r1, r5, #0
008a5576  02 93                                            str r3, [sp, #8]
008a5578  03 ab                                            add r3, sp, #0xc
008a557a  00 93                                            str r3, [sp]
008a557c  02 ab                                            add r3, sp, #8
008a557e  ff f7 93 ff                                      bl #0x8a54a8
008a5582  c7 e7                                            b #0x8a5514

; FUNCTION 0x008a5584, declared_size=32, range_size=32, mode=thumb
; class-group: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >
; alias: _ZNSt6vectorIPNSt6locale5facetESaIS2_EE8_M_clearEv
; demangled: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >::_M_clear()
; decoder-mode: thumb
008a5584  10 b5                                            push {r4, lr}
008a5586  81 68                                            ldr r1, [r0, #8]
008a5588  00 68                                            ldr r0, [r0]
008a558a  00 28                                            cmp r0, #0
008a558c  06 d0                                            beq #0x8a559c
008a558e  09 1a                                            subs r1, r1, r0
008a5590  89 10                                            asrs r1, r1, #2
008a5592  89 00                                            lsls r1, r1, #2
008a5594  80 29                                            cmp r1, #0x80
008a5596  02 d8                                            bhi #0x8a559e
008a5598  10 f0 60 fe                                      bl #0x8b625c
008a559c  10 bd                                            pop {r4, pc}
008a559e  68 f6 88 e6                                      blx #0x30e2b0
008a55a2  fb e7                                            b #0x8a559c

; FUNCTION 0x008a5e08, declared_size=68, range_size=68, mode=thumb
; class-group: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >
; alias: _ZNSt6vectorIPNSt6locale5facetESaIS2_EEC1EjRKS2_RKS3_
; demangled: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >::vector(unsigned int, std::locale::facet* const&, std::allocator<std::locale::facet*> const&)
; decoder-mode: thumb
008a5e08  70 b5                                            push {r4, r5, r6, lr}
008a5e0a  00 23                                            movs r3, #0
008a5e0c  82 b0                                            sub sp, #8
008a5e0e  05 1c                                            adds r5, r0, #0
008a5e10  01 91                                            str r1, [sp, #4]
008a5e12  14 1c                                            adds r4, r2, #0
008a5e14  03 60                                            str r3, [r0]
008a5e16  43 60                                            str r3, [r0, #4]
008a5e18  83 60                                            str r3, [r0, #8]
008a5e1a  01 aa                                            add r2, sp, #4
008a5e1c  08 30                                            adds r0, #8
008a5e1e  0e 1c                                            adds r6, r1, #0
008a5e20  ff f7 ce ff                                      bl #0x8a5dc0
008a5e24  01 9b                                            ldr r3, [sp, #4]
008a5e26  b6 00                                            lsls r6, r6, #2
008a5e28  82 19                                            adds r2, r0, r6
008a5e2a  9b 00                                            lsls r3, r3, #2
008a5e2c  c3 18                                            adds r3, r0, r3
008a5e2e  b6 10                                            asrs r6, r6, #2
008a5e30  28 60                                            str r0, [r5]
008a5e32  68 60                                            str r0, [r5, #4]
008a5e34  ab 60                                            str r3, [r5, #8]
008a5e36  00 2e                                            cmp r6, #0
008a5e38  04 dd                                            ble #0x8a5e44
008a5e3a  23 68                                            ldr r3, [r4]
008a5e3c  01 3e                                            subs r6, #1
008a5e3e  08 c0                                            stm r0!, {r3}
008a5e40  00 2e                                            cmp r6, #0
008a5e42  fa d1                                            bne #0x8a5e3a
008a5e44  02 b0                                            add sp, #8
008a5e46  28 1c                                            adds r0, r5, #0
008a5e48  6a 60                                            str r2, [r5, #4]
008a5e4a  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a5e4c, declared_size=164, range_size=164, mode=thumb
; class-group: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >
; alias: _ZNSt6vectorIPNSt6locale5facetESaIS2_EE7reserveEj
; demangled: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >::reserve(unsigned int)
; decoder-mode: thumb
008a5e4c  f0 b5                                            push {r4, r5, r6, r7, lr}
008a5e4e  4f 46                                            mov r7, sb
008a5e50  46 46                                            mov r6, r8
008a5e52  c0 b4                                            push {r6, r7}
008a5e54  83 b0                                            sub sp, #0xc
008a5e56  01 91                                            str r1, [sp, #4]
008a5e58  05 68                                            ldr r5, [r0]
008a5e5a  83 68                                            ldr r3, [r0, #8]
008a5e5c  04 1c                                            adds r4, r0, #0
008a5e5e  5b 1b                                            subs r3, r3, r5
008a5e60  9b 10                                            asrs r3, r3, #2
008a5e62  99 42                                            cmp r1, r3
008a5e64  29 d9                                            bls #0x8a5eba
008a5e66  20 4b                                            ldr r3, [pc, #0x80]
008a5e68  99 42                                            cmp r1, r3
008a5e6a  2b d8                                            bhi #0x8a5ec4
008a5e6c  67 68                                            ldr r7, [r4, #4]
008a5e6e  7b 1b                                            subs r3, r7, r5
008a5e70  98 46                                            mov r8, r3
008a5e72  9b 10                                            asrs r3, r3, #2
008a5e74  99 46                                            mov sb, r3
008a5e76  00 2d                                            cmp r5, #0
008a5e78  2e d0                                            beq #0x8a5ed8
008a5e7a  20 1c                                            adds r0, r4, #0
008a5e7c  08 30                                            adds r0, #8
008a5e7e  01 aa                                            add r2, sp, #4
008a5e80  ff f7 9e ff                                      bl #0x8a5dc0
008a5e84  06 1c                                            adds r6, r0, #0
008a5e86  af 42                                            cmp r7, r5
008a5e88  03 d0                                            beq #0x8a5e92
008a5e8a  29 1c                                            adds r1, r5, #0
008a5e8c  42 46                                            mov r2, r8
008a5e8e  68 f6 ec e4                                      blx #0x30e868
008a5e92  20 68                                            ldr r0, [r4]
008a5e94  a1 68                                            ldr r1, [r4, #8]
008a5e96  00 28                                            cmp r0, #0
008a5e98  06 d0                                            beq #0x8a5ea8
008a5e9a  09 1a                                            subs r1, r1, r0
008a5e9c  89 10                                            asrs r1, r1, #2
008a5e9e  89 00                                            lsls r1, r1, #2
008a5ea0  80 29                                            cmp r1, #0x80
008a5ea2  16 d8                                            bhi #0x8a5ed2
008a5ea4  10 f0 da f9                                      bl #0x8b625c
008a5ea8  01 9b                                            ldr r3, [sp, #4]
008a5eaa  49 46                                            mov r1, sb
008a5eac  8a 00                                            lsls r2, r1, #2
008a5eae  9b 00                                            lsls r3, r3, #2
008a5eb0  f3 18                                            adds r3, r6, r3
008a5eb2  26 60                                            str r6, [r4]
008a5eb4  b6 18                                            adds r6, r6, r2
008a5eb6  66 60                                            str r6, [r4, #4]
008a5eb8  a3 60                                            str r3, [r4, #8]
008a5eba  03 b0                                            add sp, #0xc
008a5ebc  0c bc                                            pop {r2, r3}
008a5ebe  90 46                                            mov r8, r2
008a5ec0  99 46                                            mov sb, r3
008a5ec2  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a5ec4  09 48                                            ldr r0, [pc, #0x24]
008a5ec6  78 44                                            add r0, pc
008a5ec8  fc f7 04 fd                                      bl #0x8a28d4
008a5ecc  25 68                                            ldr r5, [r4]
008a5ece  01 99                                            ldr r1, [sp, #4]
008a5ed0  cc e7                                            b #0x8a5e6c
008a5ed2  68 f6 ee e1                                      blx #0x30e2b0
008a5ed6  e7 e7                                            b #0x8a5ea8
008a5ed8  20 1c                                            adds r0, r4, #0
008a5eda  08 30                                            adds r0, #8
008a5edc  01 aa                                            add r2, sp, #4
008a5ede  ff f7 6f ff                                      bl #0x8a5dc0
008a5ee2  06 1c                                            adds r6, r0, #0
008a5ee4  e0 e7                                            b #0x8a5ea8
008a5ee6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a5ee8  ff ff ff 3f 46 fd 06 00                          .byte 0xff, 0xff, 0xff, 0x3f, 0x46, 0xfd, 0x06, 0x00

; FUNCTION 0x008a5f98, declared_size=210, range_size=210, mode=thumb
; class-group: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >
; alias: _ZNSt6vectorIPNSt6locale5facetESaIS2_EEaSERKS4_
; demangled: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >::operator=(std::vector<std::locale::facet*, std::allocator<std::locale::facet*> > const&)
; decoder-mode: thumb
008a5f98  f0 b5                                            push {r4, r5, r6, r7, lr}
008a5f9a  57 46                                            mov r7, sl
008a5f9c  4e 46                                            mov r6, sb
008a5f9e  45 46                                            mov r5, r8
008a5fa0  e0 b4                                            push {r5, r6, r7}
008a5fa2  04 1c                                            adds r4, r0, #0
008a5fa4  82 b0                                            sub sp, #8
008a5fa6  0e 1c                                            adds r6, r1, #0
008a5fa8  a1 42                                            cmp r1, r4
008a5faa  16 d0                                            beq #0x8a5fda
008a5fac  0b 68                                            ldr r3, [r1]
008a5fae  4a 68                                            ldr r2, [r1, #4]
008a5fb0  05 68                                            ldr r5, [r0]
008a5fb2  98 46                                            mov r8, r3
008a5fb4  91 46                                            mov sb, r2
008a5fb6  d2 1a                                            subs r2, r2, r3
008a5fb8  83 68                                            ldr r3, [r0, #8]
008a5fba  97 10                                            asrs r7, r2, #2
008a5fbc  92 46                                            mov sl, r2
008a5fbe  5b 1b                                            subs r3, r3, r5
008a5fc0  9b 10                                            asrs r3, r3, #2
008a5fc2  9f 42                                            cmp r7, r3
008a5fc4  21 d8                                            bhi #0x8a600a
008a5fc6  40 68                                            ldr r0, [r0, #4]
008a5fc8  41 1b                                            subs r1, r0, r5
008a5fca  89 10                                            asrs r1, r1, #2
008a5fcc  8f 42                                            cmp r7, r1
008a5fce  0b d8                                            bhi #0x8a5fe8
008a5fd0  00 2a                                            cmp r2, #0
008a5fd2  33 d1                                            bne #0x8a603c
008a5fd4  bf 00                                            lsls r7, r7, #2
008a5fd6  ed 19                                            adds r5, r5, r7
008a5fd8  65 60                                            str r5, [r4, #4]
008a5fda  02 b0                                            add sp, #8
008a5fdc  20 1c                                            adds r0, r4, #0
008a5fde  1c bc                                            pop {r2, r3, r4}
008a5fe0  90 46                                            mov r8, r2
008a5fe2  99 46                                            mov sb, r3
008a5fe4  a2 46                                            mov sl, r4
008a5fe6  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a5fe8  89 00                                            lsls r1, r1, #2
008a5fea  41 44                                            add r1, r8
008a5fec  43 46                                            mov r3, r8
008a5fee  ca 1a                                            subs r2, r1, r3
008a5ff0  00 2a                                            cmp r2, #0
008a5ff2  2c d1                                            bne #0x8a604e
008a5ff4  89 45                                            cmp sb, r1
008a5ff6  ed d0                                            beq #0x8a5fd4
008a5ff8  4b 46                                            mov r3, sb
008a5ffa  5a 1a                                            subs r2, r3, r1
008a5ffc  68 f6 34 e4                                      blx #0x30e868
008a6000  25 68                                            ldr r5, [r4]
008a6002  bf 00                                            lsls r7, r7, #2
008a6004  ed 19                                            adds r5, r5, r7
008a6006  65 60                                            str r5, [r4, #4]
008a6008  e7 e7                                            b #0x8a5fda
008a600a  08 30                                            adds r0, #8
008a600c  39 1c                                            adds r1, r7, #0
008a600e  01 aa                                            add r2, sp, #4
008a6010  01 97                                            str r7, [sp, #4]
008a6012  ff f7 d5 fe                                      bl #0x8a5dc0
008a6016  05 1c                                            adds r5, r0, #0
008a6018  c8 45                                            cmp r8, sb
008a601a  03 d0                                            beq #0x8a6024
008a601c  41 46                                            mov r1, r8
008a601e  52 46                                            mov r2, sl
008a6020  68 f6 22 e4                                      blx #0x30e868
008a6024  20 1c                                            adds r0, r4, #0
008a6026  ff f7 ad fa                                      bl #0x8a5584
008a602a  01 9b                                            ldr r3, [sp, #4]
008a602c  bf 00                                            lsls r7, r7, #2
008a602e  25 60                                            str r5, [r4]
008a6030  9b 00                                            lsls r3, r3, #2
008a6032  eb 18                                            adds r3, r5, r3
008a6034  ed 19                                            adds r5, r5, r7
008a6036  a3 60                                            str r3, [r4, #8]
008a6038  65 60                                            str r5, [r4, #4]
008a603a  ce e7                                            b #0x8a5fda
008a603c  28 1c                                            adds r0, r5, #0
008a603e  41 46                                            mov r1, r8
008a6040  67 f6 7a e7                                      blx #0x30df38
008a6044  25 68                                            ldr r5, [r4]
008a6046  bf 00                                            lsls r7, r7, #2
008a6048  ed 19                                            adds r5, r5, r7
008a604a  65 60                                            str r5, [r4, #4]
008a604c  c5 e7                                            b #0x8a5fda
008a604e  28 1c                                            adds r0, r5, #0
008a6050  41 46                                            mov r1, r8
008a6052  67 f6 72 e7                                      blx #0x30df38
008a6056  60 68                                            ldr r0, [r4, #4]
008a6058  25 68                                            ldr r5, [r4]
008a605a  33 68                                            ldr r3, [r6]
008a605c  76 68                                            ldr r6, [r6, #4]
008a605e  41 1b                                            subs r1, r0, r5
008a6060  89 10                                            asrs r1, r1, #2
008a6062  89 00                                            lsls r1, r1, #2
008a6064  59 18                                            adds r1, r3, r1
008a6066  b1 46                                            mov sb, r6
008a6068  c4 e7                                            b #0x8a5ff4

; FUNCTION 0x008a606c, declared_size=190, range_size=190, mode=thumb
; class-group: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >
; alias: _ZNSt6vectorIPNSt6locale5facetESaIS2_EE14_M_fill_insertEPS2_jRKS2_
; demangled: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >::_M_fill_insert(std::locale::facet**, unsigned int, std::locale::facet* const&)
; decoder-mode: thumb
008a606c  f0 b5                                            push {r4, r5, r6, r7, lr}
008a606e  4f 46                                            mov r7, sb
008a6070  46 46                                            mov r6, r8
008a6072  c0 b4                                            push {r6, r7}
008a6074  85 b0                                            sub sp, #0x14
008a6076  04 1c                                            adds r4, r0, #0
008a6078  0f 1c                                            adds r7, r1, #0
008a607a  16 1c                                            adds r6, r2, #0
008a607c  1d 1c                                            adds r5, r3, #0
008a607e  00 2a                                            cmp r2, #0
008a6080  3d d0                                            beq #0x8a60fe
008a6082  82 68                                            ldr r2, [r0, #8]
008a6084  43 68                                            ldr r3, [r0, #4]
008a6086  d3 1a                                            subs r3, r2, r3
008a6088  9b 10                                            asrs r3, r3, #2
008a608a  9e 42                                            cmp r6, r3
008a608c  3c d9                                            bls #0x8a6108
008a608e  31 1c                                            adds r1, r6, #0
008a6090  fe f7 7c fe                                      bl #0x8a4d8c
008a6094  01 1c                                            adds r1, r0, #0
008a6096  02 90                                            str r0, [sp, #8]
008a6098  20 1c                                            adds r0, r4, #0
008a609a  02 aa                                            add r2, sp, #8
008a609c  08 30                                            adds r0, #8
008a609e  ff f7 8f fe                                      bl #0x8a5dc0
008a60a2  21 68                                            ldr r1, [r4]
008a60a4  80 46                                            mov r8, r0
008a60a6  7a 1a                                            subs r2, r7, r1
008a60a8  91 46                                            mov sb, r2
008a60aa  00 2a                                            cmp r2, #0
008a60ac  02 d0                                            beq #0x8a60b4
008a60ae  67 f6 44 e7                                      blx #0x30df38
008a60b2  48 44                                            add r0, sb
008a60b4  33 1c                                            adds r3, r6, #0
008a60b6  02 1c                                            adds r2, r0, #0
008a60b8  29 68                                            ldr r1, [r5]
008a60ba  01 3b                                            subs r3, #1
008a60bc  02 c2                                            stm r2!, {r1}
008a60be  00 2b                                            cmp r3, #0
008a60c0  fa d1                                            bne #0x8a60b8
008a60c2  65 68                                            ldr r5, [r4, #4]
008a60c4  b6 00                                            lsls r6, r6, #2
008a60c6  80 19                                            adds r0, r0, r6
008a60c8  ed 1b                                            subs r5, r5, r7
008a60ca  06 1c                                            adds r6, r0, #0
008a60cc  00 2d                                            cmp r5, #0
008a60ce  04 d0                                            beq #0x8a60da
008a60d0  39 1c                                            adds r1, r7, #0
008a60d2  2a 1c                                            adds r2, r5, #0
008a60d4  67 f6 30 e7                                      blx #0x30df38
008a60d8  46 19                                            adds r6, r0, r5
008a60da  20 68                                            ldr r0, [r4]
008a60dc  a1 68                                            ldr r1, [r4, #8]
008a60de  00 28                                            cmp r0, #0
008a60e0  06 d0                                            beq #0x8a60f0
008a60e2  09 1a                                            subs r1, r1, r0
008a60e4  89 10                                            asrs r1, r1, #2
008a60e6  89 00                                            lsls r1, r1, #2
008a60e8  80 29                                            cmp r1, #0x80
008a60ea  14 d8                                            bhi #0x8a6116
008a60ec  10 f0 b6 f8                                      bl #0x8b625c
008a60f0  02 9b                                            ldr r3, [sp, #8]
008a60f2  42 46                                            mov r2, r8
008a60f4  22 60                                            str r2, [r4]
008a60f6  9b 00                                            lsls r3, r3, #2
008a60f8  43 44                                            add r3, r8
008a60fa  66 60                                            str r6, [r4, #4]
008a60fc  a3 60                                            str r3, [r4, #8]
008a60fe  05 b0                                            add sp, #0x14
008a6100  0c bc                                            pop {r2, r3}
008a6102  90 46                                            mov r8, r2
008a6104  99 46                                            mov sb, r3
008a6106  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a6108  03 ab                                            add r3, sp, #0xc
008a610a  00 93                                            str r3, [sp]
008a610c  32 1c                                            adds r2, r6, #0
008a610e  2b 1c                                            adds r3, r5, #0
008a6110  ff f7 ca f9                                      bl #0x8a54a8
008a6114  f3 e7                                            b #0x8a60fe
008a6116  68 f6 cc e0                                      blx #0x30e2b0
008a611a  02 9b                                            ldr r3, [sp, #8]
008a611c  42 46                                            mov r2, r8
008a611e  22 60                                            str r2, [r4]
008a6120  9b 00                                            lsls r3, r3, #2
008a6122  43 44                                            add r3, r8
008a6124  66 60                                            str r6, [r4, #4]
008a6126  a3 60                                            str r3, [r4, #8]
008a6128  e9 e7                                            b #0x8a60fe

; FUNCTION 0x008a612c, declared_size=38, range_size=38, mode=thumb
; class-group: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >
; alias: _ZNSt6vectorIPNSt6locale5facetESaIS2_EE6resizeEjRKS2_
; demangled: std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >::resize(unsigned int, std::locale::facet* const&)
; decoder-mode: thumb
008a612c  70 b5                                            push {r4, r5, r6, lr}
008a612e  44 68                                            ldr r4, [r0, #4]
008a6130  05 68                                            ldr r5, [r0]
008a6132  13 1c                                            adds r3, r2, #0
008a6134  62 1b                                            subs r2, r4, r5
008a6136  92 10                                            asrs r2, r2, #2
008a6138  91 42                                            cmp r1, r2
008a613a  05 d2                                            bhs #0x8a6148
008a613c  89 00                                            lsls r1, r1, #2
008a613e  6d 18                                            adds r5, r5, r1
008a6140  a5 42                                            cmp r5, r4
008a6142  00 d0                                            beq #0x8a6146
008a6144  45 60                                            str r5, [r0, #4]
008a6146  70 bd                                            pop {r4, r5, r6, pc}
008a6148  8a 1a                                            subs r2, r1, r2
008a614a  21 1c                                            adds r1, r4, #0
008a614c  ff f7 8e ff                                      bl #0x8a606c
008a6150  f9 e7                                            b #0x8a6146
