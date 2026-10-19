; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455684, declared_size=8, range_size=8, mode=arm
; class-group: Script_SetCameraClip
; alias: _ZNK20Script_SetCameraClip10IsBlockingEv
; demangled: Script_SetCameraClip::IsBlocking() const
; decoder-mode: arm
00455684  00 00 a0 e3                                      mov r0, #0
00455688  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045c670, declared_size=592, range_size=592, mode=arm
; class-group: Script_SetCameraClip
; alias: _ZN20Script_SetCameraClip7ExecuteEbi
; demangled: Script_SetCameraClip::Execute(bool, int)
; decoder-mode: arm
0045c670  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045c674  10 42 9f e5                                      ldr r4, [pc, #0x210]
0045c678  10 52 9f e5                                      ldr r5, [pc, #0x210]
0045c67c  10 22 9f e5                                      ldr r2, [pc, #0x210]
0045c680  04 40 8f e0                                      add r4, pc, r4
0045c684  05 30 94 e7                                      ldr r3, [r4, r5]
0045c688  02 80 94 e7                                      ldr r8, [r4, r2]
0045c68c  28 d0 4d e2                                      sub sp, sp, #0x28
0045c690  00 30 93 e5                                      ldr r3, [r3]
0045c694  0c 60 8d e2                                      add r6, sp, #0xc
0045c698  24 30 8d e5                                      str r3, [sp, #0x24]
0045c69c  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0045c6a0  08 00 a0 e1                                      mov r0, r8
0045c6a4  77 6c fb eb                                      bl #0x337888
0045c6a8  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
0045c6ac  08 20 8d e2                                      add r2, sp, #8
0045c6b0  06 00 a0 e1                                      mov r0, r6
0045c6b4  01 10 8f e0                                      add r1, pc, r1
0045c6b8  8b de fa eb                                      bl #0x3140ec
0045c6bc  06 10 a0 e1                                      mov r1, r6
0045c6c0  08 00 a0 e1                                      mov r0, r8
0045c6c4  ef 6c fb eb                                      bl #0x337a88
0045c6c8  06 00 a0 e1                                      mov r0, r6
0045c6cc  e0 ee fa eb                                      bl #0x318254
0045c6d0  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
0045c6d4  03 00 94 e7                                      ldr r0, [r4, r3]
0045c6d8  ad 0b fb eb                                      bl #0x31f594
0045c6dc  00 80 50 e2                                      subs r8, r0, #0
0045c6e0  11 00 00 0a                                      beq #0x45c72c
0045c6e4  28 61 98 e5                                      ldr r6, [r8, #0x128]
0045c6e8  00 00 56 e3                                      cmp r6, #0
0045c6ec  0e 00 00 0a                                      beq #0x45c72c
0045c6f0  0c 00 97 e5                                      ldr r0, [r7, #0xc]
0045c6f4  00 00 50 e3                                      cmp r0, #0
0045c6f8  12 00 00 da                                      ble #0x45c748
0045c6fc  98 c8 fa eb                                      bl #0x30e964
0045c700  08 a0 96 e5                                      ldr sl, [r6, #8]
0045c704  00 10 a0 e1                                      mov r1, r0
0045c708  00 30 9a e5                                      ldr r3, [sl]
0045c70c  0a 00 a0 e1                                      mov r0, sl
0045c710  0f e0 a0 e1                                      mov lr, pc
0045c714  30 f1 93 e5                                      ldr pc, [r3, #0x130]
0045c718  08 00 97 e5                                      ldr r0, [r7, #8]
0045c71c  00 00 50 e3                                      cmp r0, #0
0045c720  18 00 00 ca                                      bgt #0x45c788
0045c724  02 00 70 e3                                      cmn r0, #2
0045c728  1e 00 00 0a                                      beq #0x45c7a8
0045c72c  05 30 94 e7                                      ldr r3, [r4, r5]
0045c730  24 20 9d e5                                      ldr r2, [sp, #0x24]
0045c734  00 30 93 e5                                      ldr r3, [r3]
0045c738  03 00 52 e1                                      cmp r2, r3
0045c73c  51 00 00 1a                                      bne #0x45c888
0045c740  28 d0 8d e2                                      add sp, sp, #0x28
0045c744  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045c748  02 00 70 e3                                      cmn r0, #2
0045c74c  f1 ff ff 1a                                      bne #0x45c718
0045c750  08 a0 96 e5                                      ldr sl, [r6, #8]
0045c754  38 30 98 e5                                      ldr r3, [r8, #0x38]
0045c758  00 20 9a e5                                      ldr r2, [sl]
0045c75c  00 00 53 e3                                      cmp r3, #0
0045c760  30 91 92 e5                                      ldr sb, [r2, #0x130]
0045c764  31 00 00 0a                                      beq #0x45c830
0045c768  94 02 93 e5                                      ldr r0, [r3, #0x294]
0045c76c  7c c8 fa eb                                      bl #0x30e964
0045c770  00 10 a0 e1                                      mov r1, r0
0045c774  0a 00 a0 e1                                      mov r0, sl
0045c778  39 ff 2f e1                                      blx sb
0045c77c  08 00 97 e5                                      ldr r0, [r7, #8]
0045c780  00 00 50 e3                                      cmp r0, #0
0045c784  e6 ff ff da                                      ble #0x45c724
0045c788  75 c8 fa eb                                      bl #0x30e964
0045c78c  08 60 96 e5                                      ldr r6, [r6, #8]
0045c790  00 10 a0 e1                                      mov r1, r0
0045c794  00 30 96 e5                                      ldr r3, [r6]
0045c798  06 00 a0 e1                                      mov r0, r6
0045c79c  0f e0 a0 e1                                      mov lr, pc
0045c7a0  34 f1 93 e5                                      ldr pc, [r3, #0x134]
0045c7a4  e0 ff ff ea                                      b #0x45c72c
0045c7a8  08 60 96 e5                                      ldr r6, [r6, #8]
0045c7ac  38 30 98 e5                                      ldr r3, [r8, #0x38]
0045c7b0  00 20 96 e5                                      ldr r2, [r6]
0045c7b4  00 00 53 e3                                      cmp r3, #0
0045c7b8  34 71 92 e5                                      ldr r7, [r2, #0x134]
0045c7bc  05 00 00 0a                                      beq #0x45c7d8
0045c7c0  98 02 93 e5                                      ldr r0, [r3, #0x298]
0045c7c4  66 c8 fa eb                                      bl #0x30e964
0045c7c8  00 10 a0 e1                                      mov r1, r0
0045c7cc  06 00 a0 e1                                      mov r0, r6
0045c7d0  37 ff 2f e1                                      blx r7
0045c7d4  d4 ff ff ea                                      b #0x45c72c
0045c7d8  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
0045c7dc  02 20 94 e7                                      ldr r2, [r4, r2]
0045c7e0  00 20 92 e5                                      ldr r2, [r2]
0045c7e4  02 00 52 e3                                      cmp r2, #2
0045c7e8  00 30 83 05                                      streq r3, [r3]
0045c7ec  f3 ff ff 0a                                      beq #0x45c7c0
0045c7f0  01 00 52 e3                                      cmp r2, #1
0045c7f4  f1 ff ff 1a                                      bne #0x45c7c0
0045c7f8  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
0045c7fc  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0045c800  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0045c804  00 00 94 e7                                      ldr r0, [r4, r0]
0045c808  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0045c80c  77 cf a0 e3                                      mov ip, #0x1dc
0045c810  01 10 8f e0                                      add r1, pc, r1
0045c814  03 30 8f e0                                      add r3, pc, r3
0045c818  a8 00 80 e2                                      add r0, r0, #0xa8
0045c81c  02 20 8f e0                                      add r2, pc, r2
0045c820  00 c0 8d e5                                      str ip, [sp]
0045c824  f6 c5 fa eb                                      bl #0x30e004
0045c828  38 30 98 e5                                      ldr r3, [r8, #0x38]
0045c82c  e3 ff ff ea                                      b #0x45c7c0
0045c830  68 20 9f e5                                      ldr r2, [pc, #0x68]
0045c834  02 20 94 e7                                      ldr r2, [r4, r2]
0045c838  00 20 92 e5                                      ldr r2, [r2]
0045c83c  02 00 52 e3                                      cmp r2, #2
0045c840  00 30 83 05                                      streq r3, [r3]
0045c844  c7 ff ff 0a                                      beq #0x45c768
0045c848  01 00 52 e3                                      cmp r2, #1
0045c84c  c5 ff ff 1a                                      bne #0x45c768
0045c850  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
0045c854  58 10 9f e5                                      ldr r1, [pc, #0x58]
0045c858  58 20 9f e5                                      ldr r2, [pc, #0x58]
0045c85c  00 00 94 e7                                      ldr r0, [r4, r0]
0045c860  54 30 9f e5                                      ldr r3, [pc, #0x54]
0045c864  77 cf a0 e3                                      mov ip, #0x1dc
0045c868  01 10 8f e0                                      add r1, pc, r1
0045c86c  03 30 8f e0                                      add r3, pc, r3
0045c870  a8 00 80 e2                                      add r0, r0, #0xa8
0045c874  02 20 8f e0                                      add r2, pc, r2
0045c878  00 c0 8d e5                                      str ip, [sp]
0045c87c  e0 c5 fa eb                                      bl #0x30e004
0045c880  38 30 98 e5                                      ldr r3, [r8, #0x38]
0045c884  b7 ff ff ea                                      b #0x45c768
0045c888  a0 c6 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045c88c  10 84 53 00 ac 40 00 00 84 08 00 00 cc 09 47 00  .byte 0x10, 0x84, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xcc, 0x09, 0x47, 0x00
0045c89c  f4 37 00 00 c0 39 00 00 c0 19 00 00 c8 1b 46 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc8, 0x1b, 0x46, 0x00
0045c8ac  d4 93 46 00 44 54 46 00 70 1b 46 00 7c 93 46 00  .byte 0xd4, 0x93, 0x46, 0x00, 0x44, 0x54, 0x46, 0x00, 0x70, 0x1b, 0x46, 0x00, 0x7c, 0x93, 0x46, 0x00
0045c8bc  ec 53 46 00                                      .byte 0xec, 0x53, 0x46, 0x00
