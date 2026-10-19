; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455840, declared_size=8, range_size=8, mode=arm
; class-group: Script_SetActorMaster
; alias: _ZNK21Script_SetActorMaster10IsBlockingEv
; demangled: Script_SetActorMaster::IsBlocking() const
; decoder-mode: arm
00455840  00 00 a0 e3                                      mov r0, #0
00455844  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045e4b8, declared_size=272, range_size=272, mode=arm
; class-group: Script_SetActorMaster
; alias: _ZN21Script_SetActorMaster7ExecuteEbi
; demangled: Script_SetActorMaster::Execute(bool, int)
; decoder-mode: arm
0045e4b8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045e4bc  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
0045e4c0  f0 90 9f e5                                      ldr sb, [pc, #0xf0]
0045e4c4  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0045e4c8  04 40 8f e0                                      add r4, pc, r4
0045e4cc  09 30 94 e7                                      ldr r3, [r4, sb]
0045e4d0  01 60 94 e7                                      ldr r6, [r4, r1]
0045e4d4  40 d0 4d e2                                      sub sp, sp, #0x40
0045e4d8  00 30 93 e5                                      ldr r3, [r3]
0045e4dc  02 a0 a0 e1                                      mov sl, r2
0045e4e0  24 50 8d e2                                      add r5, sp, #0x24
0045e4e4  3c 30 8d e5                                      str r3, [sp, #0x3c]
0045e4e8  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0045e4ec  06 00 a0 e1                                      mov r0, r6
0045e4f0  e4 64 fb eb                                      bl #0x337888
0045e4f4  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0045e4f8  20 20 8d e2                                      add r2, sp, #0x20
0045e4fc  05 00 a0 e1                                      mov r0, r5
0045e500  01 10 8f e0                                      add r1, pc, r1
0045e504  f8 d6 fa eb                                      bl #0x3140ec
0045e508  05 10 a0 e1                                      mov r1, r5
0045e50c  06 00 a0 e1                                      mov r0, r6
0045e510  5c 65 fb eb                                      bl #0x337a88
0045e514  05 00 a0 e1                                      mov r0, r5
0045e518  4d e7 fa eb                                      bl #0x318254
0045e51c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0045e520  14 80 8d e2                                      add r8, sp, #0x14
0045e524  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
0045e528  03 60 94 e7                                      ldr r6, [r4, r3]
0045e52c  00 50 a0 e3                                      mov r5, #0
0045e530  0a 30 a0 e1                                      mov r3, sl
0045e534  38 10 96 e5                                      ldr r1, [r6, #0x38]
0045e538  08 00 a0 e1                                      mov r0, r8
0045e53c  00 50 8d e5                                      str r5, [sp]
0045e540  04 50 8d e5                                      str r5, [sp, #4]
0045e544  d5 b1 fb eb                                      bl #0x34aca0
0045e548  08 00 a0 e1                                      mov r0, r8
0045e54c  80 86 fb eb                                      bl #0x33ff54
0045e550  38 10 96 e5                                      ldr r1, [r6, #0x38]
0045e554  08 60 8d e2                                      add r6, sp, #8
0045e558  10 20 97 e5                                      ldr r2, [r7, #0x10]
0045e55c  00 80 a0 e1                                      mov r8, r0
0045e560  0a 30 a0 e1                                      mov r3, sl
0045e564  06 00 a0 e1                                      mov r0, r6
0045e568  04 50 8d e5                                      str r5, [sp, #4]
0045e56c  00 50 8d e5                                      str r5, [sp]
0045e570  ca b1 fb eb                                      bl #0x34aca0
0045e574  06 00 a0 e1                                      mov r0, r6
0045e578  75 86 fb eb                                      bl #0x33ff54
0045e57c  05 00 50 e1                                      cmp r0, r5
0045e580  05 00 58 11                                      cmpne r8, r5
0045e584  00 10 a0 e1                                      mov r1, r0
0045e588  01 00 00 0a                                      beq #0x45e594
0045e58c  f2 0f 88 e2                                      add r0, r8, #0x3c8
0045e590  fa d9 fd eb                                      bl #0x3d4d80
0045e594  09 30 94 e7                                      ldr r3, [r4, sb]
0045e598  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0045e59c  00 30 93 e5                                      ldr r3, [r3]
0045e5a0  03 00 52 e1                                      cmp r2, r3
0045e5a4  01 00 00 1a                                      bne #0x45e5b0
0045e5a8  40 d0 8d e2                                      add sp, sp, #0x40
0045e5ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045e5b0  56 bf fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045e5b4  c8 65 53 00 ac 40 00 00 84 08 00 00 80 eb 46 00  .byte 0xc8, 0x65, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x80, 0xeb, 0x46, 0x00
0045e5c4  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
