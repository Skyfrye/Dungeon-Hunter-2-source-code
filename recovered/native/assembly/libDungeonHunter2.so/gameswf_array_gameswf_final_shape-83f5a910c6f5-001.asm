; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007857d8, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::final_shape>
; alias: _ZN7gameswf5arrayINS_11final_shapeEE7reserveEi
; demangled: gameswf::array<gameswf::final_shape>::reserve(int)
; decoder-mode: arm
007857d8  10 40 2d e9                                      push {r4, lr}
007857dc  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007857e0  00 40 a0 e1                                      mov r4, r0
007857e4  00 00 53 e3                                      cmp r3, #0
007857e8  11 00 00 1a                                      bne #0x785834
007857ec  00 00 51 e3                                      cmp r1, #0
007857f0  08 20 90 e5                                      ldr r2, [r0, #8]
007857f4  08 10 80 e5                                      str r1, [r0, #8]
007857f8  0e 00 00 1a                                      bne #0x785838
007857fc  00 00 90 e5                                      ldr r0, [r0]
00785800  00 00 50 e3                                      cmp r0, #0
00785804  02 00 00 0a                                      beq #0x785814
00785808  34 10 a0 e3                                      mov r1, #0x34
0078580c  91 02 01 e0                                      mul r1, r1, r2
00785810  c8 34 ff eb                                      bl #0x752b38
00785814  00 30 a0 e3                                      mov r3, #0
00785818  00 30 84 e5                                      str r3, [r4]
0078581c  10 80 bd e8                                      pop {r4, pc}
00785820  34 00 a0 e3                                      mov r0, #0x34
00785824  90 01 00 e0                                      mul r0, r0, r1
00785828  0c 10 a0 e1                                      mov r1, ip
0078582c  da 34 ff eb                                      bl #0x752b9c
00785830  00 00 84 e5                                      str r0, [r4]
00785834  10 80 bd e8                                      pop {r4, pc}
00785838  00 c0 90 e5                                      ldr ip, [r0]
0078583c  00 00 5c e3                                      cmp ip, #0
00785840  f6 ff ff 0a                                      beq #0x785820
00785844  34 e0 a0 e3                                      mov lr, #0x34
00785848  9e 02 02 e0                                      mul r2, lr, r2
0078584c  0c 00 a0 e1                                      mov r0, ip
00785850  9e 01 01 e0                                      mul r1, lr, r1
00785854  d4 34 ff eb                                      bl #0x752bac
00785858  00 00 84 e5                                      str r0, [r4]
0078585c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078803c, declared_size=208, range_size=208, mode=arm
; class-group: gameswf::array<gameswf::final_shape>
; alias: _ZN7gameswf5arrayINS_11final_shapeEE6resizeEi
; demangled: gameswf::array<gameswf::final_shape>::resize(int)
; decoder-mode: arm
0078803c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00788040  04 60 90 e5                                      ldr r6, [r0, #4]
00788044  00 40 a0 e1                                      mov r4, r0
00788048  01 50 a0 e1                                      mov r5, r1
0078804c  01 00 56 e1                                      cmp r6, r1
00788050  09 00 00 da                                      ble #0x78807c
00788054  34 80 a0 e3                                      mov r8, #0x34
00788058  98 01 08 e0                                      mul r8, r8, r1
0078805c  01 70 a0 e1                                      mov r7, r1
00788060  00 00 94 e5                                      ldr r0, [r4]
00788064  01 70 87 e2                                      add r7, r7, #1
00788068  08 00 80 e0                                      add r0, r0, r8
0078806c  d5 ff ff eb                                      bl #0x787fc8
00788070  06 00 57 e1                                      cmp r7, r6
00788074  34 80 88 e2                                      add r8, r8, #0x34
00788078  f8 ff ff 1a                                      bne #0x788060
0078807c  00 00 55 e3                                      cmp r5, #0
00788080  02 00 00 0a                                      beq #0x788090
00788084  08 30 94 e5                                      ldr r3, [r4, #8]
00788088  03 00 55 e1                                      cmp r5, r3
0078808c  1a 00 00 ca                                      bgt #0x7880fc
00788090  05 00 56 e1                                      cmp r6, r5
00788094  16 00 00 aa                                      bge #0x7880f4
00788098  34 10 a0 e3                                      mov r1, #0x34
0078809c  91 06 01 e0                                      mul r1, r1, r6
007880a0  00 00 a0 e3                                      mov r0, #0
007880a4  00 20 a0 e3                                      mov r2, #0
007880a8  00 c0 94 e5                                      ldr ip, [r4]
007880ac  01 60 86 e2                                      add r6, r6, #1
007880b0  05 00 56 e1                                      cmp r6, r5
007880b4  01 30 8c e0                                      add r3, ip, r1
007880b8  01 20 cc e7                                      strb r2, [ip, r1]
007880bc  30 00 83 e5                                      str r0, [r3, #0x30]
007880c0  04 20 83 e5                                      str r2, [r3, #4]
007880c4  08 00 83 e5                                      str r0, [r3, #8]
007880c8  0c 20 83 e5                                      str r2, [r3, #0xc]
007880cc  10 20 83 e5                                      str r2, [r3, #0x10]
007880d0  14 20 83 e5                                      str r2, [r3, #0x14]
007880d4  18 20 c3 e5                                      strb r2, [r3, #0x18]
007880d8  1c 20 83 e5                                      str r2, [r3, #0x1c]
007880dc  20 20 83 e5                                      str r2, [r3, #0x20]
007880e0  24 20 83 e5                                      str r2, [r3, #0x24]
007880e4  28 20 c3 e5                                      strb r2, [r3, #0x28]
007880e8  2c 00 83 e5                                      str r0, [r3, #0x2c]
007880ec  34 10 81 e2                                      add r1, r1, #0x34
007880f0  ec ff ff 1a                                      bne #0x7880a8
007880f4  04 50 84 e5                                      str r5, [r4, #4]
007880f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007880fc  04 00 a0 e1                                      mov r0, r4
00788100  c5 10 85 e0                                      add r1, r5, r5, asr #1
00788104  b3 f5 ff eb                                      bl #0x7857d8
00788108  e0 ff ff ea                                      b #0x788090
