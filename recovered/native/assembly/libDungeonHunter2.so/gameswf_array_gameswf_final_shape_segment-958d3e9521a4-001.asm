; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078575c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::final_shape::segment>
; alias: _ZN7gameswf5arrayINS_11final_shape7segmentEE7reserveEi
; demangled: gameswf::array<gameswf::final_shape::segment>::reserve(int)
; decoder-mode: arm
0078575c  10 40 2d e9                                      push {r4, lr}
00785760  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00785764  00 40 a0 e1                                      mov r4, r0
00785768  00 00 53 e3                                      cmp r3, #0
0078576c  0f 00 00 1a                                      bne #0x7857b0
00785770  00 00 51 e3                                      cmp r1, #0
00785774  08 20 90 e5                                      ldr r2, [r0, #8]
00785778  08 10 80 e5                                      str r1, [r0, #8]
0078577c  0c 00 00 1a                                      bne #0x7857b4
00785780  00 00 90 e5                                      ldr r0, [r0]
00785784  00 00 50 e3                                      cmp r0, #0
00785788  01 00 00 0a                                      beq #0x785794
0078578c  02 12 a0 e1                                      lsl r1, r2, #4
00785790  e8 34 ff eb                                      bl #0x752b38
00785794  00 30 a0 e3                                      mov r3, #0
00785798  00 30 84 e5                                      str r3, [r4]
0078579c  10 80 bd e8                                      pop {r4, pc}
007857a0  01 02 a0 e1                                      lsl r0, r1, #4
007857a4  0c 10 a0 e1                                      mov r1, ip
007857a8  fb 34 ff eb                                      bl #0x752b9c
007857ac  00 00 84 e5                                      str r0, [r4]
007857b0  10 80 bd e8                                      pop {r4, pc}
007857b4  00 c0 90 e5                                      ldr ip, [r0]
007857b8  00 00 5c e3                                      cmp ip, #0
007857bc  f7 ff ff 0a                                      beq #0x7857a0
007857c0  0c 00 a0 e1                                      mov r0, ip
007857c4  01 12 a0 e1                                      lsl r1, r1, #4
007857c8  02 22 a0 e1                                      lsl r2, r2, #4
007857cc  f6 34 ff eb                                      bl #0x752bac
007857d0  00 00 84 e5                                      str r0, [r4]
007857d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00787664, declared_size=212, range_size=212, mode=arm
; class-group: gameswf::array<gameswf::final_shape::segment>
; alias: _ZN7gameswf5arrayINS_11final_shape7segmentEE6resizeEi.clone.2
; demangled: gameswf::array<gameswf::final_shape::segment>::resize(int) [clone .clone.2]
; decoder-mode: arm
00787664  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00787668  04 40 90 e5                                      ldr r4, [r0, #4]
0078766c  00 60 a0 e1                                      mov r6, r0
00787670  00 00 54 e3                                      cmp r4, #0
00787674  20 00 00 da                                      ble #0x7876fc
00787678  00 50 a0 e3                                      mov r5, #0
0078767c  00 70 a0 e3                                      mov r7, #0
00787680  05 80 a0 e1                                      mov r8, r5
00787684  05 00 00 ea                                      b #0x7876a0
00787688  04 80 80 e5                                      str r8, [r0, #4]
0078768c  01 50 85 e2                                      add r5, r5, #1
00787690  08 10 a0 e1                                      mov r1, r8
00787694  dc f7 ff eb                                      bl #0x78560c
00787698  04 00 55 e1                                      cmp r5, r4
0078769c  13 00 00 0a                                      beq #0x7876f0
007876a0  00 00 96 e5                                      ldr r0, [r6]
007876a4  05 02 80 e0                                      add r0, r0, r5, lsl #4
007876a8  04 30 90 e5                                      ldr r3, [r0, #4]
007876ac  00 00 53 e3                                      cmp r3, #0
007876b0  f4 ff ff ca                                      bgt #0x787688
007876b4  f3 ff ff aa                                      bge #0x787688
007876b8  83 21 a0 e1                                      lsl r2, r3, #3
007876bc  00 10 90 e5                                      ldr r1, [r0]
007876c0  01 30 93 e2                                      adds r3, r3, #1
007876c4  02 c0 81 e0                                      add ip, r1, r2
007876c8  02 70 81 e7                                      str r7, [r1, r2]
007876cc  04 70 8c e5                                      str r7, [ip, #4]
007876d0  08 20 82 e2                                      add r2, r2, #8
007876d4  f8 ff ff 1a                                      bne #0x7876bc
007876d8  04 80 80 e5                                      str r8, [r0, #4]
007876dc  01 50 85 e2                                      add r5, r5, #1
007876e0  08 10 a0 e1                                      mov r1, r8
007876e4  c8 f7 ff eb                                      bl #0x78560c
007876e8  04 00 55 e1                                      cmp r5, r4
007876ec  eb ff ff 1a                                      bne #0x7876a0
007876f0  00 30 a0 e3                                      mov r3, #0
007876f4  04 30 86 e5                                      str r3, [r6, #4]
007876f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007876fc  fb ff ff aa                                      bge #0x7876f0
00787700  04 22 a0 e1                                      lsl r2, r4, #4
00787704  00 30 a0 e3                                      mov r3, #0
00787708  00 00 96 e5                                      ldr r0, [r6]
0078770c  01 40 94 e2                                      adds r4, r4, #1
00787710  02 10 80 e0                                      add r1, r0, r2
00787714  02 30 80 e7                                      str r3, [r0, r2]
00787718  0c 30 c1 e5                                      strb r3, [r1, #0xc]
0078771c  04 30 81 e5                                      str r3, [r1, #4]
00787720  08 30 81 e5                                      str r3, [r1, #8]
00787724  10 20 82 e2                                      add r2, r2, #0x10
00787728  f6 ff ff 1a                                      bne #0x787708
0078772c  00 30 a0 e3                                      mov r3, #0
00787730  04 30 86 e5                                      str r3, [r6, #4]
00787734  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
