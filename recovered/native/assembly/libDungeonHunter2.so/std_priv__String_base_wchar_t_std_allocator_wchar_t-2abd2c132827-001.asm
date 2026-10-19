; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003193b0, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE19_M_deallocate_blockEv
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_deallocate_block()
; decoder-mode: arm
003193b0  44 30 90 e5                                      ldr r3, [r0, #0x44]
003193b4  00 00 53 e1                                      cmp r3, r0
003193b8  1e ff 2f 01                                      bxeq lr
003193bc  00 00 53 e3                                      cmp r3, #0
003193c0  1e ff 2f 01                                      bxeq lr
003193c4  00 10 90 e5                                      ldr r1, [r0]
003193c8  01 10 63 e0                                      rsb r1, r3, r1
003193cc  03 10 c1 e3                                      bic r1, r1, #3
003193d0  80 00 51 e3                                      cmp r1, #0x80
003193d4  01 00 00 8a                                      bhi #0x3193e0
003193d8  03 00 a0 e1                                      mov r0, r3
003193dc  c7 be 0f ea                                      b #0x708f00
003193e0  03 00 a0 e1                                      mov r0, r3
003193e4  15 dc ff ea                                      b #0x310440

; FUNCTION 0x0031bd7c, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.7
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.7]
; decoder-mode: arm
0031bd7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0037be44, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.3
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.3]
; decoder-mode: arm
0037be44  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386e04, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.3
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.3]
; decoder-mode: arm
00386e04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038e60c, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
0038e60c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039e588, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.3
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.3]
; decoder-mode: arm
0039e588  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a03a0, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.7
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.7]
; decoder-mode: arm
003a03a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003b6c6c, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
003b6c6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ccf28, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.13
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.13]
; decoder-mode: arm
003ccf28  1e ff 2f e1                                      bx lr

; FUNCTION 0x003daca4, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
003daca4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003dc9a4, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
003dc9a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003dd24c, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
003dd24c  1e ff 2f e1                                      bx lr

