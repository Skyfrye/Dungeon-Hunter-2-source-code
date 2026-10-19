; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b87e4, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::class_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_10class_infoEEEE7reserveEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::class_info> >::reserve(int)
; decoder-mode: arm
007b87e4  10 40 2d e9                                      push {r4, lr}
007b87e8  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b87ec  00 40 a0 e1                                      mov r4, r0
007b87f0  00 00 53 e3                                      cmp r3, #0
007b87f4  0f 00 00 1a                                      bne #0x7b8838
007b87f8  00 00 51 e3                                      cmp r1, #0
007b87fc  08 20 90 e5                                      ldr r2, [r0, #8]
007b8800  08 10 80 e5                                      str r1, [r0, #8]
007b8804  0c 00 00 1a                                      bne #0x7b883c
007b8808  00 00 90 e5                                      ldr r0, [r0]
007b880c  00 00 50 e3                                      cmp r0, #0
007b8810  01 00 00 0a                                      beq #0x7b881c
007b8814  02 11 a0 e1                                      lsl r1, r2, #2
007b8818  c6 68 fe eb                                      bl #0x752b38
007b881c  00 30 a0 e3                                      mov r3, #0
007b8820  00 30 84 e5                                      str r3, [r4]
007b8824  10 80 bd e8                                      pop {r4, pc}
007b8828  01 01 a0 e1                                      lsl r0, r1, #2
007b882c  0c 10 a0 e1                                      mov r1, ip
007b8830  d9 68 fe eb                                      bl #0x752b9c
007b8834  00 00 84 e5                                      str r0, [r4]
007b8838  10 80 bd e8                                      pop {r4, pc}
007b883c  00 c0 90 e5                                      ldr ip, [r0]
007b8840  00 00 5c e3                                      cmp ip, #0
007b8844  f7 ff ff 0a                                      beq #0x7b8828
007b8848  0c 00 a0 e1                                      mov r0, ip
007b884c  01 11 a0 e1                                      lsl r1, r1, #2
007b8850  02 21 a0 e1                                      lsl r2, r2, #2
007b8854  d4 68 fe eb                                      bl #0x752bac
007b8858  00 00 84 e5                                      str r0, [r4]
007b885c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b8b4c, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::class_info> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_10class_infoEEEE6resizeEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::class_info> >::resize(int)
; decoder-mode: arm
007b8b4c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b8b50  04 60 90 e5                                      ldr r6, [r0, #4]
007b8b54  00 40 a0 e1                                      mov r4, r0
007b8b58  01 50 a0 e1                                      mov r5, r1
007b8b5c  01 00 56 e1                                      cmp r6, r1
007b8b60  0a 00 00 da                                      ble #0x7b8b90
007b8b64  01 81 a0 e1                                      lsl r8, r1, #2
007b8b68  01 70 a0 e1                                      mov r7, r1
007b8b6c  00 30 94 e5                                      ldr r3, [r4]
007b8b70  01 70 87 e2                                      add r7, r7, #1
007b8b74  08 00 93 e7                                      ldr r0, [r3, r8]
007b8b78  04 80 88 e2                                      add r8, r8, #4
007b8b7c  00 00 50 e3                                      cmp r0, #0
007b8b80  00 00 00 0a                                      beq #0x7b8b88
007b8b84  ad 85 fe eb                                      bl #0x75a240
007b8b88  06 00 57 e1                                      cmp r7, r6
007b8b8c  f6 ff ff 1a                                      bne #0x7b8b6c
007b8b90  00 00 55 e3                                      cmp r5, #0
007b8b94  02 00 00 0a                                      beq #0x7b8ba4
007b8b98  08 30 94 e5                                      ldr r3, [r4, #8]
007b8b9c  03 00 55 e1                                      cmp r5, r3
007b8ba0  0c 00 00 ca                                      bgt #0x7b8bd8
007b8ba4  05 00 56 e1                                      cmp r6, r5
007b8ba8  08 00 00 aa                                      bge #0x7b8bd0
007b8bac  06 30 a0 e1                                      mov r3, r6
007b8bb0  00 10 a0 e3                                      mov r1, #0
007b8bb4  06 61 a0 e1                                      lsl r6, r6, #2
007b8bb8  00 20 94 e5                                      ldr r2, [r4]
007b8bbc  01 30 83 e2                                      add r3, r3, #1
007b8bc0  05 00 53 e1                                      cmp r3, r5
007b8bc4  06 10 82 e7                                      str r1, [r2, r6]
007b8bc8  04 60 86 e2                                      add r6, r6, #4
007b8bcc  f9 ff ff 1a                                      bne #0x7b8bb8
007b8bd0  04 50 84 e5                                      str r5, [r4, #4]
007b8bd4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b8bd8  04 00 a0 e1                                      mov r0, r4
007b8bdc  c5 10 85 e0                                      add r1, r5, r5, asr #1
007b8be0  ff fe ff eb                                      bl #0x7b87e4
007b8be4  ee ff ff ea                                      b #0x7b8ba4
