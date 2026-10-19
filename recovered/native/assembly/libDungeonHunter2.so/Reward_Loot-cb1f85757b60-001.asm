; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004828bc, declared_size=20, range_size=20, mode=arm
; class-group: Reward_Loot
; alias: _ZN11Reward_Loot7CompileEv
; demangled: Reward_Loot::Compile()
; decoder-mode: arm
004828bc  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004828c0  01 20 a0 e3                                      mov r2, #1
004828c4  08 20 c0 e5                                      strb r2, [r0, #8]
004828c8  14 30 80 e5                                      str r3, [r0, #0x14]
004828cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482a3c, declared_size=52, range_size=52, mode=arm
; class-group: Reward_Loot
; alias: _ZN11Reward_LootD1Ev
; demangled: Reward_Loot::~Reward_Loot()
; decoder-mode: arm
00482a3c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00482a40  24 20 9f e5                                      ldr r2, [pc, #0x24]
00482a44  10 40 2d e9                                      push {r4, lr}
00482a48  03 30 8f e0                                      add r3, pc, r3
00482a4c  02 20 93 e7                                      ldr r2, [r3, r2]
00482a50  00 40 a0 e1                                      mov r4, r0
00482a54  08 20 82 e2                                      add r2, r2, #8
00482a58  00 20 80 e5                                      str r2, [r0]
00482a5c  a1 ff ff eb                                      bl #0x4828e8
00482a60  04 00 a0 e1                                      mov r0, r4
00482a64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00482a68  48 20 51 00 08 48 00 00                          .byte 0x48, 0x20, 0x51, 0x00, 0x08, 0x48, 0x00, 0x00

; FUNCTION 0x00483088, declared_size=216, range_size=216, mode=arm
; class-group: Reward_Loot
; alias: _ZN11Reward_Loot34DBG_TraceDetailedRewardInformationEP7__sFILE
; demangled: Reward_Loot::DBG_TraceDetailedRewardInformation(__sFILE*)
; decoder-mode: arm
00483088  70 40 2d e9                                      push {r4, r5, r6, lr}
0048308c  00 60 a0 e1                                      mov r6, r0
00483090  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
00483094  01 30 a0 e1                                      mov r3, r1
00483098  01 50 a0 e1                                      mov r5, r1
0048309c  19 20 a0 e3                                      mov r2, #0x19
004830a0  01 10 a0 e3                                      mov r1, #1
004830a4  00 00 8f e0                                      add r0, pc, r0
004830a8  90 40 9f e5                                      ldr r4, [pc, #0x90]
004830ac  39 2d fa eb                                      bl #0x30e598
004830b0  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
004830b4  04 40 8f e0                                      add r4, pc, r4
004830b8  14 20 96 e5                                      ldr r2, [r6, #0x14]
004830bc  03 30 94 e7                                      ldr r3, [r4, r3]
004830c0  80 10 9f e5                                      ldr r1, [pc, #0x80]
004830c4  04 20 92 e5                                      ldr r2, [r2, #4]
004830c8  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004830cc  01 10 8f e0                                      add r1, pc, r1
004830d0  8c 06 01 eb                                      bl #0x4c4b08
004830d4  70 10 9f e5                                      ldr r1, [pc, #0x70]
004830d8  00 20 a0 e1                                      mov r2, r0
004830dc  05 00 a0 e1                                      mov r0, r5
004830e0  01 10 8f e0                                      add r1, pc, r1
004830e4  c6 2b fa eb                                      bl #0x30e004
004830e8  14 30 96 e5                                      ldr r3, [r6, #0x14]
004830ec  0c 30 93 e5                                      ldr r3, [r3, #0xc]
004830f0  00 00 53 e3                                      cmp r3, #0
004830f4  09 00 00 ba                                      blt #0x483120
004830f8  50 20 9f e5                                      ldr r2, [pc, #0x50]
004830fc  02 20 94 e7                                      ldr r2, [r4, r2]
00483100  00 20 92 e5                                      ldr r2, [r2]
00483104  02 00 53 e1                                      cmp r3, r2
00483108  04 00 00 2a                                      bhs #0x483120
0048310c  40 20 9f e5                                      ldr r2, [pc, #0x40]
00483110  02 20 94 e7                                      ldr r2, [r4, r2]
00483114  00 20 92 e5                                      ldr r2, [r2]
00483118  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0048311c  01 00 00 ea                                      b #0x483128
00483120  30 20 9f e5                                      ldr r2, [pc, #0x30]
00483124  02 20 8f e0                                      add r2, pc, r2
00483128  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0048312c  05 00 a0 e1                                      mov r0, r5
00483130  01 10 8f e0                                      add r1, pc, r1
00483134  70 40 bd e8                                      pop {r4, r5, r6, lr}
00483138  b1 2b fa ea                                      b #0x30e004
; mapping-symbol data/literal pool
0048313c  94 b3 44 00 dc 19 51 00 f4 37 00 00 0c b3 44 00  .byte 0x94, 0xb3, 0x44, 0x00, 0xdc, 0x19, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x0c, 0xb3, 0x44, 0x00
0048314c  a8 ac 44 00 20 35 00 00 78 2e 00 00 ec c6 43 00  .byte 0xa8, 0xac, 0x44, 0x00, 0x20, 0x35, 0x00, 0x00, 0x78, 0x2e, 0x00, 0x00, 0xec, 0xc6, 0x43, 0x00
0048315c  28 b3 44 00                                      .byte 0x28, 0xb3, 0x44, 0x00

; FUNCTION 0x004832ec, declared_size=68, range_size=68, mode=arm
; class-group: Reward_Loot
; alias: _ZN11Reward_Loot4GiveEv
; demangled: Reward_Loot::Give()
; decoder-mode: arm
004832ec  04 e0 2d e5                                      str lr, [sp, #-4]!
004832f0  08 30 d0 e5                                      ldrb r3, [r0, #8]
004832f4  0c d0 4d e2                                      sub sp, sp, #0xc
004832f8  00 00 53 e3                                      cmp r3, #0
004832fc  03 00 a0 01                                      moveq r0, r3
00483300  08 00 00 0a                                      beq #0x483328
00483304  10 10 90 e5                                      ldr r1, [r0, #0x10]
00483308  14 30 90 e5                                      ldr r3, [r0, #0x14]
0048330c  00 c0 e0 e3                                      mvn ip, #0
00483310  01 20 a0 e1                                      mov r2, r1
00483314  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00483318  01 30 a0 e1                                      mov r3, r1
0048331c  00 c0 8d e5                                      str ip, [sp]
00483320  68 a6 fd eb                                      bl #0x3eccc8
00483324  01 00 a0 e3                                      mov r0, #1
00483328  0c d0 8d e2                                      add sp, sp, #0xc
0048332c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00483848, declared_size=60, range_size=60, mode=arm
; class-group: Reward_Loot
; alias: _ZN11Reward_LootD0Ev
; demangled: Reward_Loot::~Reward_Loot()
; decoder-mode: arm
00483848  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0048384c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00483850  10 40 2d e9                                      push {r4, lr}
00483854  03 30 8f e0                                      add r3, pc, r3
00483858  02 20 93 e7                                      ldr r2, [r3, r2]
0048385c  00 40 a0 e1                                      mov r4, r0
00483860  08 20 82 e2                                      add r2, r2, #8
00483864  00 20 80 e5                                      str r2, [r0]
00483868  1e fc ff eb                                      bl #0x4828e8
0048386c  04 00 a0 e1                                      mov r0, r4
00483870  f2 32 fa eb                                      bl #0x310440
00483874  04 00 a0 e1                                      mov r0, r4
00483878  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048387c  3c 12 51 00 08 48 00 00                          .byte 0x3c, 0x12, 0x51, 0x00, 0x08, 0x48, 0x00, 0x00
