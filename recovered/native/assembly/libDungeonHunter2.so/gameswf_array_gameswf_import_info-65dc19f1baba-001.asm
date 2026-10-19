; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007646c8, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::import_info>
; alias: _ZN7gameswf5arrayINS_11import_infoEE7reserveEi
; demangled: gameswf::array<gameswf::import_info>::reserve(int)
; decoder-mode: arm
007646c8  10 40 2d e9                                      push {r4, lr}
007646cc  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007646d0  00 40 a0 e1                                      mov r4, r0
007646d4  00 00 53 e3                                      cmp r3, #0
007646d8  11 00 00 1a                                      bne #0x764724
007646dc  00 00 51 e3                                      cmp r1, #0
007646e0  08 20 90 e5                                      ldr r2, [r0, #8]
007646e4  08 10 80 e5                                      str r1, [r0, #8]
007646e8  0e 00 00 1a                                      bne #0x764728
007646ec  00 00 90 e5                                      ldr r0, [r0]
007646f0  00 00 50 e3                                      cmp r0, #0
007646f4  02 00 00 0a                                      beq #0x764704
007646f8  2c 10 a0 e3                                      mov r1, #0x2c
007646fc  91 02 01 e0                                      mul r1, r1, r2
00764700  0c b9 ff eb                                      bl #0x752b38
00764704  00 30 a0 e3                                      mov r3, #0
00764708  00 30 84 e5                                      str r3, [r4]
0076470c  10 80 bd e8                                      pop {r4, pc}
00764710  2c 00 a0 e3                                      mov r0, #0x2c
00764714  90 01 00 e0                                      mul r0, r0, r1
00764718  0c 10 a0 e1                                      mov r1, ip
0076471c  1e b9 ff eb                                      bl #0x752b9c
00764720  00 00 84 e5                                      str r0, [r4]
00764724  10 80 bd e8                                      pop {r4, pc}
00764728  00 c0 90 e5                                      ldr ip, [r0]
0076472c  00 00 5c e3                                      cmp ip, #0
00764730  f6 ff ff 0a                                      beq #0x764710
00764734  2c e0 a0 e3                                      mov lr, #0x2c
00764738  9e 02 02 e0                                      mul r2, lr, r2
0076473c  0c 00 a0 e1                                      mov r0, ip
00764740  9e 01 01 e0                                      mul r1, lr, r1
00764744  18 b9 ff eb                                      bl #0x752bac
00764748  00 00 84 e5                                      str r0, [r4]
0076474c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00765754, declared_size=260, range_size=260, mode=arm
; class-group: gameswf::array<gameswf::import_info>
; alias: _ZN7gameswf5arrayINS_11import_infoEE6resizeEi.clone.2
; demangled: gameswf::array<gameswf::import_info>::resize(int) [clone .clone.2]
; decoder-mode: arm
00765754  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00765758  04 40 90 e5                                      ldr r4, [r0, #4]
0076575c  00 80 a0 e1                                      mov r8, r0
00765760  00 00 54 e3                                      cmp r4, #0
00765764  1c 00 00 da                                      ble #0x7657dc
00765768  00 60 a0 e3                                      mov r6, #0
0076576c  06 70 a0 e1                                      mov r7, r6
00765770  04 00 00 ea                                      b #0x765788
00765774  d0 30 d5 e1                                      ldrsb r3, [r5]
00765778  01 00 73 e3                                      cmn r3, #1
0076577c  0e 00 00 0a                                      beq #0x7657bc
00765780  04 00 57 e1                                      cmp r7, r4
00765784  11 00 00 0a                                      beq #0x7657d0
00765788  00 50 98 e5                                      ldr r5, [r8]
0076578c  01 70 87 e2                                      add r7, r7, #1
00765790  06 50 85 e0                                      add r5, r5, r6
00765794  d8 31 d5 e1                                      ldrsb r3, [r5, #0x18]
00765798  2c 60 86 e2                                      add r6, r6, #0x2c
0076579c  01 00 73 e3                                      cmn r3, #1
007657a0  f3 ff ff 1a                                      bne #0x765774
007657a4  24 00 95 e5                                      ldr r0, [r5, #0x24]
007657a8  20 10 95 e5                                      ldr r1, [r5, #0x20]
007657ac  e1 b4 ff eb                                      bl #0x752b38
007657b0  d0 30 d5 e1                                      ldrsb r3, [r5]
007657b4  01 00 73 e3                                      cmn r3, #1
007657b8  f0 ff ff 1a                                      bne #0x765780
007657bc  08 10 95 e5                                      ldr r1, [r5, #8]
007657c0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
007657c4  db b4 ff eb                                      bl #0x752b38
007657c8  04 00 57 e1                                      cmp r7, r4
007657cc  ed ff ff 1a                                      bne #0x765788
007657d0  00 30 a0 e3                                      mov r3, #0
007657d4  04 30 88 e5                                      str r3, [r8, #4]
007657d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007657dc  fb ff ff aa                                      bge #0x7657d0
007657e0  2c 20 a0 e3                                      mov r2, #0x2c
007657e4  92 04 02 e0                                      mul r2, r2, r4
007657e8  01 a0 a0 e3                                      mov sl, #1
007657ec  00 70 a0 e3                                      mov r7, #0
007657f0  00 c0 e0 e3                                      mvn ip, #0
007657f4  00 30 98 e5                                      ldr r3, [r8]
007657f8  01 40 94 e2                                      adds r4, r4, #1
007657fc  02 a0 c3 e7                                      strb sl, [r3, r2]
00765800  02 30 83 e0                                      add r3, r3, r2
00765804  10 00 93 e5                                      ldr r0, [r3, #0x10]
00765808  28 10 93 e5                                      ldr r1, [r3, #0x28]
0076580c  01 70 c3 e5                                      strb r7, [r3, #1]
00765810  1c 00 d7 e7                                      bfi r0, ip, #0, #0x18
00765814  1c 10 d7 e7                                      bfi r1, ip, #0, #0x18
00765818  20 6c a0 e1                                      lsr r6, r0, #0x18
0076581c  21 5c a0 e1                                      lsr r5, r1, #0x18
00765820  1f 60 c0 e7                                      bfc r6, #0, #1
00765824  1f 50 c0 e7                                      bfc r5, #0, #1
00765828  10 00 83 e5                                      str r0, [r3, #0x10]
0076582c  28 10 83 e5                                      str r1, [r3, #0x28]
00765830  13 60 c3 e5                                      strb r6, [r3, #0x13]
00765834  2b 50 c3 e5                                      strb r5, [r3, #0x2b]
00765838  14 c0 83 e5                                      str ip, [r3, #0x14]
0076583c  18 a0 c3 e5                                      strb sl, [r3, #0x18]
00765840  19 70 c3 e5                                      strb r7, [r3, #0x19]
00765844  2c 20 82 e2                                      add r2, r2, #0x2c
00765848  e9 ff ff 1a                                      bne #0x7657f4
0076584c  00 30 a0 e3                                      mov r3, #0
00765850  04 30 88 e5                                      str r3, [r8, #4]
00765854  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
