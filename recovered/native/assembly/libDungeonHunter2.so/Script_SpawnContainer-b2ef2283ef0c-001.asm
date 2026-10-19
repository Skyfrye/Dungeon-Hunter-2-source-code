; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004558dc, declared_size=8, range_size=8, mode=arm
; class-group: Script_SpawnContainer
; alias: _ZNK21Script_SpawnContainer10IsBlockingEv
; demangled: Script_SpawnContainer::IsBlocking() const
; decoder-mode: arm
004558dc  00 00 a0 e3                                      mov r0, #0
004558e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045d008, declared_size=216, range_size=216, mode=arm
; class-group: Script_SpawnContainer
; alias: _ZN21Script_SpawnContainer7ExecuteEbi
; demangled: Script_SpawnContainer::Execute(bool, int)
; decoder-mode: arm
0045d008  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045d00c  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
0045d010  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
0045d014  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0045d018  04 40 8f e0                                      add r4, pc, r4
0045d01c  05 30 94 e7                                      ldr r3, [r4, r5]
0045d020  01 80 94 e7                                      ldr r8, [r4, r1]
0045d024  38 d0 4d e2                                      sub sp, sp, #0x38
0045d028  00 30 93 e5                                      ldr r3, [r3]
0045d02c  02 90 a0 e1                                      mov sb, r2
0045d030  1c 70 8d e2                                      add r7, sp, #0x1c
0045d034  34 30 8d e5                                      str r3, [sp, #0x34]
0045d038  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0045d03c  08 00 a0 e1                                      mov r0, r8
0045d040  10 6a fb eb                                      bl #0x337888
0045d044  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0045d048  18 20 8d e2                                      add r2, sp, #0x18
0045d04c  07 00 a0 e1                                      mov r0, r7
0045d050  01 10 8f e0                                      add r1, pc, r1
0045d054  24 dc fa eb                                      bl #0x3140ec
0045d058  07 10 a0 e1                                      mov r1, r7
0045d05c  08 00 a0 e1                                      mov r0, r8
0045d060  88 6a fb eb                                      bl #0x337a88
0045d064  07 00 a0 e1                                      mov r0, r7
0045d068  79 ec fa eb                                      bl #0x318254
0045d06c  68 10 9f e5                                      ldr r1, [pc, #0x68]
0045d070  0c 60 8d e2                                      add r6, sp, #0xc
0045d074  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045d078  01 10 94 e7                                      ldr r1, [r4, r1]
0045d07c  00 c0 a0 e3                                      mov ip, #0
0045d080  09 30 a0 e1                                      mov r3, sb
0045d084  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045d088  06 00 a0 e1                                      mov r0, r6
0045d08c  04 c0 8d e5                                      str ip, [sp, #4]
0045d090  00 c0 8d e5                                      str ip, [sp]
0045d094  01 b7 fb eb                                      bl #0x34aca0
0045d098  06 00 a0 e1                                      mov r0, r6
0045d09c  d4 f0 ff eb                                      bl #0x4593f4
0045d0a0  00 00 50 e3                                      cmp r0, #0
0045d0a4  00 00 00 0a                                      beq #0x45d0ac
0045d0a8  d0 08 fd eb                                      bl #0x39f3f0
0045d0ac  05 30 94 e7                                      ldr r3, [r4, r5]
0045d0b0  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045d0b4  00 30 93 e5                                      ldr r3, [r3]
0045d0b8  03 00 52 e1                                      cmp r2, r3
0045d0bc  01 00 00 1a                                      bne #0x45d0c8
0045d0c0  38 d0 8d e2                                      add sp, sp, #0x38
0045d0c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045d0c8  90 c4 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045d0cc  78 7a 53 00 ac 40 00 00 84 08 00 00 30 00 47 00  .byte 0x78, 0x7a, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x30, 0x00, 0x47, 0x00
0045d0dc  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
