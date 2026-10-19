; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455910, declared_size=8, range_size=8, mode=arm
; class-group: Script_EndGame
; alias: _ZNK14Script_EndGame10IsBlockingEv
; demangled: Script_EndGame::IsBlocking() const
; decoder-mode: arm
00455910  00 00 a0 e3                                      mov r0, #0
00455914  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045ca80, declared_size=288, range_size=288, mode=arm
; class-group: Script_EndGame
; alias: _ZN14Script_EndGame7ExecuteEbi
; demangled: Script_EndGame::Execute(bool, int)
; decoder-mode: arm
0045ca80  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0045ca84  fc 40 9f e5                                      ldr r4, [pc, #0xfc]
0045ca88  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
0045ca8c  24 d0 4d e2                                      sub sp, sp, #0x24
0045ca90  04 40 8f e0                                      add r4, pc, r4
0045ca94  03 60 94 e7                                      ldr r6, [r4, r3]
0045ca98  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
0045ca9c  04 50 8d e2                                      add r5, sp, #4
0045caa0  03 70 94 e7                                      ldr r7, [r4, r3]
0045caa4  00 30 96 e5                                      ldr r3, [r6]
0045caa8  07 00 a0 e1                                      mov r0, r7
0045caac  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045cab0  74 6b fb eb                                      bl #0x337888
0045cab4  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0045cab8  0d 20 a0 e1                                      mov r2, sp
0045cabc  05 00 a0 e1                                      mov r0, r5
0045cac0  01 10 8f e0                                      add r1, pc, r1
0045cac4  88 dd fa eb                                      bl #0x3140ec
0045cac8  05 10 a0 e1                                      mov r1, r5
0045cacc  07 00 a0 e1                                      mov r0, r7
0045cad0  ec 6b fb eb                                      bl #0x337a88
0045cad4  05 00 a0 e1                                      mov r0, r5
0045cad8  dd ed fa eb                                      bl #0x318254
0045cadc  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
0045cae0  00 10 a0 e3                                      mov r1, #0
0045cae4  01 20 a0 e3                                      mov r2, #1
0045cae8  03 70 94 e7                                      ldr r7, [r4, r3]
0045caec  40 00 97 e5                                      ldr r0, [r7, #0x40]
0045caf0  60 46 fc eb                                      bl #0x36e478
0045caf4  60 56 90 e5                                      ldr r5, [r0, #0x660]
0045caf8  05 00 a0 e1                                      mov r0, r5
0045cafc  78 7b fd eb                                      bl #0x3bb8e4
0045cb00  00 a0 a0 e1                                      mov sl, r0
0045cb04  05 00 a0 e1                                      mov r0, r5
0045cb08  75 7b fd eb                                      bl #0x3bb8e4
0045cb0c  2d 10 a0 e3                                      mov r1, #0x2d
0045cb10  01 80 80 e2                                      add r8, r0, #1
0045cb14  0a 20 a0 e1                                      mov r2, sl
0045cb18  05 00 a0 e1                                      mov r0, r5
0045cb1c  4c 7b fd eb                                      bl #0x3bb854
0045cb20  02 00 58 e3                                      cmp r8, #2
0045cb24  02 80 a0 a3                                      movge r8, #2
0045cb28  0a 20 a0 e1                                      mov r2, sl
0045cb2c  05 00 a0 e1                                      mov r0, r5
0045cb30  05 10 a0 e3                                      mov r1, #5
0045cb34  58 7b fd eb                                      bl #0x3bb89c
0045cb38  08 10 a0 e1                                      mov r1, r8
0045cb3c  05 00 a0 e1                                      mov r0, r5
0045cb40  7a 7b fd eb                                      bl #0x3bb930
0045cb44  05 00 a0 e1                                      mov r0, r5
0045cb48  56 7e fd eb                                      bl #0x3bc4a8
0045cb4c  05 00 a0 e1                                      mov r0, r5
0045cb50  08 10 a0 e1                                      mov r1, r8
0045cb54  7d 7b fd eb                                      bl #0x3bb950
0045cb58  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0045cb5c  00 20 a0 e3                                      mov r2, #0
0045cb60  18 00 97 e5                                      ldr r0, [r7, #0x18]
0045cb64  03 10 94 e7                                      ldr r1, [r4, r3]
0045cb68  06 76 fb eb                                      bl #0x33a388
0045cb6c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045cb70  00 30 96 e5                                      ldr r3, [r6]
0045cb74  03 00 52 e1                                      cmp r2, r3
0045cb78  01 00 00 1a                                      bne #0x45cb84
0045cb7c  24 d0 8d e2                                      add sp, sp, #0x24
0045cb80  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0045cb84  e1 c5 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045cb88  00 80 53 00 ac 40 00 00 84 08 00 00 c0 05 47 00  .byte 0x00, 0x80, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc0, 0x05, 0x47, 0x00
0045cb98  f4 37 00 00 30 3c 00 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0x30, 0x3c, 0x00, 0x00
