; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b86ec, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::instance_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_13instance_infoEEEE7reserveEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::instance_info> >::reserve(int)
; decoder-mode: arm
007b86ec  10 40 2d e9                                      push {r4, lr}
007b86f0  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b86f4  00 40 a0 e1                                      mov r4, r0
007b86f8  00 00 53 e3                                      cmp r3, #0
007b86fc  0f 00 00 1a                                      bne #0x7b8740
007b8700  00 00 51 e3                                      cmp r1, #0
007b8704  08 20 90 e5                                      ldr r2, [r0, #8]
007b8708  08 10 80 e5                                      str r1, [r0, #8]
007b870c  0c 00 00 1a                                      bne #0x7b8744
007b8710  00 00 90 e5                                      ldr r0, [r0]
007b8714  00 00 50 e3                                      cmp r0, #0
007b8718  01 00 00 0a                                      beq #0x7b8724
007b871c  02 11 a0 e1                                      lsl r1, r2, #2
007b8720  04 69 fe eb                                      bl #0x752b38
007b8724  00 30 a0 e3                                      mov r3, #0
007b8728  00 30 84 e5                                      str r3, [r4]
007b872c  10 80 bd e8                                      pop {r4, pc}
007b8730  01 01 a0 e1                                      lsl r0, r1, #2
007b8734  0c 10 a0 e1                                      mov r1, ip
007b8738  17 69 fe eb                                      bl #0x752b9c
007b873c  00 00 84 e5                                      str r0, [r4]
007b8740  10 80 bd e8                                      pop {r4, pc}
007b8744  00 c0 90 e5                                      ldr ip, [r0]
007b8748  00 00 5c e3                                      cmp ip, #0
007b874c  f7 ff ff 0a                                      beq #0x7b8730
007b8750  0c 00 a0 e1                                      mov r0, ip
007b8754  01 11 a0 e1                                      lsl r1, r1, #2
007b8758  02 21 a0 e1                                      lsl r2, r2, #2
007b875c  12 69 fe eb                                      bl #0x752bac
007b8760  00 00 84 e5                                      str r0, [r4]
007b8764  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b8a14, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::instance_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_13instance_infoEEEE6resizeEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::instance_info> >::resize(int)
; decoder-mode: arm
007b8a14  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b8a18  04 60 90 e5                                      ldr r6, [r0, #4]
007b8a1c  00 40 a0 e1                                      mov r4, r0
007b8a20  01 50 a0 e1                                      mov r5, r1
007b8a24  01 00 56 e1                                      cmp r6, r1
007b8a28  0a 00 00 da                                      ble #0x7b8a58
007b8a2c  01 81 a0 e1                                      lsl r8, r1, #2
007b8a30  01 70 a0 e1                                      mov r7, r1
007b8a34  00 30 94 e5                                      ldr r3, [r4]
007b8a38  01 70 87 e2                                      add r7, r7, #1
007b8a3c  08 00 93 e7                                      ldr r0, [r3, r8]
007b8a40  04 80 88 e2                                      add r8, r8, #4
007b8a44  00 00 50 e3                                      cmp r0, #0
007b8a48  00 00 00 0a                                      beq #0x7b8a50
007b8a4c  fb 85 fe eb                                      bl #0x75a240
007b8a50  06 00 57 e1                                      cmp r7, r6
007b8a54  f6 ff ff 1a                                      bne #0x7b8a34
007b8a58  00 00 55 e3                                      cmp r5, #0
007b8a5c  02 00 00 0a                                      beq #0x7b8a6c
007b8a60  08 30 94 e5                                      ldr r3, [r4, #8]
007b8a64  03 00 55 e1                                      cmp r5, r3
007b8a68  0c 00 00 ca                                      bgt #0x7b8aa0
007b8a6c  05 00 56 e1                                      cmp r6, r5
007b8a70  08 00 00 aa                                      bge #0x7b8a98
007b8a74  06 30 a0 e1                                      mov r3, r6
007b8a78  00 10 a0 e3                                      mov r1, #0
007b8a7c  06 61 a0 e1                                      lsl r6, r6, #2
007b8a80  00 20 94 e5                                      ldr r2, [r4]
007b8a84  01 30 83 e2                                      add r3, r3, #1
007b8a88  05 00 53 e1                                      cmp r3, r5
007b8a8c  06 10 82 e7                                      str r1, [r2, r6]
007b8a90  04 60 86 e2                                      add r6, r6, #4
007b8a94  f9 ff ff 1a                                      bne #0x7b8a80
007b8a98  04 50 84 e5                                      str r5, [r4, #4]
007b8a9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b8aa0  04 00 a0 e1                                      mov r0, r4
007b8aa4  c5 10 85 e0                                      add r1, r5, r5, asr #1
007b8aa8  0f ff ff eb                                      bl #0x7b86ec
007b8aac  ee ff ff ea                                      b #0x7b8a6c
