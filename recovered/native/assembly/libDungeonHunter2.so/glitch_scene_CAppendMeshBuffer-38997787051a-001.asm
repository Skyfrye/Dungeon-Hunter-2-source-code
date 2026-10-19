; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0058c2c4, declared_size=132, range_size=132, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZNK6glitch5scene17CAppendMeshBuffer14copyVertexDataEPv
; demangled: glitch::scene::CAppendMeshBuffer::copyVertexData(void*) const
; decoder-mode: arm
0058c2c4  70 40 2d e9                                      push {r4, r5, r6, lr}
0058c2c8  00 40 a0 e1                                      mov r4, r0
0058c2cc  01 50 a0 e1                                      mov r5, r1
0058c2d0  58 00 90 e5                                      ldr r0, [r0, #0x58]
0058c2d4  01 10 a0 e3                                      mov r1, #1
0058c2d8  ff 55 00 eb                                      bl #0x5a1adc
0058c2dc  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0058c2e0  00 10 a0 e1                                      mov r1, r0
0058c2e4  05 00 a0 e1                                      mov r0, r5
0058c2e8  5e 09 f6 eb                                      bl #0x30e868
0058c2ec  58 40 94 e5                                      ldr r4, [r4, #0x58]
0058c2f0  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0058c2f4  1f 20 03 e2                                      and r2, r3, #0x1f
0058c2f8  01 00 52 e3                                      cmp r2, #1
0058c2fc  04 00 00 9a                                      bls #0x58c314
0058c300  01 20 42 e2                                      sub r2, r2, #1
0058c304  1f 30 c3 e3                                      bic r3, r3, #0x1f
0058c308  03 30 82 e1                                      orr r3, r2, r3
0058c30c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0058c310  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058c314  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0058c318  20 00 13 e3                                      tst r3, #0x20
0058c31c  02 00 00 1a                                      bne #0x58c32c
0058c320  00 30 a0 e3                                      mov r3, #0
0058c324  13 30 c4 e5                                      strb r3, [r4, #0x13]
0058c328  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058c32c  00 30 94 e5                                      ldr r3, [r4]
0058c330  04 00 a0 e1                                      mov r0, r4
0058c334  0f e0 a0 e1                                      mov lr, pc
0058c338  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0058c33c  00 30 a0 e3                                      mov r3, #0
0058c340  13 30 c4 e5                                      strb r3, [r4, #0x13]
0058c344  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0058c348, declared_size=132, range_size=132, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZNK6glitch5scene17CAppendMeshBuffer13copyIndexDataEPv
; demangled: glitch::scene::CAppendMeshBuffer::copyIndexData(void*) const
; decoder-mode: arm
0058c348  70 40 2d e9                                      push {r4, r5, r6, lr}
0058c34c  00 40 a0 e1                                      mov r4, r0
0058c350  01 50 a0 e1                                      mov r5, r1
0058c354  5c 00 90 e5                                      ldr r0, [r0, #0x5c]
0058c358  01 10 a0 e3                                      mov r1, #1
0058c35c  de 55 00 eb                                      bl #0x5a1adc
0058c360  44 20 94 e5                                      ldr r2, [r4, #0x44]
0058c364  00 10 a0 e1                                      mov r1, r0
0058c368  05 00 a0 e1                                      mov r0, r5
0058c36c  3d 09 f6 eb                                      bl #0x30e868
0058c370  5c 40 94 e5                                      ldr r4, [r4, #0x5c]
0058c374  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0058c378  1f 20 03 e2                                      and r2, r3, #0x1f
0058c37c  01 00 52 e3                                      cmp r2, #1
0058c380  04 00 00 9a                                      bls #0x58c398
0058c384  01 20 42 e2                                      sub r2, r2, #1
0058c388  1f 30 c3 e3                                      bic r3, r3, #0x1f
0058c38c  03 30 82 e1                                      orr r3, r2, r3
0058c390  13 30 c4 e5                                      strb r3, [r4, #0x13]
0058c394  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058c398  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0058c39c  20 00 13 e3                                      tst r3, #0x20
0058c3a0  02 00 00 1a                                      bne #0x58c3b0
0058c3a4  00 30 a0 e3                                      mov r3, #0
0058c3a8  13 30 c4 e5                                      strb r3, [r4, #0x13]
0058c3ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058c3b0  00 30 94 e5                                      ldr r3, [r4]
0058c3b4  04 00 a0 e1                                      mov r0, r4
0058c3b8  0f e0 a0 e1                                      mov lr, pc
0058c3bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0058c3c0  00 30 a0 e3                                      mov r3, #0
0058c3c4  13 30 c4 e5                                      strb r3, [r4, #0x13]
0058c3c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0058cc74, declared_size=352, range_size=352, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZNK6glitch5scene17CAppendMeshBuffer31allocateConfiguredVertexStreamsERKN5boost13intrusive_ptrINS_5video7IBufferEEE
; demangled: glitch::scene::CAppendMeshBuffer::allocateConfiguredVertexStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&) const
; decoder-mode: arm
0058cc74  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058cc78  64 30 91 e5                                      ldr r3, [r1, #0x64]
0058cc7c  68 c0 91 e5                                      ldr ip, [r1, #0x68]
0058cc80  24 d0 4d e2                                      sub sp, sp, #0x24
0058cc84  01 60 a0 e1                                      mov r6, r1
0058cc88  0c 00 53 e1                                      cmp r3, ip
0058cc8c  00 70 a0 e1                                      mov r7, r0
0058cc90  08 20 8d e5                                      str r2, [sp, #8]
0058cc94  00 10 a0 03                                      moveq r1, #0
0058cc98  05 00 00 0a                                      beq #0x58ccb4
0058cc9c  00 10 a0 e3                                      mov r1, #0
0058cca0  01 00 a0 e3                                      mov r0, #1
0058cca4  01 20 d3 e4                                      ldrb r2, [r3], #1
0058cca8  0c 00 53 e1                                      cmp r3, ip
0058ccac  10 12 81 e1                                      orr r1, r1, r0, lsl r2
0058ccb0  fb ff ff 1a                                      bne #0x58cca4
0058ccb4  07 00 a0 e1                                      mov r0, r7
0058ccb8  a7 51 00 eb                                      bl #0x5a135c
0058ccbc  68 10 96 e5                                      ldr r1, [r6, #0x68]
0058ccc0  64 30 96 e5                                      ldr r3, [r6, #0x64]
0058ccc4  14 20 8d e2                                      add r2, sp, #0x14
0058ccc8  02 00 a0 e1                                      mov r0, r2
0058cccc  01 10 63 e0                                      rsb r1, r3, r1
0058ccd0  0c 20 8d e5                                      str r2, [sp, #0xc]
0058ccd4  c4 ff ff eb                                      bl #0x58cbec
0058ccd8  64 50 96 e5                                      ldr r5, [r6, #0x64]
0058ccdc  68 30 96 e5                                      ldr r3, [r6, #0x68]
0058cce0  03 00 55 e1                                      cmp r5, r3
0058cce4  30 00 00 0a                                      beq #0x58cdac
0058cce8  08 20 9d e5                                      ldr r2, [sp, #8]
0058ccec  14 30 96 e5                                      ldr r3, [r6, #0x14]
0058ccf0  00 40 92 e5                                      ldr r4, [r2]
0058ccf4  00 20 d5 e5                                      ldrb r2, [r5]
0058ccf8  14 30 83 e2                                      add r3, r3, #0x14
0058ccfc  00 00 54 e3                                      cmp r4, #0
0058cd00  02 32 83 e0                                      add r3, r3, r2, lsl #4
0058cd04  04 20 94 15                                      ldrne r2, [r4, #4]
0058cd08  04 80 93 e5                                      ldr r8, [r3, #4]
0058cd0c  ba 90 d3 e1                                      ldrh sb, [r3, #0xa]
0058cd10  01 20 82 12                                      addne r2, r2, #1
0058cd14  bc b0 d3 e1                                      ldrh fp, [r3, #0xc]
0058cd18  be a0 d3 e1                                      ldrh sl, [r3, #0xe]
0058cd1c  04 20 84 15                                      strne r2, [r4, #4]
0058cd20  00 00 97 e5                                      ldr r0, [r7]
0058cd24  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0058cd28  01 50 85 e2                                      add r5, r5, #1
0058cd2c  14 20 80 e2                                      add r2, r0, #0x14
0058cd30  10 30 90 e5                                      ldr r3, [r0, #0x10]
0058cd34  6d 4f 00 eb                                      bl #0x5a0af0
0058cd38  00 00 54 e3                                      cmp r4, #0
0058cd3c  04 10 94 15                                      ldrne r1, [r4, #4]
0058cd40  00 20 97 e5                                      ldr r2, [r7]
0058cd44  00 30 a0 e1                                      mov r3, r0
0058cd48  01 10 81 12                                      addne r1, r1, #1
0058cd4c  04 10 84 15                                      strne r1, [r4, #4]
0058cd50  00 00 90 e5                                      ldr r0, [r0]
0058cd54  00 40 83 e5                                      str r4, [r3]
0058cd58  00 00 50 e3                                      cmp r0, #0
0058cd5c  04 00 00 0a                                      beq #0x58cd74
0058cd60  04 20 8d e5                                      str r2, [sp, #4]
0058cd64  00 30 8d e5                                      str r3, [sp]
0058cd68  05 42 f6 eb                                      bl #0x31d584
0058cd6c  00 30 9d e5                                      ldr r3, [sp]
0058cd70  04 20 9d e5                                      ldr r2, [sp, #4]
0058cd74  02 00 a0 e1                                      mov r0, r2
0058cd78  04 80 83 e5                                      str r8, [r3, #4]
0058cd7c  be a0 c3 e1                                      strh sl, [r3, #0xe]
0058cd80  ba 90 c3 e1                                      strh sb, [r3, #0xa]
0058cd84  bc b0 c3 e1                                      strh fp, [r3, #0xc]
0058cd88  00 10 a0 e3                                      mov r1, #0
0058cd8c  9a 4f 00 eb                                      bl #0x5a0bfc
0058cd90  00 00 54 e3                                      cmp r4, #0
0058cd94  04 00 a0 e1                                      mov r0, r4
0058cd98  cf ff ff 0a                                      beq #0x58ccdc
0058cd9c  f8 41 f6 eb                                      bl #0x31d584
0058cda0  68 30 96 e5                                      ldr r3, [r6, #0x68]
0058cda4  03 00 55 e1                                      cmp r5, r3
0058cda8  ce ff ff 1a                                      bne #0x58cce8
0058cdac  48 10 96 e5                                      ldr r1, [r6, #0x48]
0058cdb0  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
0058cdb4  a4 07 f6 eb                                      bl #0x30ec4c
0058cdb8  00 30 97 e5                                      ldr r3, [r7]
0058cdbc  08 00 83 e5                                      str r0, [r3, #8]
0058cdc0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0058cdc4  42 f4 ff eb                                      bl #0x589ed4
0058cdc8  07 00 a0 e1                                      mov r0, r7
0058cdcc  24 d0 8d e2                                      add sp, sp, #0x24
0058cdd0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005a2040, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZNK6glitch5scene17CAppendMeshBuffer14hasEnoughSpaceEjj
; demangled: glitch::scene::CAppendMeshBuffer::hasEnoughSpace(unsigned int, unsigned int) const
; decoder-mode: arm
005a2040  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a2044  00 40 a0 e1                                      mov r4, r0
005a2048  3c 70 90 e5                                      ldr r7, [r0, #0x3c]
005a204c  48 60 90 e5                                      ldr r6, [r0, #0x48]
005a2050  38 00 90 e5                                      ldr r0, [r0, #0x38]
005a2054  01 50 a0 e1                                      mov r5, r1
005a2058  06 10 a0 e1                                      mov r1, r6
005a205c  00 00 67 e0                                      rsb r0, r7, r0
005a2060  02 80 a0 e1                                      mov r8, r2
005a2064  f8 b2 f5 eb                                      bl #0x30ec4c
005a2068  00 00 55 e1                                      cmp r5, r0
005a206c  0e 00 00 8a                                      bhi #0x5a20ac
005a2070  44 30 94 e5                                      ldr r3, [r4, #0x44]
005a2074  40 00 94 e5                                      ldr r0, [r4, #0x40]
005a2078  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
005a207c  00 00 63 e0                                      rsb r0, r3, r0
005a2080  f1 b2 f5 eb                                      bl #0x30ec4c
005a2084  00 00 58 e1                                      cmp r8, r0
005a2088  07 00 00 8a                                      bhi #0x5a20ac
005a208c  07 00 a0 e1                                      mov r0, r7
005a2090  06 10 a0 e1                                      mov r1, r6
005a2094  ec b2 f5 eb                                      bl #0x30ec4c
005a2098  00 00 85 e0                                      add r0, r5, r0
005a209c  01 08 50 e3                                      cmp r0, #0x10000
005a20a0  00 00 a0 23                                      movhs r0, #0
005a20a4  01 00 a0 33                                      movlo r0, #1
005a20a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a20ac  00 00 a0 e3                                      mov r0, #0
005a20b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005a26bc, declared_size=60, range_size=60, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBuffer11beginAppendEv
; demangled: glitch::scene::CAppendMeshBuffer::beginAppend()
; decoder-mode: arm
005a26bc  10 40 2d e9                                      push {r4, lr}
005a26c0  50 30 90 e5                                      ldr r3, [r0, #0x50]
005a26c4  00 40 a0 e1                                      mov r4, r0
005a26c8  00 00 53 e3                                      cmp r3, #0
005a26cc  00 00 00 0a                                      beq #0x5a26d4
005a26d0  10 80 bd e8                                      pop {r4, pc}
005a26d4  04 10 a0 e3                                      mov r1, #4
005a26d8  58 00 90 e5                                      ldr r0, [r0, #0x58]
005a26dc  c3 fc ff eb                                      bl #0x5a19f0
005a26e0  04 10 a0 e3                                      mov r1, #4
005a26e4  50 00 84 e5                                      str r0, [r4, #0x50]
005a26e8  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
005a26ec  bf fc ff eb                                      bl #0x5a19f0
005a26f0  54 00 84 e5                                      str r0, [r4, #0x54]
005a26f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a8a88, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBuffer5setupEv
; demangled: glitch::scene::CAppendMeshBuffer::setup()
; decoder-mode: arm
005a8a88  70 40 2d e9                                      push {r4, r5, r6, lr}
005a8a8c  00 40 a0 e1                                      mov r4, r0
005a8a90  4c 10 90 e5                                      ldr r1, [r0, #0x4c]
005a8a94  44 00 90 e5                                      ldr r0, [r0, #0x44]
005a8a98  6b 98 f5 eb                                      bl #0x30ec4c
005a8a9c  48 10 94 e5                                      ldr r1, [r4, #0x48]
005a8aa0  00 50 a0 e1                                      mov r5, r0
005a8aa4  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
005a8aa8  67 98 f5 eb                                      bl #0x30ec4c
005a8aac  14 30 94 e5                                      ldr r3, [r4, #0x14]
005a8ab0  00 20 a0 e3                                      mov r2, #0
005a8ab4  24 20 84 e5                                      str r2, [r4, #0x24]
005a8ab8  01 20 a0 e3                                      mov r2, #1
005a8abc  20 50 84 e5                                      str r5, [r4, #0x20]
005a8ac0  bc 22 c4 e1                                      strh r2, [r4, #0x2c]
005a8ac4  28 00 84 e5                                      str r0, [r4, #0x28]
005a8ac8  08 00 83 e5                                      str r0, [r3, #8]
005a8acc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006b8834, declared_size=68, range_size=68, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBuffer12adjustStrideEt
; demangled: glitch::scene::CAppendMeshBuffer::adjustStride(unsigned short)
; decoder-mode: arm
006b8834  64 30 90 e5                                      ldr r3, [r0, #0x64]
006b8838  68 20 90 e5                                      ldr r2, [r0, #0x68]
006b883c  03 00 52 e1                                      cmp r2, r3
006b8840  0a 00 00 0a                                      beq #0x6b8870
006b8844  00 20 a0 e3                                      mov r2, #0
006b8848  02 c0 d3 e7                                      ldrb ip, [r3, r2]
006b884c  14 30 90 e5                                      ldr r3, [r0, #0x14]
006b8850  01 20 82 e2                                      add r2, r2, #1
006b8854  0c 32 83 e0                                      add r3, r3, ip, lsl #4
006b8858  b2 12 c3 e1                                      strh r1, [r3, #0x22]
006b885c  64 30 90 e5                                      ldr r3, [r0, #0x64]
006b8860  68 c0 90 e5                                      ldr ip, [r0, #0x68]
006b8864  0c c0 63 e0                                      rsb ip, r3, ip
006b8868  0c 00 52 e1                                      cmp r2, ip
006b886c  f5 ff ff 3a                                      blo #0x6b8848
006b8870  48 10 80 e5                                      str r1, [r0, #0x48]
006b8874  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b8878, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBuffer5clearEv
; demangled: glitch::scene::CAppendMeshBuffer::clear()
; decoder-mode: arm
006b8878  00 30 a0 e3                                      mov r3, #0
006b887c  44 30 80 e5                                      str r3, [r0, #0x44]
006b8880  3c 30 80 e5                                      str r3, [r0, #0x3c]
006b8884  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b8950, declared_size=336, range_size=336, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt
; demangled: glitch::scene::CAppendMeshBuffer::configureStream(unsigned char, int, glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE, unsigned short)
; decoder-mode: arm
006b8950  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b8954  58 40 90 e5                                      ldr r4, [r0, #0x58]
006b8958  03 b0 a0 e1                                      mov fp, r3
006b895c  04 d0 4d e2                                      sub sp, sp, #4
006b8960  00 00 54 e3                                      cmp r4, #0
006b8964  04 30 94 15                                      ldrne r3, [r4, #4]
006b8968  b8 92 dd e1                                      ldrh sb, [sp, #0x28]
006b896c  02 70 a0 e1                                      mov r7, r2
006b8970  01 30 83 12                                      addne r3, r3, #1
006b8974  04 30 84 15                                      strne r3, [r4, #4]
006b8978  00 00 54 e3                                      cmp r4, #0
006b897c  04 20 94 15                                      ldrne r2, [r4, #4]
006b8980  14 a0 90 e5                                      ldr sl, [r0, #0x14]
006b8984  00 50 a0 e1                                      mov r5, r0
006b8988  01 20 82 12                                      addne r2, r2, #1
006b898c  14 30 8a e2                                      add r3, sl, #0x14
006b8990  04 20 84 15                                      strne r2, [r4, #4]
006b8994  01 02 93 e7                                      ldr r0, [r3, r1, lsl #4]
006b8998  01 60 a0 e1                                      mov r6, r1
006b899c  01 82 83 e0                                      add r8, r3, r1, lsl #4
006b89a0  00 00 50 e3                                      cmp r0, #0
006b89a4  01 42 83 e7                                      str r4, [r3, r1, lsl #4]
006b89a8  00 00 00 0a                                      beq #0x6b89b0
006b89ac  f4 92 f1 eb                                      bl #0x31d584
006b89b0  00 30 a0 e3                                      mov r3, #0
006b89b4  be 30 c8 e1                                      strh r3, [r8, #0xe]
006b89b8  0a 00 a0 e1                                      mov r0, sl
006b89bc  04 70 88 e5                                      str r7, [r8, #4]
006b89c0  ba b0 c8 e1                                      strh fp, [r8, #0xa]
006b89c4  bc 90 c8 e1                                      strh sb, [r8, #0xc]
006b89c8  00 10 a0 e3                                      mov r1, #0
006b89cc  8a a0 fb eb                                      bl #0x5a0bfc
006b89d0  68 a0 95 e5                                      ldr sl, [r5, #0x68]
006b89d4  6c 30 95 e5                                      ldr r3, [r5, #0x6c]
006b89d8  03 00 5a e1                                      cmp sl, r3
006b89dc  0b 00 00 0a                                      beq #0x6b8a10
006b89e0  00 60 ca e5                                      strb r6, [sl]
006b89e4  68 30 95 e5                                      ldr r3, [r5, #0x68]
006b89e8  01 30 83 e2                                      add r3, r3, #1
006b89ec  68 30 85 e5                                      str r3, [r5, #0x68]
006b89f0  00 00 54 e3                                      cmp r4, #0
006b89f4  03 00 00 0a                                      beq #0x6b8a08
006b89f8  04 00 a0 e1                                      mov r0, r4
006b89fc  04 d0 8d e2                                      add sp, sp, #4
006b8a00  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b8a04  de 92 f1 ea                                      b #0x31d584
006b8a08  04 d0 8d e2                                      add sp, sp, #4
006b8a0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b8a10  64 30 95 e5                                      ldr r3, [r5, #0x64]
006b8a14  0a 30 63 e0                                      rsb r3, r3, sl
006b8a18  01 00 73 e3                                      cmn r3, #1
006b8a1c  15 00 00 0a                                      beq #0x6b8a78
006b8a20  01 00 53 e3                                      cmp r3, #1
006b8a24  03 70 83 20                                      addhs r7, r3, r3
006b8a28  01 70 83 32                                      addlo r7, r3, #1
006b8a2c  07 00 53 e1                                      cmp r3, r7
006b8a30  00 70 e0 83                                      mvnhi r7, #0
006b8a34  00 10 a0 e3                                      mov r1, #0
006b8a38  07 00 a0 e1                                      mov r0, r7
006b8a3c  c9 5e f1 eb                                      bl #0x310568
006b8a40  64 10 95 e5                                      ldr r1, [r5, #0x64]
006b8a44  00 80 a0 e1                                      mov r8, r0
006b8a48  01 a0 5a e0                                      subs sl, sl, r1
006b8a4c  00 a0 a0 01                                      moveq sl, r0
006b8a50  0d 00 00 1a                                      bne #0x6b8a8c
006b8a54  00 60 ca e5                                      strb r6, [sl]
006b8a58  64 00 95 e5                                      ldr r0, [r5, #0x64]
006b8a5c  01 a0 8a e2                                      add sl, sl, #1
006b8a60  07 70 88 e0                                      add r7, r8, r7
006b8a64  79 5e f1 eb                                      bl #0x310450
006b8a68  6c 70 85 e5                                      str r7, [r5, #0x6c]
006b8a6c  68 a0 85 e5                                      str sl, [r5, #0x68]
006b8a70  64 80 85 e5                                      str r8, [r5, #0x64]
006b8a74  dd ff ff ea                                      b #0x6b89f0
006b8a78  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
006b8a7c  03 70 a0 e1                                      mov r7, r3
006b8a80  00 00 8f e0                                      add r0, pc, r0
006b8a84  ed 40 01 eb                                      bl #0x708e40
006b8a88  e9 ff ff ea                                      b #0x6b8a34
006b8a8c  0a 20 a0 e1                                      mov r2, sl
006b8a90  28 55 f1 eb                                      bl #0x30df38
006b8a94  0a a0 80 e0                                      add sl, r0, sl
006b8a98  ed ff ff ea                                      b #0x6b8a54
; mapping-symbol data/literal pool
006b8a9c  e8 59 20 00                                      .byte 0xe8, 0x59, 0x20, 0x00

; FUNCTION 0x006b8aa0, declared_size=212, range_size=212, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBuffer9endAppendEv
; demangled: glitch::scene::CAppendMeshBuffer::endAppend()
; decoder-mode: arm
006b8aa0  70 40 2d e9                                      push {r4, r5, r6, lr}
006b8aa4  50 30 90 e5                                      ldr r3, [r0, #0x50]
006b8aa8  00 40 a0 e1                                      mov r4, r0
006b8aac  00 00 53 e3                                      cmp r3, #0
006b8ab0  14 00 00 0a                                      beq #0x6b8b08
006b8ab4  58 50 90 e5                                      ldr r5, [r0, #0x58]
006b8ab8  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006b8abc  1f 20 03 e2                                      and r2, r3, #0x1f
006b8ac0  01 00 52 e3                                      cmp r2, #1
006b8ac4  10 00 00 9a                                      bls #0x6b8b0c
006b8ac8  01 20 42 e2                                      sub r2, r2, #1
006b8acc  1f 30 c3 e3                                      bic r3, r3, #0x1f
006b8ad0  03 30 82 e1                                      orr r3, r2, r3
006b8ad4  13 30 c5 e5                                      strb r3, [r5, #0x13]
006b8ad8  5c 50 94 e5                                      ldr r5, [r4, #0x5c]
006b8adc  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006b8ae0  1f 20 03 e2                                      and r2, r3, #0x1f
006b8ae4  01 00 52 e3                                      cmp r2, #1
006b8ae8  11 00 00 9a                                      bls #0x6b8b34
006b8aec  01 20 42 e2                                      sub r2, r2, #1
006b8af0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006b8af4  03 30 82 e1                                      orr r3, r2, r3
006b8af8  13 30 c5 e5                                      strb r3, [r5, #0x13]
006b8afc  00 30 a0 e3                                      mov r3, #0
006b8b00  54 30 84 e5                                      str r3, [r4, #0x54]
006b8b04  50 30 84 e5                                      str r3, [r4, #0x50]
006b8b08  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b8b0c  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006b8b10  20 00 13 e3                                      tst r3, #0x20
006b8b14  0c 00 00 1a                                      bne #0x6b8b4c
006b8b18  00 30 a0 e3                                      mov r3, #0
006b8b1c  13 30 c5 e5                                      strb r3, [r5, #0x13]
006b8b20  5c 50 94 e5                                      ldr r5, [r4, #0x5c]
006b8b24  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006b8b28  1f 20 03 e2                                      and r2, r3, #0x1f
006b8b2c  01 00 52 e3                                      cmp r2, #1
006b8b30  ed ff ff 8a                                      bhi #0x6b8aec
006b8b34  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006b8b38  20 00 13 e3                                      tst r3, #0x20
006b8b3c  07 00 00 1a                                      bne #0x6b8b60
006b8b40  00 30 a0 e3                                      mov r3, #0
006b8b44  13 30 c5 e5                                      strb r3, [r5, #0x13]
006b8b48  eb ff ff ea                                      b #0x6b8afc
006b8b4c  00 30 95 e5                                      ldr r3, [r5]
006b8b50  05 00 a0 e1                                      mov r0, r5
006b8b54  0f e0 a0 e1                                      mov lr, pc
006b8b58  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b8b5c  ed ff ff ea                                      b #0x6b8b18
006b8b60  00 30 95 e5                                      ldr r3, [r5]
006b8b64  05 00 a0 e1                                      mov r0, r5
006b8b68  0f e0 a0 e1                                      mov lr, pc
006b8b6c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b8b70  f2 ff ff ea                                      b #0x6b8b40

; FUNCTION 0x006b8b74, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBuffer6resizeEjj
; demangled: glitch::scene::CAppendMeshBuffer::resize(unsigned int, unsigned int)
; decoder-mode: arm
006b8b74  70 40 2d e9                                      push {r4, r5, r6, lr}
006b8b78  00 40 a0 e1                                      mov r4, r0
006b8b7c  01 60 a0 e1                                      mov r6, r1
006b8b80  02 50 a0 e1                                      mov r5, r2
006b8b84  c5 ff ff eb                                      bl #0x6b8aa0
006b8b88  06 10 a0 e1                                      mov r1, r6
006b8b8c  58 00 94 e5                                      ldr r0, [r4, #0x58]
006b8b90  00 20 a0 e3                                      mov r2, #0
006b8b94  01 30 a0 e3                                      mov r3, #1
006b8b98  45 a4 fb eb                                      bl #0x5a1cb4
006b8b9c  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
006b8ba0  05 10 a0 e1                                      mov r1, r5
006b8ba4  00 20 a0 e3                                      mov r2, #0
006b8ba8  01 30 a0 e3                                      mov r3, #1
006b8bac  70 40 bd e8                                      pop {r4, r5, r6, lr}
006b8bb0  3f a4 fb ea                                      b #0x5a1cb4

; FUNCTION 0x006b8bb4, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBuffer5resetEv
; demangled: glitch::scene::CAppendMeshBuffer::reset()
; decoder-mode: arm
006b8bb4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006b8bb8  00 50 a0 e1                                      mov r5, r0
006b8bbc  b7 ff ff eb                                      bl #0x6b8aa0
006b8bc0  05 00 a0 e1                                      mov r0, r5
006b8bc4  2b ff ff eb                                      bl #0x6b8878
006b8bc8  68 20 95 e5                                      ldr r2, [r5, #0x68]
006b8bcc  64 30 95 e5                                      ldr r3, [r5, #0x64]
006b8bd0  02 00 53 e1                                      cmp r3, r2
006b8bd4  11 00 00 0a                                      beq #0x6b8c20
006b8bd8  00 40 a0 e3                                      mov r4, #0
006b8bdc  04 60 a0 e1                                      mov r6, r4
006b8be0  14 70 95 e5                                      ldr r7, [r5, #0x14]
006b8be4  14 30 87 e2                                      add r3, r7, #0x14
006b8be8  04 02 93 e7                                      ldr r0, [r3, r4, lsl #4]
006b8bec  04 62 83 e7                                      str r6, [r3, r4, lsl #4]
006b8bf0  01 40 84 e2                                      add r4, r4, #1
006b8bf4  00 00 50 e3                                      cmp r0, #0
006b8bf8  00 00 00 0a                                      beq #0x6b8c00
006b8bfc  60 92 f1 eb                                      bl #0x31d584
006b8c00  00 10 a0 e3                                      mov r1, #0
006b8c04  07 00 a0 e1                                      mov r0, r7
006b8c08  fb 9f fb eb                                      bl #0x5a0bfc
006b8c0c  68 20 95 e5                                      ldr r2, [r5, #0x68]
006b8c10  64 30 95 e5                                      ldr r3, [r5, #0x64]
006b8c14  02 10 63 e0                                      rsb r1, r3, r2
006b8c18  01 00 54 e1                                      cmp r4, r1
006b8c1c  ef ff ff 3a                                      blo #0x6b8be0
006b8c20  03 00 52 e1                                      cmp r2, r3
006b8c24  68 30 85 15                                      strne r3, [r5, #0x68]
006b8c28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006b8c2c, declared_size=108, range_size=108, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBufferD1Ev
; demangled: glitch::scene::CAppendMeshBuffer::~CAppendMeshBuffer()
; decoder-mode: arm
006b8c2c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
006b8c30  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
006b8c34  10 40 2d e9                                      push {r4, lr}
006b8c38  03 30 8f e0                                      add r3, pc, r3
006b8c3c  02 20 93 e7                                      ldr r2, [r3, r2]
006b8c40  00 40 a0 e1                                      mov r4, r0
006b8c44  08 20 82 e2                                      add r2, r2, #8
006b8c48  00 20 80 e5                                      str r2, [r0]
006b8c4c  93 ff ff eb                                      bl #0x6b8aa0
006b8c50  64 00 94 e5                                      ldr r0, [r4, #0x64]
006b8c54  00 00 50 e3                                      cmp r0, #0
006b8c58  00 00 00 0a                                      beq #0x6b8c60
006b8c5c  fb 5d f1 eb                                      bl #0x310450
006b8c60  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
006b8c64  00 00 50 e3                                      cmp r0, #0
006b8c68  00 00 00 0a                                      beq #0x6b8c70
006b8c6c  44 92 f1 eb                                      bl #0x31d584
006b8c70  58 00 94 e5                                      ldr r0, [r4, #0x58]
006b8c74  00 00 50 e3                                      cmp r0, #0
006b8c78  00 00 00 0a                                      beq #0x6b8c80
006b8c7c  40 92 f1 eb                                      bl #0x31d584
006b8c80  04 00 a0 e1                                      mov r0, r4
006b8c84  6b 0f 00 eb                                      bl #0x6bca38
006b8c88  04 00 a0 e1                                      mov r0, r4
006b8c8c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b8c90  58 be 2d 00 5c 09 00 00                          .byte 0x58, 0xbe, 0x2d, 0x00, 0x5c, 0x09, 0x00, 0x00

; FUNCTION 0x006b8c98, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBufferD0Ev
; demangled: glitch::scene::CAppendMeshBuffer::~CAppendMeshBuffer()
; decoder-mode: arm
006b8c98  10 40 2d e9                                      push {r4, lr}
006b8c9c  00 40 a0 e1                                      mov r4, r0
006b8ca0  e1 ff ff eb                                      bl #0x6b8c2c
006b8ca4  04 00 a0 e1                                      mov r0, r4
006b8ca8  80 55 f1 eb                                      bl #0x30e2b0
006b8cac  04 00 a0 e1                                      mov r0, r4
006b8cb0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006b8cb4, declared_size=812, range_size=812, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBufferC1EjjPNS_5video12IVideoDriverENS2_14E_BUFFER_USAGEEj
; demangled: glitch::scene::CAppendMeshBuffer::CAppendMeshBuffer(unsigned int, unsigned int, glitch::video::IVideoDriver*, glitch::video::E_BUFFER_USAGE, unsigned int)
; decoder-mode: arm
006b8cb4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006b8cb8  03 50 a0 e1                                      mov r5, r3
006b8cbc  34 d0 4d e2                                      sub sp, sp, #0x34
006b8cc0  ff 30 a0 e3                                      mov r3, #0xff
006b8cc4  00 c0 a0 e3                                      mov ip, #0
006b8cc8  b4 32 cd e1                                      strh r3, [sp, #0x24]
006b8ccc  01 60 a0 e1                                      mov r6, r1
006b8cd0  06 30 a0 e3                                      mov r3, #6
006b8cd4  02 70 a0 e1                                      mov r7, r2
006b8cd8  54 10 9d e5                                      ldr r1, [sp, #0x54]
006b8cdc  10 20 8d e2                                      add r2, sp, #0x10
006b8ce0  20 c0 8d e5                                      str ip, [sp, #0x20]
006b8ce4  10 c0 8d e5                                      str ip, [sp, #0x10]
006b8ce8  14 c0 8d e5                                      str ip, [sp, #0x14]
006b8cec  18 c0 8d e5                                      str ip, [sp, #0x18]
006b8cf0  1c c0 8d e5                                      str ip, [sp, #0x1c]
006b8cf4  b6 32 cd e1                                      strh r3, [sp, #0x26]
006b8cf8  00 40 a0 e1                                      mov r4, r0
006b8cfc  50 80 9d e5                                      ldr r8, [sp, #0x50]
006b8d00  e8 fe ff eb                                      bl #0x6b88a8
006b8d04  10 00 9d e5                                      ldr r0, [sp, #0x10]
006b8d08  c8 a2 9f e5                                      ldr sl, [pc, #0x2c8]
006b8d0c  00 00 50 e3                                      cmp r0, #0
006b8d10  0a a0 8f e0                                      add sl, pc, sl
006b8d14  00 00 00 0a                                      beq #0x6b8d1c
006b8d18  19 92 f1 eb                                      bl #0x31d584
006b8d1c  b8 32 9f e5                                      ldr r3, [pc, #0x2b8]
006b8d20  00 20 a0 e3                                      mov r2, #0
006b8d24  01 10 a0 e3                                      mov r1, #1
006b8d28  03 30 9a e7                                      ldr r3, [sl, r3]
006b8d2c  02 00 a0 e3                                      mov r0, #2
006b8d30  3c 20 84 e5                                      str r2, [r4, #0x3c]
006b8d34  08 30 83 e2                                      add r3, r3, #8
006b8d38  44 20 84 e5                                      str r2, [r4, #0x44]
006b8d3c  50 20 84 e5                                      str r2, [r4, #0x50]
006b8d40  54 20 84 e5                                      str r2, [r4, #0x54]
006b8d44  58 20 84 e5                                      str r2, [r4, #0x58]
006b8d48  5c 20 84 e5                                      str r2, [r4, #0x5c]
006b8d4c  64 20 84 e5                                      str r2, [r4, #0x64]
006b8d50  68 20 84 e5                                      str r2, [r4, #0x68]
006b8d54  6c 20 84 e5                                      str r2, [r4, #0x6c]
006b8d58  4c 00 84 e5                                      str r0, [r4, #0x4c]
006b8d5c  00 30 84 e5                                      str r3, [r4]
006b8d60  48 10 84 e5                                      str r1, [r4, #0x48]
006b8d64  38 60 84 e5                                      str r6, [r4, #0x38]
006b8d68  40 70 84 e5                                      str r7, [r4, #0x40]
006b8d6c  04 20 8d e5                                      str r2, [sp, #4]
006b8d70  08 10 8d e5                                      str r1, [sp, #8]
006b8d74  00 60 8d e5                                      str r6, [sp]
006b8d78  2c 00 8d e2                                      add r0, sp, #0x2c
006b8d7c  08 30 a0 e1                                      mov r3, r8
006b8d80  00 c0 95 e5                                      ldr ip, [r5]
006b8d84  05 10 a0 e1                                      mov r1, r5
006b8d88  0f e0 a0 e1                                      mov lr, pc
006b8d8c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006b8d90  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006b8d94  00 00 53 e3                                      cmp r3, #0
006b8d98  04 20 93 15                                      ldrne r2, [r3, #4]
006b8d9c  01 20 82 12                                      addne r2, r2, #1
006b8da0  04 20 83 15                                      strne r2, [r3, #4]
006b8da4  58 00 94 e5                                      ldr r0, [r4, #0x58]
006b8da8  58 30 84 e5                                      str r3, [r4, #0x58]
006b8dac  00 00 50 e3                                      cmp r0, #0
006b8db0  00 00 00 0a                                      beq #0x6b8db8
006b8db4  f2 91 f1 eb                                      bl #0x31d584
006b8db8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006b8dbc  00 00 50 e3                                      cmp r0, #0
006b8dc0  00 00 00 0a                                      beq #0x6b8dc8
006b8dc4  ee 91 f1 eb                                      bl #0x31d584
006b8dc8  01 20 a0 e3                                      mov r2, #1
006b8dcc  00 30 a0 e3                                      mov r3, #0
006b8dd0  08 20 8d e5                                      str r2, [sp, #8]
006b8dd4  04 30 8d e5                                      str r3, [sp, #4]
006b8dd8  00 70 8d e5                                      str r7, [sp]
006b8ddc  08 30 a0 e1                                      mov r3, r8
006b8de0  28 00 8d e2                                      add r0, sp, #0x28
006b8de4  05 10 a0 e1                                      mov r1, r5
006b8de8  00 c0 95 e5                                      ldr ip, [r5]
006b8dec  0f e0 a0 e1                                      mov lr, pc
006b8df0  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006b8df4  28 30 9d e5                                      ldr r3, [sp, #0x28]
006b8df8  00 00 53 e3                                      cmp r3, #0
006b8dfc  04 20 93 15                                      ldrne r2, [r3, #4]
006b8e00  01 20 82 12                                      addne r2, r2, #1
006b8e04  04 20 83 15                                      strne r2, [r3, #4]
006b8e08  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
006b8e0c  5c 30 84 e5                                      str r3, [r4, #0x5c]
006b8e10  00 00 50 e3                                      cmp r0, #0
006b8e14  00 00 00 0a                                      beq #0x6b8e1c
006b8e18  d9 91 f1 eb                                      bl #0x31d584
006b8e1c  28 00 9d e5                                      ldr r0, [sp, #0x28]
006b8e20  00 00 50 e3                                      cmp r0, #0
006b8e24  00 00 00 0a                                      beq #0x6b8e2c
006b8e28  d5 91 f1 eb                                      bl #0x31d584
006b8e2c  58 30 94 e5                                      ldr r3, [r4, #0x58]
006b8e30  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006b8e34  08 10 12 e2                                      ands r1, r2, #8
006b8e38  01 00 00 0a                                      beq #0x6b8e44
006b8e3c  02 00 12 e3                                      tst r2, #2
006b8e40  0c 00 00 0a                                      beq #0x6b8e78
006b8e44  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006b8e48  04 00 52 e3                                      cmp r2, #4
006b8e4c  07 00 00 0a                                      beq #0x6b8e70
006b8e50  03 00 a0 e1                                      mov r0, r3
006b8e54  00 10 a0 e3                                      mov r1, #0
006b8e58  00 30 93 e5                                      ldr r3, [r3]
006b8e5c  0f e0 a0 e1                                      mov lr, pc
006b8e60  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8e64  58 30 94 e5                                      ldr r3, [r4, #0x58]
006b8e68  12 10 d3 e5                                      ldrb r1, [r3, #0x12]
006b8e6c  08 10 01 e2                                      and r1, r1, #8
006b8e70  00 00 51 e3                                      cmp r1, #0
006b8e74  24 00 00 0a                                      beq #0x6b8f0c
006b8e78  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006b8e7c  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006b8e80  08 10 12 e2                                      ands r1, r2, #8
006b8e84  01 00 00 0a                                      beq #0x6b8e90
006b8e88  02 00 12 e3                                      tst r2, #2
006b8e8c  0c 00 00 0a                                      beq #0x6b8ec4
006b8e90  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006b8e94  04 00 52 e3                                      cmp r2, #4
006b8e98  07 00 00 0a                                      beq #0x6b8ebc
006b8e9c  03 00 a0 e1                                      mov r0, r3
006b8ea0  00 10 a0 e3                                      mov r1, #0
006b8ea4  00 30 93 e5                                      ldr r3, [r3]
006b8ea8  0f e0 a0 e1                                      mov lr, pc
006b8eac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8eb0  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006b8eb4  12 10 d3 e5                                      ldrb r1, [r3, #0x12]
006b8eb8  08 10 01 e2                                      and r1, r1, #8
006b8ebc  00 00 51 e3                                      cmp r1, #0
006b8ec0  27 00 00 0a                                      beq #0x6b8f64
006b8ec4  00 00 53 e3                                      cmp r3, #0
006b8ec8  04 20 93 15                                      ldrne r2, [r3, #4]
006b8ecc  01 20 82 12                                      addne r2, r2, #1
006b8ed0  04 20 83 15                                      strne r2, [r3, #4]
006b8ed4  18 00 94 e5                                      ldr r0, [r4, #0x18]
006b8ed8  18 30 84 e5                                      str r3, [r4, #0x18]
006b8edc  00 00 50 e3                                      cmp r0, #0
006b8ee0  00 00 00 0a                                      beq #0x6b8ee8
006b8ee4  a6 91 f1 eb                                      bl #0x31d584
006b8ee8  00 30 a0 e3                                      mov r3, #0
006b8eec  01 20 a0 e3                                      mov r2, #1
006b8ef0  28 30 84 e5                                      str r3, [r4, #0x28]
006b8ef4  bc 22 c4 e1                                      strh r2, [r4, #0x2c]
006b8ef8  20 30 84 e5                                      str r3, [r4, #0x20]
006b8efc  24 30 84 e5                                      str r3, [r4, #0x24]
006b8f00  04 00 a0 e1                                      mov r0, r4
006b8f04  34 d0 8d e2                                      add sp, sp, #0x34
006b8f08  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006b8f0c  06 00 a0 e1                                      mov r0, r6
006b8f10  a4 ec f9 eb                                      bl #0x5341a8
006b8f14  01 30 a0 e3                                      mov r3, #1
006b8f18  00 20 a0 e1                                      mov r2, r0
006b8f1c  06 10 a0 e1                                      mov r1, r6
006b8f20  58 00 94 e5                                      ldr r0, [r4, #0x58]
006b8f24  62 a3 fb eb                                      bl #0x5a1cb4
006b8f28  58 30 94 e5                                      ldr r3, [r4, #0x58]
006b8f2c  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006b8f30  08 00 12 e3                                      tst r2, #8
006b8f34  24 00 00 1a                                      bne #0x6b8fcc
006b8f38  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006b8f3c  04 00 52 e3                                      cmp r2, #4
006b8f40  04 00 00 0a                                      beq #0x6b8f58
006b8f44  03 00 a0 e1                                      mov r0, r3
006b8f48  00 10 a0 e3                                      mov r1, #0
006b8f4c  00 30 93 e5                                      ldr r3, [r3]
006b8f50  0f e0 a0 e1                                      mov lr, pc
006b8f54  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8f58  01 30 a0 e3                                      mov r3, #1
006b8f5c  60 30 c4 e5                                      strb r3, [r4, #0x60]
006b8f60  c4 ff ff ea                                      b #0x6b8e78
006b8f64  07 00 a0 e1                                      mov r0, r7
006b8f68  8e ec f9 eb                                      bl #0x5341a8
006b8f6c  01 30 a0 e3                                      mov r3, #1
006b8f70  00 20 a0 e1                                      mov r2, r0
006b8f74  07 10 a0 e1                                      mov r1, r7
006b8f78  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
006b8f7c  4c a3 fb eb                                      bl #0x5a1cb4
006b8f80  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006b8f84  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006b8f88  08 00 12 e3                                      tst r2, #8
006b8f8c  0b 00 00 1a                                      bne #0x6b8fc0
006b8f90  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006b8f94  04 00 52 e3                                      cmp r2, #4
006b8f98  05 00 00 0a                                      beq #0x6b8fb4
006b8f9c  03 00 a0 e1                                      mov r0, r3
006b8fa0  00 10 a0 e3                                      mov r1, #0
006b8fa4  00 30 93 e5                                      ldr r3, [r3]
006b8fa8  0f e0 a0 e1                                      mov lr, pc
006b8fac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8fb0  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006b8fb4  01 20 a0 e3                                      mov r2, #1
006b8fb8  60 20 c4 e5                                      strb r2, [r4, #0x60]
006b8fbc  c0 ff ff ea                                      b #0x6b8ec4
006b8fc0  02 00 12 e3                                      tst r2, #2
006b8fc4  fa ff ff 0a                                      beq #0x6b8fb4
006b8fc8  f0 ff ff ea                                      b #0x6b8f90
006b8fcc  02 00 12 e3                                      tst r2, #2
006b8fd0  e0 ff ff 0a                                      beq #0x6b8f58
006b8fd4  d7 ff ff ea                                      b #0x6b8f38
; mapping-symbol data/literal pool
006b8fd8  80 bd 2d 00 5c 09 00 00                          .byte 0x80, 0xbd, 0x2d, 0x00, 0x5c, 0x09, 0x00, 0x00

; FUNCTION 0x006b8fe0, declared_size=812, range_size=812, mode=arm
; class-group: glitch::scene::CAppendMeshBuffer
; alias: _ZN6glitch5scene17CAppendMeshBufferC2EjjPNS_5video12IVideoDriverENS2_14E_BUFFER_USAGEEj
; demangled: glitch::scene::CAppendMeshBuffer::CAppendMeshBuffer(unsigned int, unsigned int, glitch::video::IVideoDriver*, glitch::video::E_BUFFER_USAGE, unsigned int)
; decoder-mode: arm
006b8fe0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006b8fe4  03 50 a0 e1                                      mov r5, r3
006b8fe8  34 d0 4d e2                                      sub sp, sp, #0x34
006b8fec  ff 30 a0 e3                                      mov r3, #0xff
006b8ff0  00 c0 a0 e3                                      mov ip, #0
006b8ff4  b4 32 cd e1                                      strh r3, [sp, #0x24]
006b8ff8  01 60 a0 e1                                      mov r6, r1
006b8ffc  06 30 a0 e3                                      mov r3, #6
006b9000  02 70 a0 e1                                      mov r7, r2
006b9004  54 10 9d e5                                      ldr r1, [sp, #0x54]
006b9008  10 20 8d e2                                      add r2, sp, #0x10
006b900c  20 c0 8d e5                                      str ip, [sp, #0x20]
006b9010  10 c0 8d e5                                      str ip, [sp, #0x10]
006b9014  14 c0 8d e5                                      str ip, [sp, #0x14]
006b9018  18 c0 8d e5                                      str ip, [sp, #0x18]
006b901c  1c c0 8d e5                                      str ip, [sp, #0x1c]
006b9020  b6 32 cd e1                                      strh r3, [sp, #0x26]
006b9024  00 40 a0 e1                                      mov r4, r0
006b9028  50 80 9d e5                                      ldr r8, [sp, #0x50]
006b902c  1d fe ff eb                                      bl #0x6b88a8
006b9030  10 00 9d e5                                      ldr r0, [sp, #0x10]
006b9034  c8 a2 9f e5                                      ldr sl, [pc, #0x2c8]
006b9038  00 00 50 e3                                      cmp r0, #0
006b903c  0a a0 8f e0                                      add sl, pc, sl
006b9040  00 00 00 0a                                      beq #0x6b9048
006b9044  4e 91 f1 eb                                      bl #0x31d584
006b9048  b8 32 9f e5                                      ldr r3, [pc, #0x2b8]
006b904c  00 20 a0 e3                                      mov r2, #0
006b9050  01 10 a0 e3                                      mov r1, #1
006b9054  03 30 9a e7                                      ldr r3, [sl, r3]
006b9058  02 00 a0 e3                                      mov r0, #2
006b905c  3c 20 84 e5                                      str r2, [r4, #0x3c]
006b9060  08 30 83 e2                                      add r3, r3, #8
006b9064  44 20 84 e5                                      str r2, [r4, #0x44]
006b9068  50 20 84 e5                                      str r2, [r4, #0x50]
006b906c  54 20 84 e5                                      str r2, [r4, #0x54]
006b9070  58 20 84 e5                                      str r2, [r4, #0x58]
006b9074  5c 20 84 e5                                      str r2, [r4, #0x5c]
006b9078  64 20 84 e5                                      str r2, [r4, #0x64]
006b907c  68 20 84 e5                                      str r2, [r4, #0x68]
006b9080  6c 20 84 e5                                      str r2, [r4, #0x6c]
006b9084  4c 00 84 e5                                      str r0, [r4, #0x4c]
006b9088  00 30 84 e5                                      str r3, [r4]
006b908c  48 10 84 e5                                      str r1, [r4, #0x48]
006b9090  38 60 84 e5                                      str r6, [r4, #0x38]
006b9094  40 70 84 e5                                      str r7, [r4, #0x40]
006b9098  04 20 8d e5                                      str r2, [sp, #4]
006b909c  08 10 8d e5                                      str r1, [sp, #8]
006b90a0  00 60 8d e5                                      str r6, [sp]
006b90a4  2c 00 8d e2                                      add r0, sp, #0x2c
006b90a8  08 30 a0 e1                                      mov r3, r8
006b90ac  00 c0 95 e5                                      ldr ip, [r5]
006b90b0  05 10 a0 e1                                      mov r1, r5
006b90b4  0f e0 a0 e1                                      mov lr, pc
006b90b8  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006b90bc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006b90c0  00 00 53 e3                                      cmp r3, #0
006b90c4  04 20 93 15                                      ldrne r2, [r3, #4]
006b90c8  01 20 82 12                                      addne r2, r2, #1
006b90cc  04 20 83 15                                      strne r2, [r3, #4]
006b90d0  58 00 94 e5                                      ldr r0, [r4, #0x58]
006b90d4  58 30 84 e5                                      str r3, [r4, #0x58]
006b90d8  00 00 50 e3                                      cmp r0, #0
006b90dc  00 00 00 0a                                      beq #0x6b90e4
006b90e0  27 91 f1 eb                                      bl #0x31d584
006b90e4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006b90e8  00 00 50 e3                                      cmp r0, #0
006b90ec  00 00 00 0a                                      beq #0x6b90f4
006b90f0  23 91 f1 eb                                      bl #0x31d584
006b90f4  01 20 a0 e3                                      mov r2, #1
006b90f8  00 30 a0 e3                                      mov r3, #0
006b90fc  08 20 8d e5                                      str r2, [sp, #8]
006b9100  04 30 8d e5                                      str r3, [sp, #4]
006b9104  00 70 8d e5                                      str r7, [sp]
006b9108  08 30 a0 e1                                      mov r3, r8
006b910c  28 00 8d e2                                      add r0, sp, #0x28
006b9110  05 10 a0 e1                                      mov r1, r5
006b9114  00 c0 95 e5                                      ldr ip, [r5]
006b9118  0f e0 a0 e1                                      mov lr, pc
006b911c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006b9120  28 30 9d e5                                      ldr r3, [sp, #0x28]
006b9124  00 00 53 e3                                      cmp r3, #0
006b9128  04 20 93 15                                      ldrne r2, [r3, #4]
006b912c  01 20 82 12                                      addne r2, r2, #1
006b9130  04 20 83 15                                      strne r2, [r3, #4]
006b9134  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
006b9138  5c 30 84 e5                                      str r3, [r4, #0x5c]
006b913c  00 00 50 e3                                      cmp r0, #0
006b9140  00 00 00 0a                                      beq #0x6b9148
006b9144  0e 91 f1 eb                                      bl #0x31d584
006b9148  28 00 9d e5                                      ldr r0, [sp, #0x28]
006b914c  00 00 50 e3                                      cmp r0, #0
006b9150  00 00 00 0a                                      beq #0x6b9158
006b9154  0a 91 f1 eb                                      bl #0x31d584
006b9158  58 30 94 e5                                      ldr r3, [r4, #0x58]
006b915c  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006b9160  08 10 12 e2                                      ands r1, r2, #8
006b9164  01 00 00 0a                                      beq #0x6b9170
006b9168  02 00 12 e3                                      tst r2, #2
006b916c  0c 00 00 0a                                      beq #0x6b91a4
006b9170  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006b9174  04 00 52 e3                                      cmp r2, #4
006b9178  07 00 00 0a                                      beq #0x6b919c
006b917c  03 00 a0 e1                                      mov r0, r3
006b9180  00 10 a0 e3                                      mov r1, #0
006b9184  00 30 93 e5                                      ldr r3, [r3]
006b9188  0f e0 a0 e1                                      mov lr, pc
006b918c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b9190  58 30 94 e5                                      ldr r3, [r4, #0x58]
006b9194  12 10 d3 e5                                      ldrb r1, [r3, #0x12]
006b9198  08 10 01 e2                                      and r1, r1, #8
006b919c  00 00 51 e3                                      cmp r1, #0
006b91a0  24 00 00 0a                                      beq #0x6b9238
006b91a4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006b91a8  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006b91ac  08 10 12 e2                                      ands r1, r2, #8
006b91b0  01 00 00 0a                                      beq #0x6b91bc
006b91b4  02 00 12 e3                                      tst r2, #2
006b91b8  0c 00 00 0a                                      beq #0x6b91f0
006b91bc  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006b91c0  04 00 52 e3                                      cmp r2, #4
006b91c4  07 00 00 0a                                      beq #0x6b91e8
006b91c8  03 00 a0 e1                                      mov r0, r3
006b91cc  00 10 a0 e3                                      mov r1, #0
006b91d0  00 30 93 e5                                      ldr r3, [r3]
006b91d4  0f e0 a0 e1                                      mov lr, pc
006b91d8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b91dc  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006b91e0  12 10 d3 e5                                      ldrb r1, [r3, #0x12]
006b91e4  08 10 01 e2                                      and r1, r1, #8
006b91e8  00 00 51 e3                                      cmp r1, #0
006b91ec  27 00 00 0a                                      beq #0x6b9290
006b91f0  00 00 53 e3                                      cmp r3, #0
006b91f4  04 20 93 15                                      ldrne r2, [r3, #4]
006b91f8  01 20 82 12                                      addne r2, r2, #1
006b91fc  04 20 83 15                                      strne r2, [r3, #4]
006b9200  18 00 94 e5                                      ldr r0, [r4, #0x18]
006b9204  18 30 84 e5                                      str r3, [r4, #0x18]
006b9208  00 00 50 e3                                      cmp r0, #0
006b920c  00 00 00 0a                                      beq #0x6b9214
006b9210  db 90 f1 eb                                      bl #0x31d584
006b9214  00 30 a0 e3                                      mov r3, #0
006b9218  01 20 a0 e3                                      mov r2, #1
006b921c  28 30 84 e5                                      str r3, [r4, #0x28]
006b9220  bc 22 c4 e1                                      strh r2, [r4, #0x2c]
006b9224  20 30 84 e5                                      str r3, [r4, #0x20]
006b9228  24 30 84 e5                                      str r3, [r4, #0x24]
006b922c  04 00 a0 e1                                      mov r0, r4
006b9230  34 d0 8d e2                                      add sp, sp, #0x34
006b9234  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006b9238  06 00 a0 e1                                      mov r0, r6
006b923c  d9 eb f9 eb                                      bl #0x5341a8
006b9240  01 30 a0 e3                                      mov r3, #1
006b9244  00 20 a0 e1                                      mov r2, r0
006b9248  06 10 a0 e1                                      mov r1, r6
006b924c  58 00 94 e5                                      ldr r0, [r4, #0x58]
006b9250  97 a2 fb eb                                      bl #0x5a1cb4
006b9254  58 30 94 e5                                      ldr r3, [r4, #0x58]
006b9258  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006b925c  08 00 12 e3                                      tst r2, #8
006b9260  24 00 00 1a                                      bne #0x6b92f8
006b9264  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006b9268  04 00 52 e3                                      cmp r2, #4
006b926c  04 00 00 0a                                      beq #0x6b9284
006b9270  03 00 a0 e1                                      mov r0, r3
006b9274  00 10 a0 e3                                      mov r1, #0
006b9278  00 30 93 e5                                      ldr r3, [r3]
006b927c  0f e0 a0 e1                                      mov lr, pc
006b9280  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b9284  01 30 a0 e3                                      mov r3, #1
006b9288  60 30 c4 e5                                      strb r3, [r4, #0x60]
006b928c  c4 ff ff ea                                      b #0x6b91a4
006b9290  07 00 a0 e1                                      mov r0, r7
006b9294  c3 eb f9 eb                                      bl #0x5341a8
006b9298  01 30 a0 e3                                      mov r3, #1
006b929c  00 20 a0 e1                                      mov r2, r0
006b92a0  07 10 a0 e1                                      mov r1, r7
006b92a4  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
006b92a8  81 a2 fb eb                                      bl #0x5a1cb4
006b92ac  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006b92b0  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006b92b4  08 00 12 e3                                      tst r2, #8
006b92b8  0b 00 00 1a                                      bne #0x6b92ec
006b92bc  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006b92c0  04 00 52 e3                                      cmp r2, #4
006b92c4  05 00 00 0a                                      beq #0x6b92e0
006b92c8  03 00 a0 e1                                      mov r0, r3
006b92cc  00 10 a0 e3                                      mov r1, #0
006b92d0  00 30 93 e5                                      ldr r3, [r3]
006b92d4  0f e0 a0 e1                                      mov lr, pc
006b92d8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b92dc  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006b92e0  01 20 a0 e3                                      mov r2, #1
006b92e4  60 20 c4 e5                                      strb r2, [r4, #0x60]
006b92e8  c0 ff ff ea                                      b #0x6b91f0
006b92ec  02 00 12 e3                                      tst r2, #2
006b92f0  fa ff ff 0a                                      beq #0x6b92e0
006b92f4  f0 ff ff ea                                      b #0x6b92bc
006b92f8  02 00 12 e3                                      tst r2, #2
006b92fc  e0 ff ff 0a                                      beq #0x6b9284
006b9300  d7 ff ff ea                                      b #0x6b9264
; mapping-symbol data/literal pool
006b9304  54 ba 2d 00 5c 09 00 00                          .byte 0x54, 0xba, 0x2d, 0x00, 0x5c, 0x09, 0x00, 0x00
