; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00752ec8, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::filter>
; alias: _ZN7gameswf5arrayINS_6filterEE7reserveEi
; demangled: gameswf::array<gameswf::filter>::reserve(int)
; decoder-mode: arm
00752ec8  10 40 2d e9                                      push {r4, lr}
00752ecc  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00752ed0  00 40 a0 e1                                      mov r4, r0
00752ed4  00 00 53 e3                                      cmp r3, #0
00752ed8  11 00 00 1a                                      bne #0x752f24
00752edc  00 00 51 e3                                      cmp r1, #0
00752ee0  08 20 90 e5                                      ldr r2, [r0, #8]
00752ee4  08 10 80 e5                                      str r1, [r0, #8]
00752ee8  0e 00 00 1a                                      bne #0x752f28
00752eec  00 00 90 e5                                      ldr r0, [r0]
00752ef0  00 00 50 e3                                      cmp r0, #0
00752ef4  02 00 00 0a                                      beq #0x752f04
00752ef8  2c 10 a0 e3                                      mov r1, #0x2c
00752efc  91 02 01 e0                                      mul r1, r1, r2
00752f00  0c ff ff eb                                      bl #0x752b38
00752f04  00 30 a0 e3                                      mov r3, #0
00752f08  00 30 84 e5                                      str r3, [r4]
00752f0c  10 80 bd e8                                      pop {r4, pc}
00752f10  2c 00 a0 e3                                      mov r0, #0x2c
00752f14  90 01 00 e0                                      mul r0, r0, r1
00752f18  0c 10 a0 e1                                      mov r1, ip
00752f1c  1e ff ff eb                                      bl #0x752b9c
00752f20  00 00 84 e5                                      str r0, [r4]
00752f24  10 80 bd e8                                      pop {r4, pc}
00752f28  00 c0 90 e5                                      ldr ip, [r0]
00752f2c  00 00 5c e3                                      cmp ip, #0
00752f30  f6 ff ff 0a                                      beq #0x752f10
00752f34  2c e0 a0 e3                                      mov lr, #0x2c
00752f38  9e 02 02 e0                                      mul r2, lr, r2
00752f3c  0c 00 a0 e1                                      mov r0, ip
00752f40  9e 01 01 e0                                      mul r1, lr, r1
00752f44  18 ff ff eb                                      bl #0x752bac
00752f48  00 00 84 e5                                      str r0, [r4]
00752f4c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00755ad8, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::array<gameswf::filter>
; alias: _ZN7gameswf5arrayINS_6filterEE6resizeEi
; demangled: gameswf::array<gameswf::filter>::resize(int)
; decoder-mode: arm
00755ad8  70 40 2d e9                                      push {r4, r5, r6, lr}
00755adc  00 40 51 e2                                      subs r4, r1, #0
00755ae0  00 50 a0 e1                                      mov r5, r0
00755ae4  04 60 90 e5                                      ldr r6, [r0, #4]
00755ae8  02 00 00 0a                                      beq #0x755af8
00755aec  08 30 90 e5                                      ldr r3, [r0, #8]
00755af0  03 00 54 e1                                      cmp r4, r3
00755af4  18 00 00 ca                                      bgt #0x755b5c
00755af8  04 00 56 e1                                      cmp r6, r4
00755afc  14 00 00 aa                                      bge #0x755b54
00755b00  2c 10 a0 e3                                      mov r1, #0x2c
00755b04  91 06 01 e0                                      mul r1, r1, r6
00755b08  00 20 a0 e3                                      mov r2, #0
00755b0c  00 00 95 e5                                      ldr r0, [r5]
00755b10  01 60 86 e2                                      add r6, r6, #1
00755b14  04 00 56 e1                                      cmp r6, r4
00755b18  01 30 80 e0                                      add r3, r0, r1
00755b1c  04 30 83 e2                                      add r3, r3, #4
00755b20  01 20 80 e7                                      str r2, [r0, r1]
00755b24  04 20 83 e4                                      str r2, [r3], #4
00755b28  04 20 83 e4                                      str r2, [r3], #4
00755b2c  04 20 83 e4                                      str r2, [r3], #4
00755b30  04 20 83 e4                                      str r2, [r3], #4
00755b34  04 20 83 e4                                      str r2, [r3], #4
00755b38  04 20 83 e4                                      str r2, [r3], #4
00755b3c  04 20 83 e4                                      str r2, [r3], #4
00755b40  04 20 83 e4                                      str r2, [r3], #4
00755b44  04 20 83 e4                                      str r2, [r3], #4
00755b48  00 20 83 e5                                      str r2, [r3]
00755b4c  2c 10 81 e2                                      add r1, r1, #0x2c
00755b50  ed ff ff 1a                                      bne #0x755b0c
00755b54  04 40 85 e5                                      str r4, [r5, #4]
00755b58  70 80 bd e8                                      pop {r4, r5, r6, pc}
00755b5c  c4 10 84 e0                                      add r1, r4, r4, asr #1
00755b60  d8 f4 ff eb                                      bl #0x752ec8
00755b64  e3 ff ff ea                                      b #0x755af8
