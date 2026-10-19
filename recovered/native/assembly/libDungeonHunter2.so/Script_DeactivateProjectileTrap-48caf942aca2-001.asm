; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004558c4, declared_size=8, range_size=8, mode=arm
; class-group: Script_DeactivateProjectileTrap
; alias: _ZNK31Script_DeactivateProjectileTrap10IsBlockingEv
; demangled: Script_DeactivateProjectileTrap::IsBlocking() const
; decoder-mode: arm
004558c4  00 00 a0 e3                                      mov r0, #0
004558c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045d2d4, declared_size=248, range_size=248, mode=arm
; class-group: Script_DeactivateProjectileTrap
; alias: _ZN31Script_DeactivateProjectileTrap7ExecuteEbi
; demangled: Script_DeactivateProjectileTrap::Execute(bool, int)
; decoder-mode: arm
0045d2d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045d2d8  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0045d2dc  d8 60 9f e5                                      ldr r6, [pc, #0xd8]
0045d2e0  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0045d2e4  04 40 8f e0                                      add r4, pc, r4
0045d2e8  06 30 94 e7                                      ldr r3, [r4, r6]
0045d2ec  01 70 94 e7                                      ldr r7, [r4, r1]
0045d2f0  38 d0 4d e2                                      sub sp, sp, #0x38
0045d2f4  00 30 93 e5                                      ldr r3, [r3]
0045d2f8  00 80 a0 e1                                      mov r8, r0
0045d2fc  07 00 a0 e1                                      mov r0, r7
0045d300  34 30 8d e5                                      str r3, [sp, #0x34]
0045d304  02 90 a0 e1                                      mov sb, r2
0045d308  0c a0 98 e5                                      ldr sl, [r8, #0xc]
0045d30c  5d 69 fb eb                                      bl #0x337888
0045d310  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0045d314  1c 50 8d e2                                      add r5, sp, #0x1c
0045d318  18 20 8d e2                                      add r2, sp, #0x18
0045d31c  01 10 8f e0                                      add r1, pc, r1
0045d320  05 00 a0 e1                                      mov r0, r5
0045d324  70 db fa eb                                      bl #0x3140ec
0045d328  05 10 a0 e1                                      mov r1, r5
0045d32c  07 00 a0 e1                                      mov r0, r7
0045d330  d4 69 fb eb                                      bl #0x337a88
0045d334  05 00 a0 e1                                      mov r0, r5
0045d338  c5 eb fa eb                                      bl #0x318254
0045d33c  84 30 9f e5                                      ldr r3, [pc, #0x84]
0045d340  0c 70 8d e2                                      add r7, sp, #0xc
0045d344  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045d348  03 10 94 e7                                      ldr r1, [r4, r3]
0045d34c  00 50 a0 e3                                      mov r5, #0
0045d350  09 30 a0 e1                                      mov r3, sb
0045d354  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045d358  07 00 a0 e1                                      mov r0, r7
0045d35c  00 50 8d e5                                      str r5, [sp]
0045d360  04 50 8d e5                                      str r5, [sp, #4]
0045d364  4d b6 fb eb                                      bl #0x34aca0
0045d368  07 00 a0 e1                                      mov r0, r7
0045d36c  05 10 a0 e1                                      mov r1, r5
0045d370  92 8a fb eb                                      bl #0x33fdc0
0045d374  00 00 50 e3                                      cmp r0, #0
0045d378  04 00 00 0a                                      beq #0x45d390
0045d37c  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0045d380  11 00 53 e3                                      cmp r3, #0x11
0045d384  10 00 88 05                                      streq r0, [r8, #0x10]
0045d388  0c 54 c0 05                                      strbeq r5, [r0, #0x40c]
0045d38c  01 00 00 0a                                      beq #0x45d398
0045d390  00 30 a0 e3                                      mov r3, #0
0045d394  10 30 88 e5                                      str r3, [r8, #0x10]
0045d398  06 30 94 e7                                      ldr r3, [r4, r6]
0045d39c  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045d3a0  00 30 93 e5                                      ldr r3, [r3]
0045d3a4  03 00 52 e1                                      cmp r2, r3
0045d3a8  01 00 00 1a                                      bne #0x45d3b4
0045d3ac  38 d0 8d e2                                      add sp, sp, #0x38
0045d3b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045d3b4  d5 c3 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045d3b8  ac 77 53 00 ac 40 00 00 84 08 00 00 64 fd 46 00  .byte 0xac, 0x77, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x64, 0xfd, 0x46, 0x00
0045d3c8  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
