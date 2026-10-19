; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060fcf8, declared_size=164, range_size=164, mode=arm
; class-group: int glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManager27getEventTimeFromEventNameExIiLi1000EEEiPKc
; demangled: int glitch::collada::CEventsManager::getEventTimeFromEventNameEx<int, 1000>(char const*)
; decoder-mode: arm
0060fcf8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060fcfc  14 90 90 e5                                      ldr sb, [r0, #0x14]
0060fd00  0c d0 4d e2                                      sub sp, sp, #0xc
0060fd04  01 70 a0 e1                                      mov r7, r1
0060fd08  10 20 99 e5                                      ldr r2, [sb, #0x10]
0060fd0c  00 00 52 e3                                      cmp r2, #0
0060fd10  04 20 8d e5                                      str r2, [sp, #4]
0060fd14  00 b0 e0 d3                                      mvnle fp, #0
0060fd18  1c 00 00 da                                      ble #0x60fd90
0060fd1c  14 30 99 e5                                      ldr r3, [sb, #0x14]
0060fd20  00 80 a0 e3                                      mov r8, #0
0060fd24  00 b0 e0 e3                                      mvn fp, #0
0060fd28  00 30 8d e5                                      str r3, [sp]
0060fd2c  00 30 9d e5                                      ldr r3, [sp]
0060fd30  88 51 93 e7                                      ldr r5, [r3, r8, lsl #3]
0060fd34  88 31 83 e0                                      add r3, r3, r8, lsl #3
0060fd38  00 00 55 e3                                      cmp r5, #0
0060fd3c  0f 00 00 da                                      ble #0x60fd80
0060fd40  04 60 93 e5                                      ldr r6, [r3, #4]
0060fd44  08 a1 a0 e1                                      lsl sl, r8, #2
0060fd48  00 40 a0 e3                                      mov r4, #0
0060fd4c  04 11 96 e7                                      ldr r1, [r6, r4, lsl #2]
0060fd50  07 00 a0 e1                                      mov r0, r7
0060fd54  70 f9 f3 eb                                      bl #0x30e31c
0060fd58  00 00 50 e3                                      cmp r0, #0
0060fd5c  01 40 84 e2                                      add r4, r4, #1
0060fd60  04 00 00 1a                                      bne #0x60fd78
0060fd64  0c 30 99 e5                                      ldr r3, [sb, #0xc]
0060fd68  0a 00 93 e7                                      ldr r0, [r3, sl]
0060fd6c  fc fa f3 eb                                      bl #0x30e964
0060fd70  d5 f9 f3 eb                                      bl #0x30e4cc
0060fd74  00 b0 a0 e1                                      mov fp, r0
0060fd78  05 00 54 e1                                      cmp r4, r5
0060fd7c  f2 ff ff 1a                                      bne #0x60fd4c
0060fd80  04 20 9d e5                                      ldr r2, [sp, #4]
0060fd84  01 80 88 e2                                      add r8, r8, #1
0060fd88  02 00 58 e1                                      cmp r8, r2
0060fd8c  e6 ff ff 1a                                      bne #0x60fd2c
0060fd90  0b 00 a0 e1                                      mov r0, fp
0060fd94  0c d0 8d e2                                      add sp, sp, #0xc
0060fd98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0060fd9c, declared_size=172, range_size=172, mode=arm
; class-group: int glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManager27getEventTimeFromEventNameExItLi30EEEiPKc
; demangled: int glitch::collada::CEventsManager::getEventTimeFromEventNameEx<unsigned short, 30>(char const*)
; decoder-mode: arm
0060fd9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060fda0  14 30 90 e5                                      ldr r3, [r0, #0x14]
0060fda4  0c d0 4d e2                                      sub sp, sp, #0xc
0060fda8  01 70 a0 e1                                      mov r7, r1
0060fdac  10 20 93 e5                                      ldr r2, [r3, #0x10]
0060fdb0  00 00 52 e3                                      cmp r2, #0
0060fdb4  00 a0 e0 d3                                      mvnle sl, #0
0060fdb8  1f 00 00 da                                      ble #0x60fe3c
0060fdbc  82 20 a0 e1                                      lsl r2, r2, #1
0060fdc0  04 20 8d e5                                      str r2, [sp, #4]
0060fdc4  14 b0 93 e5                                      ldr fp, [r3, #0x14]
0060fdc8  08 90 83 e2                                      add sb, r3, #8
0060fdcc  00 80 a0 e3                                      mov r8, #0
0060fdd0  00 a0 e0 e3                                      mvn sl, #0
0060fdd4  08 51 9b e7                                      ldr r5, [fp, r8, lsl #2]
0060fdd8  08 31 8b e0                                      add r3, fp, r8, lsl #2
0060fddc  00 00 55 e3                                      cmp r5, #0
0060fde0  11 00 00 da                                      ble #0x60fe2c
0060fde4  04 60 93 e5                                      ldr r6, [r3, #4]
0060fde8  00 40 a0 e3                                      mov r4, #0
0060fdec  04 11 96 e7                                      ldr r1, [r6, r4, lsl #2]
0060fdf0  07 00 a0 e1                                      mov r0, r7
0060fdf4  48 f9 f3 eb                                      bl #0x30e31c
0060fdf8  00 00 50 e3                                      cmp r0, #0
0060fdfc  01 40 84 e2                                      add r4, r4, #1
0060fe00  07 00 00 1a                                      bne #0x60fe24
0060fe04  04 30 99 e5                                      ldr r3, [sb, #4]
0060fe08  b8 00 93 e1                                      ldrh r0, [r3, r8]
0060fe0c  d4 fa f3 eb                                      bl #0x30e964
0060fe10  55 15 05 e3                                      movw r1, #0x5555
0060fe14  05 12 44 e3                                      movt r1, #0x4205
0060fe18  d3 fb f3 eb                                      bl #0x30ed6c
0060fe1c  aa f9 f3 eb                                      bl #0x30e4cc
0060fe20  00 a0 a0 e1                                      mov sl, r0
0060fe24  05 00 54 e1                                      cmp r4, r5
0060fe28  ef ff ff 1a                                      bne #0x60fdec
0060fe2c  04 30 9d e5                                      ldr r3, [sp, #4]
0060fe30  02 80 88 e2                                      add r8, r8, #2
0060fe34  03 00 58 e1                                      cmp r8, r3
0060fe38  e5 ff ff 1a                                      bne #0x60fdd4
0060fe3c  0a 00 a0 e1                                      mov r0, sl
0060fe40  0c d0 8d e2                                      add sp, sp, #0xc
0060fe44  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0060fe48, declared_size=164, range_size=164, mode=arm
; class-group: int glitch::collada::CEventsManager
; alias: _ZN6glitch7collada14CEventsManager27getEventTimeFromEventNameExIhLi30EEEiPKc
; demangled: int glitch::collada::CEventsManager::getEventTimeFromEventNameEx<unsigned char, 30>(char const*)
; decoder-mode: arm
0060fe48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060fe4c  14 a0 90 e5                                      ldr sl, [r0, #0x14]
0060fe50  0c d0 4d e2                                      sub sp, sp, #0xc
0060fe54  01 70 a0 e1                                      mov r7, r1
0060fe58  10 30 9a e5                                      ldr r3, [sl, #0x10]
0060fe5c  00 00 53 e3                                      cmp r3, #0
0060fe60  04 30 8d e5                                      str r3, [sp, #4]
0060fe64  00 90 e0 d3                                      mvnle sb, #0
0060fe68  1c 00 00 da                                      ble #0x60fee0
0060fe6c  14 b0 9a e5                                      ldr fp, [sl, #0x14]
0060fe70  00 80 a0 e3                                      mov r8, #0
0060fe74  00 90 e0 e3                                      mvn sb, #0
0060fe78  88 51 9b e7                                      ldr r5, [fp, r8, lsl #3]
0060fe7c  88 31 8b e0                                      add r3, fp, r8, lsl #3
0060fe80  00 00 55 e3                                      cmp r5, #0
0060fe84  11 00 00 da                                      ble #0x60fed0
0060fe88  04 60 93 e5                                      ldr r6, [r3, #4]
0060fe8c  00 40 a0 e3                                      mov r4, #0
0060fe90  04 11 96 e7                                      ldr r1, [r6, r4, lsl #2]
0060fe94  07 00 a0 e1                                      mov r0, r7
0060fe98  1f f9 f3 eb                                      bl #0x30e31c
0060fe9c  00 00 50 e3                                      cmp r0, #0
0060fea0  01 40 84 e2                                      add r4, r4, #1
0060fea4  07 00 00 1a                                      bne #0x60fec8
0060fea8  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0060feac  08 00 d3 e7                                      ldrb r0, [r3, r8]
0060feb0  ab fa f3 eb                                      bl #0x30e964
0060feb4  55 15 05 e3                                      movw r1, #0x5555
0060feb8  05 12 44 e3                                      movt r1, #0x4205
0060febc  aa fb f3 eb                                      bl #0x30ed6c
0060fec0  81 f9 f3 eb                                      bl #0x30e4cc
0060fec4  00 90 a0 e1                                      mov sb, r0
0060fec8  05 00 54 e1                                      cmp r4, r5
0060fecc  ef ff ff 1a                                      bne #0x60fe90
0060fed0  04 30 9d e5                                      ldr r3, [sp, #4]
0060fed4  01 80 88 e2                                      add r8, r8, #1
0060fed8  03 00 58 e1                                      cmp r8, r3
0060fedc  e5 ff ff 1a                                      bne #0x60fe78
0060fee0  09 00 a0 e1                                      mov r0, sb
0060fee4  0c d0 8d e2                                      add sp, sp, #0xc
0060fee8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
