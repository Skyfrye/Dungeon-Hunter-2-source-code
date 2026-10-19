; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a5ef0, declared_size=166, range_size=166, mode=thumb
; class-group: void std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >
; alias: _ZNSt6vectorIPNSt6locale5facetESaIS2_EE13_M_assign_auxIPS2_EEvT_S7_RKSt20forward_iterator_tag
; demangled: void std::vector<std::locale::facet*, std::allocator<std::locale::facet*> >::_M_assign_aux<std::locale::facet**>(std::locale::facet**, std::locale::facet**, std::forward_iterator_tag const&)
; decoder-mode: thumb
008a5ef0  f0 b5                                            push {r4, r5, r6, r7, lr}
008a5ef2  4f 46                                            mov r7, sb
008a5ef4  46 46                                            mov r6, r8
008a5ef6  c0 b4                                            push {r6, r7}
008a5ef8  17 1c                                            adds r7, r2, #0
008a5efa  52 1a                                            subs r2, r2, r1
008a5efc  90 46                                            mov r8, r2
008a5efe  96 10                                            asrs r6, r2, #2
008a5f00  03 68                                            ldr r3, [r0]
008a5f02  82 68                                            ldr r2, [r0, #8]
008a5f04  83 b0                                            sub sp, #0xc
008a5f06  04 1c                                            adds r4, r0, #0
008a5f08  d2 1a                                            subs r2, r2, r3
008a5f0a  92 10                                            asrs r2, r2, #2
008a5f0c  0d 1c                                            adds r5, r1, #0
008a5f0e  96 42                                            cmp r6, r2
008a5f10  22 d8                                            bhi #0x8a5f58
008a5f12  40 68                                            ldr r0, [r0, #4]
008a5f14  c2 1a                                            subs r2, r0, r3
008a5f16  92 10                                            asrs r2, r2, #2
008a5f18  96 42                                            cmp r6, r2
008a5f1a  17 d9                                            bls #0x8a5f4c
008a5f1c  96 00                                            lsls r6, r2, #2
008a5f1e  8e 19                                            adds r6, r1, r6
008a5f20  72 1a                                            subs r2, r6, r1
008a5f22  00 2a                                            cmp r2, #0
008a5f24  03 d0                                            beq #0x8a5f2e
008a5f26  18 1c                                            adds r0, r3, #0
008a5f28  68 f6 06 e0                                      blx #0x30df38
008a5f2c  60 68                                            ldr r0, [r4, #4]
008a5f2e  03 1c                                            adds r3, r0, #0
008a5f30  b7 42                                            cmp r7, r6
008a5f32  05 d0                                            beq #0x8a5f40
008a5f34  bf 1b                                            subs r7, r7, r6
008a5f36  31 1c                                            adds r1, r6, #0
008a5f38  3a 1c                                            adds r2, r7, #0
008a5f3a  68 f6 96 e4                                      blx #0x30e868
008a5f3e  c3 19                                            adds r3, r0, r7
008a5f40  63 60                                            str r3, [r4, #4]
008a5f42  03 b0                                            add sp, #0xc
008a5f44  0c bc                                            pop {r2, r3}
008a5f46  90 46                                            mov r8, r2
008a5f48  99 46                                            mov sb, r3
008a5f4a  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a5f4c  42 46                                            mov r2, r8
008a5f4e  18 1c                                            adds r0, r3, #0
008a5f50  00 2a                                            cmp r2, #0
008a5f52  1b d1                                            bne #0x8a5f8c
008a5f54  60 60                                            str r0, [r4, #4]
008a5f56  f4 e7                                            b #0x8a5f42
008a5f58  08 30                                            adds r0, #8
008a5f5a  31 1c                                            adds r1, r6, #0
008a5f5c  01 aa                                            add r2, sp, #4
008a5f5e  01 96                                            str r6, [sp, #4]
008a5f60  ff f7 2e ff                                      bl #0x8a5dc0
008a5f64  81 46                                            mov sb, r0
008a5f66  bd 42                                            cmp r5, r7
008a5f68  03 d0                                            beq #0x8a5f72
008a5f6a  29 1c                                            adds r1, r5, #0
008a5f6c  42 46                                            mov r2, r8
008a5f6e  68 f6 7c e4                                      blx #0x30e868
008a5f72  20 1c                                            adds r0, r4, #0
008a5f74  ff f7 06 fb                                      bl #0x8a5584
008a5f78  01 9b                                            ldr r3, [sp, #4]
008a5f7a  b6 00                                            lsls r6, r6, #2
008a5f7c  4a 46                                            mov r2, sb
008a5f7e  9b 00                                            lsls r3, r3, #2
008a5f80  4b 44                                            add r3, sb
008a5f82  4e 44                                            add r6, sb
008a5f84  22 60                                            str r2, [r4]
008a5f86  66 60                                            str r6, [r4, #4]
008a5f88  a3 60                                            str r3, [r4, #8]
008a5f8a  da e7                                            b #0x8a5f42
008a5f8c  67 f6 d4 e7                                      blx #0x30df38
008a5f90  40 44                                            add r0, r8
008a5f92  60 60                                            str r0, [r4, #4]
008a5f94  d5 e7                                            b #0x8a5f42
