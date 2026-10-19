; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455784, declared_size=8, range_size=8, mode=arm
; class-group: Script_SpawnCharacter
; alias: _ZNK21Script_SpawnCharacter10IsBlockingEv
; demangled: Script_SpawnCharacter::IsBlocking() const
; decoder-mode: arm
00455784  00 00 a0 e3                                      mov r0, #0
00455788  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045f400, declared_size=232, range_size=232, mode=arm
; class-group: Script_SpawnCharacter
; alias: _ZN21Script_SpawnCharacter7ExecuteEbi
; demangled: Script_SpawnCharacter::Execute(bool, int)
; decoder-mode: arm
0045f400  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045f404  c8 40 9f e5                                      ldr r4, [pc, #0xc8]
0045f408  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
0045f40c  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
0045f410  04 40 8f e0                                      add r4, pc, r4
0045f414  05 30 94 e7                                      ldr r3, [r4, r5]
0045f418  01 80 94 e7                                      ldr r8, [r4, r1]
0045f41c  38 d0 4d e2                                      sub sp, sp, #0x38
0045f420  00 30 93 e5                                      ldr r3, [r3]
0045f424  02 90 a0 e1                                      mov sb, r2
0045f428  1c 70 8d e2                                      add r7, sp, #0x1c
0045f42c  34 30 8d e5                                      str r3, [sp, #0x34]
0045f430  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0045f434  08 00 a0 e1                                      mov r0, r8
0045f438  12 61 fb eb                                      bl #0x337888
0045f43c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0045f440  18 20 8d e2                                      add r2, sp, #0x18
0045f444  07 00 a0 e1                                      mov r0, r7
0045f448  01 10 8f e0                                      add r1, pc, r1
0045f44c  26 d3 fa eb                                      bl #0x3140ec
0045f450  07 10 a0 e1                                      mov r1, r7
0045f454  08 00 a0 e1                                      mov r0, r8
0045f458  8a 61 fb eb                                      bl #0x337a88
0045f45c  07 00 a0 e1                                      mov r0, r7
0045f460  7b e3 fa eb                                      bl #0x318254
0045f464  78 10 9f e5                                      ldr r1, [pc, #0x78]
0045f468  0c 60 8d e2                                      add r6, sp, #0xc
0045f46c  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045f470  01 10 94 e7                                      ldr r1, [r4, r1]
0045f474  09 30 a0 e1                                      mov r3, sb
0045f478  00 70 a0 e3                                      mov r7, #0
0045f47c  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045f480  06 00 a0 e1                                      mov r0, r6
0045f484  00 70 8d e5                                      str r7, [sp]
0045f488  04 70 8d e5                                      str r7, [sp, #4]
0045f48c  03 ae fb eb                                      bl #0x34aca0
0045f490  06 00 a0 e1                                      mov r0, r6
0045f494  ae 82 fb eb                                      bl #0x33ff54
0045f498  00 00 50 e3                                      cmp r0, #0
0045f49c  04 00 00 0a                                      beq #0x45f4b4
0045f4a0  4f 0e 80 e2                                      add r0, r0, #0x4f0
0045f4a4  07 10 a0 e1                                      mov r1, r7
0045f4a8  0c 00 80 e2                                      add r0, r0, #0xc
0045f4ac  07 20 a0 e1                                      mov r2, r7
0045f4b0  9f 8c fd eb                                      bl #0x3c2734
0045f4b4  05 30 94 e7                                      ldr r3, [r4, r5]
0045f4b8  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045f4bc  00 30 93 e5                                      ldr r3, [r3]
0045f4c0  03 00 52 e1                                      cmp r2, r3
0045f4c4  01 00 00 1a                                      bne #0x45f4d0
0045f4c8  38 d0 8d e2                                      add sp, sp, #0x38
0045f4cc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045f4d0  8e bb fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045f4d4  80 56 53 00 ac 40 00 00 84 08 00 00 38 dc 46 00  .byte 0x80, 0x56, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x38, 0xdc, 0x46, 0x00
0045f4e4  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
