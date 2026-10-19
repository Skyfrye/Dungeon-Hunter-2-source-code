; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00398b5c, declared_size=124, range_size=124, mode=arm
; class-group: Trigger::NetStructTrigger
; alias: _ZN7Trigger16NetStructTriggerD1Ev
; demangled: Trigger::NetStructTrigger::~NetStructTrigger()
; decoder-mode: arm
00398b5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00398b60  64 30 9f e5                                      ldr r3, [pc, #0x64]
00398b64  64 20 9f e5                                      ldr r2, [pc, #0x64]
00398b68  64 10 9f e5                                      ldr r1, [pc, #0x64]
00398b6c  03 30 8f e0                                      add r3, pc, r3
00398b70  00 40 a0 e1                                      mov r4, r0
00398b74  01 10 93 e7                                      ldr r1, [r3, r1]
00398b78  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
00398b7c  02 20 93 e7                                      ldr r2, [r3, r2]
00398b80  08 10 81 e2                                      add r1, r1, #8
00398b84  00 00 50 e3                                      cmp r0, #0
00398b88  08 20 82 e2                                      add r2, r2, #8
00398b8c  30 21 84 e5                                      str r2, [r4, #0x130]
00398b90  00 10 84 e5                                      str r1, [r4]
00398b94  80 21 84 e5                                      str r2, [r4, #0x180]
00398b98  58 21 84 e5                                      str r2, [r4, #0x158]
00398b9c  08 00 00 0a                                      beq #0x398bc4
00398ba0  43 5f 84 e2                                      add r5, r4, #0x10c
00398ba4  05 00 a0 e1                                      mov r0, r5
00398ba8  10 11 94 e5                                      ldr r1, [r4, #0x110]
00398bac  07 61 ff eb                                      bl #0x370fd0
00398bb0  00 30 a0 e3                                      mov r3, #0
00398bb4  18 51 84 e5                                      str r5, [r4, #0x118]
00398bb8  1c 31 84 e5                                      str r3, [r4, #0x11c]
00398bbc  14 51 84 e5                                      str r5, [r4, #0x114]
00398bc0  10 31 84 e5                                      str r3, [r4, #0x110]
00398bc4  04 00 a0 e1                                      mov r0, r4
00398bc8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00398bcc  24 bf 5f 00 a8 10 00 00 c4 43 00 00              .byte 0x24, 0xbf, 0x5f, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x00398da4, declared_size=416, range_size=416, mode=arm
; class-group: Trigger::NetStructTrigger
; alias: _ZN7Trigger16NetStructTriggerC1Ev
; demangled: Trigger::NetStructTrigger::NetStructTrigger()
; decoder-mode: arm
00398da4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00398da8  84 71 9f e5                                      ldr r7, [pc, #0x184]
00398dac  00 40 a0 e1                                      mov r4, r0
00398db0  cf ea 11 eb                                      bl #0x8138f4
00398db4  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
00398db8  7c 51 9f e5                                      ldr r5, [pc, #0x17c]
00398dbc  07 70 8f e0                                      add r7, pc, r7
00398dc0  03 30 97 e7                                      ldr r3, [r7, r3]
00398dc4  50 21 94 e5                                      ldr r2, [r4, #0x150]
00398dc8  05 00 97 e7                                      ldr r0, [r7, r5]
00398dcc  08 30 83 e2                                      add r3, r3, #8
00398dd0  00 90 a0 e3                                      mov sb, #0
00398dd4  00 80 a0 e3                                      mov r8, #0
00398dd8  4e cf a0 e3                                      mov ip, #0x138
00398ddc  fc 80 84 e1                                      strd r8, sb, [r4, ip]
00398de0  00 00 52 e3                                      cmp r2, #0
00398de4  00 10 e0 e3                                      mvn r1, #0
00398de8  00 20 a0 e3                                      mov r2, #0
00398dec  08 00 80 e2                                      add r0, r0, #8
00398df0  00 30 84 e5                                      str r3, [r4]
00398df4  20 30 a0 e3                                      mov r3, #0x20
00398df8  34 31 84 e5                                      str r3, [r4, #0x134]
00398dfc  44 11 84 e5                                      str r1, [r4, #0x144]
00398e00  30 01 84 e5                                      str r0, [r4, #0x130]
00398e04  40 11 84 e5                                      str r1, [r4, #0x140]
00398e08  48 21 84 e5                                      str r2, [r4, #0x148]
00398e0c  4c 21 c4 e5                                      strb r2, [r4, #0x14c]
00398e10  13 9e 84 02                                      addeq sb, r4, #0x130
00398e14  03 00 00 0a                                      beq #0x398e28
00398e18  13 9e 84 e2                                      add sb, r4, #0x130
00398e1c  50 21 84 e5                                      str r2, [r4, #0x150]
00398e20  09 00 a0 e1                                      mov r0, sb
00398e24  56 f0 11 eb                                      bl #0x814f84
00398e28  10 81 9f e5                                      ldr r8, [pc, #0x110]
00398e2c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00398e30  05 10 97 e7                                      ldr r1, [r7, r5]
00398e34  08 00 97 e7                                      ldr r0, [r7, r8]
00398e38  16 ce a0 e3                                      mov ip, #0x160
00398e3c  00 a0 a0 e3                                      mov sl, #0
00398e40  08 00 80 e2                                      add r0, r0, #8
00398e44  00 b0 a0 e3                                      mov fp, #0
00398e48  fc a0 84 e1                                      strd sl, fp, [r4, ip]
00398e4c  00 00 53 e3                                      cmp r3, #0
00398e50  00 20 e0 e3                                      mvn r2, #0
00398e54  00 30 a0 e3                                      mov r3, #0
00398e58  08 10 81 e2                                      add r1, r1, #8
00398e5c  30 01 84 e5                                      str r0, [r4, #0x130]
00398e60  20 00 a0 e3                                      mov r0, #0x20
00398e64  5c 01 84 e5                                      str r0, [r4, #0x15c]
00398e68  6c 21 84 e5                                      str r2, [r4, #0x16c]
00398e6c  58 11 84 e5                                      str r1, [r4, #0x158]
00398e70  68 21 84 e5                                      str r2, [r4, #0x168]
00398e74  70 31 84 e5                                      str r3, [r4, #0x170]
00398e78  74 31 c4 e5                                      strb r3, [r4, #0x174]
00398e7c  56 6f 84 02                                      addeq r6, r4, #0x158
00398e80  03 00 00 0a                                      beq #0x398e94
00398e84  56 6f 84 e2                                      add r6, r4, #0x158
00398e88  78 31 84 e5                                      str r3, [r4, #0x178]
00398e8c  06 00 a0 e1                                      mov r0, r6
00398e90  3b f0 11 eb                                      bl #0x814f84
00398e94  08 00 97 e7                                      ldr r0, [r7, r8]
00398e98  a0 31 94 e5                                      ldr r3, [r4, #0x1a0]
00398e9c  05 10 97 e7                                      ldr r1, [r7, r5]
00398ea0  08 00 80 e2                                      add r0, r0, #8
00398ea4  62 cf a0 e3                                      mov ip, #0x188
00398ea8  00 a0 a0 e3                                      mov sl, #0
00398eac  00 b0 a0 e3                                      mov fp, #0
00398eb0  fc a0 84 e1                                      strd sl, fp, [r4, ip]
00398eb4  00 00 53 e3                                      cmp r3, #0
00398eb8  00 20 e0 e3                                      mvn r2, #0
00398ebc  00 30 a0 e3                                      mov r3, #0
00398ec0  08 10 81 e2                                      add r1, r1, #8
00398ec4  58 01 84 e5                                      str r0, [r4, #0x158]
00398ec8  20 00 a0 e3                                      mov r0, #0x20
00398ecc  84 01 84 e5                                      str r0, [r4, #0x184]
00398ed0  94 21 84 e5                                      str r2, [r4, #0x194]
00398ed4  80 11 84 e5                                      str r1, [r4, #0x180]
00398ed8  90 21 84 e5                                      str r2, [r4, #0x190]
00398edc  98 31 84 e5                                      str r3, [r4, #0x198]
00398ee0  9c 31 c4 e5                                      strb r3, [r4, #0x19c]
00398ee4  06 5d 84 02                                      addeq r5, r4, #0x180
00398ee8  03 00 00 0a                                      beq #0x398efc
00398eec  06 5d 84 e2                                      add r5, r4, #0x180
00398ef0  a0 31 84 e5                                      str r3, [r4, #0x1a0]
00398ef4  05 00 a0 e1                                      mov r0, r5
00398ef8  21 f0 11 eb                                      bl #0x814f84
00398efc  08 30 97 e7                                      ldr r3, [r7, r8]
00398f00  09 10 a0 e1                                      mov r1, sb
00398f04  04 00 a0 e1                                      mov r0, r4
00398f08  08 30 83 e2                                      add r3, r3, #8
00398f0c  80 31 84 e5                                      str r3, [r4, #0x180]
00398f10  cd e8 11 eb                                      bl #0x81324c
00398f14  04 00 a0 e1                                      mov r0, r4
00398f18  06 10 a0 e1                                      mov r1, r6
00398f1c  ca e8 11 eb                                      bl #0x81324c
00398f20  04 00 a0 e1                                      mov r0, r4
00398f24  05 10 a0 e1                                      mov r1, r5
00398f28  c7 e8 11 eb                                      bl #0x81324c
00398f2c  04 00 a0 e1                                      mov r0, r4
00398f30  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00398f34  d4 bc 5f 00 14 0d 00 00 84 29 00 00 c8 10 00 00  .byte 0xd4, 0xbc, 0x5f, 0x00, 0x14, 0x0d, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00

; FUNCTION 0x00399064, declared_size=132, range_size=132, mode=arm
; class-group: Trigger::NetStructTrigger
; alias: _ZN7Trigger16NetStructTriggerD0Ev
; demangled: Trigger::NetStructTrigger::~NetStructTrigger()
; decoder-mode: arm
00399064  70 40 2d e9                                      push {r4, r5, r6, lr}
00399068  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0039906c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00399070  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00399074  03 30 8f e0                                      add r3, pc, r3
00399078  00 40 a0 e1                                      mov r4, r0
0039907c  01 10 93 e7                                      ldr r1, [r3, r1]
00399080  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
00399084  02 20 93 e7                                      ldr r2, [r3, r2]
00399088  08 10 81 e2                                      add r1, r1, #8
0039908c  00 00 50 e3                                      cmp r0, #0
00399090  08 20 82 e2                                      add r2, r2, #8
00399094  30 21 84 e5                                      str r2, [r4, #0x130]
00399098  00 10 84 e5                                      str r1, [r4]
0039909c  80 21 84 e5                                      str r2, [r4, #0x180]
003990a0  58 21 84 e5                                      str r2, [r4, #0x158]
003990a4  08 00 00 0a                                      beq #0x3990cc
003990a8  43 5f 84 e2                                      add r5, r4, #0x10c
003990ac  05 00 a0 e1                                      mov r0, r5
003990b0  10 11 94 e5                                      ldr r1, [r4, #0x110]
003990b4  c5 5f ff eb                                      bl #0x370fd0
003990b8  00 30 a0 e3                                      mov r3, #0
003990bc  18 51 84 e5                                      str r5, [r4, #0x118]
003990c0  1c 31 84 e5                                      str r3, [r4, #0x11c]
003990c4  14 51 84 e5                                      str r5, [r4, #0x114]
003990c8  10 31 84 e5                                      str r3, [r4, #0x110]
003990cc  04 00 a0 e1                                      mov r0, r4
003990d0  da dc fd eb                                      bl #0x310440
003990d4  04 00 a0 e1                                      mov r0, r4
003990d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003990dc  1c ba 5f 00 a8 10 00 00 c4 43 00 00              .byte 0x1c, 0xba, 0x5f, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00
