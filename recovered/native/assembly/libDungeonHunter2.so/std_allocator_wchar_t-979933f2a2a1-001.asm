; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00319470, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<wchar_t>
; alias: _ZNSaIwE11_M_allocateEjRj
; demangled: std::allocator<wchar_t>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00319470  10 40 2d e9                                      push {r4, lr}
00319474  07 01 71 e3                                      cmn r1, #0xc0000001
00319478  08 d0 4d e2                                      sub sp, sp, #8
0031947c  02 40 a0 e1                                      mov r4, r2
00319480  10 00 00 8a                                      bhi #0x3194c8
00319484  00 00 51 e3                                      cmp r1, #0
00319488  01 00 a0 01                                      moveq r0, r1
0031948c  01 00 00 1a                                      bne #0x319498
00319490  08 d0 8d e2                                      add sp, sp, #8
00319494  10 80 bd e8                                      pop {r4, pc}
00319498  01 01 a0 e1                                      lsl r0, r1, #2
0031949c  80 00 50 e3                                      cmp r0, #0x80
003194a0  04 00 8d e5                                      str r0, [sp, #4]
003194a4  05 00 00 8a                                      bhi #0x3194c0
003194a8  04 00 8d e2                                      add r0, sp, #4
003194ac  83 be 0f eb                                      bl #0x708ec0
003194b0  04 30 9d e5                                      ldr r3, [sp, #4]
003194b4  23 31 a0 e1                                      lsr r3, r3, #2
003194b8  00 30 84 e5                                      str r3, [r4]
003194bc  f3 ff ff ea                                      b #0x319490
003194c0  e3 db ff eb                                      bl #0x310454
003194c4  f9 ff ff ea                                      b #0x3194b0
003194c8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003194cc  00 00 8f e0                                      add r0, pc, r0
003194d0  fb d2 ff eb                                      bl #0x30e0c4
003194d4  01 00 a0 e3                                      mov r0, #1
003194d8  5a d2 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003194dc  a4 4f 5a 00                                      .byte 0xa4, 0x4f, 0x5a, 0x00

; FUNCTION 0x008a5c68, declared_size=64, range_size=64, mode=thumb
; class-group: std::allocator<wchar_t>
; alias: _ZNSaIwE8allocateEjPKv
; demangled: std::allocator<wchar_t>::allocate(unsigned int, void const*)
; decoder-mode: thumb
008a5c68  00 b5                                            push {lr}
008a5c6a  0d 4b                                            ldr r3, [pc, #0x34]
008a5c6c  83 b0                                            sub sp, #0xc
008a5c6e  99 42                                            cmp r1, r3
008a5c70  0f d8                                            bhi #0x8a5c92
008a5c72  00 20                                            movs r0, #0
008a5c74  00 29                                            cmp r1, #0
008a5c76  01 d1                                            bne #0x8a5c7c
008a5c78  03 b0                                            add sp, #0xc
008a5c7a  00 bd                                            pop {pc}
008a5c7c  88 00                                            lsls r0, r1, #2
008a5c7e  01 90                                            str r0, [sp, #4]
008a5c80  80 28                                            cmp r0, #0x80
008a5c82  03 d8                                            bhi #0x8a5c8c
008a5c84  01 a8                                            add r0, sp, #4
008a5c86  10 f0 b5 fb                                      bl #0x8b63f4
008a5c8a  f5 e7                                            b #0x8a5c78
008a5c8c  68 f6 fe e5                                      blx #0x30e88c
008a5c90  f2 e7                                            b #0x8a5c78
008a5c92  04 48                                            ldr r0, [pc, #0x10]
008a5c94  78 44                                            add r0, pc
008a5c96  68 f6 16 e2                                      blx #0x30e0c4
008a5c9a  01 20                                            movs r0, #1
008a5c9c  68 f6 d4 e0                                      blx #0x30de48
; mapping-symbol data/literal pool
008a5ca0  ff ff ff 3f a0 fc 06 00                          .byte 0xff, 0xff, 0xff, 0x3f, 0xa0, 0xfc, 0x06, 0x00
