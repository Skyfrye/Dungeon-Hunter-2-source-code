; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00485a0c, declared_size=40, range_size=40, mode=arm
; class-group: rnd::RoomPool
; alias: _ZN3rnd8RoomPoolD1Ev
; demangled: rnd::RoomPool::~RoomPool()
; decoder-mode: arm
00485a0c  10 40 2d e9                                      push {r4, lr}
00485a10  04 30 90 e5                                      ldr r3, [r0, #4]
00485a14  08 20 90 e5                                      ldr r2, [r0, #8]
00485a18  00 40 a0 e1                                      mov r4, r0
00485a1c  02 00 53 e1                                      cmp r3, r2
00485a20  08 30 80 15                                      strne r3, [r0, #8]
00485a24  04 00 80 e2                                      add r0, r0, #4
00485a28  e0 ff ff eb                                      bl #0x4859b0
00485a2c  04 00 a0 e1                                      mov r0, r4
00485a30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0048bc20, declared_size=116, range_size=116, mode=arm
; class-group: rnd::RoomPool
; alias: _ZN3rnd8RoomPool4FindEm
; demangled: rnd::RoomPool::Find(unsigned long)
; decoder-mode: arm
0048bc20  30 00 2d e9                                      push {r4, r5}
0048bc24  09 00 90 e9                                      ldmib r0, {r0, r3}
0048bc28  03 30 60 e0                                      rsb r3, r0, r3
0048bc2c  c3 21 a0 e1                                      asr r2, r3, #3
0048bc30  02 31 82 e0                                      add r3, r2, r2, lsl #2
0048bc34  03 32 83 e0                                      add r3, r3, r3, lsl #4
0048bc38  03 34 83 e0                                      add r3, r3, r3, lsl #8
0048bc3c  03 38 83 e0                                      add r3, r3, r3, lsl #16
0048bc40  83 30 92 e0                                      adds r3, r2, r3, lsl #1
0048bc44  0d 00 00 0a                                      beq #0x48bc80
0048bc48  04 20 90 e5                                      ldr r2, [r0, #4]
0048bc4c  01 00 52 e1                                      cmp r2, r1
0048bc50  18 c0 a0 13                                      movne ip, #0x18
0048bc54  00 20 a0 13                                      movne r2, #0
0048bc58  04 00 00 1a                                      bne #0x48bc70
0048bc5c  08 00 00 ea                                      b #0x48bc84
0048bc60  04 50 94 e5                                      ldr r5, [r4, #4]
0048bc64  18 c0 8c e2                                      add ip, ip, #0x18
0048bc68  01 00 55 e1                                      cmp r5, r1
0048bc6c  06 00 00 0a                                      beq #0x48bc8c
0048bc70  01 20 82 e2                                      add r2, r2, #1
0048bc74  03 00 52 e1                                      cmp r2, r3
0048bc78  0c 40 80 e0                                      add r4, r0, ip
0048bc7c  f7 ff ff 1a                                      bne #0x48bc60
0048bc80  00 00 a0 e3                                      mov r0, #0
0048bc84  30 00 bd e8                                      pop {r4, r5}
0048bc88  1e ff 2f e1                                      bx lr
0048bc8c  04 00 a0 e1                                      mov r0, r4
0048bc90  fb ff ff ea                                      b #0x48bc84

; FUNCTION 0x0048c3f8, declared_size=32, range_size=32, mode=arm
; class-group: rnd::RoomPool
; alias: _ZN3rnd8RoomPool4FindEPh
; demangled: rnd::RoomPool::Find(unsigned char*)
; decoder-mode: arm
0048c3f8  10 40 2d e9                                      push {r4, lr}
0048c3fc  00 40 a0 e1                                      mov r4, r0
0048c400  10 00 90 e5                                      ldr r0, [r0, #0x10]
0048c404  c2 dd ff eb                                      bl #0x483b14
0048c408  00 10 a0 e1                                      mov r1, r0
0048c40c  04 00 a0 e1                                      mov r0, r4
0048c410  10 40 bd e8                                      pop {r4, lr}
0048c414  01 fe ff ea                                      b #0x48bc20

; FUNCTION 0x0048cac0, declared_size=708, range_size=708, mode=arm
; class-group: rnd::RoomPool
; alias: _ZN3rnd8RoomPool11LoadFromXmlEP9TiXmlNode
; demangled: rnd::RoomPool::LoadFromXml(TiXmlNode*)
; decoder-mode: arm
0048cac0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048cac4  00 40 a0 e1                                      mov r4, r0
0048cac8  44 d0 4d e2                                      sub sp, sp, #0x44
0048cacc  00 30 91 e5                                      ldr r3, [r1]
0048cad0  01 00 a0 e1                                      mov r0, r1
0048cad4  01 50 a0 e1                                      mov r5, r1
0048cad8  0f e0 a0 e1                                      mov lr, pc
0048cadc  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0048cae0  00 00 50 e3                                      cmp r0, #0
0048cae4  04 00 00 0a                                      beq #0x48cafc
0048cae8  8c 12 9f e5                                      ldr r1, [pc, #0x28c]
0048caec  01 10 8f e0                                      add r1, pc, r1
0048caf0  5e 20 02 eb                                      bl #0x514c70
0048caf4  66 05 fa eb                                      bl #0x30e094
0048caf8  00 00 84 e5                                      str r0, [r4]
0048cafc  7c b2 9f e5                                      ldr fp, [pc, #0x27c]
0048cb00  05 00 a0 e1                                      mov r0, r5
0048cb04  0b b0 8f e0                                      add fp, pc, fp
0048cb08  0b 10 a0 e1                                      mov r1, fp
0048cb0c  a1 20 02 eb                                      bl #0x514d98
0048cb10  00 50 50 e2                                      subs r5, r0, #0
0048cb14  23 00 00 0a                                      beq #0x48cba8
0048cb18  aa 1a 0a e3                                      movw r1, #0xaaaa
0048cb1c  01 16 81 e1                                      orr r1, r1, r1, lsl #12
0048cb20  0c 20 84 e2                                      add r2, r4, #0xc
0048cb24  3c 30 8d e2                                      add r3, sp, #0x3c
0048cb28  04 10 8d e5                                      str r1, [sp, #4]
0048cb2c  10 20 8d e5                                      str r2, [sp, #0x10]
0048cb30  24 a0 8d e2                                      add sl, sp, #0x24
0048cb34  00 80 a0 e3                                      mov r8, #0
0048cb38  00 60 e0 e3                                      mvn r6, #0
0048cb3c  14 30 8d e5                                      str r3, [sp, #0x14]
0048cb40  0a 00 a0 e1                                      mov r0, sl
0048cb44  05 10 a0 e1                                      mov r1, r5
0048cb48  24 40 8d e5                                      str r4, [sp, #0x24]
0048cb4c  28 80 8d e5                                      str r8, [sp, #0x28]
0048cb50  2c 80 cd e5                                      strb r8, [sp, #0x2c]
0048cb54  30 60 8d e5                                      str r6, [sp, #0x30]
0048cb58  34 60 8d e5                                      str r6, [sp, #0x34]
0048cb5c  38 60 8d e5                                      str r6, [sp, #0x38]
0048cb60  49 fe ff eb                                      bl #0x48c48c
0048cb64  08 c0 94 e5                                      ldr ip, [r4, #8]
0048cb68  0c 70 94 e5                                      ldr r7, [r4, #0xc]
0048cb6c  07 00 5c e1                                      cmp ip, r7
0048cb70  0e 00 00 0a                                      beq #0x48cbb0
0048cb74  0a e0 a0 e1                                      mov lr, sl
0048cb78  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0048cb7c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0048cb80  03 00 9e e8                                      ldm lr, {r0, r1}
0048cb84  03 00 8c e8                                      stm ip, {r0, r1}
0048cb88  08 30 94 e5                                      ldr r3, [r4, #8]
0048cb8c  18 30 83 e2                                      add r3, r3, #0x18
0048cb90  08 30 84 e5                                      str r3, [r4, #8]
0048cb94  05 00 a0 e1                                      mov r0, r5
0048cb98  0b 10 a0 e1                                      mov r1, fp
0048cb9c  49 20 02 eb                                      bl #0x514cc8
0048cba0  00 50 50 e2                                      subs r5, r0, #0
0048cba4  e5 ff ff 1a                                      bne #0x48cb40
0048cba8  44 d0 8d e2                                      add sp, sp, #0x44
0048cbac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048cbb0  04 30 94 e5                                      ldr r3, [r4, #4]
0048cbb4  04 10 9d e5                                      ldr r1, [sp, #4]
0048cbb8  07 30 63 e0                                      rsb r3, r3, r7
0048cbbc  c3 31 a0 e1                                      asr r3, r3, #3
0048cbc0  03 21 83 e0                                      add r2, r3, r3, lsl #2
0048cbc4  02 22 82 e0                                      add r2, r2, r2, lsl #4
0048cbc8  02 24 82 e0                                      add r2, r2, r2, lsl #8
0048cbcc  02 28 82 e0                                      add r2, r2, r2, lsl #16
0048cbd0  82 20 83 e0                                      add r2, r3, r2, lsl #1
0048cbd4  01 00 52 e3                                      cmp r2, #1
0048cbd8  02 30 82 20                                      addhs r3, r2, r2
0048cbdc  01 30 82 32                                      addlo r3, r2, #1
0048cbe0  01 00 53 e1                                      cmp r3, r1
0048cbe4  58 00 00 9a                                      bls #0x48cd4c
0048cbe8  aa 3a 0a e3                                      movw r3, #0xaaaa
0048cbec  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0048cbf0  03 10 a0 e1                                      mov r1, r3
0048cbf4  10 00 9d e5                                      ldr r0, [sp, #0x10]
0048cbf8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0048cbfc  3c 30 8d e5                                      str r3, [sp, #0x3c]
0048cc00  7c ff ff eb                                      bl #0x48c9f8
0048cc04  08 00 8d e5                                      str r0, [sp, #8]
0048cc08  04 30 94 e5                                      ldr r3, [r4, #4]
0048cc0c  07 70 63 e0                                      rsb r7, r3, r7
0048cc10  c7 71 a0 e1                                      asr r7, r7, #3
0048cc14  07 e1 87 e0                                      add lr, r7, r7, lsl #2
0048cc18  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0048cc1c  0e e4 8e e0                                      add lr, lr, lr, lsl #8
0048cc20  0e e8 8e e0                                      add lr, lr, lr, lsl #16
0048cc24  8e e0 87 e0                                      add lr, r7, lr, lsl #1
0048cc28  00 00 5e e3                                      cmp lr, #0
0048cc2c  0c e0 8d e5                                      str lr, [sp, #0xc]
0048cc30  00 e0 a0 d1                                      movle lr, r0
0048cc34  14 00 00 da                                      ble #0x48cc8c
0048cc38  18 50 8d e5                                      str r5, [sp, #0x18]
0048cc3c  0c 90 9d e5                                      ldr sb, [sp, #0xc]
0048cc40  08 50 9d e5                                      ldr r5, [sp, #8]
0048cc44  1c 40 8d e5                                      str r4, [sp, #0x1c]
0048cc48  00 70 a0 e3                                      mov r7, #0
0048cc4c  03 40 a0 e1                                      mov r4, r3
0048cc50  07 c0 85 e0                                      add ip, r5, r7
0048cc54  07 e0 84 e0                                      add lr, r4, r7
0048cc58  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0048cc5c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0048cc60  03 00 9e e8                                      ldm lr, {r0, r1}
0048cc64  01 90 59 e2                                      subs sb, sb, #1
0048cc68  03 00 8c e8                                      stm ip, {r0, r1}
0048cc6c  18 70 87 e2                                      add r7, r7, #0x18
0048cc70  f6 ff ff 1a                                      bne #0x48cc50
0048cc74  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0048cc78  08 70 9d e5                                      ldr r7, [sp, #8]
0048cc7c  18 30 a0 e3                                      mov r3, #0x18
0048cc80  18 50 9d e5                                      ldr r5, [sp, #0x18]
0048cc84  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
0048cc88  93 72 2e e0                                      mla lr, r3, r2, r7
0048cc8c  0a c0 a0 e1                                      mov ip, sl
0048cc90  0e 70 a0 e1                                      mov r7, lr
0048cc94  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0048cc98  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
0048cc9c  03 00 9c e8                                      ldm ip, {r0, r1}
0048cca0  07 30 a0 e1                                      mov r3, r7
0048cca4  03 00 83 e8                                      stm r3, {r0, r1}
0048cca8  09 00 94 e9                                      ldmib r4, {r0, r3}
0048ccac  18 70 8e e2                                      add r7, lr, #0x18
0048ccb0  00 00 53 e1                                      cmp r3, r0
0048ccb4  0d 00 00 0a                                      beq #0x48ccf0
0048ccb8  18 20 43 e2                                      sub r2, r3, #0x18
0048ccbc  02 20 60 e0                                      rsb r2, r0, r2
0048ccc0  a2 21 a0 e1                                      lsr r2, r2, #3
0048ccc4  02 11 82 e0                                      add r1, r2, r2, lsl #2
0048ccc8  01 11 82 e0                                      add r1, r2, r1, lsl #2
0048cccc  01 13 81 e0                                      add r1, r1, r1, lsl #6
0048ccd0  01 11 82 e0                                      add r1, r2, r1, lsl #2
0048ccd4  01 17 81 e0                                      add r1, r1, r1, lsl #14
0048ccd8  81 20 82 e0                                      add r2, r2, r1, lsl #1
0048ccdc  0e 22 c2 e3                                      bic r2, r2, #0xe0000000
0048cce0  17 10 e0 e3                                      mvn r1, #0x17
0048cce4  91 02 02 e0                                      mul r2, r1, r2
0048cce8  01 20 82 e0                                      add r2, r2, r1
0048ccec  02 30 83 e0                                      add r3, r3, r2
0048ccf0  00 00 53 e3                                      cmp r3, #0
0048ccf4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0048ccf8  0b 00 00 0a                                      beq #0x48cd2c
0048ccfc  02 30 63 e0                                      rsb r3, r3, r2
0048cd00  c3 31 a0 e1                                      asr r3, r3, #3
0048cd04  18 20 a0 e3                                      mov r2, #0x18
0048cd08  03 11 83 e0                                      add r1, r3, r3, lsl #2
0048cd0c  01 12 81 e0                                      add r1, r1, r1, lsl #4
0048cd10  01 14 81 e0                                      add r1, r1, r1, lsl #8
0048cd14  01 18 81 e0                                      add r1, r1, r1, lsl #16
0048cd18  81 10 83 e0                                      add r1, r3, r1, lsl #1
0048cd1c  92 01 01 e0                                      mul r1, r2, r1
0048cd20  80 00 51 e3                                      cmp r1, #0x80
0048cd24  0b 00 00 8a                                      bhi #0x48cd58
0048cd28  74 f0 09 eb                                      bl #0x708f00
0048cd2c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0048cd30  08 10 9d e5                                      ldr r1, [sp, #8]
0048cd34  18 20 a0 e3                                      mov r2, #0x18
0048cd38  08 70 84 e5                                      str r7, [r4, #8]
0048cd3c  92 13 23 e0                                      mla r3, r2, r3, r1
0048cd40  04 10 84 e5                                      str r1, [r4, #4]
0048cd44  0c 30 84 e5                                      str r3, [r4, #0xc]
0048cd48  91 ff ff ea                                      b #0x48cb94
0048cd4c  03 00 52 e1                                      cmp r2, r3
0048cd50  a6 ff ff 9a                                      bls #0x48cbf0
0048cd54  a3 ff ff ea                                      b #0x48cbe8
0048cd58  b8 0d fa eb                                      bl #0x310440
0048cd5c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0048cd60  08 10 9d e5                                      ldr r1, [sp, #8]
0048cd64  18 20 a0 e3                                      mov r2, #0x18
0048cd68  08 70 84 e5                                      str r7, [r4, #8]
0048cd6c  92 13 23 e0                                      mla r3, r2, r3, r1
0048cd70  04 10 84 e5                                      str r1, [r4, #4]
0048cd74  0c 30 84 e5                                      str r3, [r4, #0xc]
0048cd78  85 ff ff ea                                      b #0x48cb94
; mapping-symbol data/literal pool
0048cd7c  e4 8b 43 00 0c 83 44 00                          .byte 0xe4, 0x8b, 0x43, 0x00, 0x0c, 0x83, 0x44, 0x00

; FUNCTION 0x004906bc, declared_size=172, range_size=172, mode=arm
; class-group: rnd::RoomPool
; alias: _ZN3rnd8RoomPool4FindESs
; demangled: rnd::RoomPool::Find(std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
004906bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004906c0  98 40 9f e5                                      ldr r4, [pc, #0x98]
004906c4  98 50 9f e5                                      ldr r5, [pc, #0x98]
004906c8  20 d0 4d e2                                      sub sp, sp, #0x20
004906cc  04 40 8f e0                                      add r4, pc, r4
004906d0  05 30 94 e7                                      ldr r3, [r4, r5]
004906d4  10 80 90 e5                                      ldr r8, [r0, #0x10]
004906d8  04 60 8d e2                                      add r6, sp, #4
004906dc  00 30 93 e5                                      ldr r3, [r3]
004906e0  00 70 a0 e1                                      mov r7, r0
004906e4  06 00 a0 e1                                      mov r0, r6
004906e8  1c 30 8d e5                                      str r3, [sp, #0x1c]
004906ec  89 6c fa eb                                      bl #0x32b918
004906f0  18 10 9d e5                                      ldr r1, [sp, #0x18]
004906f4  08 00 a0 e1                                      mov r0, r8
004906f8  05 cd ff eb                                      bl #0x483b14
004906fc  00 10 a0 e1                                      mov r1, r0
00490700  07 00 a0 e1                                      mov r0, r7
00490704  45 ed ff eb                                      bl #0x48bc20
00490708  00 70 a0 e1                                      mov r7, r0
0049070c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00490710  06 00 50 e1                                      cmp r0, r6
00490714  06 00 00 0a                                      beq #0x490734
00490718  00 00 50 e3                                      cmp r0, #0
0049071c  04 00 00 0a                                      beq #0x490734
00490720  04 10 9d e5                                      ldr r1, [sp, #4]
00490724  01 10 60 e0                                      rsb r1, r0, r1
00490728  80 00 51 e3                                      cmp r1, #0x80
0049072c  08 00 00 8a                                      bhi #0x490754
00490730  f2 e1 09 eb                                      bl #0x708f00
00490734  05 30 94 e7                                      ldr r3, [r4, r5]
00490738  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0049073c  07 00 a0 e1                                      mov r0, r7
00490740  00 30 93 e5                                      ldr r3, [r3]
00490744  03 00 52 e1                                      cmp r2, r3
00490748  03 00 00 1a                                      bne #0x49075c
0049074c  20 d0 8d e2                                      add sp, sp, #0x20
00490750  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00490754  39 ff f9 eb                                      bl #0x310440
00490758  f5 ff ff ea                                      b #0x490734
0049075c  eb f6 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00490760  c4 43 50 00 ac 40 00 00                          .byte 0xc4, 0x43, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00490904, declared_size=728, range_size=728, mode=arm
; class-group: rnd::RoomPool
; alias: _ZN3rnd8RoomPool18ComputeSizeOfRulesEv
; demangled: rnd::RoomPool::ComputeSizeOfRules()
; decoder-mode: arm
00490904  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00490908  00 50 a0 e1                                      mov r5, r0
0049090c  04 10 90 e5                                      ldr r1, [r0, #4]
00490910  08 00 90 e5                                      ldr r0, [r0, #8]
00490914  14 d0 4d e2                                      sub sp, sp, #0x14
00490918  00 30 61 e0                                      rsb r3, r1, r0
0049091c  c3 31 a0 e1                                      asr r3, r3, #3
00490920  03 71 83 e0                                      add r7, r3, r3, lsl #2
00490924  07 72 87 e0                                      add r7, r7, r7, lsl #4
00490928  07 74 87 e0                                      add r7, r7, r7, lsl #8
0049092c  07 78 87 e0                                      add r7, r7, r7, lsl #16
00490930  87 70 93 e0                                      adds r7, r3, r7, lsl #1
00490934  07 c0 a0 01                                      moveq ip, r7
00490938  0c 40 a0 01                                      moveq r4, ip
0049093c  0d 00 00 0a                                      beq #0x490978
00490940  00 20 a0 e3                                      mov r2, #0
00490944  02 30 a0 e1                                      mov r3, r2
00490948  02 c0 a0 e1                                      mov ip, r2
0049094c  02 40 a0 e1                                      mov r4, r2
00490950  18 80 a0 e3                                      mov r8, #0x18
00490954  98 12 22 e0                                      mla r2, r8, r2, r1
00490958  01 30 83 e2                                      add r3, r3, #1
0049095c  10 60 92 e5                                      ldr r6, [r2, #0x10]
00490960  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00490964  07 00 53 e1                                      cmp r3, r7
00490968  06 40 84 e0                                      add r4, r4, r6
0049096c  02 c0 8c e0                                      add ip, ip, r2
00490970  03 20 a0 e1                                      mov r2, r3
00490974  f6 ff ff 1a                                      bne #0x490954
00490978  00 60 95 e5                                      ldr r6, [r5]
0049097c  0c 00 56 e1                                      cmp r6, ip
00490980  60 00 00 ba                                      blt #0x490b08
00490984  04 00 56 e1                                      cmp r6, r4
00490988  5e 00 00 ca                                      bgt #0x490b08
0049098c  06 60 6c e0                                      rsb r6, ip, r6
00490990  00 00 56 e3                                      cmp r6, #0
00490994  8c 00 00 da                                      ble #0x490bcc
00490998  00 30 61 e0                                      rsb r3, r1, r0
0049099c  c3 31 a0 e1                                      asr r3, r3, #3
004909a0  00 40 a0 e3                                      mov r4, #0
004909a4  03 21 83 e0                                      add r2, r3, r3, lsl #2
004909a8  00 40 8d e5                                      str r4, [sp]
004909ac  02 22 82 e0                                      add r2, r2, r2, lsl #4
004909b0  04 40 8d e5                                      str r4, [sp, #4]
004909b4  02 24 82 e0                                      add r2, r2, r2, lsl #8
004909b8  08 40 8d e5                                      str r4, [sp, #8]
004909bc  02 28 82 e0                                      add r2, r2, r2, lsl #16
004909c0  82 30 83 e0                                      add r3, r3, r2, lsl #1
004909c4  04 00 53 e1                                      cmp r3, r4
004909c8  1d 00 00 0a                                      beq #0x490a44
004909cc  04 c0 a0 e1                                      mov ip, r4
004909d0  18 80 a0 e3                                      mov r8, #0x18
004909d4  08 a0 8d e2                                      add sl, sp, #8
004909d8  0c 90 8d e2                                      add sb, sp, #0xc
004909dc  98 1c 23 e0                                      mla r3, r8, ip, r1
004909e0  10 20 93 e5                                      ldr r2, [r3, #0x10]
004909e4  14 30 93 e5                                      ldr r3, [r3, #0x14]
004909e8  02 00 53 e1                                      cmp r3, r2
004909ec  09 00 00 aa                                      bge #0x490a18
004909f0  04 70 9d e5                                      ldr r7, [sp, #4]
004909f4  08 30 9d e5                                      ldr r3, [sp, #8]
004909f8  03 00 57 e1                                      cmp r7, r3
004909fc  47 00 00 0a                                      beq #0x490b20
00490a00  00 40 87 e5                                      str r4, [r7]
00490a04  04 30 9d e5                                      ldr r3, [sp, #4]
00490a08  04 10 95 e5                                      ldr r1, [r5, #4]
00490a0c  08 00 95 e5                                      ldr r0, [r5, #8]
00490a10  04 30 83 e2                                      add r3, r3, #4
00490a14  04 30 8d e5                                      str r3, [sp, #4]
00490a18  00 30 61 e0                                      rsb r3, r1, r0
00490a1c  c3 31 a0 e1                                      asr r3, r3, #3
00490a20  01 40 84 e2                                      add r4, r4, #1
00490a24  03 21 83 e0                                      add r2, r3, r3, lsl #2
00490a28  04 c0 a0 e1                                      mov ip, r4
00490a2c  02 22 82 e0                                      add r2, r2, r2, lsl #4
00490a30  02 24 82 e0                                      add r2, r2, r2, lsl #8
00490a34  02 28 82 e0                                      add r2, r2, r2, lsl #16
00490a38  82 30 83 e0                                      add r3, r3, r2, lsl #1
00490a3c  04 00 53 e1                                      cmp r3, r4
00490a40  e5 ff ff 8a                                      bhi #0x4909dc
00490a44  18 40 a0 e3                                      mov r4, #0x18
00490a48  01 00 00 ea                                      b #0x490a54
00490a4c  01 60 56 e2                                      subs r6, r6, #1
00490a50  21 00 00 0a                                      beq #0x490adc
00490a54  d3 f8 f9 eb                                      bl #0x30eda8
00490a58  00 70 9d e5                                      ldr r7, [sp]
00490a5c  04 10 9d e5                                      ldr r1, [sp, #4]
00490a60  01 10 67 e0                                      rsb r1, r7, r1
00490a64  41 11 a0 e1                                      asr r1, r1, #2
00490a68  2f f8 f9 eb                                      bl #0x30eb2c
00490a6c  04 30 95 e5                                      ldr r3, [r5, #4]
00490a70  01 21 97 e7                                      ldr r2, [r7, r1, lsl #2]
00490a74  94 32 23 e0                                      mla r3, r4, r2, r3
00490a78  14 20 93 e5                                      ldr r2, [r3, #0x14]
00490a7c  01 20 82 e2                                      add r2, r2, #1
00490a80  14 20 83 e5                                      str r2, [r3, #0x14]
00490a84  00 00 9d e5                                      ldr r0, [sp]
00490a88  04 30 95 e5                                      ldr r3, [r5, #4]
00490a8c  01 21 90 e7                                      ldr r2, [r0, r1, lsl #2]
00490a90  01 01 80 e0                                      add r0, r0, r1, lsl #2
00490a94  94 32 23 e0                                      mla r3, r4, r2, r3
00490a98  10 20 93 e5                                      ldr r2, [r3, #0x10]
00490a9c  14 30 93 e5                                      ldr r3, [r3, #0x14]
00490aa0  02 00 53 e1                                      cmp r3, r2
00490aa4  e8 ff ff 1a                                      bne #0x490a4c
00490aa8  04 30 9d e5                                      ldr r3, [sp, #4]
00490aac  04 10 80 e2                                      add r1, r0, #4
00490ab0  03 00 51 e1                                      cmp r1, r3
00490ab4  04 00 00 0a                                      beq #0x490acc
00490ab8  01 20 53 e0                                      subs r2, r3, r1
00490abc  03 10 a0 01                                      moveq r1, r3
00490ac0  01 00 00 0a                                      beq #0x490acc
00490ac4  1b f5 f9 eb                                      bl #0x30df38
00490ac8  04 10 9d e5                                      ldr r1, [sp, #4]
00490acc  04 10 41 e2                                      sub r1, r1, #4
00490ad0  01 60 56 e2                                      subs r6, r6, #1
00490ad4  04 10 8d e5                                      str r1, [sp, #4]
00490ad8  dd ff ff 1a                                      bne #0x490a54
00490adc  00 00 9d e5                                      ldr r0, [sp]
00490ae0  00 00 50 e3                                      cmp r0, #0
00490ae4  38 00 00 0a                                      beq #0x490bcc
00490ae8  08 10 9d e5                                      ldr r1, [sp, #8]
00490aec  01 10 60 e0                                      rsb r1, r0, r1
00490af0  03 10 c1 e3                                      bic r1, r1, #3
00490af4  80 00 51 e3                                      cmp r1, #0x80
00490af8  05 00 00 8a                                      bhi #0x490b14
00490afc  ff e0 09 eb                                      bl #0x708f00
00490b00  01 00 a0 e3                                      mov r0, #1
00490b04  00 00 00 ea                                      b #0x490b0c
00490b08  00 00 a0 e3                                      mov r0, #0
00490b0c  14 d0 8d e2                                      add sp, sp, #0x14
00490b10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00490b14  49 fe f9 eb                                      bl #0x310440
00490b18  01 00 a0 e3                                      mov r0, #1
00490b1c  fa ff ff ea                                      b #0x490b0c
00490b20  00 20 9d e5                                      ldr r2, [sp]
00490b24  07 20 62 e0                                      rsb r2, r2, r7
00490b28  42 21 a0 e1                                      asr r2, r2, #2
00490b2c  01 00 52 e3                                      cmp r2, #1
00490b30  02 30 82 20                                      addhs r3, r2, r2
00490b34  01 30 82 32                                      addlo r3, r2, #1
00490b38  07 01 73 e3                                      cmn r3, #0xc0000001
00490b3c  20 00 00 8a                                      bhi #0x490bc4
00490b40  03 00 52 e1                                      cmp r2, r3
00490b44  1e 00 00 8a                                      bhi #0x490bc4
00490b48  03 10 a0 e1                                      mov r1, r3
00490b4c  0a 00 a0 e1                                      mov r0, sl
00490b50  09 20 a0 e1                                      mov r2, sb
00490b54  0c 30 8d e5                                      str r3, [sp, #0xc]
00490b58  7f 3c fb eb                                      bl #0x35fd5c
00490b5c  00 10 9d e5                                      ldr r1, [sp]
00490b60  00 b0 a0 e1                                      mov fp, r0
00490b64  01 70 57 e0                                      subs r7, r7, r1
00490b68  00 70 a0 01                                      moveq r7, r0
00490b6c  02 00 00 0a                                      beq #0x490b7c
00490b70  07 20 a0 e1                                      mov r2, r7
00490b74  ef f4 f9 eb                                      bl #0x30df38
00490b78  07 70 80 e0                                      add r7, r0, r7
00490b7c  04 40 87 e4                                      str r4, [r7], #4
00490b80  00 00 9d e5                                      ldr r0, [sp]
00490b84  08 30 9d e5                                      ldr r3, [sp, #8]
00490b88  00 00 50 e3                                      cmp r0, #0
00490b8c  04 00 00 0a                                      beq #0x490ba4
00490b90  03 30 60 e0                                      rsb r3, r0, r3
00490b94  03 10 c3 e3                                      bic r1, r3, #3
00490b98  80 00 51 e3                                      cmp r1, #0x80
00490b9c  0c 00 00 8a                                      bhi #0x490bd4
00490ba0  d6 e0 09 eb                                      bl #0x708f00
00490ba4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00490ba8  04 10 95 e5                                      ldr r1, [r5, #4]
00490bac  08 00 95 e5                                      ldr r0, [r5, #8]
00490bb0  03 31 8b e0                                      add r3, fp, r3, lsl #2
00490bb4  00 b0 8d e5                                      str fp, [sp]
00490bb8  04 70 8d e5                                      str r7, [sp, #4]
00490bbc  08 30 8d e5                                      str r3, [sp, #8]
00490bc0  94 ff ff ea                                      b #0x490a18
00490bc4  03 31 e0 e3                                      mvn r3, #0xc0000000
00490bc8  de ff ff ea                                      b #0x490b48
00490bcc  01 00 a0 e3                                      mov r0, #1
00490bd0  cd ff ff ea                                      b #0x490b0c
00490bd4  19 fe f9 eb                                      bl #0x310440
00490bd8  f1 ff ff ea                                      b #0x490ba4
