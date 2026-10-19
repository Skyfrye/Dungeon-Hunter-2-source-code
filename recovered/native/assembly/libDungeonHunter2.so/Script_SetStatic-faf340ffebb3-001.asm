; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455810, declared_size=8, range_size=8, mode=arm
; class-group: Script_SetStatic
; alias: _ZNK16Script_SetStatic10IsBlockingEv
; demangled: Script_SetStatic::IsBlocking() const
; decoder-mode: arm
00455810  00 00 a0 e3                                      mov r0, #0
00455814  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045d868, declared_size=244, range_size=244, mode=arm
; class-group: Script_SetStatic
; alias: _ZN16Script_SetStatic7ExecuteEbi
; demangled: Script_SetStatic::Execute(bool, int)
; decoder-mode: arm
0045d868  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045d86c  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
0045d870  d4 80 9f e5                                      ldr r8, [pc, #0xd4]
0045d874  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
0045d878  04 40 8f e0                                      add r4, pc, r4
0045d87c  08 30 94 e7                                      ldr r3, [r4, r8]
0045d880  01 a0 94 e7                                      ldr sl, [r4, r1]
0045d884  38 d0 4d e2                                      sub sp, sp, #0x38
0045d888  00 30 93 e5                                      ldr r3, [r3]
0045d88c  02 90 a0 e1                                      mov sb, r2
0045d890  1c 50 8d e2                                      add r5, sp, #0x1c
0045d894  34 30 8d e5                                      str r3, [sp, #0x34]
0045d898  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0045d89c  0a 00 a0 e1                                      mov r0, sl
0045d8a0  f8 67 fb eb                                      bl #0x337888
0045d8a4  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0045d8a8  18 20 8d e2                                      add r2, sp, #0x18
0045d8ac  05 00 a0 e1                                      mov r0, r5
0045d8b0  01 10 8f e0                                      add r1, pc, r1
0045d8b4  0c da fa eb                                      bl #0x3140ec
0045d8b8  05 10 a0 e1                                      mov r1, r5
0045d8bc  0a 00 a0 e1                                      mov r0, sl
0045d8c0  70 68 fb eb                                      bl #0x337a88
0045d8c4  05 00 a0 e1                                      mov r0, r5
0045d8c8  61 ea fa eb                                      bl #0x318254
0045d8cc  84 10 9f e5                                      ldr r1, [pc, #0x84]
0045d8d0  0c 60 8d e2                                      add r6, sp, #0xc
0045d8d4  10 20 97 e5                                      ldr r2, [r7, #0x10]
0045d8d8  01 10 94 e7                                      ldr r1, [r4, r1]
0045d8dc  00 50 a0 e3                                      mov r5, #0
0045d8e0  09 30 a0 e1                                      mov r3, sb
0045d8e4  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045d8e8  06 00 a0 e1                                      mov r0, r6
0045d8ec  00 50 8d e5                                      str r5, [sp]
0045d8f0  04 50 8d e5                                      str r5, [sp, #4]
0045d8f4  e9 b4 fb eb                                      bl #0x34aca0
0045d8f8  06 00 a0 e1                                      mov r0, r6
0045d8fc  05 10 a0 e1                                      mov r1, r5
0045d900  2e 89 fb eb                                      bl #0x33fdc0
0045d904  00 00 50 e3                                      cmp r0, #0
0045d908  0a 00 00 1a                                      bne #0x45d938
0045d90c  08 30 d7 e5                                      ldrb r3, [r7, #8]
0045d910  00 00 53 e3                                      cmp r3, #0
0045d914  01 30 a0 13                                      movne r3, #1
0045d918  84 30 c0 15                                      strbne r3, [r0, #0x84]
0045d91c  08 30 94 e7                                      ldr r3, [r4, r8]
0045d920  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045d924  00 30 93 e5                                      ldr r3, [r3]
0045d928  03 00 52 e1                                      cmp r2, r3
0045d92c  04 00 00 1a                                      bne #0x45d944
0045d930  38 d0 8d e2                                      add sp, sp, #0x38
0045d934  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045d938  06 00 a0 e1                                      mov r0, r6
0045d93c  84 89 fb eb                                      bl #0x33ff54
0045d940  f1 ff ff ea                                      b #0x45d90c
0045d944  71 c2 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045d948  18 72 53 00 ac 40 00 00 84 08 00 00 d0 f7 46 00  .byte 0x18, 0x72, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd0, 0xf7, 0x46, 0x00
0045d958  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
