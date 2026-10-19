; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0008, declared_size=4, range_size=4, mode=arm
; class-group: CSMove
; alias: _ZN6CSMoveD1Ev
; demangled: CSMove::~CSMove()
; decoder-mode: arm
003c0008  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c000c, declared_size=4, range_size=4, mode=arm
; class-group: CSMove
; alias: _ZN6CSMove7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSMove::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c000c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c09c4, declared_size=52, range_size=52, mode=arm
; class-group: CSMove
; alias: _ZN6CSMoveD0Ev
; demangled: CSMove::~CSMove()
; decoder-mode: arm
003c09c4  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c09c8  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c09cc  10 40 2d e9                                      push {r4, lr}
003c09d0  03 30 8f e0                                      add r3, pc, r3
003c09d4  02 20 93 e7                                      ldr r2, [r3, r2]
003c09d8  00 40 a0 e1                                      mov r4, r0
003c09dc  08 20 82 e2                                      add r2, r2, #8
003c09e0  00 20 80 e5                                      str r2, [r0]
003c09e4  95 3e fd eb                                      bl #0x310440
003c09e8  04 00 a0 e1                                      mov r0, r4
003c09ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c09f0  c0 40 5d 00 08 2a 00 00                          .byte 0xc0, 0x40, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c0f18, declared_size=620, range_size=620, mode=arm
; class-group: CSMove
; alias: _ZN6CSMove10UpdateTypeEP9CharacterP16CharStateMachine
; demangled: CSMove::UpdateType(Character*, CharStateMachine*)
; decoder-mode: arm
003c0f18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c0f1c  01 00 a0 e1                                      mov r0, r1
003c0f20  00 30 91 e5                                      ldr r3, [r1]
003c0f24  01 40 a0 e1                                      mov r4, r1
003c0f28  0f e0 a0 e1                                      mov lr, pc
003c0f2c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c0f30  24 62 9f e5                                      ldr r6, [pc, #0x224]
003c0f34  00 00 50 e3                                      cmp r0, #0
003c0f38  06 60 8f e0                                      add r6, pc, r6
003c0f3c  4c 00 00 0a                                      beq #0x3c1074
003c0f40  b8 01 94 e5                                      ldr r0, [r4, #0x1b8]
003c0f44  bc 81 94 e5                                      ldr r8, [r4, #0x1bc]
003c0f48  c0 71 94 e5                                      ldr r7, [r4, #0x1c0]
003c0f4c  00 10 a0 e1                                      mov r1, r0
003c0f50  85 37 fd eb                                      bl #0x30ed6c
003c0f54  08 10 a0 e1                                      mov r1, r8
003c0f58  00 50 a0 e1                                      mov r5, r0
003c0f5c  08 00 a0 e1                                      mov r0, r8
003c0f60  81 37 fd eb                                      bl #0x30ed6c
003c0f64  00 10 a0 e1                                      mov r1, r0
003c0f68  05 00 a0 e1                                      mov r0, r5
003c0f6c  0c 37 fd eb                                      bl #0x30eba4
003c0f70  07 10 a0 e1                                      mov r1, r7
003c0f74  00 50 a0 e1                                      mov r5, r0
003c0f78  07 00 a0 e1                                      mov r0, r7
003c0f7c  7a 37 fd eb                                      bl #0x30ed6c
003c0f80  00 10 a0 e1                                      mov r1, r0
003c0f84  05 00 a0 e1                                      mov r0, r5
003c0f88  05 37 fd eb                                      bl #0x30eba4
003c0f8c  cc 31 9f e5                                      ldr r3, [pc, #0x1cc]
003c0f90  3c 55 94 e5                                      ldr r5, [r4, #0x53c]
003c0f94  00 70 a0 e1                                      mov r7, r0
003c0f98  03 30 96 e7                                      ldr r3, [r6, r3]
003c0f9c  02 00 55 e3                                      cmp r5, #2
003c0fa0  00 30 93 e5                                      ldr r3, [r3]
003c0fa4  5c 80 93 e5                                      ldr r8, [r3, #0x5c]
003c0fa8  60 00 93 e5                                      ldr r0, [r3, #0x60]
003c0fac  09 00 00 0a                                      beq #0x3c0fd8
003c0fb0  00 10 a0 e1                                      mov r1, r0
003c0fb4  6c 37 fd eb                                      bl #0x30ed6c
003c0fb8  07 10 a0 e1                                      mov r1, r7
003c0fbc  d2 35 fd eb                                      bl #0x30e70c
003c0fc0  00 00 50 e3                                      cmp r0, #0
003c0fc4  4a 00 00 1a                                      bne #0x3c10f4
003c0fc8  00 00 55 e3                                      cmp r5, #0
003c0fcc  08 00 00 0a                                      beq #0x3c0ff4
003c0fd0  01 00 55 e3                                      cmp r5, #1
003c0fd4  29 00 00 0a                                      beq #0x3c1080
003c0fd8  08 10 a0 e1                                      mov r1, r8
003c0fdc  08 00 a0 e1                                      mov r0, r8
003c0fe0  61 37 fd eb                                      bl #0x30ed6c
003c0fe4  07 10 a0 e1                                      mov r1, r7
003c0fe8  c2 34 fd eb                                      bl #0x30e2f8
003c0fec  00 00 50 e3                                      cmp r0, #0
003c0ff0  22 00 00 0a                                      beq #0x3c1080
003c0ff4  01 30 a0 e3                                      mov r3, #1
003c0ff8  3c 35 84 e5                                      str r3, [r4, #0x53c]
003c0ffc  56 0e 84 e2                                      add r0, r4, #0x560
003c1000  af 75 00 eb                                      bl #0x3de6c4
003c1004  58 31 9f e5                                      ldr r3, [pc, #0x158]
003c1008  2c 05 84 e5                                      str r0, [r4, #0x52c]
003c100c  04 00 a0 e1                                      mov r0, r4
003c1010  03 30 96 e7                                      ldr r3, [r6, r3]
003c1014  49 5e 84 e2                                      add r5, r4, #0x490
003c1018  0c 50 85 e2                                      add r5, r5, #0xc
003c101c  00 70 93 e5                                      ldr r7, [r3]
003c1020  80 88 ff eb                                      bl #0x3a3228
003c1024  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
003c1028  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
003c102c  03 20 96 e7                                      ldr r2, [r6, r3]
003c1030  a0 30 a0 e3                                      mov r3, #0xa0
003c1034  93 70 23 e0                                      mla r3, r3, r0, r7
003c1038  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c103c  2c 21 9f e5                                      ldr r2, [pc, #0x12c]
003c1040  01 10 8f e0                                      add r1, pc, r1
003c1044  94 60 93 e5                                      ldr r6, [r3, #0x94]
003c1048  02 20 8f e0                                      add r2, pc, r2
003c104c  e2 0e 04 eb                                      bl #0x4c4bdc
003c1050  10 00 10 e2                                      ands r0, r0, #0x10
003c1054  23 00 00 1a                                      bne #0x3c10e8
003c1058  06 10 80 e0                                      add r1, r0, r6
003c105c  05 00 a0 e1                                      mov r0, r5
003c1060  12 27 00 eb                                      bl #0x3cacb0
003c1064  2c 15 94 e5                                      ldr r1, [r4, #0x52c]
003c1068  05 00 a0 e1                                      mov r0, r5
003c106c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003c1070  e1 20 00 ea                                      b #0x3c93fc
003c1074  3c 35 94 e5                                      ldr r3, [r4, #0x53c]
003c1078  00 00 53 e3                                      cmp r3, #0
003c107c  00 00 00 0a                                      beq #0x3c1084
003c1080  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c1084  01 30 a0 e3                                      mov r3, #1
003c1088  3c 35 84 e5                                      str r3, [r4, #0x53c]
003c108c  56 0e 84 e2                                      add r0, r4, #0x560
003c1090  8b 75 00 eb                                      bl #0x3de6c4
003c1094  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003c1098  2c 05 84 e5                                      str r0, [r4, #0x52c]
003c109c  04 00 a0 e1                                      mov r0, r4
003c10a0  03 30 96 e7                                      ldr r3, [r6, r3]
003c10a4  49 5e 84 e2                                      add r5, r4, #0x490
003c10a8  0c 50 85 e2                                      add r5, r5, #0xc
003c10ac  00 70 93 e5                                      ldr r7, [r3]
003c10b0  5c 88 ff eb                                      bl #0x3a3228
003c10b4  ac 30 9f e5                                      ldr r3, [pc, #0xac]
003c10b8  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
003c10bc  03 20 96 e7                                      ldr r2, [r6, r3]
003c10c0  a0 30 a0 e3                                      mov r3, #0xa0
003c10c4  93 70 23 e0                                      mla r3, r3, r0, r7
003c10c8  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c10cc  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
003c10d0  01 10 8f e0                                      add r1, pc, r1
003c10d4  94 60 93 e5                                      ldr r6, [r3, #0x94]
003c10d8  02 20 8f e0                                      add r2, pc, r2
003c10dc  be 0e 04 eb                                      bl #0x4c4bdc
003c10e0  10 00 10 e2                                      ands r0, r0, #0x10
003c10e4  db ff ff 0a                                      beq #0x3c1058
003c10e8  04 00 a0 e1                                      mov r0, r4
003c10ec  bb 90 ff eb                                      bl #0x3a53e0
003c10f0  d8 ff ff ea                                      b #0x3c1058
003c10f4  02 30 a0 e3                                      mov r3, #2
003c10f8  3c 35 84 e5                                      str r3, [r4, #0x53c]
003c10fc  56 0e 84 e2                                      add r0, r4, #0x560
003c1100  6f 75 00 eb                                      bl #0x3de6c4
003c1104  58 30 9f e5                                      ldr r3, [pc, #0x58]
003c1108  2c 05 84 e5                                      str r0, [r4, #0x52c]
003c110c  04 00 a0 e1                                      mov r0, r4
003c1110  03 30 96 e7                                      ldr r3, [r6, r3]
003c1114  49 5e 84 e2                                      add r5, r4, #0x490
003c1118  0c 50 85 e2                                      add r5, r5, #0xc
003c111c  00 70 93 e5                                      ldr r7, [r3]
003c1120  40 88 ff eb                                      bl #0x3a3228
003c1124  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003c1128  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
003c112c  03 20 96 e7                                      ldr r2, [r6, r3]
003c1130  a0 30 a0 e3                                      mov r3, #0xa0
003c1134  93 70 23 e0                                      mla r3, r3, r0, r7
003c1138  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c113c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003c1140  01 10 8f e0                                      add r1, pc, r1
003c1144  70 60 93 e5                                      ldr r6, [r3, #0x70]
003c1148  02 20 8f e0                                      add r2, pc, r2
003c114c  a2 0e 04 eb                                      bl #0x4c4bdc
003c1150  20 00 10 e2                                      ands r0, r0, #0x20
003c1154  bf ff ff 0a                                      beq #0x3c1058
003c1158  e2 ff ff ea                                      b #0x3c10e8
; mapping-symbol data/literal pool
003c115c  58 3b 5d 00 c8 32 00 00 44 48 00 00 f4 37 00 00  .byte 0x58, 0x3b, 0x5d, 0x00, 0xc8, 0x32, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003c116c  78 3b 50 00 80 3b 50 00 e8 3a 50 00 f0 3a 50 00  .byte 0x78, 0x3b, 0x50, 0x00, 0x80, 0x3b, 0x50, 0x00, 0xe8, 0x3a, 0x50, 0x00, 0xf0, 0x3a, 0x50, 0x00
003c117c  78 3a 50 00 80 3a 50 00                          .byte 0x78, 0x3a, 0x50, 0x00, 0x80, 0x3a, 0x50, 0x00

; FUNCTION 0x003c1184, declared_size=260, range_size=260, mode=arm
; class-group: CSMove
; alias: _ZN6CSMove8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSMove::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c1184  30 40 2d e9                                      push {r4, r5, lr}
003c1188  b5 11 d2 e5                                      ldrb r1, [r2, #0x1b5]
003c118c  0c d0 4d e2                                      sub sp, sp, #0xc
003c1190  02 40 a0 e1                                      mov r4, r2
003c1194  00 00 51 e3                                      cmp r1, #0
003c1198  00 50 a0 e1                                      mov r5, r0
003c119c  05 00 00 1a                                      bne #0x3c11b8
003c11a0  04 00 a0 e1                                      mov r0, r4
003c11a4  3f 10 a0 e3                                      mov r1, #0x3f
003c11a8  00 20 a0 e3                                      mov r2, #0
003c11ac  0c d0 8d e2                                      add sp, sp, #0xc
003c11b0  30 40 bd e8                                      pop {r4, r5, lr}
003c11b4  e8 8e ff ea                                      b #0x3a4d5c
003c11b8  08 24 92 e5                                      ldr r2, [r2, #0x408]
003c11bc  00 00 52 e3                                      cmp r2, #0
003c11c0  17 00 00 0a                                      beq #0x3c1224
003c11c4  03 20 a0 e1                                      mov r2, r3
003c11c8  05 00 a0 e1                                      mov r0, r5
003c11cc  04 10 a0 e1                                      mov r1, r4
003c11d0  50 ff ff eb                                      bl #0x3c0f18
003c11d4  56 0e 84 e2                                      add r0, r4, #0x560
003c11d8  39 75 00 eb                                      bl #0x3de6c4
003c11dc  2c 15 94 e5                                      ldr r1, [r4, #0x52c]
003c11e0  00 50 a0 e1                                      mov r5, r0
003c11e4  70 34 fd eb                                      bl #0x30e3ac
003c11e8  17 17 0b e3                                      movw r1, #0xb717
003c11ec  02 01 c0 e3                                      bic r0, r0, #0x80000000
003c11f0  d1 18 43 e3                                      movt r1, #0x38d1
003c11f4  44 35 fd eb                                      bl #0x30e70c
003c11f8  00 00 50 e3                                      cmp r0, #0
003c11fc  01 00 00 0a                                      beq #0x3c1208
003c1200  0c d0 8d e2                                      add sp, sp, #0xc
003c1204  30 80 bd e8                                      pop {r4, r5, pc}
003c1208  49 0e 84 e2                                      add r0, r4, #0x490
003c120c  0c 00 80 e2                                      add r0, r0, #0xc
003c1210  05 10 a0 e1                                      mov r1, r5
003c1214  2c 55 84 e5                                      str r5, [r4, #0x52c]
003c1218  0c d0 8d e2                                      add sp, sp, #0xc
003c121c  30 40 bd e8                                      pop {r4, r5, lr}
003c1220  75 20 00 ea                                      b #0x3c93fc
003c1224  00 20 94 e5                                      ldr r2, [r4]
003c1228  04 00 a0 e1                                      mov r0, r4
003c122c  04 30 8d e5                                      str r3, [sp, #4]
003c1230  0f e0 a0 e1                                      mov lr, pc
003c1234  28 f0 92 e5                                      ldr pc, [r2, #0x28]
003c1238  00 00 50 e3                                      cmp r0, #0
003c123c  04 30 9d e5                                      ldr r3, [sp, #4]
003c1240  03 00 00 0a                                      beq #0x3c1254
003c1244  b5 21 d4 e5                                      ldrb r2, [r4, #0x1b5]
003c1248  00 00 52 e3                                      cmp r2, #0
003c124c  eb ff ff 0a                                      beq #0x3c1200
003c1250  db ff ff ea                                      b #0x3c11c4
003c1254  04 00 a0 e1                                      mov r0, r4
003c1258  ef 48 ff eb                                      bl #0x39361c
003c125c  00 00 50 e3                                      cmp r0, #0
003c1260  04 30 9d e5                                      ldr r3, [sp, #4]
003c1264  f6 ff ff 0a                                      beq #0x3c1244
003c1268  00 20 94 e5                                      ldr r2, [r4]
003c126c  04 00 a0 e1                                      mov r0, r4
003c1270  0f e0 a0 e1                                      mov lr, pc
003c1274  54 f0 92 e5                                      ldr pc, [r2, #0x54]
003c1278  00 00 50 e3                                      cmp r0, #0
003c127c  04 30 9d e5                                      ldr r3, [sp, #4]
003c1280  ef ff ff 1a                                      bne #0x3c1244
003c1284  c5 ff ff ea                                      b #0x3c11a0

; FUNCTION 0x003c3aa4, declared_size=168, range_size=168, mode=arm
; class-group: CSMove
; alias: _ZN6CSMove6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSMove::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c3aa4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c3aa8  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
003c3aac  8c 60 9f e5                                      ldr r6, [pc, #0x8c]
003c3ab0  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
003c3ab4  04 40 8f e0                                      add r4, pc, r4
003c3ab8  06 30 94 e7                                      ldr r3, [r4, r6]
003c3abc  01 80 94 e7                                      ldr r8, [r4, r1]
003c3ac0  20 d0 4d e2                                      sub sp, sp, #0x20
003c3ac4  00 30 93 e5                                      ldr r3, [r3]
003c3ac8  08 00 a0 e1                                      mov r0, r8
003c3acc  02 70 a0 e1                                      mov r7, r2
003c3ad0  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c3ad4  6b cf fd eb                                      bl #0x337888
003c3ad8  68 10 9f e5                                      ldr r1, [pc, #0x68]
003c3adc  04 50 8d e2                                      add r5, sp, #4
003c3ae0  0d 20 a0 e1                                      mov r2, sp
003c3ae4  01 10 8f e0                                      add r1, pc, r1
003c3ae8  05 00 a0 e1                                      mov r0, r5
003c3aec  7e 41 fd eb                                      bl #0x3140ec
003c3af0  05 10 a0 e1                                      mov r1, r5
003c3af4  08 00 a0 e1                                      mov r0, r8
003c3af8  e2 cf fd eb                                      bl #0x337a88
003c3afc  05 00 a0 e1                                      mov r0, r5
003c3b00  d3 51 fd eb                                      bl #0x318254
003c3b04  07 00 a0 e1                                      mov r0, r7
003c3b08  7a 3f ff eb                                      bl #0x3938f8
003c3b0c  dc 02 97 e5                                      ldr r0, [r7, #0x2dc]
003c3b10  00 00 50 e3                                      cmp r0, #0
003c3b14  00 00 00 0a                                      beq #0x3c3b1c
003c3b18  00 ac 02 eb                                      bl #0x46eb20
003c3b1c  06 30 94 e7                                      ldr r3, [r4, r6]
003c3b20  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c3b24  00 30 93 e5                                      ldr r3, [r3]
003c3b28  03 00 52 e1                                      cmp r2, r3
003c3b2c  01 00 00 1a                                      bne #0x3c3b38
003c3b30  20 d0 8d e2                                      add sp, sp, #0x20
003c3b34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c3b38  f4 29 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c3b3c  dc 0f 5d 00 ac 40 00 00 84 08 00 00 6c 13 50 00  .byte 0xdc, 0x0f, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x6c, 0x13, 0x50, 0x00

; FUNCTION 0x003c3bf8, declared_size=200, range_size=200, mode=arm
; class-group: CSMove
; alias: _ZN6CSMove7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSMove::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c3bf8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c3bfc  ac 40 9f e5                                      ldr r4, [pc, #0xac]
003c3c00  ac 60 9f e5                                      ldr r6, [pc, #0xac]
003c3c04  ac c0 9f e5                                      ldr ip, [pc, #0xac]
003c3c08  04 40 8f e0                                      add r4, pc, r4
003c3c0c  06 10 94 e7                                      ldr r1, [r4, r6]
003c3c10  0c 70 94 e7                                      ldr r7, [r4, ip]
003c3c14  20 d0 4d e2                                      sub sp, sp, #0x20
003c3c18  00 10 91 e5                                      ldr r1, [r1]
003c3c1c  00 90 a0 e1                                      mov sb, r0
003c3c20  07 00 a0 e1                                      mov r0, r7
003c3c24  02 50 a0 e1                                      mov r5, r2
003c3c28  03 a0 a0 e1                                      mov sl, r3
003c3c2c  1c 10 8d e5                                      str r1, [sp, #0x1c]
003c3c30  14 cf fd eb                                      bl #0x337888
003c3c34  80 10 9f e5                                      ldr r1, [pc, #0x80]
003c3c38  04 80 8d e2                                      add r8, sp, #4
003c3c3c  0d 20 a0 e1                                      mov r2, sp
003c3c40  01 10 8f e0                                      add r1, pc, r1
003c3c44  08 00 a0 e1                                      mov r0, r8
003c3c48  27 41 fd eb                                      bl #0x3140ec
003c3c4c  08 10 a0 e1                                      mov r1, r8
003c3c50  07 00 a0 e1                                      mov r0, r7
003c3c54  8b cf fd eb                                      bl #0x337a88
003c3c58  08 00 a0 e1                                      mov r0, r8
003c3c5c  7c 51 fd eb                                      bl #0x318254
003c3c60  c1 33 02 e3                                      movw r3, #0x23c1
003c3c64  20 35 85 e5                                      str r3, [r5, #0x520]
003c3c68  00 30 a0 e3                                      mov r3, #0
003c3c6c  09 00 a0 e1                                      mov r0, sb
003c3c70  3c 35 85 e5                                      str r3, [r5, #0x53c]
003c3c74  0a 20 a0 e1                                      mov r2, sl
003c3c78  05 10 a0 e1                                      mov r1, r5
003c3c7c  a5 f4 ff eb                                      bl #0x3c0f18
003c3c80  dc 02 95 e5                                      ldr r0, [r5, #0x2dc]
003c3c84  00 00 50 e3                                      cmp r0, #0
003c3c88  00 00 00 0a                                      beq #0x3c3c90
003c3c8c  93 ab 02 eb                                      bl #0x46eae0
003c3c90  06 30 94 e7                                      ldr r3, [r4, r6]
003c3c94  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c3c98  00 30 93 e5                                      ldr r3, [r3]
003c3c9c  03 00 52 e1                                      cmp r2, r3
003c3ca0  01 00 00 1a                                      bne #0x3c3cac
003c3ca4  20 d0 8d e2                                      add sp, sp, #0x20
003c3ca8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c3cac  97 29 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c3cb0  88 0e 5d 00 ac 40 00 00 84 08 00 00 10 12 50 00  .byte 0x88, 0x0e, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x10, 0x12, 0x50, 0x00

; FUNCTION 0x003c80ac, declared_size=472, range_size=472, mode=arm
; class-group: CSMove
; alias: _ZN6CSMove6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSMove::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c80ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c80b0  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c80b4  0c 50 85 e2                                      add r5, r5, #0xc
003c80b8  60 d0 4d e2                                      sub sp, sp, #0x60
003c80bc  00 40 a0 e3                                      mov r4, #0
003c80c0  01 60 a0 e1                                      mov r6, r1
003c80c4  05 00 a0 e1                                      mov r0, r5
003c80c8  3f 20 a0 e3                                      mov r2, #0x3f
003c80cc  03 30 a0 e3                                      mov r3, #3
003c80d0  58 40 8d e5                                      str r4, [sp, #0x58]
003c80d4  5c 40 8d e5                                      str r4, [sp, #0x5c]
003c80d8  00 40 8d e5                                      str r4, [sp]
003c80dc  04 40 8d e5                                      str r4, [sp, #4]
003c80e0  8c 81 9f e5                                      ldr r8, [pc, #0x18c]
003c80e4  8b fe ff eb                                      bl #0x3c7b18
003c80e8  05 00 a0 e1                                      mov r0, r5
003c80ec  06 10 a0 e1                                      mov r1, r6
003c80f0  58 23 0c e3                                      movw r2, #0xc358
003c80f4  0c 30 a0 e3                                      mov r3, #0xc
003c80f8  50 40 8d e5                                      str r4, [sp, #0x50]
003c80fc  54 40 8d e5                                      str r4, [sp, #0x54]
003c8100  00 40 8d e5                                      str r4, [sp]
003c8104  04 40 8d e5                                      str r4, [sp, #4]
003c8108  82 fe ff eb                                      bl #0x3c7b18
003c810c  64 31 9f e5                                      ldr r3, [pc, #0x164]
003c8110  08 80 8f e0                                      add r8, pc, r8
003c8114  05 00 a0 e1                                      mov r0, r5
003c8118  03 c0 98 e7                                      ldr ip, [r8, r3]
003c811c  06 10 a0 e1                                      mov r1, r6
003c8120  5a 23 0c e3                                      movw r2, #0xc35a
003c8124  0b 30 a0 e3                                      mov r3, #0xb
003c8128  00 c0 8d e5                                      str ip, [sp]
003c812c  48 c0 8d e5                                      str ip, [sp, #0x48]
003c8130  4c 40 8d e5                                      str r4, [sp, #0x4c]
003c8134  04 40 8d e5                                      str r4, [sp, #4]
003c8138  76 fe ff eb                                      bl #0x3c7b18
003c813c  38 31 9f e5                                      ldr r3, [pc, #0x138]
003c8140  05 00 a0 e1                                      mov r0, r5
003c8144  06 10 a0 e1                                      mov r1, r6
003c8148  03 70 98 e7                                      ldr r7, [r8, r3]
003c814c  5b 23 0c e3                                      movw r2, #0xc35b
003c8150  0a 30 a0 e3                                      mov r3, #0xa
003c8154  40 70 8d e5                                      str r7, [sp, #0x40]
003c8158  44 40 8d e5                                      str r4, [sp, #0x44]
003c815c  00 70 8d e5                                      str r7, [sp]
003c8160  04 40 8d e5                                      str r4, [sp, #4]
003c8164  6b fe ff eb                                      bl #0x3c7b18
003c8168  05 00 a0 e1                                      mov r0, r5
003c816c  06 10 a0 e1                                      mov r1, r6
003c8170  5c 23 0c e3                                      movw r2, #0xc35c
003c8174  09 30 a0 e3                                      mov r3, #9
003c8178  38 70 8d e5                                      str r7, [sp, #0x38]
003c817c  3c 40 8d e5                                      str r4, [sp, #0x3c]
003c8180  00 70 8d e5                                      str r7, [sp]
003c8184  04 40 8d e5                                      str r4, [sp, #4]
003c8188  62 fe ff eb                                      bl #0x3c7b18
003c818c  05 00 a0 e1                                      mov r0, r5
003c8190  06 10 a0 e1                                      mov r1, r6
003c8194  5d 23 0c e3                                      movw r2, #0xc35d
003c8198  08 30 a0 e3                                      mov r3, #8
003c819c  00 70 8d e5                                      str r7, [sp]
003c81a0  30 70 8d e5                                      str r7, [sp, #0x30]
003c81a4  34 40 8d e5                                      str r4, [sp, #0x34]
003c81a8  04 40 8d e5                                      str r4, [sp, #4]
003c81ac  59 fe ff eb                                      bl #0x3c7b18
003c81b0  05 00 a0 e1                                      mov r0, r5
003c81b4  06 10 a0 e1                                      mov r1, r6
003c81b8  56 23 0c e3                                      movw r2, #0xc356
003c81bc  07 30 a0 e3                                      mov r3, #7
003c81c0  28 40 8d e5                                      str r4, [sp, #0x28]
003c81c4  2c 40 8d e5                                      str r4, [sp, #0x2c]
003c81c8  00 40 8d e5                                      str r4, [sp]
003c81cc  04 40 8d e5                                      str r4, [sp, #4]
003c81d0  50 fe ff eb                                      bl #0x3c7b18
003c81d4  05 00 a0 e1                                      mov r0, r5
003c81d8  06 10 a0 e1                                      mov r1, r6
003c81dc  55 23 0c e3                                      movw r2, #0xc355
003c81e0  06 30 a0 e3                                      mov r3, #6
003c81e4  20 40 8d e5                                      str r4, [sp, #0x20]
003c81e8  24 40 8d e5                                      str r4, [sp, #0x24]
003c81ec  00 40 8d e5                                      str r4, [sp]
003c81f0  04 40 8d e5                                      str r4, [sp, #4]
003c81f4  47 fe ff eb                                      bl #0x3c7b18
003c81f8  80 30 9f e5                                      ldr r3, [pc, #0x80]
003c81fc  05 00 a0 e1                                      mov r0, r5
003c8200  06 10 a0 e1                                      mov r1, r6
003c8204  03 c0 98 e7                                      ldr ip, [r8, r3]
003c8208  54 23 0c e3                                      movw r2, #0xc354
003c820c  05 30 a0 e3                                      mov r3, #5
003c8210  00 c0 8d e5                                      str ip, [sp]
003c8214  18 c0 8d e5                                      str ip, [sp, #0x18]
003c8218  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c821c  04 40 8d e5                                      str r4, [sp, #4]
003c8220  3c fe ff eb                                      bl #0x3c7b18
003c8224  05 00 a0 e1                                      mov r0, r5
003c8228  06 10 a0 e1                                      mov r1, r6
003c822c  53 23 0c e3                                      movw r2, #0xc353
003c8230  0d 30 a0 e3                                      mov r3, #0xd
003c8234  10 40 8d e5                                      str r4, [sp, #0x10]
003c8238  14 40 8d e5                                      str r4, [sp, #0x14]
003c823c  00 40 8d e5                                      str r4, [sp]
003c8240  04 40 8d e5                                      str r4, [sp, #4]
003c8244  33 fe ff eb                                      bl #0x3c7b18
003c8248  05 00 a0 e1                                      mov r0, r5
003c824c  06 10 a0 e1                                      mov r1, r6
003c8250  57 23 0c e3                                      movw r2, #0xc357
003c8254  0f 30 a0 e3                                      mov r3, #0xf
003c8258  04 40 8d e5                                      str r4, [sp, #4]
003c825c  08 40 8d e5                                      str r4, [sp, #8]
003c8260  0c 40 8d e5                                      str r4, [sp, #0xc]
003c8264  00 40 8d e5                                      str r4, [sp]
003c8268  2a fe ff eb                                      bl #0x3c7b18
003c826c  60 d0 8d e2                                      add sp, sp, #0x60
003c8270  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003c8274  80 c9 5c 00 84 2e 00 00 cc 34 00 00 d4 0a 00 00  .byte 0x80, 0xc9, 0x5c, 0x00, 0x84, 0x2e, 0x00, 0x00, 0xcc, 0x34, 0x00, 0x00, 0xd4, 0x0a, 0x00, 0x00
