; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060e934, declared_size=212, range_size=212, mode=arm
; class-group: void glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManager16dispatchEventsExIiLi1000EEEviii
; demangled: void glitch::collada::CEventsManager::dispatchEventsEx<int, 1000>(int, int, int)
; decoder-mode: arm
0060e934  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060e938  02 00 51 e1                                      cmp r1, r2
0060e93c  14 d0 4d e2                                      sub sp, sp, #0x14
0060e940  04 20 8d e5                                      str r2, [sp, #4]
0060e944  00 40 a0 e1                                      mov r4, r0
0060e948  03 90 a0 e1                                      mov sb, r3
0060e94c  2b 00 00 ca                                      bgt #0x60ea00
0060e950  14 50 90 e5                                      ldr r5, [r0, #0x14]
0060e954  01 b0 a0 e1                                      mov fp, r1
0060e958  81 71 a0 e1                                      lsl r7, r1, #3
0060e95c  01 81 a0 e1                                      lsl r8, r1, #2
0060e960  08 a0 8d e2                                      add sl, sp, #8
0060e964  14 30 95 e5                                      ldr r3, [r5, #0x14]
0060e968  07 30 93 e7                                      ldr r3, [r3, r7]
0060e96c  00 00 53 e3                                      cmp r3, #0
0060e970  00 60 a0 c3                                      movgt r6, #0
0060e974  1b 00 00 da                                      ble #0x60e9e8
0060e978  09 00 a0 e1                                      mov r0, sb
0060e97c  f8 ff f3 eb                                      bl #0x30e964
0060e980  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0060e984  00 30 a0 e1                                      mov r3, r0
0060e988  08 00 92 e7                                      ldr r0, [r2, r8]
0060e98c  00 30 8d e5                                      str r3, [sp]
0060e990  f3 ff f3 eb                                      bl #0x30e964
0060e994  00 30 9d e5                                      ldr r3, [sp]
0060e998  00 10 a0 e1                                      mov r1, r0
0060e99c  03 00 a0 e1                                      mov r0, r3
0060e9a0  81 fe f3 eb                                      bl #0x30e3ac
0060e9a4  c8 fe f3 eb                                      bl #0x30e4cc
0060e9a8  08 00 8d e5                                      str r0, [sp, #8]
0060e9ac  14 30 95 e5                                      ldr r3, [r5, #0x14]
0060e9b0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0060e9b4  0a 00 a0 e1                                      mov r0, sl
0060e9b8  07 30 83 e0                                      add r3, r3, r7
0060e9bc  04 30 93 e5                                      ldr r3, [r3, #4]
0060e9c0  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0060e9c4  01 60 86 e2                                      add r6, r6, #1
0060e9c8  0c 30 8d e5                                      str r3, [sp, #0xc]
0060e9cc  0f e0 a0 e1                                      mov lr, pc
0060e9d0  08 f0 94 e5                                      ldr pc, [r4, #8]
0060e9d4  14 50 94 e5                                      ldr r5, [r4, #0x14]
0060e9d8  14 30 95 e5                                      ldr r3, [r5, #0x14]
0060e9dc  07 30 93 e7                                      ldr r3, [r3, r7]
0060e9e0  03 00 56 e1                                      cmp r6, r3
0060e9e4  e3 ff ff ba                                      blt #0x60e978
0060e9e8  04 20 9d e5                                      ldr r2, [sp, #4]
0060e9ec  01 b0 8b e2                                      add fp, fp, #1
0060e9f0  08 70 87 e2                                      add r7, r7, #8
0060e9f4  0b 00 52 e1                                      cmp r2, fp
0060e9f8  04 80 88 e2                                      add r8, r8, #4
0060e9fc  d8 ff ff aa                                      bge #0x60e964
0060ea00  14 d0 8d e2                                      add sp, sp, #0x14
0060ea04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0060ea08, declared_size=220, range_size=220, mode=arm
; class-group: void glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManager16dispatchEventsExItLi30EEEviii
; demangled: void glitch::collada::CEventsManager::dispatchEventsEx<unsigned short, 30>(int, int, int)
; decoder-mode: arm
0060ea08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060ea0c  02 00 51 e1                                      cmp r1, r2
0060ea10  14 d0 4d e2                                      sub sp, sp, #0x14
0060ea14  04 20 8d e5                                      str r2, [sp, #4]
0060ea18  00 40 a0 e1                                      mov r4, r0
0060ea1c  03 b0 a0 e1                                      mov fp, r3
0060ea20  2d 00 00 ca                                      bgt #0x60eadc
0060ea24  00 10 8d e5                                      str r1, [sp]
0060ea28  14 50 90 e5                                      ldr r5, [r0, #0x14]
0060ea2c  81 71 a0 e1                                      lsl r7, r1, #3
0060ea30  81 a0 a0 e1                                      lsl sl, r1, #1
0060ea34  08 90 8d e2                                      add sb, sp, #8
0060ea38  14 30 95 e5                                      ldr r3, [r5, #0x14]
0060ea3c  07 30 93 e7                                      ldr r3, [r3, r7]
0060ea40  00 00 53 e3                                      cmp r3, #0
0060ea44  00 60 a0 c3                                      movgt r6, #0
0060ea48  1c 00 00 da                                      ble #0x60eac0
0060ea4c  0b 00 a0 e1                                      mov r0, fp
0060ea50  c3 ff f3 eb                                      bl #0x30e964
0060ea54  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0060ea58  00 80 a0 e1                                      mov r8, r0
0060ea5c  ba 00 93 e1                                      ldrh r0, [r3, sl]
0060ea60  bf ff f3 eb                                      bl #0x30e964
0060ea64  55 15 05 e3                                      movw r1, #0x5555
0060ea68  05 12 4c e3                                      movt r1, #0xc205
0060ea6c  be 00 f4 eb                                      bl #0x30ed6c
0060ea70  00 10 a0 e1                                      mov r1, r0
0060ea74  08 00 a0 e1                                      mov r0, r8
0060ea78  49 00 f4 eb                                      bl #0x30eba4
0060ea7c  92 fe f3 eb                                      bl #0x30e4cc
0060ea80  08 00 8d e5                                      str r0, [sp, #8]
0060ea84  14 30 95 e5                                      ldr r3, [r5, #0x14]
0060ea88  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0060ea8c  09 00 a0 e1                                      mov r0, sb
0060ea90  07 30 83 e0                                      add r3, r3, r7
0060ea94  04 30 93 e5                                      ldr r3, [r3, #4]
0060ea98  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0060ea9c  01 60 86 e2                                      add r6, r6, #1
0060eaa0  0c 30 8d e5                                      str r3, [sp, #0xc]
0060eaa4  0f e0 a0 e1                                      mov lr, pc
0060eaa8  08 f0 94 e5                                      ldr pc, [r4, #8]
0060eaac  14 50 94 e5                                      ldr r5, [r4, #0x14]
0060eab0  14 30 95 e5                                      ldr r3, [r5, #0x14]
0060eab4  07 30 93 e7                                      ldr r3, [r3, r7]
0060eab8  03 00 56 e1                                      cmp r6, r3
0060eabc  e2 ff ff ba                                      blt #0x60ea4c
0060eac0  0c 00 9d e8                                      ldm sp, {r2, r3}
0060eac4  08 70 87 e2                                      add r7, r7, #8
0060eac8  01 20 82 e2                                      add r2, r2, #1
0060eacc  02 00 53 e1                                      cmp r3, r2
0060ead0  00 20 8d e5                                      str r2, [sp]
0060ead4  02 a0 8a e2                                      add sl, sl, #2
0060ead8  d6 ff ff aa                                      bge #0x60ea38
0060eadc  14 d0 8d e2                                      add sp, sp, #0x14
0060eae0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0060eae4, declared_size=208, range_size=208, mode=arm
; class-group: void glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManager16dispatchEventsExIhLi30EEEviii
; demangled: void glitch::collada::CEventsManager::dispatchEventsEx<unsigned char, 30>(int, int, int)
; decoder-mode: arm
0060eae4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060eae8  02 00 51 e1                                      cmp r1, r2
0060eaec  14 d0 4d e2                                      sub sp, sp, #0x14
0060eaf0  04 20 8d e5                                      str r2, [sp, #4]
0060eaf4  00 40 a0 e1                                      mov r4, r0
0060eaf8  03 b0 a0 e1                                      mov fp, r3
0060eafc  2a 00 00 ca                                      bgt #0x60ebac
0060eb00  14 50 90 e5                                      ldr r5, [r0, #0x14]
0060eb04  01 a0 a0 e1                                      mov sl, r1
0060eb08  81 71 a0 e1                                      lsl r7, r1, #3
0060eb0c  08 90 8d e2                                      add sb, sp, #8
0060eb10  14 30 95 e5                                      ldr r3, [r5, #0x14]
0060eb14  07 30 93 e7                                      ldr r3, [r3, r7]
0060eb18  00 00 53 e3                                      cmp r3, #0
0060eb1c  00 60 a0 c3                                      movgt r6, #0
0060eb20  1c 00 00 da                                      ble #0x60eb98
0060eb24  0b 00 a0 e1                                      mov r0, fp
0060eb28  8d ff f3 eb                                      bl #0x30e964
0060eb2c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0060eb30  00 80 a0 e1                                      mov r8, r0
0060eb34  0a 00 d3 e7                                      ldrb r0, [r3, sl]
0060eb38  89 ff f3 eb                                      bl #0x30e964
0060eb3c  55 15 05 e3                                      movw r1, #0x5555
0060eb40  05 12 4c e3                                      movt r1, #0xc205
0060eb44  88 00 f4 eb                                      bl #0x30ed6c
0060eb48  00 10 a0 e1                                      mov r1, r0
0060eb4c  08 00 a0 e1                                      mov r0, r8
0060eb50  13 00 f4 eb                                      bl #0x30eba4
0060eb54  5c fe f3 eb                                      bl #0x30e4cc
0060eb58  08 00 8d e5                                      str r0, [sp, #8]
0060eb5c  14 30 95 e5                                      ldr r3, [r5, #0x14]
0060eb60  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0060eb64  09 00 a0 e1                                      mov r0, sb
0060eb68  07 30 83 e0                                      add r3, r3, r7
0060eb6c  04 30 93 e5                                      ldr r3, [r3, #4]
0060eb70  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0060eb74  01 60 86 e2                                      add r6, r6, #1
0060eb78  0c 30 8d e5                                      str r3, [sp, #0xc]
0060eb7c  0f e0 a0 e1                                      mov lr, pc
0060eb80  08 f0 94 e5                                      ldr pc, [r4, #8]
0060eb84  14 50 94 e5                                      ldr r5, [r4, #0x14]
0060eb88  14 30 95 e5                                      ldr r3, [r5, #0x14]
0060eb8c  07 30 93 e7                                      ldr r3, [r3, r7]
0060eb90  03 00 56 e1                                      cmp r6, r3
0060eb94  e2 ff ff ba                                      blt #0x60eb24
0060eb98  04 20 9d e5                                      ldr r2, [sp, #4]
0060eb9c  01 a0 8a e2                                      add sl, sl, #1
0060eba0  08 70 87 e2                                      add r7, r7, #8
0060eba4  0a 00 52 e1                                      cmp r2, sl
0060eba8  d8 ff ff aa                                      bge #0x60eb10
0060ebac  14 d0 8d e2                                      add sp, sp, #0x14
0060ebb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
