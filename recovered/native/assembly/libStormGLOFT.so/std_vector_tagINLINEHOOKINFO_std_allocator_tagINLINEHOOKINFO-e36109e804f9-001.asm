; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00043558, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<tagINLINEHOOKINFO*, std::allocator<tagINLINEHOOKINFO*> >
; alias: _ZNSt6vectorIP17tagINLINEHOOKINFOSaIS1_EED2Ev
; demangled: std::vector<tagINLINEHOOKINFO*, std::allocator<tagINLINEHOOKINFO*> >::~vector()
; decoder-mode: arm
00043558  10 4c 2d e9                                      push {r4, sl, fp, lr}
0004355c  08 b0 8d e2                                      add fp, sp, #8
00043560  00 40 a0 e1                                      mov r4, r0
00043564  00 00 94 e5                                      ldr r0, [r4]
00043568  00 00 50 e3                                      cmp r0, #0
0004356c  07 00 00 0a                                      beq #0x43590
00043570  08 10 94 e5                                      ldr r1, [r4, #8]
00043574  00 10 41 e0                                      sub r1, r1, r0
00043578  81 00 51 e3                                      cmp r1, #0x81
0004357c  02 00 00 3a                                      blo #0x4358c
00043580  83 ba ff eb                                      bl #0x31f94
00043584  04 00 a0 e1                                      mov r0, r4
00043588  10 8c bd e8                                      pop {r4, sl, fp, pc}
0004358c  83 ba ff eb                                      bl #0x31fa0
00043590  04 00 a0 e1                                      mov r0, r4
00043594  10 8c bd e8                                      pop {r4, sl, fp, pc}

; FUNCTION 0x000439f4, declared_size=456, range_size=456, mode=arm
; class-group: std::vector<tagINLINEHOOKINFO*, std::allocator<tagINLINEHOOKINFO*> >
; alias: _ZNSt6vectorIP17tagINLINEHOOKINFOSaIS1_EE18_M_insert_overflowEPS1_RKS1_RKSt11__true_typejb
; demangled: std::vector<tagINLINEHOOKINFO*, std::allocator<tagINLINEHOOKINFO*> >::_M_insert_overflow(tagINLINEHOOKINFO**, tagINLINEHOOKINFO* const&, std::__true_type const&, unsigned int, bool)
; decoder-mode: arm
000439f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
000439f8  1c b0 8d e2                                      add fp, sp, #0x1c
000439fc  0c d0 4d e2                                      sub sp, sp, #0xc
00043a00  00 40 a0 e1                                      mov r4, r0
00043a04  90 01 9f e5                                      ldr r0, [pc, #0x190]
00043a08  01 80 a0 e1                                      mov r8, r1
00043a0c  02 70 a0 e1                                      mov r7, r2
00043a10  08 a0 9b e5                                      ldr sl, [fp, #8]
00043a14  00 00 9f e7                                      ldr r0, [pc, r0]
00043a18  00 00 90 e5                                      ldr r0, [r0]
00043a1c  08 00 8d e5                                      str r0, [sp, #8]
00043a20  00 10 94 e5                                      ldr r1, [r4]
00043a24  04 00 94 e5                                      ldr r0, [r4, #4]
00043a28  01 20 40 e0                                      sub r2, r0, r1
00043a2c  03 01 e0 e3                                      mvn r0, #0xc0000000
00043a30  42 31 40 e0                                      sub r3, r0, r2, asr #2
00043a34  0a 00 53 e1                                      cmp r3, sl
00043a38  50 00 00 3a                                      blo #0x43b80
00043a3c  42 21 a0 e1                                      asr r2, r2, #2
00043a40  0a 00 52 e1                                      cmp r2, sl
00043a44  0a 30 a0 e1                                      mov r3, sl
00043a48  02 30 a0 81                                      movhi r3, r2
00043a4c  02 20 83 e0                                      add r2, r3, r2
00043a50  03 00 52 e1                                      cmp r2, r3
00043a54  00 30 a0 e3                                      mov r3, #0
00043a58  02 00 a0 21                                      movhs r0, r2
00043a5c  22 0f 53 e1                                      cmp r3, r2, lsr #30
00043a60  03 01 e0 13                                      mvnne r0, #0xc0000000
00043a64  01 01 50 e3                                      cmp r0, #0x40000000
00043a68  47 00 00 2a                                      bhs #0x43b8c
00043a6c  00 00 50 e3                                      cmp r0, #0
00043a70  06 00 00 0a                                      beq #0x43a90
00043a74  00 51 a0 e1                                      lsl r5, r0, #2
00043a78  81 00 55 e3                                      cmp r5, #0x81
00043a7c  04 50 8d e5                                      str r5, [sp, #4]
00043a80  05 00 00 3a                                      blo #0x43a9c
00043a84  05 00 a0 e1                                      mov r0, r5
00043a88  4a b9 ff eb                                      bl #0x31fb8
00043a8c  05 00 00 ea                                      b #0x43aa8
00043a90  00 00 a0 e3                                      mov r0, #0
00043a94  00 90 a0 e3                                      mov sb, #0
00043a98  05 00 00 ea                                      b #0x43ab4
00043a9c  04 00 8d e2                                      add r0, sp, #4
00043aa0  4a b9 ff eb                                      bl #0x31fd0
00043aa4  04 50 9d e5                                      ldr r5, [sp, #4]
00043aa8  00 90 a0 e1                                      mov sb, r0
00043aac  00 10 94 e5                                      ldr r1, [r4]
00043ab0  25 01 a0 e1                                      lsr r0, r5, #2
00043ab4  00 00 8d e5                                      str r0, [sp]
00043ab8  01 60 58 e0                                      subs r6, r8, r1
00043abc  09 50 a0 e1                                      mov r5, sb
00043ac0  03 00 00 0a                                      beq #0x43ad4
00043ac4  09 00 a0 e1                                      mov r0, sb
00043ac8  06 20 a0 e1                                      mov r2, r6
00043acc  ba b9 ff eb                                      bl #0x321bc
00043ad0  06 50 89 e0                                      add r5, sb, r6
00043ad4  0c 00 9b e5                                      ldr r0, [fp, #0xc]
00043ad8  00 00 5a e3                                      cmp sl, #0
00043adc  06 00 00 0a                                      beq #0x43afc
00043ae0  05 10 a0 e1                                      mov r1, r5
00043ae4  0a 20 a0 e1                                      mov r2, sl
00043ae8  00 30 97 e5                                      ldr r3, [r7]
00043aec  01 20 52 e2                                      subs r2, r2, #1
00043af0  04 30 81 e4                                      str r3, [r1], #4
00043af4  fb ff ff 1a                                      bne #0x43ae8
00043af8  0a 51 85 e0                                      add r5, r5, sl, lsl #2
00043afc  00 00 50 e3                                      cmp r0, #0
00043b00  07 00 00 1a                                      bne #0x43b24
00043b04  04 00 94 e5                                      ldr r0, [r4, #4]
00043b08  08 60 50 e0                                      subs r6, r0, r8
00043b0c  04 00 00 0a                                      beq #0x43b24
00043b10  05 00 a0 e1                                      mov r0, r5
00043b14  08 10 a0 e1                                      mov r1, r8
00043b18  06 20 a0 e1                                      mov r2, r6
00043b1c  a6 b9 ff eb                                      bl #0x321bc
00043b20  06 50 85 e0                                      add r5, r5, r6
00043b24  00 00 94 e5                                      ldr r0, [r4]
00043b28  00 00 50 e3                                      cmp r0, #0
00043b2c  06 00 00 0a                                      beq #0x43b4c
00043b30  08 10 94 e5                                      ldr r1, [r4, #8]
00043b34  00 10 41 e0                                      sub r1, r1, r0
00043b38  81 00 51 e3                                      cmp r1, #0x81
00043b3c  01 00 00 3a                                      blo #0x43b48
00043b40  13 b9 ff eb                                      bl #0x31f94
00043b44  00 00 00 ea                                      b #0x43b4c
00043b48  14 b9 ff eb                                      bl #0x31fa0
00043b4c  00 00 9d e5                                      ldr r0, [sp]
00043b50  00 90 84 e5                                      str sb, [r4]
00043b54  04 50 84 e5                                      str r5, [r4, #4]
00043b58  00 01 89 e0                                      add r0, sb, r0, lsl #2
00043b5c  08 00 84 e5                                      str r0, [r4, #8]
00043b60  38 00 9f e5                                      ldr r0, [pc, #0x38]
00043b64  08 10 9d e5                                      ldr r1, [sp, #8]
00043b68  00 00 9f e7                                      ldr r0, [pc, r0]
00043b6c  00 00 90 e5                                      ldr r0, [r0]
00043b70  01 00 50 e0                                      subs r0, r0, r1
00043b74  1c d0 4b 02                                      subeq sp, fp, #0x1c
00043b78  f0 8f bd 08                                      popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00043b7c  37 b9 ff eb                                      bl #0x32060
00043b80  2c 00 8f e2                                      add r0, pc, #0x2c
00043b84  0f e0 a0 e1                                      mov lr, pc
00043b88  37 b9 ff ea                                      b #0x3206c
00043b8c  10 00 8f e2                                      add r0, pc, #0x10
00043b90  46 ba ff eb                                      bl #0x324b0
00043b94  0f e0 a0 e1                                      mov lr, pc
00043b98  47 ba ff ea                                      b #0x324bc
00043b9c  9c 8a 09 00                                      muleq sb, ip, sl
00043ba0  48 89 09 00                                      andeq r8, sb, r8, asr #18
00043ba4  6f 75 74 20                                      rsbshs r7, r4, pc, ror #10
00043ba8  6f 66 20 6d                                      stcvs p6, c6, [r0, #-0x1bc]!
00043bac  65 6d 6f 72                                      rsbvc r6, pc, #0x1940
00043bb0  79 0a 00 00                                      andeq r0, r0, sb, ror sl
00043bb4  76 65 63 74                                      strbtvc r6, [r3], #-0x576
00043bb8  6f 72 00 00                                      andeq r7, r0, pc, ror #4
