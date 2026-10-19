; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b6224, declared_size=56, range_size=56, mode=thumb
; class-group: std::__node_alloc_impl
; alias: _ZNSt17__node_alloc_impl13_M_deallocateEPvj
; demangled: std::__node_alloc_impl::_M_deallocate(void*, unsigned int)
; decoder-mode: thumb
008b6224  70 b5                                            push {r4, r5, r6, lr}
008b6226  0a 4b                                            ldr r3, [pc, #0x28]
008b6228  0a 4a                                            ldr r2, [pc, #0x28]
008b622a  4d 1e                                            subs r5, r1, #1
008b622c  7b 44                                            add r3, pc
008b622e  9a 58                                            ldr r2, [r3, r2]
008b6230  ed 08                                            lsrs r5, r5, #3
008b6232  ad 00                                            lsls r5, r5, #2
008b6234  ad 18                                            adds r5, r5, r2
008b6236  08 4a                                            ldr r2, [pc, #0x20]
008b6238  06 1c                                            adds r6, r0, #0
008b623a  9c 58                                            ldr r4, [r3, r2]
008b623c  20 1c                                            adds r0, r4, #0
008b623e  58 f6 b8 e1                                      blx #0x30e5b0
008b6242  2b 68                                            ldr r3, [r5]
008b6244  20 1c                                            adds r0, r4, #0
008b6246  33 60                                            str r3, [r6]
008b6248  2e 60                                            str r6, [r5]
008b624a  58 f6 a4 e0                                      blx #0x30e394
008b624e  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008b6250  68 e8 0d 00 c8 31 00 00 54 2f 00 00              .byte 0x68, 0xe8, 0x0d, 0x00, 0xc8, 0x31, 0x00, 0x00, 0x54, 0x2f, 0x00, 0x00

; FUNCTION 0x008b6264, declared_size=220, range_size=220, mode=thumb
; class-group: std::__node_alloc_impl
; alias: _ZNSt17__node_alloc_impl14_S_chunk_allocEjRi
; demangled: std::__node_alloc_impl::_S_chunk_alloc(unsigned int, int&)
; decoder-mode: thumb
008b6264  f0 b5                                            push {r4, r5, r6, r7, lr}
008b6266  5f 46                                            mov r7, fp
008b6268  56 46                                            mov r6, sl
008b626a  4d 46                                            mov r5, sb
008b626c  44 46                                            mov r4, r8
008b626e  f0 b4                                            push {r4, r5, r6, r7}
008b6270  2e 4c                                            ldr r4, [pc, #0xb8]
008b6272  80 46                                            mov r8, r0
008b6274  2e 48                                            ldr r0, [pc, #0xb8]
008b6276  7c 44                                            add r4, pc
008b6278  0e 1c                                            adds r6, r1, #0
008b627a  23 58                                            ldr r3, [r4, r0]
008b627c  2d 49                                            ldr r1, [pc, #0xb4]
008b627e  2e 4a                                            ldr r2, [pc, #0xb8]
008b6280  1f 68                                            ldr r7, [r3]
008b6282  63 58                                            ldr r3, [r4, r1]
008b6284  89 46                                            mov sb, r1
008b6286  2d 49                                            ldr r1, [pc, #0xb4]
008b6288  83 b0                                            sub sp, #0xc
008b628a  82 46                                            mov sl, r0
008b628c  18 68                                            ldr r0, [r3]
008b628e  00 23                                            movs r3, #0
008b6290  01 92                                            str r2, [sp, #4]
008b6292  9b 46                                            mov fp, r3
008b6294  00 91                                            str r1, [sp]
008b6296  28 e0                                            b #0x8b62ea
008b6298  47 45                                            cmp r7, r8
008b629a  39 d2                                            bhs #0x8b6310
008b629c  01 99                                            ldr r1, [sp, #4]
008b629e  01 3f                                            subs r7, #1
008b62a0  ff 08                                            lsrs r7, r7, #3
008b62a2  62 58                                            ldr r2, [r4, r1]
008b62a4  bf 00                                            lsls r7, r7, #2
008b62a6  bf 18                                            adds r7, r7, r2
008b62a8  3a 68                                            ldr r2, [r7]
008b62aa  02 60                                            str r2, [r0]
008b62ac  48 46                                            mov r0, sb
008b62ae  22 58                                            ldr r2, [r4, r0]
008b62b0  50 46                                            mov r0, sl
008b62b2  11 68                                            ldr r1, [r2]
008b62b4  39 60                                            str r1, [r7]
008b62b6  21 58                                            ldr r1, [r4, r0]
008b62b8  58 46                                            mov r0, fp
008b62ba  10 60                                            str r0, [r2]
008b62bc  08 60                                            str r0, [r1]
008b62be  00 99                                            ldr r1, [sp]
008b62c0  07 22                                            movs r2, #7
008b62c2  5b 00                                            lsls r3, r3, #1
008b62c4  65 58                                            ldr r5, [r4, r1]
008b62c6  2f 68                                            ldr r7, [r5]
008b62c8  07 37                                            adds r7, #7
008b62ca  97 43                                            bics r7, r2
008b62cc  df 19                                            adds r7, r3, r7
008b62ce  38 1c                                            adds r0, r7, #0
008b62d0  58 f6 dc e2                                      blx #0x30e88c
008b62d4  49 46                                            mov r1, sb
008b62d6  63 58                                            ldr r3, [r4, r1]
008b62d8  3a 09                                            lsrs r2, r7, #4
008b62da  c7 19                                            adds r7, r0, r7
008b62dc  18 60                                            str r0, [r3]
008b62de  2b 68                                            ldr r3, [r5]
008b62e0  d3 18                                            adds r3, r2, r3
008b62e2  52 46                                            mov r2, sl
008b62e4  2b 60                                            str r3, [r5]
008b62e6  a3 58                                            ldr r3, [r4, r2]
008b62e8  1f 60                                            str r7, [r3]
008b62ea  32 68                                            ldr r2, [r6]
008b62ec  3f 1a                                            subs r7, r7, r0
008b62ee  43 46                                            mov r3, r8
008b62f0  53 43                                            muls r3, r2, r3
008b62f2  00 2f                                            cmp r7, #0
008b62f4  e3 d0                                            beq #0x8b62be
008b62f6  bb 42                                            cmp r3, r7
008b62f8  ce d8                                            bhi #0x8b6298
008b62fa  49 46                                            mov r1, sb
008b62fc  62 58                                            ldr r2, [r4, r1]
008b62fe  c3 18                                            adds r3, r0, r3
008b6300  13 60                                            str r3, [r2]
008b6302  03 b0                                            add sp, #0xc
008b6304  3c bc                                            pop {r2, r3, r4, r5}
008b6306  90 46                                            mov r8, r2
008b6308  99 46                                            mov sb, r3
008b630a  a2 46                                            mov sl, r4
008b630c  ab 46                                            mov fp, r5
008b630e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b6310  41 46                                            mov r1, r8
008b6312  38 1c                                            adds r0, r7, #0
008b6314  58 f6 9a e4                                      blx #0x30ec4c
008b6318  02 1c                                            adds r2, r0, #0
008b631a  30 60                                            str r0, [r6]
008b631c  48 46                                            mov r0, sb
008b631e  23 58                                            ldr r3, [r4, r0]
008b6320  41 46                                            mov r1, r8
008b6322  51 43                                            muls r1, r2, r1
008b6324  18 68                                            ldr r0, [r3]
008b6326  42 18                                            adds r2, r0, r1
008b6328  1a 60                                            str r2, [r3]
008b632a  ea e7                                            b #0x8b6302
; mapping-symbol data/literal pool
008b632c  1e e8 0d 00 2c 13 00 00 98 22 00 00 c8 31 00 00  .byte 0x1e, 0xe8, 0x0d, 0x00, 0x2c, 0x13, 0x00, 0x00, 0x98, 0x22, 0x00, 0x00, 0xc8, 0x31, 0x00, 0x00
008b633c  48 24 00 00                                      .byte 0x48, 0x24, 0x00, 0x00

; FUNCTION 0x008b6340, declared_size=88, range_size=88, mode=thumb
; class-group: std::__node_alloc_impl
; alias: _ZNSt17__node_alloc_impl9_S_refillEj
; demangled: std::__node_alloc_impl::_S_refill(unsigned int)
; decoder-mode: thumb
008b6340  30 b5                                            push {r4, r5, lr}
008b6342  83 b0                                            sub sp, #0xc
008b6344  14 23                                            movs r3, #0x14
008b6346  01 a9                                            add r1, sp, #4
008b6348  01 93                                            str r3, [sp, #4]
008b634a  11 4d                                            ldr r5, [pc, #0x44]
008b634c  04 1c                                            adds r4, r0, #0
008b634e  ff f7 89 ff                                      bl #0x8b6264
008b6352  01 9b                                            ldr r3, [sp, #4]
008b6354  7d 44                                            add r5, pc
008b6356  01 2b                                            cmp r3, #1
008b6358  18 d0                                            beq #0x8b638c
008b635a  0e 4b                                            ldr r3, [pc, #0x38]
008b635c  62 1e                                            subs r2, r4, #1
008b635e  d2 08                                            lsrs r2, r2, #3
008b6360  eb 58                                            ldr r3, [r5, r3]
008b6362  92 00                                            lsls r2, r2, #2
008b6364  d2 18                                            adds r2, r2, r3
008b6366  03 19                                            adds r3, r0, r4
008b6368  13 60                                            str r3, [r2]
008b636a  01 9a                                            ldr r2, [sp, #4]
008b636c  02 3a                                            subs r2, #2
008b636e  01 92                                            str r2, [sp, #4]
008b6370  00 2a                                            cmp r2, #0
008b6372  01 d1                                            bne #0x8b6378
008b6374  08 e0                                            b #0x8b6388
008b6376  13 1c                                            adds r3, r2, #0
008b6378  1a 19                                            adds r2, r3, r4
008b637a  1a 60                                            str r2, [r3]
008b637c  01 9b                                            ldr r3, [sp, #4]
008b637e  01 3b                                            subs r3, #1
008b6380  01 93                                            str r3, [sp, #4]
008b6382  00 2b                                            cmp r3, #0
008b6384  f7 d1                                            bne #0x8b6376
008b6386  13 1c                                            adds r3, r2, #0
008b6388  00 22                                            movs r2, #0
008b638a  1a 60                                            str r2, [r3]
008b638c  03 b0                                            add sp, #0xc
008b638e  30 bd                                            pop {r4, r5, pc}
; mapping-symbol data/literal pool
008b6390  40 e7 0d 00 c8 31 00 00                          .byte 0x40, 0xe7, 0x0d, 0x00, 0xc8, 0x31, 0x00, 0x00

; FUNCTION 0x008b6398, declared_size=92, range_size=92, mode=thumb
; class-group: std::__node_alloc_impl
; alias: _ZNSt17__node_alloc_impl11_M_allocateERj
; demangled: std::__node_alloc_impl::_M_allocate(unsigned int&)
; decoder-mode: thumb
008b6398  f0 b5                                            push {r4, r5, r6, r7, lr}
008b639a  47 46                                            mov r7, r8
008b639c  80 b4                                            push {r7}
008b639e  07 68                                            ldr r7, [r0]
008b63a0  07 23                                            movs r3, #7
008b63a2  11 4c                                            ldr r4, [pc, #0x44]
008b63a4  07 37                                            adds r7, #7
008b63a6  9f 43                                            bics r7, r3
008b63a8  10 4b                                            ldr r3, [pc, #0x40]
008b63aa  7c 44                                            add r4, pc
008b63ac  07 60                                            str r7, [r0]
008b63ae  e3 58                                            ldr r3, [r4, r3]
008b63b0  01 3f                                            subs r7, #1
008b63b2  ff 08                                            lsrs r7, r7, #3
008b63b4  bf 00                                            lsls r7, r7, #2
008b63b6  ff 18                                            adds r7, r7, r3
008b63b8  0d 4b                                            ldr r3, [pc, #0x34]
008b63ba  06 1c                                            adds r6, r0, #0
008b63bc  e0 58                                            ldr r0, [r4, r3]
008b63be  98 46                                            mov r8, r3
008b63c0  58 f6 f6 e0                                      blx #0x30e5b0
008b63c4  3d 68                                            ldr r5, [r7]
008b63c6  00 2d                                            cmp r5, #0
008b63c8  09 d0                                            beq #0x8b63de
008b63ca  2b 68                                            ldr r3, [r5]
008b63cc  3b 60                                            str r3, [r7]
008b63ce  43 46                                            mov r3, r8
008b63d0  e0 58                                            ldr r0, [r4, r3]
008b63d2  57 f6 e0 e7                                      blx #0x30e394
008b63d6  28 1c                                            adds r0, r5, #0
008b63d8  04 bc                                            pop {r2}
008b63da  90 46                                            mov r8, r2
008b63dc  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b63de  30 68                                            ldr r0, [r6]
008b63e0  ff f7 ae ff                                      bl #0x8b6340
008b63e4  05 1c                                            adds r5, r0, #0
008b63e6  f2 e7                                            b #0x8b63ce
; mapping-symbol data/literal pool
008b63e8  ea e6 0d 00 c8 31 00 00 54 2f 00 00              .byte 0xea, 0xe6, 0x0d, 0x00, 0xc8, 0x31, 0x00, 0x00, 0x54, 0x2f, 0x00, 0x00
