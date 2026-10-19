; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00634b30, declared_size=308, range_size=308, mode=arm
; class-group: glitch::collada::SProfileGLES2Traits
; alias: _ZN6glitch7collada19SProfileGLES2Traits12createShaderEPNS_5video14IShaderManagerERNS0_5SPassINS0_25SRenderStatesProgrammableEEE
; demangled: glitch::collada::SProfileGLES2Traits::createShader(glitch::video::IShaderManager*, glitch::collada::SPass<glitch::collada::SRenderStatesProgrammable>&)
; decoder-mode: arm
00634b30  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00634b34  20 51 9f e5                                      ldr r5, [pc, #0x120]
00634b38  20 71 9f e5                                      ldr r7, [pc, #0x120]
00634b3c  3c d0 4d e2                                      sub sp, sp, #0x3c
00634b40  05 50 8f e0                                      add r5, pc, r5
00634b44  07 30 95 e7                                      ldr r3, [r5, r7]
00634b48  1c 40 8d e2                                      add r4, sp, #0x1c
00634b4c  00 80 a0 e1                                      mov r8, r0
00634b50  00 30 93 e5                                      ldr r3, [r3]
00634b54  01 90 a0 e1                                      mov sb, r1
00634b58  04 00 a0 e1                                      mov r0, r4
00634b5c  10 10 a0 e3                                      mov r1, #0x10
00634b60  02 a0 a0 e1                                      mov sl, r2
00634b64  34 30 8d e5                                      str r3, [sp, #0x34]
00634b68  2c 40 8d e5                                      str r4, [sp, #0x2c]
00634b6c  30 40 8d e5                                      str r4, [sp, #0x30]
00634b70  8c af f3 eb                                      bl #0x3209a8
00634b74  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00634b78  00 60 a0 e3                                      mov r6, #0
00634b7c  00 60 c3 e5                                      strb r6, [r3]
00634b80  04 b0 9a e5                                      ldr fp, [sl, #4]
00634b84  0b 00 a0 e1                                      mov r0, fp
00634b88  b1 64 f3 eb                                      bl #0x30de54
00634b8c  0b 10 a0 e1                                      mov r1, fp
00634b90  00 20 8b e0                                      add r2, fp, r0
00634b94  04 00 a0 e1                                      mov r0, r4
00634b98  ab af f3 eb                                      bl #0x320a4c
00634b9c  0c b0 9a e5                                      ldr fp, [sl, #0xc]
00634ba0  0b 00 a0 e1                                      mov r0, fp
00634ba4  aa 64 f3 eb                                      bl #0x30de54
00634ba8  0b 10 a0 e1                                      mov r1, fp
00634bac  00 20 8b e0                                      add r2, fp, r0
00634bb0  04 00 a0 e1                                      mov r0, r4
00634bb4  a4 af f3 eb                                      bl #0x320a4c
00634bb8  10 b0 9a e5                                      ldr fp, [sl, #0x10]
00634bbc  0b 00 a0 e1                                      mov r0, fp
00634bc0  a3 64 f3 eb                                      bl #0x30de54
00634bc4  0b 10 a0 e1                                      mov r1, fp
00634bc8  00 20 8b e0                                      add r2, fp, r0
00634bcc  04 00 a0 e1                                      mov r0, r4
00634bd0  9d af f3 eb                                      bl #0x320a4c
00634bd4  18 b0 9a e5                                      ldr fp, [sl, #0x18]
00634bd8  0b 00 a0 e1                                      mov r0, fp
00634bdc  9c 64 f3 eb                                      bl #0x30de54
00634be0  0b 10 a0 e1                                      mov r1, fp
00634be4  00 20 8b e0                                      add r2, fp, r0
00634be8  04 00 a0 e1                                      mov r0, r4
00634bec  96 af f3 eb                                      bl #0x320a4c
00634bf0  04 30 9a e5                                      ldr r3, [sl, #4]
00634bf4  18 e0 9a e5                                      ldr lr, [sl, #0x18]
00634bf8  0c c0 9a e5                                      ldr ip, [sl, #0xc]
00634bfc  10 a0 9a e5                                      ldr sl, [sl, #0x10]
00634c00  08 00 a0 e1                                      mov r0, r8
00634c04  09 10 a0 e1                                      mov r1, sb
00634c08  30 20 9d e5                                      ldr r2, [sp, #0x30]
00634c0c  00 c0 8d e5                                      str ip, [sp]
00634c10  00 44 8d e9                                      stmib sp, {sl, lr}
00634c14  10 60 8d e5                                      str r6, [sp, #0x10]
00634c18  0c 60 8d e5                                      str r6, [sp, #0xc]
00634c1c  64 ad 02 eb                                      bl #0x6e01b4
00634c20  30 00 9d e5                                      ldr r0, [sp, #0x30]
00634c24  04 00 50 e1                                      cmp r0, r4
00634c28  02 00 00 0a                                      beq #0x634c38
00634c2c  06 00 50 e1                                      cmp r0, r6
00634c30  00 00 00 0a                                      beq #0x634c38
00634c34  05 6e f3 eb                                      bl #0x310450
00634c38  07 30 95 e7                                      ldr r3, [r5, r7]
00634c3c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00634c40  08 00 a0 e1                                      mov r0, r8
00634c44  00 30 93 e5                                      ldr r3, [r3]
00634c48  03 00 52 e1                                      cmp r2, r3
00634c4c  01 00 00 1a                                      bne #0x634c58
00634c50  3c d0 8d e2                                      add sp, sp, #0x3c
00634c54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00634c58  ac 65 f3 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00634c5c  50 ff 35 00 ac 40 00 00                          .byte 0x50, 0xff, 0x35, 0x00, 0xac, 0x40, 0x00, 0x00
