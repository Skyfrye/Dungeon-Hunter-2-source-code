; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455708, declared_size=68, range_size=68, mode=arm
; class-group: Script_HideFlash
; alias: _ZNK16Script_HideFlash10IsBlockingEv
; demangled: Script_HideFlash::IsBlocking() const
; decoder-mode: arm
00455708  10 20 90 e5                                      ldr r2, [r0, #0x10]
0045570c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00455710  00 00 52 e3                                      cmp r2, #0
00455714  0a 00 00 0a                                      beq #0x455744
00455718  14 10 d3 e5                                      ldrb r1, [r3, #0x14]
0045571c  00 00 51 e3                                      cmp r1, #0
00455720  07 00 00 0a                                      beq #0x455744
00455724  08 30 93 e5                                      ldr r3, [r3, #8]
00455728  00 00 53 e3                                      cmp r3, #0
0045572c  04 00 00 da                                      ble #0x455744
00455730  78 00 92 e5                                      ldr r0, [r2, #0x78]
00455734  00 00 53 e1                                      cmp r3, r0
00455738  00 00 a0 d3                                      movle r0, #0
0045573c  01 00 a0 c3                                      movgt r0, #1
00455740  1e ff 2f e1                                      bx lr
00455744  00 00 a0 e3                                      mov r0, #0
00455748  1e ff 2f e1                                      bx lr

; FUNCTION 0x004597e8, declared_size=84, range_size=84, mode=arm
; class-group: Script_HideFlash
; alias: _ZN16Script_HideFlash4InitEv
; demangled: Script_HideFlash::Init()
; decoder-mode: arm
004597e8  70 40 2d e9                                      push {r4, r5, r6, lr}
004597ec  00 40 a0 e1                                      mov r4, r0
004597f0  a5 4c ff eb                                      bl #0x42ca8c
004597f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004597f8  38 10 9f e5                                      ldr r1, [pc, #0x38]
004597fc  00 60 a0 e1                                      mov r6, r0
00459800  10 50 93 e5                                      ldr r5, [r3, #0x10]
00459804  01 10 8f e0                                      add r1, pc, r1
00459808  05 00 a0 e1                                      mov r0, r5
0045980c  f0 d4 fa eb                                      bl #0x30ebd4
00459810  00 00 50 e3                                      cmp r0, #0
00459814  02 00 00 0a                                      beq #0x459824
00459818  00 30 a0 e3                                      mov r3, #0
0045981c  10 30 84 e5                                      str r3, [r4, #0x10]
00459820  70 80 bd e8                                      pop {r4, r5, r6, pc}
00459824  06 00 a0 e1                                      mov r0, r6
00459828  05 10 a0 e1                                      mov r1, r5
0045982c  6f 4e ff eb                                      bl #0x42d1f0
00459830  10 00 84 e5                                      str r0, [r4, #0x10]
00459834  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00459838  04 37 47 00                                      .byte 0x04, 0x37, 0x47, 0x00

; FUNCTION 0x0045f78c, declared_size=316, range_size=316, mode=arm
; class-group: Script_HideFlash
; alias: _ZN16Script_HideFlash7ExecuteEbi
; demangled: Script_HideFlash::Execute(bool, int)
; decoder-mode: arm
0045f78c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045f790  18 41 9f e5                                      ldr r4, [pc, #0x118]
0045f794  18 71 9f e5                                      ldr r7, [pc, #0x118]
0045f798  18 21 9f e5                                      ldr r2, [pc, #0x118]
0045f79c  04 40 8f e0                                      add r4, pc, r4
0045f7a0  07 30 94 e7                                      ldr r3, [r4, r7]
0045f7a4  02 a0 94 e7                                      ldr sl, [r4, r2]
0045f7a8  38 d0 4d e2                                      sub sp, sp, #0x38
0045f7ac  00 30 93 e5                                      ldr r3, [r3]
0045f7b0  00 60 a0 e1                                      mov r6, r0
0045f7b4  0a 00 a0 e1                                      mov r0, sl
0045f7b8  0c 80 96 e5                                      ldr r8, [r6, #0xc]
0045f7bc  34 30 8d e5                                      str r3, [sp, #0x34]
0045f7c0  30 60 fb eb                                      bl #0x337888
0045f7c4  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0045f7c8  1c 50 8d e2                                      add r5, sp, #0x1c
0045f7cc  18 20 8d e2                                      add r2, sp, #0x18
0045f7d0  01 10 8f e0                                      add r1, pc, r1
0045f7d4  05 00 a0 e1                                      mov r0, r5
0045f7d8  43 d2 fa eb                                      bl #0x3140ec
0045f7dc  05 10 a0 e1                                      mov r1, r5
0045f7e0  0a 00 a0 e1                                      mov r0, sl
0045f7e4  a7 60 fb eb                                      bl #0x337a88
0045f7e8  05 00 a0 e1                                      mov r0, r5
0045f7ec  98 e2 fa eb                                      bl #0x318254
0045f7f0  10 50 96 e5                                      ldr r5, [r6, #0x10]
0045f7f4  00 00 55 e3                                      cmp r5, #0
0045f7f8  0a 00 00 0a                                      beq #0x45f828
0045f7fc  05 00 a0 e1                                      mov r0, r5
0045f800  00 30 95 e5                                      ldr r3, [r5]
0045f804  0f e0 a0 e1                                      mov lr, pc
0045f808  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0045f80c  07 30 94 e7                                      ldr r3, [r4, r7]
0045f810  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045f814  00 30 93 e5                                      ldr r3, [r3]
0045f818  03 00 52 e1                                      cmp r2, r3
0045f81c  22 00 00 1a                                      bne #0x45f8ac
0045f820  38 d0 8d e2                                      add sp, sp, #0x38
0045f824  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045f828  97 34 ff eb                                      bl #0x42ca8c
0045f82c  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0045f830  00 a0 a0 e1                                      mov sl, r0
0045f834  10 00 98 e5                                      ldr r0, [r8, #0x10]
0045f838  01 10 8f e0                                      add r1, pc, r1
0045f83c  e4 bc fa eb                                      bl #0x30ebd4
0045f840  00 00 50 e3                                      cmp r0, #0
0045f844  14 00 00 0a                                      beq #0x45f89c
0045f848  0a 00 a0 e1                                      mov r0, sl
0045f84c  ce 34 ff eb                                      bl #0x42cb8c
0045f850  00 90 a0 e1                                      mov sb, r0
0045f854  0a 00 a0 e1                                      mov r0, sl
0045f858  cb 34 ff eb                                      bl #0x42cb8c
0045f85c  12 21 0d eb                                      bl #0x7a7cac
0045f860  3b 52 0c eb                                      bl #0x774154
0045f864  58 20 9f e5                                      ldr r2, [pc, #0x58]
0045f868  0c 80 8d e2                                      add r8, sp, #0xc
0045f86c  01 c0 a0 e3                                      mov ip, #1
0045f870  00 10 a0 e1                                      mov r1, r0
0045f874  02 20 8f e0                                      add r2, pc, r2
0045f878  09 00 a0 e1                                      mov r0, sb
0045f87c  08 30 a0 e1                                      mov r3, r8
0045f880  10 50 cd e5                                      strb r5, [sp, #0x10]
0045f884  00 c0 8d e5                                      str ip, [sp]
0045f888  0c 50 cd e5                                      strb r5, [sp, #0xc]
0045f88c  0d c0 cd e5                                      strb ip, [sp, #0xd]
0045f890  5d 31 0d eb                                      bl #0x7abe0c
0045f894  08 00 a0 e1                                      mov r0, r8
0045f898  21 de 0c eb                                      bl #0x797124
0045f89c  10 50 96 e5                                      ldr r5, [r6, #0x10]
0045f8a0  00 00 55 e3                                      cmp r5, #0
0045f8a4  d8 ff ff 0a                                      beq #0x45f80c
0045f8a8  d3 ff ff ea                                      b #0x45f7fc
0045f8ac  97 ba fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045f8b0  f4 52 53 00 ac 40 00 00 84 08 00 00 b0 d8 46 00  .byte 0xf4, 0x52, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xb0, 0xd8, 0x46, 0x00
0045f8c0  d0 d6 46 00 4c d8 46 00                          .byte 0xd0, 0xd6, 0x46, 0x00, 0x4c, 0xd8, 0x46, 0x00
