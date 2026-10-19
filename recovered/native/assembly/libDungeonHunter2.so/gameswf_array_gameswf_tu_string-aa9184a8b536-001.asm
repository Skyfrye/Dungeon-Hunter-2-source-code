; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b8124, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::tu_string>
; alias: _ZN7gameswf5arrayINS_9tu_stringEE7reserveEi
; demangled: gameswf::array<gameswf::tu_string>::reserve(int)
; decoder-mode: arm
007b8124  10 40 2d e9                                      push {r4, lr}
007b8128  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b812c  00 40 a0 e1                                      mov r4, r0
007b8130  00 00 53 e3                                      cmp r3, #0
007b8134  11 00 00 1a                                      bne #0x7b8180
007b8138  00 00 51 e3                                      cmp r1, #0
007b813c  08 20 90 e5                                      ldr r2, [r0, #8]
007b8140  08 10 80 e5                                      str r1, [r0, #8]
007b8144  0e 00 00 1a                                      bne #0x7b8184
007b8148  00 00 90 e5                                      ldr r0, [r0]
007b814c  00 00 50 e3                                      cmp r0, #0
007b8150  02 00 00 0a                                      beq #0x7b8160
007b8154  14 10 a0 e3                                      mov r1, #0x14
007b8158  91 02 01 e0                                      mul r1, r1, r2
007b815c  75 6a fe eb                                      bl #0x752b38
007b8160  00 30 a0 e3                                      mov r3, #0
007b8164  00 30 84 e5                                      str r3, [r4]
007b8168  10 80 bd e8                                      pop {r4, pc}
007b816c  14 00 a0 e3                                      mov r0, #0x14
007b8170  90 01 00 e0                                      mul r0, r0, r1
007b8174  0c 10 a0 e1                                      mov r1, ip
007b8178  87 6a fe eb                                      bl #0x752b9c
007b817c  00 00 84 e5                                      str r0, [r4]
007b8180  10 80 bd e8                                      pop {r4, pc}
007b8184  00 c0 90 e5                                      ldr ip, [r0]
007b8188  00 00 5c e3                                      cmp ip, #0
007b818c  f6 ff ff 0a                                      beq #0x7b816c
007b8190  14 e0 a0 e3                                      mov lr, #0x14
007b8194  9e 02 02 e0                                      mul r2, lr, r2
007b8198  0c 00 a0 e1                                      mov r0, ip
007b819c  9e 01 01 e0                                      mul r1, lr, r1
007b81a0  81 6a fe eb                                      bl #0x752bac
007b81a4  00 00 84 e5                                      str r0, [r4]
007b81a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b81ac, declared_size=224, range_size=224, mode=arm
; class-group: gameswf::array<gameswf::tu_string>
; alias: _ZN7gameswf5arrayINS_9tu_stringEE6resizeEi
; demangled: gameswf::array<gameswf::tu_string>::resize(int)
; decoder-mode: arm
007b81ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b81b0  04 80 90 e5                                      ldr r8, [r0, #4]
007b81b4  00 60 a0 e1                                      mov r6, r0
007b81b8  01 70 a0 e1                                      mov r7, r1
007b81bc  01 00 58 e1                                      cmp r8, r1
007b81c0  11 00 00 da                                      ble #0x7b820c
007b81c4  14 40 a0 e3                                      mov r4, #0x14
007b81c8  94 01 04 e0                                      mul r4, r4, r1
007b81cc  01 50 a0 e1                                      mov r5, r1
007b81d0  01 00 00 ea                                      b #0x7b81dc
007b81d4  08 00 55 e1                                      cmp r5, r8
007b81d8  0b 00 00 0a                                      beq #0x7b820c
007b81dc  00 30 96 e5                                      ldr r3, [r6]
007b81e0  01 50 85 e2                                      add r5, r5, #1
007b81e4  d4 20 93 e1                                      ldrsb r2, [r3, r4]
007b81e8  04 30 83 e0                                      add r3, r3, r4
007b81ec  14 40 84 e2                                      add r4, r4, #0x14
007b81f0  01 00 72 e3                                      cmn r2, #1
007b81f4  f6 ff ff 1a                                      bne #0x7b81d4
007b81f8  08 10 93 e5                                      ldr r1, [r3, #8]
007b81fc  0c 00 93 e5                                      ldr r0, [r3, #0xc]
007b8200  4c 6a fe eb                                      bl #0x752b38
007b8204  08 00 55 e1                                      cmp r5, r8
007b8208  f3 ff ff 1a                                      bne #0x7b81dc
007b820c  00 00 57 e3                                      cmp r7, #0
007b8210  02 00 00 0a                                      beq #0x7b8220
007b8214  08 30 96 e5                                      ldr r3, [r6, #8]
007b8218  03 00 57 e1                                      cmp r7, r3
007b821c  16 00 00 ca                                      bgt #0x7b827c
007b8220  07 00 58 e1                                      cmp r8, r7
007b8224  12 00 00 aa                                      bge #0x7b8274
007b8228  14 20 a0 e3                                      mov r2, #0x14
007b822c  92 08 02 e0                                      mul r2, r2, r8
007b8230  01 50 a0 e3                                      mov r5, #1
007b8234  00 40 a0 e3                                      mov r4, #0
007b8238  00 c0 e0 e3                                      mvn ip, #0
007b823c  00 30 96 e5                                      ldr r3, [r6]
007b8240  01 80 88 e2                                      add r8, r8, #1
007b8244  07 00 58 e1                                      cmp r8, r7
007b8248  02 50 c3 e7                                      strb r5, [r3, r2]
007b824c  02 30 83 e0                                      add r3, r3, r2
007b8250  10 10 93 e5                                      ldr r1, [r3, #0x10]
007b8254  01 40 c3 e5                                      strb r4, [r3, #1]
007b8258  14 20 82 e2                                      add r2, r2, #0x14
007b825c  1c 10 d7 e7                                      bfi r1, ip, #0, #0x18
007b8260  21 0c a0 e1                                      lsr r0, r1, #0x18
007b8264  1f 00 c0 e7                                      bfc r0, #0, #1
007b8268  10 10 83 e5                                      str r1, [r3, #0x10]
007b826c  13 00 c3 e5                                      strb r0, [r3, #0x13]
007b8270  f1 ff ff 1a                                      bne #0x7b823c
007b8274  04 70 86 e5                                      str r7, [r6, #4]
007b8278  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b827c  06 00 a0 e1                                      mov r0, r6
007b8280  c7 10 87 e0                                      add r1, r7, r7, asr #1
007b8284  a6 ff ff eb                                      bl #0x7b8124
007b8288  e4 ff ff ea                                      b #0x7b8220
