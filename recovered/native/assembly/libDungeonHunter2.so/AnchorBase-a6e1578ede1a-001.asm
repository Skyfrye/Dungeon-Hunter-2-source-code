; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047706c, declared_size=4, range_size=4, mode=arm
; class-group: AnchorBase
; alias: _ZN10AnchorBaseD2Ev
; demangled: AnchorBase::~AnchorBase()
; decoder-mode: arm
0047706c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00477070, declared_size=4, range_size=4, mode=arm
; class-group: AnchorBase
; alias: _ZN10AnchorBaseD1Ev
; demangled: AnchorBase::~AnchorBase()
; decoder-mode: arm
00477070  1e ff 2f e1                                      bx lr

; FUNCTION 0x00477074, declared_size=32, range_size=32, mode=arm
; class-group: AnchorBase
; alias: _ZN10AnchorBase5ResetEv
; demangled: AnchorBase::Reset()
; decoder-mode: arm
00477074  08 30 90 e5                                      ldr r3, [r0, #8]
00477078  60 21 93 e5                                      ldr r2, [r3, #0x160]
0047707c  0c 20 80 e5                                      str r2, [r0, #0xc]
00477080  64 21 93 e5                                      ldr r2, [r3, #0x164]
00477084  10 20 80 e5                                      str r2, [r0, #0x10]
00477088  68 31 93 e5                                      ldr r3, [r3, #0x168]
0047708c  14 30 80 e5                                      str r3, [r0, #0x14]
00477090  1e ff 2f e1                                      bx lr

; FUNCTION 0x00477094, declared_size=32, range_size=32, mode=arm
; class-group: AnchorBase
; alias: _ZN10AnchorBase6UpdateEv
; demangled: AnchorBase::Update()
; decoder-mode: arm
00477094  08 30 90 e5                                      ldr r3, [r0, #8]
00477098  60 21 93 e5                                      ldr r2, [r3, #0x160]
0047709c  0c 20 80 e5                                      str r2, [r0, #0xc]
004770a0  64 21 93 e5                                      ldr r2, [r3, #0x164]
004770a4  10 20 80 e5                                      str r2, [r0, #0x10]
004770a8  68 31 93 e5                                      ldr r3, [r3, #0x168]
004770ac  14 30 80 e5                                      str r3, [r0, #0x14]
004770b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004770b4, declared_size=28, range_size=28, mode=arm
; class-group: AnchorBase
; alias: _ZN10AnchorBaseD0Ev
; demangled: AnchorBase::~AnchorBase()
; decoder-mode: arm
004770b4  10 40 2d e9                                      push {r4, lr}
004770b8  00 40 a0 e1                                      mov r4, r0
004770bc  eb ff ff eb                                      bl #0x477070
004770c0  04 00 a0 e1                                      mov r0, r4
004770c4  dd 64 fa eb                                      bl #0x310440
004770c8  04 00 a0 e1                                      mov r0, r4
004770cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004770d0, declared_size=208, range_size=208, mode=arm
; class-group: AnchorBase
; alias: _ZN10AnchorBaseC1EP10GameObjectNS_10AnchorTypeE
; demangled: AnchorBase::AnchorBase(GameObject*, AnchorBase::AnchorType)
; decoder-mode: arm
004770d0  ac 30 9f e5                                      ldr r3, [pc, #0xac]
004770d4  10 40 2d e9                                      push {r4, lr}
004770d8  a8 e0 9f e5                                      ldr lr, [pc, #0xa8]
004770dc  03 30 8f e0                                      add r3, pc, r3
004770e0  00 c0 a0 e3                                      mov ip, #0
004770e4  0e e0 93 e7                                      ldr lr, [r3, lr]
004770e8  04 20 80 e5                                      str r2, [r0, #4]
004770ec  00 00 51 e3                                      cmp r1, #0
004770f0  08 e0 8e e2                                      add lr, lr, #8
004770f4  01 20 a0 e3                                      mov r2, #1
004770f8  08 d0 4d e2                                      sub sp, sp, #8
004770fc  00 40 a0 e1                                      mov r4, r0
00477100  00 e0 80 e5                                      str lr, [r0]
00477104  14 c0 80 e5                                      str ip, [r0, #0x14]
00477108  18 20 c0 e5                                      strb r2, [r0, #0x18]
0047710c  08 10 80 e5                                      str r1, [r0, #8]
00477110  0c c0 80 e5                                      str ip, [r0, #0xc]
00477114  10 c0 80 e5                                      str ip, [r0, #0x10]
00477118  04 00 00 0a                                      beq #0x477130
0047711c  04 00 a0 e1                                      mov r0, r4
00477120  d3 ff ff eb                                      bl #0x477074
00477124  04 00 a0 e1                                      mov r0, r4
00477128  08 d0 8d e2                                      add sp, sp, #8
0047712c  10 80 bd e8                                      pop {r4, pc}
00477130  54 20 9f e5                                      ldr r2, [pc, #0x54]
00477134  02 20 93 e7                                      ldr r2, [r3, r2]
00477138  00 20 92 e5                                      ldr r2, [r2]
0047713c  02 00 52 e3                                      cmp r2, #2
00477140  00 10 81 05                                      streq r1, [r1]
00477144  f4 ff ff 0a                                      beq #0x47711c
00477148  01 00 52 e3                                      cmp r2, #1
0047714c  f2 ff ff 1a                                      bne #0x47711c
00477150  38 00 9f e5                                      ldr r0, [pc, #0x38]
00477154  38 10 9f e5                                      ldr r1, [pc, #0x38]
00477158  38 20 9f e5                                      ldr r2, [pc, #0x38]
0047715c  00 00 93 e7                                      ldr r0, [r3, r0]
00477160  34 30 9f e5                                      ldr r3, [pc, #0x34]
00477164  18 c0 a0 e3                                      mov ip, #0x18
00477168  01 10 8f e0                                      add r1, pc, r1
0047716c  02 20 8f e0                                      add r2, pc, r2
00477170  03 30 8f e0                                      add r3, pc, r3
00477174  a8 00 80 e2                                      add r0, r0, #0xa8
00477178  00 c0 8d e5                                      str ip, [sp]
0047717c  a0 5b fa eb                                      bl #0x30e004
00477180  e5 ff ff ea                                      b #0x47711c
; mapping-symbol data/literal pool
00477184  b4 d9 51 00 bc 1a 00 00 c0 39 00 00 c0 19 00 00  .byte 0xb4, 0xd9, 0x51, 0x00, 0xbc, 0x1a, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00477194  70 72 44 00 2c b2 44 00 78 67 45 00              .byte 0x70, 0x72, 0x44, 0x00, 0x2c, 0xb2, 0x44, 0x00, 0x78, 0x67, 0x45, 0x00

; FUNCTION 0x004771a0, declared_size=208, range_size=208, mode=arm
; class-group: AnchorBase
; alias: _ZN10AnchorBaseC2EP10GameObjectNS_10AnchorTypeE
; demangled: AnchorBase::AnchorBase(GameObject*, AnchorBase::AnchorType)
; decoder-mode: arm
004771a0  ac 30 9f e5                                      ldr r3, [pc, #0xac]
004771a4  10 40 2d e9                                      push {r4, lr}
004771a8  a8 e0 9f e5                                      ldr lr, [pc, #0xa8]
004771ac  03 30 8f e0                                      add r3, pc, r3
004771b0  00 c0 a0 e3                                      mov ip, #0
004771b4  0e e0 93 e7                                      ldr lr, [r3, lr]
004771b8  04 20 80 e5                                      str r2, [r0, #4]
004771bc  00 00 51 e3                                      cmp r1, #0
004771c0  08 e0 8e e2                                      add lr, lr, #8
004771c4  01 20 a0 e3                                      mov r2, #1
004771c8  08 d0 4d e2                                      sub sp, sp, #8
004771cc  00 40 a0 e1                                      mov r4, r0
004771d0  00 e0 80 e5                                      str lr, [r0]
004771d4  14 c0 80 e5                                      str ip, [r0, #0x14]
004771d8  18 20 c0 e5                                      strb r2, [r0, #0x18]
004771dc  08 10 80 e5                                      str r1, [r0, #8]
004771e0  0c c0 80 e5                                      str ip, [r0, #0xc]
004771e4  10 c0 80 e5                                      str ip, [r0, #0x10]
004771e8  04 00 00 0a                                      beq #0x477200
004771ec  04 00 a0 e1                                      mov r0, r4
004771f0  9f ff ff eb                                      bl #0x477074
004771f4  04 00 a0 e1                                      mov r0, r4
004771f8  08 d0 8d e2                                      add sp, sp, #8
004771fc  10 80 bd e8                                      pop {r4, pc}
00477200  54 20 9f e5                                      ldr r2, [pc, #0x54]
00477204  02 20 93 e7                                      ldr r2, [r3, r2]
00477208  00 20 92 e5                                      ldr r2, [r2]
0047720c  02 00 52 e3                                      cmp r2, #2
00477210  00 10 81 05                                      streq r1, [r1]
00477214  f4 ff ff 0a                                      beq #0x4771ec
00477218  01 00 52 e3                                      cmp r2, #1
0047721c  f2 ff ff 1a                                      bne #0x4771ec
00477220  38 00 9f e5                                      ldr r0, [pc, #0x38]
00477224  38 10 9f e5                                      ldr r1, [pc, #0x38]
00477228  38 20 9f e5                                      ldr r2, [pc, #0x38]
0047722c  00 00 93 e7                                      ldr r0, [r3, r0]
00477230  34 30 9f e5                                      ldr r3, [pc, #0x34]
00477234  18 c0 a0 e3                                      mov ip, #0x18
00477238  01 10 8f e0                                      add r1, pc, r1
0047723c  02 20 8f e0                                      add r2, pc, r2
00477240  03 30 8f e0                                      add r3, pc, r3
00477244  a8 00 80 e2                                      add r0, r0, #0xa8
00477248  00 c0 8d e5                                      str ip, [sp]
0047724c  6c 5b fa eb                                      bl #0x30e004
00477250  e5 ff ff ea                                      b #0x4771ec
; mapping-symbol data/literal pool
00477254  e4 d8 51 00 bc 1a 00 00 c0 39 00 00 c0 19 00 00  .byte 0xe4, 0xd8, 0x51, 0x00, 0xbc, 0x1a, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00477264  a0 71 44 00 5c b1 44 00 a8 66 45 00              .byte 0xa0, 0x71, 0x44, 0x00, 0x5c, 0xb1, 0x44, 0x00, 0xa8, 0x66, 0x45, 0x00
