; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b5990, declared_size=484, range_size=484, mode=arm
; class-group: glitch::io::SStreamItrWriter
; alias: _ZN6glitch2io16SStreamItrWriter15writeAndAdvanceEPNS0_10IWriteFileEb
; demangled: glitch::io::SStreamItrWriter::writeAndAdvance(glitch::io::IWriteFile*, bool)
; decoder-mode: arm
006b5990  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b5994  00 00 52 e3                                      cmp r2, #0
006b5998  14 d0 4d e2                                      sub sp, sp, #0x14
006b599c  00 40 a0 e1                                      mov r4, r0
006b59a0  01 50 a0 e1                                      mov r5, r1
006b59a4  0e 00 00 0a                                      beq #0x6b59e4
006b59a8  b6 21 d0 e1                                      ldrh r2, [r0, #0x16]
006b59ac  01 00 52 e3                                      cmp r2, #1
006b59b0  0c 00 00 9a                                      bls #0x6b59e8
006b59b4  04 00 52 e3                                      cmp r2, #4
006b59b8  12 00 00 0a                                      beq #0x6b5a08
006b59bc  08 00 52 e3                                      cmp r2, #8
006b59c0  4d 00 00 0a                                      beq #0x6b5afc
006b59c4  02 00 52 e3                                      cmp r2, #2
006b59c8  2f 00 00 0a                                      beq #0x6b5a8c
006b59cc  10 20 94 e5                                      ldr r2, [r4, #0x10]
006b59d0  b8 31 d4 e1                                      ldrh r3, [r4, #0x18]
006b59d4  03 30 82 e0                                      add r3, r2, r3
006b59d8  10 30 84 e5                                      str r3, [r4, #0x10]
006b59dc  14 d0 8d e2                                      add sp, sp, #0x14
006b59e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b59e4  b6 21 d0 e1                                      ldrh r2, [r0, #0x16]
006b59e8  b4 11 d4 e1                                      ldrh r1, [r4, #0x14]
006b59ec  05 00 a0 e1                                      mov r0, r5
006b59f0  00 30 95 e5                                      ldr r3, [r5]
006b59f4  91 02 02 e0                                      mul r2, r1, r2
006b59f8  10 10 94 e5                                      ldr r1, [r4, #0x10]
006b59fc  0f e0 a0 e1                                      mov lr, pc
006b5a00  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5a04  f0 ff ff ea                                      b #0x6b59cc
006b5a08  b4 31 d0 e1                                      ldrh r3, [r0, #0x14]
006b5a0c  00 00 53 e3                                      cmp r3, #0
006b5a10  ed ff ff 0a                                      beq #0x6b59cc
006b5a14  0c 70 8d e2                                      add r7, sp, #0xc
006b5a18  03 a0 80 e2                                      add sl, r0, #3
006b5a1c  02 90 80 e2                                      add sb, r0, #2
006b5a20  01 b0 80 e2                                      add fp, r0, #1
006b5a24  00 60 a0 e3                                      mov r6, #0
006b5a28  10 30 94 e5                                      ldr r3, [r4, #0x10]
006b5a2c  05 00 a0 e1                                      mov r0, r5
006b5a30  04 10 a0 e1                                      mov r1, r4
006b5a34  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
006b5a38  04 20 a0 e3                                      mov r2, #4
006b5a3c  01 60 86 e2                                      add r6, r6, #1
006b5a40  00 30 84 e5                                      str r3, [r4]
006b5a44  00 30 d4 e5                                      ldrb r3, [r4]
006b5a48  00 80 da e5                                      ldrb r8, [sl]
006b5a4c  00 e0 d9 e5                                      ldrb lr, [sb]
006b5a50  00 c0 db e5                                      ldrb ip, [fp]
006b5a54  0c 80 cd e5                                      strb r8, [sp, #0xc]
006b5a58  0d e0 cd e5                                      strb lr, [sp, #0xd]
006b5a5c  0e c0 cd e5                                      strb ip, [sp, #0xe]
006b5a60  0f 30 cd e5                                      strb r3, [sp, #0xf]
006b5a64  00 30 97 e5                                      ldr r3, [r7]
006b5a68  76 60 ff e6                                      uxth r6, r6
006b5a6c  00 30 84 e5                                      str r3, [r4]
006b5a70  00 30 95 e5                                      ldr r3, [r5]
006b5a74  0f e0 a0 e1                                      mov lr, pc
006b5a78  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5a7c  b4 31 d4 e1                                      ldrh r3, [r4, #0x14]
006b5a80  06 00 53 e1                                      cmp r3, r6
006b5a84  e7 ff ff 8a                                      bhi #0x6b5a28
006b5a88  cf ff ff ea                                      b #0x6b59cc
006b5a8c  b4 31 d0 e1                                      ldrh r3, [r0, #0x14]
006b5a90  00 00 53 e3                                      cmp r3, #0
006b5a94  cc ff ff 0a                                      beq #0x6b59cc
006b5a98  0c 80 8d e2                                      add r8, sp, #0xc
006b5a9c  01 70 80 e2                                      add r7, r0, #1
006b5aa0  00 60 a0 e3                                      mov r6, #0
006b5aa4  10 20 94 e5                                      ldr r2, [r4, #0x10]
006b5aa8  86 30 a0 e1                                      lsl r3, r6, #1
006b5aac  05 00 a0 e1                                      mov r0, r5
006b5ab0  b3 30 92 e1                                      ldrh r3, [r2, r3]
006b5ab4  04 10 a0 e1                                      mov r1, r4
006b5ab8  01 60 86 e2                                      add r6, r6, #1
006b5abc  b0 30 c4 e1                                      strh r3, [r4]
006b5ac0  00 20 d7 e5                                      ldrb r2, [r7]
006b5ac4  00 30 d4 e5                                      ldrb r3, [r4]
006b5ac8  76 60 ff e6                                      uxth r6, r6
006b5acc  0c 20 cd e5                                      strb r2, [sp, #0xc]
006b5ad0  0d 30 cd e5                                      strb r3, [sp, #0xd]
006b5ad4  b0 30 d8 e1                                      ldrh r3, [r8]
006b5ad8  02 20 a0 e3                                      mov r2, #2
006b5adc  b0 30 c4 e1                                      strh r3, [r4]
006b5ae0  00 30 95 e5                                      ldr r3, [r5]
006b5ae4  0f e0 a0 e1                                      mov lr, pc
006b5ae8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5aec  b4 31 d4 e1                                      ldrh r3, [r4, #0x14]
006b5af0  06 00 53 e1                                      cmp r3, r6
006b5af4  ea ff ff 8a                                      bhi #0x6b5aa4
006b5af8  b3 ff ff ea                                      b #0x6b59cc
006b5afc  b4 31 d0 e1                                      ldrh r3, [r0, #0x14]
006b5b00  00 00 53 e3                                      cmp r3, #0
006b5b04  00 70 a0 13                                      movne r7, #0
006b5b08  0d 60 a0 11                                      movne r6, sp
006b5b0c  ae ff ff 0a                                      beq #0x6b59cc
006b5b10  10 10 94 e5                                      ldr r1, [r4, #0x10]
006b5b14  87 21 a0 e1                                      lsl r2, r7, #3
006b5b18  07 30 a0 e3                                      mov r3, #7
006b5b1c  d2 00 81 e1                                      ldrd r0, r1, [r1, r2]
006b5b20  f0 00 c4 e1                                      strd r0, r1, [r4]
006b5b24  00 20 a0 e3                                      mov r2, #0
006b5b28  03 10 d4 e7                                      ldrb r1, [r4, r3]
006b5b2c  01 30 43 e2                                      sub r3, r3, #1
006b5b30  02 10 c6 e7                                      strb r1, [r6, r2]
006b5b34  01 20 82 e2                                      add r2, r2, #1
006b5b38  08 00 52 e3                                      cmp r2, #8
006b5b3c  f9 ff ff 1a                                      bne #0x6b5b28
006b5b40  d0 00 cd e1                                      ldrd r0, r1, [sp]
006b5b44  f0 00 c4 e1                                      strd r0, r1, [r4]
006b5b48  05 00 a0 e1                                      mov r0, r5
006b5b4c  00 30 95 e5                                      ldr r3, [r5]
006b5b50  04 10 a0 e1                                      mov r1, r4
006b5b54  0f e0 a0 e1                                      mov lr, pc
006b5b58  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5b5c  b4 31 d4 e1                                      ldrh r3, [r4, #0x14]
006b5b60  01 70 87 e2                                      add r7, r7, #1
006b5b64  77 70 ff e6                                      uxth r7, r7
006b5b68  07 00 53 e1                                      cmp r3, r7
006b5b6c  e7 ff ff 8a                                      bhi #0x6b5b10
006b5b70  95 ff ff ea                                      b #0x6b59cc
