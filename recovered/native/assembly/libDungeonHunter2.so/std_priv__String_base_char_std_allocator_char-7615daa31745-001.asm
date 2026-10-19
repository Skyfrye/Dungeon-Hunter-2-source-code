; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031167c, declared_size=108, range_size=108, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_allocate_block(unsigned int)
; decoder-mode: arm
0031167c  10 40 2d e9                                      push {r4, lr}
00311680  00 00 51 e3                                      cmp r1, #0
00311684  08 d0 4d e2                                      sub sp, sp, #8
00311688  00 40 a0 e1                                      mov r4, r0
0031168c  0d 00 00 0a                                      beq #0x3116c8
00311690  10 00 51 e3                                      cmp r1, #0x10
00311694  09 00 00 9a                                      bls #0x3116c0
00311698  80 00 51 e3                                      cmp r1, #0x80
0031169c  04 10 8d e5                                      str r1, [sp, #4]
003116a0  0c 00 00 8a                                      bhi #0x3116d8
003116a4  04 00 8d e2                                      add r0, sp, #4
003116a8  04 de 0f eb                                      bl #0x708ec0
003116ac  04 30 9d e5                                      ldr r3, [sp, #4]
003116b0  14 00 84 e5                                      str r0, [r4, #0x14]
003116b4  10 00 84 e5                                      str r0, [r4, #0x10]
003116b8  03 00 80 e0                                      add r0, r0, r3
003116bc  00 00 84 e5                                      str r0, [r4]
003116c0  08 d0 8d e2                                      add sp, sp, #8
003116c4  10 80 bd e8                                      pop {r4, pc}
003116c8  14 00 9f e5                                      ldr r0, [pc, #0x14]
003116cc  00 00 8f e0                                      add r0, pc, r0
003116d0  da dd 0f eb                                      bl #0x708e40
003116d4  f9 ff ff ea                                      b #0x3116c0
003116d8  01 00 a0 e1                                      mov r0, r1
003116dc  5c fb ff eb                                      bl #0x310454
003116e0  f1 ff ff ea                                      b #0x3116ac
; mapping-symbol data/literal pool
003116e4  8c cd 5a 00                                      .byte 0x8c, 0xcd, 0x5a, 0x00

; FUNCTION 0x003139ac, declared_size=52, range_size=52, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE19_M_deallocate_blockEv
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_deallocate_block()
; decoder-mode: arm
003139ac  14 30 90 e5                                      ldr r3, [r0, #0x14]
003139b0  00 00 53 e1                                      cmp r3, r0
003139b4  1e ff 2f 01                                      bxeq lr
003139b8  00 00 53 e3                                      cmp r3, #0
003139bc  1e ff 2f 01                                      bxeq lr
003139c0  00 10 90 e5                                      ldr r1, [r0]
003139c4  01 10 63 e0                                      rsb r1, r3, r1
003139c8  80 00 51 e3                                      cmp r1, #0x80
003139cc  01 00 00 8a                                      bhi #0x3139d8
003139d0  03 00 a0 e1                                      mov r0, r3
003139d4  49 d5 0f ea                                      b #0x708f00
003139d8  03 00 a0 e1                                      mov r0, r3
003139dc  97 f2 ff ea                                      b #0x310440

; FUNCTION 0x0031a710, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj.clone.0
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_allocate_block(unsigned int) [clone .clone.0]
; decoder-mode: arm
0031a710  1e ff 2f e1                                      bx lr

; FUNCTION 0x00385bbc, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
00385bbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386e00, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
00386e00  1e ff 2f e1                                      bx lr

; FUNCTION 0x003da6bc, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj.clone.1
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_allocate_block(unsigned int) [clone .clone.1]
; decoder-mode: arm
003da6bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003dc964, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj.clone.1
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_allocate_block(unsigned int) [clone .clone.1]
; decoder-mode: arm
003dc964  1e ff 2f e1                                      bx lr

; FUNCTION 0x003dd248, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj.clone.1
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_allocate_block(unsigned int) [clone .clone.1]
; decoder-mode: arm
003dd248  1e ff 2f e1                                      bx lr

; FUNCTION 0x00433880, declared_size=312, range_size=312, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE7_M_swapERS2_
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_swap(std::priv::_String_base<char, std::allocator<char> >&)
; decoder-mode: arm
00433880  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00433884  24 61 9f e5                                      ldr r6, [pc, #0x124]
00433888  24 71 9f e5                                      ldr r7, [pc, #0x124]
0043388c  18 d0 4d e2                                      sub sp, sp, #0x18
00433890  06 60 8f e0                                      add r6, pc, r6
00433894  07 30 96 e7                                      ldr r3, [r6, r7]
00433898  00 50 a0 e1                                      mov r5, r0
0043389c  01 c0 a0 e1                                      mov ip, r1
004338a0  00 30 93 e5                                      ldr r3, [r3]
004338a4  14 30 8d e5                                      str r3, [sp, #0x14]
004338a8  14 40 90 e5                                      ldr r4, [r0, #0x14]
004338ac  14 30 91 e5                                      ldr r3, [r1, #0x14]
004338b0  03 00 00 ea                                      b #0x4338c4
004338b4  03 40 a0 e1                                      mov r4, r3
004338b8  05 30 a0 e1                                      mov r3, r5
004338bc  0c 50 a0 e1                                      mov r5, ip
004338c0  03 c0 a0 e1                                      mov ip, r3
004338c4  05 00 54 e1                                      cmp r4, r5
004338c8  1b 00 00 1a                                      bne #0x43393c
004338cc  03 00 5c e1                                      cmp ip, r3
004338d0  f7 ff ff 1a                                      bne #0x4338b4
004338d4  04 50 8d e2                                      add r5, sp, #4
004338d8  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
004338dc  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
004338e0  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
004338e4  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004338e8  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004338ec  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004338f0  10 00 9c e5                                      ldr r0, [ip, #0x10]
004338f4  14 30 94 e5                                      ldr r3, [r4, #0x14]
004338f8  10 20 94 e5                                      ldr r2, [r4, #0x10]
004338fc  14 10 9c e5                                      ldr r1, [ip, #0x14]
00433900  02 20 63 e0                                      rsb r2, r3, r2
00433904  00 10 61 e0                                      rsb r1, r1, r0
00433908  01 30 83 e0                                      add r3, r3, r1
0043390c  02 20 8c e0                                      add r2, ip, r2
00433910  10 30 84 e5                                      str r3, [r4, #0x10]
00433914  10 20 8c e5                                      str r2, [ip, #0x10]
00433918  14 40 84 e5                                      str r4, [r4, #0x14]
0043391c  14 c0 8c e5                                      str ip, [ip, #0x14]
00433920  07 30 96 e7                                      ldr r3, [r6, r7]
00433924  14 20 9d e5                                      ldr r2, [sp, #0x14]
00433928  00 30 93 e5                                      ldr r3, [r3]
0043392c  03 00 52 e1                                      cmp r2, r3
00433930  1d 00 00 1a                                      bne #0x4339ac
00433934  18 d0 8d e2                                      add sp, sp, #0x18
00433938  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0043393c  03 00 5c e1                                      cmp ip, r3
00433940  0c 00 00 0a                                      beq #0x433978
00433944  00 30 95 e5                                      ldr r3, [r5]
00433948  00 20 9c e5                                      ldr r2, [ip]
0043394c  00 20 85 e5                                      str r2, [r5]
00433950  00 30 8c e5                                      str r3, [ip]
00433954  14 30 95 e5                                      ldr r3, [r5, #0x14]
00433958  14 20 9c e5                                      ldr r2, [ip, #0x14]
0043395c  14 20 85 e5                                      str r2, [r5, #0x14]
00433960  14 30 8c e5                                      str r3, [ip, #0x14]
00433964  10 30 95 e5                                      ldr r3, [r5, #0x10]
00433968  10 20 9c e5                                      ldr r2, [ip, #0x10]
0043396c  10 20 85 e5                                      str r2, [r5, #0x10]
00433970  10 30 8c e5                                      str r3, [ip, #0x10]
00433974  e9 ff ff ea                                      b #0x433920
00433978  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0043397c  00 80 95 e5                                      ldr r8, [r5]
00433980  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00433984  14 50 85 e5                                      str r5, [r5, #0x14]
00433988  10 20 9c e5                                      ldr r2, [ip, #0x10]
0043398c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00433990  02 20 6c e0                                      rsb r2, ip, r2
00433994  02 20 85 e0                                      add r2, r5, r2
00433998  10 20 85 e5                                      str r2, [r5, #0x10]
0043399c  10 30 8c e5                                      str r3, [ip, #0x10]
004339a0  00 80 8c e5                                      str r8, [ip]
004339a4  14 40 8c e5                                      str r4, [ip, #0x14]
004339a8  dc ff ff ea                                      b #0x433920
004339ac  57 6a fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004339b0  00 12 56 00 ac 40 00 00                          .byte 0x00, 0x12, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0046be68, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj.clone.1
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_allocate_block(unsigned int) [clone .clone.1]
; decoder-mode: arm
0046be68  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080a53c, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj.clone.2
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_allocate_block(unsigned int) [clone .clone.2]
; decoder-mode: arm
0080a53c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00844904, declared_size=4, range_size=4, mode=arm
; class-group: std::priv::_String_base<char, std::allocator<char> >
; alias: _ZNSt4priv12_String_baseIcSaIcEE17_M_allocate_blockEj.clone.1
; demangled: std::priv::_String_base<char, std::allocator<char> >::_M_allocate_block(unsigned int) [clone .clone.1]
; decoder-mode: arm
00844904  1e ff 2f e1                                      bx lr