; FUNCTION 0x008a4c58, declared_size=176, range_size=176, mode=thumb
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE7_M_swapERS2_
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_swap(std::priv::_String_base<wchar_t, std::allocator<wchar_t> >&)
; decoder-mode: thumb
008a4c58  f0 b5                                            push {r4, r5, r6, r7, lr}
008a4c5a  47 46                                            mov r7, r8
008a4c5c  80 b4                                            push {r7}
008a4c5e  90 b0                                            sub sp, #0x40
008a4c60  05 1c                                            adds r5, r0, #0
008a4c62  0c 1c                                            adds r4, r1, #0
008a4c64  46 6c                                            ldr r6, [r0, #0x44]
008a4c66  4b 6c                                            ldr r3, [r1, #0x44]
008a4c68  03 e0                                            b #0x8a4c72
008a4c6a  1e 1c                                            adds r6, r3, #0
008a4c6c  2c 1c                                            adds r4, r5, #0
008a4c6e  2b 1c                                            adds r3, r5, #0
008a4c70  15 1c                                            adds r5, r2, #0
008a4c72  ae 42                                            cmp r6, r5
008a4c74  25 d1                                            bne #0x8a4cc2
008a4c76  22 1c                                            adds r2, r4, #0
008a4c78  9c 42                                            cmp r4, r3
008a4c7a  f6 d1                                            bne #0x8a4c6a
008a4c7c  31 1c                                            adds r1, r6, #0
008a4c7e  40 22                                            movs r2, #0x40
008a4c80  68 46                                            mov r0, sp
008a4c82  69 f6 f2 e5                                      blx #0x30e868
008a4c86  21 1c                                            adds r1, r4, #0
008a4c88  40 22                                            movs r2, #0x40
008a4c8a  30 1c                                            adds r0, r6, #0
008a4c8c  69 f6 ec e5                                      blx #0x30e868
008a4c90  69 46                                            mov r1, sp
008a4c92  40 22                                            movs r2, #0x40
008a4c94  20 1c                                            adds r0, r4, #0
008a4c96  69 f6 e8 e5                                      blx #0x30e868
008a4c9a  20 6c                                            ldr r0, [r4, #0x40]
008a4c9c  61 6c                                            ldr r1, [r4, #0x44]
008a4c9e  73 6c                                            ldr r3, [r6, #0x44]
008a4ca0  32 6c                                            ldr r2, [r6, #0x40]
008a4ca2  41 1a                                            subs r1, r0, r1
008a4ca4  89 10                                            asrs r1, r1, #2
008a4ca6  89 00                                            lsls r1, r1, #2
008a4ca8  59 18                                            adds r1, r3, r1
008a4caa  d3 1a                                            subs r3, r2, r3
008a4cac  9b 10                                            asrs r3, r3, #2
008a4cae  9b 00                                            lsls r3, r3, #2
008a4cb0  e3 18                                            adds r3, r4, r3
008a4cb2  31 64                                            str r1, [r6, #0x40]
008a4cb4  23 64                                            str r3, [r4, #0x40]
008a4cb6  76 64                                            str r6, [r6, #0x44]
008a4cb8  64 64                                            str r4, [r4, #0x44]
008a4cba  10 b0                                            add sp, #0x40
008a4cbc  04 bc                                            pop {r2}
008a4cbe  90 46                                            mov r8, r2
008a4cc0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a4cc2  9c 42                                            cmp r4, r3
008a4cc4  0c d0                                            beq #0x8a4ce0
008a4cc6  2b 68                                            ldr r3, [r5]
008a4cc8  22 68                                            ldr r2, [r4]
008a4cca  2a 60                                            str r2, [r5]
008a4ccc  23 60                                            str r3, [r4]
008a4cce  6b 6c                                            ldr r3, [r5, #0x44]
008a4cd0  62 6c                                            ldr r2, [r4, #0x44]
008a4cd2  6a 64                                            str r2, [r5, #0x44]
008a4cd4  63 64                                            str r3, [r4, #0x44]
008a4cd6  2b 6c                                            ldr r3, [r5, #0x40]
008a4cd8  22 6c                                            ldr r2, [r4, #0x40]
008a4cda  2a 64                                            str r2, [r5, #0x40]
008a4cdc  23 64                                            str r3, [r4, #0x40]
008a4cde  ec e7                                            b #0x8a4cba
008a4ce0  2b 6c                                            ldr r3, [r5, #0x40]
008a4ce2  28 1c                                            adds r0, r5, #0
008a4ce4  21 1c                                            adds r1, r4, #0
008a4ce6  40 22                                            movs r2, #0x40
008a4ce8  98 46                                            mov r8, r3
008a4cea  2f 68                                            ldr r7, [r5]
008a4cec  69 f6 bc e5                                      blx #0x30e868
008a4cf0  6d 64                                            str r5, [r5, #0x44]
008a4cf2  23 6c                                            ldr r3, [r4, #0x40]
008a4cf4  1b 1b                                            subs r3, r3, r4
008a4cf6  9b 10                                            asrs r3, r3, #2
008a4cf8  9b 00                                            lsls r3, r3, #2
008a4cfa  eb 18                                            adds r3, r5, r3
008a4cfc  2b 64                                            str r3, [r5, #0x40]
008a4cfe  43 46                                            mov r3, r8
008a4d00  27 60                                            str r7, [r4]
008a4d02  66 64                                            str r6, [r4, #0x44]
008a4d04  23 64                                            str r3, [r4, #0x40]
008a4d06  d8 e7                                            b #0x8a4cba

; FUNCTION 0x008a6c04, declared_size=64, range_size=64, mode=thumb
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int)
; decoder-mode: thumb
008a6c04  10 b5                                            push {r4, lr}
008a6c06  0d 4b                                            ldr r3, [pc, #0x34]
008a6c08  82 b0                                            sub sp, #8
008a6c0a  04 1c                                            adds r4, r0, #0
008a6c0c  01 91                                            str r1, [sp, #4]
008a6c0e  99 42                                            cmp r1, r3
008a6c10  01 d8                                            bhi #0x8a6c16
008a6c12  00 29                                            cmp r1, #0
008a6c14  05 d1                                            bne #0x8a6c22
008a6c16  0a 48                                            ldr r0, [pc, #0x28]
008a6c18  78 44                                            add r0, pc
008a6c1a  fb f7 5b fe                                      bl #0x8a28d4
008a6c1e  02 b0                                            add sp, #8
008a6c20  10 bd                                            pop {r4, pc}
008a6c22  10 29                                            cmp r1, #0x10
008a6c24  fb d9                                            bls #0x8a6c1e
008a6c26  44 30                                            adds r0, #0x44
008a6c28  01 aa                                            add r2, sp, #4
008a6c2a  72 f6 22 e4                                      blx #0x319470
008a6c2e  01 9b                                            ldr r3, [sp, #4]
008a6c30  60 64                                            str r0, [r4, #0x44]
008a6c32  20 64                                            str r0, [r4, #0x40]
008a6c34  9b 00                                            lsls r3, r3, #2
008a6c36  c0 18                                            adds r0, r0, r3
008a6c38  20 60                                            str r0, [r4]
008a6c3a  f0 e7                                            b #0x8a6c1e
; mapping-symbol data/literal pool
008a6c3c  ff ff ff 3f cc eb 06 00                          .byte 0xff, 0xff, 0xff, 0x3f, 0xcc, 0xeb, 0x06, 0x00

; FUNCTION 0x008bb3c4, declared_size=2, range_size=2, mode=thumb
; class-group: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >
; alias: _ZNSt4priv12_String_baseIwSaIwEE17_M_allocate_blockEj.clone.0
; demangled: std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int) [clone .clone.0]
; decoder-mode: thumb
008bb3c4  70 47                                            bx lr
