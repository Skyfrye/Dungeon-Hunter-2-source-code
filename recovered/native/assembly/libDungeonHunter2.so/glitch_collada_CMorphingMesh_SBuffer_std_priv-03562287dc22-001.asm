; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006499d4, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::CMorphingMesh::SBuffer* std::priv
; alias: _ZNSt4priv22__uninitialized_fill_nIPN6glitch7collada13CMorphingMesh7SBufferEjS4_EET_S6_T0_RKT1_
; demangled: glitch::collada::CMorphingMesh::SBuffer* std::priv::__uninitialized_fill_n<glitch::collada::CMorphingMesh::SBuffer*, unsigned int, glitch::collada::CMorphingMesh::SBuffer>(glitch::collada::CMorphingMesh::SBuffer*, unsigned int, glitch::collada::CMorphingMesh::SBuffer const&)
; decoder-mode: arm
006499d4  00 30 a0 e1                                      mov r3, r0
006499d8  0c 00 a0 e3                                      mov r0, #0xc
006499dc  90 31 20 e0                                      mla r0, r0, r1, r3
006499e0  04 40 2d e5                                      str r4, [sp, #-4]!
006499e4  00 10 63 e0                                      rsb r1, r3, r0
006499e8  41 11 a0 e1                                      asr r1, r1, #2
006499ec  01 c1 81 e0                                      add ip, r1, r1, lsl #2
006499f0  0c c2 8c e0                                      add ip, ip, ip, lsl #4
006499f4  0c c4 8c e0                                      add ip, ip, ip, lsl #8
006499f8  0c c8 8c e0                                      add ip, ip, ip, lsl #16
006499fc  8c c0 81 e0                                      add ip, r1, ip, lsl #1
00649a00  00 00 5c e3                                      cmp ip, #0
00649a04  01 00 00 ca                                      bgt #0x649a10
00649a08  14 00 00 ea                                      b #0x649a60
00649a0c  0c 30 83 e2                                      add r3, r3, #0xc
00649a10  00 10 92 e5                                      ldr r1, [r2]
00649a14  00 10 83 e5                                      str r1, [r3]
00649a18  00 00 51 e3                                      cmp r1, #0
00649a1c  04 40 91 15                                      ldrne r4, [r1, #4]
00649a20  01 40 84 12                                      addne r4, r4, #1
00649a24  04 40 81 15                                      strne r4, [r1, #4]
00649a28  04 10 92 e5                                      ldr r1, [r2, #4]
00649a2c  00 00 51 e3                                      cmp r1, #0
00649a30  04 10 83 e5                                      str r1, [r3, #4]
00649a34  00 40 91 15                                      ldrne r4, [r1]
00649a38  01 40 84 12                                      addne r4, r4, #1
00649a3c  00 40 81 15                                      strne r4, [r1]
00649a40  08 10 92 e5                                      ldr r1, [r2, #8]
00649a44  00 00 51 e3                                      cmp r1, #0
00649a48  08 10 83 e5                                      str r1, [r3, #8]
00649a4c  00 40 91 15                                      ldrne r4, [r1]
00649a50  01 40 84 12                                      addne r4, r4, #1
00649a54  00 40 81 15                                      strne r4, [r1]
00649a58  01 c0 5c e2                                      subs ip, ip, #1
00649a5c  ea ff ff 1a                                      bne #0x649a0c
00649a60  10 00 bd e8                                      ldm sp!, {r4}
00649a64  1e ff 2f e1                                      bx lr
