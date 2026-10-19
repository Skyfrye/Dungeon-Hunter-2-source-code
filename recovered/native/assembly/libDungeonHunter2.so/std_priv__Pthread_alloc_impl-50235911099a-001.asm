; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b6188, declared_size=52, range_size=52, mode=thumb
; class-group: std::priv::_Pthread_alloc_impl
; alias: _ZNSt4priv19_Pthread_alloc_impl10deallocateEPvjPNS_31_Pthread_alloc_per_thread_stateE
; demangled: std::priv::_Pthread_alloc_impl::deallocate(void*, unsigned int, std::priv::_Pthread_alloc_per_thread_state*)
; decoder-mode: thumb
008b6188  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b618a  04 1c                                            adds r4, r0, #0
008b618c  0d 1c                                            adds r5, r1, #0
008b618e  16 1c                                            adds r6, r2, #0
008b6190  80 29                                            cmp r1, #0x80
008b6192  10 d8                                            bhi #0x8b61b6
008b6194  07 35                                            adds r5, #7
008b6196  ed 08                                            lsrs r5, r5, #3
008b6198  17 1c                                            adds r7, r2, #0
008b619a  01 3d                                            subs r5, #1
008b619c  44 37                                            adds r7, #0x44
008b619e  ad 00                                            lsls r5, r5, #2
008b61a0  76 19                                            adds r6, r6, r5
008b61a2  38 1c                                            adds r0, r7, #0
008b61a4  58 f6 04 e2                                      blx #0x30e5b0
008b61a8  33 68                                            ldr r3, [r6]
008b61aa  38 1c                                            adds r0, r7, #0
008b61ac  23 60                                            str r3, [r4]
008b61ae  34 60                                            str r4, [r6]
008b61b0  58 f6 f0 e0                                      blx #0x30e394
008b61b4  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b61b6  57 f6 9c e6                                      blx #0x30def0
008b61ba  fb e7                                            b #0x8b61b4

