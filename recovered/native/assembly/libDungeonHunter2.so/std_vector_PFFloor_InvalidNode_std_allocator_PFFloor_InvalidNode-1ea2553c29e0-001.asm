; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051be10, declared_size=216, range_size=216, mode=arm
; class-group: std::vector<PFFloor::InvalidNode, std::allocator<PFFloor::InvalidNode> >
; alias: _ZNSt6vectorIN7PFFloor11InvalidNodeESaIS1_EE8_M_eraseEPS1_S4_RKSt12__false_type
; demangled: std::vector<PFFloor::InvalidNode, std::allocator<PFFloor::InvalidNode> >::_M_erase(PFFloor::InvalidNode*, PFFloor::InvalidNode*, std::__false_type const&)
; decoder-mode: arm
0051be10  30 00 2d e9                                      push {r4, r5}
0051be14  04 c0 90 e5                                      ldr ip, [r0, #4]
0051be18  00 30 a0 e1                                      mov r3, r0
0051be1c  0c c0 62 e0                                      rsb ip, r2, ip
0051be20  cc c1 a0 e1                                      asr ip, ip, #3
0051be24  8c 01 8c e0                                      add r0, ip, ip, lsl #3
0051be28  00 03 80 e0                                      add r0, r0, r0, lsl #6
0051be2c  80 01 8c e0                                      add r0, ip, r0, lsl #3
0051be30  80 07 80 e0                                      add r0, r0, r0, lsl #15
0051be34  80 01 8c e0                                      add r0, ip, r0, lsl #3
0051be38  00 00 60 e2                                      rsb r0, r0, #0
0051be3c  00 00 50 e3                                      cmp r0, #0
0051be40  01 00 a0 d1                                      movle r0, r1
0051be44  23 00 00 da                                      ble #0x51bed8
0051be48  00 40 a0 e1                                      mov r4, r0
0051be4c  01 c0 a0 e1                                      mov ip, r1
0051be50  00 50 92 e5                                      ldr r5, [r2]
0051be54  01 40 54 e2                                      subs r4, r4, #1
0051be58  00 50 8c e5                                      str r5, [ip]
0051be5c  04 50 92 e5                                      ldr r5, [r2, #4]
0051be60  04 50 8c e5                                      str r5, [ip, #4]
0051be64  08 50 92 e5                                      ldr r5, [r2, #8]
0051be68  08 50 8c e5                                      str r5, [ip, #8]
0051be6c  0c 50 92 e5                                      ldr r5, [r2, #0xc]
0051be70  0c 50 8c e5                                      str r5, [ip, #0xc]
0051be74  10 50 92 e5                                      ldr r5, [r2, #0x10]
0051be78  10 50 8c e5                                      str r5, [ip, #0x10]
0051be7c  14 50 92 e5                                      ldr r5, [r2, #0x14]
0051be80  14 50 8c e5                                      str r5, [ip, #0x14]
0051be84  18 50 92 e5                                      ldr r5, [r2, #0x18]
0051be88  18 50 8c e5                                      str r5, [ip, #0x18]
0051be8c  1c 50 92 e5                                      ldr r5, [r2, #0x1c]
0051be90  1c 50 8c e5                                      str r5, [ip, #0x1c]
0051be94  20 50 92 e5                                      ldr r5, [r2, #0x20]
0051be98  20 50 8c e5                                      str r5, [ip, #0x20]
0051be9c  24 50 92 e5                                      ldr r5, [r2, #0x24]
0051bea0  24 50 8c e5                                      str r5, [ip, #0x24]
0051bea4  28 50 92 e5                                      ldr r5, [r2, #0x28]
0051bea8  28 50 8c e5                                      str r5, [ip, #0x28]
0051beac  2c 50 92 e5                                      ldr r5, [r2, #0x2c]
0051beb0  2c 50 8c e5                                      str r5, [ip, #0x2c]
0051beb4  30 50 92 e5                                      ldr r5, [r2, #0x30]
0051beb8  30 50 8c e5                                      str r5, [ip, #0x30]
0051bebc  34 50 92 e5                                      ldr r5, [r2, #0x34]
0051bec0  38 20 82 e2                                      add r2, r2, #0x38
0051bec4  34 50 8c e5                                      str r5, [ip, #0x34]
0051bec8  38 c0 8c e2                                      add ip, ip, #0x38
0051becc  df ff ff 1a                                      bne #0x51be50
0051bed0  38 20 a0 e3                                      mov r2, #0x38
0051bed4  92 10 20 e0                                      mla r0, r2, r0, r1
0051bed8  04 00 83 e5                                      str r0, [r3, #4]
0051bedc  01 00 a0 e1                                      mov r0, r1
0051bee0  30 00 bd e8                                      pop {r4, r5}
0051bee4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051c66c, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<PFFloor::InvalidNode, std::allocator<PFFloor::InvalidNode> >
; alias: _ZNSt6vectorIN7PFFloor11InvalidNodeESaIS1_EED1Ev
; demangled: std::vector<PFFloor::InvalidNode, std::allocator<PFFloor::InvalidNode> >::~vector()
; decoder-mode: arm
0051c66c  10 40 2d e9                                      push {r4, lr}
0051c670  00 40 a0 e1                                      mov r4, r0
0051c674  00 00 90 e5                                      ldr r0, [r0]
0051c678  00 00 50 e3                                      cmp r0, #0
0051c67c  0d 00 00 0a                                      beq #0x51c6b8
0051c680  08 30 94 e5                                      ldr r3, [r4, #8]
0051c684  38 10 a0 e3                                      mov r1, #0x38
0051c688  03 30 60 e0                                      rsb r3, r0, r3
0051c68c  c3 31 a0 e1                                      asr r3, r3, #3
0051c690  83 21 83 e0                                      add r2, r3, r3, lsl #3
0051c694  02 23 82 e0                                      add r2, r2, r2, lsl #6
0051c698  82 21 83 e0                                      add r2, r3, r2, lsl #3
0051c69c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0051c6a0  82 31 83 e0                                      add r3, r3, r2, lsl #3
0051c6a4  00 30 63 e2                                      rsb r3, r3, #0
0051c6a8  91 03 01 e0                                      mul r1, r1, r3
0051c6ac  80 00 51 e3                                      cmp r1, #0x80
0051c6b0  02 00 00 8a                                      bhi #0x51c6c0
0051c6b4  11 b2 07 eb                                      bl #0x708f00
0051c6b8  04 00 a0 e1                                      mov r0, r4
0051c6bc  10 80 bd e8                                      pop {r4, pc}
0051c6c0  5e cf f7 eb                                      bl #0x310440
0051c6c4  04 00 a0 e1                                      mov r0, r4
0051c6c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0051c9d0, declared_size=724, range_size=724, mode=arm
; class-group: std::vector<PFFloor::InvalidNode, std::allocator<PFFloor::InvalidNode> >
; alias: _ZNSt6vectorIN7PFFloor11InvalidNodeESaIS1_EE9push_backERKS1_
; demangled: std::vector<PFFloor::InvalidNode, std::allocator<PFFloor::InvalidNode> >::push_back(PFFloor::InvalidNode const&)
; decoder-mode: arm
0051c9d0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0051c9d4  48 00 90 e9                                      ldmib r0, {r3, r6}
0051c9d8  0c d0 4d e2                                      sub sp, sp, #0xc
0051c9dc  00 50 a0 e1                                      mov r5, r0
0051c9e0  06 00 53 e1                                      cmp r3, r6
0051c9e4  01 40 a0 e1                                      mov r4, r1
0051c9e8  20 00 00 0a                                      beq #0x51ca70
0051c9ec  00 20 91 e5                                      ldr r2, [r1]
0051c9f0  00 20 83 e5                                      str r2, [r3]
0051c9f4  04 20 91 e5                                      ldr r2, [r1, #4]
0051c9f8  04 20 83 e5                                      str r2, [r3, #4]
0051c9fc  08 20 91 e5                                      ldr r2, [r1, #8]
0051ca00  08 20 83 e5                                      str r2, [r3, #8]
0051ca04  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0051ca08  0c 20 83 e5                                      str r2, [r3, #0xc]
0051ca0c  10 20 91 e5                                      ldr r2, [r1, #0x10]
0051ca10  10 20 83 e5                                      str r2, [r3, #0x10]
0051ca14  14 20 91 e5                                      ldr r2, [r1, #0x14]
0051ca18  14 20 83 e5                                      str r2, [r3, #0x14]
0051ca1c  18 20 91 e5                                      ldr r2, [r1, #0x18]
0051ca20  18 20 83 e5                                      str r2, [r3, #0x18]
0051ca24  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
0051ca28  1c 20 83 e5                                      str r2, [r3, #0x1c]
0051ca2c  20 20 91 e5                                      ldr r2, [r1, #0x20]
0051ca30  20 20 83 e5                                      str r2, [r3, #0x20]
0051ca34  24 20 91 e5                                      ldr r2, [r1, #0x24]
0051ca38  24 20 83 e5                                      str r2, [r3, #0x24]
0051ca3c  28 20 91 e5                                      ldr r2, [r1, #0x28]
0051ca40  28 20 83 e5                                      str r2, [r3, #0x28]
0051ca44  2c 20 91 e5                                      ldr r2, [r1, #0x2c]
0051ca48  2c 20 83 e5                                      str r2, [r3, #0x2c]
0051ca4c  30 20 91 e5                                      ldr r2, [r1, #0x30]
0051ca50  30 20 83 e5                                      str r2, [r3, #0x30]
0051ca54  34 20 91 e5                                      ldr r2, [r1, #0x34]
0051ca58  34 20 83 e5                                      str r2, [r3, #0x34]
0051ca5c  04 30 90 e5                                      ldr r3, [r0, #4]
0051ca60  38 30 83 e2                                      add r3, r3, #0x38
0051ca64  04 30 80 e5                                      str r3, [r0, #4]
0051ca68  0c d0 8d e2                                      add sp, sp, #0xc
0051ca6c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0051ca70  00 20 90 e5                                      ldr r2, [r0]
0051ca74  24 39 04 e3                                      movw r3, #0x4924
0051ca78  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0051ca7c  06 20 62 e0                                      rsb r2, r2, r6
0051ca80  c2 21 a0 e1                                      asr r2, r2, #3
0051ca84  82 11 82 e0                                      add r1, r2, r2, lsl #3
0051ca88  01 13 81 e0                                      add r1, r1, r1, lsl #6
0051ca8c  81 11 82 e0                                      add r1, r2, r1, lsl #3
0051ca90  81 17 81 e0                                      add r1, r1, r1, lsl #15
0051ca94  81 21 82 e0                                      add r2, r2, r1, lsl #3
0051ca98  00 20 62 e2                                      rsb r2, r2, #0
0051ca9c  01 00 52 e3                                      cmp r2, #1
0051caa0  02 10 82 20                                      addhs r1, r2, r2
0051caa4  01 10 82 32                                      addlo r1, r2, #1
0051caa8  03 00 51 e1                                      cmp r1, r3
0051caac  77 00 00 9a                                      bls #0x51cc90
0051cab0  24 19 04 e3                                      movw r1, #0x4924
0051cab4  01 16 81 e1                                      orr r1, r1, r1, lsl #12
0051cab8  08 20 8d e2                                      add r2, sp, #8
0051cabc  04 10 22 e5                                      str r1, [r2, #-4]!
0051cac0  08 00 85 e2                                      add r0, r5, #8
0051cac4  00 ff ff eb                                      bl #0x51c6cc
0051cac8  00 30 95 e5                                      ldr r3, [r5]
0051cacc  00 70 a0 e1                                      mov r7, r0
0051cad0  06 60 63 e0                                      rsb r6, r3, r6
0051cad4  c6 61 a0 e1                                      asr r6, r6, #3
0051cad8  86 c1 86 e0                                      add ip, r6, r6, lsl #3
0051cadc  0c c3 8c e0                                      add ip, ip, ip, lsl #6
0051cae0  8c c1 86 e0                                      add ip, r6, ip, lsl #3
0051cae4  8c c7 8c e0                                      add ip, ip, ip, lsl #15
0051cae8  8c c1 86 e0                                      add ip, r6, ip, lsl #3
0051caec  00 c0 6c e2                                      rsb ip, ip, #0
0051caf0  00 00 5c e3                                      cmp ip, #0
0051caf4  00 c0 a0 d1                                      movle ip, r0
0051caf8  23 00 00 da                                      ble #0x51cb8c
0051cafc  0c 10 a0 e1                                      mov r1, ip
0051cb00  00 20 a0 e1                                      mov r2, r0
0051cb04  00 00 93 e5                                      ldr r0, [r3]
0051cb08  01 10 51 e2                                      subs r1, r1, #1
0051cb0c  00 00 82 e5                                      str r0, [r2]
0051cb10  04 00 93 e5                                      ldr r0, [r3, #4]
0051cb14  04 00 82 e5                                      str r0, [r2, #4]
0051cb18  08 00 93 e5                                      ldr r0, [r3, #8]
0051cb1c  08 00 82 e5                                      str r0, [r2, #8]
0051cb20  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0051cb24  0c 00 82 e5                                      str r0, [r2, #0xc]
0051cb28  10 00 93 e5                                      ldr r0, [r3, #0x10]
0051cb2c  10 00 82 e5                                      str r0, [r2, #0x10]
0051cb30  14 00 93 e5                                      ldr r0, [r3, #0x14]
0051cb34  14 00 82 e5                                      str r0, [r2, #0x14]
0051cb38  18 00 93 e5                                      ldr r0, [r3, #0x18]
0051cb3c  18 00 82 e5                                      str r0, [r2, #0x18]
0051cb40  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0051cb44  1c 00 82 e5                                      str r0, [r2, #0x1c]
0051cb48  20 00 93 e5                                      ldr r0, [r3, #0x20]
0051cb4c  20 00 82 e5                                      str r0, [r2, #0x20]
0051cb50  24 00 93 e5                                      ldr r0, [r3, #0x24]
0051cb54  24 00 82 e5                                      str r0, [r2, #0x24]
0051cb58  28 00 93 e5                                      ldr r0, [r3, #0x28]
0051cb5c  28 00 82 e5                                      str r0, [r2, #0x28]
0051cb60  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0051cb64  2c 00 82 e5                                      str r0, [r2, #0x2c]
0051cb68  30 00 93 e5                                      ldr r0, [r3, #0x30]
0051cb6c  30 00 82 e5                                      str r0, [r2, #0x30]
0051cb70  34 00 93 e5                                      ldr r0, [r3, #0x34]
0051cb74  38 30 83 e2                                      add r3, r3, #0x38
0051cb78  34 00 82 e5                                      str r0, [r2, #0x34]
0051cb7c  38 20 82 e2                                      add r2, r2, #0x38
0051cb80  df ff ff 1a                                      bne #0x51cb04
0051cb84  38 30 a0 e3                                      mov r3, #0x38
0051cb88  93 7c 2c e0                                      mla ip, r3, ip, r7
0051cb8c  00 30 94 e5                                      ldr r3, [r4]
0051cb90  38 60 8c e2                                      add r6, ip, #0x38
0051cb94  00 30 8c e5                                      str r3, [ip]
0051cb98  04 30 94 e5                                      ldr r3, [r4, #4]
0051cb9c  04 30 8c e5                                      str r3, [ip, #4]
0051cba0  08 30 94 e5                                      ldr r3, [r4, #8]
0051cba4  08 30 8c e5                                      str r3, [ip, #8]
0051cba8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0051cbac  0c 30 8c e5                                      str r3, [ip, #0xc]
0051cbb0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0051cbb4  10 30 8c e5                                      str r3, [ip, #0x10]
0051cbb8  14 30 94 e5                                      ldr r3, [r4, #0x14]
0051cbbc  14 30 8c e5                                      str r3, [ip, #0x14]
0051cbc0  18 30 94 e5                                      ldr r3, [r4, #0x18]
0051cbc4  18 30 8c e5                                      str r3, [ip, #0x18]
0051cbc8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0051cbcc  1c 30 8c e5                                      str r3, [ip, #0x1c]
0051cbd0  20 30 94 e5                                      ldr r3, [r4, #0x20]
0051cbd4  20 30 8c e5                                      str r3, [ip, #0x20]
0051cbd8  24 30 94 e5                                      ldr r3, [r4, #0x24]
0051cbdc  24 30 8c e5                                      str r3, [ip, #0x24]
0051cbe0  28 30 94 e5                                      ldr r3, [r4, #0x28]
0051cbe4  28 30 8c e5                                      str r3, [ip, #0x28]
0051cbe8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0051cbec  2c 30 8c e5                                      str r3, [ip, #0x2c]
0051cbf0  30 30 94 e5                                      ldr r3, [r4, #0x30]
0051cbf4  30 30 8c e5                                      str r3, [ip, #0x30]
0051cbf8  34 30 94 e5                                      ldr r3, [r4, #0x34]
0051cbfc  34 30 8c e5                                      str r3, [ip, #0x34]
0051cc00  09 00 95 e8                                      ldm r5, {r0, r3}
0051cc04  00 00 53 e1                                      cmp r3, r0
0051cc08  0a 00 00 0a                                      beq #0x51cc38
0051cc0c  38 10 43 e2                                      sub r1, r3, #0x38
0051cc10  01 10 60 e0                                      rsb r1, r0, r1
0051cc14  b7 2d 06 e3                                      movw r2, #0x6db7
0051cc18  a1 11 a0 e1                                      lsr r1, r1, #3
0051cc1c  db 26 41 e3                                      movt r2, #0x16db
0051cc20  92 01 02 e0                                      mul r2, r2, r1
0051cc24  37 10 e0 e3                                      mvn r1, #0x37
0051cc28  0e 22 c2 e3                                      bic r2, r2, #0xe0000000
0051cc2c  91 02 02 e0                                      mul r2, r1, r2
0051cc30  01 20 82 e0                                      add r2, r2, r1
0051cc34  02 30 83 e0                                      add r3, r3, r2
0051cc38  00 00 53 e3                                      cmp r3, #0
0051cc3c  08 20 95 e5                                      ldr r2, [r5, #8]
0051cc40  0c 00 00 0a                                      beq #0x51cc78
0051cc44  02 30 63 e0                                      rsb r3, r3, r2
0051cc48  c3 31 a0 e1                                      asr r3, r3, #3
0051cc4c  38 10 a0 e3                                      mov r1, #0x38
0051cc50  83 21 83 e0                                      add r2, r3, r3, lsl #3
0051cc54  02 23 82 e0                                      add r2, r2, r2, lsl #6
0051cc58  82 21 83 e0                                      add r2, r3, r2, lsl #3
0051cc5c  82 27 82 e0                                      add r2, r2, r2, lsl #15
0051cc60  82 31 83 e0                                      add r3, r3, r2, lsl #3
0051cc64  00 30 63 e2                                      rsb r3, r3, #0
0051cc68  91 03 01 e0                                      mul r1, r1, r3
0051cc6c  80 00 51 e3                                      cmp r1, #0x80
0051cc70  09 00 00 8a                                      bhi #0x51cc9c
0051cc74  a1 b0 07 eb                                      bl #0x708f00
0051cc78  04 30 9d e5                                      ldr r3, [sp, #4]
0051cc7c  38 20 a0 e3                                      mov r2, #0x38
0051cc80  00 70 85 e5                                      str r7, [r5]
0051cc84  92 73 27 e0                                      mla r7, r2, r3, r7
0051cc88  c0 00 85 e9                                      stmib r5, {r6, r7}
0051cc8c  75 ff ff ea                                      b #0x51ca68
0051cc90  01 00 52 e1                                      cmp r2, r1
0051cc94  87 ff ff 9a                                      bls #0x51cab8
0051cc98  84 ff ff ea                                      b #0x51cab0
0051cc9c  e7 cd f7 eb                                      bl #0x310440
0051cca0  f4 ff ff ea                                      b #0x51cc78
