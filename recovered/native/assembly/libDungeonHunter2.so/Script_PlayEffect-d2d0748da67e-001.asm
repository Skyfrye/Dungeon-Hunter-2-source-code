; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004556ac, declared_size=8, range_size=8, mode=arm
; class-group: Script_PlayEffect
; alias: _ZNK17Script_PlayEffect10IsBlockingEv
; demangled: Script_PlayEffect::IsBlocking() const
; decoder-mode: arm
004556ac  00 00 a0 e3                                      mov r0, #0
004556b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004598b4, declared_size=36, range_size=36, mode=arm
; class-group: Script_PlayEffect
; alias: _ZN17Script_PlayEffect4InitEv
; demangled: Script_PlayEffect::Init()
; decoder-mode: arm
004598b4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
004598b8  10 30 9f e5                                      ldr r3, [pc, #0x10]
004598bc  08 10 92 e5                                      ldr r1, [r2, #8]
004598c0  0c 20 9f e5                                      ldr r2, [pc, #0xc]
004598c4  03 30 8f e0                                      add r3, pc, r3
004598c8  02 00 93 e7                                      ldr r0, [r3, r2]
004598cc  c5 f3 00 ea                                      b #0x4967e8
; mapping-symbol data/literal pool
004598d0  cc b1 53 00 08 1b 00 00                          .byte 0xcc, 0xb1, 0x53, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x0045fa9c, declared_size=324, range_size=324, mode=arm
; class-group: Script_PlayEffect
; alias: _ZN17Script_PlayEffect7ExecuteEbi
; demangled: Script_PlayEffect::Execute(bool, int)
; decoder-mode: arm
0045fa9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045faa0  20 41 9f e5                                      ldr r4, [pc, #0x120]
0045faa4  20 51 9f e5                                      ldr r5, [pc, #0x120]
0045faa8  44 d0 4d e2                                      sub sp, sp, #0x44
0045faac  04 40 8f e0                                      add r4, pc, r4
0045fab0  05 30 94 e7                                      ldr r3, [r4, r5]
0045fab4  00 70 51 e2                                      subs r7, r1, #0
0045fab8  02 a0 a0 e1                                      mov sl, r2
0045fabc  00 30 93 e5                                      ldr r3, [r3]
0045fac0  3c 30 8d e5                                      str r3, [sp, #0x3c]
0045fac4  06 00 00 0a                                      beq #0x45fae4
0045fac8  05 30 94 e7                                      ldr r3, [r4, r5]
0045facc  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0045fad0  00 30 93 e5                                      ldr r3, [r3]
0045fad4  03 00 52 e1                                      cmp r2, r3
0045fad8  39 00 00 1a                                      bne #0x45fbc4
0045fadc  44 d0 8d e2                                      add sp, sp, #0x44
0045fae0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045fae4  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
0045fae8  0c 60 90 e5                                      ldr r6, [r0, #0xc]
0045faec  24 80 8d e2                                      add r8, sp, #0x24
0045faf0  03 b0 94 e7                                      ldr fp, [r4, r3]
0045faf4  14 90 8d e2                                      add sb, sp, #0x14
0045faf8  0b 00 a0 e1                                      mov r0, fp
0045fafc  61 5f fb eb                                      bl #0x337888
0045fb00  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0045fb04  20 20 8d e2                                      add r2, sp, #0x20
0045fb08  08 00 a0 e1                                      mov r0, r8
0045fb0c  01 10 8f e0                                      add r1, pc, r1
0045fb10  75 d1 fa eb                                      bl #0x3140ec
0045fb14  08 10 a0 e1                                      mov r1, r8
0045fb18  0b 00 a0 e1                                      mov r0, fp
0045fb1c  d9 5f fb eb                                      bl #0x337a88
0045fb20  08 00 a0 e1                                      mov r0, r8
0045fb24  ca e1 fa eb                                      bl #0x318254
0045fb28  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0045fb2c  20 20 96 e5                                      ldr r2, [r6, #0x20]
0045fb30  0a 30 a0 e1                                      mov r3, sl
0045fb34  01 10 94 e7                                      ldr r1, [r4, r1]
0045fb38  09 00 a0 e1                                      mov r0, sb
0045fb3c  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045fb40  00 70 8d e5                                      str r7, [sp]
0045fb44  04 70 8d e5                                      str r7, [sp, #4]
0045fb48  54 ac fb eb                                      bl #0x34aca0
0045fb4c  07 10 a0 e1                                      mov r1, r7
0045fb50  09 00 a0 e1                                      mov r0, sb
0045fb54  08 b0 96 e5                                      ldr fp, [r6, #8]
0045fb58  98 80 fb eb                                      bl #0x33fdc0
0045fb5c  00 a0 50 e2                                      subs sl, r0, #0
0045fb60  13 00 00 1a                                      bne #0x45fbb4
0045fb64  14 00 96 e5                                      ldr r0, [r6, #0x14]
0045fb68  7d bb fa eb                                      bl #0x30e964
0045fb6c  00 70 a0 e1                                      mov r7, r0
0045fb70  18 00 96 e5                                      ldr r0, [r6, #0x18]
0045fb74  7a bb fa eb                                      bl #0x30e964
0045fb78  00 80 a0 e1                                      mov r8, r0
0045fb7c  10 00 96 e5                                      ldr r0, [r6, #0x10]
0045fb80  77 bb fa eb                                      bl #0x30e964
0045fb84  50 30 9f e5                                      ldr r3, [pc, #0x50]
0045fb88  08 00 8d e5                                      str r0, [sp, #8]
0045fb8c  00 c0 a0 e3                                      mov ip, #0
0045fb90  03 00 94 e7                                      ldr r0, [r4, r3]
0045fb94  0b 10 a0 e1                                      mov r1, fp
0045fb98  0a 30 a0 e1                                      mov r3, sl
0045fb9c  08 20 8d e2                                      add r2, sp, #8
0045fba0  0c 70 8d e5                                      str r7, [sp, #0xc]
0045fba4  10 80 8d e5                                      str r8, [sp, #0x10]
0045fba8  00 c0 8d e5                                      str ip, [sp]
0045fbac  58 d8 00 eb                                      bl #0x495d14
0045fbb0  c4 ff ff ea                                      b #0x45fac8
0045fbb4  09 00 a0 e1                                      mov r0, sb
0045fbb8  c9 80 fb eb                                      bl #0x33fee4
0045fbbc  00 a0 a0 e1                                      mov sl, r0
0045fbc0  e7 ff ff ea                                      b #0x45fb64
0045fbc4  d1 b9 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045fbc8  e4 4f 53 00 ac 40 00 00 84 08 00 00 74 d5 46 00  .byte 0xe4, 0x4f, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x74, 0xd5, 0x46, 0x00
0045fbd8  f4 37 00 00 08 1b 00 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00
