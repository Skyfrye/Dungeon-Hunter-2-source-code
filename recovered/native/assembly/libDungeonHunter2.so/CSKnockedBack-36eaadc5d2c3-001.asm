; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0034, declared_size=4, range_size=4, mode=arm
; class-group: CSKnockedBack
; alias: _ZN13CSKnockedBackD1Ev
; demangled: CSKnockedBack::~CSKnockedBack()
; decoder-mode: arm
003c0034  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0038, declared_size=4, range_size=4, mode=arm
; class-group: CSKnockedBack
; alias: _ZN13CSKnockedBack8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSKnockedBack::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0038  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c088c, declared_size=52, range_size=52, mode=arm
; class-group: CSKnockedBack
; alias: _ZN13CSKnockedBackD0Ev
; demangled: CSKnockedBack::~CSKnockedBack()
; decoder-mode: arm
003c088c  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c0890  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c0894  10 40 2d e9                                      push {r4, lr}
003c0898  03 30 8f e0                                      add r3, pc, r3
003c089c  02 20 93 e7                                      ldr r2, [r3, r2]
003c08a0  00 40 a0 e1                                      mov r4, r0
003c08a4  08 20 82 e2                                      add r2, r2, #8
003c08a8  00 20 80 e5                                      str r2, [r0]
003c08ac  e3 3e fd eb                                      bl #0x310440
003c08b0  04 00 a0 e1                                      mov r0, r4
003c08b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c08b8  f8 41 5d 00 08 2a 00 00                          .byte 0xf8, 0x41, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c48e0, declared_size=188, range_size=188, mode=arm
; class-group: CSKnockedBack
; alias: _ZN13CSKnockedBack6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSKnockedBack::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c48e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c48e4  a0 40 9f e5                                      ldr r4, [pc, #0xa0]
003c48e8  a0 70 9f e5                                      ldr r7, [pc, #0xa0]
003c48ec  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
003c48f0  04 40 8f e0                                      add r4, pc, r4
003c48f4  07 30 94 e7                                      ldr r3, [r4, r7]
003c48f8  01 80 94 e7                                      ldr r8, [r4, r1]
003c48fc  20 d0 4d e2                                      sub sp, sp, #0x20
003c4900  00 30 93 e5                                      ldr r3, [r3]
003c4904  08 00 a0 e1                                      mov r0, r8
003c4908  02 60 a0 e1                                      mov r6, r2
003c490c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c4910  dc cb fd eb                                      bl #0x337888
003c4914  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
003c4918  04 50 8d e2                                      add r5, sp, #4
003c491c  0d 20 a0 e1                                      mov r2, sp
003c4920  01 10 8f e0                                      add r1, pc, r1
003c4924  05 00 a0 e1                                      mov r0, r5
003c4928  ef 3d fd eb                                      bl #0x3140ec
003c492c  05 10 a0 e1                                      mov r1, r5
003c4930  08 00 a0 e1                                      mov r0, r8
003c4934  53 cc fd eb                                      bl #0x337a88
003c4938  05 00 a0 e1                                      mov r0, r5
003c493c  44 4e fd eb                                      bl #0x318254
003c4940  78 33 96 e5                                      ldr r3, [r6, #0x378]
003c4944  00 20 a0 e3                                      mov r2, #0
003c4948  08 20 c3 e5                                      strb r2, [r3, #8]
003c494c  dc 02 96 e5                                      ldr r0, [r6, #0x2dc]
003c4950  02 00 50 e1                                      cmp r0, r2
003c4954  04 00 00 0a                                      beq #0x3c496c
003c4958  c3 a8 02 eb                                      bl #0x46ec6c
003c495c  dc 02 96 e5                                      ldr r0, [r6, #0x2dc]
003c4960  00 00 50 e3                                      cmp r0, #0
003c4964  00 00 00 0a                                      beq #0x3c496c
003c4968  6c a8 02 eb                                      bl #0x46eb20
003c496c  07 30 94 e7                                      ldr r3, [r4, r7]
003c4970  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c4974  00 30 93 e5                                      ldr r3, [r3]
003c4978  03 00 52 e1                                      cmp r2, r3
003c497c  01 00 00 1a                                      bne #0x3c4988
003c4980  20 d0 8d e2                                      add sp, sp, #0x20
003c4984  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c4988  60 26 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c498c  a0 01 5d 00 ac 40 00 00 84 08 00 00 30 05 50 00  .byte 0xa0, 0x01, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x30, 0x05, 0x50, 0x00

; FUNCTION 0x003c4a48, declared_size=348, range_size=348, mode=arm
; class-group: CSKnockedBack
; alias: _ZN13CSKnockedBack7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSKnockedBack::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c4a48  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c4a4c  3c 51 9f e5                                      ldr r5, [pc, #0x13c]
003c4a50  3c 81 9f e5                                      ldr r8, [pc, #0x13c]
003c4a54  3c 01 9f e5                                      ldr r0, [pc, #0x13c]
003c4a58  05 50 8f e0                                      add r5, pc, r5
003c4a5c  08 10 95 e7                                      ldr r1, [r5, r8]
003c4a60  00 60 95 e7                                      ldr r6, [r5, r0]
003c4a64  03 70 a0 e1                                      mov r7, r3
003c4a68  00 30 91 e5                                      ldr r3, [r1]
003c4a6c  48 d0 4d e2                                      sub sp, sp, #0x48
003c4a70  06 00 a0 e1                                      mov r0, r6
003c4a74  44 30 8d e5                                      str r3, [sp, #0x44]
003c4a78  02 40 a0 e1                                      mov r4, r2
003c4a7c  70 90 9d e5                                      ldr sb, [sp, #0x70]
003c4a80  80 cb fd eb                                      bl #0x337888
003c4a84  10 11 9f e5                                      ldr r1, [pc, #0x110]
003c4a88  2c a0 8d e2                                      add sl, sp, #0x2c
003c4a8c  10 20 8d e2                                      add r2, sp, #0x10
003c4a90  01 10 8f e0                                      add r1, pc, r1
003c4a94  0a 00 a0 e1                                      mov r0, sl
003c4a98  93 3d fd eb                                      bl #0x3140ec
003c4a9c  0a 10 a0 e1                                      mov r1, sl
003c4aa0  06 00 a0 e1                                      mov r0, r6
003c4aa4  f7 cb fd eb                                      bl #0x337a88
003c4aa8  0a 00 a0 e1                                      mov r0, sl
003c4aac  e8 4d fd eb                                      bl #0x318254
003c4ab0  06 00 a0 e1                                      mov r0, r6
003c4ab4  73 cb fd eb                                      bl #0x337888
003c4ab8  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
003c4abc  14 a0 8d e2                                      add sl, sp, #0x14
003c4ac0  0c 20 8d e2                                      add r2, sp, #0xc
003c4ac4  01 10 8f e0                                      add r1, pc, r1
003c4ac8  0a 00 a0 e1                                      mov r0, sl
003c4acc  86 3d fd eb                                      bl #0x3140ec
003c4ad0  0a 10 a0 e1                                      mov r1, sl
003c4ad4  06 00 a0 e1                                      mov r0, r6
003c4ad8  ea cb fd eb                                      bl #0x337a88
003c4adc  0a 00 a0 e1                                      mov r0, sl
003c4ae0  db 4d fd eb                                      bl #0x318254
003c4ae4  41 33 02 e3                                      movw r3, #0x2341
003c4ae8  4f 0e 84 e2                                      add r0, r4, #0x4f0
003c4aec  20 35 84 e5                                      str r3, [r4, #0x520]
003c4af0  0c 00 80 e2                                      add r0, r0, #0xc
003c4af4  00 10 e0 e3                                      mvn r1, #0
003c4af8  14 f0 ff eb                                      bl #0x3c0b50
003c4afc  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
003c4b00  08 00 13 e3                                      tst r3, #8
003c4b04  09 00 00 0a                                      beq #0x3c4b30
003c4b08  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
003c4b0c  00 00 50 e3                                      cmp r0, #0
003c4b10  06 00 00 0a                                      beq #0x3c4b30
003c4b14  00 c0 a0 e3                                      mov ip, #0
003c4b18  03 30 a0 e3                                      mov r3, #3
003c4b1c  0c 10 a0 e1                                      mov r1, ip
003c4b20  1c 25 00 e3                                      movw r2, #0x51c
003c4b24  00 c0 8d e5                                      str ip, [sp]
003c4b28  6e a8 02 eb                                      bl #0x46ece8
003c4b2c  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
003c4b30  10 00 13 e3                                      tst r3, #0x10
003c4b34  20 30 a0 13                                      movne r3, #0x20
003c4b38  20 30 c3 03                                      biceq r3, r3, #0x20
003c4b3c  2c 30 87 e5                                      str r3, [r7, #0x2c]
003c4b40  78 33 94 e5                                      ldr r3, [r4, #0x378]
003c4b44  01 20 a0 e3                                      mov r2, #1
003c4b48  09 10 a0 e1                                      mov r1, sb
003c4b4c  08 20 c3 e5                                      strb r2, [r3, #8]
003c4b50  04 00 a0 e1                                      mov r0, r4
003c4b54  7b 3c ff eb                                      bl #0x393d48
003c4b58  04 00 a0 e1                                      mov r0, r4
003c4b5c  d5 de ff eb                                      bl #0x3bc6b8
003c4b60  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
003c4b64  00 00 50 e3                                      cmp r0, #0
003c4b68  00 00 00 0a                                      beq #0x3c4b70
003c4b6c  db a7 02 eb                                      bl #0x46eae0
003c4b70  08 30 95 e7                                      ldr r3, [r5, r8]
003c4b74  44 20 9d e5                                      ldr r2, [sp, #0x44]
003c4b78  00 30 93 e5                                      ldr r3, [r3]
003c4b7c  03 00 52 e1                                      cmp r2, r3
003c4b80  01 00 00 1a                                      bne #0x3c4b8c
003c4b84  48 d0 8d e2                                      add sp, sp, #0x48
003c4b88  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c4b8c  df 25 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c4b90  38 00 5d 00 ac 40 00 00 84 08 00 00 c0 03 50 00  .byte 0x38, 0x00, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc0, 0x03, 0x50, 0x00
003c4ba0  1c 04 50 00                                      .byte 0x1c, 0x04, 0x50, 0x00

; FUNCTION 0x003c5ab0, declared_size=140, range_size=140, mode=arm
; class-group: CSKnockedBack
; alias: _ZN13CSKnockedBack7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSKnockedBack::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c5ab0  04 e0 2d e5                                      str lr, [sp, #-4]!
003c5ab4  0c d0 4d e2                                      sub sp, sp, #0xc
003c5ab8  10 30 9d e5                                      ldr r3, [sp, #0x10]
003c5abc  23 00 53 e3                                      cmp r3, #0x23
003c5ac0  09 00 00 0a                                      beq #0x3c5aec
003c5ac4  27 00 53 e3                                      cmp r3, #0x27
003c5ac8  01 00 00 0a                                      beq #0x3c5ad4
003c5acc  0c d0 8d e2                                      add sp, sp, #0xc
003c5ad0  00 80 bd e8                                      ldm sp!, {pc}
003c5ad4  dc 02 92 e5                                      ldr r0, [r2, #0x2dc]
003c5ad8  00 00 50 e3                                      cmp r0, #0
003c5adc  fa ff ff 0a                                      beq #0x3c5acc
003c5ae0  0c d0 8d e2                                      add sp, sp, #0xc
003c5ae4  04 e0 9d e4                                      pop {lr}
003c5ae8  5f a4 02 ea                                      b #0x46ec6c
003c5aec  00 30 92 e5                                      ldr r3, [r2]
003c5af0  02 00 a0 e1                                      mov r0, r2
003c5af4  04 20 8d e5                                      str r2, [sp, #4]
003c5af8  0f e0 a0 e1                                      mov lr, pc
003c5afc  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003c5b00  00 00 50 e3                                      cmp r0, #0
003c5b04  04 20 9d e5                                      ldr r2, [sp, #4]
003c5b08  ef ff ff 0a                                      beq #0x3c5acc
003c5b0c  49 0e 82 e2                                      add r0, r2, #0x490
003c5b10  0c 00 80 e2                                      add r0, r0, #0xc
003c5b14  82 0f 00 eb                                      bl #0x3c9924
003c5b18  04 20 9d e5                                      ldr r2, [sp, #4]
003c5b1c  01 10 a0 e3                                      mov r1, #1
003c5b20  01 30 a0 e1                                      mov r3, r1
003c5b24  4f 0e 82 e2                                      add r0, r2, #0x4f0
003c5b28  0c 00 80 e2                                      add r0, r0, #0xc
003c5b2c  00 20 a0 e3                                      mov r2, #0
003c5b30  0c d0 8d e2                                      add sp, sp, #0xc
003c5b34  04 e0 9d e4                                      pop {lr}
003c5b38  62 ff ff ea                                      b #0x3c58c8

; FUNCTION 0x003c87d8, declared_size=120, range_size=120, mode=arm
; class-group: CSKnockedBack
; alias: _ZN13CSKnockedBack6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSKnockedBack::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c87d8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c87dc  4f 6e 82 e2                                      add r6, r2, #0x4f0
003c87e0  0c 60 86 e2                                      add r6, r6, #0xc
003c87e4  1c d0 4d e2                                      sub sp, sp, #0x1c
003c87e8  00 40 a0 e3                                      mov r4, #0
003c87ec  06 00 a0 e1                                      mov r0, r6
003c87f0  22 20 a0 e3                                      mov r2, #0x22
003c87f4  03 30 a0 e3                                      mov r3, #3
003c87f8  48 50 9f e5                                      ldr r5, [pc, #0x48]
003c87fc  01 70 a0 e1                                      mov r7, r1
003c8800  10 40 8d e5                                      str r4, [sp, #0x10]
003c8804  14 40 8d e5                                      str r4, [sp, #0x14]
003c8808  00 40 8d e5                                      str r4, [sp]
003c880c  04 40 8d e5                                      str r4, [sp, #4]
003c8810  c0 fc ff eb                                      bl #0x3c7b18
003c8814  30 30 9f e5                                      ldr r3, [pc, #0x30]
003c8818  05 50 8f e0                                      add r5, pc, r5
003c881c  06 00 a0 e1                                      mov r0, r6
003c8820  03 c0 95 e7                                      ldr ip, [r5, r3]
003c8824  07 10 a0 e1                                      mov r1, r7
003c8828  58 23 0c e3                                      movw r2, #0xc358
003c882c  0c 30 a0 e3                                      mov r3, #0xc
003c8830  00 c0 8d e5                                      str ip, [sp]
003c8834  10 10 8d e9                                      stmib sp, {r4, ip}
003c8838  0c 40 8d e5                                      str r4, [sp, #0xc]
003c883c  b5 fc ff eb                                      bl #0x3c7b18
003c8840  1c d0 8d e2                                      add sp, sp, #0x1c
003c8844  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003c8848  78 c2 5c 00 cc 34 00 00                          .byte 0x78, 0xc2, 0x5c, 0x00, 0xcc, 0x34, 0x00, 0x00
