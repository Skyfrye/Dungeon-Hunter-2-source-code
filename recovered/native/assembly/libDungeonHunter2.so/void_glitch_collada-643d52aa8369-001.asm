; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00649b3c, declared_size=276, range_size=276, mode=arm
; class-group: void glitch::collada
; alias: _ZN6glitch7collada17setWeightedVertexINS_4core8vector3dIfEEEEvPT_jPKS5_jfj
; demangled: void glitch::collada::setWeightedVertex<glitch::core::vector3d<float> >(glitch::core::vector3d<float>*, unsigned int, glitch::core::vector3d<float> const*, unsigned int, float, unsigned int)
; decoder-mode: arm
00649b3c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00649b40  0c d0 4d e2                                      sub sp, sp, #0xc
00649b44  30 60 9d e5                                      ldr r6, [sp, #0x30]
00649b48  04 10 8d e5                                      str r1, [sp, #4]
00649b4c  00 40 a0 e1                                      mov r4, r0
00649b50  00 10 a0 e3                                      mov r1, #0
00649b54  06 00 a0 e1                                      mov r0, r6
00649b58  02 50 a0 e1                                      mov r5, r2
00649b5c  03 b0 a0 e1                                      mov fp, r3
00649b60  09 11 f3 eb                                      bl #0x30df8c
00649b64  00 00 50 e3                                      cmp r0, #0
00649b68  34 80 9d e5                                      ldr r8, [sp, #0x34]
00649b6c  1a 00 00 1a                                      bne #0x649bdc
00649b70  06 00 a0 e1                                      mov r0, r6
00649b74  fe 15 a0 e3                                      mov r1, #0x3f800000
00649b78  03 11 f3 eb                                      bl #0x30df8c
00649b7c  00 00 50 e3                                      cmp r0, #0
00649b80  17 00 00 1a                                      bne #0x649be4
00649b84  00 00 58 e3                                      cmp r8, #0
00649b88  13 00 00 0a                                      beq #0x649bdc
00649b8c  00 70 a0 e3                                      mov r7, #0
00649b90  04 10 95 e5                                      ldr r1, [r5, #4]
00649b94  06 00 a0 e1                                      mov r0, r6
00649b98  73 14 f3 eb                                      bl #0x30ed6c
00649b9c  08 10 95 e5                                      ldr r1, [r5, #8]
00649ba0  00 90 a0 e1                                      mov sb, r0
00649ba4  06 00 a0 e1                                      mov r0, r6
00649ba8  6f 14 f3 eb                                      bl #0x30ed6c
00649bac  0b 10 95 e6                                      ldr r1, [r5], fp
00649bb0  00 a0 a0 e1                                      mov sl, r0
00649bb4  06 00 a0 e1                                      mov r0, r6
00649bb8  6b 14 f3 eb                                      bl #0x30ed6c
00649bbc  04 90 84 e5                                      str sb, [r4, #4]
00649bc0  00 00 84 e5                                      str r0, [r4]
00649bc4  08 a0 84 e5                                      str sl, [r4, #8]
00649bc8  04 20 9d e5                                      ldr r2, [sp, #4]
00649bcc  01 70 87 e2                                      add r7, r7, #1
00649bd0  08 00 57 e1                                      cmp r7, r8
00649bd4  02 40 84 e0                                      add r4, r4, r2
00649bd8  ec ff ff 1a                                      bne #0x649b90
00649bdc  0c d0 8d e2                                      add sp, sp, #0xc
00649be0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00649be4  04 30 9d e5                                      ldr r3, [sp, #4]
00649be8  0c 00 53 e3                                      cmp r3, #0xc
00649bec  0c 00 5b 03                                      cmpeq fp, #0xc
00649bf0  0f 00 00 0a                                      beq #0x649c34
00649bf4  00 00 58 e3                                      cmp r8, #0
00649bf8  f7 ff ff 0a                                      beq #0x649bdc
00649bfc  00 30 a0 e3                                      mov r3, #0
00649c00  00 20 95 e5                                      ldr r2, [r5]
00649c04  01 30 83 e2                                      add r3, r3, #1
00649c08  08 00 53 e1                                      cmp r3, r8
00649c0c  00 20 84 e5                                      str r2, [r4]
00649c10  04 20 95 e5                                      ldr r2, [r5, #4]
00649c14  04 20 84 e5                                      str r2, [r4, #4]
00649c18  08 20 95 e5                                      ldr r2, [r5, #8]
00649c1c  0b 50 85 e0                                      add r5, r5, fp
00649c20  08 20 84 e5                                      str r2, [r4, #8]
00649c24  04 20 9d e5                                      ldr r2, [sp, #4]
00649c28  02 40 84 e0                                      add r4, r4, r2
00649c2c  f3 ff ff 1a                                      bne #0x649c00
00649c30  e9 ff ff ea                                      b #0x649bdc
00649c34  0c 20 a0 e3                                      mov r2, #0xc
00649c38  92 08 02 e0                                      mul r2, r2, r8
00649c3c  04 00 a0 e1                                      mov r0, r4
00649c40  05 10 a0 e1                                      mov r1, r5
00649c44  0c d0 8d e2                                      add sp, sp, #0xc
00649c48  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00649c4c  05 13 f3 ea                                      b #0x30e868
