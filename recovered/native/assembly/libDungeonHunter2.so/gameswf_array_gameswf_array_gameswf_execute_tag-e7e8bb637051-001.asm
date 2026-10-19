; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00764554, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::array<gameswf::execute_tag*> >
; alias: _ZN7gameswf5arrayINS0_IPNS_11execute_tagEEEE7reserveEi
; demangled: gameswf::array<gameswf::array<gameswf::execute_tag*> >::reserve(int)
; decoder-mode: arm
00764554  10 40 2d e9                                      push {r4, lr}
00764558  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0076455c  00 40 a0 e1                                      mov r4, r0
00764560  00 00 53 e3                                      cmp r3, #0
00764564  0f 00 00 1a                                      bne #0x7645a8
00764568  00 00 51 e3                                      cmp r1, #0
0076456c  08 20 90 e5                                      ldr r2, [r0, #8]
00764570  08 10 80 e5                                      str r1, [r0, #8]
00764574  0c 00 00 1a                                      bne #0x7645ac
00764578  00 00 90 e5                                      ldr r0, [r0]
0076457c  00 00 50 e3                                      cmp r0, #0
00764580  01 00 00 0a                                      beq #0x76458c
00764584  02 12 a0 e1                                      lsl r1, r2, #4
00764588  6a b9 ff eb                                      bl #0x752b38
0076458c  00 30 a0 e3                                      mov r3, #0
00764590  00 30 84 e5                                      str r3, [r4]
00764594  10 80 bd e8                                      pop {r4, pc}
00764598  01 02 a0 e1                                      lsl r0, r1, #4
0076459c  0c 10 a0 e1                                      mov r1, ip
007645a0  7d b9 ff eb                                      bl #0x752b9c
007645a4  00 00 84 e5                                      str r0, [r4]
007645a8  10 80 bd e8                                      pop {r4, pc}
007645ac  00 c0 90 e5                                      ldr ip, [r0]
007645b0  00 00 5c e3                                      cmp ip, #0
007645b4  f7 ff ff 0a                                      beq #0x764598
007645b8  0c 00 a0 e1                                      mov r0, ip
007645bc  01 12 a0 e1                                      lsl r1, r1, #4
007645c0  02 22 a0 e1                                      lsl r2, r2, #4
007645c4  78 b9 ff eb                                      bl #0x752bac
007645c8  00 00 84 e5                                      str r0, [r4]
007645cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007645d0, declared_size=248, range_size=248, mode=arm
; class-group: gameswf::array<gameswf::array<gameswf::execute_tag*> >
; alias: _ZN7gameswf5arrayINS0_IPNS_11execute_tagEEEE6resizeEi
; demangled: gameswf::array<gameswf::array<gameswf::execute_tag*> >::resize(int)
; decoder-mode: arm
007645d0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007645d4  04 a0 90 e5                                      ldr sl, [r0, #4]
007645d8  00 70 a0 e1                                      mov r7, r0
007645dc  01 80 a0 e1                                      mov r8, r1
007645e0  01 00 5a e1                                      cmp sl, r1
007645e4  1d 00 00 da                                      ble #0x764660
007645e8  01 62 a0 e1                                      lsl r6, r1, #4
007645ec  01 50 a0 e1                                      mov r5, r1
007645f0  00 40 a0 e3                                      mov r4, #0
007645f4  06 00 00 ea                                      b #0x764614
007645f8  04 40 80 e5                                      str r4, [r0, #4]
007645fc  01 50 85 e2                                      add r5, r5, #1
00764600  04 10 a0 e1                                      mov r1, r4
00764604  8c ff ff eb                                      bl #0x76443c
00764608  0a 00 55 e1                                      cmp r5, sl
0076460c  10 60 86 e2                                      add r6, r6, #0x10
00764610  12 00 00 0a                                      beq #0x764660
00764614  00 00 97 e5                                      ldr r0, [r7]
00764618  06 00 80 e0                                      add r0, r0, r6
0076461c  04 30 90 e5                                      ldr r3, [r0, #4]
00764620  00 00 53 e3                                      cmp r3, #0
00764624  f3 ff ff ca                                      bgt #0x7645f8
00764628  f2 ff ff aa                                      bge #0x7645f8
0076462c  03 21 a0 e1                                      lsl r2, r3, #2
00764630  00 10 90 e5                                      ldr r1, [r0]
00764634  01 30 93 e2                                      adds r3, r3, #1
00764638  02 40 81 e7                                      str r4, [r1, r2]
0076463c  04 20 82 e2                                      add r2, r2, #4
00764640  fa ff ff 1a                                      bne #0x764630
00764644  04 40 80 e5                                      str r4, [r0, #4]
00764648  01 50 85 e2                                      add r5, r5, #1
0076464c  04 10 a0 e1                                      mov r1, r4
00764650  79 ff ff eb                                      bl #0x76443c
00764654  0a 00 55 e1                                      cmp r5, sl
00764658  10 60 86 e2                                      add r6, r6, #0x10
0076465c  ec ff ff 1a                                      bne #0x764614
00764660  00 00 58 e3                                      cmp r8, #0
00764664  02 00 00 0a                                      beq #0x764674
00764668  08 30 97 e5                                      ldr r3, [r7, #8]
0076466c  03 00 58 e1                                      cmp r8, r3
00764670  10 00 00 ca                                      bgt #0x7646b8
00764674  08 00 5a e1                                      cmp sl, r8
00764678  0c 00 00 aa                                      bge #0x7646b0
0076467c  0a 10 a0 e1                                      mov r1, sl
00764680  00 30 a0 e3                                      mov r3, #0
00764684  0a a2 a0 e1                                      lsl sl, sl, #4
00764688  00 00 97 e5                                      ldr r0, [r7]
0076468c  01 10 81 e2                                      add r1, r1, #1
00764690  08 00 51 e1                                      cmp r1, r8
00764694  0a 20 80 e0                                      add r2, r0, sl
00764698  0a 30 80 e7                                      str r3, [r0, sl]
0076469c  0c 30 c2 e5                                      strb r3, [r2, #0xc]
007646a0  04 30 82 e5                                      str r3, [r2, #4]
007646a4  08 30 82 e5                                      str r3, [r2, #8]
007646a8  10 a0 8a e2                                      add sl, sl, #0x10
007646ac  f5 ff ff 1a                                      bne #0x764688
007646b0  04 80 87 e5                                      str r8, [r7, #4]
007646b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007646b8  07 00 a0 e1                                      mov r0, r7
007646bc  c8 10 88 e0                                      add r1, r8, r8, asr #1
007646c0  a3 ff ff eb                                      bl #0x764554
007646c4  ea ff ff ea                                      b #0x764674
