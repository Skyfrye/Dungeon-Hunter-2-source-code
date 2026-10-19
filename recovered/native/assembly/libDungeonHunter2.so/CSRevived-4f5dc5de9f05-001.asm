; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0060, declared_size=4, range_size=4, mode=arm
; class-group: CSRevived
; alias: _ZN9CSRevivedD1Ev
; demangled: CSRevived::~CSRevived()
; decoder-mode: arm
003c0060  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0064, declared_size=4, range_size=4, mode=arm
; class-group: CSRevived
; alias: _ZN9CSRevived8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSRevived::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0064  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0068, declared_size=4, range_size=4, mode=arm
; class-group: CSRevived
; alias: _ZN9CSRevived7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSRevived::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c0068  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0754, declared_size=52, range_size=52, mode=arm
; class-group: CSRevived
; alias: _ZN9CSRevivedD0Ev
; demangled: CSRevived::~CSRevived()
; decoder-mode: arm
003c0754  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c0758  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c075c  10 40 2d e9                                      push {r4, lr}
003c0760  03 30 8f e0                                      add r3, pc, r3
003c0764  02 20 93 e7                                      ldr r2, [r3, r2]
003c0768  00 40 a0 e1                                      mov r4, r0
003c076c  08 20 82 e2                                      add r2, r2, #8
003c0770  00 20 80 e5                                      str r2, [r0]
003c0774  31 3f fd eb                                      bl #0x310440
003c0778  04 00 a0 e1                                      mov r0, r4
003c077c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0780  30 43 5d 00 08 2a 00 00                          .byte 0x30, 0x43, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c34cc, declared_size=288, range_size=288, mode=arm
; class-group: CSRevived
; alias: _ZN9CSRevived7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSRevived::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c34cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c34d0  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
003c34d4  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
003c34d8  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
003c34dc  04 40 8f e0                                      add r4, pc, r4
003c34e0  07 30 94 e7                                      ldr r3, [r4, r7]
003c34e4  01 80 94 e7                                      ldr r8, [r4, r1]
003c34e8  20 d0 4d e2                                      sub sp, sp, #0x20
003c34ec  00 30 93 e5                                      ldr r3, [r3]
003c34f0  08 00 a0 e1                                      mov r0, r8
003c34f4  02 50 a0 e1                                      mov r5, r2
003c34f8  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c34fc  e1 d0 fd eb                                      bl #0x337888
003c3500  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
003c3504  04 60 8d e2                                      add r6, sp, #4
003c3508  0d 20 a0 e1                                      mov r2, sp
003c350c  06 00 a0 e1                                      mov r0, r6
003c3510  01 10 8f e0                                      add r1, pc, r1
003c3514  f4 42 fd eb                                      bl #0x3140ec
003c3518  06 10 a0 e1                                      mov r1, r6
003c351c  08 00 a0 e1                                      mov r0, r8
003c3520  58 d1 fd eb                                      bl #0x337a88
003c3524  06 00 a0 e1                                      mov r0, r6
003c3528  49 53 fd eb                                      bl #0x318254
003c352c  41 33 02 e3                                      movw r3, #0x2341
003c3530  20 35 85 e5                                      str r3, [r5, #0x520]
003c3534  05 00 a0 e1                                      mov r0, r5
003c3538  5e e4 ff eb                                      bl #0x3bc6b8
003c353c  98 30 9f e5                                      ldr r3, [pc, #0x98]
003c3540  05 00 a0 e1                                      mov r0, r5
003c3544  4f 6e 85 e2                                      add r6, r5, #0x4f0
003c3548  03 30 94 e7                                      ldr r3, [r4, r3]
003c354c  0c 60 86 e2                                      add r6, r6, #0xc
003c3550  00 80 93 e5                                      ldr r8, [r3]
003c3554  33 7f ff eb                                      bl #0x3a3228
003c3558  80 30 9f e5                                      ldr r3, [pc, #0x80]
003c355c  80 10 9f e5                                      ldr r1, [pc, #0x80]
003c3560  03 20 94 e7                                      ldr r2, [r4, r3]
003c3564  a0 30 a0 e3                                      mov r3, #0xa0
003c3568  93 80 23 e0                                      mla r3, r3, r0, r8
003c356c  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c3570  70 20 9f e5                                      ldr r2, [pc, #0x70]
003c3574  01 10 8f e0                                      add r1, pc, r1
003c3578  68 80 93 e5                                      ldr r8, [r3, #0x68]
003c357c  02 20 8f e0                                      add r2, pc, r2
003c3580  95 05 04 eb                                      bl #0x4c4bdc
003c3584  01 06 10 e2                                      ands r0, r0, #0x100000
003c3588  01 00 00 0a                                      beq #0x3c3594
003c358c  05 00 a0 e1                                      mov r0, r5
003c3590  92 87 ff eb                                      bl #0x3a53e0
003c3594  08 10 80 e0                                      add r1, r0, r8
003c3598  06 00 a0 e1                                      mov r0, r6
003c359c  6b f5 ff eb                                      bl #0x3c0b50
003c35a0  78 23 95 e5                                      ldr r2, [r5, #0x378]
003c35a4  07 30 94 e7                                      ldr r3, [r4, r7]
003c35a8  01 10 a0 e3                                      mov r1, #1
003c35ac  08 10 c2 e5                                      strb r1, [r2, #8]
003c35b0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c35b4  00 30 93 e5                                      ldr r3, [r3]
003c35b8  03 00 52 e1                                      cmp r2, r3
003c35bc  01 00 00 1a                                      bne #0x3c35c8
003c35c0  20 d0 8d e2                                      add sp, sp, #0x20
003c35c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c35c8  50 2b fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c35cc  b4 15 5d 00 ac 40 00 00 84 08 00 00 40 19 50 00  .byte 0xb4, 0x15, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x40, 0x19, 0x50, 0x00
003c35dc  44 48 00 00 f4 37 00 00 44 16 50 00 4c 16 50 00  .byte 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x44, 0x16, 0x50, 0x00, 0x4c, 0x16, 0x50, 0x00

; FUNCTION 0x003c53ec, declared_size=176, range_size=176, mode=arm
; class-group: CSRevived
; alias: _ZN9CSRevived6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSRevived::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c53ec  98 30 9f e5                                      ldr r3, [pc, #0x98]
003c53f0  98 10 9f e5                                      ldr r1, [pc, #0x98]
003c53f4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c53f8  03 30 8f e0                                      add r3, pc, r3
003c53fc  01 60 93 e7                                      ldr r6, [r3, r1]
003c5400  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
003c5404  02 40 a0 e1                                      mov r4, r2
003c5408  00 20 96 e5                                      ldr r2, [r6]
003c540c  01 70 93 e7                                      ldr r7, [r3, r1]
003c5410  24 d0 4d e2                                      sub sp, sp, #0x24
003c5414  1c 20 8d e5                                      str r2, [sp, #0x1c]
003c5418  07 00 a0 e1                                      mov r0, r7
003c541c  19 c9 fd eb                                      bl #0x337888
003c5420  70 10 9f e5                                      ldr r1, [pc, #0x70]
003c5424  04 50 8d e2                                      add r5, sp, #4
003c5428  0d 20 a0 e1                                      mov r2, sp
003c542c  01 10 8f e0                                      add r1, pc, r1
003c5430  05 00 a0 e1                                      mov r0, r5
003c5434  2c 3b fd eb                                      bl #0x3140ec
003c5438  05 10 a0 e1                                      mov r1, r5
003c543c  07 00 a0 e1                                      mov r0, r7
003c5440  90 c9 fd eb                                      bl #0x337a88
003c5444  05 00 a0 e1                                      mov r0, r5
003c5448  81 4b fd eb                                      bl #0x318254
003c544c  04 00 a0 e1                                      mov r0, r4
003c5450  00 10 a0 e3                                      mov r1, #0
003c5454  01 20 a0 e3                                      mov r2, #1
003c5458  53 81 ff eb                                      bl #0x3a59ac
003c545c  78 33 94 e5                                      ldr r3, [r4, #0x378]
003c5460  00 20 a0 e3                                      mov r2, #0
003c5464  04 00 a0 e1                                      mov r0, r4
003c5468  08 20 c3 e5                                      strb r2, [r3, #8]
003c546c  4b 7b ff eb                                      bl #0x3a41a0
003c5470  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c5474  00 30 96 e5                                      ldr r3, [r6]
003c5478  03 00 52 e1                                      cmp r2, r3
003c547c  01 00 00 1a                                      bne #0x3c5488
003c5480  24 d0 8d e2                                      add sp, sp, #0x24
003c5484  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c5488  a0 23 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c548c  98 f6 5c 00 ac 40 00 00 84 08 00 00 24 fa 4f 00  .byte 0x98, 0xf6, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x24, 0xfa, 0x4f, 0x00

; FUNCTION 0x003c8cec, declared_size=56, range_size=56, mode=arm
; class-group: CSRevived
; alias: _ZN9CSRevived6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSRevived::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8cec  04 e0 2d e5                                      str lr, [sp, #-4]!
003c8cf0  4f 0e 82 e2                                      add r0, r2, #0x4f0
003c8cf4  14 d0 4d e2                                      sub sp, sp, #0x14
003c8cf8  00 c0 a0 e3                                      mov ip, #0
003c8cfc  0c 00 80 e2                                      add r0, r0, #0xc
003c8d00  22 20 a0 e3                                      mov r2, #0x22
003c8d04  03 30 a0 e3                                      mov r3, #3
003c8d08  04 c0 8d e5                                      str ip, [sp, #4]
003c8d0c  08 c0 8d e5                                      str ip, [sp, #8]
003c8d10  0c c0 8d e5                                      str ip, [sp, #0xc]
003c8d14  00 c0 8d e5                                      str ip, [sp]
003c8d18  7e fb ff eb                                      bl #0x3c7b18
003c8d1c  14 d0 8d e2                                      add sp, sp, #0x14
003c8d20  00 80 bd e8                                      ldm sp!, {pc}
