; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003841a8, declared_size=12, range_size=12, mode=arm
; class-group: GSFlashMenu
; alias: _ZN11GSFlashMenu4DrawEPK12StateMachine
; demangled: GSFlashMenu::Draw(StateMachine const*)
; decoder-mode: arm
003841a8  04 00 90 e5                                      ldr r0, [r0, #4]
003841ac  00 10 a0 e3                                      mov r1, #0
003841b0  98 a9 02 ea                                      b #0x42e818

; FUNCTION 0x003841b4, declared_size=104, range_size=104, mode=arm
; class-group: GSFlashMenu
; alias: _ZN11GSFlashMenuC1Ev
; demangled: GSFlashMenu::GSFlashMenu()
; decoder-mode: arm
003841b4  58 30 9f e5                                      ldr r3, [pc, #0x58]
003841b8  58 10 9f e5                                      ldr r1, [pc, #0x58]
003841bc  70 40 2d e9                                      push {r4, r5, r6, lr}
003841c0  03 30 8f e0                                      add r3, pc, r3
003841c4  01 10 93 e7                                      ldr r1, [r3, r1]
003841c8  00 40 a0 e1                                      mov r4, r0
003841cc  00 50 a0 e3                                      mov r5, #0
003841d0  10 20 80 e2                                      add r2, r0, #0x10
003841d4  08 10 81 e2                                      add r1, r1, #8
003841d8  00 10 80 e5                                      str r1, [r0]
003841dc  02 00 a0 e1                                      mov r0, r2
003841e0  04 50 84 e5                                      str r5, [r4, #4]
003841e4  08 50 84 e5                                      str r5, [r4, #8]
003841e8  0c 50 84 e5                                      str r5, [r4, #0xc]
003841ec  20 20 84 e5                                      str r2, [r4, #0x20]
003841f0  24 20 84 e5                                      str r2, [r4, #0x24]
003841f4  10 10 a0 e3                                      mov r1, #0x10
003841f8  1f 35 fe eb                                      bl #0x31167c
003841fc  20 30 94 e5                                      ldr r3, [r4, #0x20]
00384200  04 00 a0 e1                                      mov r0, r4
00384204  00 50 c3 e5                                      strb r5, [r3]
00384208  29 50 c4 e5                                      strb r5, [r4, #0x29]
0038420c  28 50 c4 e5                                      strb r5, [r4, #0x28]
00384210  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00384214  d0 08 61 00 00 2c 00 00                          .byte 0xd0, 0x08, 0x61, 0x00, 0x00, 0x2c, 0x00, 0x00

; FUNCTION 0x0038421c, declared_size=104, range_size=104, mode=arm
; class-group: GSFlashMenu
; alias: _ZN11GSFlashMenuC2Ev
; demangled: GSFlashMenu::GSFlashMenu()
; decoder-mode: arm
0038421c  58 30 9f e5                                      ldr r3, [pc, #0x58]
00384220  58 10 9f e5                                      ldr r1, [pc, #0x58]
00384224  70 40 2d e9                                      push {r4, r5, r6, lr}
00384228  03 30 8f e0                                      add r3, pc, r3
0038422c  01 10 93 e7                                      ldr r1, [r3, r1]
00384230  00 40 a0 e1                                      mov r4, r0
00384234  00 50 a0 e3                                      mov r5, #0
00384238  10 20 80 e2                                      add r2, r0, #0x10
0038423c  08 10 81 e2                                      add r1, r1, #8
00384240  00 10 80 e5                                      str r1, [r0]
00384244  02 00 a0 e1                                      mov r0, r2
00384248  04 50 84 e5                                      str r5, [r4, #4]
0038424c  08 50 84 e5                                      str r5, [r4, #8]
00384250  0c 50 84 e5                                      str r5, [r4, #0xc]
00384254  20 20 84 e5                                      str r2, [r4, #0x20]
00384258  24 20 84 e5                                      str r2, [r4, #0x24]
0038425c  10 10 a0 e3                                      mov r1, #0x10
00384260  05 35 fe eb                                      bl #0x31167c
00384264  20 30 94 e5                                      ldr r3, [r4, #0x20]
00384268  04 00 a0 e1                                      mov r0, r4
0038426c  00 50 c3 e5                                      strb r5, [r3]
00384270  29 50 c4 e5                                      strb r5, [r4, #0x29]
00384274  28 50 c4 e5                                      strb r5, [r4, #0x28]
00384278  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0038427c  68 08 61 00 00 2c 00 00                          .byte 0x68, 0x08, 0x61, 0x00, 0x00, 0x2c, 0x00, 0x00

; FUNCTION 0x00384284, declared_size=52, range_size=52, mode=arm
; class-group: GSFlashMenu
; alias: _ZN11GSFlashMenuD1Ev
; demangled: GSFlashMenu::~GSFlashMenu()
; decoder-mode: arm
00384284  24 30 9f e5                                      ldr r3, [pc, #0x24]
00384288  24 20 9f e5                                      ldr r2, [pc, #0x24]
0038428c  10 40 2d e9                                      push {r4, lr}
00384290  03 30 8f e0                                      add r3, pc, r3
00384294  02 20 93 e7                                      ldr r2, [r3, r2]
00384298  00 40 a0 e1                                      mov r4, r0
0038429c  08 20 82 e2                                      add r2, r2, #8
003842a0  10 20 80 e4                                      str r2, [r0], #0x10
003842a4  c0 3d fe eb                                      bl #0x3139ac
003842a8  04 00 a0 e1                                      mov r0, r4
003842ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003842b0  00 08 61 00 00 2c 00 00                          .byte 0x00, 0x08, 0x61, 0x00, 0x00, 0x2c, 0x00, 0x00

; FUNCTION 0x003842b8, declared_size=52, range_size=52, mode=arm
; class-group: GSFlashMenu
; alias: _ZN11GSFlashMenuD2Ev
; demangled: GSFlashMenu::~GSFlashMenu()
; decoder-mode: arm
003842b8  24 30 9f e5                                      ldr r3, [pc, #0x24]
003842bc  24 20 9f e5                                      ldr r2, [pc, #0x24]
003842c0  10 40 2d e9                                      push {r4, lr}
003842c4  03 30 8f e0                                      add r3, pc, r3
003842c8  02 20 93 e7                                      ldr r2, [r3, r2]
003842cc  00 40 a0 e1                                      mov r4, r0
003842d0  08 20 82 e2                                      add r2, r2, #8
003842d4  10 20 80 e4                                      str r2, [r0], #0x10
003842d8  b3 3d fe eb                                      bl #0x3139ac
003842dc  04 00 a0 e1                                      mov r0, r4
003842e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003842e4  cc 07 61 00 00 2c 00 00                          .byte 0xcc, 0x07, 0x61, 0x00, 0x00, 0x2c, 0x00, 0x00

; FUNCTION 0x003842ec, declared_size=28, range_size=28, mode=arm
; class-group: GSFlashMenu
; alias: _ZN11GSFlashMenuD0Ev
; demangled: GSFlashMenu::~GSFlashMenu()
; decoder-mode: arm
003842ec  10 40 2d e9                                      push {r4, lr}
003842f0  00 40 a0 e1                                      mov r4, r0
003842f4  e2 ff ff eb                                      bl #0x384284
003842f8  04 00 a0 e1                                      mov r0, r4
003842fc  4f 30 fe eb                                      bl #0x310440
00384300  04 00 a0 e1                                      mov r0, r4
00384304  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00384460, declared_size=408, range_size=408, mode=arm
; class-group: GSFlashMenu
; alias: _ZN11GSFlashMenu6UpdateEP12StateMachined
; demangled: GSFlashMenu::Update(StateMachine*, double)
; decoder-mode: arm
00384460  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
00384464  78 51 9f e5                                      ldr r5, [pc, #0x178]
00384468  78 61 9f e5                                      ldr r6, [pc, #0x178]
0038446c  00 40 a0 e1                                      mov r4, r0
00384470  05 50 8f e0                                      add r5, pc, r5
00384474  06 00 95 e7                                      ldr r0, [r5, r6]
00384478  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0038447c  01 70 a0 e1                                      mov r7, r1
00384480  00 10 90 e5                                      ldr r1, [r0]
00384484  24 d0 4d e2                                      sub sp, sp, #0x24
00384488  00 00 5c e3                                      cmp ip, #0
0038448c  02 80 a0 e1                                      mov r8, r2
00384490  03 90 a0 e1                                      mov sb, r3
00384494  1c 10 8d e5                                      str r1, [sp, #0x1c]
00384498  17 00 00 0a                                      beq #0x3844fc
0038449c  08 10 94 e5                                      ldr r1, [r4, #8]
003844a0  01 00 5c e1                                      cmp ip, r1
003844a4  14 00 00 0a                                      beq #0x3844fc
003844a8  00 00 51 e3                                      cmp r1, #0
003844ac  08 00 00 0a                                      beq #0x3844d4
003844b0  04 30 94 e5                                      ldr r3, [r4, #4]
003844b4  08 10 81 e2                                      add r1, r1, #8
003844b8  00 20 a0 e3                                      mov r2, #0
003844bc  f4 30 93 e5                                      ldr r3, [r3, #0xf4]
003844c0  03 00 a0 e1                                      mov r0, r3
003844c4  00 30 93 e5                                      ldr r3, [r3]
003844c8  0f e0 a0 e1                                      mov lr, pc
003844cc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
003844d0  0c c0 94 e5                                      ldr ip, [r4, #0xc]
003844d4  04 30 94 e5                                      ldr r3, [r4, #4]
003844d8  00 20 a0 e3                                      mov r2, #0
003844dc  0c 20 84 e5                                      str r2, [r4, #0xc]
003844e0  08 c0 84 e5                                      str ip, [r4, #8]
003844e4  f4 30 93 e5                                      ldr r3, [r3, #0xf4]
003844e8  0c 10 a0 e1                                      mov r1, ip
003844ec  03 00 a0 e1                                      mov r0, r3
003844f0  00 30 93 e5                                      ldr r3, [r3]
003844f4  0f e0 a0 e1                                      mov lr, pc
003844f8  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003844fc  10 20 97 e5                                      ldr r2, [r7, #0x10]
00384500  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00384504  02 30 63 e0                                      rsb r3, r3, r2
00384508  c3 31 b0 e1                                      asrs r3, r3, #3
0038450c  08 30 12 15                                      ldrne r3, [r2, #-8]
00384510  03 00 54 e1                                      cmp r4, r3
00384514  12 00 00 0a                                      beq #0x384564
00384518  04 00 94 e5                                      ldr r0, [r4, #4]
0038451c  00 10 a0 e3                                      mov r1, #0
00384520  37 a9 02 eb                                      bl #0x42ea04
00384524  9a e4 11 eb                                      bl #0x7fd794
00384528  05 30 d0 e5                                      ldrb r3, [r0, #5]
0038452c  00 00 53 e3                                      cmp r3, #0
00384530  06 00 00 1a                                      bne #0x384550
00384534  06 30 95 e7                                      ldr r3, [r5, r6]
00384538  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0038453c  00 30 93 e5                                      ldr r3, [r3]
00384540  03 00 52 e1                                      cmp r2, r3
00384544  25 00 00 1a                                      bne #0x3845e0
00384548  24 d0 8d e2                                      add sp, sp, #0x24
0038454c  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
00384550  07 00 a0 e1                                      mov r0, r7
00384554  08 20 a0 e1                                      mov r2, r8
00384558  09 30 a0 e1                                      mov r3, sb
0038455c  ab d6 fe eb                                      bl #0x33a010
00384560  f3 ff ff ea                                      b #0x384534
00384564  08 00 94 e5                                      ldr r0, [r4, #8]
00384568  00 00 50 e3                                      cmp r0, #0
0038456c  02 00 00 0a                                      beq #0x38457c
00384570  9f 6b 02 eb                                      bl #0x41f3f4
00384574  00 00 50 e3                                      cmp r0, #0
00384578  e6 ff ff 1a                                      bne #0x384518
0038457c  68 30 9f e5                                      ldr r3, [pc, #0x68]
00384580  04 70 8d e2                                      add r7, sp, #4
00384584  03 80 95 e7                                      ldr r8, [r5, r3]
00384588  08 00 a0 e1                                      mov r0, r8
0038458c  bd cc fe eb                                      bl #0x337888
00384590  58 10 9f e5                                      ldr r1, [pc, #0x58]
00384594  07 00 a0 e1                                      mov r0, r7
00384598  14 70 8d e5                                      str r7, [sp, #0x14]
0038459c  01 10 8f e0                                      add r1, pc, r1
003845a0  14 10 81 e2                                      add r1, r1, #0x14
003845a4  18 70 8d e5                                      str r7, [sp, #0x18]
003845a8  98 ff ff eb                                      bl #0x384410
003845ac  07 10 a0 e1                                      mov r1, r7
003845b0  08 00 a0 e1                                      mov r0, r8
003845b4  33 cd fe eb                                      bl #0x337a88
003845b8  07 00 a0 e1                                      mov r0, r7
003845bc  fa 3c fe eb                                      bl #0x3139ac
003845c0  01 30 a0 e3                                      mov r3, #1
003845c4  28 30 c4 e5                                      strb r3, [r4, #0x28]
003845c8  24 30 9f e5                                      ldr r3, [pc, #0x24]
003845cc  00 10 a0 e3                                      mov r1, #0
003845d0  03 30 95 e7                                      ldr r3, [r5, r3]
003845d4  18 00 93 e5                                      ldr r0, [r3, #0x18]
003845d8  7b d7 fe eb                                      bl #0x33a3cc
003845dc  d4 ff ff ea                                      b #0x384534
003845e0  4a 27 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003845e4  20 06 61 00 ac 40 00 00 84 08 00 00 24 d8 53 00  .byte 0x20, 0x06, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x24, 0xd8, 0x53, 0x00
003845f4  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003845f8, declared_size=260, range_size=260, mode=arm
; class-group: GSFlashMenu
; alias: _ZN11GSFlashMenu4DtorEPK12StateMachine
; demangled: GSFlashMenu::Dtor(StateMachine const*)
; decoder-mode: arm
003845f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003845fc  e4 40 9f e5                                      ldr r4, [pc, #0xe4]
00384600  e4 60 9f e5                                      ldr r6, [pc, #0xe4]
00384604  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
00384608  04 40 8f e0                                      add r4, pc, r4
0038460c  06 30 94 e7                                      ldr r3, [r4, r6]
00384610  02 80 94 e7                                      ldr r8, [r4, r2]
00384614  20 d0 4d e2                                      sub sp, sp, #0x20
00384618  00 30 93 e5                                      ldr r3, [r3]
0038461c  00 50 a0 e1                                      mov r5, r0
00384620  08 00 a0 e1                                      mov r0, r8
00384624  1c 30 8d e5                                      str r3, [sp, #0x1c]
00384628  96 cc fe eb                                      bl #0x337888
0038462c  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
00384630  04 70 8d e2                                      add r7, sp, #4
00384634  07 00 a0 e1                                      mov r0, r7
00384638  01 10 8f e0                                      add r1, pc, r1
0038463c  14 10 81 e2                                      add r1, r1, #0x14
00384640  14 70 8d e5                                      str r7, [sp, #0x14]
00384644  18 70 8d e5                                      str r7, [sp, #0x18]
00384648  70 ff ff eb                                      bl #0x384410
0038464c  07 10 a0 e1                                      mov r1, r7
00384650  08 00 a0 e1                                      mov r0, r8
00384654  0b cd fe eb                                      bl #0x337a88
00384658  07 00 a0 e1                                      mov r0, r7
0038465c  d2 3c fe eb                                      bl #0x3139ac
00384660  90 30 9f e5                                      ldr r3, [pc, #0x90]
00384664  03 00 94 e7                                      ldr r0, [r4, r3]
00384668  c9 6b fe eb                                      bl #0x31f594
0038466c  00 00 50 e3                                      cmp r0, #0
00384670  01 30 a0 13                                      movne r3, #1
00384674  98 31 c0 15                                      strbne r3, [r0, #0x198]
00384678  08 00 95 e5                                      ldr r0, [r5, #8]
0038467c  00 00 50 e3                                      cmp r0, #0
00384680  02 00 00 0a                                      beq #0x384690
00384684  5a 6b 02 eb                                      bl #0x41f3f4
00384688  00 00 50 e3                                      cmp r0, #0
0038468c  0a 00 00 1a                                      bne #0x3846bc
00384690  00 20 a0 e3                                      mov r2, #0
00384694  06 30 94 e7                                      ldr r3, [r4, r6]
00384698  08 20 85 e5                                      str r2, [r5, #8]
0038469c  01 20 a0 e3                                      mov r2, #1
003846a0  28 20 c5 e5                                      strb r2, [r5, #0x28]
003846a4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003846a8  00 30 93 e5                                      ldr r3, [r3]
003846ac  03 00 52 e1                                      cmp r2, r3
003846b0  0b 00 00 1a                                      bne #0x3846e4
003846b4  20 d0 8d e2                                      add sp, sp, #0x20
003846b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003846bc  04 30 95 e5                                      ldr r3, [r5, #4]
003846c0  08 10 95 e5                                      ldr r1, [r5, #8]
003846c4  00 20 a0 e3                                      mov r2, #0
003846c8  f4 30 93 e5                                      ldr r3, [r3, #0xf4]
003846cc  08 10 81 e2                                      add r1, r1, #8
003846d0  03 00 a0 e1                                      mov r0, r3
003846d4  00 30 93 e5                                      ldr r3, [r3]
003846d8  0f e0 a0 e1                                      mov lr, pc
003846dc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
003846e0  ea ff ff ea                                      b #0x384690
003846e4  09 27 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003846e8  88 04 61 00 ac 40 00 00 84 08 00 00 88 d7 53 00  .byte 0x88, 0x04, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x88, 0xd7, 0x53, 0x00
003846f8  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003846fc, declared_size=256, range_size=256, mode=arm
; class-group: GSFlashMenu
; alias: _ZN11GSFlashMenu4CtorEPK12StateMachine
; demangled: GSFlashMenu::Ctor(StateMachine const*)
; decoder-mode: arm
003846fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00384700  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
00384704  e0 70 9f e5                                      ldr r7, [pc, #0xe0]
00384708  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
0038470c  04 40 8f e0                                      add r4, pc, r4
00384710  07 30 94 e7                                      ldr r3, [r4, r7]
00384714  02 80 94 e7                                      ldr r8, [r4, r2]
00384718  20 d0 4d e2                                      sub sp, sp, #0x20
0038471c  00 30 93 e5                                      ldr r3, [r3]
00384720  00 50 a0 e1                                      mov r5, r0
00384724  08 00 a0 e1                                      mov r0, r8
00384728  1c 30 8d e5                                      str r3, [sp, #0x1c]
0038472c  55 cc fe eb                                      bl #0x337888
00384730  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
00384734  04 60 8d e2                                      add r6, sp, #4
00384738  06 00 a0 e1                                      mov r0, r6
0038473c  01 10 8f e0                                      add r1, pc, r1
00384740  14 10 81 e2                                      add r1, r1, #0x14
00384744  14 60 8d e5                                      str r6, [sp, #0x14]
00384748  18 60 8d e5                                      str r6, [sp, #0x18]
0038474c  2f ff ff eb                                      bl #0x384410
00384750  06 10 a0 e1                                      mov r1, r6
00384754  08 00 a0 e1                                      mov r0, r8
00384758  ca cc fe eb                                      bl #0x337a88
0038475c  06 00 a0 e1                                      mov r0, r6
00384760  91 3c fe eb                                      bl #0x3139ac
00384764  c8 a0 02 eb                                      bl #0x42ca8c
00384768  29 30 d5 e5                                      ldrb r3, [r5, #0x29]
0038476c  04 00 85 e5                                      str r0, [r5, #4]
00384770  00 00 53 e3                                      cmp r3, #0
00384774  11 00 00 1a                                      bne #0x3847c0
00384778  08 10 95 e5                                      ldr r1, [r5, #8]
0038477c  00 00 51 e3                                      cmp r1, #0
00384780  05 00 00 0a                                      beq #0x38479c
00384784  04 30 95 e5                                      ldr r3, [r5, #4]
00384788  f4 30 93 e5                                      ldr r3, [r3, #0xf4]
0038478c  03 00 a0 e1                                      mov r0, r3
00384790  00 30 93 e5                                      ldr r3, [r3]
00384794  0f e0 a0 e1                                      mov lr, pc
00384798  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0038479c  07 30 94 e7                                      ldr r3, [r4, r7]
003847a0  00 20 a0 e3                                      mov r2, #0
003847a4  28 20 c5 e5                                      strb r2, [r5, #0x28]
003847a8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003847ac  00 30 93 e5                                      ldr r3, [r3]
003847b0  03 00 52 e1                                      cmp r2, r3
003847b4  0a 00 00 1a                                      bne #0x3847e4
003847b8  20 d0 8d e2                                      add sp, sp, #0x20
003847bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003847c0  45 b7 02 eb                                      bl #0x4324dc
003847c4  b0 a0 02 eb                                      bl #0x42ca8c
003847c8  28 10 9f e5                                      ldr r1, [pc, #0x28]
003847cc  01 10 8f e0                                      add r1, pc, r1
003847d0  86 a2 02 eb                                      bl #0x42d1f0
003847d4  00 30 a0 e3                                      mov r3, #0
003847d8  0c 00 85 e5                                      str r0, [r5, #0xc]
003847dc  29 30 c5 e5                                      strb r3, [r5, #0x29]
003847e0  e4 ff ff ea                                      b #0x384778
003847e4  c9 26 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003847e8  84 03 61 00 ac 40 00 00 84 08 00 00 84 d6 53 00  .byte 0x84, 0x03, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x84, 0xd6, 0x53, 0x00
003847f8  04 a9 53 00                                      .byte 0x04, 0xa9, 0x53, 0x00
