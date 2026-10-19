; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b6718, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<glitch::io::SVertexStreamHeader, std::allocator<glitch::io::SVertexStreamHeader> >
; alias: _ZNSt6vectorIN6glitch2io19SVertexStreamHeaderESaIS2_EED1Ev
; demangled: std::vector<glitch::io::SVertexStreamHeader, std::allocator<glitch::io::SVertexStreamHeader> >::~vector()
; decoder-mode: arm
006b6718  10 40 2d e9                                      push {r4, lr}
006b671c  00 40 a0 e1                                      mov r4, r0
006b6720  00 00 90 e5                                      ldr r0, [r0]
006b6724  00 00 50 e3                                      cmp r0, #0
006b6728  0c 00 00 0a                                      beq #0x6b6760
006b672c  08 30 94 e5                                      ldr r3, [r4, #8]
006b6730  03 30 60 e0                                      rsb r3, r0, r3
006b6734  43 31 a0 e1                                      asr r3, r3, #2
006b6738  03 11 83 e0                                      add r1, r3, r3, lsl #2
006b673c  01 12 81 e0                                      add r1, r1, r1, lsl #4
006b6740  01 14 81 e0                                      add r1, r1, r1, lsl #8
006b6744  01 18 81 e0                                      add r1, r1, r1, lsl #16
006b6748  81 30 83 e0                                      add r3, r3, r1, lsl #1
006b674c  0c 10 a0 e3                                      mov r1, #0xc
006b6750  91 03 01 e0                                      mul r1, r1, r3
006b6754  80 00 51 e3                                      cmp r1, #0x80
006b6758  02 00 00 8a                                      bhi #0x6b6768
006b675c  e7 49 01 eb                                      bl #0x708f00
006b6760  04 00 a0 e1                                      mov r0, r4
006b6764  10 80 bd e8                                      pop {r4, pc}
006b6768  d0 5e f1 eb                                      bl #0x30e2b0
006b676c  04 00 a0 e1                                      mov r0, r4
006b6770  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006b6af8, declared_size=436, range_size=436, mode=arm
; class-group: std::vector<glitch::io::SVertexStreamHeader, std::allocator<glitch::io::SVertexStreamHeader> >
; alias: _ZNSt6vectorIN6glitch2io19SVertexStreamHeaderESaIS2_EE22_M_insert_overflow_auxEPS2_RKS2_RKSt12__false_typejb.clone.2
; demangled: std::vector<glitch::io::SVertexStreamHeader, std::allocator<glitch::io::SVertexStreamHeader> >::_M_insert_overflow_aux(glitch::io::SVertexStreamHeader*, glitch::io::SVertexStreamHeader const&, std::__false_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
006b6af8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006b6afc  00 40 a0 e1                                      mov r4, r0
006b6b00  01 10 90 e8                                      ldm r0, {r0, ip}
006b6b04  01 50 a0 e1                                      mov r5, r1
006b6b08  55 35 05 e3                                      movw r3, #0x5555
006b6b0c  0c 00 60 e0                                      rsb r0, r0, ip
006b6b10  40 01 a0 e1                                      asr r0, r0, #2
006b6b14  03 37 83 e1                                      orr r3, r3, r3, lsl #14
006b6b18  00 11 80 e0                                      add r1, r0, r0, lsl #2
006b6b1c  08 d0 4d e2                                      sub sp, sp, #8
006b6b20  01 12 81 e0                                      add r1, r1, r1, lsl #4
006b6b24  02 60 a0 e1                                      mov r6, r2
006b6b28  01 14 81 e0                                      add r1, r1, r1, lsl #8
006b6b2c  01 18 81 e0                                      add r1, r1, r1, lsl #16
006b6b30  81 00 80 e0                                      add r0, r0, r1, lsl #1
006b6b34  01 00 50 e3                                      cmp r0, #1
006b6b38  00 10 80 20                                      addhs r1, r0, r0
006b6b3c  01 10 80 32                                      addlo r1, r0, #1
006b6b40  03 00 51 e1                                      cmp r1, r3
006b6b44  53 00 00 8a                                      bhi #0x6b6c98
006b6b48  01 00 50 e1                                      cmp r0, r1
006b6b4c  51 00 00 8a                                      bhi #0x6b6c98
006b6b50  08 20 8d e2                                      add r2, sp, #8
006b6b54  04 10 22 e5                                      str r1, [r2, #-4]!
006b6b58  08 00 84 e2                                      add r0, r4, #8
006b6b5c  7a fc ff eb                                      bl #0x6b5d4c
006b6b60  00 c0 94 e5                                      ldr ip, [r4]
006b6b64  00 70 a0 e1                                      mov r7, r0
006b6b68  05 50 6c e0                                      rsb r5, ip, r5
006b6b6c  45 51 a0 e1                                      asr r5, r5, #2
006b6b70  05 31 85 e0                                      add r3, r5, r5, lsl #2
006b6b74  03 32 83 e0                                      add r3, r3, r3, lsl #4
006b6b78  03 34 83 e0                                      add r3, r3, r3, lsl #8
006b6b7c  03 38 83 e0                                      add r3, r3, r3, lsl #16
006b6b80  83 50 85 e0                                      add r5, r5, r3, lsl #1
006b6b84  00 00 55 e3                                      cmp r5, #0
006b6b88  00 30 a0 d1                                      movle r3, r0
006b6b8c  10 00 00 da                                      ble #0x6b6bd4
006b6b90  05 00 a0 e1                                      mov r0, r5
006b6b94  00 30 a0 e3                                      mov r3, #0
006b6b98  03 20 9c e7                                      ldr r2, [ip, r3]
006b6b9c  03 10 8c e0                                      add r1, ip, r3
006b6ba0  04 10 81 e2                                      add r1, r1, #4
006b6ba4  03 20 87 e7                                      str r2, [r7, r3]
006b6ba8  04 80 91 e4                                      ldr r8, [r1], #4
006b6bac  03 20 87 e0                                      add r2, r7, r3
006b6bb0  04 20 82 e2                                      add r2, r2, #4
006b6bb4  04 80 82 e4                                      str r8, [r2], #4
006b6bb8  00 10 91 e5                                      ldr r1, [r1]
006b6bbc  01 00 50 e2                                      subs r0, r0, #1
006b6bc0  0c 30 83 e2                                      add r3, r3, #0xc
006b6bc4  00 10 82 e5                                      str r1, [r2]
006b6bc8  f2 ff ff 1a                                      bne #0x6b6b98
006b6bcc  0c 30 a0 e3                                      mov r3, #0xc
006b6bd0  93 75 23 e0                                      mla r3, r3, r5, r7
006b6bd4  06 10 a0 e1                                      mov r1, r6
006b6bd8  04 00 91 e4                                      ldr r0, [r1], #4
006b6bdc  03 20 a0 e1                                      mov r2, r3
006b6be0  0c 50 83 e2                                      add r5, r3, #0xc
006b6be4  04 00 82 e4                                      str r0, [r2], #4
006b6be8  04 00 96 e5                                      ldr r0, [r6, #4]
006b6bec  04 00 83 e5                                      str r0, [r3, #4]
006b6bf0  04 30 91 e5                                      ldr r3, [r1, #4]
006b6bf4  04 30 82 e5                                      str r3, [r2, #4]
006b6bf8  09 00 94 e8                                      ldm r4, {r0, r3}
006b6bfc  00 00 53 e1                                      cmp r3, r0
006b6c00  0e 00 00 0a                                      beq #0x6b6c40
006b6c04  0c 20 43 e2                                      sub r2, r3, #0xc
006b6c08  02 20 60 e0                                      rsb r2, r0, r2
006b6c0c  22 21 a0 e1                                      lsr r2, r2, #2
006b6c10  02 11 82 e0                                      add r1, r2, r2, lsl #2
006b6c14  81 12 81 e0                                      add r1, r1, r1, lsl #5
006b6c18  81 10 82 e0                                      add r1, r2, r1, lsl #1
006b6c1c  81 12 81 e0                                      add r1, r1, r1, lsl #5
006b6c20  81 c7 a0 e1                                      lsl ip, r1, #0xf
006b6c24  0c 10 61 e0                                      rsb r1, r1, ip
006b6c28  81 20 82 e0                                      add r2, r2, r1, lsl #1
006b6c2c  03 21 c2 e3                                      bic r2, r2, #0xc0000000
006b6c30  0b 10 e0 e3                                      mvn r1, #0xb
006b6c34  91 02 02 e0                                      mul r2, r1, r2
006b6c38  01 20 82 e0                                      add r2, r2, r1
006b6c3c  02 30 83 e0                                      add r3, r3, r2
006b6c40  00 00 53 e3                                      cmp r3, #0
006b6c44  08 20 94 e5                                      ldr r2, [r4, #8]
006b6c48  0b 00 00 0a                                      beq #0x6b6c7c
006b6c4c  02 30 63 e0                                      rsb r3, r3, r2
006b6c50  43 31 a0 e1                                      asr r3, r3, #2
006b6c54  03 11 83 e0                                      add r1, r3, r3, lsl #2
006b6c58  01 12 81 e0                                      add r1, r1, r1, lsl #4
006b6c5c  01 14 81 e0                                      add r1, r1, r1, lsl #8
006b6c60  01 18 81 e0                                      add r1, r1, r1, lsl #16
006b6c64  81 30 83 e0                                      add r3, r3, r1, lsl #1
006b6c68  0c 10 a0 e3                                      mov r1, #0xc
006b6c6c  91 03 01 e0                                      mul r1, r1, r3
006b6c70  80 00 51 e3                                      cmp r1, #0x80
006b6c74  0a 00 00 8a                                      bhi #0x6b6ca4
006b6c78  a0 48 01 eb                                      bl #0x708f00
006b6c7c  04 30 9d e5                                      ldr r3, [sp, #4]
006b6c80  0c 20 a0 e3                                      mov r2, #0xc
006b6c84  00 70 84 e5                                      str r7, [r4]
006b6c88  92 73 27 e0                                      mla r7, r2, r3, r7
006b6c8c  a0 00 84 e9                                      stmib r4, {r5, r7}
006b6c90  08 d0 8d e2                                      add sp, sp, #8
006b6c94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006b6c98  55 15 05 e3                                      movw r1, #0x5555
006b6c9c  01 17 81 e1                                      orr r1, r1, r1, lsl #14
006b6ca0  aa ff ff ea                                      b #0x6b6b50
006b6ca4  81 5d f1 eb                                      bl #0x30e2b0
006b6ca8  f3 ff ff ea                                      b #0x6b6c7c
