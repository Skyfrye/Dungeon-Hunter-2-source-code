; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455658, declared_size=8, range_size=8, mode=arm
; class-group: Script_StopSound
; alias: _ZNK16Script_StopSound10IsBlockingEv
; demangled: Script_StopSound::IsBlocking() const
; decoder-mode: arm
00455658  00 00 a0 e3                                      mov r0, #0
0045565c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045fe2c, declared_size=208, range_size=208, mode=arm
; class-group: Script_StopSound
; alias: _ZN16Script_StopSound7ExecuteEbi
; demangled: Script_StopSound::Execute(bool, int)
; decoder-mode: arm
0045fe2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045fe30  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
0045fe34  b0 70 9f e5                                      ldr r7, [pc, #0xb0]
0045fe38  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0045fe3c  04 40 8f e0                                      add r4, pc, r4
0045fe40  07 30 94 e7                                      ldr r3, [r4, r7]
0045fe44  02 80 94 e7                                      ldr r8, [r4, r2]
0045fe48  20 d0 4d e2                                      sub sp, sp, #0x20
0045fe4c  00 30 93 e5                                      ldr r3, [r3]
0045fe50  04 50 8d e2                                      add r5, sp, #4
0045fe54  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045fe58  0c 60 90 e5                                      ldr r6, [r0, #0xc]
0045fe5c  08 00 a0 e1                                      mov r0, r8
0045fe60  88 5e fb eb                                      bl #0x337888
0045fe64  88 10 9f e5                                      ldr r1, [pc, #0x88]
0045fe68  0d 20 a0 e1                                      mov r2, sp
0045fe6c  05 00 a0 e1                                      mov r0, r5
0045fe70  01 10 8f e0                                      add r1, pc, r1
0045fe74  9c d0 fa eb                                      bl #0x3140ec
0045fe78  05 10 a0 e1                                      mov r1, r5
0045fe7c  08 00 a0 e1                                      mov r0, r8
0045fe80  00 5f fb eb                                      bl #0x337a88
0045fe84  05 00 a0 e1                                      mov r0, r5
0045fe88  f1 e0 fa eb                                      bl #0x318254
0045fe8c  0c 30 d6 e5                                      ldrb r3, [r6, #0xc]
0045fe90  00 00 53 e3                                      cmp r3, #0
0045fe94  0c 00 00 1a                                      bne #0x45fecc
0045fe98  58 30 9f e5                                      ldr r3, [pc, #0x58]
0045fe9c  08 20 96 e5                                      ldr r2, [r6, #8]
0045fea0  10 10 96 e5                                      ldr r1, [r6, #0x10]
0045fea4  03 30 94 e7                                      ldr r3, [r4, r3]
0045fea8  00 00 93 e5                                      ldr r0, [r3]
0045feac  4e 28 fc eb                                      bl #0x369fec
0045feb0  07 30 94 e7                                      ldr r3, [r4, r7]
0045feb4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045feb8  00 30 93 e5                                      ldr r3, [r3]
0045febc  03 00 52 e1                                      cmp r2, r3
0045fec0  07 00 00 1a                                      bne #0x45fee4
0045fec4  20 d0 8d e2                                      add sp, sp, #0x20
0045fec8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045fecc  24 30 9f e5                                      ldr r3, [pc, #0x24]
0045fed0  08 10 96 e5                                      ldr r1, [r6, #8]
0045fed4  03 30 94 e7                                      ldr r3, [r4, r3]
0045fed8  00 00 93 e5                                      ldr r0, [r3]
0045fedc  af 28 fc eb                                      bl #0x36a1a0
0045fee0  f2 ff ff ea                                      b #0x45feb0
0045fee4  09 b9 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045fee8  54 4c 53 00 ac 40 00 00 84 08 00 00 10 d2 46 00  .byte 0x54, 0x4c, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x10, 0xd2, 0x46, 0x00
0045fef8  a4 0d 00 00                                      .byte 0xa4, 0x0d, 0x00, 0x00
