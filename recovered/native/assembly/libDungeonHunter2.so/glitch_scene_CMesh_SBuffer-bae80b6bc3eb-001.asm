; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006bbcc4, declared_size=168, range_size=168, mode=arm
; class-group: glitch::scene::CMesh::SBuffer
; alias: _ZN6glitch5scene5CMesh7SBufferaSERKS2_
; demangled: glitch::scene::CMesh::SBuffer::operator=(glitch::scene::CMesh::SBuffer const&)
; decoder-mode: arm
006bbcc4  30 40 2d e9                                      push {r4, r5, lr}
006bbcc8  00 30 91 e5                                      ldr r3, [r1]
006bbccc  00 40 a0 e1                                      mov r4, r0
006bbcd0  0c d0 4d e2                                      sub sp, sp, #0xc
006bbcd4  00 00 53 e3                                      cmp r3, #0
006bbcd8  04 20 93 15                                      ldrne r2, [r3, #4]
006bbcdc  01 50 a0 e1                                      mov r5, r1
006bbce0  01 20 82 12                                      addne r2, r2, #1
006bbce4  04 20 83 15                                      strne r2, [r3, #4]
006bbce8  00 00 90 e5                                      ldr r0, [r0]
006bbcec  00 30 84 e5                                      str r3, [r4]
006bbcf0  00 00 50 e3                                      cmp r0, #0
006bbcf4  00 00 00 0a                                      beq #0x6bbcfc
006bbcf8  21 86 f1 eb                                      bl #0x31d584
006bbcfc  04 30 95 e5                                      ldr r3, [r5, #4]
006bbd00  08 00 8d e2                                      add r0, sp, #8
006bbd04  04 30 8d e5                                      str r3, [sp, #4]
006bbd08  00 00 53 e3                                      cmp r3, #0
006bbd0c  00 20 93 15                                      ldrne r2, [r3]
006bbd10  01 20 82 12                                      addne r2, r2, #1
006bbd14  00 20 83 15                                      strne r2, [r3]
006bbd18  04 20 94 e5                                      ldr r2, [r4, #4]
006bbd1c  04 30 9d 15                                      ldrne r3, [sp, #4]
006bbd20  04 30 84 e5                                      str r3, [r4, #4]
006bbd24  04 20 20 e5                                      str r2, [r0, #-4]!
006bbd28  ae 53 f1 eb                                      bl #0x310be8
006bbd2c  08 30 95 e5                                      ldr r3, [r5, #8]
006bbd30  08 00 8d e2                                      add r0, sp, #8
006bbd34  00 30 8d e5                                      str r3, [sp]
006bbd38  00 00 53 e3                                      cmp r3, #0
006bbd3c  00 20 93 15                                      ldrne r2, [r3]
006bbd40  01 20 82 12                                      addne r2, r2, #1
006bbd44  00 20 83 15                                      strne r2, [r3]
006bbd48  00 30 9d 15                                      ldrne r3, [sp]
006bbd4c  08 20 94 e5                                      ldr r2, [r4, #8]
006bbd50  08 30 84 e5                                      str r3, [r4, #8]
006bbd54  08 20 20 e5                                      str r2, [r0, #-8]!
006bbd58  0d 00 a0 e1                                      mov r0, sp
006bbd5c  42 f9 fa eb                                      bl #0x57a26c
006bbd60  04 00 a0 e1                                      mov r0, r4
006bbd64  0c d0 8d e2                                      add sp, sp, #0xc
006bbd68  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006bbe18, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CMesh::SBuffer
; alias: _ZN6glitch5scene5CMesh7SBufferD1Ev
; demangled: glitch::scene::CMesh::SBuffer::~SBuffer()
; decoder-mode: arm
006bbe18  10 40 2d e9                                      push {r4, lr}
006bbe1c  00 40 a0 e1                                      mov r4, r0
006bbe20  08 00 80 e2                                      add r0, r0, #8
006bbe24  10 f9 fa eb                                      bl #0x57a26c
006bbe28  04 00 84 e2                                      add r0, r4, #4
006bbe2c  6d 53 f1 eb                                      bl #0x310be8
006bbe30  00 00 94 e5                                      ldr r0, [r4]
006bbe34  00 00 50 e3                                      cmp r0, #0
006bbe38  00 00 00 0a                                      beq #0x6bbe40
006bbe3c  d0 85 f1 eb                                      bl #0x31d584
006bbe40  04 00 a0 e1                                      mov r0, r4
006bbe44  10 80 bd e8                                      pop {r4, pc}
