; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00421e48, declared_size=300, range_size=300, mode=arm
; class-group: RenderFX::Event
; alias: _ZN8RenderFX5Event16GetCharacterPathEv
; demangled: RenderFX::Event::GetCharacterPath()
; decoder-mode: arm
00421e48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00421e4c  d5 42 d0 e1                                      ldrsb r4, [r0, #0x25]
00421e50  00 50 a0 e1                                      mov r5, r0
00421e54  80 d0 4d e2                                      sub sp, sp, #0x80
00421e58  00 00 54 e3                                      cmp r4, #0
00421e5c  25 50 80 12                                      addne r5, r0, #0x25
00421e60  38 00 00 1a                                      bne #0x421f48
00421e64  00 60 95 e5                                      ldr r6, [r5]
00421e68  00 00 56 e3                                      cmp r6, #0
00421e6c  3e 00 00 0a                                      beq #0x421f6c
00421e70  44 30 96 e5                                      ldr r3, [r6, #0x44]
00421e74  d0 20 d3 e1                                      ldrsb r2, [r3]
00421e78  01 00 72 e3                                      cmn r2, #1
00421e7c  0c 10 93 05                                      ldreq r1, [r3, #0xc]
00421e80  01 10 83 12                                      addne r1, r3, #1
00421e84  d0 10 d1 e1                                      ldrsb r1, [r1]
00421e88  00 00 51 e3                                      cmp r1, #0
00421e8c  06 00 00 0a                                      beq #0x421eac
00421e90  01 00 72 e3                                      cmn r2, #1
00421e94  0c 30 93 05                                      ldreq r3, [r3, #0xc]
00421e98  80 10 8d e2                                      add r1, sp, #0x80
00421e9c  04 21 81 e0                                      add r2, r1, r4, lsl #2
00421ea0  01 30 83 12                                      addne r3, r3, #1
00421ea4  80 30 02 e5                                      str r3, [r2, #-0x80]
00421ea8  01 40 84 e2                                      add r4, r4, #1
00421eac  40 30 96 e5                                      ldr r3, [r6, #0x40]
00421eb0  00 00 53 e3                                      cmp r3, #0
00421eb4  16 00 00 0a                                      beq #0x421f14
00421eb8  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
00421ebc  04 20 d0 e5                                      ldrb r2, [r0, #4]
00421ec0  00 00 52 e3                                      cmp r2, #0
00421ec4  09 00 00 0a                                      beq #0x421ef0
00421ec8  03 60 a0 e1                                      mov r6, r3
00421ecc  44 30 96 e5                                      ldr r3, [r6, #0x44]
00421ed0  d0 20 d3 e1                                      ldrsb r2, [r3]
00421ed4  01 00 72 e3                                      cmn r2, #1
00421ed8  0c 10 93 05                                      ldreq r1, [r3, #0xc]
00421edc  01 10 83 12                                      addne r1, r3, #1
00421ee0  d0 10 d1 e1                                      ldrsb r1, [r1]
00421ee4  00 00 51 e3                                      cmp r1, #0
00421ee8  ef ff ff 0a                                      beq #0x421eac
00421eec  e7 ff ff ea                                      b #0x421e90
00421ef0  00 10 90 e5                                      ldr r1, [r0]
00421ef4  01 10 41 e2                                      sub r1, r1, #1
00421ef8  00 00 51 e3                                      cmp r1, #0
00421efc  00 10 80 e5                                      str r1, [r0]
00421f00  00 00 00 1a                                      bne #0x421f08
00421f04  0b c3 0c eb                                      bl #0x752b38
00421f08  00 30 a0 e3                                      mov r3, #0
00421f0c  40 30 86 e5                                      str r3, [r6, #0x40]
00421f10  3c 30 86 e5                                      str r3, [r6, #0x3c]
00421f14  00 80 a0 e3                                      mov r8, #0
00421f18  00 00 54 e3                                      cmp r4, #0
00421f1c  25 80 c5 e5                                      strb r8, [r5, #0x25]
00421f20  25 50 85 e2                                      add r5, r5, #0x25
00421f24  07 00 00 0a                                      beq #0x421f48
00421f28  0d 60 a0 e1                                      mov r6, sp
00421f2c  04 41 86 e0                                      add r4, r6, r4, lsl #2
00421f30  2e 70 a0 e3                                      mov r7, #0x2e
00421f34  04 10 34 e5                                      ldr r1, [r4, #-4]!
00421f38  05 00 a0 e1                                      mov r0, r5
00421f3c  93 b3 fb eb                                      bl #0x30ed90
00421f40  06 00 54 e1                                      cmp r4, r6
00421f44  02 00 00 1a                                      bne #0x421f54
00421f48  05 00 a0 e1                                      mov r0, r5
00421f4c  80 d0 8d e2                                      add sp, sp, #0x80
00421f50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00421f54  05 00 a0 e1                                      mov r0, r5
00421f58  bd af fb eb                                      bl #0x30de54
00421f5c  00 30 85 e0                                      add r3, r5, r0
00421f60  00 70 c5 e7                                      strb r7, [r5, r0]
00421f64  01 80 c3 e5                                      strb r8, [r3, #1]
00421f68  f1 ff ff ea                                      b #0x421f34
00421f6c  25 60 e5 e5                                      strb r6, [r5, #0x25]!
00421f70  f4 ff ff ea                                      b #0x421f48
