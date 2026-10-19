; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b84fc, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::multiname>
; alias: _ZN7gameswf5arrayINS_9multinameEE7reserveEi
; demangled: gameswf::array<gameswf::multiname>::reserve(int)
; decoder-mode: arm
007b84fc  10 40 2d e9                                      push {r4, lr}
007b8500  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b8504  00 40 a0 e1                                      mov r4, r0
007b8508  00 00 53 e3                                      cmp r3, #0
007b850c  11 00 00 1a                                      bne #0x7b8558
007b8510  00 00 51 e3                                      cmp r1, #0
007b8514  08 20 90 e5                                      ldr r2, [r0, #8]
007b8518  08 10 80 e5                                      str r1, [r0, #8]
007b851c  0e 00 00 1a                                      bne #0x7b855c
007b8520  00 00 90 e5                                      ldr r0, [r0]
007b8524  00 00 50 e3                                      cmp r0, #0
007b8528  02 00 00 0a                                      beq #0x7b8538
007b852c  14 10 a0 e3                                      mov r1, #0x14
007b8530  91 02 01 e0                                      mul r1, r1, r2
007b8534  7f 69 fe eb                                      bl #0x752b38
007b8538  00 30 a0 e3                                      mov r3, #0
007b853c  00 30 84 e5                                      str r3, [r4]
007b8540  10 80 bd e8                                      pop {r4, pc}
007b8544  14 00 a0 e3                                      mov r0, #0x14
007b8548  90 01 00 e0                                      mul r0, r0, r1
007b854c  0c 10 a0 e1                                      mov r1, ip
007b8550  91 69 fe eb                                      bl #0x752b9c
007b8554  00 00 84 e5                                      str r0, [r4]
007b8558  10 80 bd e8                                      pop {r4, pc}
007b855c  00 c0 90 e5                                      ldr ip, [r0]
007b8560  00 00 5c e3                                      cmp ip, #0
007b8564  f6 ff ff 0a                                      beq #0x7b8544
007b8568  14 e0 a0 e3                                      mov lr, #0x14
007b856c  9e 02 02 e0                                      mul r2, lr, r2
007b8570  0c 00 a0 e1                                      mov r0, ip
007b8574  9e 01 01 e0                                      mul r1, lr, r1
007b8578  8b 69 fe eb                                      bl #0x752bac
007b857c  00 00 84 e5                                      str r0, [r4]
007b8580  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b8584, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::array<gameswf::multiname>
; alias: _ZN7gameswf5arrayINS_9multinameEE6resizeEi
; demangled: gameswf::array<gameswf::multiname>::resize(int)
; decoder-mode: arm
007b8584  70 40 2d e9                                      push {r4, r5, r6, lr}
007b8588  00 40 51 e2                                      subs r4, r1, #0
007b858c  00 50 a0 e1                                      mov r5, r0
007b8590  04 60 90 e5                                      ldr r6, [r0, #4]
007b8594  02 00 00 0a                                      beq #0x7b85a4
007b8598  08 30 90 e5                                      ldr r3, [r0, #8]
007b859c  03 00 54 e1                                      cmp r4, r3
007b85a0  10 00 00 ca                                      bgt #0x7b85e8
007b85a4  04 00 56 e1                                      cmp r6, r4
007b85a8  0c 00 00 aa                                      bge #0x7b85e0
007b85ac  14 20 a0 e3                                      mov r2, #0x14
007b85b0  92 06 02 e0                                      mul r2, r2, r6
007b85b4  00 30 a0 e3                                      mov r3, #0
007b85b8  00 00 95 e5                                      ldr r0, [r5]
007b85bc  01 60 86 e2                                      add r6, r6, #1
007b85c0  04 00 56 e1                                      cmp r6, r4
007b85c4  02 10 80 e0                                      add r1, r0, r2
007b85c8  02 30 80 e7                                      str r3, [r0, r2]
007b85cc  10 30 81 e5                                      str r3, [r1, #0x10]
007b85d0  04 30 81 e5                                      str r3, [r1, #4]
007b85d4  08 30 81 e5                                      str r3, [r1, #8]
007b85d8  14 20 82 e2                                      add r2, r2, #0x14
007b85dc  f5 ff ff 1a                                      bne #0x7b85b8
007b85e0  04 40 85 e5                                      str r4, [r5, #4]
007b85e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007b85e8  c4 10 84 e0                                      add r1, r4, r4, asr #1
007b85ec  c2 ff ff eb                                      bl #0x7b84fc
007b85f0  eb ff ff ea                                      b #0x7b85a4
