; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007613e4, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::fill_style>
; alias: _ZN7gameswf5arrayINS_10fill_styleEE7reserveEi
; demangled: gameswf::array<gameswf::fill_style>::reserve(int)
; decoder-mode: arm
007613e4  10 40 2d e9                                      push {r4, lr}
007613e8  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007613ec  00 40 a0 e1                                      mov r4, r0
007613f0  00 00 53 e3                                      cmp r3, #0
007613f4  11 00 00 1a                                      bne #0x761440
007613f8  00 00 51 e3                                      cmp r1, #0
007613fc  08 20 90 e5                                      ldr r2, [r0, #8]
00761400  08 10 80 e5                                      str r1, [r0, #8]
00761404  0e 00 00 1a                                      bne #0x761444
00761408  00 00 90 e5                                      ldr r0, [r0]
0076140c  00 00 50 e3                                      cmp r0, #0
00761410  02 00 00 0a                                      beq #0x761420
00761414  54 10 a0 e3                                      mov r1, #0x54
00761418  91 02 01 e0                                      mul r1, r1, r2
0076141c  c5 c5 ff eb                                      bl #0x752b38
00761420  00 30 a0 e3                                      mov r3, #0
00761424  00 30 84 e5                                      str r3, [r4]
00761428  10 80 bd e8                                      pop {r4, pc}
0076142c  54 00 a0 e3                                      mov r0, #0x54
00761430  90 01 00 e0                                      mul r0, r0, r1
00761434  0c 10 a0 e1                                      mov r1, ip
00761438  d7 c5 ff eb                                      bl #0x752b9c
0076143c  00 00 84 e5                                      str r0, [r4]
00761440  10 80 bd e8                                      pop {r4, pc}
00761444  00 c0 90 e5                                      ldr ip, [r0]
00761448  00 00 5c e3                                      cmp ip, #0
0076144c  f6 ff ff 0a                                      beq #0x76142c
00761450  54 e0 a0 e3                                      mov lr, #0x54
00761454  9e 02 02 e0                                      mul r2, lr, r2
00761458  0c 00 a0 e1                                      mov r0, ip
0076145c  9e 01 01 e0                                      mul r1, lr, r1
00761460  d1 c5 ff eb                                      bl #0x752bac
00761464  00 00 84 e5                                      str r0, [r4]
00761468  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0076146c, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::array<gameswf::fill_style>
; alias: _ZN7gameswf5arrayINS_10fill_styleEE6resizeEi
; demangled: gameswf::array<gameswf::fill_style>::resize(int)
; decoder-mode: arm
0076146c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00761470  04 60 90 e5                                      ldr r6, [r0, #4]
00761474  00 40 a0 e1                                      mov r4, r0
00761478  01 50 a0 e1                                      mov r5, r1
0076147c  01 00 56 e1                                      cmp r6, r1
00761480  0b 00 00 da                                      ble #0x7614b4
00761484  54 70 a0 e3                                      mov r7, #0x54
00761488  97 01 07 e0                                      mul r7, r7, r1
0076148c  01 80 a0 e1                                      mov r8, r1
00761490  00 30 94 e5                                      ldr r3, [r4]
00761494  01 80 88 e2                                      add r8, r8, #1
00761498  07 00 83 e0                                      add r0, r3, r7
0076149c  07 30 93 e7                                      ldr r3, [r3, r7]
007614a0  0f e0 a0 e1                                      mov lr, pc
007614a4  00 f0 93 e5                                      ldr pc, [r3]
007614a8  06 00 58 e1                                      cmp r8, r6
007614ac  54 70 87 e2                                      add r7, r7, #0x54
007614b0  f6 ff ff 1a                                      bne #0x761490
007614b4  00 00 55 e3                                      cmp r5, #0
007614b8  02 00 00 0a                                      beq #0x7614c8
007614bc  08 30 94 e5                                      ldr r3, [r4, #8]
007614c0  03 00 55 e1                                      cmp r5, r3
007614c4  0c 00 00 ca                                      bgt #0x7614fc
007614c8  05 00 56 e1                                      cmp r6, r5
007614cc  08 00 00 aa                                      bge #0x7614f4
007614d0  54 70 a0 e3                                      mov r7, #0x54
007614d4  97 06 07 e0                                      mul r7, r7, r6
007614d8  00 00 94 e5                                      ldr r0, [r4]
007614dc  01 60 86 e2                                      add r6, r6, #1
007614e0  07 00 80 e0                                      add r0, r0, r7
007614e4  68 8d 00 eb                                      bl #0x784a8c
007614e8  05 00 56 e1                                      cmp r6, r5
007614ec  54 70 87 e2                                      add r7, r7, #0x54
007614f0  f8 ff ff 1a                                      bne #0x7614d8
007614f4  04 50 84 e5                                      str r5, [r4, #4]
007614f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007614fc  04 00 a0 e1                                      mov r0, r4
00761500  c5 10 85 e0                                      add r1, r5, r5, asr #1
00761504  b6 ff ff eb                                      bl #0x7613e4
00761508  ee ff ff ea                                      b #0x7614c8

; FUNCTION 0x0077a838, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::array<gameswf::fill_style>
; alias: _ZN7gameswf5arrayINS_10fill_styleEEaSERKS2_
; demangled: gameswf::array<gameswf::fill_style>::operator=(gameswf::array<gameswf::fill_style> const&)
; decoder-mode: arm
0077a838  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077a83c  00 60 a0 e1                                      mov r6, r0
0077a840  01 70 a0 e1                                      mov r7, r1
0077a844  04 10 91 e5                                      ldr r1, [r1, #4]
0077a848  07 9b ff eb                                      bl #0x76146c
0077a84c  04 30 96 e5                                      ldr r3, [r6, #4]
0077a850  00 00 53 e3                                      cmp r3, #0
0077a854  0b 00 00 da                                      ble #0x77a888
0077a858  00 40 a0 e3                                      mov r4, #0
0077a85c  04 50 a0 e1                                      mov r5, r4
0077a860  00 00 96 e5                                      ldr r0, [r6]
0077a864  00 10 97 e5                                      ldr r1, [r7]
0077a868  01 50 85 e2                                      add r5, r5, #1
0077a86c  04 00 80 e0                                      add r0, r0, r4
0077a870  04 10 81 e0                                      add r1, r1, r4
0077a874  c1 ff ff eb                                      bl #0x77a780
0077a878  04 30 96 e5                                      ldr r3, [r6, #4]
0077a87c  54 40 84 e2                                      add r4, r4, #0x54
0077a880  05 00 53 e1                                      cmp r3, r5
0077a884  f5 ff ff ca                                      bgt #0x77a860
0077a888  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
