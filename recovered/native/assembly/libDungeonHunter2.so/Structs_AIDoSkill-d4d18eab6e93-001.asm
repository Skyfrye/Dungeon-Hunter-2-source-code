; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d2ab8, declared_size=48, range_size=48, mode=arm
; class-group: Structs::AIDoSkill
; alias: _ZN7Structs9AIDoSkill8finalizeEv
; demangled: Structs::AIDoSkill::finalize()
; decoder-mode: arm
004d2ab8  10 40 2d e9                                      push {r4, lr}
004d2abc  00 40 a0 e1                                      mov r4, r0
004d2ac0  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d2ac4  00 00 50 e3                                      cmp r0, #0
004d2ac8  03 00 00 0a                                      beq #0x4d2adc
004d2acc  5b f6 f8 eb                                      bl #0x310440
004d2ad0  00 30 a0 e3                                      mov r3, #0
004d2ad4  0c 30 84 e5                                      str r3, [r4, #0xc]
004d2ad8  10 30 84 e5                                      str r3, [r4, #0x10]
004d2adc  04 00 a0 e1                                      mov r0, r4
004d2ae0  10 40 bd e8                                      pop {r4, lr}
004d2ae4  5f d0 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d2ae8, declared_size=72, range_size=72, mode=arm
; class-group: Structs::AIDoSkill
; alias: _ZN7Structs9AIDoSkillD1Ev
; demangled: Structs::AIDoSkill::~AIDoSkill()
; decoder-mode: arm
004d2ae8  10 40 2d e9                                      push {r4, lr}
004d2aec  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2af0  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2af4  00 40 a0 e1                                      mov r4, r0
004d2af8  03 30 8f e0                                      add r3, pc, r3
004d2afc  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d2b00  02 20 93 e7                                      ldr r2, [r3, r2]
004d2b04  00 00 50 e3                                      cmp r0, #0
004d2b08  08 20 82 e2                                      add r2, r2, #8
004d2b0c  00 20 84 e5                                      str r2, [r4]
004d2b10  00 00 00 0a                                      beq #0x4d2b18
004d2b14  49 f6 f8 eb                                      bl #0x310440
004d2b18  04 00 a0 e1                                      mov r0, r4
004d2b1c  4f d0 ff eb                                      bl #0x4c6c60
004d2b20  04 00 a0 e1                                      mov r0, r4
004d2b24  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2b28  98 1f 4c 00 40 49 00 00                          .byte 0x98, 0x1f, 0x4c, 0x00, 0x40, 0x49, 0x00, 0x00

; FUNCTION 0x004d2b30, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AIDoSkill
; alias: _ZN7Structs9AIDoSkillD0Ev
; demangled: Structs::AIDoSkill::~AIDoSkill()
; decoder-mode: arm
004d2b30  10 40 2d e9                                      push {r4, lr}
004d2b34  00 40 a0 e1                                      mov r4, r0
004d2b38  ea ff ff eb                                      bl #0x4d2ae8
004d2b3c  04 00 a0 e1                                      mov r0, r4
004d2b40  3e f6 f8 eb                                      bl #0x310440
004d2b44  04 00 a0 e1                                      mov r0, r4
004d2b48  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2b4c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::AIDoSkill
; alias: _ZN7Structs9AIDoSkillD2Ev
; demangled: Structs::AIDoSkill::~AIDoSkill()
; decoder-mode: arm
004d2b4c  10 40 2d e9                                      push {r4, lr}
004d2b50  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2b54  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2b58  00 40 a0 e1                                      mov r4, r0
004d2b5c  03 30 8f e0                                      add r3, pc, r3
004d2b60  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d2b64  02 20 93 e7                                      ldr r2, [r3, r2]
004d2b68  00 00 50 e3                                      cmp r0, #0
004d2b6c  08 20 82 e2                                      add r2, r2, #8
004d2b70  00 20 84 e5                                      str r2, [r4]
004d2b74  00 00 00 0a                                      beq #0x4d2b7c
004d2b78  30 f6 f8 eb                                      bl #0x310440
004d2b7c  04 00 a0 e1                                      mov r0, r4
004d2b80  36 d0 ff eb                                      bl #0x4c6c60
004d2b84  04 00 a0 e1                                      mov r0, r4
004d2b88  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2b8c  34 1f 4c 00 40 49 00 00                          .byte 0x34, 0x1f, 0x4c, 0x00, 0x40, 0x49, 0x00, 0x00

; FUNCTION 0x00501ad8, declared_size=284, range_size=284, mode=arm
; class-group: Structs::AIDoSkill
; alias: _ZN7Structs9AIDoSkill4readEP11IStreamBase
; demangled: Structs::AIDoSkill::read(IStreamBase*)
; decoder-mode: arm
00501ad8  70 40 2d e9                                      push {r4, r5, r6, lr}
00501adc  00 40 a0 e1                                      mov r4, r0
00501ae0  08 d0 4d e2                                      sub sp, sp, #8
00501ae4  01 60 a0 e1                                      mov r6, r1
00501ae8  4e f7 ff eb                                      bl #0x4ff828
00501aec  06 00 a0 e1                                      mov r0, r6
00501af0  08 10 84 e2                                      add r1, r4, #8
00501af4  65 5d fd eb                                      bl #0x459090
00501af8  01 30 a0 e3                                      mov r3, #1
00501afc  00 00 53 e3                                      cmp r3, #0
00501b00  04 30 8d e5                                      str r3, [sp, #4]
00501b04  0f 00 00 1a                                      bne #0x501b48
00501b08  09 30 84 e2                                      add r3, r4, #9
00501b0c  0a 20 84 e2                                      add r2, r4, #0xa
00501b10  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501b14  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501b18  02 00 53 e1                                      cmp r3, r2
00501b1c  01 10 20 e0                                      eor r1, r0, r1
00501b20  01 10 43 e5                                      strb r1, [r3, #-1]
00501b24  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501b28  00 10 21 e0                                      eor r1, r1, r0
00501b2c  01 10 c2 e5                                      strb r1, [r2, #1]
00501b30  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501b34  01 20 42 e2                                      sub r2, r2, #1
00501b38  00 10 21 e0                                      eor r1, r1, r0
00501b3c  01 10 43 e5                                      strb r1, [r3, #-1]
00501b40  01 30 83 e2                                      add r3, r3, #1
00501b44  f1 ff ff 3a                                      blo #0x501b10
00501b48  06 00 a0 e1                                      mov r0, r6
00501b4c  0c 10 84 e2                                      add r1, r4, #0xc
00501b50  92 75 fb eb                                      bl #0x3df1a0
00501b54  01 30 a0 e3                                      mov r3, #1
00501b58  00 00 53 e3                                      cmp r3, #0
00501b5c  04 30 8d e5                                      str r3, [sp, #4]
00501b60  0f 00 00 1a                                      bne #0x501ba4
00501b64  0d 30 84 e2                                      add r3, r4, #0xd
00501b68  0e 20 84 e2                                      add r2, r4, #0xe
00501b6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501b70  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501b74  02 00 53 e1                                      cmp r3, r2
00501b78  01 10 20 e0                                      eor r1, r0, r1
00501b7c  01 10 43 e5                                      strb r1, [r3, #-1]
00501b80  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501b84  00 10 21 e0                                      eor r1, r1, r0
00501b88  01 10 c2 e5                                      strb r1, [r2, #1]
00501b8c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501b90  01 20 42 e2                                      sub r2, r2, #1
00501b94  00 10 21 e0                                      eor r1, r1, r0
00501b98  01 10 43 e5                                      strb r1, [r3, #-1]
00501b9c  01 30 83 e2                                      add r3, r3, #1
00501ba0  f1 ff ff 3a                                      blo #0x501b6c
00501ba4  10 00 94 e5                                      ldr r0, [r4, #0x10]
00501ba8  00 00 50 e3                                      cmp r0, #0
00501bac  00 00 00 0a                                      beq #0x501bb4
00501bb0  22 3a f8 eb                                      bl #0x310440
00501bb4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00501bb8  01 10 a0 e3                                      mov r1, #1
00501bbc  00 50 a0 e3                                      mov r5, #0
00501bc0  01 00 80 e0                                      add r0, r0, r1
00501bc4  68 3a f8 eb                                      bl #0x31056c
00501bc8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00501bcc  00 10 a0 e1                                      mov r1, r0
00501bd0  10 00 84 e5                                      str r0, [r4, #0x10]
00501bd4  05 30 a0 e1                                      mov r3, r5
00501bd8  06 00 a0 e1                                      mov r0, r6
00501bdc  1c 56 f8 eb                                      bl #0x317454
00501be0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00501be4  10 20 94 e5                                      ldr r2, [r4, #0x10]
00501be8  03 50 c2 e7                                      strb r5, [r2, r3]
00501bec  08 d0 8d e2                                      add sp, sp, #8
00501bf0  70 80 bd e8                                      pop {r4, r5, r6, pc}
