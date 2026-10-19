; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00646968, declared_size=44, range_size=44, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh::SModularBuffer
; alias: _ZN6glitch7collada19CModularSkinnedMesh14SModularBufferC2Ev
; demangled: glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer()
; decoder-mode: arm
00646968  00 20 a0 e3                                      mov r2, #0
0064696c  01 10 a0 e3                                      mov r1, #1
00646970  1c 10 c0 e5                                      strb r1, [r0, #0x1c]
00646974  18 20 80 e5                                      str r2, [r0, #0x18]
00646978  00 20 80 e5                                      str r2, [r0]
0064697c  04 20 80 e5                                      str r2, [r0, #4]
00646980  08 20 80 e5                                      str r2, [r0, #8]
00646984  0c 20 80 e5                                      str r2, [r0, #0xc]
00646988  10 20 80 e5                                      str r2, [r0, #0x10]
0064698c  14 20 80 e5                                      str r2, [r0, #0x14]
00646990  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646994, declared_size=44, range_size=44, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh::SModularBuffer
; alias: _ZN6glitch7collada19CModularSkinnedMesh14SModularBufferC1Ev
; demangled: glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer()
; decoder-mode: arm
00646994  00 20 a0 e3                                      mov r2, #0
00646998  01 10 a0 e3                                      mov r1, #1
0064699c  1c 10 c0 e5                                      strb r1, [r0, #0x1c]
006469a0  18 20 80 e5                                      str r2, [r0, #0x18]
006469a4  00 20 80 e5                                      str r2, [r0]
006469a8  04 20 80 e5                                      str r2, [r0, #4]
006469ac  08 20 80 e5                                      str r2, [r0, #8]
006469b0  0c 20 80 e5                                      str r2, [r0, #0xc]
006469b4  10 20 80 e5                                      str r2, [r0, #0x10]
006469b8  14 20 80 e5                                      str r2, [r0, #0x14]
006469bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00647430, declared_size=136, range_size=136, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh::SModularBuffer
; alias: _ZN6glitch7collada19CModularSkinnedMesh14SModularBufferC1ERKS2_
; demangled: glitch::collada::CModularSkinnedMesh::SModularBuffer::SModularBuffer(glitch::collada::CModularSkinnedMesh::SModularBuffer const&)
; decoder-mode: arm
00647430  70 40 2d e9                                      push {r4, r5, r6, lr}
00647434  00 30 91 e5                                      ldr r3, [r1]
00647438  00 40 a0 e1                                      mov r4, r0
0064743c  01 50 a0 e1                                      mov r5, r1
00647440  00 30 80 e5                                      str r3, [r0]
00647444  00 00 53 e3                                      cmp r3, #0
00647448  04 20 93 15                                      ldrne r2, [r3, #4]
0064744c  01 20 82 12                                      addne r2, r2, #1
00647450  04 20 83 15                                      strne r2, [r3, #4]
00647454  04 30 91 e5                                      ldr r3, [r1, #4]
00647458  04 30 80 e5                                      str r3, [r0, #4]
0064745c  00 00 53 e3                                      cmp r3, #0
00647460  00 20 93 15                                      ldrne r2, [r3]
00647464  01 20 82 12                                      addne r2, r2, #1
00647468  00 20 83 15                                      strne r2, [r3]
0064746c  08 30 91 e5                                      ldr r3, [r1, #8]
00647470  0c 10 81 e2                                      add r1, r1, #0xc
00647474  00 00 53 e3                                      cmp r3, #0
00647478  08 30 80 e5                                      str r3, [r0, #8]
0064747c  00 20 93 15                                      ldrne r2, [r3]
00647480  0c 00 80 e2                                      add r0, r0, #0xc
00647484  01 20 82 12                                      addne r2, r2, #1
00647488  00 20 83 15                                      strne r2, [r3]
0064748c  cc ff ff eb                                      bl #0x6473c4
00647490  18 30 95 e5                                      ldr r3, [r5, #0x18]
00647494  04 00 a0 e1                                      mov r0, r4
00647498  00 00 53 e3                                      cmp r3, #0
0064749c  18 30 84 e5                                      str r3, [r4, #0x18]
006474a0  04 20 93 15                                      ldrne r2, [r3, #4]
006474a4  01 20 82 12                                      addne r2, r2, #1
006474a8  04 20 83 15                                      strne r2, [r3, #4]
006474ac  1c 30 d5 e5                                      ldrb r3, [r5, #0x1c]
006474b0  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
006474b4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00647970, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh::SModularBuffer
; alias: _ZN6glitch7collada19CModularSkinnedMesh14SModularBuffer10reallocateEjjb
; demangled: glitch::collada::CModularSkinnedMesh::SModularBuffer::reallocate(unsigned int, unsigned int, bool)
; decoder-mode: arm
00647970  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00647974  18 50 90 e5                                      ldr r5, [r0, #0x18]
00647978  02 40 a0 e1                                      mov r4, r2
0064797c  00 70 a0 e1                                      mov r7, r0
00647980  08 20 95 e5                                      ldr r2, [r5, #8]
00647984  01 60 a0 e1                                      mov r6, r1
00647988  03 80 a0 e1                                      mov r8, r3
0064798c  00 00 52 e3                                      cmp r2, #0
00647990  31 00 00 0a                                      beq #0x647a5c
00647994  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00647998  03 00 56 e1                                      cmp r6, r3
0064799c  0b 00 00 0a                                      beq #0x6479d0
006479a0  00 00 58 e3                                      cmp r8, #0
006479a4  01 00 00 1a                                      bne #0x6479b0
006479a8  03 00 56 e1                                      cmp r6, r3
006479ac  07 00 00 9a                                      bls #0x6479d0
006479b0  00 10 a0 e3                                      mov r1, #0
006479b4  06 00 a0 e1                                      mov r0, r6
006479b8  fa b1 fb eb                                      bl #0x5341a8
006479bc  06 10 a0 e1                                      mov r1, r6
006479c0  00 20 a0 e1                                      mov r2, r0
006479c4  01 30 a0 e3                                      mov r3, #1
006479c8  05 00 a0 e1                                      mov r0, r5
006479cc  b8 68 fd eb                                      bl #0x5a1cb4
006479d0  00 30 97 e5                                      ldr r3, [r7]
006479d4  18 50 93 e5                                      ldr r5, [r3, #0x18]
006479d8  00 00 55 e3                                      cmp r5, #0
006479dc  04 30 95 15                                      ldrne r3, [r5, #4]
006479e0  01 30 83 12                                      addne r3, r3, #1
006479e4  04 30 85 15                                      strne r3, [r5, #4]
006479e8  08 30 95 e5                                      ldr r3, [r5, #8]
006479ec  00 00 53 e3                                      cmp r3, #0
006479f0  0e 00 00 0a                                      beq #0x647a30
006479f4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006479f8  03 00 54 e1                                      cmp r4, r3
006479fc  0e 00 00 9a                                      bls #0x647a3c
00647a00  00 10 a0 e3                                      mov r1, #0
00647a04  04 00 a0 e1                                      mov r0, r4
00647a08  e6 b1 fb eb                                      bl #0x5341a8
00647a0c  04 10 a0 e1                                      mov r1, r4
00647a10  00 20 a0 e1                                      mov r2, r0
00647a14  01 30 a0 e3                                      mov r3, #1
00647a18  05 00 a0 e1                                      mov r0, r5
00647a1c  a4 68 fd eb                                      bl #0x5a1cb4
00647a20  05 00 a0 e1                                      mov r0, r5
00647a24  d6 56 f3 eb                                      bl #0x31d584
00647a28  00 00 a0 e3                                      mov r0, #0
00647a2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00647a30  00 00 54 e3                                      cmp r4, #0
00647a34  f1 ff ff 1a                                      bne #0x647a00
00647a38  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00647a3c  03 00 54 e1                                      cmp r4, r3
00647a40  f6 ff ff 0a                                      beq #0x647a20
00647a44  00 00 58 e3                                      cmp r8, #0
00647a48  ec ff ff 1a                                      bne #0x647a00
00647a4c  05 00 a0 e1                                      mov r0, r5
00647a50  cb 56 f3 eb                                      bl #0x31d584
00647a54  00 00 a0 e3                                      mov r0, #0
00647a58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00647a5c  00 00 51 e3                                      cmp r1, #0
00647a60  d2 ff ff 1a                                      bne #0x6479b0
00647a64  ca ff ff ea                                      b #0x647994

; FUNCTION 0x00647a68, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh::SModularBuffer
; alias: _ZN6glitch7collada19CModularSkinnedMesh14SModularBufferD1Ev
; demangled: glitch::collada::CModularSkinnedMesh::SModularBuffer::~SModularBuffer()
; decoder-mode: arm
00647a68  10 40 2d e9                                      push {r4, lr}
00647a6c  00 40 a0 e1                                      mov r4, r0
00647a70  18 00 90 e5                                      ldr r0, [r0, #0x18]
00647a74  00 00 50 e3                                      cmp r0, #0
00647a78  00 00 00 0a                                      beq #0x647a80
00647a7c  c0 56 f3 eb                                      bl #0x31d584
00647a80  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00647a84  00 00 50 e3                                      cmp r0, #0
00647a88  00 00 00 0a                                      beq #0x647a90
00647a8c  6f 22 f3 eb                                      bl #0x310450
00647a90  08 00 84 e2                                      add r0, r4, #8
00647a94  f4 c9 fc eb                                      bl #0x57a26c
00647a98  04 00 84 e2                                      add r0, r4, #4
00647a9c  51 24 f3 eb                                      bl #0x310be8
00647aa0  00 00 94 e5                                      ldr r0, [r4]
00647aa4  00 00 50 e3                                      cmp r0, #0
00647aa8  00 00 00 0a                                      beq #0x647ab0
00647aac  b4 56 f3 eb                                      bl #0x31d584
00647ab0  04 00 a0 e1                                      mov r0, r4
00647ab4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00647cc8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh::SModularBuffer
; alias: _ZN6glitch7collada19CModularSkinnedMesh14SModularBufferD2Ev
; demangled: glitch::collada::CModularSkinnedMesh::SModularBuffer::~SModularBuffer()
; decoder-mode: arm
00647cc8  10 40 2d e9                                      push {r4, lr}
00647ccc  00 40 a0 e1                                      mov r4, r0
00647cd0  18 00 90 e5                                      ldr r0, [r0, #0x18]
00647cd4  00 00 50 e3                                      cmp r0, #0
00647cd8  00 00 00 0a                                      beq #0x647ce0
00647cdc  28 56 f3 eb                                      bl #0x31d584
00647ce0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00647ce4  00 00 50 e3                                      cmp r0, #0
00647ce8  00 00 00 0a                                      beq #0x647cf0
00647cec  d7 21 f3 eb                                      bl #0x310450
00647cf0  08 00 84 e2                                      add r0, r4, #8
00647cf4  5c c9 fc eb                                      bl #0x57a26c
00647cf8  04 00 84 e2                                      add r0, r4, #4
00647cfc  b9 23 f3 eb                                      bl #0x310be8
00647d00  00 00 94 e5                                      ldr r0, [r4]
00647d04  00 00 50 e3                                      cmp r0, #0
00647d08  00 00 00 0a                                      beq #0x647d10
00647d0c  1c 56 f3 eb                                      bl #0x31d584
00647d10  04 00 a0 e1                                      mov r0, r4
00647d14  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00647d18, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh::SModularBuffer
; alias: _ZN6glitch7collada19CModularSkinnedMesh14SModularBufferaSERKS2_
; demangled: glitch::collada::CModularSkinnedMesh::SModularBuffer::operator=(glitch::collada::CModularSkinnedMesh::SModularBuffer const&)
; decoder-mode: arm
00647d18  30 40 2d e9                                      push {r4, r5, lr}
00647d1c  00 30 91 e5                                      ldr r3, [r1]
00647d20  00 40 a0 e1                                      mov r4, r0
00647d24  0c d0 4d e2                                      sub sp, sp, #0xc
00647d28  00 00 53 e3                                      cmp r3, #0
00647d2c  04 20 93 15                                      ldrne r2, [r3, #4]
00647d30  01 50 a0 e1                                      mov r5, r1
00647d34  01 20 82 12                                      addne r2, r2, #1
00647d38  04 20 83 15                                      strne r2, [r3, #4]
00647d3c  00 00 90 e5                                      ldr r0, [r0]
00647d40  00 30 84 e5                                      str r3, [r4]
00647d44  00 00 50 e3                                      cmp r0, #0
00647d48  00 00 00 0a                                      beq #0x647d50
00647d4c  0c 56 f3 eb                                      bl #0x31d584
00647d50  04 30 95 e5                                      ldr r3, [r5, #4]
00647d54  08 00 8d e2                                      add r0, sp, #8
00647d58  04 30 8d e5                                      str r3, [sp, #4]
00647d5c  00 00 53 e3                                      cmp r3, #0
00647d60  00 20 93 15                                      ldrne r2, [r3]
00647d64  01 20 82 12                                      addne r2, r2, #1
00647d68  00 20 83 15                                      strne r2, [r3]
00647d6c  04 20 94 e5                                      ldr r2, [r4, #4]
00647d70  04 30 9d 15                                      ldrne r3, [sp, #4]
00647d74  04 30 84 e5                                      str r3, [r4, #4]
00647d78  04 20 20 e5                                      str r2, [r0, #-4]!
00647d7c  99 23 f3 eb                                      bl #0x310be8
00647d80  08 30 95 e5                                      ldr r3, [r5, #8]
00647d84  08 00 8d e2                                      add r0, sp, #8
00647d88  00 30 8d e5                                      str r3, [sp]
00647d8c  00 00 53 e3                                      cmp r3, #0
00647d90  00 20 93 15                                      ldrne r2, [r3]
00647d94  01 20 82 12                                      addne r2, r2, #1
00647d98  00 20 83 15                                      strne r2, [r3]
00647d9c  08 20 94 e5                                      ldr r2, [r4, #8]
00647da0  00 30 9d 15                                      ldrne r3, [sp]
00647da4  08 30 84 e5                                      str r3, [r4, #8]
00647da8  08 20 20 e5                                      str r2, [r0, #-8]!
00647dac  0d 00 a0 e1                                      mov r0, sp
00647db0  2d c9 fc eb                                      bl #0x57a26c
00647db4  0c 00 84 e2                                      add r0, r4, #0xc
00647db8  0c 10 85 e2                                      add r1, r5, #0xc
00647dbc  42 fd ff eb                                      bl #0x6472cc
00647dc0  18 30 95 e5                                      ldr r3, [r5, #0x18]
00647dc4  00 00 53 e3                                      cmp r3, #0
00647dc8  04 20 93 15                                      ldrne r2, [r3, #4]
00647dcc  01 20 82 12                                      addne r2, r2, #1
00647dd0  04 20 83 15                                      strne r2, [r3, #4]
00647dd4  18 00 94 e5                                      ldr r0, [r4, #0x18]
00647dd8  18 30 84 e5                                      str r3, [r4, #0x18]
00647ddc  00 00 50 e3                                      cmp r0, #0
00647de0  00 00 00 0a                                      beq #0x647de8
00647de4  e6 55 f3 eb                                      bl #0x31d584
00647de8  1c 30 d5 e5                                      ldrb r3, [r5, #0x1c]
00647dec  04 00 a0 e1                                      mov r0, r4
00647df0  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
00647df4  0c d0 8d e2                                      add sp, sp, #0xc
00647df8  30 80 bd e8                                      pop {r4, r5, pc}
