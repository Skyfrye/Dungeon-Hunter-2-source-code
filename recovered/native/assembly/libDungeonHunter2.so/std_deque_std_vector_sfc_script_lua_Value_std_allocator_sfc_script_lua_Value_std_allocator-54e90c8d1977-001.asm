; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031bef0, declared_size=20, range_size=20, mode=arm
; class-group: std::deque<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >
; alias: _ZNSt5dequeIPSt6vectorIN3sfc6script3lua5ValueESaIS4_EESaIS7_EED1Ev
; demangled: std::deque<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >::~deque()
; decoder-mode: arm
0031bef0  10 40 2d e9                                      push {r4, lr}
0031bef4  00 40 a0 e1                                      mov r4, r0
0031bef8  db ff ff eb                                      bl #0x31be6c
0031befc  04 00 a0 e1                                      mov r0, r4
0031bf00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031cd00, declared_size=388, range_size=388, mode=arm
; class-group: std::deque<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >
; alias: _ZNSt5dequeIPSt6vectorIN3sfc6script3lua5ValueESaIS4_EESaIS7_EE18_M_push_back_aux_vERKS7_
; demangled: std::deque<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >::_M_push_back_aux_v(std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >* const&)
; decoder-mode: arm
0031cd00  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0031cd04  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
0031cd08  20 20 90 e5                                      ldr r2, [r0, #0x20]
0031cd0c  24 30 90 e5                                      ldr r3, [r0, #0x24]
0031cd10  01 50 a0 e1                                      mov r5, r1
0031cd14  0a 10 62 e0                                      rsb r1, r2, sl
0031cd18  41 11 43 e0                                      sub r1, r3, r1, asr #2
0031cd1c  01 00 51 e3                                      cmp r1, #1
0031cd20  00 40 a0 e1                                      mov r4, r0
0031cd24  0e 00 00 9a                                      bls #0x31cd64
0031cd28  24 00 84 e2                                      add r0, r4, #0x24
0031cd2c  24 fd ff eb                                      bl #0x31c1c4
0031cd30  04 00 8a e5                                      str r0, [sl, #4]
0031cd34  00 20 95 e5                                      ldr r2, [r5]
0031cd38  10 30 94 e5                                      ldr r3, [r4, #0x10]
0031cd3c  00 20 83 e5                                      str r2, [r3]
0031cd40  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0031cd44  04 20 83 e2                                      add r2, r3, #4
0031cd48  1c 20 84 e5                                      str r2, [r4, #0x1c]
0031cd4c  04 30 93 e5                                      ldr r3, [r3, #4]
0031cd50  80 20 83 e2                                      add r2, r3, #0x80
0031cd54  10 30 84 e5                                      str r3, [r4, #0x10]
0031cd58  18 20 84 e5                                      str r2, [r4, #0x18]
0031cd5c  14 30 84 e5                                      str r3, [r4, #0x14]
0031cd60  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0031cd64  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0031cd68  0a 70 61 e0                                      rsb r7, r1, sl
0031cd6c  47 71 a0 e1                                      asr r7, r7, #2
0031cd70  01 70 87 e2                                      add r7, r7, #1
0031cd74  01 90 87 e2                                      add sb, r7, #1
0031cd78  89 00 53 e1                                      cmp r3, sb, lsl #1
0031cd7c  0a 00 00 9a                                      bls #0x31cdac
0031cd80  03 60 69 e0                                      rsb r6, sb, r3
0031cd84  a6 60 a0 e1                                      lsr r6, r6, #1
0031cd88  06 61 82 e0                                      add r6, r2, r6, lsl #2
0031cd8c  06 00 51 e1                                      cmp r1, r6
0031cd90  2e 00 00 9a                                      bls #0x31ce50
0031cd94  04 20 8a e2                                      add r2, sl, #4
0031cd98  01 20 52 e0                                      subs r2, r2, r1
0031cd9c  1e 00 00 0a                                      beq #0x31ce1c
0031cda0  06 00 a0 e1                                      mov r0, r6
0031cda4  63 c4 ff eb                                      bl #0x30df38
0031cda8  1b 00 00 ea                                      b #0x31ce1c
0031cdac  00 00 53 e3                                      cmp r3, #0
0031cdb0  03 20 a0 11                                      movne r2, r3
0031cdb4  01 20 a0 03                                      moveq r2, #1
0031cdb8  02 80 83 e2                                      add r8, r3, #2
0031cdbc  02 80 88 e0                                      add r8, r8, r2
0031cdc0  08 10 a0 e1                                      mov r1, r8
0031cdc4  00 20 a0 e3                                      mov r2, #0
0031cdc8  20 00 80 e2                                      add r0, r0, #0x20
0031cdcc  eb fb ff eb                                      bl #0x31bd80
0031cdd0  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0031cdd4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0031cdd8  08 60 69 e0                                      rsb r6, sb, r8
0031cddc  a6 60 a0 e1                                      lsr r6, r6, #1
0031cde0  04 20 82 e2                                      add r2, r2, #4
0031cde4  01 20 52 e0                                      subs r2, r2, r1
0031cde8  00 a0 a0 e1                                      mov sl, r0
0031cdec  06 61 80 e0                                      add r6, r0, r6, lsl #2
0031cdf0  20 00 00 1a                                      bne #0x31ce78
0031cdf4  20 00 94 e5                                      ldr r0, [r4, #0x20]
0031cdf8  24 10 94 e5                                      ldr r1, [r4, #0x24]
0031cdfc  00 00 50 e3                                      cmp r0, #0
0031ce00  03 00 00 0a                                      beq #0x31ce14
0031ce04  01 11 a0 e1                                      lsl r1, r1, #2
0031ce08  80 00 51 e3                                      cmp r1, #0x80
0031ce0c  17 00 00 8a                                      bhi #0x31ce70
0031ce10  3a b0 0f eb                                      bl #0x708f00
0031ce14  20 a0 84 e5                                      str sl, [r4, #0x20]
0031ce18  24 80 84 e5                                      str r8, [r4, #0x24]
0031ce1c  0c 60 84 e5                                      str r6, [r4, #0xc]
0031ce20  00 30 96 e5                                      ldr r3, [r6]
0031ce24  01 70 47 e2                                      sub r7, r7, #1
0031ce28  07 a1 86 e0                                      add sl, r6, r7, lsl #2
0031ce2c  80 20 83 e2                                      add r2, r3, #0x80
0031ce30  08 20 84 e5                                      str r2, [r4, #8]
0031ce34  04 30 84 e5                                      str r3, [r4, #4]
0031ce38  1c a0 84 e5                                      str sl, [r4, #0x1c]
0031ce3c  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
0031ce40  80 20 83 e2                                      add r2, r3, #0x80
0031ce44  18 20 84 e5                                      str r2, [r4, #0x18]
0031ce48  14 30 84 e5                                      str r3, [r4, #0x14]
0031ce4c  b5 ff ff ea                                      b #0x31cd28
0031ce50  04 20 8a e2                                      add r2, sl, #4
0031ce54  02 20 61 e0                                      rsb r2, r1, r2
0031ce58  00 00 52 e3                                      cmp r2, #0
0031ce5c  ee ff ff da                                      ble #0x31ce1c
0031ce60  07 01 86 e0                                      add r0, r6, r7, lsl #2
0031ce64  00 00 62 e0                                      rsb r0, r2, r0
0031ce68  32 c4 ff eb                                      bl #0x30df38
0031ce6c  ea ff ff ea                                      b #0x31ce1c
0031ce70  72 cd ff eb                                      bl #0x310440
0031ce74  e6 ff ff ea                                      b #0x31ce14
0031ce78  06 00 a0 e1                                      mov r0, r6
0031ce7c  2d c4 ff eb                                      bl #0x30df38
0031ce80  db ff ff ea                                      b #0x31cdf4