; FUNCTION 0x008b61f4, declared_size=48, range_size=48, mode=thumb
; class-group: std::priv::_Pthread_alloc_impl
; alias: _ZNSt4priv19_Pthread_alloc_impl13_S_destructorEPv
; demangled: std::priv::_Pthread_alloc_impl::_S_destructor(void*)
; decoder-mode: thumb
008b61f4  70 b5                                            push {r4, r5, r6, lr}
008b61f6  08 4c                                            ldr r4, [pc, #0x20]
008b61f8  08 4b                                            ldr r3, [pc, #0x20]
008b61fa  06 1c                                            adds r6, r0, #0
008b61fc  7c 44                                            add r4, pc
008b61fe  e5 58                                            ldr r5, [r4, r3]
008b6200  28 1c                                            adds r0, r5, #0
008b6202  58 f6 d6 e1                                      blx #0x30e5b0
008b6206  06 4b                                            ldr r3, [pc, #0x18]
008b6208  28 1c                                            adds r0, r5, #0
008b620a  e3 58                                            ldr r3, [r4, r3]
008b620c  1a 68                                            ldr r2, [r3]
008b620e  32 64                                            str r2, [r6, #0x40]
008b6210  1e 60                                            str r6, [r3]
008b6212  58 f6 c0 e0                                      blx #0x30e394
008b6216  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008b6218  98 e8 0d 00 80 3f 00 00 3c 16 00 00              .byte 0x98, 0xe8, 0x0d, 0x00, 0x80, 0x3f, 0x00, 0x00, 0x3c, 0x16, 0x00, 0x00

; FUNCTION 0x008b63fc, declared_size=64, range_size=64, mode=thumb
; class-group: std::priv::_Pthread_alloc_impl
; alias: _ZNSt4priv19_Pthread_alloc_impl23_S_new_per_thread_stateEv
; demangled: std::priv::_Pthread_alloc_impl::_S_new_per_thread_state()
; decoder-mode: thumb
008b63fc  10 b5                                            push {r4, lr}
008b63fe  0d 4b                                            ldr r3, [pc, #0x34]
008b6400  0d 4a                                            ldr r2, [pc, #0x34]
008b6402  7b 44                                            add r3, pc
008b6404  9b 58                                            ldr r3, [r3, r2]
008b6406  1c 68                                            ldr r4, [r3]
008b6408  00 2c                                            cmp r4, #0
008b640a  03 d0                                            beq #0x8b6414
008b640c  22 6c                                            ldr r2, [r4, #0x40]
008b640e  1a 60                                            str r2, [r3]
008b6410  20 1c                                            adds r0, r4, #0
008b6412  10 bd                                            pop {r4, pc}
008b6414  48 20                                            movs r0, #0x48
008b6416  58 f6 3a e2                                      blx #0x30e88c
008b641a  00 23                                            movs r3, #0
008b641c  04 1c                                            adds r4, r0, #0
008b641e  03 64                                            str r3, [r0, #0x40]
008b6420  00 21                                            movs r1, #0
008b6422  44 30                                            adds r0, #0x44
008b6424  57 f6 c4 e5                                      blx #0x30dfb0
008b6428  20 1c                                            adds r0, r4, #0
008b642a  00 21                                            movs r1, #0
008b642c  40 22                                            movs r2, #0x40
008b642e  58 f6 18 e0                                      blx #0x30e460
008b6432  ed e7                                            b #0x8b6410
; mapping-symbol data/literal pool
008b6434  92 e6 0d 00 3c 16 00 00                          .byte 0x92, 0xe6, 0x0d, 0x00, 0x3c, 0x16, 0x00, 0x00

; FUNCTION 0x008b643c, declared_size=176, range_size=176, mode=thumb
; class-group: std::priv::_Pthread_alloc_impl
; alias: _ZNSt4priv19_Pthread_alloc_impl23_S_get_per_thread_stateEv
; demangled: std::priv::_Pthread_alloc_impl::_S_get_per_thread_state()
; decoder-mode: thumb
008b643c  f0 b5                                            push {r4, r5, r6, r7, lr}
008b643e  47 46                                            mov r7, r8
008b6440  80 b4                                            push {r7}
008b6442  23 4c                                            ldr r4, [pc, #0x8c]
008b6444  23 4d                                            ldr r5, [pc, #0x8c]
008b6446  7c 44                                            add r4, pc
008b6448  63 59                                            ldr r3, [r4, r5]
008b644a  1b 78                                            ldrb r3, [r3]
008b644c  00 2b                                            cmp r3, #0
008b644e  20 d1                                            bne #0x8b6492
008b6450  21 4f                                            ldr r7, [pc, #0x84]
008b6452  22 4b                                            ldr r3, [pc, #0x88]
008b6454  e0 58                                            ldr r0, [r4, r3]
008b6456  98 46                                            mov r8, r3
008b6458  58 f6 aa e0                                      blx #0x30e5b0
008b645c  65 59                                            ldr r5, [r4, r5]
008b645e  2b 78                                            ldrb r3, [r5]
008b6460  00 2b                                            cmp r3, #0
008b6462  08 d1                                            bne #0x8b6476
008b6464  1e 4b                                            ldr r3, [pc, #0x78]
008b6466  e0 59                                            ldr r0, [r4, r7]
008b6468  e1 58                                            ldr r1, [r4, r3]
008b646a  57 f6 98 e6                                      blx #0x30e19c
008b646e  00 28                                            cmp r0, #0
008b6470  26 d1                                            bne #0x8b64c0
008b6472  01 23                                            movs r3, #1
008b6474  2b 70                                            strb r3, [r5]
008b6476  ff f7 c1 ff                                      bl #0x8b63fc
008b647a  e3 59                                            ldr r3, [r4, r7]
008b647c  06 1c                                            adds r6, r0, #0
008b647e  31 1c                                            adds r1, r6, #0
008b6480  18 68                                            ldr r0, [r3]
008b6482  58 f6 44 e4                                      blx #0x30ed0c
008b6486  00 28                                            cmp r0, #0
008b6488  15 d0                                            beq #0x8b64b6
008b648a  0c 28                                            cmp r0, #0xc
008b648c  0c d0                                            beq #0x8b64a8
008b648e  57 f6 3c e5                                      blx #0x30df08
008b6492  11 4f                                            ldr r7, [pc, #0x44]
008b6494  e3 59                                            ldr r3, [r4, r7]
008b6496  18 68                                            ldr r0, [r3]
008b6498  57 f6 16 e7                                      blx #0x30e2c8
008b649c  06 1e                                            subs r6, r0, #0
008b649e  d8 d0                                            beq #0x8b6452
008b64a0  30 1c                                            adds r0, r6, #0
008b64a2  04 bc                                            pop {r2}
008b64a4  90 46                                            mov r8, r2
008b64a6  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b64a8  0e 48                                            ldr r0, [pc, #0x38]
008b64aa  78 44                                            add r0, pc
008b64ac  57 f6 0a e6                                      blx #0x30e0c4
008b64b0  01 20                                            movs r0, #1
008b64b2  57 f6 ca e4                                      blx #0x30de48
008b64b6  43 46                                            mov r3, r8
008b64b8  e0 58                                            ldr r0, [r4, r3]
008b64ba  57 f6 6c e7                                      blx #0x30e394
008b64be  ef e7                                            b #0x8b64a0
008b64c0  09 48                                            ldr r0, [pc, #0x24]
008b64c2  78 44                                            add r0, pc
008b64c4  57 f6 fe e5                                      blx #0x30e0c4
008b64c8  01 20                                            movs r0, #1
008b64ca  57 f6 be e4                                      blx #0x30de48
008b64ce  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008b64d0  4e e6 0d 00 a8 2c 00 00 80 1f 00 00 80 3f 00 00  .byte 0x4e, 0xe6, 0x0d, 0x00, 0xa8, 0x2c, 0x00, 0x00, 0x80, 0x1f, 0x00, 0x00, 0x80, 0x3f, 0x00, 0x00
008b64e0  7c 2c 00 00 8a f4 05 00 72 f4 05 00              .byte 0x7c, 0x2c, 0x00, 0x00, 0x8a, 0xf4, 0x05, 0x00, 0x72, 0xf4, 0x05, 0x00

; FUNCTION 0x008b64f4, declared_size=38, range_size=38, mode=thumb
; class-group: std::priv::_Pthread_alloc_impl
; alias: _ZNSt4priv19_Pthread_alloc_impl10deallocateEPvj
; demangled: std::priv::_Pthread_alloc_impl::deallocate(void*, unsigned int)
; decoder-mode: thumb
008b64f4  70 b5                                            push {r4, r5, r6, lr}
008b64f6  04 1c                                            adds r4, r0, #0
008b64f8  0d 1c                                            adds r5, r1, #0
008b64fa  80 29                                            cmp r1, #0x80
008b64fc  0a d8                                            bhi #0x8b6514
008b64fe  ff f7 9d ff                                      bl #0x8b643c
008b6502  07 35                                            adds r5, #7
008b6504  ed 08                                            lsrs r5, r5, #3
008b6506  01 3d                                            subs r5, #1
008b6508  ad 00                                            lsls r5, r5, #2
008b650a  40 19                                            adds r0, r0, r5
008b650c  03 68                                            ldr r3, [r0]
008b650e  23 60                                            str r3, [r4]
008b6510  04 60                                            str r4, [r0]
008b6512  70 bd                                            pop {r4, r5, r6, pc}
008b6514  57 f6 ec e4                                      blx #0x30def0
008b6518  fb e7                                            b #0x8b6512

; FUNCTION 0x008b657c, declared_size=240, range_size=240, mode=thumb
; class-group: std::priv::_Pthread_alloc_impl
; alias: _ZNSt4priv19_Pthread_alloc_impl14_S_chunk_allocEjRjPNS_31_Pthread_alloc_per_thread_stateE
; demangled: std::priv::_Pthread_alloc_impl::_S_chunk_alloc(unsigned int, unsigned int&, std::priv::_Pthread_alloc_per_thread_state*)
; decoder-mode: thumb
008b657c  f0 b5                                            push {r4, r5, r6, r7, lr}
008b657e  5f 46                                            mov r7, fp
008b6580  56 46                                            mov r6, sl
008b6582  4d 46                                            mov r5, sb
008b6584  44 46                                            mov r4, r8
008b6586  f0 b4                                            push {r4, r5, r6, r7}
008b6588  33 4c                                            ldr r4, [pc, #0xcc]
008b658a  81 46                                            mov sb, r0
008b658c  33 48                                            ldr r0, [pc, #0xcc]
008b658e  85 b0                                            sub sp, #0x14
008b6590  7c 44                                            add r4, pc
008b6592  27 58                                            ldr r7, [r4, r0]
008b6594  02 92                                            str r2, [sp, #8]
008b6596  01 90                                            str r0, [sp, #4]
008b6598  31 4a                                            ldr r2, [pc, #0xc4]
008b659a  32 4b                                            ldr r3, [pc, #0xc8]
008b659c  32 48                                            ldr r0, [pc, #0xc8]
008b659e  4d 46                                            mov r5, sb
008b65a0  0e 1c                                            adds r6, r1, #0
008b65a2  92 46                                            mov sl, r2
008b65a4  9b 46                                            mov fp, r3
008b65a6  b8 46                                            mov r8, r7
008b65a8  81 46                                            mov sb, r0
008b65aa  2a e0                                            b #0x8b6602
008b65ac  a8 42                                            cmp r0, r5
008b65ae  46 d2                                            bhs #0x8b663e
008b65b0  5b 00                                            lsls r3, r3, #1
008b65b2  9c 46                                            mov ip, r3
008b65b4  4b 46                                            mov r3, sb
008b65b6  e7 58                                            ldr r7, [r4, r3]
008b65b8  07 23                                            movs r3, #7
008b65ba  3f 68                                            ldr r7, [r7]
008b65bc  07 37                                            adds r7, #7
008b65be  9f 43                                            bics r7, r3
008b65c0  67 44                                            add r7, ip
008b65c2  00 28                                            cmp r0, #0
008b65c4  09 d0                                            beq #0x8b65da
008b65c6  c3 1d                                            adds r3, r0, #7
008b65c8  db 08                                            lsrs r3, r3, #3
008b65ca  02 98                                            ldr r0, [sp, #8]
008b65cc  01 3b                                            subs r3, #1
008b65ce  9b 00                                            lsls r3, r3, #2
008b65d0  c3 18                                            adds r3, r0, r3
008b65d2  18 68                                            ldr r0, [r3]
008b65d4  10 60                                            str r0, [r2]
008b65d6  0a 68                                            ldr r2, [r1]
008b65d8  1a 60                                            str r2, [r3]
008b65da  38 1c                                            adds r0, r7, #0
008b65dc  ff f7 a2 ff                                      bl #0x8b6524
008b65e0  52 46                                            mov r2, sl
008b65e2  a3 58                                            ldr r3, [r4, r2]
008b65e4  4a 46                                            mov r2, sb
008b65e6  39 09                                            lsrs r1, r7, #4
008b65e8  18 60                                            str r0, [r3]
008b65ea  a3 58                                            ldr r3, [r4, r2]
008b65ec  c7 19                                            adds r7, r0, r7
008b65ee  1a 68                                            ldr r2, [r3]
008b65f0  8a 18                                            adds r2, r1, r2
008b65f2  1a 60                                            str r2, [r3]
008b65f4  5a 46                                            mov r2, fp
008b65f6  a3 58                                            ldr r3, [r4, r2]
008b65f8  1f 60                                            str r7, [r3]
008b65fa  01 9b                                            ldr r3, [sp, #4]
008b65fc  e0 58                                            ldr r0, [r4, r3]
008b65fe  57 f6 ca e6                                      blx #0x30e394
008b6602  40 46                                            mov r0, r8
008b6604  57 f6 d4 e7                                      blx #0x30e5b0
008b6608  32 68                                            ldr r2, [r6]
008b660a  5f 46                                            mov r7, fp
008b660c  e0 59                                            ldr r0, [r4, r7]
008b660e  13 1c                                            adds r3, r2, #0
008b6610  6b 43                                            muls r3, r5, r3
008b6612  52 46                                            mov r2, sl
008b6614  a1 58                                            ldr r1, [r4, r2]
008b6616  00 68                                            ldr r0, [r0]
008b6618  0a 68                                            ldr r2, [r1]
008b661a  80 1a                                            subs r0, r0, r2
008b661c  83 42                                            cmp r3, r0
008b661e  c5 d8                                            bhi #0x8b65ac
008b6620  90 46                                            mov r8, r2
008b6622  43 44                                            add r3, r8
008b6624  0b 60                                            str r3, [r1]
008b6626  01 9f                                            ldr r7, [sp, #4]
008b6628  e0 59                                            ldr r0, [r4, r7]
008b662a  57 f6 b4 e6                                      blx #0x30e394
008b662e  05 b0                                            add sp, #0x14
008b6630  40 46                                            mov r0, r8
008b6632  3c bc                                            pop {r2, r3, r4, r5}
008b6634  90 46                                            mov r8, r2
008b6636  99 46                                            mov sb, r3
008b6638  a2 46                                            mov sl, r4
008b663a  ab 46                                            mov fp, r5
008b663c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b663e  a9 46                                            mov sb, r5
008b6640  0d 1c                                            adds r5, r1, #0
008b6642  49 46                                            mov r1, sb
008b6644  58 f6 02 e3                                      blx #0x30ec4c
008b6648  30 60                                            str r0, [r6]
008b664a  2a 68                                            ldr r2, [r5]
008b664c  4b 46                                            mov r3, sb
008b664e  43 43                                            muls r3, r0, r3
008b6650  90 46                                            mov r8, r2
008b6652  43 44                                            add r3, r8
008b6654  2b 60                                            str r3, [r5]
008b6656  e6 e7                                            b #0x8b6626
; mapping-symbol data/literal pool
008b6658  04 e5 0d 00 80 3f 00 00 ac 29 00 00 94 06 00 00  .byte 0x04, 0xe5, 0x0d, 0x00, 0x80, 0x3f, 0x00, 0x00, 0xac, 0x29, 0x00, 0x00, 0x94, 0x06, 0x00, 0x00
008b6668  08 2d 00 00                                      .byte 0x08, 0x2d, 0x00, 0x00

; FUNCTION 0x008b66b8, declared_size=80, range_size=80, mode=thumb
; class-group: std::priv::_Pthread_alloc_impl
; alias: _ZNSt4priv19_Pthread_alloc_impl8allocateERjPNS_31_Pthread_alloc_per_thread_stateE
; demangled: std::priv::_Pthread_alloc_impl::allocate(unsigned int&, std::priv::_Pthread_alloc_per_thread_state*)
; decoder-mode: thumb
008b66b8  70 b5                                            push {r4, r5, r6, lr}
008b66ba  04 1c                                            adds r4, r0, #0
008b66bc  00 68                                            ldr r0, [r0]
008b66be  0d 1c                                            adds r5, r1, #0
008b66c0  80 28                                            cmp r0, #0x80
008b66c2  18 d8                                            bhi #0x8b66f6
008b66c4  07 23                                            movs r3, #7
008b66c6  0e 1c                                            adds r6, r1, #0
008b66c8  07 30                                            adds r0, #7
008b66ca  98 43                                            bics r0, r3
008b66cc  44 36                                            adds r6, #0x44
008b66ce  20 60                                            str r0, [r4]
008b66d0  30 1c                                            adds r0, r6, #0
008b66d2  57 f6 6e e7                                      blx #0x30e5b0
008b66d6  21 68                                            ldr r1, [r4]
008b66d8  cb 1d                                            adds r3, r1, #7
008b66da  db 08                                            lsrs r3, r3, #3
008b66dc  01 3b                                            subs r3, #1
008b66de  9b 00                                            lsls r3, r3, #2
008b66e0  eb 18                                            adds r3, r5, r3
008b66e2  1c 68                                            ldr r4, [r3]
008b66e4  00 2c                                            cmp r4, #0
008b66e6  0a d0                                            beq #0x8b66fe
008b66e8  22 68                                            ldr r2, [r4]
008b66ea  1a 60                                            str r2, [r3]
008b66ec  30 1c                                            adds r0, r6, #0
008b66ee  57 f6 52 e6                                      blx #0x30e394
008b66f2  20 1c                                            adds r0, r4, #0
008b66f4  70 bd                                            pop {r4, r5, r6, pc}
008b66f6  ff f7 15 ff                                      bl #0x8b6524
008b66fa  04 1c                                            adds r4, r0, #0
008b66fc  f9 e7                                            b #0x8b66f2
008b66fe  28 1c                                            adds r0, r5, #0
008b6700  ff f7 b4 ff                                      bl #0x8b666c
008b6704  04 1c                                            adds r4, r0, #0
008b6706  f1 e7                                            b #0x8b66ec

; FUNCTION 0x008b6710, declared_size=60, range_size=60, mode=thumb
; class-group: std::priv::_Pthread_alloc_impl
; alias: _ZNSt4priv19_Pthread_alloc_impl8allocateERj
; demangled: std::priv::_Pthread_alloc_impl::allocate(unsigned int&)
; decoder-mode: thumb
008b6710  10 b5                                            push {r4, lr}
008b6712  04 1c                                            adds r4, r0, #0
008b6714  00 68                                            ldr r0, [r0]
008b6716  80 28                                            cmp r0, #0x80
008b6718  12 d8                                            bhi #0x8b6740
008b671a  07 23                                            movs r3, #7
008b671c  07 30                                            adds r0, #7
008b671e  98 43                                            bics r0, r3
008b6720  20 60                                            str r0, [r4]
008b6722  ff f7 8b fe                                      bl #0x8b643c
008b6726  21 68                                            ldr r1, [r4]
008b6728  ca 1d                                            adds r2, r1, #7
008b672a  d2 08                                            lsrs r2, r2, #3
008b672c  01 3a                                            subs r2, #1
008b672e  92 00                                            lsls r2, r2, #2
008b6730  82 18                                            adds r2, r0, r2
008b6732  13 68                                            ldr r3, [r2]
008b6734  00 2b                                            cmp r3, #0
008b6736  06 d0                                            beq #0x8b6746
008b6738  19 68                                            ldr r1, [r3]
008b673a  18 1c                                            adds r0, r3, #0
008b673c  11 60                                            str r1, [r2]
008b673e  10 bd                                            pop {r4, pc}
008b6740  ff f7 f0 fe                                      bl #0x8b6524
008b6744  fb e7                                            b #0x8b673e
008b6746  ff f7 91 ff                                      bl #0x8b666c
008b674a  f8 e7                                            b #0x8b673e

; FUNCTION 0x008b6754, declared_size=84, range_size=84, mode=thumb
; class-group: std::priv::_Pthread_alloc_impl
; alias: _ZNSt4priv19_Pthread_alloc_impl10reallocateEPvjRj
; demangled: std::priv::_Pthread_alloc_impl::reallocate(void*, unsigned int, unsigned int&)
; decoder-mode: thumb
008b6754  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b6756  05 1c                                            adds r5, r0, #0
008b6758  0c 1c                                            adds r4, r1, #0
008b675a  16 1c                                            adds r6, r2, #0
008b675c  80 29                                            cmp r1, #0x80
008b675e  1b d9                                            bls #0x8b6798
008b6760  11 68                                            ldr r1, [r2]
008b6762  80 29                                            cmp r1, #0x80
008b6764  1c d8                                            bhi #0x8b67a0
008b6766  07 23                                            movs r3, #7
008b6768  e2 1d                                            adds r2, r4, #7
008b676a  07 31                                            adds r1, #7
008b676c  9a 43                                            bics r2, r3
008b676e  99 43                                            bics r1, r3
008b6770  8a 42                                            cmp r2, r1
008b6772  0f d0                                            beq #0x8b6794
008b6774  30 1c                                            adds r0, r6, #0
008b6776  ff f7 cb ff                                      bl #0x8b6710
008b677a  32 68                                            ldr r2, [r6]
008b677c  07 1c                                            adds r7, r0, #0
008b677e  a2 42                                            cmp r2, r4
008b6780  0c d8                                            bhi #0x8b679c
008b6782  29 1c                                            adds r1, r5, #0
008b6784  38 1c                                            adds r0, r7, #0
008b6786  58 f6 70 e0                                      blx #0x30e868
008b678a  28 1c                                            adds r0, r5, #0
008b678c  21 1c                                            adds r1, r4, #0
008b678e  ff f7 b1 fe                                      bl #0x8b64f4
008b6792  3d 1c                                            adds r5, r7, #0
008b6794  28 1c                                            adds r0, r5, #0
008b6796  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b6798  11 68                                            ldr r1, [r2]
008b679a  e4 e7                                            b #0x8b6766
008b679c  22 1c                                            adds r2, r4, #0
008b679e  f0 e7                                            b #0x8b6782
008b67a0  58 f6 30 e2                                      blx #0x30ec04
008b67a4  05 1c                                            adds r5, r0, #0
008b67a6  f5 e7                                            b #0x8b6794
