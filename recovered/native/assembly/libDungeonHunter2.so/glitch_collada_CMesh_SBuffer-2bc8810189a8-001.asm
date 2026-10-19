; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00644c88, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CMesh::SBuffer
; alias: _ZN6glitch7collada5CMesh7SBufferD1Ev
; demangled: glitch::collada::CMesh::SBuffer::~SBuffer()
; decoder-mode: arm
00644c88  10 40 2d e9                                      push {r4, lr}
00644c8c  00 40 a0 e1                                      mov r4, r0
00644c90  08 00 80 e2                                      add r0, r0, #8
00644c94  74 d5 fc eb                                      bl #0x57a26c
00644c98  04 00 84 e2                                      add r0, r4, #4
00644c9c  d1 2f f3 eb                                      bl #0x310be8
00644ca0  00 00 94 e5                                      ldr r0, [r4]
00644ca4  00 00 50 e3                                      cmp r0, #0
00644ca8  00 00 00 0a                                      beq #0x644cb0
00644cac  34 62 f3 eb                                      bl #0x31d584
00644cb0  04 00 a0 e1                                      mov r0, r4
00644cb4  10 80 bd e8                                      pop {r4, pc}
