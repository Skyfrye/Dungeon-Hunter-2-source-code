; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004556bc, declared_size=8, range_size=8, mode=arm
; class-group: Script_LockCharacter
; alias: _ZNK20Script_LockCharacter10IsBlockingEv
; demangled: Script_LockCharacter::IsBlocking() const
; decoder-mode: arm
004556bc  00 00 a0 e3                                      mov r0, #0
004556c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045dda0, declared_size=304, range_size=304, mode=arm
; class-group: Script_LockCharacter
; alias: _ZN20Script_LockCharacter7ExecuteEbi
; demangled: Script_LockCharacter::Execute(bool, int)
; decoder-mode: arm
0045dda0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045dda4  08 41 9f e5                                      ldr r4, [pc, #0x108]
0045dda8  08 51 9f e5                                      ldr r5, [pc, #0x108]
0045ddac  38 d0 4d e2                                      sub sp, sp, #0x38
0045ddb0  04 40 8f e0                                      add r4, pc, r4
0045ddb4  05 30 94 e7                                      ldr r3, [r4, r5]
0045ddb8  00 60 51 e2                                      subs r6, r1, #0
0045ddbc  02 a0 a0 e1                                      mov sl, r2
0045ddc0  00 30 93 e5                                      ldr r3, [r3]
0045ddc4  34 30 8d e5                                      str r3, [sp, #0x34]
0045ddc8  06 00 00 0a                                      beq #0x45dde8
0045ddcc  05 30 94 e7                                      ldr r3, [r4, r5]
0045ddd0  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045ddd4  00 30 93 e5                                      ldr r3, [r3]
0045ddd8  03 00 52 e1                                      cmp r2, r3
0045dddc  33 00 00 1a                                      bne #0x45deb0
0045dde0  38 d0 8d e2                                      add sp, sp, #0x38
0045dde4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045dde8  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0045ddec  0c 90 90 e5                                      ldr sb, [r0, #0xc]
0045ddf0  1c 70 8d e2                                      add r7, sp, #0x1c
0045ddf4  03 80 94 e7                                      ldr r8, [r4, r3]
0045ddf8  08 00 a0 e1                                      mov r0, r8
0045ddfc  a1 66 fb eb                                      bl #0x337888
0045de00  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0045de04  18 20 8d e2                                      add r2, sp, #0x18
0045de08  07 00 a0 e1                                      mov r0, r7
0045de0c  01 10 8f e0                                      add r1, pc, r1
0045de10  b5 d8 fa eb                                      bl #0x3140ec
0045de14  07 10 a0 e1                                      mov r1, r7
0045de18  08 00 a0 e1                                      mov r0, r8
0045de1c  19 67 fb eb                                      bl #0x337a88
0045de20  07 00 a0 e1                                      mov r0, r7
0045de24  0a e9 fa eb                                      bl #0x318254
0045de28  0c 80 99 e5                                      ldr r8, [sb, #0xc]
0045de2c  90 10 9f e5                                      ldr r1, [pc, #0x90]
0045de30  08 00 a0 e1                                      mov r0, r8
0045de34  01 10 8f e0                                      add r1, pc, r1
0045de38  2a c2 fa eb                                      bl #0x30e6e8
0045de3c  00 00 50 e3                                      cmp r0, #0
0045de40  04 00 00 1a                                      bne #0x45de58
0045de44  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0045de48  01 20 a0 e3                                      mov r2, #1
0045de4c  03 30 94 e7                                      ldr r3, [r4, r3]
0045de50  00 20 c3 e5                                      strb r2, [r3]
0045de54  dc ff ff ea                                      b #0x45ddcc
0045de58  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0045de5c  0c 70 8d e2                                      add r7, sp, #0xc
0045de60  08 20 a0 e1                                      mov r2, r8
0045de64  03 10 94 e7                                      ldr r1, [r4, r3]
0045de68  07 00 a0 e1                                      mov r0, r7
0045de6c  0a 30 a0 e1                                      mov r3, sl
0045de70  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045de74  00 60 8d e5                                      str r6, [sp]
0045de78  04 60 8d e5                                      str r6, [sp, #4]
0045de7c  87 b3 fb eb                                      bl #0x34aca0
0045de80  07 00 a0 e1                                      mov r0, r7
0045de84  06 10 a0 e1                                      mov r1, r6
0045de88  cc 87 fb eb                                      bl #0x33fdc0
0045de8c  00 00 50 e3                                      cmp r0, #0
0045de90  cd ff ff 0a                                      beq #0x45ddcc
0045de94  07 00 a0 e1                                      mov r0, r7
0045de98  2d 88 fb eb                                      bl #0x33ff54
0045de9c  00 00 50 e3                                      cmp r0, #0
0045dea0  78 33 90 15                                      ldrne r3, [r0, #0x378]
0045dea4  01 20 a0 13                                      movne r2, #1
0045dea8  08 20 c3 15                                      strbne r2, [r3, #8]
0045deac  c6 ff ff ea                                      b #0x45ddcc
0045deb0  16 c1 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045deb4  e0 6c 53 00 ac 40 00 00 84 08 00 00 74 f2 46 00  .byte 0xe0, 0x6c, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x74, 0xf2, 0x46, 0x00
0045dec4  14 b1 46 00 50 36 00 00 f4 37 00 00              .byte 0x14, 0xb1, 0x46, 0x00, 0x50, 0x36, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
