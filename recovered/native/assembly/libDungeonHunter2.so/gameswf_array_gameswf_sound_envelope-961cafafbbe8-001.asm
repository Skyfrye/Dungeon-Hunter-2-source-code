; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077cc40, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::sound_envelope>
; alias: _ZN7gameswf5arrayINS_14sound_envelopeEE7reserveEi
; demangled: gameswf::array<gameswf::sound_envelope>::reserve(int)
; decoder-mode: arm
0077cc40  10 40 2d e9                                      push {r4, lr}
0077cc44  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0077cc48  00 40 a0 e1                                      mov r4, r0
0077cc4c  00 00 53 e3                                      cmp r3, #0
0077cc50  0f 00 00 1a                                      bne #0x77cc94
0077cc54  00 00 51 e3                                      cmp r1, #0
0077cc58  08 20 90 e5                                      ldr r2, [r0, #8]
0077cc5c  08 10 80 e5                                      str r1, [r0, #8]
0077cc60  0c 00 00 1a                                      bne #0x77cc98
0077cc64  00 00 90 e5                                      ldr r0, [r0]
0077cc68  00 00 50 e3                                      cmp r0, #0
0077cc6c  01 00 00 0a                                      beq #0x77cc78
0077cc70  82 11 a0 e1                                      lsl r1, r2, #3
0077cc74  af 57 ff eb                                      bl #0x752b38
0077cc78  00 30 a0 e3                                      mov r3, #0
0077cc7c  00 30 84 e5                                      str r3, [r4]
0077cc80  10 80 bd e8                                      pop {r4, pc}
0077cc84  81 01 a0 e1                                      lsl r0, r1, #3
0077cc88  0c 10 a0 e1                                      mov r1, ip
0077cc8c  c2 57 ff eb                                      bl #0x752b9c
0077cc90  00 00 84 e5                                      str r0, [r4]
0077cc94  10 80 bd e8                                      pop {r4, pc}
0077cc98  00 c0 90 e5                                      ldr ip, [r0]
0077cc9c  00 00 5c e3                                      cmp ip, #0
0077cca0  f7 ff ff 0a                                      beq #0x77cc84
0077cca4  0c 00 a0 e1                                      mov r0, ip
0077cca8  81 11 a0 e1                                      lsl r1, r1, #3
0077ccac  82 21 a0 e1                                      lsl r2, r2, #3
0077ccb0  bd 57 ff eb                                      bl #0x752bac
0077ccb4  00 00 84 e5                                      str r0, [r4]
0077ccb8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077ccbc, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::array<gameswf::sound_envelope>
; alias: _ZN7gameswf5arrayINS_14sound_envelopeEE6resizeEi
; demangled: gameswf::array<gameswf::sound_envelope>::resize(int)
; decoder-mode: arm
0077ccbc  70 40 2d e9                                      push {r4, r5, r6, lr}
0077ccc0  00 40 51 e2                                      subs r4, r1, #0
0077ccc4  00 50 a0 e1                                      mov r5, r0
0077ccc8  04 60 90 e5                                      ldr r6, [r0, #4]
0077cccc  02 00 00 0a                                      beq #0x77ccdc
0077ccd0  08 30 90 e5                                      ldr r3, [r0, #8]
0077ccd4  03 00 54 e1                                      cmp r4, r3
0077ccd8  0f 00 00 ca                                      bgt #0x77cd1c
0077ccdc  04 00 56 e1                                      cmp r6, r4
0077cce0  0b 00 00 aa                                      bge #0x77cd14
0077cce4  06 20 a0 e1                                      mov r2, r6
0077cce8  00 30 a0 e3                                      mov r3, #0
0077ccec  86 61 a0 e1                                      lsl r6, r6, #3
0077ccf0  00 00 95 e5                                      ldr r0, [r5]
0077ccf4  01 20 82 e2                                      add r2, r2, #1
0077ccf8  04 00 52 e1                                      cmp r2, r4
0077ccfc  06 10 80 e0                                      add r1, r0, r6
0077cd00  06 30 80 e7                                      str r3, [r0, r6]
0077cd04  b6 30 c1 e1                                      strh r3, [r1, #6]
0077cd08  b4 30 c1 e1                                      strh r3, [r1, #4]
0077cd0c  08 60 86 e2                                      add r6, r6, #8
0077cd10  f6 ff ff 1a                                      bne #0x77ccf0
0077cd14  04 40 85 e5                                      str r4, [r5, #4]
0077cd18  70 80 bd e8                                      pop {r4, r5, r6, pc}
0077cd1c  c4 10 84 e0                                      add r1, r4, r4, asr #1
0077cd20  c6 ff ff eb                                      bl #0x77cc40
0077cd24  ec ff ff ea                                      b #0x77ccdc
