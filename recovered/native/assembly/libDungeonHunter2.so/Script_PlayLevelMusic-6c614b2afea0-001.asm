; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455660, declared_size=8, range_size=8, mode=arm
; class-group: Script_PlayLevelMusic
; alias: _ZNK21Script_PlayLevelMusic10IsBlockingEv
; demangled: Script_PlayLevelMusic::IsBlocking() const
; decoder-mode: arm
00455660  00 00 a0 e3                                      mov r0, #0
00455664  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045fd20, declared_size=268, range_size=268, mode=arm
; class-group: Script_PlayLevelMusic
; alias: _ZN21Script_PlayLevelMusic7ExecuteEbi
; demangled: Script_PlayLevelMusic::Execute(bool, int)
; decoder-mode: arm
0045fd20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045fd24  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
0045fd28  e0 60 9f e5                                      ldr r6, [pc, #0xe0]
0045fd2c  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
0045fd30  04 40 8f e0                                      add r4, pc, r4
0045fd34  06 30 94 e7                                      ldr r3, [r4, r6]
0045fd38  02 70 94 e7                                      ldr r7, [r4, r2]
0045fd3c  28 d0 4d e2                                      sub sp, sp, #0x28
0045fd40  00 30 93 e5                                      ldr r3, [r3]
0045fd44  0c 50 8d e2                                      add r5, sp, #0xc
0045fd48  24 30 8d e5                                      str r3, [sp, #0x24]
0045fd4c  0c 80 90 e5                                      ldr r8, [r0, #0xc]
0045fd50  07 00 a0 e1                                      mov r0, r7
0045fd54  cb 5e fb eb                                      bl #0x337888
0045fd58  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0045fd5c  08 20 8d e2                                      add r2, sp, #8
0045fd60  05 00 a0 e1                                      mov r0, r5
0045fd64  01 10 8f e0                                      add r1, pc, r1
0045fd68  df d0 fa eb                                      bl #0x3140ec
0045fd6c  05 10 a0 e1                                      mov r1, r5
0045fd70  07 00 a0 e1                                      mov r0, r7
0045fd74  43 5f fb eb                                      bl #0x337a88
0045fd78  05 00 a0 e1                                      mov r0, r5
0045fd7c  34 e1 fa eb                                      bl #0x318254
0045fd80  94 30 9f e5                                      ldr r3, [pc, #0x94]
0045fd84  03 00 94 e7                                      ldr r0, [r4, r3]
0045fd88  01 fe fa eb                                      bl #0x31f594
0045fd8c  00 00 50 e3                                      cmp r0, #0
0045fd90  10 00 00 0a                                      beq #0x45fdd8
0045fd94  84 30 9f e5                                      ldr r3, [pc, #0x84]
0045fd98  1c 11 90 e5                                      ldr r1, [r0, #0x11c]
0045fd9c  08 00 98 e5                                      ldr r0, [r8, #8]
0045fda0  03 30 94 e7                                      ldr r3, [r4, r3]
0045fda4  01 20 a0 e3                                      mov r2, #1
0045fda8  00 50 93 e5                                      ldr r5, [r3]
0045fdac  00 30 a0 e3                                      mov r3, #0
0045fdb0  00 00 8d e5                                      str r0, [sp]
0045fdb4  05 00 a0 e1                                      mov r0, r5
0045fdb8  ee 2f fc eb                                      bl #0x36bd78
0045fdbc  31 30 d5 e5                                      ldrb r3, [r5, #0x31]
0045fdc0  00 00 53 e3                                      cmp r3, #0
0045fdc4  0a 00 00 1a                                      bne #0x45fdf4
0045fdc8  54 10 9f e5                                      ldr r1, [pc, #0x54]
0045fdcc  05 00 a0 e1                                      mov r0, r5
0045fdd0  01 10 8f e0                                      add r1, pc, r1
0045fdd4  ce 25 fc eb                                      bl #0x369514
0045fdd8  06 30 94 e7                                      ldr r3, [r4, r6]
0045fddc  24 20 9d e5                                      ldr r2, [sp, #0x24]
0045fde0  00 30 93 e5                                      ldr r3, [r3]
0045fde4  03 00 52 e1                                      cmp r2, r3
0045fde8  06 00 00 1a                                      bne #0x45fe08
0045fdec  28 d0 8d e2                                      add sp, sp, #0x28
0045fdf0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045fdf4  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0045fdf8  05 00 a0 e1                                      mov r0, r5
0045fdfc  01 10 8f e0                                      add r1, pc, r1
0045fe00  c3 25 fc eb                                      bl #0x369514
0045fe04  f3 ff ff ea                                      b #0x45fdd8
0045fe08  40 b9 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045fe0c  60 4d 53 00 ac 40 00 00 84 08 00 00 1c d3 46 00  .byte 0x60, 0x4d, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x1c, 0xd3, 0x46, 0x00
0045fe1c  f4 37 00 00 a4 0d 00 00 58 1e 46 00 24 1e 46 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0x58, 0x1e, 0x46, 0x00, 0x24, 0x1e, 0x46, 0x00
