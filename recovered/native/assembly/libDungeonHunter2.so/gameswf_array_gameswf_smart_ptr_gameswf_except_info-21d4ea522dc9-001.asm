; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c2a98, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::except_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_11except_infoEEEE7reserveEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::except_info> >::reserve(int)
; decoder-mode: arm
007c2a98  10 40 2d e9                                      push {r4, lr}
007c2a9c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007c2aa0  00 40 a0 e1                                      mov r4, r0
007c2aa4  00 00 53 e3                                      cmp r3, #0
007c2aa8  0f 00 00 1a                                      bne #0x7c2aec
007c2aac  00 00 51 e3                                      cmp r1, #0
007c2ab0  08 20 90 e5                                      ldr r2, [r0, #8]
007c2ab4  08 10 80 e5                                      str r1, [r0, #8]
007c2ab8  0c 00 00 1a                                      bne #0x7c2af0
007c2abc  00 00 90 e5                                      ldr r0, [r0]
007c2ac0  00 00 50 e3                                      cmp r0, #0
007c2ac4  01 00 00 0a                                      beq #0x7c2ad0
007c2ac8  02 11 a0 e1                                      lsl r1, r2, #2
007c2acc  19 40 fe eb                                      bl #0x752b38
007c2ad0  00 30 a0 e3                                      mov r3, #0
007c2ad4  00 30 84 e5                                      str r3, [r4]
007c2ad8  10 80 bd e8                                      pop {r4, pc}
007c2adc  01 01 a0 e1                                      lsl r0, r1, #2
007c2ae0  0c 10 a0 e1                                      mov r1, ip
007c2ae4  2c 40 fe eb                                      bl #0x752b9c
007c2ae8  00 00 84 e5                                      str r0, [r4]
007c2aec  10 80 bd e8                                      pop {r4, pc}
007c2af0  00 c0 90 e5                                      ldr ip, [r0]
007c2af4  00 00 5c e3                                      cmp ip, #0
007c2af8  f7 ff ff 0a                                      beq #0x7c2adc
007c2afc  0c 00 a0 e1                                      mov r0, ip
007c2b00  01 11 a0 e1                                      lsl r1, r1, #2
007c2b04  02 21 a0 e1                                      lsl r2, r2, #2
007c2b08  27 40 fe eb                                      bl #0x752bac
007c2b0c  00 00 84 e5                                      str r0, [r4]
007c2b10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c2b14, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::except_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_11except_infoEEEE6resizeEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::except_info> >::resize(int)
; decoder-mode: arm
007c2b14  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c2b18  04 60 90 e5                                      ldr r6, [r0, #4]
007c2b1c  00 40 a0 e1                                      mov r4, r0
007c2b20  01 50 a0 e1                                      mov r5, r1
007c2b24  01 00 56 e1                                      cmp r6, r1
007c2b28  0a 00 00 da                                      ble #0x7c2b58
007c2b2c  01 81 a0 e1                                      lsl r8, r1, #2
007c2b30  01 70 a0 e1                                      mov r7, r1
007c2b34  00 30 94 e5                                      ldr r3, [r4]
007c2b38  01 70 87 e2                                      add r7, r7, #1
007c2b3c  08 00 93 e7                                      ldr r0, [r3, r8]
007c2b40  04 80 88 e2                                      add r8, r8, #4
007c2b44  00 00 50 e3                                      cmp r0, #0
007c2b48  00 00 00 0a                                      beq #0x7c2b50
007c2b4c  bb 5d fe eb                                      bl #0x75a240
007c2b50  06 00 57 e1                                      cmp r7, r6
007c2b54  f6 ff ff 1a                                      bne #0x7c2b34
007c2b58  00 00 55 e3                                      cmp r5, #0
007c2b5c  02 00 00 0a                                      beq #0x7c2b6c
007c2b60  08 30 94 e5                                      ldr r3, [r4, #8]
007c2b64  03 00 55 e1                                      cmp r5, r3
007c2b68  0c 00 00 ca                                      bgt #0x7c2ba0
007c2b6c  05 00 56 e1                                      cmp r6, r5
007c2b70  08 00 00 aa                                      bge #0x7c2b98
007c2b74  06 30 a0 e1                                      mov r3, r6
007c2b78  00 10 a0 e3                                      mov r1, #0
007c2b7c  06 61 a0 e1                                      lsl r6, r6, #2
007c2b80  00 20 94 e5                                      ldr r2, [r4]
007c2b84  01 30 83 e2                                      add r3, r3, #1
007c2b88  05 00 53 e1                                      cmp r3, r5
007c2b8c  06 10 82 e7                                      str r1, [r2, r6]
007c2b90  04 60 86 e2                                      add r6, r6, #4
007c2b94  f9 ff ff 1a                                      bne #0x7c2b80
007c2b98  04 50 84 e5                                      str r5, [r4, #4]
007c2b9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c2ba0  04 00 a0 e1                                      mov r0, r4
007c2ba4  c5 10 85 e0                                      add r1, r5, r5, asr #1
007c2ba8  ba ff ff eb                                      bl #0x7c2a98
007c2bac  ee ff ff ea                                      b #0x7c2b6c
