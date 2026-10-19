; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004556c4, declared_size=68, range_size=68, mode=arm
; class-group: Script_ShowFlash
; alias: _ZNK16Script_ShowFlash10IsBlockingEv
; demangled: Script_ShowFlash::IsBlocking() const
; decoder-mode: arm
004556c4  10 20 90 e5                                      ldr r2, [r0, #0x10]
004556c8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004556cc  00 00 52 e3                                      cmp r2, #0
004556d0  0a 00 00 0a                                      beq #0x455700
004556d4  14 10 d3 e5                                      ldrb r1, [r3, #0x14]
004556d8  00 00 51 e3                                      cmp r1, #0
004556dc  07 00 00 0a                                      beq #0x455700
004556e0  08 30 93 e5                                      ldr r3, [r3, #8]
004556e4  00 00 53 e3                                      cmp r3, #0
004556e8  04 00 00 da                                      ble #0x455700
004556ec  78 00 92 e5                                      ldr r0, [r2, #0x78]
004556f0  00 00 53 e1                                      cmp r3, r0
004556f4  00 00 a0 d3                                      movle r0, #0
004556f8  01 00 a0 c3                                      movgt r0, #1
004556fc  1e ff 2f e1                                      bx lr
00455700  00 00 a0 e3                                      mov r0, #0
00455704  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045983c, declared_size=84, range_size=84, mode=arm
; class-group: Script_ShowFlash
; alias: _ZN16Script_ShowFlash4InitEv
; demangled: Script_ShowFlash::Init()
; decoder-mode: arm
0045983c  70 40 2d e9                                      push {r4, r5, r6, lr}
00459840  00 40 a0 e1                                      mov r4, r0
00459844  90 4c ff eb                                      bl #0x42ca8c
00459848  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0045984c  38 10 9f e5                                      ldr r1, [pc, #0x38]
00459850  00 60 a0 e1                                      mov r6, r0
00459854  10 50 93 e5                                      ldr r5, [r3, #0x10]
00459858  01 10 8f e0                                      add r1, pc, r1
0045985c  05 00 a0 e1                                      mov r0, r5
00459860  db d4 fa eb                                      bl #0x30ebd4
00459864  00 00 50 e3                                      cmp r0, #0
00459868  02 00 00 0a                                      beq #0x459878
0045986c  00 30 a0 e3                                      mov r3, #0
00459870  10 30 84 e5                                      str r3, [r4, #0x10]
00459874  70 80 bd e8                                      pop {r4, r5, r6, pc}
00459878  06 00 a0 e1                                      mov r0, r6
0045987c  05 10 a0 e1                                      mov r1, r5
00459880  5a 4e ff eb                                      bl #0x42d1f0
00459884  10 00 84 e5                                      str r0, [r4, #0x10]
00459888  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0045988c  b0 36 47 00                                      .byte 0xb0, 0x36, 0x47, 0x00

; FUNCTION 0x0045f8c8, declared_size=468, range_size=468, mode=arm
; class-group: Script_ShowFlash
; alias: _ZN16Script_ShowFlash7ExecuteEbi
; demangled: Script_ShowFlash::Execute(bool, int)
; decoder-mode: arm
0045f8c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045f8cc  a4 41 9f e5                                      ldr r4, [pc, #0x1a4]
0045f8d0  a4 71 9f e5                                      ldr r7, [pc, #0x1a4]
0045f8d4  a4 21 9f e5                                      ldr r2, [pc, #0x1a4]
0045f8d8  04 40 8f e0                                      add r4, pc, r4
0045f8dc  07 30 94 e7                                      ldr r3, [r4, r7]
0045f8e0  02 a0 94 e7                                      ldr sl, [r4, r2]
0045f8e4  54 d0 4d e2                                      sub sp, sp, #0x54
0045f8e8  00 30 93 e5                                      ldr r3, [r3]
0045f8ec  00 60 a0 e1                                      mov r6, r0
0045f8f0  0a 00 a0 e1                                      mov r0, sl
0045f8f4  0c 80 96 e5                                      ldr r8, [r6, #0xc]
0045f8f8  4c 30 8d e5                                      str r3, [sp, #0x4c]
0045f8fc  e1 5f fb eb                                      bl #0x337888
0045f900  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
0045f904  34 50 8d e2                                      add r5, sp, #0x34
0045f908  30 20 8d e2                                      add r2, sp, #0x30
0045f90c  01 10 8f e0                                      add r1, pc, r1
0045f910  05 00 a0 e1                                      mov r0, r5
0045f914  f4 d1 fa eb                                      bl #0x3140ec
0045f918  05 10 a0 e1                                      mov r1, r5
0045f91c  0a 00 a0 e1                                      mov r0, sl
0045f920  58 60 fb eb                                      bl #0x337a88
0045f924  05 00 a0 e1                                      mov r0, r5
0045f928  49 e2 fa eb                                      bl #0x318254
0045f92c  10 50 96 e5                                      ldr r5, [r6, #0x10]
0045f930  00 00 55 e3                                      cmp r5, #0
0045f934  0a 00 00 0a                                      beq #0x45f964
0045f938  05 00 a0 e1                                      mov r0, r5
0045f93c  00 30 95 e5                                      ldr r3, [r5]
0045f940  0f e0 a0 e1                                      mov lr, pc
0045f944  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0045f948  07 30 94 e7                                      ldr r3, [r4, r7]
0045f94c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0045f950  00 30 93 e5                                      ldr r3, [r3]
0045f954  03 00 52 e1                                      cmp r2, r3
0045f958  45 00 00 1a                                      bne #0x45fa74
0045f95c  54 d0 8d e2                                      add sp, sp, #0x54
0045f960  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045f964  48 34 ff eb                                      bl #0x42ca8c
0045f968  18 11 9f e5                                      ldr r1, [pc, #0x118]
0045f96c  10 00 98 e5                                      ldr r0, [r8, #0x10]
0045f970  01 10 8f e0                                      add r1, pc, r1
0045f974  96 bc fa eb                                      bl #0x30ebd4
0045f978  00 00 50 e3                                      cmp r0, #0
0045f97c  38 00 00 0a                                      beq #0x45fa64
0045f980  04 31 9f e5                                      ldr r3, [pc, #0x104]
0045f984  1c 90 8d e2                                      add sb, sp, #0x1c
0045f988  01 a0 a0 e3                                      mov sl, #1
0045f98c  03 30 94 e7                                      ldr r3, [r4, r3]
0045f990  10 b0 8d e2                                      add fp, sp, #0x10
0045f994  54 00 93 e5                                      ldr r0, [r3, #0x54]
0045f998  7b 34 ff eb                                      bl #0x42cb8c
0045f99c  00 80 a0 e1                                      mov r8, r0
0045f9a0  c1 20 0d eb                                      bl #0x7a7cac
0045f9a4  ea 51 0c eb                                      bl #0x774154
0045f9a8  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
0045f9ac  00 10 a0 e1                                      mov r1, r0
0045f9b0  05 30 a0 e1                                      mov r3, r5
0045f9b4  02 20 8f e0                                      add r2, pc, r2
0045f9b8  08 00 a0 e1                                      mov r0, r8
0045f9bc  00 50 8d e5                                      str r5, [sp]
0045f9c0  11 31 0d eb                                      bl #0x7abe0c
0045f9c4  08 00 a0 e1                                      mov r0, r8
0045f9c8  b7 20 0d eb                                      bl #0x7a7cac
0045f9cc  e0 51 0c eb                                      bl #0x774154
0045f9d0  0c 00 8d e5                                      str r0, [sp, #0xc]
0045f9d4  2c 34 ff eb                                      bl #0x42ca8c
0045f9d8  02 20 a0 e3                                      mov r2, #2
0045f9dc  08 01 90 e5                                      ldr r0, [r0, #0x108]
0045f9e0  1d 20 cd e5                                      strb r2, [sp, #0x1d]
0045f9e4  1c 50 cd e5                                      strb r5, [sp, #0x1c]
0045f9e8  d0 bc fa eb                                      bl #0x30ed30
0045f9ec  f8 02 cd e1                                      strd r0, r1, [sp, #0x28]
0045f9f0  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0045f9f4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0045f9f8  94 20 9f e5                                      ldr r2, [pc, #0x94]
0045f9fc  20 c0 8d e5                                      str ip, [sp, #0x20]
0045fa00  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0045fa04  03 10 a0 e1                                      mov r1, r3
0045fa08  02 20 8f e0                                      add r2, pc, r2
0045fa0c  09 30 a0 e1                                      mov r3, sb
0045fa10  08 00 a0 e1                                      mov r0, r8
0045fa14  08 c0 89 e5                                      str ip, [sb, #8]
0045fa18  00 a0 8d e5                                      str sl, [sp]
0045fa1c  fa 30 0d eb                                      bl #0x7abe0c
0045fa20  09 00 a0 e1                                      mov r0, sb
0045fa24  be dd 0c eb                                      bl #0x797124
0045fa28  08 00 a0 e1                                      mov r0, r8
0045fa2c  9e 20 0d eb                                      bl #0x7a7cac
0045fa30  c7 51 0c eb                                      bl #0x774154
0045fa34  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0045fa38  00 10 a0 e1                                      mov r1, r0
0045fa3c  0b 30 a0 e1                                      mov r3, fp
0045fa40  08 00 a0 e1                                      mov r0, r8
0045fa44  02 20 8f e0                                      add r2, pc, r2
0045fa48  10 50 cd e5                                      strb r5, [sp, #0x10]
0045fa4c  00 a0 8d e5                                      str sl, [sp]
0045fa50  11 a0 cd e5                                      strb sl, [sp, #0x11]
0045fa54  14 a0 cd e5                                      strb sl, [sp, #0x14]
0045fa58  eb 30 0d eb                                      bl #0x7abe0c
0045fa5c  0b 00 a0 e1                                      mov r0, fp
0045fa60  af dd 0c eb                                      bl #0x797124
0045fa64  10 50 96 e5                                      ldr r5, [r6, #0x10]
0045fa68  00 00 55 e3                                      cmp r5, #0
0045fa6c  b5 ff ff 0a                                      beq #0x45f948
0045fa70  b0 ff ff ea                                      b #0x45f938
0045fa74  25 ba fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045fa78  b8 51 53 00 ac 40 00 00 84 08 00 00 74 d7 46 00  .byte 0xb8, 0x51, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x74, 0xd7, 0x46, 0x00
0045fa88  98 d5 46 00 f4 37 00 00 7c c4 46 00 70 a7 46 00  .byte 0x98, 0xd5, 0x46, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x7c, 0xc4, 0x46, 0x00, 0x70, 0xa7, 0x46, 0x00
0045fa98  7c d6 46 00                                      .byte 0x7c, 0xd6, 0x46, 0x00
