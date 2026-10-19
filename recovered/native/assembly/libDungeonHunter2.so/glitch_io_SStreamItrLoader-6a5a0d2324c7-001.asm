; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b5b74, declared_size=440, range_size=440, mode=arm
; class-group: glitch::io::SStreamItrLoader
; alias: _ZN6glitch2io16SStreamItrLoader14loadAndAdvanceEPNS0_9IReadFileEb
; demangled: glitch::io::SStreamItrLoader::loadAndAdvance(glitch::io::IReadFile*, bool)
; decoder-mode: arm
006b5b74  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006b5b78  00 00 52 e3                                      cmp r2, #0
006b5b7c  10 d0 4d e2                                      sub sp, sp, #0x10
006b5b80  00 40 a0 e1                                      mov r4, r0
006b5b84  01 50 a0 e1                                      mov r5, r1
006b5b88  08 00 00 0a                                      beq #0x6b5bb0
006b5b8c  b6 31 d0 e1                                      ldrh r3, [r0, #0x16]
006b5b90  01 00 53 e3                                      cmp r3, #1
006b5b94  05 00 00 9a                                      bls #0x6b5bb0
006b5b98  04 00 53 e3                                      cmp r3, #4
006b5b9c  42 00 00 0a                                      beq #0x6b5cac
006b5ba0  08 00 53 e3                                      cmp r3, #8
006b5ba4  22 00 00 0a                                      beq #0x6b5c34
006b5ba8  02 00 53 e3                                      cmp r3, #2
006b5bac  05 00 00 0a                                      beq #0x6b5bc8
006b5bb0  10 20 94 e5                                      ldr r2, [r4, #0x10]
006b5bb4  b8 31 d4 e1                                      ldrh r3, [r4, #0x18]
006b5bb8  03 30 82 e0                                      add r3, r2, r3
006b5bbc  10 30 84 e5                                      str r3, [r4, #0x10]
006b5bc0  10 d0 8d e2                                      add sp, sp, #0x10
006b5bc4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006b5bc8  b4 31 d0 e1                                      ldrh r3, [r0, #0x14]
006b5bcc  00 00 53 e3                                      cmp r3, #0
006b5bd0  f6 ff ff 0a                                      beq #0x6b5bb0
006b5bd4  0c 80 8d e2                                      add r8, sp, #0xc
006b5bd8  01 70 80 e2                                      add r7, r0, #1
006b5bdc  00 60 a0 e3                                      mov r6, #0
006b5be0  00 30 95 e5                                      ldr r3, [r5]
006b5be4  04 10 a0 e1                                      mov r1, r4
006b5be8  02 20 a0 e3                                      mov r2, #2
006b5bec  05 00 a0 e1                                      mov r0, r5
006b5bf0  0f e0 a0 e1                                      mov lr, pc
006b5bf4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5bf8  00 20 d7 e5                                      ldrb r2, [r7]
006b5bfc  00 30 d4 e5                                      ldrb r3, [r4]
006b5c00  10 10 94 e5                                      ldr r1, [r4, #0x10]
006b5c04  0c 20 cd e5                                      strb r2, [sp, #0xc]
006b5c08  0d 30 cd e5                                      strb r3, [sp, #0xd]
006b5c0c  b0 30 d8 e1                                      ldrh r3, [r8]
006b5c10  86 20 a0 e1                                      lsl r2, r6, #1
006b5c14  01 60 86 e2                                      add r6, r6, #1
006b5c18  b0 30 c4 e1                                      strh r3, [r4]
006b5c1c  b2 30 81 e1                                      strh r3, [r1, r2]
006b5c20  b4 31 d4 e1                                      ldrh r3, [r4, #0x14]
006b5c24  76 60 ff e6                                      uxth r6, r6
006b5c28  06 00 53 e1                                      cmp r3, r6
006b5c2c  eb ff ff 8a                                      bhi #0x6b5be0
006b5c30  de ff ff ea                                      b #0x6b5bb0
006b5c34  b4 31 d0 e1                                      ldrh r3, [r0, #0x14]
006b5c38  00 00 53 e3                                      cmp r3, #0
006b5c3c  00 70 a0 13                                      movne r7, #0
006b5c40  0d 60 a0 11                                      movne r6, sp
006b5c44  d9 ff ff 0a                                      beq #0x6b5bb0
006b5c48  00 30 95 e5                                      ldr r3, [r5]
006b5c4c  08 20 a0 e3                                      mov r2, #8
006b5c50  05 00 a0 e1                                      mov r0, r5
006b5c54  04 10 a0 e1                                      mov r1, r4
006b5c58  0f e0 a0 e1                                      mov lr, pc
006b5c5c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5c60  07 20 a0 e3                                      mov r2, #7
006b5c64  00 30 a0 e3                                      mov r3, #0
006b5c68  02 10 d4 e7                                      ldrb r1, [r4, r2]
006b5c6c  01 20 42 e2                                      sub r2, r2, #1
006b5c70  03 10 c6 e7                                      strb r1, [r6, r3]
006b5c74  01 30 83 e2                                      add r3, r3, #1
006b5c78  08 00 53 e3                                      cmp r3, #8
006b5c7c  f9 ff ff 1a                                      bne #0x6b5c68
006b5c80  10 00 94 e5                                      ldr r0, [r4, #0x10]
006b5c84  87 11 a0 e1                                      lsl r1, r7, #3
006b5c88  d0 20 cd e1                                      ldrd r2, r3, [sp]
006b5c8c  f0 20 c4 e1                                      strd r2, r3, [r4]
006b5c90  f1 20 80 e1                                      strd r2, r3, [r0, r1]
006b5c94  b4 31 d4 e1                                      ldrh r3, [r4, #0x14]
006b5c98  01 70 87 e2                                      add r7, r7, #1
006b5c9c  77 70 ff e6                                      uxth r7, r7
006b5ca0  07 00 53 e1                                      cmp r3, r7
006b5ca4  e7 ff ff 8a                                      bhi #0x6b5c48
006b5ca8  c0 ff ff ea                                      b #0x6b5bb0
006b5cac  b4 31 d0 e1                                      ldrh r3, [r0, #0x14]
006b5cb0  00 00 53 e3                                      cmp r3, #0
006b5cb4  bd ff ff 0a                                      beq #0x6b5bb0
006b5cb8  0c 80 8d e2                                      add r8, sp, #0xc
006b5cbc  03 70 80 e2                                      add r7, r0, #3
006b5cc0  02 a0 80 e2                                      add sl, r0, #2
006b5cc4  01 90 80 e2                                      add sb, r0, #1
006b5cc8  00 60 a0 e3                                      mov r6, #0
006b5ccc  00 30 95 e5                                      ldr r3, [r5]
006b5cd0  04 10 a0 e1                                      mov r1, r4
006b5cd4  04 20 a0 e3                                      mov r2, #4
006b5cd8  05 00 a0 e1                                      mov r0, r5
006b5cdc  0f e0 a0 e1                                      mov lr, pc
006b5ce0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5ce4  00 10 da e5                                      ldrb r1, [sl]
006b5ce8  00 20 d9 e5                                      ldrb r2, [sb]
006b5cec  00 30 d4 e5                                      ldrb r3, [r4]
006b5cf0  00 00 d7 e5                                      ldrb r0, [r7]
006b5cf4  0e 20 cd e5                                      strb r2, [sp, #0xe]
006b5cf8  0d 10 cd e5                                      strb r1, [sp, #0xd]
006b5cfc  0c 00 cd e5                                      strb r0, [sp, #0xc]
006b5d00  0f 30 cd e5                                      strb r3, [sp, #0xf]
006b5d04  00 30 98 e5                                      ldr r3, [r8]
006b5d08  10 10 94 e5                                      ldr r1, [r4, #0x10]
006b5d0c  01 20 86 e2                                      add r2, r6, #1
006b5d10  00 30 84 e5                                      str r3, [r4]
006b5d14  06 31 81 e7                                      str r3, [r1, r6, lsl #2]
006b5d18  b4 31 d4 e1                                      ldrh r3, [r4, #0x14]
006b5d1c  72 60 ff e6                                      uxth r6, r2
006b5d20  06 00 53 e1                                      cmp r3, r6
006b5d24  e8 ff ff 8a                                      bhi #0x6b5ccc
006b5d28  a0 ff ff ea                                      b #0x6b5bb0
