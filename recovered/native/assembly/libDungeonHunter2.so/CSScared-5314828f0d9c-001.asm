; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0028, declared_size=4, range_size=4, mode=arm
; class-group: CSScared
; alias: _ZN8CSScaredD1Ev
; demangled: CSScared::~CSScared()
; decoder-mode: arm
003c0028  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c08f4, declared_size=52, range_size=52, mode=arm
; class-group: CSScared
; alias: _ZN8CSScaredD0Ev
; demangled: CSScared::~CSScared()
; decoder-mode: arm
003c08f4  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c08f8  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c08fc  10 40 2d e9                                      push {r4, lr}
003c0900  03 30 8f e0                                      add r3, pc, r3
003c0904  02 20 93 e7                                      ldr r2, [r3, r2]
003c0908  00 40 a0 e1                                      mov r4, r0
003c090c  08 20 82 e2                                      add r2, r2, #8
003c0910  00 20 80 e5                                      str r2, [r0]
003c0914  c9 3e fd eb                                      bl #0x310440
003c0918  04 00 a0 e1                                      mov r0, r4
003c091c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0920  90 41 5d 00 08 2a 00 00                          .byte 0x90, 0x41, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c2b28, declared_size=188, range_size=188, mode=arm
; class-group: CSScared
; alias: _ZN8CSScared7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSScared::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c2b28  10 40 2d e9                                      push {r4, lr}
003c2b2c  10 d0 4d e2                                      sub sp, sp, #0x10
003c2b30  18 30 9d e5                                      ldr r3, [sp, #0x18]
003c2b34  02 40 a0 e1                                      mov r4, r2
003c2b38  23 00 53 e3                                      cmp r3, #0x23
003c2b3c  26 00 00 1a                                      bne #0x3c2bdc
003c2b40  00 30 a0 e3                                      mov r3, #0
003c2b44  0e 07 02 e3                                      movw r0, #0x270e
003c2b48  0c 30 8d e5                                      str r3, [sp, #0xc]
003c2b4c  04 30 8d e5                                      str r3, [sp, #4]
003c2b50  08 30 8d e5                                      str r3, [sp, #8]
003c2b54  d1 fe ff eb                                      bl #0x3c26a0
003c2b58  81 2f fd eb                                      bl #0x30e964
003c2b5c  17 17 0b e3                                      movw r1, #0xb717
003c2b60  d1 18 43 e3                                      movt r1, #0x38d1
003c2b64  80 30 fd eb                                      bl #0x30ed6c
003c2b68  17 17 0b e3                                      movw r1, #0xb717
003c2b6c  51 19 43 e3                                      movt r1, #0x3951
003c2b70  0b 30 fd eb                                      bl #0x30eba4
003c2b74  04 00 8d e5                                      str r0, [sp, #4]
003c2b78  0e 07 02 e3                                      movw r0, #0x270e
003c2b7c  c7 fe ff eb                                      bl #0x3c26a0
003c2b80  77 2f fd eb                                      bl #0x30e964
003c2b84  17 17 0b e3                                      movw r1, #0xb717
003c2b88  d1 18 43 e3                                      movt r1, #0x38d1
003c2b8c  76 30 fd eb                                      bl #0x30ed6c
003c2b90  17 17 0b e3                                      movw r1, #0xb717
003c2b94  51 19 43 e3                                      movt r1, #0x3951
003c2b98  01 30 fd eb                                      bl #0x30eba4
003c2b9c  08 00 8d e5                                      str r0, [sp, #8]
003c2ba0  64 00 a0 e3                                      mov r0, #0x64
003c2ba4  bd fe ff eb                                      bl #0x3c26a0
003c2ba8  31 00 50 e3                                      cmp r0, #0x31
003c2bac  04 30 9d d5                                      ldrle r3, [sp, #4]
003c2bb0  64 00 a0 e3                                      mov r0, #0x64
003c2bb4  02 31 83 d2                                      addle r3, r3, #0x80000000
003c2bb8  04 30 8d d5                                      strle r3, [sp, #4]
003c2bbc  b7 fe ff eb                                      bl #0x3c26a0
003c2bc0  31 00 50 e3                                      cmp r0, #0x31
003c2bc4  08 30 9d d5                                      ldrle r3, [sp, #8]
003c2bc8  04 10 8d e2                                      add r1, sp, #4
003c2bcc  02 31 83 d2                                      addle r3, r3, #0x80000000
003c2bd0  08 30 8d d5                                      strle r3, [sp, #8]
003c2bd4  78 03 94 e5                                      ldr r0, [r4, #0x378]
003c2bd8  e5 09 01 eb                                      bl #0x405374
003c2bdc  10 d0 8d e2                                      add sp, sp, #0x10
003c2be0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c45c4, declared_size=452, range_size=452, mode=arm
; class-group: CSScared
; alias: _ZN8CSScared7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSScared::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c45c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c45c8  98 41 9f e5                                      ldr r4, [pc, #0x198]
003c45cc  98 71 9f e5                                      ldr r7, [pc, #0x198]
003c45d0  98 11 9f e5                                      ldr r1, [pc, #0x198]
003c45d4  04 40 8f e0                                      add r4, pc, r4
003c45d8  07 30 94 e7                                      ldr r3, [r4, r7]
003c45dc  01 80 94 e7                                      ldr r8, [r4, r1]
003c45e0  30 d0 4d e2                                      sub sp, sp, #0x30
003c45e4  00 30 93 e5                                      ldr r3, [r3]
003c45e8  08 00 a0 e1                                      mov r0, r8
003c45ec  02 50 a0 e1                                      mov r5, r2
003c45f0  2c 30 8d e5                                      str r3, [sp, #0x2c]
003c45f4  a3 cc fd eb                                      bl #0x337888
003c45f8  74 11 9f e5                                      ldr r1, [pc, #0x174]
003c45fc  14 60 8d e2                                      add r6, sp, #0x14
003c4600  10 20 8d e2                                      add r2, sp, #0x10
003c4604  06 00 a0 e1                                      mov r0, r6
003c4608  01 10 8f e0                                      add r1, pc, r1
003c460c  b6 3e fd eb                                      bl #0x3140ec
003c4610  06 10 a0 e1                                      mov r1, r6
003c4614  08 00 a0 e1                                      mov r0, r8
003c4618  1a cd fd eb                                      bl #0x337a88
003c461c  06 00 a0 e1                                      mov r0, r6
003c4620  0b 4f fd eb                                      bl #0x318254
003c4624  89 3d a0 e3                                      mov r3, #0x2240
003c4628  20 35 85 e5                                      str r3, [r5, #0x520]
003c462c  44 31 9f e5                                      ldr r3, [pc, #0x144]
003c4630  05 00 a0 e1                                      mov r0, r5
003c4634  49 6e 85 e2                                      add r6, r5, #0x490
003c4638  03 30 94 e7                                      ldr r3, [r4, r3]
003c463c  0c 60 86 e2                                      add r6, r6, #0xc
003c4640  00 80 93 e5                                      ldr r8, [r3]
003c4644  f7 7a ff eb                                      bl #0x3a3228
003c4648  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
003c464c  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
003c4650  03 20 94 e7                                      ldr r2, [r4, r3]
003c4654  a0 30 a0 e3                                      mov r3, #0xa0
003c4658  93 80 23 e0                                      mla r3, r3, r0, r8
003c465c  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c4660  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
003c4664  01 10 8f e0                                      add r1, pc, r1
003c4668  7c 80 93 e5                                      ldr r8, [r3, #0x7c]
003c466c  02 20 8f e0                                      add r2, pc, r2
003c4670  59 01 04 eb                                      bl #0x4c4bdc
003c4674  01 0c 10 e2                                      ands r0, r0, #0x100
003c4678  36 00 00 1a                                      bne #0x3c4758
003c467c  08 10 80 e0                                      add r1, r0, r8
003c4680  06 00 a0 e1                                      mov r0, r6
003c4684  89 19 00 eb                                      bl #0x3cacb0
003c4688  00 30 a0 e3                                      mov r3, #0
003c468c  0e 07 02 e3                                      movw r0, #0x270e
003c4690  0c 30 8d e5                                      str r3, [sp, #0xc]
003c4694  04 30 8d e5                                      str r3, [sp, #4]
003c4698  08 30 8d e5                                      str r3, [sp, #8]
003c469c  ff f7 ff eb                                      bl #0x3c26a0
003c46a0  af 28 fd eb                                      bl #0x30e964
003c46a4  17 17 0b e3                                      movw r1, #0xb717
003c46a8  d1 18 43 e3                                      movt r1, #0x38d1
003c46ac  ae 29 fd eb                                      bl #0x30ed6c
003c46b0  17 17 0b e3                                      movw r1, #0xb717
003c46b4  51 19 43 e3                                      movt r1, #0x3951
003c46b8  39 29 fd eb                                      bl #0x30eba4
003c46bc  04 00 8d e5                                      str r0, [sp, #4]
003c46c0  0e 07 02 e3                                      movw r0, #0x270e
003c46c4  f5 f7 ff eb                                      bl #0x3c26a0
003c46c8  a5 28 fd eb                                      bl #0x30e964
003c46cc  17 17 0b e3                                      movw r1, #0xb717
003c46d0  d1 18 43 e3                                      movt r1, #0x38d1
003c46d4  a4 29 fd eb                                      bl #0x30ed6c
003c46d8  17 17 0b e3                                      movw r1, #0xb717
003c46dc  51 19 43 e3                                      movt r1, #0x3951
003c46e0  2f 29 fd eb                                      bl #0x30eba4
003c46e4  08 00 8d e5                                      str r0, [sp, #8]
003c46e8  64 00 a0 e3                                      mov r0, #0x64
003c46ec  eb f7 ff eb                                      bl #0x3c26a0
003c46f0  31 00 50 e3                                      cmp r0, #0x31
003c46f4  04 30 9d d5                                      ldrle r3, [sp, #4]
003c46f8  64 00 a0 e3                                      mov r0, #0x64
003c46fc  02 31 83 d2                                      addle r3, r3, #0x80000000
003c4700  04 30 8d d5                                      strle r3, [sp, #4]
003c4704  e5 f7 ff eb                                      bl #0x3c26a0
003c4708  31 00 50 e3                                      cmp r0, #0x31
003c470c  08 30 9d d5                                      ldrle r3, [sp, #8]
003c4710  04 10 8d e2                                      add r1, sp, #4
003c4714  02 31 83 d2                                      addle r3, r3, #0x80000000
003c4718  08 30 8d d5                                      strle r3, [sp, #8]
003c471c  78 03 95 e5                                      ldr r0, [r5, #0x378]
003c4720  13 03 01 eb                                      bl #0x405374
003c4724  05 00 a0 e1                                      mov r0, r5
003c4728  e2 df ff eb                                      bl #0x3bc6b8
003c472c  dc 02 95 e5                                      ldr r0, [r5, #0x2dc]
003c4730  00 00 50 e3                                      cmp r0, #0
003c4734  00 00 00 0a                                      beq #0x3c473c
003c4738  e8 a8 02 eb                                      bl #0x46eae0
003c473c  07 30 94 e7                                      ldr r3, [r4, r7]
003c4740  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003c4744  00 30 93 e5                                      ldr r3, [r3]
003c4748  03 00 52 e1                                      cmp r2, r3
003c474c  04 00 00 1a                                      bne #0x3c4764
003c4750  30 d0 8d e2                                      add sp, sp, #0x30
003c4754  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c4758  05 00 a0 e1                                      mov r0, r5
003c475c  1f 83 ff eb                                      bl #0x3a53e0
003c4760  c5 ff ff ea                                      b #0x3c467c
003c4764  e9 26 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c4768  bc 04 5d 00 ac 40 00 00 84 08 00 00 48 08 50 00  .byte 0xbc, 0x04, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x48, 0x08, 0x50, 0x00
003c4778  44 48 00 00 f4 37 00 00 54 05 50 00 5c 05 50 00  .byte 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x54, 0x05, 0x50, 0x00, 0x5c, 0x05, 0x50, 0x00

; FUNCTION 0x003c4788, declared_size=172, range_size=172, mode=arm
; class-group: CSScared
; alias: _ZN8CSScared8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSScared::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c4788  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c478c  90 40 9f e5                                      ldr r4, [pc, #0x90]
003c4790  90 50 9f e5                                      ldr r5, [pc, #0x90]
003c4794  28 85 92 e5                                      ldr r8, [r2, #0x528]
003c4798  04 40 8f e0                                      add r4, pc, r4
003c479c  05 30 94 e7                                      ldr r3, [r4, r5]
003c47a0  24 d0 4d e2                                      sub sp, sp, #0x24
003c47a4  04 80 18 e2                                      ands r8, r8, #4
003c47a8  00 30 93 e5                                      ldr r3, [r3]
003c47ac  02 60 a0 e1                                      mov r6, r2
003c47b0  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c47b4  12 00 00 1a                                      bne #0x3c4804
003c47b8  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003c47bc  04 70 8d e2                                      add r7, sp, #4
003c47c0  03 a0 94 e7                                      ldr sl, [r4, r3]
003c47c4  0a 00 a0 e1                                      mov r0, sl
003c47c8  2e cc fd eb                                      bl #0x337888
003c47cc  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
003c47d0  0d 20 a0 e1                                      mov r2, sp
003c47d4  07 00 a0 e1                                      mov r0, r7
003c47d8  01 10 8f e0                                      add r1, pc, r1
003c47dc  42 3e fd eb                                      bl #0x3140ec
003c47e0  07 10 a0 e1                                      mov r1, r7
003c47e4  0a 00 a0 e1                                      mov r0, sl
003c47e8  a6 cc fd eb                                      bl #0x337a88
003c47ec  07 00 a0 e1                                      mov r0, r7
003c47f0  97 4e fd eb                                      bl #0x318254
003c47f4  49 0e 86 e2                                      add r0, r6, #0x490
003c47f8  0c 00 80 e2                                      add r0, r0, #0xc
003c47fc  08 10 a0 e1                                      mov r1, r8
003c4800  21 13 00 eb                                      bl #0x3c948c
003c4804  05 30 94 e7                                      ldr r3, [r4, r5]
003c4808  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c480c  00 30 93 e5                                      ldr r3, [r3]
003c4810  03 00 52 e1                                      cmp r2, r3
003c4814  01 00 00 1a                                      bne #0x3c4820
003c4818  24 d0 8d e2                                      add sp, sp, #0x24
003c481c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c4820  ba 26 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c4824  f8 02 5d 00 ac 40 00 00 84 08 00 00 f0 06 50 00  .byte 0xf8, 0x02, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xf0, 0x06, 0x50, 0x00

; FUNCTION 0x003c4834, declared_size=172, range_size=172, mode=arm
; class-group: CSScared
; alias: _ZN8CSScared6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSScared::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c4834  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c4838  90 40 9f e5                                      ldr r4, [pc, #0x90]
003c483c  90 60 9f e5                                      ldr r6, [pc, #0x90]
003c4840  90 10 9f e5                                      ldr r1, [pc, #0x90]
003c4844  04 40 8f e0                                      add r4, pc, r4
003c4848  06 30 94 e7                                      ldr r3, [r4, r6]
003c484c  01 80 94 e7                                      ldr r8, [r4, r1]
003c4850  20 d0 4d e2                                      sub sp, sp, #0x20
003c4854  00 30 93 e5                                      ldr r3, [r3]
003c4858  08 00 a0 e1                                      mov r0, r8
003c485c  02 70 a0 e1                                      mov r7, r2
003c4860  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c4864  07 cc fd eb                                      bl #0x337888
003c4868  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003c486c  04 50 8d e2                                      add r5, sp, #4
003c4870  0d 20 a0 e1                                      mov r2, sp
003c4874  01 10 8f e0                                      add r1, pc, r1
003c4878  05 00 a0 e1                                      mov r0, r5
003c487c  1a 3e fd eb                                      bl #0x3140ec
003c4880  05 10 a0 e1                                      mov r1, r5
003c4884  08 00 a0 e1                                      mov r0, r8
003c4888  7e cc fd eb                                      bl #0x337a88
003c488c  05 00 a0 e1                                      mov r0, r5
003c4890  6f 4e fd eb                                      bl #0x318254
003c4894  78 03 97 e5                                      ldr r0, [r7, #0x378]
003c4898  00 10 a0 e3                                      mov r1, #0
003c489c  cb 02 01 eb                                      bl #0x4053d0
003c48a0  dc 02 97 e5                                      ldr r0, [r7, #0x2dc]
003c48a4  00 00 50 e3                                      cmp r0, #0
003c48a8  00 00 00 0a                                      beq #0x3c48b0
003c48ac  9b a8 02 eb                                      bl #0x46eb20
003c48b0  06 30 94 e7                                      ldr r3, [r4, r6]
003c48b4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c48b8  00 30 93 e5                                      ldr r3, [r3]
003c48bc  03 00 52 e1                                      cmp r2, r3
003c48c0  01 00 00 1a                                      bne #0x3c48cc
003c48c4  20 d0 8d e2                                      add sp, sp, #0x20
003c48c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c48cc  8f 26 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c48d0  4c 02 5d 00 ac 40 00 00 84 08 00 00 dc 05 50 00  .byte 0x4c, 0x02, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xdc, 0x05, 0x50, 0x00

; FUNCTION 0x003c861c, declared_size=276, range_size=276, mode=arm
; class-group: CSScared
; alias: _ZN8CSScared6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSScared::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c861c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c8620  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c8624  0c 50 85 e2                                      add r5, r5, #0xc
003c8628  3c d0 4d e2                                      sub sp, sp, #0x3c
003c862c  00 40 a0 e3                                      mov r4, #0
003c8630  01 60 a0 e1                                      mov r6, r1
003c8634  05 00 a0 e1                                      mov r0, r5
003c8638  2c 20 a0 e3                                      mov r2, #0x2c
003c863c  03 30 a0 e3                                      mov r3, #3
003c8640  30 40 8d e5                                      str r4, [sp, #0x30]
003c8644  34 40 8d e5                                      str r4, [sp, #0x34]
003c8648  00 40 8d e5                                      str r4, [sp]
003c864c  04 40 8d e5                                      str r4, [sp, #4]
003c8650  30 fd ff eb                                      bl #0x3c7b18
003c8654  05 00 a0 e1                                      mov r0, r5
003c8658  06 10 a0 e1                                      mov r1, r6
003c865c  22 20 a0 e3                                      mov r2, #0x22
003c8660  03 30 a0 e3                                      mov r3, #3
003c8664  28 40 8d e5                                      str r4, [sp, #0x28]
003c8668  2c 40 8d e5                                      str r4, [sp, #0x2c]
003c866c  00 40 8d e5                                      str r4, [sp]
003c8670  04 40 8d e5                                      str r4, [sp, #4]
003c8674  a8 70 9f e5                                      ldr r7, [pc, #0xa8]
003c8678  26 fd ff eb                                      bl #0x3c7b18
003c867c  05 00 a0 e1                                      mov r0, r5
003c8680  06 10 a0 e1                                      mov r1, r6
003c8684  58 23 0c e3                                      movw r2, #0xc358
003c8688  0c 30 a0 e3                                      mov r3, #0xc
003c868c  20 40 8d e5                                      str r4, [sp, #0x20]
003c8690  24 40 8d e5                                      str r4, [sp, #0x24]
003c8694  00 40 8d e5                                      str r4, [sp]
003c8698  04 40 8d e5                                      str r4, [sp, #4]
003c869c  1d fd ff eb                                      bl #0x3c7b18
003c86a0  80 30 9f e5                                      ldr r3, [pc, #0x80]
003c86a4  07 70 8f e0                                      add r7, pc, r7
003c86a8  05 00 a0 e1                                      mov r0, r5
003c86ac  03 c0 97 e7                                      ldr ip, [r7, r3]
003c86b0  06 10 a0 e1                                      mov r1, r6
003c86b4  5a 23 0c e3                                      movw r2, #0xc35a
003c86b8  0b 30 a0 e3                                      mov r3, #0xb
003c86bc  00 c0 8d e5                                      str ip, [sp]
003c86c0  18 c0 8d e5                                      str ip, [sp, #0x18]
003c86c4  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c86c8  04 40 8d e5                                      str r4, [sp, #4]
003c86cc  11 fd ff eb                                      bl #0x3c7b18
003c86d0  54 30 9f e5                                      ldr r3, [pc, #0x54]
003c86d4  05 00 a0 e1                                      mov r0, r5
003c86d8  06 10 a0 e1                                      mov r1, r6
003c86dc  03 70 97 e7                                      ldr r7, [r7, r3]
003c86e0  5b 23 0c e3                                      movw r2, #0xc35b
003c86e4  0a 30 a0 e3                                      mov r3, #0xa
003c86e8  10 70 8d e5                                      str r7, [sp, #0x10]
003c86ec  14 40 8d e5                                      str r4, [sp, #0x14]
003c86f0  00 70 8d e5                                      str r7, [sp]
003c86f4  04 40 8d e5                                      str r4, [sp, #4]
003c86f8  06 fd ff eb                                      bl #0x3c7b18
003c86fc  05 00 a0 e1                                      mov r0, r5
003c8700  06 10 a0 e1                                      mov r1, r6
003c8704  5c 23 0c e3                                      movw r2, #0xc35c
003c8708  09 30 a0 e3                                      mov r3, #9
003c870c  00 70 8d e5                                      str r7, [sp]
003c8710  90 00 8d e9                                      stmib sp, {r4, r7}
003c8714  0c 40 8d e5                                      str r4, [sp, #0xc]
003c8718  fe fc ff eb                                      bl #0x3c7b18
003c871c  3c d0 8d e2                                      add sp, sp, #0x3c
003c8720  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003c8724  ec c3 5c 00 84 2e 00 00 cc 34 00 00              .byte 0xec, 0xc3, 0x5c, 0x00, 0x84, 0x2e, 0x00, 0x00, 0xcc, 0x34, 0x00, 0x00
