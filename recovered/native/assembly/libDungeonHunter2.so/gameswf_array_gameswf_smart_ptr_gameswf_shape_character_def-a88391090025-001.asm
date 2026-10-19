; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007cee1c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_19shape_character_defEEEE7reserveEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def> >::reserve(int)
; decoder-mode: arm
007cee1c  10 40 2d e9                                      push {r4, lr}
007cee20  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007cee24  00 40 a0 e1                                      mov r4, r0
007cee28  00 00 53 e3                                      cmp r3, #0
007cee2c  0f 00 00 1a                                      bne #0x7cee70
007cee30  00 00 51 e3                                      cmp r1, #0
007cee34  08 20 90 e5                                      ldr r2, [r0, #8]
007cee38  08 10 80 e5                                      str r1, [r0, #8]
007cee3c  0c 00 00 1a                                      bne #0x7cee74
007cee40  00 00 90 e5                                      ldr r0, [r0]
007cee44  00 00 50 e3                                      cmp r0, #0
007cee48  01 00 00 0a                                      beq #0x7cee54
007cee4c  02 11 a0 e1                                      lsl r1, r2, #2
007cee50  38 0f fe eb                                      bl #0x752b38
007cee54  00 30 a0 e3                                      mov r3, #0
007cee58  00 30 84 e5                                      str r3, [r4]
007cee5c  10 80 bd e8                                      pop {r4, pc}
007cee60  01 01 a0 e1                                      lsl r0, r1, #2
007cee64  0c 10 a0 e1                                      mov r1, ip
007cee68  4b 0f fe eb                                      bl #0x752b9c
007cee6c  00 00 84 e5                                      str r0, [r4]
007cee70  10 80 bd e8                                      pop {r4, pc}
007cee74  00 c0 90 e5                                      ldr ip, [r0]
007cee78  00 00 5c e3                                      cmp ip, #0
007cee7c  f7 ff ff 0a                                      beq #0x7cee60
007cee80  0c 00 a0 e1                                      mov r0, ip
007cee84  01 11 a0 e1                                      lsl r1, r1, #2
007cee88  02 21 a0 e1                                      lsl r2, r2, #2
007cee8c  46 0f fe eb                                      bl #0x752bac
007cee90  00 00 84 e5                                      str r0, [r4]
007cee94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007cee98, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_19shape_character_defEEEE6resizeEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def> >::resize(int)
; decoder-mode: arm
007cee98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007cee9c  04 60 90 e5                                      ldr r6, [r0, #4]
007ceea0  00 40 a0 e1                                      mov r4, r0
007ceea4  01 50 a0 e1                                      mov r5, r1
007ceea8  01 00 56 e1                                      cmp r6, r1
007ceeac  0a 00 00 da                                      ble #0x7ceedc
007ceeb0  01 81 a0 e1                                      lsl r8, r1, #2
007ceeb4  01 70 a0 e1                                      mov r7, r1
007ceeb8  00 30 94 e5                                      ldr r3, [r4]
007ceebc  01 70 87 e2                                      add r7, r7, #1
007ceec0  08 00 93 e7                                      ldr r0, [r3, r8]
007ceec4  04 80 88 e2                                      add r8, r8, #4
007ceec8  00 00 50 e3                                      cmp r0, #0
007ceecc  00 00 00 0a                                      beq #0x7ceed4
007ceed0  da 2c fe eb                                      bl #0x75a240
007ceed4  06 00 57 e1                                      cmp r7, r6
007ceed8  f6 ff ff 1a                                      bne #0x7ceeb8
007ceedc  00 00 55 e3                                      cmp r5, #0
007ceee0  02 00 00 0a                                      beq #0x7ceef0
007ceee4  08 30 94 e5                                      ldr r3, [r4, #8]
007ceee8  03 00 55 e1                                      cmp r5, r3
007ceeec  0c 00 00 ca                                      bgt #0x7cef24
007ceef0  05 00 56 e1                                      cmp r6, r5
007ceef4  08 00 00 aa                                      bge #0x7cef1c
007ceef8  06 30 a0 e1                                      mov r3, r6
007ceefc  00 10 a0 e3                                      mov r1, #0
007cef00  06 61 a0 e1                                      lsl r6, r6, #2
007cef04  00 20 94 e5                                      ldr r2, [r4]
007cef08  01 30 83 e2                                      add r3, r3, #1
007cef0c  05 00 53 e1                                      cmp r3, r5
007cef10  06 10 82 e7                                      str r1, [r2, r6]
007cef14  04 60 86 e2                                      add r6, r6, #4
007cef18  f9 ff ff 1a                                      bne #0x7cef04
007cef1c  04 50 84 e5                                      str r5, [r4, #4]
007cef20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007cef24  04 00 a0 e1                                      mov r0, r4
007cef28  c5 10 85 e0                                      add r1, r5, r5, asr #1
007cef2c  ba ff ff eb                                      bl #0x7cee1c
007cef30  ee ff ff ea                                      b #0x7ceef0
