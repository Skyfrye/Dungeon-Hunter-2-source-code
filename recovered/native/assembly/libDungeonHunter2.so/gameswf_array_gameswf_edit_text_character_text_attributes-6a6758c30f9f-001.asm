; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078a67c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::edit_text_character::text_attributes>
; alias: _ZN7gameswf5arrayINS_19edit_text_character15text_attributesEE7reserveEi
; demangled: gameswf::array<gameswf::edit_text_character::text_attributes>::reserve(int)
; decoder-mode: arm
0078a67c  10 40 2d e9                                      push {r4, lr}
0078a680  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0078a684  00 40 a0 e1                                      mov r4, r0
0078a688  00 00 53 e3                                      cmp r3, #0
0078a68c  0f 00 00 1a                                      bne #0x78a6d0
0078a690  00 00 51 e3                                      cmp r1, #0
0078a694  08 20 90 e5                                      ldr r2, [r0, #8]
0078a698  08 10 80 e5                                      str r1, [r0, #8]
0078a69c  0c 00 00 1a                                      bne #0x78a6d4
0078a6a0  00 00 90 e5                                      ldr r0, [r0]
0078a6a4  00 00 50 e3                                      cmp r0, #0
0078a6a8  01 00 00 0a                                      beq #0x78a6b4
0078a6ac  02 12 a0 e1                                      lsl r1, r2, #4
0078a6b0  20 21 ff eb                                      bl #0x752b38
0078a6b4  00 30 a0 e3                                      mov r3, #0
0078a6b8  00 30 84 e5                                      str r3, [r4]
0078a6bc  10 80 bd e8                                      pop {r4, pc}
0078a6c0  01 02 a0 e1                                      lsl r0, r1, #4
0078a6c4  0c 10 a0 e1                                      mov r1, ip
0078a6c8  33 21 ff eb                                      bl #0x752b9c
0078a6cc  00 00 84 e5                                      str r0, [r4]
0078a6d0  10 80 bd e8                                      pop {r4, pc}
0078a6d4  00 c0 90 e5                                      ldr ip, [r0]
0078a6d8  00 00 5c e3                                      cmp ip, #0
0078a6dc  f7 ff ff 0a                                      beq #0x78a6c0
0078a6e0  0c 00 a0 e1                                      mov r0, ip
0078a6e4  01 12 a0 e1                                      lsl r1, r1, #4
0078a6e8  02 22 a0 e1                                      lsl r2, r2, #4
0078a6ec  2e 21 ff eb                                      bl #0x752bac
0078a6f0  00 00 84 e5                                      str r0, [r4]
0078a6f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078bc0c, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::array<gameswf::edit_text_character::text_attributes>
; alias: _ZN7gameswf5arrayINS_19edit_text_character15text_attributesEE6resizeEi
; demangled: gameswf::array<gameswf::edit_text_character::text_attributes>::resize(int)
; decoder-mode: arm
0078bc0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0078bc10  04 60 90 e5                                      ldr r6, [r0, #4]
0078bc14  00 40 a0 e1                                      mov r4, r0
0078bc18  01 50 a0 e1                                      mov r5, r1
0078bc1c  01 00 56 e1                                      cmp r6, r1
0078bc20  0a 00 00 da                                      ble #0x78bc50
0078bc24  01 82 a0 e1                                      lsl r8, r1, #4
0078bc28  01 70 a0 e1                                      mov r7, r1
0078bc2c  00 30 94 e5                                      ldr r3, [r4]
0078bc30  01 70 87 e2                                      add r7, r7, #1
0078bc34  08 00 93 e7                                      ldr r0, [r3, r8]
0078bc38  10 80 88 e2                                      add r8, r8, #0x10
0078bc3c  00 00 50 e3                                      cmp r0, #0
0078bc40  00 00 00 0a                                      beq #0x78bc48
0078bc44  7d 39 ff eb                                      bl #0x75a240
0078bc48  06 00 57 e1                                      cmp r7, r6
0078bc4c  f6 ff ff 1a                                      bne #0x78bc2c
0078bc50  00 00 55 e3                                      cmp r5, #0
0078bc54  02 00 00 0a                                      beq #0x78bc64
0078bc58  08 30 94 e5                                      ldr r3, [r4, #8]
0078bc5c  03 00 55 e1                                      cmp r5, r3
0078bc60  15 00 00 ca                                      bgt #0x78bcbc
0078bc64  05 00 56 e1                                      cmp r6, r5
0078bc68  11 00 00 aa                                      bge #0x78bcb4
0078bc6c  06 10 a0 e1                                      mov r1, r6
0078bc70  00 20 a0 e3                                      mov r2, #0
0078bc74  06 62 a0 e1                                      lsl r6, r6, #4
0078bc78  0c 70 a0 e3                                      mov r7, #0xc
0078bc7c  01 c0 a0 e3                                      mov ip, #1
0078bc80  00 00 94 e5                                      ldr r0, [r4]
0078bc84  01 10 81 e2                                      add r1, r1, #1
0078bc88  05 00 51 e1                                      cmp r1, r5
0078bc8c  06 30 80 e0                                      add r3, r0, r6
0078bc90  06 20 80 e7                                      str r2, [r0, r6]
0078bc94  0c 20 c3 e5                                      strb r2, [r3, #0xc]
0078bc98  04 70 83 e5                                      str r7, [r3, #4]
0078bc9c  08 20 c3 e5                                      strb r2, [r3, #8]
0078bca0  09 20 c3 e5                                      strb r2, [r3, #9]
0078bca4  0a 20 c3 e5                                      strb r2, [r3, #0xa]
0078bca8  0b c0 c3 e5                                      strb ip, [r3, #0xb]
0078bcac  10 60 86 e2                                      add r6, r6, #0x10
0078bcb0  f2 ff ff 1a                                      bne #0x78bc80
0078bcb4  04 50 84 e5                                      str r5, [r4, #4]
0078bcb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0078bcbc  04 00 a0 e1                                      mov r0, r4
0078bcc0  c5 10 85 e0                                      add r1, r5, r5, asr #1
0078bcc4  6c fa ff eb                                      bl #0x78a67c
0078bcc8  e5 ff ff ea                                      b #0x78bc64
