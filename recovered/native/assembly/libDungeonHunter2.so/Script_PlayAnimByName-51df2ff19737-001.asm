; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004556a4, declared_size=8, range_size=8, mode=arm
; class-group: Script_PlayAnimByName
; alias: _ZNK21Script_PlayAnimByName10IsBlockingEv
; demangled: Script_PlayAnimByName::IsBlocking() const
; decoder-mode: arm
004556a4  00 00 a0 e3                                      mov r0, #0
004556a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045e124, declared_size=296, range_size=296, mode=arm
; class-group: Script_PlayAnimByName
; alias: _ZN21Script_PlayAnimByName7ExecuteEbi
; demangled: Script_PlayAnimByName::Execute(bool, int)
; decoder-mode: arm
0045e124  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045e128  08 41 9f e5                                      ldr r4, [pc, #0x108]
0045e12c  08 51 9f e5                                      ldr r5, [pc, #0x108]
0045e130  3c d0 4d e2                                      sub sp, sp, #0x3c
0045e134  04 40 8f e0                                      add r4, pc, r4
0045e138  05 30 94 e7                                      ldr r3, [r4, r5]
0045e13c  00 60 51 e2                                      subs r6, r1, #0
0045e140  02 a0 a0 e1                                      mov sl, r2
0045e144  00 30 93 e5                                      ldr r3, [r3]
0045e148  34 30 8d e5                                      str r3, [sp, #0x34]
0045e14c  06 00 00 0a                                      beq #0x45e16c
0045e150  05 30 94 e7                                      ldr r3, [r4, r5]
0045e154  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045e158  00 30 93 e5                                      ldr r3, [r3]
0045e15c  03 00 52 e1                                      cmp r2, r3
0045e160  33 00 00 1a                                      bne #0x45e234
0045e164  3c d0 8d e2                                      add sp, sp, #0x3c
0045e168  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045e16c  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0045e170  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0045e174  1c 80 8d e2                                      add r8, sp, #0x1c
0045e178  03 b0 94 e7                                      ldr fp, [r4, r3]
0045e17c  0c 90 8d e2                                      add sb, sp, #0xc
0045e180  0b 00 a0 e1                                      mov r0, fp
0045e184  bf 65 fb eb                                      bl #0x337888
0045e188  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
0045e18c  18 20 8d e2                                      add r2, sp, #0x18
0045e190  08 00 a0 e1                                      mov r0, r8
0045e194  01 10 8f e0                                      add r1, pc, r1
0045e198  d3 d7 fa eb                                      bl #0x3140ec
0045e19c  08 10 a0 e1                                      mov r1, r8
0045e1a0  0b 00 a0 e1                                      mov r0, fp
0045e1a4  37 66 fb eb                                      bl #0x337a88
0045e1a8  08 00 a0 e1                                      mov r0, r8
0045e1ac  28 e8 fa eb                                      bl #0x318254
0045e1b0  90 10 9f e5                                      ldr r1, [pc, #0x90]
0045e1b4  18 20 97 e5                                      ldr r2, [r7, #0x18]
0045e1b8  0a 30 a0 e1                                      mov r3, sl
0045e1bc  01 10 94 e7                                      ldr r1, [r4, r1]
0045e1c0  09 00 a0 e1                                      mov r0, sb
0045e1c4  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045e1c8  00 60 8d e5                                      str r6, [sp]
0045e1cc  04 60 8d e5                                      str r6, [sp, #4]
0045e1d0  b2 b2 fb eb                                      bl #0x34aca0
0045e1d4  09 00 a0 e1                                      mov r0, sb
0045e1d8  06 10 a0 e1                                      mov r1, r6
0045e1dc  f7 86 fb eb                                      bl #0x33fdc0
0045e1e0  00 00 50 e3                                      cmp r0, #0
0045e1e4  d9 ff ff 0a                                      beq #0x45e150
0045e1e8  09 00 a0 e1                                      mov r0, sb
0045e1ec  3c 87 fb eb                                      bl #0x33fee4
0045e1f0  00 00 50 e3                                      cmp r0, #0
0045e1f4  d5 ff ff 0a                                      beq #0x45e150
0045e1f8  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
0045e1fc  00 00 53 e3                                      cmp r3, #0
0045e200  d2 ff ff 0a                                      beq #0x45e150
0045e204  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0045e208  00 00 5c e3                                      cmp ip, #0
0045e20c  cf ff ff 0a                                      beq #0x45e150
0045e210  10 20 d7 e5                                      ldrb r2, [r7, #0x10]
0045e214  0c 10 97 e5                                      ldr r1, [r7, #0xc]
0045e218  0c 00 a0 e1                                      mov r0, ip
0045e21c  06 30 a0 e1                                      mov r3, r6
0045e220  00 c0 9c e5                                      ldr ip, [ip]
0045e224  00 60 8d e5                                      str r6, [sp]
0045e228  0f e0 a0 e1                                      mov lr, pc
0045e22c  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0045e230  c6 ff ff ea                                      b #0x45e150
0045e234  35 c0 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045e238  5c 69 53 00 ac 40 00 00 84 08 00 00 ec ee 46 00  .byte 0x5c, 0x69, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xec, 0xee, 0x46, 0x00
0045e248  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
