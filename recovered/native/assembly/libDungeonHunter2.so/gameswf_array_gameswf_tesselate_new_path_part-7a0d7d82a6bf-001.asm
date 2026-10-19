; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00785590, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::tesselate_new::path_part>
; alias: _ZN7gameswf5arrayINS_13tesselate_new9path_partEE7reserveEi
; demangled: gameswf::array<gameswf::tesselate_new::path_part>::reserve(int)
; decoder-mode: arm
00785590  10 40 2d e9                                      push {r4, lr}
00785594  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00785598  00 40 a0 e1                                      mov r4, r0
0078559c  00 00 53 e3                                      cmp r3, #0
007855a0  0f 00 00 1a                                      bne #0x7855e4
007855a4  00 00 51 e3                                      cmp r1, #0
007855a8  08 20 90 e5                                      ldr r2, [r0, #8]
007855ac  08 10 80 e5                                      str r1, [r0, #8]
007855b0  0c 00 00 1a                                      bne #0x7855e8
007855b4  00 00 90 e5                                      ldr r0, [r0]
007855b8  00 00 50 e3                                      cmp r0, #0
007855bc  01 00 00 0a                                      beq #0x7855c8
007855c0  82 12 a0 e1                                      lsl r1, r2, #5
007855c4  5b 35 ff eb                                      bl #0x752b38
007855c8  00 30 a0 e3                                      mov r3, #0
007855cc  00 30 84 e5                                      str r3, [r4]
007855d0  10 80 bd e8                                      pop {r4, pc}
007855d4  81 02 a0 e1                                      lsl r0, r1, #5
007855d8  0c 10 a0 e1                                      mov r1, ip
007855dc  6e 35 ff eb                                      bl #0x752b9c
007855e0  00 00 84 e5                                      str r0, [r4]
007855e4  10 80 bd e8                                      pop {r4, pc}
007855e8  00 c0 90 e5                                      ldr ip, [r0]
007855ec  00 00 5c e3                                      cmp ip, #0
007855f0  f7 ff ff 0a                                      beq #0x7855d4
007855f4  0c 00 a0 e1                                      mov r0, ip
007855f8  81 12 a0 e1                                      lsl r1, r1, #5
007855fc  82 22 a0 e1                                      lsl r2, r2, #5
00785600  69 35 ff eb                                      bl #0x752bac
00785604  00 00 84 e5                                      str r0, [r4]
00785608  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00787738, declared_size=288, range_size=288, mode=arm
; class-group: gameswf::array<gameswf::tesselate_new::path_part>
; alias: _ZN7gameswf5arrayINS_13tesselate_new9path_partEE6resizeEi
; demangled: gameswf::array<gameswf::tesselate_new::path_part>::resize(int)
; decoder-mode: arm
00787738  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0078773c  04 90 90 e5                                      ldr sb, [r0, #4]
00787740  00 70 a0 e1                                      mov r7, r0
00787744  01 a0 a0 e1                                      mov sl, r1
00787748  01 00 59 e1                                      cmp sb, r1
0078774c  21 00 00 da                                      ble #0x7877d8
00787750  00 40 a0 e3                                      mov r4, #0
00787754  81 62 a0 e1                                      lsl r6, r1, #5
00787758  01 50 a0 e1                                      mov r5, r1
0078775c  00 80 a0 e3                                      mov r8, #0
00787760  06 00 00 ea                                      b #0x787780
00787764  14 80 8e e5                                      str r8, [lr, #0x14]
00787768  01 50 85 e2                                      add r5, r5, #1
0078776c  08 10 a0 e1                                      mov r1, r8
00787770  a5 f7 ff eb                                      bl #0x78560c
00787774  09 00 55 e1                                      cmp r5, sb
00787778  20 60 86 e2                                      add r6, r6, #0x20
0078777c  15 00 00 0a                                      beq #0x7877d8
00787780  00 e0 97 e5                                      ldr lr, [r7]
00787784  06 e0 8e e0                                      add lr, lr, r6
00787788  14 20 9e e5                                      ldr r2, [lr, #0x14]
0078778c  10 00 8e e2                                      add r0, lr, #0x10
00787790  00 00 52 e3                                      cmp r2, #0
00787794  f2 ff ff ca                                      bgt #0x787764
00787798  f1 ff ff aa                                      bge #0x787764
0078779c  82 31 a0 e1                                      lsl r3, r2, #3
007877a0  00 10 90 e5                                      ldr r1, [r0]
007877a4  01 20 92 e2                                      adds r2, r2, #1
007877a8  03 c0 81 e0                                      add ip, r1, r3
007877ac  03 40 81 e7                                      str r4, [r1, r3]
007877b0  04 40 8c e5                                      str r4, [ip, #4]
007877b4  08 30 83 e2                                      add r3, r3, #8
007877b8  f8 ff ff 1a                                      bne #0x7877a0
007877bc  14 80 8e e5                                      str r8, [lr, #0x14]
007877c0  01 50 85 e2                                      add r5, r5, #1
007877c4  08 10 a0 e1                                      mov r1, r8
007877c8  8f f7 ff eb                                      bl #0x78560c
007877cc  09 00 55 e1                                      cmp r5, sb
007877d0  20 60 86 e2                                      add r6, r6, #0x20
007877d4  e9 ff ff 1a                                      bne #0x787780
007877d8  00 00 5a e3                                      cmp sl, #0
007877dc  02 00 00 0a                                      beq #0x7877ec
007877e0  08 30 97 e5                                      ldr r3, [r7, #8]
007877e4  03 00 5a e1                                      cmp sl, r3
007877e8  16 00 00 ca                                      bgt #0x787848
007877ec  0a 00 59 e1                                      cmp sb, sl
007877f0  12 00 00 aa                                      bge #0x787840
007877f4  09 00 a0 e1                                      mov r0, sb
007877f8  00 10 e0 e3                                      mvn r1, #0
007877fc  89 92 a0 e1                                      lsl sb, sb, #5
00787800  00 20 a0 e3                                      mov r2, #0
00787804  00 c0 97 e5                                      ldr ip, [r7]
00787808  01 00 80 e2                                      add r0, r0, #1
0078780c  0a 00 50 e1                                      cmp r0, sl
00787810  09 30 8c e0                                      add r3, ip, sb
00787814  09 10 8c e7                                      str r1, [ip, sb]
00787818  1c 20 c3 e5                                      strb r2, [r3, #0x1c]
0078781c  04 10 83 e5                                      str r1, [r3, #4]
00787820  08 10 83 e5                                      str r1, [r3, #8]
00787824  0c 20 c3 e5                                      strb r2, [r3, #0xc]
00787828  0d 20 c3 e5                                      strb r2, [r3, #0xd]
0078782c  10 20 83 e5                                      str r2, [r3, #0x10]
00787830  14 20 83 e5                                      str r2, [r3, #0x14]
00787834  18 20 83 e5                                      str r2, [r3, #0x18]
00787838  20 90 89 e2                                      add sb, sb, #0x20
0078783c  f0 ff ff 1a                                      bne #0x787804
00787840  04 a0 87 e5                                      str sl, [r7, #4]
00787844  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00787848  07 00 a0 e1                                      mov r0, r7
0078784c  ca 10 8a e0                                      add r1, sl, sl, asr #1
00787850  4e f7 ff eb                                      bl #0x785590
00787854  e4 ff ff ea                                      b #0x7877ec

; FUNCTION 0x00787858, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::array<gameswf::tesselate_new::path_part>
; alias: _ZN7gameswf5arrayINS_13tesselate_new9path_partEED1Ev
; demangled: gameswf::array<gameswf::tesselate_new::path_part>::~array()
; decoder-mode: arm
00787858  10 40 2d e9                                      push {r4, lr}
0078785c  00 10 a0 e3                                      mov r1, #0
00787860  00 40 a0 e1                                      mov r4, r0
00787864  b3 ff ff eb                                      bl #0x787738
00787868  04 00 a0 e1                                      mov r0, r4
0078786c  00 10 a0 e3                                      mov r1, #0
00787870  46 f7 ff eb                                      bl #0x785590
00787874  04 00 a0 e1                                      mov r0, r4
00787878  10 80 bd e8                                      pop {r4, pc}
