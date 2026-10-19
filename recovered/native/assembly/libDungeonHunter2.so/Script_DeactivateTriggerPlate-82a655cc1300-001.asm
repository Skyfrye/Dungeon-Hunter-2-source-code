; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004558d4, declared_size=8, range_size=8, mode=arm
; class-group: Script_DeactivateTriggerPlate
; alias: _ZNK29Script_DeactivateTriggerPlate10IsBlockingEv
; demangled: Script_DeactivateTriggerPlate::IsBlocking() const
; decoder-mode: arm
004558d4  00 00 a0 e3                                      mov r0, #0
004558d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045d0e0, declared_size=248, range_size=248, mode=arm
; class-group: Script_DeactivateTriggerPlate
; alias: _ZN29Script_DeactivateTriggerPlate7ExecuteEbi
; demangled: Script_DeactivateTriggerPlate::Execute(bool, int)
; decoder-mode: arm
0045d0e0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045d0e4  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0045d0e8  d8 60 9f e5                                      ldr r6, [pc, #0xd8]
0045d0ec  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0045d0f0  04 40 8f e0                                      add r4, pc, r4
0045d0f4  06 30 94 e7                                      ldr r3, [r4, r6]
0045d0f8  01 70 94 e7                                      ldr r7, [r4, r1]
0045d0fc  38 d0 4d e2                                      sub sp, sp, #0x38
0045d100  00 30 93 e5                                      ldr r3, [r3]
0045d104  00 80 a0 e1                                      mov r8, r0
0045d108  07 00 a0 e1                                      mov r0, r7
0045d10c  34 30 8d e5                                      str r3, [sp, #0x34]
0045d110  02 90 a0 e1                                      mov sb, r2
0045d114  0c a0 98 e5                                      ldr sl, [r8, #0xc]
0045d118  da 69 fb eb                                      bl #0x337888
0045d11c  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0045d120  1c 50 8d e2                                      add r5, sp, #0x1c
0045d124  18 20 8d e2                                      add r2, sp, #0x18
0045d128  01 10 8f e0                                      add r1, pc, r1
0045d12c  05 00 a0 e1                                      mov r0, r5
0045d130  ed db fa eb                                      bl #0x3140ec
0045d134  05 10 a0 e1                                      mov r1, r5
0045d138  07 00 a0 e1                                      mov r0, r7
0045d13c  51 6a fb eb                                      bl #0x337a88
0045d140  05 00 a0 e1                                      mov r0, r5
0045d144  42 ec fa eb                                      bl #0x318254
0045d148  84 30 9f e5                                      ldr r3, [pc, #0x84]
0045d14c  0c 70 8d e2                                      add r7, sp, #0xc
0045d150  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045d154  03 10 94 e7                                      ldr r1, [r4, r3]
0045d158  00 50 a0 e3                                      mov r5, #0
0045d15c  09 30 a0 e1                                      mov r3, sb
0045d160  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045d164  07 00 a0 e1                                      mov r0, r7
0045d168  00 50 8d e5                                      str r5, [sp]
0045d16c  04 50 8d e5                                      str r5, [sp, #4]
0045d170  ca b6 fb eb                                      bl #0x34aca0
0045d174  07 00 a0 e1                                      mov r0, r7
0045d178  05 10 a0 e1                                      mov r1, r5
0045d17c  0f 8b fb eb                                      bl #0x33fdc0
0045d180  00 00 50 e3                                      cmp r0, #0
0045d184  04 00 00 0a                                      beq #0x45d19c
0045d188  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0045d18c  12 00 53 e3                                      cmp r3, #0x12
0045d190  10 00 88 05                                      streq r0, [r8, #0x10]
0045d194  79 57 c0 05                                      strbeq r5, [r0, #0x779]
0045d198  01 00 00 0a                                      beq #0x45d1a4
0045d19c  00 30 a0 e3                                      mov r3, #0
0045d1a0  10 30 88 e5                                      str r3, [r8, #0x10]
0045d1a4  06 30 94 e7                                      ldr r3, [r4, r6]
0045d1a8  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045d1ac  00 30 93 e5                                      ldr r3, [r3]
0045d1b0  03 00 52 e1                                      cmp r2, r3
0045d1b4  01 00 00 1a                                      bne #0x45d1c0
0045d1b8  38 d0 8d e2                                      add sp, sp, #0x38
0045d1bc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045d1c0  52 c4 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045d1c4  a0 79 53 00 ac 40 00 00 84 08 00 00 58 ff 46 00  .byte 0xa0, 0x79, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x58, 0xff, 0x46, 0x00
0045d1d4  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
