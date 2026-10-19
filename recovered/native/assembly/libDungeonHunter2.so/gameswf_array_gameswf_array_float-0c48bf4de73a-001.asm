; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00785860, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::array<float> >
; alias: _ZN7gameswf5arrayINS0_IfEEE7reserveEi
; demangled: gameswf::array<gameswf::array<float> >::reserve(int)
; decoder-mode: arm
00785860  10 40 2d e9                                      push {r4, lr}
00785864  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00785868  00 40 a0 e1                                      mov r4, r0
0078586c  00 00 53 e3                                      cmp r3, #0
00785870  0f 00 00 1a                                      bne #0x7858b4
00785874  00 00 51 e3                                      cmp r1, #0
00785878  08 20 90 e5                                      ldr r2, [r0, #8]
0078587c  08 10 80 e5                                      str r1, [r0, #8]
00785880  0c 00 00 1a                                      bne #0x7858b8
00785884  00 00 90 e5                                      ldr r0, [r0]
00785888  00 00 50 e3                                      cmp r0, #0
0078588c  01 00 00 0a                                      beq #0x785898
00785890  02 12 a0 e1                                      lsl r1, r2, #4
00785894  a7 34 ff eb                                      bl #0x752b38
00785898  00 30 a0 e3                                      mov r3, #0
0078589c  00 30 84 e5                                      str r3, [r4]
007858a0  10 80 bd e8                                      pop {r4, pc}
007858a4  01 02 a0 e1                                      lsl r0, r1, #4
007858a8  0c 10 a0 e1                                      mov r1, ip
007858ac  ba 34 ff eb                                      bl #0x752b9c
007858b0  00 00 84 e5                                      str r0, [r4]
007858b4  10 80 bd e8                                      pop {r4, pc}
007858b8  00 c0 90 e5                                      ldr ip, [r0]
007858bc  00 00 5c e3                                      cmp ip, #0
007858c0  f7 ff ff 0a                                      beq #0x7858a4
007858c4  0c 00 a0 e1                                      mov r0, ip
007858c8  01 12 a0 e1                                      lsl r1, r1, #4
007858cc  02 22 a0 e1                                      lsl r2, r2, #4
007858d0  b5 34 ff eb                                      bl #0x752bac
007858d4  00 00 84 e5                                      str r0, [r4]
007858d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00785c9c, declared_size=252, range_size=252, mode=arm
; class-group: gameswf::array<gameswf::array<float> >
; alias: _ZN7gameswf5arrayINS0_IfEEE6resizeEi
; demangled: gameswf::array<gameswf::array<float> >::resize(int)
; decoder-mode: arm
00785c9c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00785ca0  04 90 90 e5                                      ldr sb, [r0, #4]
00785ca4  00 70 a0 e1                                      mov r7, r0
00785ca8  01 a0 a0 e1                                      mov sl, r1
00785cac  01 00 59 e1                                      cmp sb, r1
00785cb0  1e 00 00 da                                      ble #0x785d30
00785cb4  00 40 a0 e3                                      mov r4, #0
00785cb8  01 62 a0 e1                                      lsl r6, r1, #4
00785cbc  01 50 a0 e1                                      mov r5, r1
00785cc0  00 80 a0 e3                                      mov r8, #0
00785cc4  06 00 00 ea                                      b #0x785ce4
00785cc8  04 80 80 e5                                      str r8, [r0, #4]
00785ccc  01 50 85 e2                                      add r5, r5, #1
00785cd0  08 10 a0 e1                                      mov r1, r8
00785cd4  45 d0 ff eb                                      bl #0x779df0
00785cd8  09 00 55 e1                                      cmp r5, sb
00785cdc  10 60 86 e2                                      add r6, r6, #0x10
00785ce0  12 00 00 0a                                      beq #0x785d30
00785ce4  00 00 97 e5                                      ldr r0, [r7]
00785ce8  06 00 80 e0                                      add r0, r0, r6
00785cec  04 30 90 e5                                      ldr r3, [r0, #4]
00785cf0  00 00 53 e3                                      cmp r3, #0
00785cf4  f3 ff ff ca                                      bgt #0x785cc8
00785cf8  f2 ff ff aa                                      bge #0x785cc8
00785cfc  03 21 a0 e1                                      lsl r2, r3, #2
00785d00  00 10 90 e5                                      ldr r1, [r0]
00785d04  01 30 93 e2                                      adds r3, r3, #1
00785d08  02 40 81 e7                                      str r4, [r1, r2]
00785d0c  04 20 82 e2                                      add r2, r2, #4
00785d10  fa ff ff 1a                                      bne #0x785d00
00785d14  04 80 80 e5                                      str r8, [r0, #4]
00785d18  01 50 85 e2                                      add r5, r5, #1
00785d1c  08 10 a0 e1                                      mov r1, r8
00785d20  32 d0 ff eb                                      bl #0x779df0
00785d24  09 00 55 e1                                      cmp r5, sb
00785d28  10 60 86 e2                                      add r6, r6, #0x10
00785d2c  ec ff ff 1a                                      bne #0x785ce4
00785d30  00 00 5a e3                                      cmp sl, #0
00785d34  02 00 00 0a                                      beq #0x785d44
00785d38  08 30 97 e5                                      ldr r3, [r7, #8]
00785d3c  03 00 5a e1                                      cmp sl, r3
00785d40  10 00 00 ca                                      bgt #0x785d88
00785d44  0a 00 59 e1                                      cmp sb, sl
00785d48  0c 00 00 aa                                      bge #0x785d80
00785d4c  09 10 a0 e1                                      mov r1, sb
00785d50  00 30 a0 e3                                      mov r3, #0
00785d54  09 92 a0 e1                                      lsl sb, sb, #4
00785d58  00 00 97 e5                                      ldr r0, [r7]
00785d5c  01 10 81 e2                                      add r1, r1, #1
00785d60  0a 00 51 e1                                      cmp r1, sl
00785d64  09 20 80 e0                                      add r2, r0, sb
00785d68  09 30 80 e7                                      str r3, [r0, sb]
00785d6c  0c 30 c2 e5                                      strb r3, [r2, #0xc]
00785d70  04 30 82 e5                                      str r3, [r2, #4]
00785d74  08 30 82 e5                                      str r3, [r2, #8]
00785d78  10 90 89 e2                                      add sb, sb, #0x10
00785d7c  f5 ff ff 1a                                      bne #0x785d58
00785d80  04 a0 87 e5                                      str sl, [r7, #4]
00785d84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00785d88  07 00 a0 e1                                      mov r0, r7
00785d8c  ca 10 8a e0                                      add r1, sl, sl, asr #1
00785d90  b2 fe ff eb                                      bl #0x785860
00785d94  ea ff ff ea                                      b #0x785d44
