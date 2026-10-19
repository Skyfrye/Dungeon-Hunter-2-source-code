; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045577c, declared_size=8, range_size=8, mode=arm
; class-group: Script_PutCharacterInLimbus
; alias: _ZNK27Script_PutCharacterInLimbus10IsBlockingEv
; demangled: Script_PutCharacterInLimbus::IsBlocking() const
; decoder-mode: arm
0045577c  00 00 a0 e3                                      mov r0, #0
00455780  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045f4e8, declared_size=228, range_size=228, mode=arm
; class-group: Script_PutCharacterInLimbus
; alias: _ZN27Script_PutCharacterInLimbus7ExecuteEbi
; demangled: Script_PutCharacterInLimbus::Execute(bool, int)
; decoder-mode: arm
0045f4e8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045f4ec  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
0045f4f0  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
0045f4f4  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0045f4f8  04 40 8f e0                                      add r4, pc, r4
0045f4fc  05 30 94 e7                                      ldr r3, [r4, r5]
0045f500  01 a0 94 e7                                      ldr sl, [r4, r1]
0045f504  38 d0 4d e2                                      sub sp, sp, #0x38
0045f508  00 30 93 e5                                      ldr r3, [r3]
0045f50c  02 90 a0 e1                                      mov sb, r2
0045f510  1c 80 8d e2                                      add r8, sp, #0x1c
0045f514  34 30 8d e5                                      str r3, [sp, #0x34]
0045f518  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0045f51c  0a 00 a0 e1                                      mov r0, sl
0045f520  d8 60 fb eb                                      bl #0x337888
0045f524  98 10 9f e5                                      ldr r1, [pc, #0x98]
0045f528  18 20 8d e2                                      add r2, sp, #0x18
0045f52c  08 00 a0 e1                                      mov r0, r8
0045f530  01 10 8f e0                                      add r1, pc, r1
0045f534  ec d2 fa eb                                      bl #0x3140ec
0045f538  08 10 a0 e1                                      mov r1, r8
0045f53c  0a 00 a0 e1                                      mov r0, sl
0045f540  50 61 fb eb                                      bl #0x337a88
0045f544  08 00 a0 e1                                      mov r0, r8
0045f548  41 e3 fa eb                                      bl #0x318254
0045f54c  74 10 9f e5                                      ldr r1, [pc, #0x74]
0045f550  0c 60 8d e2                                      add r6, sp, #0xc
0045f554  10 20 97 e5                                      ldr r2, [r7, #0x10]
0045f558  01 10 94 e7                                      ldr r1, [r4, r1]
0045f55c  00 c0 a0 e3                                      mov ip, #0
0045f560  09 30 a0 e1                                      mov r3, sb
0045f564  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045f568  06 00 a0 e1                                      mov r0, r6
0045f56c  04 c0 8d e5                                      str ip, [sp, #4]
0045f570  00 c0 8d e5                                      str ip, [sp]
0045f574  c9 ad fb eb                                      bl #0x34aca0
0045f578  06 00 a0 e1                                      mov r0, r6
0045f57c  74 82 fb eb                                      bl #0x33ff54
0045f580  00 00 50 e3                                      cmp r0, #0
0045f584  03 00 00 0a                                      beq #0x45f598
0045f588  4f 0e 80 e2                                      add r0, r0, #0x4f0
0045f58c  0c 00 80 e2                                      add r0, r0, #0xc
0045f590  08 10 d7 e5                                      ldrb r1, [r7, #8]
0045f594  36 89 fd eb                                      bl #0x3c1a74
0045f598  05 30 94 e7                                      ldr r3, [r4, r5]
0045f59c  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045f5a0  00 30 93 e5                                      ldr r3, [r3]
0045f5a4  03 00 52 e1                                      cmp r2, r3
0045f5a8  01 00 00 1a                                      bne #0x45f5b4
0045f5ac  38 d0 8d e2                                      add sp, sp, #0x38
0045f5b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045f5b4  55 bb fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045f5b8  98 55 53 00 ac 40 00 00 84 08 00 00 50 db 46 00  .byte 0x98, 0x55, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x50, 0xdb, 0x46, 0x00
0045f5c8  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
