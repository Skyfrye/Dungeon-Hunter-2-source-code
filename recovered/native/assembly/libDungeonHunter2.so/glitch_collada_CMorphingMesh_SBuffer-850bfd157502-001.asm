; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064a008, declared_size=168, range_size=168, mode=arm
; class-group: glitch::collada::CMorphingMesh::SBuffer
; alias: _ZN6glitch7collada13CMorphingMesh7SBufferaSERKS2_
; demangled: glitch::collada::CMorphingMesh::SBuffer::operator=(glitch::collada::CMorphingMesh::SBuffer const&)
; decoder-mode: arm
0064a008  30 40 2d e9                                      push {r4, r5, lr}
0064a00c  00 30 91 e5                                      ldr r3, [r1]
0064a010  00 40 a0 e1                                      mov r4, r0
0064a014  0c d0 4d e2                                      sub sp, sp, #0xc
0064a018  00 00 53 e3                                      cmp r3, #0
0064a01c  04 20 93 15                                      ldrne r2, [r3, #4]
0064a020  01 50 a0 e1                                      mov r5, r1
0064a024  01 20 82 12                                      addne r2, r2, #1
0064a028  04 20 83 15                                      strne r2, [r3, #4]
0064a02c  00 00 90 e5                                      ldr r0, [r0]
0064a030  00 30 84 e5                                      str r3, [r4]
0064a034  00 00 50 e3                                      cmp r0, #0
0064a038  00 00 00 0a                                      beq #0x64a040
0064a03c  50 4d f3 eb                                      bl #0x31d584
0064a040  04 30 95 e5                                      ldr r3, [r5, #4]
0064a044  08 00 8d e2                                      add r0, sp, #8
0064a048  04 30 8d e5                                      str r3, [sp, #4]
0064a04c  00 00 53 e3                                      cmp r3, #0
0064a050  00 20 93 15                                      ldrne r2, [r3]
0064a054  01 20 82 12                                      addne r2, r2, #1
0064a058  00 20 83 15                                      strne r2, [r3]
0064a05c  04 20 94 e5                                      ldr r2, [r4, #4]
0064a060  04 30 9d 15                                      ldrne r3, [sp, #4]
0064a064  04 30 84 e5                                      str r3, [r4, #4]
0064a068  04 20 20 e5                                      str r2, [r0, #-4]!
0064a06c  dd 1a f3 eb                                      bl #0x310be8
0064a070  08 30 95 e5                                      ldr r3, [r5, #8]
0064a074  08 00 8d e2                                      add r0, sp, #8
0064a078  00 30 8d e5                                      str r3, [sp]
0064a07c  00 00 53 e3                                      cmp r3, #0
0064a080  00 20 93 15                                      ldrne r2, [r3]
0064a084  01 20 82 12                                      addne r2, r2, #1
0064a088  00 20 83 15                                      strne r2, [r3]
0064a08c  00 30 9d 15                                      ldrne r3, [sp]
0064a090  08 20 94 e5                                      ldr r2, [r4, #8]
0064a094  08 30 84 e5                                      str r3, [r4, #8]
0064a098  08 20 20 e5                                      str r2, [r0, #-8]!
0064a09c  0d 00 a0 e1                                      mov r0, sp
0064a0a0  71 c0 fc eb                                      bl #0x57a26c
0064a0a4  04 00 a0 e1                                      mov r0, r4
0064a0a8  0c d0 8d e2                                      add sp, sp, #0xc
0064a0ac  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0064a0b0, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CMorphingMesh::SBuffer
; alias: _ZN6glitch7collada13CMorphingMesh7SBufferD1Ev
; demangled: glitch::collada::CMorphingMesh::SBuffer::~SBuffer()
; decoder-mode: arm
0064a0b0  10 40 2d e9                                      push {r4, lr}
0064a0b4  00 40 a0 e1                                      mov r4, r0
0064a0b8  08 00 80 e2                                      add r0, r0, #8
0064a0bc  6a c0 fc eb                                      bl #0x57a26c
0064a0c0  04 00 84 e2                                      add r0, r4, #4
0064a0c4  c7 1a f3 eb                                      bl #0x310be8
0064a0c8  00 00 94 e5                                      ldr r0, [r4]
0064a0cc  00 00 50 e3                                      cmp r0, #0
0064a0d0  00 00 00 0a                                      beq #0x64a0d8
0064a0d4  2a 4d f3 eb                                      bl #0x31d584
0064a0d8  04 00 a0 e1                                      mov r0, r4
0064a0dc  10 80 bd e8                                      pop {r4, pc}
