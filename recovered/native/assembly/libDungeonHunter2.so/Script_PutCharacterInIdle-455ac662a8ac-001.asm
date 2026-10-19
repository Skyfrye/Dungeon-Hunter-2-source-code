; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045578c, declared_size=8, range_size=8, mode=arm
; class-group: Script_PutCharacterInIdle
; alias: _ZNK25Script_PutCharacterInIdle10IsBlockingEv
; demangled: Script_PutCharacterInIdle::IsBlocking() const
; decoder-mode: arm
0045578c  00 00 a0 e3                                      mov r0, #0
00455790  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045971c, declared_size=152, range_size=152, mode=arm
; class-group: Script_PutCharacterInIdle
; alias: _ZN25Script_PutCharacterInIdle8SetStateEP10ObjectBase
; demangled: Script_PutCharacterInIdle::SetState(ObjectBase*)
; decoder-mode: arm
0045971c  30 40 2d e9                                      push {r4, r5, lr}
00459720  84 40 9f e5                                      ldr r4, [pc, #0x84]
00459724  00 10 50 e2                                      subs r1, r0, #0
00459728  14 d0 4d e2                                      sub sp, sp, #0x14
0045972c  04 40 8f e0                                      add r4, pc, r4
00459730  0b 00 00 0a                                      beq #0x459764
00459734  04 50 8d e2                                      add r5, sp, #4
00459738  05 00 a0 e1                                      mov r0, r5
0045973c  7a 91 fb eb                                      bl #0x33dd2c
00459740  05 00 a0 e1                                      mov r0, r5
00459744  02 9a fb eb                                      bl #0x33ff54
00459748  00 50 50 e2                                      subs r5, r0, #0
0045974c  04 00 00 0a                                      beq #0x459764
00459750  00 30 95 e5                                      ldr r3, [r5]
00459754  0f e0 a0 e1                                      mov lr, pc
00459758  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0045975c  00 00 50 e3                                      cmp r0, #0
00459760  01 00 00 0a                                      beq #0x45976c
00459764  14 d0 8d e2                                      add sp, sp, #0x14
00459768  30 80 bd e8                                      pop {r4, r5, pc}
0045976c  4f 5e 85 e2                                      add r5, r5, #0x4f0
00459770  0c 50 85 e2                                      add r5, r5, #0xc
00459774  05 00 a0 e1                                      mov r0, r5
00459778  90 9a fd eb                                      bl #0x3c01c0
0045977c  00 00 50 e3                                      cmp r0, #0
00459780  f7 ff ff 1a                                      bne #0x459764
00459784  05 00 a0 e1                                      mov r0, r5
00459788  a8 9a fd eb                                      bl #0x3c0230
0045978c  00 00 50 e3                                      cmp r0, #0
00459790  f3 ff ff 1a                                      bne #0x459764
00459794  14 30 9f e5                                      ldr r3, [pc, #0x14]
00459798  05 00 a0 e1                                      mov r0, r5
0045979c  03 30 94 e7                                      ldr r3, [r4, r3]
004597a0  00 10 d3 e5                                      ldrb r1, [r3]
004597a4  95 a0 fd eb                                      bl #0x3c1a00
004597a8  ed ff ff ea                                      b #0x459764
; mapping-symbol data/literal pool
004597ac  64 b3 53 00 f8 44 00 00                          .byte 0x64, 0xb3, 0x53, 0x00, 0xf8, 0x44, 0x00, 0x00

; FUNCTION 0x0045d590, declared_size=192, range_size=192, mode=arm
; class-group: Script_PutCharacterInIdle
; alias: _ZN25Script_PutCharacterInIdle7ExecuteEbi
; demangled: Script_PutCharacterInIdle::Execute(bool, int)
; decoder-mode: arm
0045d590  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045d594  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
0045d598  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0045d59c  20 d0 4d e2                                      sub sp, sp, #0x20
0045d5a0  04 40 8f e0                                      add r4, pc, r4
0045d5a4  03 60 94 e7                                      ldr r6, [r4, r3]
0045d5a8  90 30 9f e5                                      ldr r3, [pc, #0x90]
0045d5ac  01 a0 a0 e1                                      mov sl, r1
0045d5b0  02 80 a0 e1                                      mov r8, r2
0045d5b4  03 70 94 e7                                      ldr r7, [r4, r3]
0045d5b8  00 30 96 e5                                      ldr r3, [r6]
0045d5bc  04 50 8d e2                                      add r5, sp, #4
0045d5c0  01 a0 2a e2                                      eor sl, sl, #1
0045d5c4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045d5c8  0c 90 90 e5                                      ldr sb, [r0, #0xc]
0045d5cc  07 00 a0 e1                                      mov r0, r7
0045d5d0  ac 68 fb eb                                      bl #0x337888
0045d5d4  68 10 9f e5                                      ldr r1, [pc, #0x68]
0045d5d8  0d 20 a0 e1                                      mov r2, sp
0045d5dc  05 00 a0 e1                                      mov r0, r5
0045d5e0  01 10 8f e0                                      add r1, pc, r1
0045d5e4  c0 da fa eb                                      bl #0x3140ec
0045d5e8  05 10 a0 e1                                      mov r1, r5
0045d5ec  07 00 a0 e1                                      mov r0, r7
0045d5f0  24 69 fb eb                                      bl #0x337a88
0045d5f4  05 00 a0 e1                                      mov r0, r5
0045d5f8  15 eb fa eb                                      bl #0x318254
0045d5fc  44 30 9f e5                                      ldr r3, [pc, #0x44]
0045d600  44 20 9f e5                                      ldr r2, [pc, #0x44]
0045d604  08 10 a0 e1                                      mov r1, r8
0045d608  03 30 94 e7                                      ldr r3, [r4, r3]
0045d60c  02 20 94 e7                                      ldr r2, [r4, r2]
0045d610  00 a0 c3 e5                                      strb sl, [r3]
0045d614  0c 00 99 e5                                      ldr r0, [sb, #0xc]
0045d618  a2 ef ff eb                                      bl #0x4594a8
0045d61c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045d620  00 30 96 e5                                      ldr r3, [r6]
0045d624  03 00 52 e1                                      cmp r2, r3
0045d628  01 00 00 1a                                      bne #0x45d634
0045d62c  20 d0 8d e2                                      add sp, sp, #0x20
0045d630  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045d634  35 c3 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045d638  f0 74 53 00 ac 40 00 00 84 08 00 00 a0 fa 46 00  .byte 0xf0, 0x74, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xa0, 0xfa, 0x46, 0x00
0045d648  f8 44 00 00 44 14 00 00                          .byte 0xf8, 0x44, 0x00, 0x00, 0x44, 0x14, 0x00, 0x00
