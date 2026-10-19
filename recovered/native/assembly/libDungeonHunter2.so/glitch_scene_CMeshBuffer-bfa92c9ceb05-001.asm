; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b88a8, declared_size=168, range_size=168, mode=arm
; class-group: glitch::scene::CMeshBuffer
; alias: _ZN6glitch5scene11CMeshBufferC2EjRKNS_5video16CPrimitiveStreamEb.clone.3
; demangled: glitch::scene::CMeshBuffer::CMeshBuffer(unsigned int, glitch::video::CPrimitiveStream const&, bool) [clone .clone.3]
; decoder-mode: arm
006b88a8  98 30 9f e5                                      ldr r3, [pc, #0x98]
006b88ac  98 c0 9f e5                                      ldr ip, [pc, #0x98]
006b88b0  70 40 2d e9                                      push {r4, r5, r6, lr}
006b88b4  03 30 8f e0                                      add r3, pc, r3
006b88b8  0c c0 93 e7                                      ldr ip, [r3, ip]
006b88bc  00 40 a0 e1                                      mov r4, r0
006b88c0  00 00 a0 e3                                      mov r0, #0
006b88c4  08 c0 8c e2                                      add ip, ip, #8
006b88c8  10 00 84 e5                                      str r0, [r4, #0x10]
006b88cc  04 00 84 e5                                      str r0, [r4, #4]
006b88d0  08 00 84 e5                                      str r0, [r4, #8]
006b88d4  0c 00 84 e5                                      str r0, [r4, #0xc]
006b88d8  00 c0 84 e5                                      str ip, [r4]
006b88dc  14 00 84 e2                                      add r0, r4, #0x14
006b88e0  02 50 a0 e1                                      mov r5, r2
006b88e4  9c a2 fb eb                                      bl #0x5a135c
006b88e8  00 30 95 e5                                      ldr r3, [r5]
006b88ec  04 00 a0 e1                                      mov r0, r4
006b88f0  18 30 84 e5                                      str r3, [r4, #0x18]
006b88f4  00 00 53 e3                                      cmp r3, #0
006b88f8  04 20 93 15                                      ldrne r2, [r3, #4]
006b88fc  01 20 82 12                                      addne r2, r2, #1
006b8900  04 20 83 15                                      strne r2, [r3, #4]
006b8904  04 30 95 e5                                      ldr r3, [r5, #4]
006b8908  1c 30 84 e5                                      str r3, [r4, #0x1c]
006b890c  08 30 95 e5                                      ldr r3, [r5, #8]
006b8910  20 30 84 e5                                      str r3, [r4, #0x20]
006b8914  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006b8918  24 30 84 e5                                      str r3, [r4, #0x24]
006b891c  10 30 95 e5                                      ldr r3, [r5, #0x10]
006b8920  28 30 84 e5                                      str r3, [r4, #0x28]
006b8924  b4 31 d5 e1                                      ldrh r3, [r5, #0x14]
006b8928  bc 32 c4 e1                                      strh r3, [r4, #0x2c]
006b892c  b6 51 d5 e1                                      ldrh r5, [r5, #0x16]
006b8930  00 30 a0 e3                                      mov r3, #0
006b8934  30 30 84 e5                                      str r3, [r4, #0x30]
006b8938  01 30 a0 e3                                      mov r3, #1
006b893c  be 52 c4 e1                                      strh r5, [r4, #0x2e]
006b8940  34 30 c4 e5                                      strb r3, [r4, #0x34]
006b8944  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006b8948  dc c1 2d 00 54 0c 00 00                          .byte 0xdc, 0xc1, 0x2d, 0x00, 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x006bc6d8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::scene::CMeshBuffer
; alias: _ZN6glitch5scene11CMeshBuffer8onDeleteEv
; demangled: glitch::scene::CMeshBuffer::onDelete()
; decoder-mode: arm
006bc6d8  10 40 2d e9                                      push {r4, lr}
006bc6dc  30 30 90 e5                                      ldr r3, [r0, #0x30]
006bc6e0  00 00 53 e3                                      cmp r3, #0
006bc6e4  03 00 00 0a                                      beq #0x6bc6f8
006bc6e8  03 00 a0 e1                                      mov r0, r3
006bc6ec  00 30 93 e5                                      ldr r3, [r3]
006bc6f0  0f e0 a0 e1                                      mov lr, pc
006bc6f4  08 f0 93 e5                                      ldr pc, [r3, #8]
006bc6f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006bc8c4, declared_size=344, range_size=344, mode=arm
; class-group: glitch::scene::CMeshBuffer
; alias: _ZN6glitch5scene11CMeshBufferD1Ev
; demangled: glitch::scene::CMeshBuffer::~CMeshBuffer()
; decoder-mode: arm
006bc8c4  70 40 2d e9                                      push {r4, r5, r6, lr}
006bc8c8  44 31 9f e5                                      ldr r3, [pc, #0x144]
006bc8cc  44 21 9f e5                                      ldr r2, [pc, #0x144]
006bc8d0  30 10 90 e5                                      ldr r1, [r0, #0x30]
006bc8d4  03 30 8f e0                                      add r3, pc, r3
006bc8d8  02 20 93 e7                                      ldr r2, [r3, r2]
006bc8dc  00 00 51 e3                                      cmp r1, #0
006bc8e0  00 40 a0 e1                                      mov r4, r0
006bc8e4  08 20 82 e2                                      add r2, r2, #8
006bc8e8  00 20 80 e5                                      str r2, [r0]
006bc8ec  05 00 00 0a                                      beq #0x6bc908
006bc8f0  00 30 91 e5                                      ldr r3, [r1]
006bc8f4  01 00 a0 e1                                      mov r0, r1
006bc8f8  0f e0 a0 e1                                      mov lr, pc
006bc8fc  04 f0 93 e5                                      ldr pc, [r3, #4]
006bc900  00 30 a0 e3                                      mov r3, #0
006bc904  30 30 84 e5                                      str r3, [r4, #0x30]
006bc908  18 00 94 e5                                      ldr r0, [r4, #0x18]
006bc90c  00 00 50 e3                                      cmp r0, #0
006bc910  00 00 00 0a                                      beq #0x6bc918
006bc914  1a 83 f1 eb                                      bl #0x31d584
006bc918  14 50 94 e5                                      ldr r5, [r4, #0x14]
006bc91c  00 00 55 e3                                      cmp r5, #0
006bc920  04 00 00 0a                                      beq #0x6bc938
006bc924  00 30 95 e5                                      ldr r3, [r5]
006bc928  01 30 43 e2                                      sub r3, r3, #1
006bc92c  00 00 53 e3                                      cmp r3, #0
006bc930  00 30 85 e5                                      str r3, [r5]
006bc934  31 00 00 0a                                      beq #0x6bca00
006bc938  10 50 94 e5                                      ldr r5, [r4, #0x10]
006bc93c  00 00 55 e3                                      cmp r5, #0
006bc940  0c 00 00 0a                                      beq #0x6bc978
006bc944  00 30 95 e5                                      ldr r3, [r5]
006bc948  01 30 43 e2                                      sub r3, r3, #1
006bc94c  00 00 53 e3                                      cmp r3, #0
006bc950  00 30 85 e5                                      str r3, [r5]
006bc954  05 00 00 1a                                      bne #0x6bc970
006bc958  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006bc95c  00 00 50 e3                                      cmp r0, #0
006bc960  00 00 00 0a                                      beq #0x6bc968
006bc964  d3 45 f1 eb                                      bl #0x30e0b8
006bc968  00 30 a0 e3                                      mov r3, #0
006bc96c  0c 30 85 e5                                      str r3, [r5, #0xc]
006bc970  00 30 a0 e3                                      mov r3, #0
006bc974  10 30 84 e5                                      str r3, [r4, #0x10]
006bc978  0c 50 94 e5                                      ldr r5, [r4, #0xc]
006bc97c  00 00 55 e3                                      cmp r5, #0
006bc980  0c 00 00 0a                                      beq #0x6bc9b8
006bc984  00 30 95 e5                                      ldr r3, [r5]
006bc988  01 30 43 e2                                      sub r3, r3, #1
006bc98c  00 00 53 e3                                      cmp r3, #0
006bc990  00 30 85 e5                                      str r3, [r5]
006bc994  05 00 00 1a                                      bne #0x6bc9b0
006bc998  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006bc99c  00 00 50 e3                                      cmp r0, #0
006bc9a0  00 00 00 0a                                      beq #0x6bc9a8
006bc9a4  c3 45 f1 eb                                      bl #0x30e0b8
006bc9a8  00 30 a0 e3                                      mov r3, #0
006bc9ac  0c 30 85 e5                                      str r3, [r5, #0xc]
006bc9b0  00 30 a0 e3                                      mov r3, #0
006bc9b4  0c 30 84 e5                                      str r3, [r4, #0xc]
006bc9b8  08 50 94 e5                                      ldr r5, [r4, #8]
006bc9bc  00 00 55 e3                                      cmp r5, #0
006bc9c0  0c 00 00 0a                                      beq #0x6bc9f8
006bc9c4  00 30 95 e5                                      ldr r3, [r5]
006bc9c8  01 30 43 e2                                      sub r3, r3, #1
006bc9cc  00 00 53 e3                                      cmp r3, #0
006bc9d0  00 30 85 e5                                      str r3, [r5]
006bc9d4  05 00 00 1a                                      bne #0x6bc9f0
006bc9d8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006bc9dc  00 00 50 e3                                      cmp r0, #0
006bc9e0  00 00 00 0a                                      beq #0x6bc9e8
006bc9e4  b3 45 f1 eb                                      bl #0x30e0b8
006bc9e8  00 30 a0 e3                                      mov r3, #0
006bc9ec  0c 30 85 e5                                      str r3, [r5, #0xc]
006bc9f0  00 30 a0 e3                                      mov r3, #0
006bc9f4  08 30 84 e5                                      str r3, [r4, #8]
006bc9f8  04 00 a0 e1                                      mov r0, r4
006bc9fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
006bca00  05 00 a0 e1                                      mov r0, r5
006bca04  04 90 fb eb                                      bl #0x5a0a1c
006bca08  05 00 a0 e1                                      mov r0, r5
006bca0c  27 46 f1 eb                                      bl #0x30e2b0
006bca10  c8 ff ff ea                                      b #0x6bc938
; mapping-symbol data/literal pool
006bca14  bc 81 2d 00 54 0c 00 00                          .byte 0xbc, 0x81, 0x2d, 0x00, 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x006bca1c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CMeshBuffer
; alias: _ZN6glitch5scene11CMeshBufferD0Ev
; demangled: glitch::scene::CMeshBuffer::~CMeshBuffer()
; decoder-mode: arm
006bca1c  10 40 2d e9                                      push {r4, lr}
006bca20  00 40 a0 e1                                      mov r4, r0
006bca24  a6 ff ff eb                                      bl #0x6bc8c4
006bca28  04 00 a0 e1                                      mov r0, r4
006bca2c  1f 46 f1 eb                                      bl #0x30e2b0
006bca30  04 00 a0 e1                                      mov r0, r4
006bca34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006bca38, declared_size=344, range_size=344, mode=arm
; class-group: glitch::scene::CMeshBuffer
; alias: _ZN6glitch5scene11CMeshBufferD2Ev
; demangled: glitch::scene::CMeshBuffer::~CMeshBuffer()
; decoder-mode: arm
006bca38  70 40 2d e9                                      push {r4, r5, r6, lr}
006bca3c  44 31 9f e5                                      ldr r3, [pc, #0x144]
006bca40  44 21 9f e5                                      ldr r2, [pc, #0x144]
006bca44  30 10 90 e5                                      ldr r1, [r0, #0x30]
006bca48  03 30 8f e0                                      add r3, pc, r3
006bca4c  02 20 93 e7                                      ldr r2, [r3, r2]
006bca50  00 00 51 e3                                      cmp r1, #0
006bca54  00 40 a0 e1                                      mov r4, r0
006bca58  08 20 82 e2                                      add r2, r2, #8
006bca5c  00 20 80 e5                                      str r2, [r0]
006bca60  05 00 00 0a                                      beq #0x6bca7c
006bca64  00 30 91 e5                                      ldr r3, [r1]
006bca68  01 00 a0 e1                                      mov r0, r1
006bca6c  0f e0 a0 e1                                      mov lr, pc
006bca70  04 f0 93 e5                                      ldr pc, [r3, #4]
006bca74  00 30 a0 e3                                      mov r3, #0
006bca78  30 30 84 e5                                      str r3, [r4, #0x30]
006bca7c  18 00 94 e5                                      ldr r0, [r4, #0x18]
006bca80  00 00 50 e3                                      cmp r0, #0
006bca84  00 00 00 0a                                      beq #0x6bca8c
006bca88  bd 82 f1 eb                                      bl #0x31d584
006bca8c  14 50 94 e5                                      ldr r5, [r4, #0x14]
006bca90  00 00 55 e3                                      cmp r5, #0
006bca94  04 00 00 0a                                      beq #0x6bcaac
006bca98  00 30 95 e5                                      ldr r3, [r5]
006bca9c  01 30 43 e2                                      sub r3, r3, #1
006bcaa0  00 00 53 e3                                      cmp r3, #0
006bcaa4  00 30 85 e5                                      str r3, [r5]
006bcaa8  31 00 00 0a                                      beq #0x6bcb74
006bcaac  10 50 94 e5                                      ldr r5, [r4, #0x10]
006bcab0  00 00 55 e3                                      cmp r5, #0
006bcab4  0c 00 00 0a                                      beq #0x6bcaec
006bcab8  00 30 95 e5                                      ldr r3, [r5]
006bcabc  01 30 43 e2                                      sub r3, r3, #1
006bcac0  00 00 53 e3                                      cmp r3, #0
006bcac4  00 30 85 e5                                      str r3, [r5]
006bcac8  05 00 00 1a                                      bne #0x6bcae4
006bcacc  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006bcad0  00 00 50 e3                                      cmp r0, #0
006bcad4  00 00 00 0a                                      beq #0x6bcadc
006bcad8  76 45 f1 eb                                      bl #0x30e0b8
006bcadc  00 30 a0 e3                                      mov r3, #0
006bcae0  0c 30 85 e5                                      str r3, [r5, #0xc]
006bcae4  00 30 a0 e3                                      mov r3, #0
006bcae8  10 30 84 e5                                      str r3, [r4, #0x10]
006bcaec  0c 50 94 e5                                      ldr r5, [r4, #0xc]
006bcaf0  00 00 55 e3                                      cmp r5, #0
006bcaf4  0c 00 00 0a                                      beq #0x6bcb2c
006bcaf8  00 30 95 e5                                      ldr r3, [r5]
006bcafc  01 30 43 e2                                      sub r3, r3, #1
006bcb00  00 00 53 e3                                      cmp r3, #0
006bcb04  00 30 85 e5                                      str r3, [r5]
006bcb08  05 00 00 1a                                      bne #0x6bcb24
006bcb0c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006bcb10  00 00 50 e3                                      cmp r0, #0
006bcb14  00 00 00 0a                                      beq #0x6bcb1c
006bcb18  66 45 f1 eb                                      bl #0x30e0b8
006bcb1c  00 30 a0 e3                                      mov r3, #0
006bcb20  0c 30 85 e5                                      str r3, [r5, #0xc]
006bcb24  00 30 a0 e3                                      mov r3, #0
006bcb28  0c 30 84 e5                                      str r3, [r4, #0xc]
006bcb2c  08 50 94 e5                                      ldr r5, [r4, #8]
006bcb30  00 00 55 e3                                      cmp r5, #0
006bcb34  0c 00 00 0a                                      beq #0x6bcb6c
006bcb38  00 30 95 e5                                      ldr r3, [r5]
006bcb3c  01 30 43 e2                                      sub r3, r3, #1
006bcb40  00 00 53 e3                                      cmp r3, #0
006bcb44  00 30 85 e5                                      str r3, [r5]
006bcb48  05 00 00 1a                                      bne #0x6bcb64
006bcb4c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006bcb50  00 00 50 e3                                      cmp r0, #0
006bcb54  00 00 00 0a                                      beq #0x6bcb5c
006bcb58  56 45 f1 eb                                      bl #0x30e0b8
006bcb5c  00 30 a0 e3                                      mov r3, #0
006bcb60  0c 30 85 e5                                      str r3, [r5, #0xc]
006bcb64  00 30 a0 e3                                      mov r3, #0
006bcb68  08 30 84 e5                                      str r3, [r4, #8]
006bcb6c  04 00 a0 e1                                      mov r0, r4
006bcb70  70 80 bd e8                                      pop {r4, r5, r6, pc}
006bcb74  05 00 a0 e1                                      mov r0, r5
006bcb78  a7 8f fb eb                                      bl #0x5a0a1c
006bcb7c  05 00 a0 e1                                      mov r0, r5
006bcb80  ca 45 f1 eb                                      bl #0x30e2b0
006bcb84  c8 ff ff ea                                      b #0x6bcaac
; mapping-symbol data/literal pool
006bcb88  48 80 2d 00 54 0c 00 00                          .byte 0x48, 0x80, 0x2d, 0x00, 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x006bcb90, declared_size=352, range_size=352, mode=arm
; class-group: glitch::scene::CMeshBuffer
; alias: _ZNK6glitch5scene11CMeshBuffer5cloneEv
; demangled: glitch::scene::CMeshBuffer::clone() const
; decoder-mode: arm
006bcb90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006bcb94  14 50 91 e5                                      ldr r5, [r1, #0x14]
006bcb98  08 d0 4d e2                                      sub sp, sp, #8
006bcb9c  01 40 a0 e1                                      mov r4, r1
006bcba0  00 00 55 e3                                      cmp r5, #0
006bcba4  00 30 95 15                                      ldrne r3, [r5]
006bcba8  00 70 a0 e1                                      mov r7, r0
006bcbac  05 10 a0 e1                                      mov r1, r5
006bcbb0  01 30 83 12                                      addne r3, r3, #1
006bcbb4  00 30 85 15                                      strne r3, [r5]
006bcbb8  04 00 8d e2                                      add r0, sp, #4
006bcbbc  d3 91 fb eb                                      bl #0x5a1310
006bcbc0  38 00 a0 e3                                      mov r0, #0x38
006bcbc4  00 10 a0 e3                                      mov r1, #0
006bcbc8  34 80 d4 e5                                      ldrb r8, [r4, #0x34]
006bcbcc  76 dd f9 eb                                      bl #0x5341ac
006bcbd0  10 61 9f e5                                      ldr r6, [pc, #0x110]
006bcbd4  10 21 9f e5                                      ldr r2, [pc, #0x110]
006bcbd8  00 30 a0 e3                                      mov r3, #0
006bcbdc  06 60 8f e0                                      add r6, pc, r6
006bcbe0  02 20 96 e7                                      ldr r2, [r6, r2]
006bcbe4  04 30 80 e5                                      str r3, [r0, #4]
006bcbe8  10 30 80 e5                                      str r3, [r0, #0x10]
006bcbec  08 20 82 e2                                      add r2, r2, #8
006bcbf0  00 20 80 e5                                      str r2, [r0]
006bcbf4  08 30 80 e5                                      str r3, [r0, #8]
006bcbf8  0c 30 80 e5                                      str r3, [r0, #0xc]
006bcbfc  04 30 9d e5                                      ldr r3, [sp, #4]
006bcc00  14 30 80 e5                                      str r3, [r0, #0x14]
006bcc04  00 00 53 e3                                      cmp r3, #0
006bcc08  00 20 93 15                                      ldrne r2, [r3]
006bcc0c  01 20 82 12                                      addne r2, r2, #1
006bcc10  00 20 83 15                                      strne r2, [r3]
006bcc14  18 30 94 e5                                      ldr r3, [r4, #0x18]
006bcc18  18 30 80 e5                                      str r3, [r0, #0x18]
006bcc1c  00 00 53 e3                                      cmp r3, #0
006bcc20  04 20 93 15                                      ldrne r2, [r3, #4]
006bcc24  01 20 82 12                                      addne r2, r2, #1
006bcc28  04 20 83 15                                      strne r2, [r3, #4]
006bcc2c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006bcc30  1c 30 80 e5                                      str r3, [r0, #0x1c]
006bcc34  20 30 94 e5                                      ldr r3, [r4, #0x20]
006bcc38  20 30 80 e5                                      str r3, [r0, #0x20]
006bcc3c  24 30 94 e5                                      ldr r3, [r4, #0x24]
006bcc40  24 30 80 e5                                      str r3, [r0, #0x24]
006bcc44  28 30 94 e5                                      ldr r3, [r4, #0x28]
006bcc48  28 30 80 e5                                      str r3, [r0, #0x28]
006bcc4c  bc 32 d4 e1                                      ldrh r3, [r4, #0x2c]
006bcc50  bc 32 c0 e1                                      strh r3, [r0, #0x2c]
006bcc54  be 42 d4 e1                                      ldrh r4, [r4, #0x2e]
006bcc58  00 30 a0 e3                                      mov r3, #0
006bcc5c  30 30 80 e5                                      str r3, [r0, #0x30]
006bcc60  be 42 c0 e1                                      strh r4, [r0, #0x2e]
006bcc64  34 80 c0 e5                                      strb r8, [r0, #0x34]
006bcc68  00 00 87 e5                                      str r0, [r7]
006bcc6c  04 30 90 e5                                      ldr r3, [r0, #4]
006bcc70  01 30 83 e2                                      add r3, r3, #1
006bcc74  04 30 80 e5                                      str r3, [r0, #4]
006bcc78  04 40 9d e5                                      ldr r4, [sp, #4]
006bcc7c  00 00 54 e3                                      cmp r4, #0
006bcc80  04 00 00 0a                                      beq #0x6bcc98
006bcc84  00 30 94 e5                                      ldr r3, [r4]
006bcc88  01 30 43 e2                                      sub r3, r3, #1
006bcc8c  00 00 53 e3                                      cmp r3, #0
006bcc90  00 30 84 e5                                      str r3, [r4]
006bcc94  0e 00 00 0a                                      beq #0x6bccd4
006bcc98  00 00 55 e3                                      cmp r5, #0
006bcc9c  04 00 00 0a                                      beq #0x6bccb4
006bcca0  00 30 95 e5                                      ldr r3, [r5]
006bcca4  01 30 43 e2                                      sub r3, r3, #1
006bcca8  00 00 53 e3                                      cmp r3, #0
006bccac  00 30 85 e5                                      str r3, [r5]
006bccb0  02 00 00 0a                                      beq #0x6bccc0
006bccb4  07 00 a0 e1                                      mov r0, r7
006bccb8  08 d0 8d e2                                      add sp, sp, #8
006bccbc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006bccc0  05 00 a0 e1                                      mov r0, r5
006bccc4  54 8f fb eb                                      bl #0x5a0a1c
006bccc8  05 00 a0 e1                                      mov r0, r5
006bcccc  77 45 f1 eb                                      bl #0x30e2b0
006bccd0  f7 ff ff ea                                      b #0x6bccb4
006bccd4  04 00 a0 e1                                      mov r0, r4
006bccd8  4f 8f fb eb                                      bl #0x5a0a1c
006bccdc  04 00 a0 e1                                      mov r0, r4
006bcce0  72 45 f1 eb                                      bl #0x30e2b0
006bcce4  eb ff ff ea                                      b #0x6bcc98
; mapping-symbol data/literal pool
006bcce8  b4 7e 2d 00 54 0c 00 00                          .byte 0xb4, 0x7e, 0x2d, 0x00, 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x006bcf80, declared_size=2680, range_size=2680, mode=arm
; class-group: glitch::scene::CMeshBuffer
; alias: _ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b
; demangled: glitch::scene::CMeshBuffer::CMeshBuffer(glitch::video::IVideoDriver*, glitch::collada::SMesh&, unsigned int, glitch::collada::SBufferConfig const&, glitch::collada::SBufferConfig const&, bool)
; decoder-mode: arm
006bcf80  64 ca 9f e5                                      ldr ip, [pc, #0xa64]
006bcf84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006bcf88  60 ea 9f e5                                      ldr lr, [pc, #0xa60]
006bcf8c  0c c0 8f e0                                      add ip, pc, ip
006bcf90  00 40 a0 e1                                      mov r4, r0
006bcf94  0e e0 9c e7                                      ldr lr, [ip, lr]
006bcf98  00 00 a0 e3                                      mov r0, #0
006bcf9c  14 00 84 e5                                      str r0, [r4, #0x14]
006bcfa0  08 e0 8e e2                                      add lr, lr, #8
006bcfa4  00 e0 84 e5                                      str lr, [r4]
006bcfa8  04 00 84 e5                                      str r0, [r4, #4]
006bcfac  08 00 84 e5                                      str r0, [r4, #8]
006bcfb0  0c 00 84 e5                                      str r0, [r4, #0xc]
006bcfb4  10 00 84 e5                                      str r0, [r4, #0x10]
006bcfb8  38 50 a0 e3                                      mov r5, #0x38
006bcfbc  95 03 05 e0                                      mul r5, r5, r3
006bcfc0  02 60 a0 e1                                      mov r6, r2
006bcfc4  10 20 92 e5                                      ldr r2, [r2, #0x10]
006bcfc8  01 90 a0 e1                                      mov sb, r1
006bcfcc  20 3a 9f e5                                      ldr r3, [pc, #0xa20]
006bcfd0  05 10 82 e0                                      add r1, r2, r5
006bcfd4  24 00 91 e5                                      ldr r0, [r1, #0x24]
006bcfd8  05 20 92 e7                                      ldr r2, [r2, r5]
006bcfdc  44 d0 4d e2                                      sub sp, sp, #0x44
006bcfe0  03 30 8f e0                                      add r3, pc, r3
006bcfe4  01 08 50 e3                                      cmp r0, #0x10000
006bcfe8  02 e1 93 e7                                      ldr lr, [r3, r2, lsl #2]
006bcfec  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
006bcff0  70 80 dd e5                                      ldrb r8, [sp, #0x70]
006bcff4  5c 01 00 ba                                      blt #0x6bd56c
006bcff8  28 c0 91 e5                                      ldr ip, [r1, #0x28]
006bcffc  02 20 a0 e3                                      mov r2, #2
006bd000  30 30 91 e5                                      ldr r3, [r1, #0x30]
006bd004  20 10 91 e5                                      ldr r1, [r1, #0x20]
006bd008  01 00 80 e2                                      add r0, r0, #1
006bd00c  00 00 53 e3                                      cmp r3, #0
006bd010  18 30 84 e5                                      str r3, [r4, #0x18]
006bd014  04 a0 93 15                                      ldrne sl, [r3, #4]
006bd018  01 a0 8a 12                                      addne sl, sl, #1
006bd01c  04 a0 83 15                                      strne sl, [r3, #4]
006bd020  00 30 a0 e3                                      mov r3, #0
006bd024  20 c0 84 e5                                      str ip, [r4, #0x20]
006bd028  24 10 84 e5                                      str r1, [r4, #0x24]
006bd02c  28 00 84 e5                                      str r0, [r4, #0x28]
006bd030  bc 22 c4 e1                                      strh r2, [r4, #0x2c]
006bd034  be e2 c4 e1                                      strh lr, [r4, #0x2e]
006bd038  34 30 c4 e5                                      strb r3, [r4, #0x34]
006bd03c  1c 30 84 e5                                      str r3, [r4, #0x1c]
006bd040  30 30 84 e5                                      str r3, [r4, #0x30]
006bd044  10 30 96 e5                                      ldr r3, [r6, #0x10]
006bd048  05 50 83 e0                                      add r5, r3, r5
006bd04c  30 a0 95 e5                                      ldr sl, [r5, #0x30]
006bd050  00 00 5a e3                                      cmp sl, #0
006bd054  51 01 00 0a                                      beq #0x6bd5a0
006bd058  00 b0 97 e5                                      ldr fp, [r7]
006bd05c  11 30 da e5                                      ldrb r3, [sl, #0x11]
006bd060  03 00 5b e1                                      cmp fp, r3
006bd064  0b 00 00 0a                                      beq #0x6bd098
006bd068  12 30 da e5                                      ldrb r3, [sl, #0x12]
006bd06c  08 00 13 e3                                      tst r3, #8
006bd070  85 01 00 1a                                      bne #0x6bd68c
006bd074  7b b0 ef e6                                      uxtb fp, fp
006bd078  04 00 5b e3                                      cmp fp, #4
006bd07c  11 b0 ca e5                                      strb fp, [sl, #0x11]
006bd080  04 00 00 0a                                      beq #0x6bd098
006bd084  08 30 9a e5                                      ldr r3, [sl, #8]
006bd088  00 00 53 e3                                      cmp r3, #0
006bd08c  12 30 da 15                                      ldrbne r3, [sl, #0x12]
006bd090  02 30 83 13                                      orrne r3, r3, #2
006bd094  12 30 ca 15                                      strbne r3, [sl, #0x12]
006bd098  04 30 d7 e5                                      ldrb r3, [r7, #4]
006bd09c  00 00 53 e3                                      cmp r3, #0
006bd0a0  6c 01 00 1a                                      bne #0x6bd658
006bd0a4  00 30 96 e5                                      ldr r3, [r6]
006bd0a8  00 00 53 e3                                      cmp r3, #0
006bd0ac  18 00 00 0a                                      beq #0x6bd114
006bd0b0  08 70 96 e5                                      ldr r7, [r6, #8]
006bd0b4  28 a0 97 e5                                      ldr sl, [r7, #0x28]
006bd0b8  00 00 5a e3                                      cmp sl, #0
006bd0bc  b0 01 00 0a                                      beq #0x6bd784
006bd0c0  68 00 9d e5                                      ldr r0, [sp, #0x68]
006bd0c4  11 30 da e5                                      ldrb r3, [sl, #0x11]
006bd0c8  00 70 90 e5                                      ldr r7, [r0]
006bd0cc  03 00 57 e1                                      cmp r7, r3
006bd0d0  0b 00 00 0a                                      beq #0x6bd104
006bd0d4  12 30 da e5                                      ldrb r3, [sl, #0x12]
006bd0d8  08 00 13 e3                                      tst r3, #8
006bd0dc  f9 01 00 1a                                      bne #0x6bd8c8
006bd0e0  77 70 ef e6                                      uxtb r7, r7
006bd0e4  04 00 57 e3                                      cmp r7, #4
006bd0e8  11 70 ca e5                                      strb r7, [sl, #0x11]
006bd0ec  04 00 00 0a                                      beq #0x6bd104
006bd0f0  08 30 9a e5                                      ldr r3, [sl, #8]
006bd0f4  00 00 53 e3                                      cmp r3, #0
006bd0f8  12 30 da 15                                      ldrbne r3, [sl, #0x12]
006bd0fc  02 30 83 13                                      orrne r3, r3, #2
006bd100  12 30 ca 15                                      strbne r3, [sl, #0x12]
006bd104  68 10 9d e5                                      ldr r1, [sp, #0x68]
006bd108  04 30 d1 e5                                      ldrb r3, [r1, #4]
006bd10c  00 00 53 e3                                      cmp r3, #0
006bd110  d9 01 00 1a                                      bne #0x6bd87c
006bd114  1e 0e a0 e3                                      mov r0, #0x1e0
006bd118  35 dd f9 eb                                      bl #0x5345f4
006bd11c  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bd120  dc 30 d5 e1                                      ldrsb r3, [r5, #0xc]
006bd124  00 70 a0 e1                                      mov r7, r0
006bd128  00 b0 a0 e3                                      mov fp, #0
006bd12c  09 00 a0 e1                                      mov r0, sb
006bd130  06 10 a0 e1                                      mov r1, r6
006bd134  05 20 a0 e1                                      mov r2, r5
006bd138  08 80 8d e5                                      str r8, [sp, #8]
006bd13c  80 08 8d e8                                      stm sp, {r7, fp}
006bd140  ea fe ff eb                                      bl #0x6bccf0
006bd144  01 a0 a0 e3                                      mov sl, #1
006bd148  00 80 a0 e1                                      mov r8, r0
006bd14c  14 50 8d e5                                      str r5, [sp, #0x14]
006bd150  10 50 8d e5                                      str r5, [sp, #0x10]
006bd154  10 00 9d e5                                      ldr r0, [sp, #0x10]
006bd158  06 10 a0 e1                                      mov r1, r6
006bd15c  05 20 a0 e1                                      mov r2, r5
006bd160  d0 c1 d0 e1                                      ldrsb ip, [r0, #0x10]
006bd164  09 00 a0 e1                                      mov r0, sb
006bd168  00 00 5c e3                                      cmp ip, #0
006bd16c  0c 30 a0 e1                                      mov r3, ip
006bd170  0d 00 00 ba                                      blt #0x6bd1ac
006bd174  04 80 8d e5                                      str r8, [sp, #4]
006bd178  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bd17c  02 c0 a0 e3                                      mov ip, #2
006bd180  1c ab 8a e1                                      orr sl, sl, ip, lsl fp
006bd184  08 80 8d e5                                      str r8, [sp, #8]
006bd188  00 70 8d e5                                      str r7, [sp]
006bd18c  d7 fe ff eb                                      bl #0x6bccf0
006bd190  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006bd194  01 b0 8b e2                                      add fp, fp, #1
006bd198  04 00 5b e3                                      cmp fp, #4
006bd19c  01 c0 8c e2                                      add ip, ip, #1
006bd1a0  00 80 a0 e1                                      mov r8, r0
006bd1a4  10 c0 8d e5                                      str ip, [sp, #0x10]
006bd1a8  e9 ff ff 1a                                      bne #0x6bd154
006bd1ac  dd 30 d5 e1                                      ldrsb r3, [r5, #0xd]
006bd1b0  00 00 53 e3                                      cmp r3, #0
006bd1b4  09 00 00 ba                                      blt #0x6bd1e0
006bd1b8  04 80 8d e5                                      str r8, [sp, #4]
006bd1bc  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bd1c0  09 00 a0 e1                                      mov r0, sb
006bd1c4  06 10 a0 e1                                      mov r1, r6
006bd1c8  05 20 a0 e1                                      mov r2, r5
006bd1cc  08 80 8d e5                                      str r8, [sp, #8]
006bd1d0  00 70 8d e5                                      str r7, [sp]
006bd1d4  c5 fe ff eb                                      bl #0x6bccf0
006bd1d8  02 a8 8a e3                                      orr sl, sl, #0x20000
006bd1dc  00 80 a0 e1                                      mov r8, r0
006bd1e0  de 30 d5 e1                                      ldrsb r3, [r5, #0xe]
006bd1e4  00 00 53 e3                                      cmp r3, #0
006bd1e8  07 00 00 ba                                      blt #0x6bd20c
006bd1ec  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006bd1f0  09 00 a0 e1                                      mov r0, sb
006bd1f4  06 10 a0 e1                                      mov r1, r6
006bd1f8  05 20 a0 e1                                      mov r2, r5
006bd1fc  80 11 8d e8                                      stm sp, {r7, r8, ip}
006bd200  ba fe ff eb                                      bl #0x6bccf0
006bd204  01 a7 8a e3                                      orr sl, sl, #0x40000
006bd208  00 80 a0 e1                                      mov r8, r0
006bd20c  df 30 d5 e1                                      ldrsb r3, [r5, #0xf]
006bd210  00 00 53 e3                                      cmp r3, #0
006bd214  09 00 00 ba                                      blt #0x6bd240
006bd218  04 80 8d e5                                      str r8, [sp, #4]
006bd21c  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bd220  09 00 a0 e1                                      mov r0, sb
006bd224  06 10 a0 e1                                      mov r1, r6
006bd228  05 20 a0 e1                                      mov r2, r5
006bd22c  08 80 8d e5                                      str r8, [sp, #8]
006bd230  00 70 8d e5                                      str r7, [sp]
006bd234  ad fe ff eb                                      bl #0x6bccf0
006bd238  02 a7 8a e3                                      orr sl, sl, #0x80000
006bd23c  00 80 a0 e1                                      mov r8, r0
006bd240  10 50 8d e5                                      str r5, [sp, #0x10]
006bd244  00 b0 a0 e3                                      mov fp, #0
006bd248  10 00 9d e5                                      ldr r0, [sp, #0x10]
006bd24c  06 10 a0 e1                                      mov r1, r6
006bd250  05 20 a0 e1                                      mov r2, r5
006bd254  d8 c1 d0 e1                                      ldrsb ip, [r0, #0x18]
006bd258  09 00 a0 e1                                      mov r0, sb
006bd25c  00 00 5c e3                                      cmp ip, #0
006bd260  0c 30 a0 e1                                      mov r3, ip
006bd264  0d 00 00 ba                                      blt #0x6bd2a0
006bd268  04 80 8d e5                                      str r8, [sp, #4]
006bd26c  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bd270  01 c6 a0 e3                                      mov ip, #0x100000
006bd274  1c ab 8a e1                                      orr sl, sl, ip, lsl fp
006bd278  08 80 8d e5                                      str r8, [sp, #8]
006bd27c  00 70 8d e5                                      str r7, [sp]
006bd280  9a fe ff eb                                      bl #0x6bccf0
006bd284  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006bd288  01 b0 8b e2                                      add fp, fp, #1
006bd28c  04 00 5b e3                                      cmp fp, #4
006bd290  01 c0 8c e2                                      add ip, ip, #1
006bd294  00 80 a0 e1                                      mov r8, r0
006bd298  10 c0 8d e5                                      str ip, [sp, #0x10]
006bd29c  e9 ff ff 1a                                      bne #0x6bd248
006bd2a0  10 50 8d e5                                      str r5, [sp, #0x10]
006bd2a4  00 b0 a0 e3                                      mov fp, #0
006bd2a8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006bd2ac  06 10 a0 e1                                      mov r1, r6
006bd2b0  05 20 a0 e1                                      mov r2, r5
006bd2b4  d4 c1 d0 e1                                      ldrsb ip, [r0, #0x14]
006bd2b8  09 00 a0 e1                                      mov r0, sb
006bd2bc  00 00 5c e3                                      cmp ip, #0
006bd2c0  0c 30 a0 e1                                      mov r3, ip
006bd2c4  0d 00 00 ba                                      blt #0x6bd300
006bd2c8  04 80 8d e5                                      str r8, [sp, #4]
006bd2cc  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bd2d0  01 c4 a0 e3                                      mov ip, #0x1000000
006bd2d4  1c ab 8a e1                                      orr sl, sl, ip, lsl fp
006bd2d8  08 80 8d e5                                      str r8, [sp, #8]
006bd2dc  00 70 8d e5                                      str r7, [sp]
006bd2e0  82 fe ff eb                                      bl #0x6bccf0
006bd2e4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006bd2e8  01 b0 8b e2                                      add fp, fp, #1
006bd2ec  04 00 5b e3                                      cmp fp, #4
006bd2f0  01 c0 8c e2                                      add ip, ip, #1
006bd2f4  00 80 a0 e1                                      mov r8, r0
006bd2f8  10 c0 8d e5                                      str ip, [sp, #0x10]
006bd2fc  e9 ff ff 1a                                      bne #0x6bd2a8
006bd300  dc 31 d5 e1                                      ldrsb r3, [r5, #0x1c]
006bd304  00 00 53 e3                                      cmp r3, #0
006bd308  09 00 00 ba                                      blt #0x6bd334
006bd30c  04 80 8d e5                                      str r8, [sp, #4]
006bd310  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bd314  09 00 a0 e1                                      mov r0, sb
006bd318  06 10 a0 e1                                      mov r1, r6
006bd31c  05 20 a0 e1                                      mov r2, r5
006bd320  08 80 8d e5                                      str r8, [sp, #8]
006bd324  00 70 8d e5                                      str r7, [sp]
006bd328  70 fe ff eb                                      bl #0x6bccf0
006bd32c  01 a2 8a e3                                      orr sl, sl, #0x10000000
006bd330  00 80 a0 e1                                      mov r8, r0
006bd334  dd 31 d5 e1                                      ldrsb r3, [r5, #0x1d]
006bd338  00 00 53 e3                                      cmp r3, #0
006bd33c  07 00 00 ba                                      blt #0x6bd360
006bd340  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006bd344  09 00 a0 e1                                      mov r0, sb
006bd348  06 10 a0 e1                                      mov r1, r6
006bd34c  05 20 a0 e1                                      mov r2, r5
006bd350  80 11 8d e8                                      stm sp, {r7, r8, ip}
006bd354  65 fe ff eb                                      bl #0x6bccf0
006bd358  02 a2 8a e3                                      orr sl, sl, #0x20000000
006bd35c  00 80 a0 e1                                      mov r8, r0
006bd360  0a 10 a0 e1                                      mov r1, sl
006bd364  18 00 8d e2                                      add r0, sp, #0x18
006bd368  fb 8f fb eb                                      bl #0x5a135c
006bd36c  18 30 9d e5                                      ldr r3, [sp, #0x18]
006bd370  00 00 53 e3                                      cmp r3, #0
006bd374  00 20 93 15                                      ldrne r2, [r3]
006bd378  01 20 82 12                                      addne r2, r2, #1
006bd37c  00 20 83 15                                      strne r2, [r3]
006bd380  14 a0 94 e5                                      ldr sl, [r4, #0x14]
006bd384  14 30 84 e5                                      str r3, [r4, #0x14]
006bd388  00 00 5a e3                                      cmp sl, #0
006bd38c  04 00 00 0a                                      beq #0x6bd3a4
006bd390  00 30 9a e5                                      ldr r3, [sl]
006bd394  01 30 43 e2                                      sub r3, r3, #1
006bd398  00 00 53 e3                                      cmp r3, #0
006bd39c  00 30 8a e5                                      str r3, [sl]
006bd3a0  79 00 00 0a                                      beq #0x6bd58c
006bd3a4  18 a0 9d e5                                      ldr sl, [sp, #0x18]
006bd3a8  00 00 5a e3                                      cmp sl, #0
006bd3ac  04 00 00 0a                                      beq #0x6bd3c4
006bd3b0  00 30 9a e5                                      ldr r3, [sl]
006bd3b4  01 30 43 e2                                      sub r3, r3, #1
006bd3b8  00 00 53 e3                                      cmp r3, #0
006bd3bc  00 30 8a e5                                      str r3, [sl]
006bd3c0  6c 00 00 0a                                      beq #0x6bd578
006bd3c4  00 20 e0 e3                                      mvn r2, #0
006bd3c8  00 30 a0 e3                                      mov r3, #0
006bd3cc  14 00 94 e5                                      ldr r0, [r4, #0x14]
006bd3d0  07 10 a0 e1                                      mov r1, r7
006bd3d4  ec 90 fb eb                                      bl #0x5a178c
006bd3d8  00 30 96 e5                                      ldr r3, [r6]
006bd3dc  14 20 94 e5                                      ldr r2, [r4, #0x14]
006bd3e0  00 00 53 e3                                      cmp r3, #0
006bd3e4  04 30 96 15                                      ldrne r3, [r6, #4]
006bd3e8  08 30 82 e5                                      str r3, [r2, #8]
006bd3ec  00 30 96 e5                                      ldr r3, [r6]
006bd3f0  0c 20 d5 e5                                      ldrb r2, [r5, #0xc]
006bd3f4  00 00 53 e3                                      cmp r3, #0
006bd3f8  1a 00 00 0a                                      beq #0x6bd468
006bd3fc  08 30 96 e5                                      ldr r3, [r6, #8]
006bd400  72 20 af e6                                      sxtb r2, r2
006bd404  20 30 93 e5                                      ldr r3, [r3, #0x20]
006bd408  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
006bd40c  00 00 53 e3                                      cmp r3, #0
006bd410  14 00 00 0a                                      beq #0x6bd468
006bd414  14 20 94 e5                                      ldr r2, [r4, #0x14]
006bd418  04 10 93 e5                                      ldr r1, [r3, #4]
006bd41c  08 00 93 e5                                      ldr r0, [r3, #8]
006bd420  10 20 92 e5                                      ldr r2, [r2, #0x10]
006bd424  00 c0 93 e5                                      ldr ip, [r3]
006bd428  08 00 82 e5                                      str r0, [r2, #8]
006bd42c  00 c0 82 e5                                      str ip, [r2]
006bd430  04 10 82 e5                                      str r1, [r2, #4]
006bd434  14 20 94 e5                                      ldr r2, [r4, #0x14]
006bd438  14 00 93 e5                                      ldr r0, [r3, #0x14]
006bd43c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
006bd440  10 20 92 e5                                      ldr r2, [r2, #0x10]
006bd444  10 10 93 e5                                      ldr r1, [r3, #0x10]
006bd448  0c 30 82 e2                                      add r3, r2, #0xc
006bd44c  0c c0 82 e5                                      str ip, [r2, #0xc]
006bd450  08 00 83 e5                                      str r0, [r3, #8]
006bd454  04 10 83 e5                                      str r1, [r3, #4]
006bd458  14 30 94 e5                                      ldr r3, [r4, #0x14]
006bd45c  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006bd460  04 20 82 e3                                      orr r2, r2, #4
006bd464  be 20 c3 e1                                      strh r2, [r3, #0xe]
006bd468  14 00 9d e5                                      ldr r0, [sp, #0x14]
006bd46c  24 20 a0 e3                                      mov r2, #0x24
006bd470  00 10 a0 e3                                      mov r1, #0
006bd474  08 b0 a0 e3                                      mov fp, #8
006bd478  10 70 8d e5                                      str r7, [sp, #0x10]
006bd47c  14 80 8d e5                                      str r8, [sp, #0x14]
006bd480  d0 31 d0 e1                                      ldrsb r3, [r0, #0x10]
006bd484  00 00 53 e3                                      cmp r3, #0
006bd488  23 00 00 ba                                      blt #0x6bd51c
006bd48c  00 c0 96 e5                                      ldr ip, [r6]
006bd490  0c 70 42 e2                                      sub r7, r2, #0xc
006bd494  00 00 5c e3                                      cmp ip, #0
006bd498  1a 00 00 0a                                      beq #0x6bd508
006bd49c  08 c0 96 e5                                      ldr ip, [r6, #8]
006bd4a0  20 c0 9c e5                                      ldr ip, [ip, #0x20]
006bd4a4  03 31 9c e7                                      ldr r3, [ip, r3, lsl #2]
006bd4a8  00 00 53 e3                                      cmp r3, #0
006bd4ac  15 00 00 0a                                      beq #0x6bd508
006bd4b0  14 c0 94 e5                                      ldr ip, [r4, #0x14]
006bd4b4  08 a0 93 e5                                      ldr sl, [r3, #8]
006bd4b8  04 90 93 e5                                      ldr sb, [r3, #4]
006bd4bc  10 50 9c e5                                      ldr r5, [ip, #0x10]
006bd4c0  00 80 93 e5                                      ldr r8, [r3]
006bd4c4  07 c0 85 e0                                      add ip, r5, r7
006bd4c8  07 80 85 e7                                      str r8, [r5, r7]
006bd4cc  08 a0 8c e5                                      str sl, [ip, #8]
006bd4d0  04 90 8c e5                                      str sb, [ip, #4]
006bd4d4  14 c0 94 e5                                      ldr ip, [r4, #0x14]
006bd4d8  14 50 93 e5                                      ldr r5, [r3, #0x14]
006bd4dc  0c 70 93 e5                                      ldr r7, [r3, #0xc]
006bd4e0  10 c0 9c e5                                      ldr ip, [ip, #0x10]
006bd4e4  10 a0 93 e5                                      ldr sl, [r3, #0x10]
006bd4e8  02 30 8c e0                                      add r3, ip, r2
006bd4ec  02 70 8c e7                                      str r7, [ip, r2]
006bd4f0  08 50 83 e5                                      str r5, [r3, #8]
006bd4f4  04 a0 83 e5                                      str sl, [r3, #4]
006bd4f8  14 30 94 e5                                      ldr r3, [r4, #0x14]
006bd4fc  be c0 d3 e1                                      ldrh ip, [r3, #0xe]
006bd500  1b c1 8c e1                                      orr ip, ip, fp, lsl r1
006bd504  be c0 c3 e1                                      strh ip, [r3, #0xe]
006bd508  01 10 81 e2                                      add r1, r1, #1
006bd50c  04 00 51 e3                                      cmp r1, #4
006bd510  01 00 80 e2                                      add r0, r0, #1
006bd514  18 20 82 e2                                      add r2, r2, #0x18
006bd518  d8 ff ff 1a                                      bne #0x6bd480
006bd51c  10 70 9d e5                                      ldr r7, [sp, #0x10]
006bd520  14 80 9d e5                                      ldr r8, [sp, #0x14]
006bd524  08 82 87 e0                                      add r8, r7, r8, lsl #4
006bd528  08 00 57 e1                                      cmp r7, r8
006bd52c  07 50 a0 11                                      movne r5, r7
006bd530  06 00 00 0a                                      beq #0x6bd550
006bd534  00 00 95 e5                                      ldr r0, [r5]
006bd538  10 50 85 e2                                      add r5, r5, #0x10
006bd53c  00 00 50 e3                                      cmp r0, #0
006bd540  00 00 00 0a                                      beq #0x6bd548
006bd544  0e 80 f1 eb                                      bl #0x31d584
006bd548  05 00 58 e1                                      cmp r8, r5
006bd54c  f8 ff ff 1a                                      bne #0x6bd534
006bd550  00 00 57 e3                                      cmp r7, #0
006bd554  01 00 00 0a                                      beq #0x6bd560
006bd558  07 00 a0 e1                                      mov r0, r7
006bd55c  49 dc f9 eb                                      bl #0x534688
006bd560  04 00 a0 e1                                      mov r0, r4
006bd564  44 d0 8d e2                                      add sp, sp, #0x44
006bd568  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006bd56c  28 c0 91 e5                                      ldr ip, [r1, #0x28]
006bd570  01 20 a0 e3                                      mov r2, #1
006bd574  a1 fe ff ea                                      b #0x6bd000
006bd578  0a 00 a0 e1                                      mov r0, sl
006bd57c  26 8d fb eb                                      bl #0x5a0a1c
006bd580  0a 00 a0 e1                                      mov r0, sl
006bd584  49 43 f1 eb                                      bl #0x30e2b0
006bd588  8d ff ff ea                                      b #0x6bd3c4
006bd58c  0a 00 a0 e1                                      mov r0, sl
006bd590  21 8d fb eb                                      bl #0x5a0a1c
006bd594  0a 00 a0 e1                                      mov r0, sl
006bd598  44 43 f1 eb                                      bl #0x30e2b0
006bd59c  80 ff ff ea                                      b #0x6bd3a4
006bd5a0  00 00 58 e3                                      cmp r8, #0
006bd5a4  41 00 00 1a                                      bne #0x6bd6b0
006bd5a8  24 10 95 e5                                      ldr r1, [r5, #0x24]
006bd5ac  00 20 99 e5                                      ldr r2, [sb]
006bd5b0  00 30 97 e5                                      ldr r3, [r7]
006bd5b4  01 08 51 e3                                      cmp r1, #0x10000
006bd5b8  78 c0 92 e5                                      ldr ip, [r2, #0x78]
006bd5bc  28 10 95 e5                                      ldr r1, [r5, #0x28]
006bd5c0  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
006bd5c4  24 00 8d e2                                      add r0, sp, #0x24
006bd5c8  01 11 a0 a1                                      lslge r1, r1, #2
006bd5cc  81 10 a0 b1                                      lsllt r1, r1, #1
006bd5d0  04 20 8d e5                                      str r2, [sp, #4]
006bd5d4  00 20 a0 e3                                      mov r2, #0
006bd5d8  00 10 8d e5                                      str r1, [sp]
006bd5dc  08 20 8d e5                                      str r2, [sp, #8]
006bd5e0  09 10 a0 e1                                      mov r1, sb
006bd5e4  01 20 a0 e3                                      mov r2, #1
006bd5e8  3c ff 2f e1                                      blx ip
006bd5ec  24 30 9d e5                                      ldr r3, [sp, #0x24]
006bd5f0  00 00 53 e3                                      cmp r3, #0
006bd5f4  04 20 93 15                                      ldrne r2, [r3, #4]
006bd5f8  01 20 82 12                                      addne r2, r2, #1
006bd5fc  04 20 83 15                                      strne r2, [r3, #4]
006bd600  30 00 95 e5                                      ldr r0, [r5, #0x30]
006bd604  30 30 85 e5                                      str r3, [r5, #0x30]
006bd608  00 00 50 e3                                      cmp r0, #0
006bd60c  00 00 00 0a                                      beq #0x6bd614
006bd610  db 7f f1 eb                                      bl #0x31d584
006bd614  24 00 9d e5                                      ldr r0, [sp, #0x24]
006bd618  00 00 50 e3                                      cmp r0, #0
006bd61c  00 00 00 0a                                      beq #0x6bd624
006bd620  d7 7f f1 eb                                      bl #0x31d584
006bd624  30 30 95 e5                                      ldr r3, [r5, #0x30]
006bd628  00 00 53 e3                                      cmp r3, #0
006bd62c  04 20 93 15                                      ldrne r2, [r3, #4]
006bd630  01 20 82 12                                      addne r2, r2, #1
006bd634  04 20 83 15                                      strne r2, [r3, #4]
006bd638  18 00 94 e5                                      ldr r0, [r4, #0x18]
006bd63c  18 30 84 e5                                      str r3, [r4, #0x18]
006bd640  00 00 50 e3                                      cmp r0, #0
006bd644  93 fe ff 0a                                      beq #0x6bd098
006bd648  cd 7f f1 eb                                      bl #0x31d584
006bd64c  04 30 d7 e5                                      ldrb r3, [r7, #4]
006bd650  00 00 53 e3                                      cmp r3, #0
006bd654  92 fe ff 0a                                      beq #0x6bd0a4
006bd658  30 30 95 e5                                      ldr r3, [r5, #0x30]
006bd65c  05 10 d7 e5                                      ldrb r1, [r7, #5]
006bd660  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006bd664  08 00 12 e3                                      tst r2, #8
006bd668  93 00 00 1a                                      bne #0x6bd8bc
006bd66c  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006bd670  04 00 52 e3                                      cmp r2, #4
006bd674  8a fe ff 0a                                      beq #0x6bd0a4
006bd678  03 00 a0 e1                                      mov r0, r3
006bd67c  00 30 93 e5                                      ldr r3, [r3]
006bd680  0f e0 a0 e1                                      mov lr, pc
006bd684  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006bd688  85 fe ff ea                                      b #0x6bd0a4
006bd68c  7b b0 ef e6                                      uxtb fp, fp
006bd690  00 30 9a e5                                      ldr r3, [sl]
006bd694  0a 00 a0 e1                                      mov r0, sl
006bd698  0f e0 a0 e1                                      mov lr, pc
006bd69c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006bd6a0  04 00 5b e3                                      cmp fp, #4
006bd6a4  11 b0 ca e5                                      strb fp, [sl, #0x11]
006bd6a8  75 fe ff 1a                                      bne #0x6bd084
006bd6ac  79 fe ff ea                                      b #0x6bd098
006bd6b0  24 30 95 e5                                      ldr r3, [r5, #0x24]
006bd6b4  01 08 53 e3                                      cmp r3, #0x10000
006bd6b8  28 30 95 e5                                      ldr r3, [r5, #0x28]
006bd6bc  03 31 a0 a1                                      lslge r3, r3, #2
006bd6c0  83 30 a0 b1                                      lsllt r3, r3, #1
006bd6c4  01 08 53 e3                                      cmp r3, #0x10000
006bd6c8  83 00 00 ba                                      blt #0x6bd8dc
006bd6cc  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
006bd6d0  3c a0 8d e2                                      add sl, sp, #0x3c
006bd6d4  0a 10 a0 e1                                      mov r1, sl
006bd6d8  00 00 53 e3                                      cmp r3, #0
006bd6dc  3c 30 8d e5                                      str r3, [sp, #0x3c]
006bd6e0  00 20 93 15                                      ldrne r2, [r3]
006bd6e4  0c 00 84 e2                                      add r0, r4, #0xc
006bd6e8  00 b0 a0 e3                                      mov fp, #0
006bd6ec  01 20 82 12                                      addne r2, r2, #1
006bd6f0  00 20 83 15                                      strne r2, [r3]
006bd6f4  1c fc ff eb                                      bl #0x6bc76c
006bd6f8  0a 00 a0 e1                                      mov r0, sl
006bd6fc  06 fc ff eb                                      bl #0x6bc71c
006bd700  30 00 85 e2                                      add r0, r5, #0x30
006bd704  24 20 95 e5                                      ldr r2, [r5, #0x24]
006bd708  00 30 99 e5                                      ldr r3, [sb]
006bd70c  10 00 8d e5                                      str r0, [sp, #0x10]
006bd710  28 10 95 e5                                      ldr r1, [r5, #0x28]
006bd714  01 08 52 e3                                      cmp r2, #0x10000
006bd718  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006bd71c  01 11 a0 a1                                      lslge r1, r1, #2
006bd720  81 10 a0 b1                                      lsllt r1, r1, #1
006bd724  78 c0 93 e5                                      ldr ip, [r3, #0x78]
006bd728  00 30 97 e5                                      ldr r3, [r7]
006bd72c  00 10 8d e5                                      str r1, [sp]
006bd730  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006bd734  38 a0 8d e2                                      add sl, sp, #0x38
006bd738  0a 00 a0 e1                                      mov r0, sl
006bd73c  04 20 8d e5                                      str r2, [sp, #4]
006bd740  09 10 a0 e1                                      mov r1, sb
006bd744  01 20 a0 e3                                      mov r2, #1
006bd748  08 b0 8d e5                                      str fp, [sp, #8]
006bd74c  3c ff 2f e1                                      blx ip
006bd750  0a 10 a0 e1                                      mov r1, sl
006bd754  10 00 9d e5                                      ldr r0, [sp, #0x10]
006bd758  4b fc ff eb                                      bl #0x6bc88c
006bd75c  0a 00 a0 e1                                      mov r0, sl
006bd760  40 a0 8d e2                                      add sl, sp, #0x40
006bd764  08 e9 fd eb                                      bl #0x637b8c
006bd768  0c b0 2a e5                                      str fp, [sl, #-0xc]!
006bd76c  08 00 84 e2                                      add r0, r4, #8
006bd770  0a 10 a0 e1                                      mov r1, sl
006bd774  2a fc ff eb                                      bl #0x6bc824
006bd778  0a 00 a0 e1                                      mov r0, sl
006bd77c  14 fc ff eb                                      bl #0x6bc7d4
006bd780  a7 ff ff ea                                      b #0x6bd624
006bd784  00 00 58 e3                                      cmp r8, #0
006bd788  81 00 00 0a                                      beq #0x6bd994
006bd78c  24 70 97 e5                                      ldr r7, [r7, #0x24]
006bd790  00 00 57 e3                                      cmp r7, #0
006bd794  00 30 97 15                                      ldrne r3, [r7]
006bd798  02 30 83 12                                      addne r3, r3, #2
006bd79c  00 30 87 15                                      strne r3, [r7]
006bd7a0  10 80 94 e5                                      ldr r8, [r4, #0x10]
006bd7a4  00 00 58 e3                                      cmp r8, #0
006bd7a8  0a 00 00 0a                                      beq #0x6bd7d8
006bd7ac  00 30 98 e5                                      ldr r3, [r8]
006bd7b0  01 30 43 e2                                      sub r3, r3, #1
006bd7b4  00 00 53 e3                                      cmp r3, #0
006bd7b8  00 30 88 e5                                      str r3, [r8]
006bd7bc  05 00 00 1a                                      bne #0x6bd7d8
006bd7c0  0c 00 98 e5                                      ldr r0, [r8, #0xc]
006bd7c4  00 00 50 e3                                      cmp r0, #0
006bd7c8  00 00 00 0a                                      beq #0x6bd7d0
006bd7cc  39 42 f1 eb                                      bl #0x30e0b8
006bd7d0  00 30 a0 e3                                      mov r3, #0
006bd7d4  0c 30 88 e5                                      str r3, [r8, #0xc]
006bd7d8  00 00 57 e3                                      cmp r7, #0
006bd7dc  10 70 84 e5                                      str r7, [r4, #0x10]
006bd7e0  0a 00 00 0a                                      beq #0x6bd810
006bd7e4  00 30 97 e5                                      ldr r3, [r7]
006bd7e8  01 30 43 e2                                      sub r3, r3, #1
006bd7ec  00 00 53 e3                                      cmp r3, #0
006bd7f0  00 30 87 e5                                      str r3, [r7]
006bd7f4  05 00 00 1a                                      bne #0x6bd810
006bd7f8  0c 00 97 e5                                      ldr r0, [r7, #0xc]
006bd7fc  00 00 50 e3                                      cmp r0, #0
006bd800  00 00 00 0a                                      beq #0x6bd808
006bd804  2b 42 f1 eb                                      bl #0x30e0b8
006bd808  00 30 a0 e3                                      mov r3, #0
006bd80c  0c 30 87 e5                                      str r3, [r7, #0xc]
006bd810  00 10 96 e5                                      ldr r1, [r6]
006bd814  08 20 96 e5                                      ldr r2, [r6, #8]
006bd818  00 30 99 e5                                      ldr r3, [sb]
006bd81c  00 00 51 e3                                      cmp r1, #0
006bd820  04 10 96 15                                      ldrne r1, [r6, #4]
006bd824  28 80 82 e2                                      add r8, r2, #0x28
006bd828  00 20 92 15                                      ldrne r2, [r2]
006bd82c  68 00 9d e5                                      ldr r0, [sp, #0x68]
006bd830  78 c0 93 e5                                      ldr ip, [r3, #0x78]
006bd834  91 02 01 10                                      mulne r1, r1, r2
006bd838  10 20 94 e5                                      ldr r2, [r4, #0x10]
006bd83c  00 30 90 e5                                      ldr r3, [r0]
006bd840  00 10 8d e5                                      str r1, [sp]
006bd844  0c 00 92 e5                                      ldr r0, [r2, #0xc]
006bd848  20 70 8d e2                                      add r7, sp, #0x20
006bd84c  00 10 a0 e3                                      mov r1, #0
006bd850  01 20 a0 e1                                      mov r2, r1
006bd854  03 00 8d e9                                      stmib sp, {r0, r1}
006bd858  07 00 a0 e1                                      mov r0, r7
006bd85c  09 10 a0 e1                                      mov r1, sb
006bd860  3c ff 2f e1                                      blx ip
006bd864  08 00 a0 e1                                      mov r0, r8
006bd868  07 10 a0 e1                                      mov r1, r7
006bd86c  06 fc ff eb                                      bl #0x6bc88c
006bd870  07 00 a0 e1                                      mov r0, r7
006bd874  c4 e8 fd eb                                      bl #0x637b8c
006bd878  21 fe ff ea                                      b #0x6bd104
006bd87c  08 30 96 e5                                      ldr r3, [r6, #8]
006bd880  05 10 d1 e5                                      ldrb r1, [r1, #5]
006bd884  28 30 93 e5                                      ldr r3, [r3, #0x28]
006bd888  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006bd88c  08 00 12 e3                                      tst r2, #8
006bd890  01 00 00 0a                                      beq #0x6bd89c
006bd894  02 00 12 e3                                      tst r2, #2
006bd898  1d fe ff 0a                                      beq #0x6bd114
006bd89c  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006bd8a0  04 00 52 e3                                      cmp r2, #4
006bd8a4  1a fe ff 0a                                      beq #0x6bd114
006bd8a8  03 00 a0 e1                                      mov r0, r3
006bd8ac  00 30 93 e5                                      ldr r3, [r3]
006bd8b0  0f e0 a0 e1                                      mov lr, pc
006bd8b4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006bd8b8  15 fe ff ea                                      b #0x6bd114
006bd8bc  02 00 12 e3                                      tst r2, #2
006bd8c0  f7 fd ff 0a                                      beq #0x6bd0a4
006bd8c4  68 ff ff ea                                      b #0x6bd66c
006bd8c8  00 30 9a e5                                      ldr r3, [sl]
006bd8cc  0a 00 a0 e1                                      mov r0, sl
006bd8d0  0f e0 a0 e1                                      mov lr, pc
006bd8d4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006bd8d8  00 fe ff ea                                      b #0x6bd0e0
006bd8dc  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
006bd8e0  30 a0 8d e2                                      add sl, sp, #0x30
006bd8e4  0a 10 a0 e1                                      mov r1, sl
006bd8e8  00 00 53 e3                                      cmp r3, #0
006bd8ec  30 30 8d e5                                      str r3, [sp, #0x30]
006bd8f0  00 20 93 15                                      ldrne r2, [r3]
006bd8f4  08 00 84 e2                                      add r0, r4, #8
006bd8f8  00 b0 a0 e3                                      mov fp, #0
006bd8fc  01 20 82 12                                      addne r2, r2, #1
006bd900  00 20 83 15                                      strne r2, [r3]
006bd904  c6 fb ff eb                                      bl #0x6bc824
006bd908  0a 00 a0 e1                                      mov r0, sl
006bd90c  b0 fb ff eb                                      bl #0x6bc7d4
006bd910  30 10 85 e2                                      add r1, r5, #0x30
006bd914  24 20 95 e5                                      ldr r2, [r5, #0x24]
006bd918  00 30 99 e5                                      ldr r3, [sb]
006bd91c  10 10 8d e5                                      str r1, [sp, #0x10]
006bd920  28 10 95 e5                                      ldr r1, [r5, #0x28]
006bd924  01 08 52 e3                                      cmp r2, #0x10000
006bd928  08 20 94 e5                                      ldr r2, [r4, #8]
006bd92c  01 11 a0 a1                                      lslge r1, r1, #2
006bd930  81 10 a0 b1                                      lsllt r1, r1, #1
006bd934  78 c0 93 e5                                      ldr ip, [r3, #0x78]
006bd938  00 30 97 e5                                      ldr r3, [r7]
006bd93c  00 10 8d e5                                      str r1, [sp]
006bd940  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006bd944  2c a0 8d e2                                      add sl, sp, #0x2c
006bd948  0a 00 a0 e1                                      mov r0, sl
006bd94c  04 20 8d e5                                      str r2, [sp, #4]
006bd950  09 10 a0 e1                                      mov r1, sb
006bd954  01 20 a0 e3                                      mov r2, #1
006bd958  08 b0 8d e5                                      str fp, [sp, #8]
006bd95c  3c ff 2f e1                                      blx ip
006bd960  0a 10 a0 e1                                      mov r1, sl
006bd964  10 00 9d e5                                      ldr r0, [sp, #0x10]
006bd968  c7 fb ff eb                                      bl #0x6bc88c
006bd96c  0a 00 a0 e1                                      mov r0, sl
006bd970  40 a0 8d e2                                      add sl, sp, #0x40
006bd974  84 e8 fd eb                                      bl #0x637b8c
006bd978  18 b0 2a e5                                      str fp, [sl, #-0x18]!
006bd97c  0c 00 84 e2                                      add r0, r4, #0xc
006bd980  0a 10 a0 e1                                      mov r1, sl
006bd984  78 fb ff eb                                      bl #0x6bc76c
006bd988  0a 00 a0 e1                                      mov r0, sl
006bd98c  62 fb ff eb                                      bl #0x6bc71c
006bd990  23 ff ff ea                                      b #0x6bd624
006bd994  04 20 96 e5                                      ldr r2, [r6, #4]
006bd998  00 10 97 e5                                      ldr r1, [r7]
006bd99c  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006bd9a0  1c a0 8d e2                                      add sl, sp, #0x1c
006bd9a4  91 02 01 e0                                      mul r1, r1, r2
006bd9a8  00 30 9c e5                                      ldr r3, [ip]
006bd9ac  00 10 8d e5                                      str r1, [sp]
006bd9b0  24 10 97 e5                                      ldr r1, [r7, #0x24]
006bd9b4  08 80 8d e5                                      str r8, [sp, #8]
006bd9b8  08 20 a0 e1                                      mov r2, r8
006bd9bc  04 10 8d e5                                      str r1, [sp, #4]
006bd9c0  0a 00 a0 e1                                      mov r0, sl
006bd9c4  09 10 a0 e1                                      mov r1, sb
006bd9c8  00 c0 99 e5                                      ldr ip, [sb]
006bd9cc  0f e0 a0 e1                                      mov lr, pc
006bd9d0  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006bd9d4  28 00 87 e2                                      add r0, r7, #0x28
006bd9d8  0a 10 a0 e1                                      mov r1, sl
006bd9dc  aa fb ff eb                                      bl #0x6bc88c
006bd9e0  0a 00 a0 e1                                      mov r0, sl
006bd9e4  68 e8 fd eb                                      bl #0x637b8c
006bd9e8  c5 fd ff ea                                      b #0x6bd104
; mapping-symbol data/literal pool
006bd9ec  04 7b 2d 00 54 0c 00 00 50 e3 22 00              .byte 0x04, 0x7b, 0x2d, 0x00, 0x54, 0x0c, 0x00, 0x00, 0x50, 0xe3, 0x22, 0x00

; FUNCTION 0x006bd9f8, declared_size=2680, range_size=2680, mode=arm
; class-group: glitch::scene::CMeshBuffer
; alias: _ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b
; demangled: glitch::scene::CMeshBuffer::CMeshBuffer(glitch::video::IVideoDriver*, glitch::collada::SMesh&, unsigned int, glitch::collada::SBufferConfig const&, glitch::collada::SBufferConfig const&, bool)
; decoder-mode: arm
006bd9f8  64 ca 9f e5                                      ldr ip, [pc, #0xa64]
006bd9fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006bda00  60 ea 9f e5                                      ldr lr, [pc, #0xa60]
006bda04  0c c0 8f e0                                      add ip, pc, ip
006bda08  00 40 a0 e1                                      mov r4, r0
006bda0c  0e e0 9c e7                                      ldr lr, [ip, lr]
006bda10  00 00 a0 e3                                      mov r0, #0
006bda14  14 00 84 e5                                      str r0, [r4, #0x14]
006bda18  08 e0 8e e2                                      add lr, lr, #8
006bda1c  00 e0 84 e5                                      str lr, [r4]
006bda20  04 00 84 e5                                      str r0, [r4, #4]
006bda24  08 00 84 e5                                      str r0, [r4, #8]
006bda28  0c 00 84 e5                                      str r0, [r4, #0xc]
006bda2c  10 00 84 e5                                      str r0, [r4, #0x10]
006bda30  38 50 a0 e3                                      mov r5, #0x38
006bda34  95 03 05 e0                                      mul r5, r5, r3
006bda38  02 60 a0 e1                                      mov r6, r2
006bda3c  10 20 92 e5                                      ldr r2, [r2, #0x10]
006bda40  01 90 a0 e1                                      mov sb, r1
006bda44  20 3a 9f e5                                      ldr r3, [pc, #0xa20]
006bda48  05 10 82 e0                                      add r1, r2, r5
006bda4c  24 00 91 e5                                      ldr r0, [r1, #0x24]
006bda50  05 20 92 e7                                      ldr r2, [r2, r5]
006bda54  44 d0 4d e2                                      sub sp, sp, #0x44
006bda58  03 30 8f e0                                      add r3, pc, r3
006bda5c  01 08 50 e3                                      cmp r0, #0x10000
006bda60  02 e1 93 e7                                      ldr lr, [r3, r2, lsl #2]
006bda64  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
006bda68  70 80 dd e5                                      ldrb r8, [sp, #0x70]
006bda6c  5c 01 00 ba                                      blt #0x6bdfe4
006bda70  28 c0 91 e5                                      ldr ip, [r1, #0x28]
006bda74  02 20 a0 e3                                      mov r2, #2
006bda78  30 30 91 e5                                      ldr r3, [r1, #0x30]
006bda7c  20 10 91 e5                                      ldr r1, [r1, #0x20]
006bda80  01 00 80 e2                                      add r0, r0, #1
006bda84  00 00 53 e3                                      cmp r3, #0
006bda88  18 30 84 e5                                      str r3, [r4, #0x18]
006bda8c  04 a0 93 15                                      ldrne sl, [r3, #4]
006bda90  01 a0 8a 12                                      addne sl, sl, #1
006bda94  04 a0 83 15                                      strne sl, [r3, #4]
006bda98  00 30 a0 e3                                      mov r3, #0
006bda9c  20 c0 84 e5                                      str ip, [r4, #0x20]
006bdaa0  24 10 84 e5                                      str r1, [r4, #0x24]
006bdaa4  28 00 84 e5                                      str r0, [r4, #0x28]
006bdaa8  bc 22 c4 e1                                      strh r2, [r4, #0x2c]
006bdaac  be e2 c4 e1                                      strh lr, [r4, #0x2e]
006bdab0  34 30 c4 e5                                      strb r3, [r4, #0x34]
006bdab4  1c 30 84 e5                                      str r3, [r4, #0x1c]
006bdab8  30 30 84 e5                                      str r3, [r4, #0x30]
006bdabc  10 30 96 e5                                      ldr r3, [r6, #0x10]
006bdac0  05 50 83 e0                                      add r5, r3, r5
006bdac4  30 a0 95 e5                                      ldr sl, [r5, #0x30]
006bdac8  00 00 5a e3                                      cmp sl, #0
006bdacc  51 01 00 0a                                      beq #0x6be018
006bdad0  00 b0 97 e5                                      ldr fp, [r7]
006bdad4  11 30 da e5                                      ldrb r3, [sl, #0x11]
006bdad8  03 00 5b e1                                      cmp fp, r3
006bdadc  0b 00 00 0a                                      beq #0x6bdb10
006bdae0  12 30 da e5                                      ldrb r3, [sl, #0x12]
006bdae4  08 00 13 e3                                      tst r3, #8
006bdae8  85 01 00 1a                                      bne #0x6be104
006bdaec  7b b0 ef e6                                      uxtb fp, fp
006bdaf0  04 00 5b e3                                      cmp fp, #4
006bdaf4  11 b0 ca e5                                      strb fp, [sl, #0x11]
006bdaf8  04 00 00 0a                                      beq #0x6bdb10
006bdafc  08 30 9a e5                                      ldr r3, [sl, #8]
006bdb00  00 00 53 e3                                      cmp r3, #0
006bdb04  12 30 da 15                                      ldrbne r3, [sl, #0x12]
006bdb08  02 30 83 13                                      orrne r3, r3, #2
006bdb0c  12 30 ca 15                                      strbne r3, [sl, #0x12]
006bdb10  04 30 d7 e5                                      ldrb r3, [r7, #4]
006bdb14  00 00 53 e3                                      cmp r3, #0
006bdb18  6c 01 00 1a                                      bne #0x6be0d0
006bdb1c  00 30 96 e5                                      ldr r3, [r6]
006bdb20  00 00 53 e3                                      cmp r3, #0
006bdb24  18 00 00 0a                                      beq #0x6bdb8c
006bdb28  08 70 96 e5                                      ldr r7, [r6, #8]
006bdb2c  28 a0 97 e5                                      ldr sl, [r7, #0x28]
006bdb30  00 00 5a e3                                      cmp sl, #0
006bdb34  b0 01 00 0a                                      beq #0x6be1fc
006bdb38  68 00 9d e5                                      ldr r0, [sp, #0x68]
006bdb3c  11 30 da e5                                      ldrb r3, [sl, #0x11]
006bdb40  00 70 90 e5                                      ldr r7, [r0]
006bdb44  03 00 57 e1                                      cmp r7, r3
006bdb48  0b 00 00 0a                                      beq #0x6bdb7c
006bdb4c  12 30 da e5                                      ldrb r3, [sl, #0x12]
006bdb50  08 00 13 e3                                      tst r3, #8
006bdb54  f9 01 00 1a                                      bne #0x6be340
006bdb58  77 70 ef e6                                      uxtb r7, r7
006bdb5c  04 00 57 e3                                      cmp r7, #4
006bdb60  11 70 ca e5                                      strb r7, [sl, #0x11]
006bdb64  04 00 00 0a                                      beq #0x6bdb7c
006bdb68  08 30 9a e5                                      ldr r3, [sl, #8]
006bdb6c  00 00 53 e3                                      cmp r3, #0
006bdb70  12 30 da 15                                      ldrbne r3, [sl, #0x12]
006bdb74  02 30 83 13                                      orrne r3, r3, #2
006bdb78  12 30 ca 15                                      strbne r3, [sl, #0x12]
006bdb7c  68 10 9d e5                                      ldr r1, [sp, #0x68]
006bdb80  04 30 d1 e5                                      ldrb r3, [r1, #4]
006bdb84  00 00 53 e3                                      cmp r3, #0
006bdb88  d9 01 00 1a                                      bne #0x6be2f4
006bdb8c  1e 0e a0 e3                                      mov r0, #0x1e0
006bdb90  97 da f9 eb                                      bl #0x5345f4
006bdb94  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bdb98  dc 30 d5 e1                                      ldrsb r3, [r5, #0xc]
006bdb9c  00 70 a0 e1                                      mov r7, r0
006bdba0  00 b0 a0 e3                                      mov fp, #0
006bdba4  09 00 a0 e1                                      mov r0, sb
006bdba8  06 10 a0 e1                                      mov r1, r6
006bdbac  05 20 a0 e1                                      mov r2, r5
006bdbb0  08 80 8d e5                                      str r8, [sp, #8]
006bdbb4  80 08 8d e8                                      stm sp, {r7, fp}
006bdbb8  4c fc ff eb                                      bl #0x6bccf0
006bdbbc  01 a0 a0 e3                                      mov sl, #1
006bdbc0  00 80 a0 e1                                      mov r8, r0
006bdbc4  14 50 8d e5                                      str r5, [sp, #0x14]
006bdbc8  10 50 8d e5                                      str r5, [sp, #0x10]
006bdbcc  10 00 9d e5                                      ldr r0, [sp, #0x10]
006bdbd0  06 10 a0 e1                                      mov r1, r6
006bdbd4  05 20 a0 e1                                      mov r2, r5
006bdbd8  d0 c1 d0 e1                                      ldrsb ip, [r0, #0x10]
006bdbdc  09 00 a0 e1                                      mov r0, sb
006bdbe0  00 00 5c e3                                      cmp ip, #0
006bdbe4  0c 30 a0 e1                                      mov r3, ip
006bdbe8  0d 00 00 ba                                      blt #0x6bdc24
006bdbec  04 80 8d e5                                      str r8, [sp, #4]
006bdbf0  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bdbf4  02 c0 a0 e3                                      mov ip, #2
006bdbf8  1c ab 8a e1                                      orr sl, sl, ip, lsl fp
006bdbfc  08 80 8d e5                                      str r8, [sp, #8]
006bdc00  00 70 8d e5                                      str r7, [sp]
006bdc04  39 fc ff eb                                      bl #0x6bccf0
006bdc08  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006bdc0c  01 b0 8b e2                                      add fp, fp, #1
006bdc10  04 00 5b e3                                      cmp fp, #4
006bdc14  01 c0 8c e2                                      add ip, ip, #1
006bdc18  00 80 a0 e1                                      mov r8, r0
006bdc1c  10 c0 8d e5                                      str ip, [sp, #0x10]
006bdc20  e9 ff ff 1a                                      bne #0x6bdbcc
006bdc24  dd 30 d5 e1                                      ldrsb r3, [r5, #0xd]
006bdc28  00 00 53 e3                                      cmp r3, #0
006bdc2c  09 00 00 ba                                      blt #0x6bdc58
006bdc30  04 80 8d e5                                      str r8, [sp, #4]
006bdc34  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bdc38  09 00 a0 e1                                      mov r0, sb
006bdc3c  06 10 a0 e1                                      mov r1, r6
006bdc40  05 20 a0 e1                                      mov r2, r5
006bdc44  08 80 8d e5                                      str r8, [sp, #8]
006bdc48  00 70 8d e5                                      str r7, [sp]
006bdc4c  27 fc ff eb                                      bl #0x6bccf0
006bdc50  02 a8 8a e3                                      orr sl, sl, #0x20000
006bdc54  00 80 a0 e1                                      mov r8, r0
006bdc58  de 30 d5 e1                                      ldrsb r3, [r5, #0xe]
006bdc5c  00 00 53 e3                                      cmp r3, #0
006bdc60  07 00 00 ba                                      blt #0x6bdc84
006bdc64  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006bdc68  09 00 a0 e1                                      mov r0, sb
006bdc6c  06 10 a0 e1                                      mov r1, r6
006bdc70  05 20 a0 e1                                      mov r2, r5
006bdc74  80 11 8d e8                                      stm sp, {r7, r8, ip}
006bdc78  1c fc ff eb                                      bl #0x6bccf0
006bdc7c  01 a7 8a e3                                      orr sl, sl, #0x40000
006bdc80  00 80 a0 e1                                      mov r8, r0
006bdc84  df 30 d5 e1                                      ldrsb r3, [r5, #0xf]
006bdc88  00 00 53 e3                                      cmp r3, #0
006bdc8c  09 00 00 ba                                      blt #0x6bdcb8
006bdc90  04 80 8d e5                                      str r8, [sp, #4]
006bdc94  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bdc98  09 00 a0 e1                                      mov r0, sb
006bdc9c  06 10 a0 e1                                      mov r1, r6
006bdca0  05 20 a0 e1                                      mov r2, r5
006bdca4  08 80 8d e5                                      str r8, [sp, #8]
006bdca8  00 70 8d e5                                      str r7, [sp]
006bdcac  0f fc ff eb                                      bl #0x6bccf0
006bdcb0  02 a7 8a e3                                      orr sl, sl, #0x80000
006bdcb4  00 80 a0 e1                                      mov r8, r0
006bdcb8  10 50 8d e5                                      str r5, [sp, #0x10]
006bdcbc  00 b0 a0 e3                                      mov fp, #0
006bdcc0  10 00 9d e5                                      ldr r0, [sp, #0x10]
006bdcc4  06 10 a0 e1                                      mov r1, r6
006bdcc8  05 20 a0 e1                                      mov r2, r5
006bdccc  d8 c1 d0 e1                                      ldrsb ip, [r0, #0x18]
006bdcd0  09 00 a0 e1                                      mov r0, sb
006bdcd4  00 00 5c e3                                      cmp ip, #0
006bdcd8  0c 30 a0 e1                                      mov r3, ip
006bdcdc  0d 00 00 ba                                      blt #0x6bdd18
006bdce0  04 80 8d e5                                      str r8, [sp, #4]
006bdce4  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bdce8  01 c6 a0 e3                                      mov ip, #0x100000
006bdcec  1c ab 8a e1                                      orr sl, sl, ip, lsl fp
006bdcf0  08 80 8d e5                                      str r8, [sp, #8]
006bdcf4  00 70 8d e5                                      str r7, [sp]
006bdcf8  fc fb ff eb                                      bl #0x6bccf0
006bdcfc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006bdd00  01 b0 8b e2                                      add fp, fp, #1
006bdd04  04 00 5b e3                                      cmp fp, #4
006bdd08  01 c0 8c e2                                      add ip, ip, #1
006bdd0c  00 80 a0 e1                                      mov r8, r0
006bdd10  10 c0 8d e5                                      str ip, [sp, #0x10]
006bdd14  e9 ff ff 1a                                      bne #0x6bdcc0
006bdd18  10 50 8d e5                                      str r5, [sp, #0x10]
006bdd1c  00 b0 a0 e3                                      mov fp, #0
006bdd20  10 00 9d e5                                      ldr r0, [sp, #0x10]
006bdd24  06 10 a0 e1                                      mov r1, r6
006bdd28  05 20 a0 e1                                      mov r2, r5
006bdd2c  d4 c1 d0 e1                                      ldrsb ip, [r0, #0x14]
006bdd30  09 00 a0 e1                                      mov r0, sb
006bdd34  00 00 5c e3                                      cmp ip, #0
006bdd38  0c 30 a0 e1                                      mov r3, ip
006bdd3c  0d 00 00 ba                                      blt #0x6bdd78
006bdd40  04 80 8d e5                                      str r8, [sp, #4]
006bdd44  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bdd48  01 c4 a0 e3                                      mov ip, #0x1000000
006bdd4c  1c ab 8a e1                                      orr sl, sl, ip, lsl fp
006bdd50  08 80 8d e5                                      str r8, [sp, #8]
006bdd54  00 70 8d e5                                      str r7, [sp]
006bdd58  e4 fb ff eb                                      bl #0x6bccf0
006bdd5c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006bdd60  01 b0 8b e2                                      add fp, fp, #1
006bdd64  04 00 5b e3                                      cmp fp, #4
006bdd68  01 c0 8c e2                                      add ip, ip, #1
006bdd6c  00 80 a0 e1                                      mov r8, r0
006bdd70  10 c0 8d e5                                      str ip, [sp, #0x10]
006bdd74  e9 ff ff 1a                                      bne #0x6bdd20
006bdd78  dc 31 d5 e1                                      ldrsb r3, [r5, #0x1c]
006bdd7c  00 00 53 e3                                      cmp r3, #0
006bdd80  09 00 00 ba                                      blt #0x6bddac
006bdd84  04 80 8d e5                                      str r8, [sp, #4]
006bdd88  68 80 9d e5                                      ldr r8, [sp, #0x68]
006bdd8c  09 00 a0 e1                                      mov r0, sb
006bdd90  06 10 a0 e1                                      mov r1, r6
006bdd94  05 20 a0 e1                                      mov r2, r5
006bdd98  08 80 8d e5                                      str r8, [sp, #8]
006bdd9c  00 70 8d e5                                      str r7, [sp]
006bdda0  d2 fb ff eb                                      bl #0x6bccf0
006bdda4  01 a2 8a e3                                      orr sl, sl, #0x10000000
006bdda8  00 80 a0 e1                                      mov r8, r0
006bddac  dd 31 d5 e1                                      ldrsb r3, [r5, #0x1d]
006bddb0  00 00 53 e3                                      cmp r3, #0
006bddb4  07 00 00 ba                                      blt #0x6bddd8
006bddb8  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006bddbc  09 00 a0 e1                                      mov r0, sb
006bddc0  06 10 a0 e1                                      mov r1, r6
006bddc4  05 20 a0 e1                                      mov r2, r5
006bddc8  80 11 8d e8                                      stm sp, {r7, r8, ip}
006bddcc  c7 fb ff eb                                      bl #0x6bccf0
006bddd0  02 a2 8a e3                                      orr sl, sl, #0x20000000
006bddd4  00 80 a0 e1                                      mov r8, r0
006bddd8  0a 10 a0 e1                                      mov r1, sl
006bdddc  18 00 8d e2                                      add r0, sp, #0x18
006bdde0  5d 8d fb eb                                      bl #0x5a135c
006bdde4  18 30 9d e5                                      ldr r3, [sp, #0x18]
006bdde8  00 00 53 e3                                      cmp r3, #0
006bddec  00 20 93 15                                      ldrne r2, [r3]
006bddf0  01 20 82 12                                      addne r2, r2, #1
006bddf4  00 20 83 15                                      strne r2, [r3]
006bddf8  14 a0 94 e5                                      ldr sl, [r4, #0x14]
006bddfc  14 30 84 e5                                      str r3, [r4, #0x14]
006bde00  00 00 5a e3                                      cmp sl, #0
006bde04  04 00 00 0a                                      beq #0x6bde1c
006bde08  00 30 9a e5                                      ldr r3, [sl]
006bde0c  01 30 43 e2                                      sub r3, r3, #1
006bde10  00 00 53 e3                                      cmp r3, #0
006bde14  00 30 8a e5                                      str r3, [sl]
006bde18  79 00 00 0a                                      beq #0x6be004
006bde1c  18 a0 9d e5                                      ldr sl, [sp, #0x18]
006bde20  00 00 5a e3                                      cmp sl, #0
006bde24  04 00 00 0a                                      beq #0x6bde3c
006bde28  00 30 9a e5                                      ldr r3, [sl]
006bde2c  01 30 43 e2                                      sub r3, r3, #1
006bde30  00 00 53 e3                                      cmp r3, #0
006bde34  00 30 8a e5                                      str r3, [sl]
006bde38  6c 00 00 0a                                      beq #0x6bdff0
006bde3c  00 20 e0 e3                                      mvn r2, #0
006bde40  00 30 a0 e3                                      mov r3, #0
006bde44  14 00 94 e5                                      ldr r0, [r4, #0x14]
006bde48  07 10 a0 e1                                      mov r1, r7
006bde4c  4e 8e fb eb                                      bl #0x5a178c
006bde50  00 30 96 e5                                      ldr r3, [r6]
006bde54  14 20 94 e5                                      ldr r2, [r4, #0x14]
006bde58  00 00 53 e3                                      cmp r3, #0
006bde5c  04 30 96 15                                      ldrne r3, [r6, #4]
006bde60  08 30 82 e5                                      str r3, [r2, #8]
006bde64  00 30 96 e5                                      ldr r3, [r6]
006bde68  0c 20 d5 e5                                      ldrb r2, [r5, #0xc]
006bde6c  00 00 53 e3                                      cmp r3, #0
006bde70  1a 00 00 0a                                      beq #0x6bdee0
006bde74  08 30 96 e5                                      ldr r3, [r6, #8]
006bde78  72 20 af e6                                      sxtb r2, r2
006bde7c  20 30 93 e5                                      ldr r3, [r3, #0x20]
006bde80  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
006bde84  00 00 53 e3                                      cmp r3, #0
006bde88  14 00 00 0a                                      beq #0x6bdee0
006bde8c  14 20 94 e5                                      ldr r2, [r4, #0x14]
006bde90  04 10 93 e5                                      ldr r1, [r3, #4]
006bde94  08 00 93 e5                                      ldr r0, [r3, #8]
006bde98  10 20 92 e5                                      ldr r2, [r2, #0x10]
006bde9c  00 c0 93 e5                                      ldr ip, [r3]
006bdea0  08 00 82 e5                                      str r0, [r2, #8]
006bdea4  00 c0 82 e5                                      str ip, [r2]
006bdea8  04 10 82 e5                                      str r1, [r2, #4]
006bdeac  14 20 94 e5                                      ldr r2, [r4, #0x14]
006bdeb0  14 00 93 e5                                      ldr r0, [r3, #0x14]
006bdeb4  0c c0 93 e5                                      ldr ip, [r3, #0xc]
006bdeb8  10 20 92 e5                                      ldr r2, [r2, #0x10]
006bdebc  10 10 93 e5                                      ldr r1, [r3, #0x10]
006bdec0  0c 30 82 e2                                      add r3, r2, #0xc
006bdec4  0c c0 82 e5                                      str ip, [r2, #0xc]
006bdec8  08 00 83 e5                                      str r0, [r3, #8]
006bdecc  04 10 83 e5                                      str r1, [r3, #4]
006bded0  14 30 94 e5                                      ldr r3, [r4, #0x14]
006bded4  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006bded8  04 20 82 e3                                      orr r2, r2, #4
006bdedc  be 20 c3 e1                                      strh r2, [r3, #0xe]
006bdee0  14 00 9d e5                                      ldr r0, [sp, #0x14]
006bdee4  24 20 a0 e3                                      mov r2, #0x24
006bdee8  00 10 a0 e3                                      mov r1, #0
006bdeec  08 b0 a0 e3                                      mov fp, #8
006bdef0  10 70 8d e5                                      str r7, [sp, #0x10]
006bdef4  14 80 8d e5                                      str r8, [sp, #0x14]
006bdef8  d0 31 d0 e1                                      ldrsb r3, [r0, #0x10]
006bdefc  00 00 53 e3                                      cmp r3, #0
006bdf00  23 00 00 ba                                      blt #0x6bdf94
006bdf04  00 c0 96 e5                                      ldr ip, [r6]
006bdf08  0c 70 42 e2                                      sub r7, r2, #0xc
006bdf0c  00 00 5c e3                                      cmp ip, #0
006bdf10  1a 00 00 0a                                      beq #0x6bdf80
006bdf14  08 c0 96 e5                                      ldr ip, [r6, #8]
006bdf18  20 c0 9c e5                                      ldr ip, [ip, #0x20]
006bdf1c  03 31 9c e7                                      ldr r3, [ip, r3, lsl #2]
006bdf20  00 00 53 e3                                      cmp r3, #0
006bdf24  15 00 00 0a                                      beq #0x6bdf80
006bdf28  14 c0 94 e5                                      ldr ip, [r4, #0x14]
006bdf2c  08 a0 93 e5                                      ldr sl, [r3, #8]
006bdf30  04 90 93 e5                                      ldr sb, [r3, #4]
006bdf34  10 50 9c e5                                      ldr r5, [ip, #0x10]
006bdf38  00 80 93 e5                                      ldr r8, [r3]
006bdf3c  07 c0 85 e0                                      add ip, r5, r7
006bdf40  07 80 85 e7                                      str r8, [r5, r7]
006bdf44  08 a0 8c e5                                      str sl, [ip, #8]
006bdf48  04 90 8c e5                                      str sb, [ip, #4]
006bdf4c  14 c0 94 e5                                      ldr ip, [r4, #0x14]
006bdf50  14 50 93 e5                                      ldr r5, [r3, #0x14]
006bdf54  0c 70 93 e5                                      ldr r7, [r3, #0xc]
006bdf58  10 c0 9c e5                                      ldr ip, [ip, #0x10]
006bdf5c  10 a0 93 e5                                      ldr sl, [r3, #0x10]
006bdf60  02 30 8c e0                                      add r3, ip, r2
006bdf64  02 70 8c e7                                      str r7, [ip, r2]
006bdf68  08 50 83 e5                                      str r5, [r3, #8]
006bdf6c  04 a0 83 e5                                      str sl, [r3, #4]
006bdf70  14 30 94 e5                                      ldr r3, [r4, #0x14]
006bdf74  be c0 d3 e1                                      ldrh ip, [r3, #0xe]
006bdf78  1b c1 8c e1                                      orr ip, ip, fp, lsl r1
006bdf7c  be c0 c3 e1                                      strh ip, [r3, #0xe]
006bdf80  01 10 81 e2                                      add r1, r1, #1
006bdf84  04 00 51 e3                                      cmp r1, #4
006bdf88  01 00 80 e2                                      add r0, r0, #1
006bdf8c  18 20 82 e2                                      add r2, r2, #0x18
006bdf90  d8 ff ff 1a                                      bne #0x6bdef8
006bdf94  10 70 9d e5                                      ldr r7, [sp, #0x10]
006bdf98  14 80 9d e5                                      ldr r8, [sp, #0x14]
006bdf9c  08 82 87 e0                                      add r8, r7, r8, lsl #4
006bdfa0  08 00 57 e1                                      cmp r7, r8
006bdfa4  07 50 a0 11                                      movne r5, r7
006bdfa8  06 00 00 0a                                      beq #0x6bdfc8
006bdfac  00 00 95 e5                                      ldr r0, [r5]
006bdfb0  10 50 85 e2                                      add r5, r5, #0x10
006bdfb4  00 00 50 e3                                      cmp r0, #0
006bdfb8  00 00 00 0a                                      beq #0x6bdfc0
006bdfbc  70 7d f1 eb                                      bl #0x31d584
006bdfc0  05 00 58 e1                                      cmp r8, r5
006bdfc4  f8 ff ff 1a                                      bne #0x6bdfac
006bdfc8  00 00 57 e3                                      cmp r7, #0
006bdfcc  01 00 00 0a                                      beq #0x6bdfd8
006bdfd0  07 00 a0 e1                                      mov r0, r7
006bdfd4  ab d9 f9 eb                                      bl #0x534688
006bdfd8  04 00 a0 e1                                      mov r0, r4
006bdfdc  44 d0 8d e2                                      add sp, sp, #0x44
006bdfe0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006bdfe4  28 c0 91 e5                                      ldr ip, [r1, #0x28]
006bdfe8  01 20 a0 e3                                      mov r2, #1
006bdfec  a1 fe ff ea                                      b #0x6bda78
006bdff0  0a 00 a0 e1                                      mov r0, sl
006bdff4  88 8a fb eb                                      bl #0x5a0a1c
006bdff8  0a 00 a0 e1                                      mov r0, sl
006bdffc  ab 40 f1 eb                                      bl #0x30e2b0
006be000  8d ff ff ea                                      b #0x6bde3c
006be004  0a 00 a0 e1                                      mov r0, sl
006be008  83 8a fb eb                                      bl #0x5a0a1c
006be00c  0a 00 a0 e1                                      mov r0, sl
006be010  a6 40 f1 eb                                      bl #0x30e2b0
006be014  80 ff ff ea                                      b #0x6bde1c
006be018  00 00 58 e3                                      cmp r8, #0
006be01c  41 00 00 1a                                      bne #0x6be128
006be020  24 10 95 e5                                      ldr r1, [r5, #0x24]
006be024  00 20 99 e5                                      ldr r2, [sb]
006be028  00 30 97 e5                                      ldr r3, [r7]
006be02c  01 08 51 e3                                      cmp r1, #0x10000
006be030  78 c0 92 e5                                      ldr ip, [r2, #0x78]
006be034  28 10 95 e5                                      ldr r1, [r5, #0x28]
006be038  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
006be03c  24 00 8d e2                                      add r0, sp, #0x24
006be040  01 11 a0 a1                                      lslge r1, r1, #2
006be044  81 10 a0 b1                                      lsllt r1, r1, #1
006be048  04 20 8d e5                                      str r2, [sp, #4]
006be04c  00 20 a0 e3                                      mov r2, #0
006be050  00 10 8d e5                                      str r1, [sp]
006be054  08 20 8d e5                                      str r2, [sp, #8]
006be058  09 10 a0 e1                                      mov r1, sb
006be05c  01 20 a0 e3                                      mov r2, #1
006be060  3c ff 2f e1                                      blx ip
006be064  24 30 9d e5                                      ldr r3, [sp, #0x24]
006be068  00 00 53 e3                                      cmp r3, #0
006be06c  04 20 93 15                                      ldrne r2, [r3, #4]
006be070  01 20 82 12                                      addne r2, r2, #1
006be074  04 20 83 15                                      strne r2, [r3, #4]
006be078  30 00 95 e5                                      ldr r0, [r5, #0x30]
006be07c  30 30 85 e5                                      str r3, [r5, #0x30]
006be080  00 00 50 e3                                      cmp r0, #0
006be084  00 00 00 0a                                      beq #0x6be08c
006be088  3d 7d f1 eb                                      bl #0x31d584
006be08c  24 00 9d e5                                      ldr r0, [sp, #0x24]
006be090  00 00 50 e3                                      cmp r0, #0
006be094  00 00 00 0a                                      beq #0x6be09c
006be098  39 7d f1 eb                                      bl #0x31d584
006be09c  30 30 95 e5                                      ldr r3, [r5, #0x30]
006be0a0  00 00 53 e3                                      cmp r3, #0
006be0a4  04 20 93 15                                      ldrne r2, [r3, #4]
006be0a8  01 20 82 12                                      addne r2, r2, #1
006be0ac  04 20 83 15                                      strne r2, [r3, #4]
006be0b0  18 00 94 e5                                      ldr r0, [r4, #0x18]
006be0b4  18 30 84 e5                                      str r3, [r4, #0x18]
006be0b8  00 00 50 e3                                      cmp r0, #0
006be0bc  93 fe ff 0a                                      beq #0x6bdb10
006be0c0  2f 7d f1 eb                                      bl #0x31d584
006be0c4  04 30 d7 e5                                      ldrb r3, [r7, #4]
006be0c8  00 00 53 e3                                      cmp r3, #0
006be0cc  92 fe ff 0a                                      beq #0x6bdb1c
006be0d0  30 30 95 e5                                      ldr r3, [r5, #0x30]
006be0d4  05 10 d7 e5                                      ldrb r1, [r7, #5]
006be0d8  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006be0dc  08 00 12 e3                                      tst r2, #8
006be0e0  93 00 00 1a                                      bne #0x6be334
006be0e4  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006be0e8  04 00 52 e3                                      cmp r2, #4
006be0ec  8a fe ff 0a                                      beq #0x6bdb1c
006be0f0  03 00 a0 e1                                      mov r0, r3
006be0f4  00 30 93 e5                                      ldr r3, [r3]
006be0f8  0f e0 a0 e1                                      mov lr, pc
006be0fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006be100  85 fe ff ea                                      b #0x6bdb1c
006be104  7b b0 ef e6                                      uxtb fp, fp
006be108  00 30 9a e5                                      ldr r3, [sl]
006be10c  0a 00 a0 e1                                      mov r0, sl
006be110  0f e0 a0 e1                                      mov lr, pc
006be114  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006be118  04 00 5b e3                                      cmp fp, #4
006be11c  11 b0 ca e5                                      strb fp, [sl, #0x11]
006be120  75 fe ff 1a                                      bne #0x6bdafc
006be124  79 fe ff ea                                      b #0x6bdb10
006be128  24 30 95 e5                                      ldr r3, [r5, #0x24]
006be12c  01 08 53 e3                                      cmp r3, #0x10000
006be130  28 30 95 e5                                      ldr r3, [r5, #0x28]
006be134  03 31 a0 a1                                      lslge r3, r3, #2
006be138  83 30 a0 b1                                      lsllt r3, r3, #1
006be13c  01 08 53 e3                                      cmp r3, #0x10000
006be140  83 00 00 ba                                      blt #0x6be354
006be144  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
006be148  3c a0 8d e2                                      add sl, sp, #0x3c
006be14c  0a 10 a0 e1                                      mov r1, sl
006be150  00 00 53 e3                                      cmp r3, #0
006be154  3c 30 8d e5                                      str r3, [sp, #0x3c]
006be158  00 20 93 15                                      ldrne r2, [r3]
006be15c  0c 00 84 e2                                      add r0, r4, #0xc
006be160  00 b0 a0 e3                                      mov fp, #0
006be164  01 20 82 12                                      addne r2, r2, #1
006be168  00 20 83 15                                      strne r2, [r3]
006be16c  7e f9 ff eb                                      bl #0x6bc76c
006be170  0a 00 a0 e1                                      mov r0, sl
006be174  68 f9 ff eb                                      bl #0x6bc71c
006be178  30 00 85 e2                                      add r0, r5, #0x30
006be17c  24 20 95 e5                                      ldr r2, [r5, #0x24]
006be180  00 30 99 e5                                      ldr r3, [sb]
006be184  10 00 8d e5                                      str r0, [sp, #0x10]
006be188  28 10 95 e5                                      ldr r1, [r5, #0x28]
006be18c  01 08 52 e3                                      cmp r2, #0x10000
006be190  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006be194  01 11 a0 a1                                      lslge r1, r1, #2
006be198  81 10 a0 b1                                      lsllt r1, r1, #1
006be19c  78 c0 93 e5                                      ldr ip, [r3, #0x78]
006be1a0  00 30 97 e5                                      ldr r3, [r7]
006be1a4  00 10 8d e5                                      str r1, [sp]
006be1a8  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006be1ac  38 a0 8d e2                                      add sl, sp, #0x38
006be1b0  0a 00 a0 e1                                      mov r0, sl
006be1b4  04 20 8d e5                                      str r2, [sp, #4]
006be1b8  09 10 a0 e1                                      mov r1, sb
006be1bc  01 20 a0 e3                                      mov r2, #1
006be1c0  08 b0 8d e5                                      str fp, [sp, #8]
006be1c4  3c ff 2f e1                                      blx ip
006be1c8  0a 10 a0 e1                                      mov r1, sl
006be1cc  10 00 9d e5                                      ldr r0, [sp, #0x10]
006be1d0  ad f9 ff eb                                      bl #0x6bc88c
006be1d4  0a 00 a0 e1                                      mov r0, sl
006be1d8  40 a0 8d e2                                      add sl, sp, #0x40
006be1dc  6a e6 fd eb                                      bl #0x637b8c
006be1e0  0c b0 2a e5                                      str fp, [sl, #-0xc]!
006be1e4  08 00 84 e2                                      add r0, r4, #8
006be1e8  0a 10 a0 e1                                      mov r1, sl
006be1ec  8c f9 ff eb                                      bl #0x6bc824
006be1f0  0a 00 a0 e1                                      mov r0, sl
006be1f4  76 f9 ff eb                                      bl #0x6bc7d4
006be1f8  a7 ff ff ea                                      b #0x6be09c
006be1fc  00 00 58 e3                                      cmp r8, #0
006be200  81 00 00 0a                                      beq #0x6be40c
006be204  24 70 97 e5                                      ldr r7, [r7, #0x24]
006be208  00 00 57 e3                                      cmp r7, #0
006be20c  00 30 97 15                                      ldrne r3, [r7]
006be210  02 30 83 12                                      addne r3, r3, #2
006be214  00 30 87 15                                      strne r3, [r7]
006be218  10 80 94 e5                                      ldr r8, [r4, #0x10]
006be21c  00 00 58 e3                                      cmp r8, #0
006be220  0a 00 00 0a                                      beq #0x6be250
006be224  00 30 98 e5                                      ldr r3, [r8]
006be228  01 30 43 e2                                      sub r3, r3, #1
006be22c  00 00 53 e3                                      cmp r3, #0
006be230  00 30 88 e5                                      str r3, [r8]
006be234  05 00 00 1a                                      bne #0x6be250
006be238  0c 00 98 e5                                      ldr r0, [r8, #0xc]
006be23c  00 00 50 e3                                      cmp r0, #0
006be240  00 00 00 0a                                      beq #0x6be248
006be244  9b 3f f1 eb                                      bl #0x30e0b8
006be248  00 30 a0 e3                                      mov r3, #0
006be24c  0c 30 88 e5                                      str r3, [r8, #0xc]
006be250  00 00 57 e3                                      cmp r7, #0
006be254  10 70 84 e5                                      str r7, [r4, #0x10]
006be258  0a 00 00 0a                                      beq #0x6be288
006be25c  00 30 97 e5                                      ldr r3, [r7]
006be260  01 30 43 e2                                      sub r3, r3, #1
006be264  00 00 53 e3                                      cmp r3, #0
006be268  00 30 87 e5                                      str r3, [r7]
006be26c  05 00 00 1a                                      bne #0x6be288
006be270  0c 00 97 e5                                      ldr r0, [r7, #0xc]
006be274  00 00 50 e3                                      cmp r0, #0
006be278  00 00 00 0a                                      beq #0x6be280
006be27c  8d 3f f1 eb                                      bl #0x30e0b8
006be280  00 30 a0 e3                                      mov r3, #0
006be284  0c 30 87 e5                                      str r3, [r7, #0xc]
006be288  00 10 96 e5                                      ldr r1, [r6]
006be28c  08 20 96 e5                                      ldr r2, [r6, #8]
006be290  00 30 99 e5                                      ldr r3, [sb]
006be294  00 00 51 e3                                      cmp r1, #0
006be298  04 10 96 15                                      ldrne r1, [r6, #4]
006be29c  28 80 82 e2                                      add r8, r2, #0x28
006be2a0  00 20 92 15                                      ldrne r2, [r2]
006be2a4  68 00 9d e5                                      ldr r0, [sp, #0x68]
006be2a8  78 c0 93 e5                                      ldr ip, [r3, #0x78]
006be2ac  91 02 01 10                                      mulne r1, r1, r2
006be2b0  10 20 94 e5                                      ldr r2, [r4, #0x10]
006be2b4  00 30 90 e5                                      ldr r3, [r0]
006be2b8  00 10 8d e5                                      str r1, [sp]
006be2bc  0c 00 92 e5                                      ldr r0, [r2, #0xc]
006be2c0  20 70 8d e2                                      add r7, sp, #0x20
006be2c4  00 10 a0 e3                                      mov r1, #0
006be2c8  01 20 a0 e1                                      mov r2, r1
006be2cc  03 00 8d e9                                      stmib sp, {r0, r1}
006be2d0  07 00 a0 e1                                      mov r0, r7
006be2d4  09 10 a0 e1                                      mov r1, sb
006be2d8  3c ff 2f e1                                      blx ip
006be2dc  08 00 a0 e1                                      mov r0, r8
006be2e0  07 10 a0 e1                                      mov r1, r7
006be2e4  68 f9 ff eb                                      bl #0x6bc88c
006be2e8  07 00 a0 e1                                      mov r0, r7
006be2ec  26 e6 fd eb                                      bl #0x637b8c
006be2f0  21 fe ff ea                                      b #0x6bdb7c
006be2f4  08 30 96 e5                                      ldr r3, [r6, #8]
006be2f8  05 10 d1 e5                                      ldrb r1, [r1, #5]
006be2fc  28 30 93 e5                                      ldr r3, [r3, #0x28]
006be300  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006be304  08 00 12 e3                                      tst r2, #8
006be308  01 00 00 0a                                      beq #0x6be314
006be30c  02 00 12 e3                                      tst r2, #2
006be310  1d fe ff 0a                                      beq #0x6bdb8c
006be314  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006be318  04 00 52 e3                                      cmp r2, #4
006be31c  1a fe ff 0a                                      beq #0x6bdb8c
006be320  03 00 a0 e1                                      mov r0, r3
006be324  00 30 93 e5                                      ldr r3, [r3]
006be328  0f e0 a0 e1                                      mov lr, pc
006be32c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006be330  15 fe ff ea                                      b #0x6bdb8c
006be334  02 00 12 e3                                      tst r2, #2
006be338  f7 fd ff 0a                                      beq #0x6bdb1c
006be33c  68 ff ff ea                                      b #0x6be0e4
006be340  00 30 9a e5                                      ldr r3, [sl]
006be344  0a 00 a0 e1                                      mov r0, sl
006be348  0f e0 a0 e1                                      mov lr, pc
006be34c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006be350  00 fe ff ea                                      b #0x6bdb58
006be354  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
006be358  30 a0 8d e2                                      add sl, sp, #0x30
006be35c  0a 10 a0 e1                                      mov r1, sl
006be360  00 00 53 e3                                      cmp r3, #0
006be364  30 30 8d e5                                      str r3, [sp, #0x30]
006be368  00 20 93 15                                      ldrne r2, [r3]
006be36c  08 00 84 e2                                      add r0, r4, #8
006be370  00 b0 a0 e3                                      mov fp, #0
006be374  01 20 82 12                                      addne r2, r2, #1
006be378  00 20 83 15                                      strne r2, [r3]
006be37c  28 f9 ff eb                                      bl #0x6bc824
006be380  0a 00 a0 e1                                      mov r0, sl
006be384  12 f9 ff eb                                      bl #0x6bc7d4
006be388  30 10 85 e2                                      add r1, r5, #0x30
006be38c  24 20 95 e5                                      ldr r2, [r5, #0x24]
006be390  00 30 99 e5                                      ldr r3, [sb]
006be394  10 10 8d e5                                      str r1, [sp, #0x10]
006be398  28 10 95 e5                                      ldr r1, [r5, #0x28]
006be39c  01 08 52 e3                                      cmp r2, #0x10000
006be3a0  08 20 94 e5                                      ldr r2, [r4, #8]
006be3a4  01 11 a0 a1                                      lslge r1, r1, #2
006be3a8  81 10 a0 b1                                      lsllt r1, r1, #1
006be3ac  78 c0 93 e5                                      ldr ip, [r3, #0x78]
006be3b0  00 30 97 e5                                      ldr r3, [r7]
006be3b4  00 10 8d e5                                      str r1, [sp]
006be3b8  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006be3bc  2c a0 8d e2                                      add sl, sp, #0x2c
006be3c0  0a 00 a0 e1                                      mov r0, sl
006be3c4  04 20 8d e5                                      str r2, [sp, #4]
006be3c8  09 10 a0 e1                                      mov r1, sb
006be3cc  01 20 a0 e3                                      mov r2, #1
006be3d0  08 b0 8d e5                                      str fp, [sp, #8]
006be3d4  3c ff 2f e1                                      blx ip
006be3d8  0a 10 a0 e1                                      mov r1, sl
006be3dc  10 00 9d e5                                      ldr r0, [sp, #0x10]
006be3e0  29 f9 ff eb                                      bl #0x6bc88c
006be3e4  0a 00 a0 e1                                      mov r0, sl
006be3e8  40 a0 8d e2                                      add sl, sp, #0x40
006be3ec  e6 e5 fd eb                                      bl #0x637b8c
006be3f0  18 b0 2a e5                                      str fp, [sl, #-0x18]!
006be3f4  0c 00 84 e2                                      add r0, r4, #0xc
006be3f8  0a 10 a0 e1                                      mov r1, sl
006be3fc  da f8 ff eb                                      bl #0x6bc76c
006be400  0a 00 a0 e1                                      mov r0, sl
006be404  c4 f8 ff eb                                      bl #0x6bc71c
006be408  23 ff ff ea                                      b #0x6be09c
006be40c  04 20 96 e5                                      ldr r2, [r6, #4]
006be410  00 10 97 e5                                      ldr r1, [r7]
006be414  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006be418  1c a0 8d e2                                      add sl, sp, #0x1c
006be41c  91 02 01 e0                                      mul r1, r1, r2
006be420  00 30 9c e5                                      ldr r3, [ip]
006be424  00 10 8d e5                                      str r1, [sp]
006be428  24 10 97 e5                                      ldr r1, [r7, #0x24]
006be42c  08 80 8d e5                                      str r8, [sp, #8]
006be430  08 20 a0 e1                                      mov r2, r8
006be434  04 10 8d e5                                      str r1, [sp, #4]
006be438  0a 00 a0 e1                                      mov r0, sl
006be43c  09 10 a0 e1                                      mov r1, sb
006be440  00 c0 99 e5                                      ldr ip, [sb]
006be444  0f e0 a0 e1                                      mov lr, pc
006be448  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006be44c  28 00 87 e2                                      add r0, r7, #0x28
006be450  0a 10 a0 e1                                      mov r1, sl
006be454  0c f9 ff eb                                      bl #0x6bc88c
006be458  0a 00 a0 e1                                      mov r0, sl
006be45c  ca e5 fd eb                                      bl #0x637b8c
006be460  c5 fd ff ea                                      b #0x6bdb7c
; mapping-symbol data/literal pool
006be464  8c 70 2d 00 54 0c 00 00 d8 d8 22 00              .byte 0x8c, 0x70, 0x2d, 0x00, 0x54, 0x0c, 0x00, 0x00, 0xd8, 0xd8, 0x22, 0x00

; FUNCTION 0x006d11d4, declared_size=164, range_size=164, mode=arm
; class-group: glitch::scene::CMeshBuffer
; alias: _ZN6glitch5scene11CMeshBufferC1EjRKNS_5video16CPrimitiveStreamEb.clone.1
; demangled: glitch::scene::CMeshBuffer::CMeshBuffer(unsigned int, glitch::video::CPrimitiveStream const&, bool) [clone .clone.1]
; decoder-mode: arm
006d11d4  94 30 9f e5                                      ldr r3, [pc, #0x94]
006d11d8  94 c0 9f e5                                      ldr ip, [pc, #0x94]
006d11dc  70 40 2d e9                                      push {r4, r5, r6, lr}
006d11e0  03 30 8f e0                                      add r3, pc, r3
006d11e4  0c c0 93 e7                                      ldr ip, [r3, ip]
006d11e8  00 40 a0 e1                                      mov r4, r0
006d11ec  00 00 a0 e3                                      mov r0, #0
006d11f0  08 c0 8c e2                                      add ip, ip, #8
006d11f4  10 00 84 e5                                      str r0, [r4, #0x10]
006d11f8  04 00 84 e5                                      str r0, [r4, #4]
006d11fc  08 00 84 e5                                      str r0, [r4, #8]
006d1200  0c 00 84 e5                                      str r0, [r4, #0xc]
006d1204  00 c0 84 e5                                      str ip, [r4]
006d1208  14 00 84 e2                                      add r0, r4, #0x14
006d120c  02 50 a0 e1                                      mov r5, r2
006d1210  51 40 fb eb                                      bl #0x5a135c
006d1214  00 30 95 e5                                      ldr r3, [r5]
006d1218  04 00 a0 e1                                      mov r0, r4
006d121c  18 30 84 e5                                      str r3, [r4, #0x18]
006d1220  00 00 53 e3                                      cmp r3, #0
006d1224  04 20 93 15                                      ldrne r2, [r3, #4]
006d1228  01 20 82 12                                      addne r2, r2, #1
006d122c  04 20 83 15                                      strne r2, [r3, #4]
006d1230  04 20 95 e5                                      ldr r2, [r5, #4]
006d1234  00 30 a0 e3                                      mov r3, #0
006d1238  1c 20 84 e5                                      str r2, [r4, #0x1c]
006d123c  08 20 95 e5                                      ldr r2, [r5, #8]
006d1240  20 20 84 e5                                      str r2, [r4, #0x20]
006d1244  0c 20 95 e5                                      ldr r2, [r5, #0xc]
006d1248  24 20 84 e5                                      str r2, [r4, #0x24]
006d124c  10 20 95 e5                                      ldr r2, [r5, #0x10]
006d1250  28 20 84 e5                                      str r2, [r4, #0x28]
006d1254  b4 21 d5 e1                                      ldrh r2, [r5, #0x14]
006d1258  bc 22 c4 e1                                      strh r2, [r4, #0x2c]
006d125c  b6 51 d5 e1                                      ldrh r5, [r5, #0x16]
006d1260  34 30 c4 e5                                      strb r3, [r4, #0x34]
006d1264  30 30 84 e5                                      str r3, [r4, #0x30]
006d1268  be 52 c4 e1                                      strh r5, [r4, #0x2e]
006d126c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006d1270  b0 38 2c 00 54 0c 00 00                          .byte 0xb0, 0x38, 0x2c, 0x00, 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x006d5ed4, declared_size=164, range_size=164, mode=arm
; class-group: glitch::scene::CMeshBuffer
; alias: _ZN6glitch5scene11CMeshBufferC1EjRKNS_5video16CPrimitiveStreamEb.clone.0
; demangled: glitch::scene::CMeshBuffer::CMeshBuffer(unsigned int, glitch::video::CPrimitiveStream const&, bool) [clone .clone.0]
; decoder-mode: arm
006d5ed4  94 30 9f e5                                      ldr r3, [pc, #0x94]
006d5ed8  94 c0 9f e5                                      ldr ip, [pc, #0x94]
006d5edc  70 40 2d e9                                      push {r4, r5, r6, lr}
006d5ee0  03 30 8f e0                                      add r3, pc, r3
006d5ee4  0c c0 93 e7                                      ldr ip, [r3, ip]
006d5ee8  00 40 a0 e1                                      mov r4, r0
006d5eec  00 00 a0 e3                                      mov r0, #0
006d5ef0  08 c0 8c e2                                      add ip, ip, #8
006d5ef4  10 00 84 e5                                      str r0, [r4, #0x10]
006d5ef8  04 00 84 e5                                      str r0, [r4, #4]
006d5efc  08 00 84 e5                                      str r0, [r4, #8]
006d5f00  0c 00 84 e5                                      str r0, [r4, #0xc]
006d5f04  00 c0 84 e5                                      str ip, [r4]
006d5f08  14 00 84 e2                                      add r0, r4, #0x14
006d5f0c  02 50 a0 e1                                      mov r5, r2
006d5f10  11 2d fb eb                                      bl #0x5a135c
006d5f14  00 30 95 e5                                      ldr r3, [r5]
006d5f18  04 00 a0 e1                                      mov r0, r4
006d5f1c  18 30 84 e5                                      str r3, [r4, #0x18]
006d5f20  00 00 53 e3                                      cmp r3, #0
006d5f24  04 20 93 15                                      ldrne r2, [r3, #4]
006d5f28  01 20 82 12                                      addne r2, r2, #1
006d5f2c  04 20 83 15                                      strne r2, [r3, #4]
006d5f30  04 20 95 e5                                      ldr r2, [r5, #4]
006d5f34  00 30 a0 e3                                      mov r3, #0
006d5f38  1c 20 84 e5                                      str r2, [r4, #0x1c]
006d5f3c  08 20 95 e5                                      ldr r2, [r5, #8]
006d5f40  20 20 84 e5                                      str r2, [r4, #0x20]
006d5f44  0c 20 95 e5                                      ldr r2, [r5, #0xc]
006d5f48  24 20 84 e5                                      str r2, [r4, #0x24]
006d5f4c  10 20 95 e5                                      ldr r2, [r5, #0x10]
006d5f50  28 20 84 e5                                      str r2, [r4, #0x28]
006d5f54  b4 21 d5 e1                                      ldrh r2, [r5, #0x14]
006d5f58  bc 22 c4 e1                                      strh r2, [r4, #0x2c]
006d5f5c  b6 51 d5 e1                                      ldrh r5, [r5, #0x16]
006d5f60  34 30 c4 e5                                      strb r3, [r4, #0x34]
006d5f64  30 30 84 e5                                      str r3, [r4, #0x30]
006d5f68  be 52 c4 e1                                      strh r5, [r4, #0x2e]
006d5f6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006d5f70  b0 eb 2b 00 54 0c 00 00                          .byte 0xb0, 0xeb, 0x2b, 0x00, 0x54, 0x0c, 0x00, 0x00
