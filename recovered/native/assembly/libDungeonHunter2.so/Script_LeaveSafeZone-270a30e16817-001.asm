; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455670, declared_size=8, range_size=8, mode=arm
; class-group: Script_LeaveSafeZone
; alias: _ZNK20Script_LeaveSafeZone10IsBlockingEv
; demangled: Script_LeaveSafeZone::IsBlocking() const
; decoder-mode: arm
00455670  00 00 a0 e3                                      mov r0, #0
00455674  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045fbe0, declared_size=160, range_size=160, mode=arm
; class-group: Script_LeaveSafeZone
; alias: _ZN20Script_LeaveSafeZone7ExecuteEbi
; demangled: Script_LeaveSafeZone::Execute(bool, int)
; decoder-mode: arm
0045fbe0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0045fbe4  80 40 9f e5                                      ldr r4, [pc, #0x80]
0045fbe8  80 30 9f e5                                      ldr r3, [pc, #0x80]
0045fbec  24 d0 4d e2                                      sub sp, sp, #0x24
0045fbf0  04 40 8f e0                                      add r4, pc, r4
0045fbf4  03 60 94 e7                                      ldr r6, [r4, r3]
0045fbf8  74 30 9f e5                                      ldr r3, [pc, #0x74]
0045fbfc  04 50 8d e2                                      add r5, sp, #4
0045fc00  03 70 94 e7                                      ldr r7, [r4, r3]
0045fc04  00 30 96 e5                                      ldr r3, [r6]
0045fc08  07 00 a0 e1                                      mov r0, r7
0045fc0c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045fc10  1c 5f fb eb                                      bl #0x337888
0045fc14  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0045fc18  0d 20 a0 e1                                      mov r2, sp
0045fc1c  05 00 a0 e1                                      mov r0, r5
0045fc20  01 10 8f e0                                      add r1, pc, r1
0045fc24  30 d1 fa eb                                      bl #0x3140ec
0045fc28  05 10 a0 e1                                      mov r1, r5
0045fc2c  07 00 a0 e1                                      mov r0, r7
0045fc30  94 5f fb eb                                      bl #0x337a88
0045fc34  05 00 a0 e1                                      mov r0, r5
0045fc38  85 e1 fa eb                                      bl #0x318254
0045fc3c  38 30 9f e5                                      ldr r3, [pc, #0x38]
0045fc40  00 10 a0 e3                                      mov r1, #0
0045fc44  03 30 94 e7                                      ldr r3, [r4, r3]
0045fc48  00 00 93 e5                                      ldr r0, [r3]
0045fc4c  f0 30 fc eb                                      bl #0x36c014
0045fc50  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045fc54  00 30 96 e5                                      ldr r3, [r6]
0045fc58  03 00 52 e1                                      cmp r2, r3
0045fc5c  01 00 00 1a                                      bne #0x45fc68
0045fc60  24 d0 8d e2                                      add sp, sp, #0x24
0045fc64  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0045fc68  a8 b9 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045fc6c  a0 4e 53 00 ac 40 00 00 84 08 00 00 60 d4 46 00  .byte 0xa0, 0x4e, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x60, 0xd4, 0x46, 0x00
0045fc7c  a4 0d 00 00                                      .byte 0xa4, 0x0d, 0x00, 0x00
