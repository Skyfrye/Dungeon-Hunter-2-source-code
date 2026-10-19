; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00579a34, declared_size=404, range_size=404, mode=arm
; class-group: boost::pool<glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZN5boost4poolIN6glitch4core10SAllocatorINS2_8aabbox3dIfEELNS1_6memory13E_MEMORY_HINTE0EEEE26ordered_malloc_need_resizeEv
; demangled: boost::pool<glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::ordered_malloc_need_resize()
; decoder-mode: arm
00579a34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00579a38  0c 50 90 e5                                      ldr r5, [r0, #0xc]
00579a3c  00 60 a0 e1                                      mov r6, r0
00579a40  04 40 a0 e3                                      mov r4, #4
00579a44  05 00 a0 e1                                      mov r0, r5
00579a48  04 10 a0 e1                                      mov r1, r4
00579a4c  36 54 f6 eb                                      bl #0x30eb2c
00579a50  04 30 a0 e1                                      mov r3, r4
00579a54  00 40 51 e2                                      subs r4, r1, #0
00579a58  03 00 a0 e1                                      mov r0, r3
00579a5c  f9 ff ff 1a                                      bne #0x579a48
00579a60  03 10 a0 e1                                      mov r1, r3
00579a64  05 00 a0 e1                                      mov r0, r5
00579a68  77 54 f6 eb                                      bl #0x30ec4c
00579a6c  10 a0 96 e5                                      ldr sl, [r6, #0x10]
00579a70  00 71 a0 e1                                      lsl r7, r0, #2
00579a74  04 10 a0 e1                                      mov r1, r4
00579a78  9a 07 0a e0                                      mul sl, sl, r7
00579a7c  08 80 8a e2                                      add r8, sl, #8
00579a80  08 00 a0 e1                                      mov r0, r8
00579a84  b7 5a f6 eb                                      bl #0x310568
00579a88  00 50 50 e2                                      subs r5, r0, #0
00579a8c  4b 00 00 0a                                      beq #0x579bc0
00579a90  10 30 96 e5                                      ldr r3, [r6, #0x10]
00579a94  0a 00 67 e0                                      rsb r0, r7, sl
00579a98  07 10 a0 e1                                      mov r1, r7
00579a9c  83 30 a0 e1                                      lsl r3, r3, #1
00579aa0  10 30 86 e5                                      str r3, [r6, #0x10]
00579aa4  68 54 f6 eb                                      bl #0x30ec4c
00579aa8  97 00 00 e0                                      mul r0, r7, r0
00579aac  00 30 96 e5                                      ldr r3, [r6]
00579ab0  00 c0 85 e0                                      add ip, r5, r0
00579ab4  0c 00 55 e1                                      cmp r5, ip
00579ab8  00 30 85 e7                                      str r3, [r5, r0]
00579abc  12 00 00 0a                                      beq #0x579b0c
00579ac0  00 70 67 e2                                      rsb r7, r7, #0
00579ac4  07 20 8c e0                                      add r2, ip, r7
00579ac8  02 00 55 e1                                      cmp r5, r2
00579acc  05 00 a0 01                                      moveq r0, r5
00579ad0  0c 00 00 0a                                      beq #0x579b08
00579ad4  07 30 82 e0                                      add r3, r2, r7
00579ad8  03 10 a0 e1                                      mov r1, r3
00579adc  02 00 00 ea                                      b #0x579aec
00579ae0  02 c0 a0 e1                                      mov ip, r2
00579ae4  03 20 a0 e1                                      mov r2, r3
00579ae8  07 30 83 e0                                      add r3, r3, r7
00579aec  07 10 81 e0                                      add r1, r1, r7
00579af0  01 00 67 e0                                      rsb r0, r7, r1
00579af4  00 00 55 e1                                      cmp r5, r0
00579af8  00 c0 82 e5                                      str ip, [r2]
00579afc  03 00 a0 e1                                      mov r0, r3
00579b00  f6 ff ff 1a                                      bne #0x579ae0
00579b04  02 c0 a0 e1                                      mov ip, r2
00579b08  00 c0 80 e5                                      str ip, [r0]
00579b0c  04 30 96 e5                                      ldr r3, [r6, #4]
00579b10  00 50 86 e5                                      str r5, [r6]
00579b14  00 00 53 e3                                      cmp r3, #0
00579b18  1e 00 00 0a                                      beq #0x579b98
00579b1c  03 00 55 e1                                      cmp r5, r3
00579b20  1c 00 00 3a                                      blo #0x579b98
00579b24  08 20 96 e5                                      ldr r2, [r6, #8]
00579b28  04 20 42 e2                                      sub r2, r2, #4
00579b2c  02 20 83 e0                                      add r2, r3, r2
00579b30  04 30 12 e5                                      ldr r3, [r2, #-4]
00579b34  04 10 42 e2                                      sub r1, r2, #4
00579b38  00 00 53 e3                                      cmp r3, #0
00579b3c  0a 00 00 0a                                      beq #0x579b6c
00579b40  03 00 55 e1                                      cmp r5, r3
00579b44  08 00 00 3a                                      blo #0x579b6c
00579b48  00 20 92 e5                                      ldr r2, [r2]
00579b4c  04 20 42 e2                                      sub r2, r2, #4
00579b50  02 20 83 e0                                      add r2, r3, r2
00579b54  04 30 12 e5                                      ldr r3, [r2, #-4]
00579b58  04 10 42 e2                                      sub r1, r2, #4
00579b5c  00 00 53 e3                                      cmp r3, #0
00579b60  01 00 00 0a                                      beq #0x579b6c
00579b64  05 00 53 e1                                      cmp r3, r5
00579b68  f6 ff ff 9a                                      bls #0x579b48
00579b6c  00 c0 92 e5                                      ldr ip, [r2]
00579b70  04 00 48 e2                                      sub r0, r8, #4
00579b74  00 40 85 e0                                      add r4, r5, r0
00579b78  04 30 04 e5                                      str r3, [r4, #-4]
00579b7c  00 c0 85 e7                                      str ip, [r5, r0]
00579b80  00 50 81 e5                                      str r5, [r1]
00579b84  00 80 82 e5                                      str r8, [r2]
00579b88  00 00 96 e5                                      ldr r0, [r6]
00579b8c  00 30 90 e5                                      ldr r3, [r0]
00579b90  00 30 86 e5                                      str r3, [r6]
00579b94  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00579b98  04 20 48 e2                                      sub r2, r8, #4
00579b9c  02 10 85 e0                                      add r1, r5, r2
00579ba0  04 30 01 e5                                      str r3, [r1, #-4]
00579ba4  08 30 96 e5                                      ldr r3, [r6, #8]
00579ba8  02 30 85 e7                                      str r3, [r5, r2]
00579bac  00 00 96 e5                                      ldr r0, [r6]
00579bb0  20 01 86 e9                                      stmib r6, {r5, r8}
00579bb4  00 30 90 e5                                      ldr r3, [r0]
00579bb8  00 30 86 e5                                      str r3, [r6]
00579bbc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00579bc0  04 00 a0 e1                                      mov r0, r4
00579bc4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
