; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455928, declared_size=8, range_size=8, mode=arm
; class-group: Script_SaveGame
; alias: _ZNK15Script_SaveGame10IsBlockingEv
; demangled: Script_SaveGame::IsBlocking() const
; decoder-mode: arm
00455928  00 00 a0 e3                                      mov r0, #0
0045592c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045c994, declared_size=236, range_size=236, mode=arm
; class-group: Script_SaveGame
; alias: _ZN15Script_SaveGame7ExecuteEbi
; demangled: Script_SaveGame::Execute(bool, int)
; decoder-mode: arm
0045c994  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045c998  cc 40 9f e5                                      ldr r4, [pc, #0xcc]
0045c99c  cc 60 9f e5                                      ldr r6, [pc, #0xcc]
0045c9a0  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
0045c9a4  04 40 8f e0                                      add r4, pc, r4
0045c9a8  06 30 94 e7                                      ldr r3, [r4, r6]
0045c9ac  02 80 94 e7                                      ldr r8, [r4, r2]
0045c9b0  20 d0 4d e2                                      sub sp, sp, #0x20
0045c9b4  00 30 93 e5                                      ldr r3, [r3]
0045c9b8  08 00 a0 e1                                      mov r0, r8
0045c9bc  04 50 8d e2                                      add r5, sp, #4
0045c9c0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045c9c4  af 6b fb eb                                      bl #0x337888
0045c9c8  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0045c9cc  0d 20 a0 e1                                      mov r2, sp
0045c9d0  05 00 a0 e1                                      mov r0, r5
0045c9d4  01 10 8f e0                                      add r1, pc, r1
0045c9d8  9c 70 9f e5                                      ldr r7, [pc, #0x9c]
0045c9dc  c2 dd fa eb                                      bl #0x3140ec
0045c9e0  05 10 a0 e1                                      mov r1, r5
0045c9e4  08 00 a0 e1                                      mov r0, r8
0045c9e8  26 6c fb eb                                      bl #0x337a88
0045c9ec  05 00 a0 e1                                      mov r0, r5
0045c9f0  17 ee fa eb                                      bl #0x318254
0045c9f4  07 00 94 e7                                      ldr r0, [r4, r7]
0045c9f8  e5 0a fb eb                                      bl #0x31f594
0045c9fc  00 50 50 e2                                      subs r5, r0, #0
0045ca00  04 00 00 0a                                      beq #0x45ca18
0045ca04  00 10 a0 e3                                      mov r1, #0
0045ca08  0a 4a fe eb                                      bl #0x3ef238
0045ca0c  05 00 a0 e1                                      mov r0, r5
0045ca10  00 10 a0 e3                                      mov r1, #0
0045ca14  e0 4e fe eb                                      bl #0x3f059c
0045ca18  07 30 94 e7                                      ldr r3, [r4, r7]
0045ca1c  00 10 a0 e3                                      mov r1, #0
0045ca20  01 20 a0 e3                                      mov r2, #1
0045ca24  40 00 93 e5                                      ldr r0, [r3, #0x40]
0045ca28  92 46 fc eb                                      bl #0x36e478
0045ca2c  60 56 90 e5                                      ldr r5, [r0, #0x660]
0045ca30  00 00 55 e3                                      cmp r5, #0
0045ca34  04 00 00 0a                                      beq #0x45ca4c
0045ca38  05 00 a0 e1                                      mov r0, r5
0045ca3c  00 10 a0 e3                                      mov r1, #0
0045ca40  4a 7b fd eb                                      bl #0x3bb770
0045ca44  05 00 a0 e1                                      mov r0, r5
0045ca48  96 7e fd eb                                      bl #0x3bc4a8
0045ca4c  06 30 94 e7                                      ldr r3, [r4, r6]
0045ca50  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045ca54  00 30 93 e5                                      ldr r3, [r3]
0045ca58  03 00 52 e1                                      cmp r2, r3
0045ca5c  01 00 00 1a                                      bne #0x45ca68
0045ca60  20 d0 8d e2                                      add sp, sp, #0x20
0045ca64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045ca68  28 c6 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045ca6c  ec 80 53 00 ac 40 00 00 84 08 00 00 ac 06 47 00  .byte 0xec, 0x80, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xac, 0x06, 0x47, 0x00
0045ca7c  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
