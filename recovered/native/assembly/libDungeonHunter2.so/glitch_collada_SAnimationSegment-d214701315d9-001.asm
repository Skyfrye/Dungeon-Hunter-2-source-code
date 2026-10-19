; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060bee4, declared_size=376, range_size=376, mode=arm
; class-group: glitch::collada::SAnimationSegment
; alias: _ZN6glitch7collada17SAnimationSegment7getDataERNS_3res14onDemandReaderE
; demangled: glitch::collada::SAnimationSegment::getData(glitch::res::onDemandReader&)
; decoder-mode: arm
0060bee4  70 40 2d e9                                      push {r4, r5, r6, lr}
0060bee8  08 50 91 e5                                      ldr r5, [r1, #8]
0060beec  10 d0 4d e2                                      sub sp, sp, #0x10
0060bef0  00 40 a0 e1                                      mov r4, r0
0060bef4  00 00 55 e3                                      cmp r5, #0
0060bef8  09 00 00 0a                                      beq #0x60bf24
0060befc  01 00 55 e3                                      cmp r5, #1
0060bf00  2f 00 00 0a                                      beq #0x60bfc4
0060bf04  08 30 81 e2                                      add r3, r1, #8
0060bf08  00 30 80 e5                                      str r3, [r0]
0060bf0c  08 30 91 e5                                      ldr r3, [r1, #8]
0060bf10  01 30 83 e2                                      add r3, r3, #1
0060bf14  08 30 81 e5                                      str r3, [r1, #8]
0060bf18  04 00 a0 e1                                      mov r0, r4
0060bf1c  10 d0 8d e2                                      add sp, sp, #0x10
0060bf20  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060bf24  08 10 81 e2                                      add r1, r1, #8
0060bf28  0c 00 8d e2                                      add r0, sp, #0xc
0060bf2c  ce fd ff eb                                      bl #0x60b66c
0060bf30  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0060bf34  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0060bf38  00 20 93 e5                                      ldr r2, [r3]
0060bf3c  00 00 52 e3                                      cmp r2, #0
0060bf40  15 00 00 ca                                      bgt #0x60bf9c
0060bf44  00 00 56 e3                                      cmp r6, #0
0060bf48  00 60 84 e5                                      str r6, [r4]
0060bf4c  00 30 96 15                                      ldrne r3, [r6]
0060bf50  01 30 83 12                                      addne r3, r3, #1
0060bf54  00 30 86 15                                      strne r3, [r6]
0060bf58  0c 60 9d 15                                      ldrne r6, [sp, #0xc]
0060bf5c  00 00 56 e3                                      cmp r6, #0
0060bf60  ec ff ff 0a                                      beq #0x60bf18
0060bf64  00 30 96 e5                                      ldr r3, [r6]
0060bf68  01 30 43 e2                                      sub r3, r3, #1
0060bf6c  00 00 53 e3                                      cmp r3, #0
0060bf70  00 30 86 e5                                      str r3, [r6]
0060bf74  e7 ff ff 1a                                      bne #0x60bf18
0060bf78  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0060bf7c  00 00 50 e3                                      cmp r0, #0
0060bf80  00 00 00 0a                                      beq #0x60bf88
0060bf84  4b 08 f4 eb                                      bl #0x30e0b8
0060bf88  00 30 a0 e3                                      mov r3, #0
0060bf8c  0c 30 86 e5                                      str r3, [r6, #0xc]
0060bf90  e0 ff ff ea                                      b #0x60bf18
0060bf94  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0060bf98  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0060bf9c  85 31 83 e0                                      add r3, r3, r5, lsl #3
0060bfa0  08 10 93 e5                                      ldr r1, [r3, #8]
0060bfa4  01 50 85 e2                                      add r5, r5, #1
0060bfa8  08 00 83 e2                                      add r0, r3, #8
0060bfac  01 10 80 e0                                      add r1, r0, r1
0060bfb0  02 00 55 e1                                      cmp r5, r2
0060bfb4  08 10 83 e5                                      str r1, [r3, #8]
0060bfb8  f5 ff ff 1a                                      bne #0x60bf94
0060bfbc  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0060bfc0  df ff ff ea                                      b #0x60bf44
0060bfc4  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0060bfc8  02 20 a0 e3                                      mov r2, #2
0060bfcc  08 20 81 e5                                      str r2, [r1, #8]
0060bfd0  00 00 53 e3                                      cmp r3, #0
0060bfd4  08 30 81 e2                                      add r3, r1, #8
0060bfd8  02 00 00 1a                                      bne #0x60bfe8
0060bfdc  10 20 91 e5                                      ldr r2, [r1, #0x10]
0060bfe0  00 00 52 e3                                      cmp r2, #0
0060bfe4  0c 00 00 0a                                      beq #0x60c01c
0060bfe8  00 30 84 e5                                      str r3, [r4]
0060bfec  08 30 91 e5                                      ldr r3, [r1, #8]
0060bff0  00 00 53 e3                                      cmp r3, #0
0060bff4  c7 ff ff 1a                                      bne #0x60bf18
0060bff8  14 00 91 e5                                      ldr r0, [r1, #0x14]
0060bffc  00 00 50 e3                                      cmp r0, #0
0060c000  02 00 00 0a                                      beq #0x60c010
0060c004  04 10 8d e5                                      str r1, [sp, #4]
0060c008  2a 08 f4 eb                                      bl #0x30e0b8
0060c00c  04 10 9d e5                                      ldr r1, [sp, #4]
0060c010  00 30 a0 e3                                      mov r3, #0
0060c014  14 30 81 e5                                      str r3, [r1, #0x14]
0060c018  be ff ff ea                                      b #0x60bf18
0060c01c  14 00 91 e5                                      ldr r0, [r1, #0x14]
0060c020  00 60 90 e5                                      ldr r6, [r0]
0060c024  00 00 56 e3                                      cmp r6, #0
0060c028  08 00 00 da                                      ble #0x60c050
0060c02c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0060c030  82 01 80 e0                                      add r0, r0, r2, lsl #3
0060c034  08 c0 90 e5                                      ldr ip, [r0, #8]
0060c038  01 20 82 e2                                      add r2, r2, #1
0060c03c  08 50 80 e2                                      add r5, r0, #8
0060c040  0c c0 85 e0                                      add ip, r5, ip
0060c044  06 00 52 e1                                      cmp r2, r6
0060c048  08 c0 80 e5                                      str ip, [r0, #8]
0060c04c  f6 ff ff 1a                                      bne #0x60c02c
0060c050  01 20 a0 e3                                      mov r2, #1
0060c054  10 20 81 e5                                      str r2, [r1, #0x10]
0060c058  e2 ff ff ea                                      b #0x60bfe8
