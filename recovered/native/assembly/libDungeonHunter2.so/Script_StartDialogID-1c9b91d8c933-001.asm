; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455694, declared_size=8, range_size=8, mode=arm
; class-group: Script_StartDialogID
; alias: _ZNK20Script_StartDialogID10IsBlockingEv
; demangled: Script_StartDialogID::IsBlocking() const
; decoder-mode: arm
00455694  00 00 a0 e3                                      mov r0, #0
00455698  1e ff 2f e1                                      bx lr

; FUNCTION 0x00461114, declared_size=312, range_size=312, mode=arm
; class-group: Script_StartDialogID
; alias: _ZN20Script_StartDialogID7ExecuteEbi
; demangled: Script_StartDialogID::Execute(bool, int)
; decoder-mode: arm
00461114  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00461118  14 41 9f e5                                      ldr r4, [pc, #0x114]
0046111c  14 51 9f e5                                      ldr r5, [pc, #0x114]
00461120  40 d0 4d e2                                      sub sp, sp, #0x40
00461124  04 40 8f e0                                      add r4, pc, r4
00461128  05 30 94 e7                                      ldr r3, [r4, r5]
0046112c  00 70 51 e2                                      subs r7, r1, #0
00461130  00 30 93 e5                                      ldr r3, [r3]
00461134  3c 30 8d e5                                      str r3, [sp, #0x3c]
00461138  06 00 00 0a                                      beq #0x461158
0046113c  05 30 94 e7                                      ldr r3, [r4, r5]
00461140  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00461144  00 30 93 e5                                      ldr r3, [r3]
00461148  03 00 52 e1                                      cmp r2, r3
0046114c  37 00 00 1a                                      bne #0x461230
00461150  40 d0 8d e2                                      add sp, sp, #0x40
00461154  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00461158  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
0046115c  0c 90 90 e5                                      ldr sb, [r0, #0xc]
00461160  24 80 8d e2                                      add r8, sp, #0x24
00461164  03 a0 94 e7                                      ldr sl, [r4, r3]
00461168  14 60 8d e2                                      add r6, sp, #0x14
0046116c  0a 00 a0 e1                                      mov r0, sl
00461170  c4 59 fb eb                                      bl #0x337888
00461174  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00461178  20 20 8d e2                                      add r2, sp, #0x20
0046117c  08 00 a0 e1                                      mov r0, r8
00461180  01 10 8f e0                                      add r1, pc, r1
00461184  d8 cb fa eb                                      bl #0x3140ec
00461188  08 10 a0 e1                                      mov r1, r8
0046118c  0a 00 a0 e1                                      mov r0, sl
00461190  3c 5a fb eb                                      bl #0x337a88
00461194  08 00 a0 e1                                      mov r0, r8
00461198  2d dc fa eb                                      bl #0x318254
0046119c  1c 70 8d e5                                      str r7, [sp, #0x1c]
004611a0  14 70 8d e5                                      str r7, [sp, #0x14]
004611a4  18 70 8d e5                                      str r7, [sp, #0x18]
004611a8  08 00 99 e5                                      ldr r0, [sb, #8]
004611ac  06 10 a0 e1                                      mov r1, r6
004611b0  53 4b ff eb                                      bl #0x433f04
004611b4  00 00 50 e3                                      cmp r0, #0
004611b8  02 00 00 1a                                      bne #0x4611c8
004611bc  06 00 a0 e1                                      mov r0, r6
004611c0  c8 eb ff eb                                      bl #0x45c0e8
004611c4  dc ff ff ea                                      b #0x46113c
004611c8  18 80 9d e5                                      ldr r8, [sp, #0x18]
004611cc  14 70 9d e5                                      ldr r7, [sp, #0x14]
004611d0  07 00 58 e1                                      cmp r8, r7
004611d4  05 00 00 0a                                      beq #0x4611f0
004611d8  07 00 a0 e1                                      mov r0, r7
004611dc  00 10 a0 e3                                      mov r1, #0
004611e0  4c 70 87 e2                                      add r7, r7, #0x4c
004611e4  00 ff ff eb                                      bl #0x460dec
004611e8  07 00 58 e1                                      cmp r8, r7
004611ec  f9 ff ff 1a                                      bne #0x4611d8
004611f0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004611f4  04 c0 8d e2                                      add ip, sp, #4
004611f8  03 e0 94 e7                                      ldr lr, [r4, r3]
004611fc  04 30 8e e2                                      add r3, lr, #4
00461200  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00461204  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00461208  14 00 8e e2                                      add r0, lr, #0x14
0046120c  0c 10 a0 e1                                      mov r1, ip
00461210  06 d4 ff eb                                      bl #0x456230
00461214  01 00 50 e3                                      cmp r0, #1
00461218  e7 ff ff 1a                                      bne #0x4611bc
0046121c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00461220  03 30 94 e7                                      ldr r3, [r4, r3]
00461224  00 00 93 e5                                      ldr r0, [r3]
00461228  4d e3 ff eb                                      bl #0x459f64
0046122c  e2 ff ff ea                                      b #0x4611bc
00461230  36 b4 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00461234  6c 39 53 00 ac 40 00 00 84 08 00 00 00 bf 46 00  .byte 0x6c, 0x39, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x00, 0xbf, 0x46, 0x00
00461244  74 1e 00 00 48 38 00 00                          .byte 0x74, 0x1e, 0x00, 0x00, 0x48, 0x38, 0x00, 0x00
