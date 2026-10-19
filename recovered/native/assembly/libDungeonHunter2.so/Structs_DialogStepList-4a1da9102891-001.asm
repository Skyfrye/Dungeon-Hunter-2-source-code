; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004da7c8, declared_size=104, range_size=104, mode=arm
; class-group: Structs::DialogStepList
; alias: _ZN7Structs14DialogStepList8finalizeEv
; demangled: Structs::DialogStepList::finalize()
; decoder-mode: arm
004da7c8  70 40 2d e9                                      push {r4, r5, r6, lr}
004da7cc  08 30 90 e5                                      ldr r3, [r0, #8]
004da7d0  00 50 a0 e1                                      mov r5, r0
004da7d4  00 00 53 e3                                      cmp r3, #0
004da7d8  13 00 00 0a                                      beq #0x4da82c
004da7dc  04 20 13 e5                                      ldr r2, [r3, #-4]
004da7e0  14 00 a0 e3                                      mov r0, #0x14
004da7e4  90 32 20 e0                                      mla r0, r0, r2, r3
004da7e8  00 00 53 e1                                      cmp r3, r0
004da7ec  01 00 00 1a                                      bne #0x4da7f8
004da7f0  08 00 00 ea                                      b #0x4da818
004da7f4  04 00 a0 e1                                      mov r0, r4
004da7f8  14 40 40 e2                                      sub r4, r0, #0x14
004da7fc  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004da800  04 00 a0 e1                                      mov r0, r4
004da804  0f e0 a0 e1                                      mov lr, pc
004da808  00 f0 93 e5                                      ldr pc, [r3]
004da80c  08 00 95 e5                                      ldr r0, [r5, #8]
004da810  04 00 50 e1                                      cmp r0, r4
004da814  f6 ff ff 1a                                      bne #0x4da7f4
004da818  08 00 40 e2                                      sub r0, r0, #8
004da81c  07 d7 f8 eb                                      bl #0x310440
004da820  00 30 a0 e3                                      mov r3, #0
004da824  04 30 85 e5                                      str r3, [r5, #4]
004da828  08 30 85 e5                                      str r3, [r5, #8]
004da82c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004da830, declared_size=128, range_size=128, mode=arm
; class-group: Structs::DialogStepList
; alias: _ZN7Structs14DialogStepListD1Ev
; demangled: Structs::DialogStepList::~DialogStepList()
; decoder-mode: arm
004da830  70 40 2d e9                                      push {r4, r5, r6, lr}
004da834  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004da838  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004da83c  08 10 90 e5                                      ldr r1, [r0, #8]
004da840  03 30 8f e0                                      add r3, pc, r3
004da844  02 20 93 e7                                      ldr r2, [r3, r2]
004da848  00 00 51 e3                                      cmp r1, #0
004da84c  00 50 a0 e1                                      mov r5, r0
004da850  08 20 82 e2                                      add r2, r2, #8
004da854  00 20 80 e5                                      str r2, [r0]
004da858  10 00 00 0a                                      beq #0x4da8a0
004da85c  04 30 11 e5                                      ldr r3, [r1, #-4]
004da860  14 00 a0 e3                                      mov r0, #0x14
004da864  90 13 20 e0                                      mla r0, r0, r3, r1
004da868  00 00 51 e1                                      cmp r1, r0
004da86c  01 00 00 1a                                      bne #0x4da878
004da870  08 00 00 ea                                      b #0x4da898
004da874  04 00 a0 e1                                      mov r0, r4
004da878  14 40 40 e2                                      sub r4, r0, #0x14
004da87c  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004da880  04 00 a0 e1                                      mov r0, r4
004da884  0f e0 a0 e1                                      mov lr, pc
004da888  00 f0 93 e5                                      ldr pc, [r3]
004da88c  08 00 95 e5                                      ldr r0, [r5, #8]
004da890  04 00 50 e1                                      cmp r0, r4
004da894  f6 ff ff 1a                                      bne #0x4da874
004da898  08 00 40 e2                                      sub r0, r0, #8
004da89c  e7 d6 f8 eb                                      bl #0x310440
004da8a0  05 00 a0 e1                                      mov r0, r5
004da8a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004da8a8  50 a2 4b 00 ec 43 00 00                          .byte 0x50, 0xa2, 0x4b, 0x00, 0xec, 0x43, 0x00, 0x00

; FUNCTION 0x004da8b0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DialogStepList
; alias: _ZN7Structs14DialogStepListD0Ev
; demangled: Structs::DialogStepList::~DialogStepList()
; decoder-mode: arm
004da8b0  10 40 2d e9                                      push {r4, lr}
004da8b4  00 40 a0 e1                                      mov r4, r0
004da8b8  dc ff ff eb                                      bl #0x4da830
004da8bc  04 00 a0 e1                                      mov r0, r4
004da8c0  de d6 f8 eb                                      bl #0x310440
004da8c4  04 00 a0 e1                                      mov r0, r4
004da8c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da8cc, declared_size=128, range_size=128, mode=arm
; class-group: Structs::DialogStepList
; alias: _ZN7Structs14DialogStepListD2Ev
; demangled: Structs::DialogStepList::~DialogStepList()
; decoder-mode: arm
004da8cc  70 40 2d e9                                      push {r4, r5, r6, lr}
004da8d0  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004da8d4  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004da8d8  08 10 90 e5                                      ldr r1, [r0, #8]
004da8dc  03 30 8f e0                                      add r3, pc, r3
004da8e0  02 20 93 e7                                      ldr r2, [r3, r2]
004da8e4  00 00 51 e3                                      cmp r1, #0
004da8e8  00 50 a0 e1                                      mov r5, r0
004da8ec  08 20 82 e2                                      add r2, r2, #8
004da8f0  00 20 80 e5                                      str r2, [r0]
004da8f4  10 00 00 0a                                      beq #0x4da93c
004da8f8  04 30 11 e5                                      ldr r3, [r1, #-4]
004da8fc  14 00 a0 e3                                      mov r0, #0x14
004da900  90 13 20 e0                                      mla r0, r0, r3, r1
004da904  00 00 51 e1                                      cmp r1, r0
004da908  01 00 00 1a                                      bne #0x4da914
004da90c  08 00 00 ea                                      b #0x4da934
004da910  04 00 a0 e1                                      mov r0, r4
004da914  14 40 40 e2                                      sub r4, r0, #0x14
004da918  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004da91c  04 00 a0 e1                                      mov r0, r4
004da920  0f e0 a0 e1                                      mov lr, pc
004da924  00 f0 93 e5                                      ldr pc, [r3]
004da928  08 00 95 e5                                      ldr r0, [r5, #8]
004da92c  04 00 50 e1                                      cmp r0, r4
004da930  f6 ff ff 1a                                      bne #0x4da910
004da934  08 00 40 e2                                      sub r0, r0, #8
004da938  c0 d6 f8 eb                                      bl #0x310440
004da93c  05 00 a0 e1                                      mov r0, r5
004da940  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004da944  b4 a1 4b 00 ec 43 00 00                          .byte 0xb4, 0xa1, 0x4b, 0x00, 0xec, 0x43, 0x00, 0x00

; FUNCTION 0x004dca68, declared_size=364, range_size=364, mode=arm
; class-group: Structs::DialogStepList
; alias: _ZN7Structs14DialogStepList4readEP11IStreamBase
; demangled: Structs::DialogStepList::read(IStreamBase*)
; decoder-mode: arm
004dca68  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004dca6c  00 50 a0 e1                                      mov r5, r0
004dca70  08 d0 4d e2                                      sub sp, sp, #8
004dca74  01 00 a0 e1                                      mov r0, r1
004dca78  01 70 a0 e1                                      mov r7, r1
004dca7c  48 61 9f e5                                      ldr r6, [pc, #0x148]
004dca80  04 10 85 e2                                      add r1, r5, #4
004dca84  c5 09 fc eb                                      bl #0x3df1a0
004dca88  01 30 a0 e3                                      mov r3, #1
004dca8c  00 00 53 e3                                      cmp r3, #0
004dca90  04 30 8d e5                                      str r3, [sp, #4]
004dca94  06 60 8f e0                                      add r6, pc, r6
004dca98  0f 00 00 1a                                      bne #0x4dcadc
004dca9c  05 30 85 e2                                      add r3, r5, #5
004dcaa0  06 20 85 e2                                      add r2, r5, #6
004dcaa4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dcaa8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dcaac  02 00 53 e1                                      cmp r3, r2
004dcab0  01 10 20 e0                                      eor r1, r0, r1
004dcab4  01 10 43 e5                                      strb r1, [r3, #-1]
004dcab8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dcabc  00 10 21 e0                                      eor r1, r1, r0
004dcac0  01 10 c2 e5                                      strb r1, [r2, #1]
004dcac4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dcac8  01 20 42 e2                                      sub r2, r2, #1
004dcacc  00 10 21 e0                                      eor r1, r1, r0
004dcad0  01 10 43 e5                                      strb r1, [r3, #-1]
004dcad4  01 30 83 e2                                      add r3, r3, #1
004dcad8  f1 ff ff 3a                                      blo #0x4dcaa4
004dcadc  08 30 95 e5                                      ldr r3, [r5, #8]
004dcae0  00 00 53 e3                                      cmp r3, #0
004dcae4  10 00 00 0a                                      beq #0x4dcb2c
004dcae8  04 20 13 e5                                      ldr r2, [r3, #-4]
004dcaec  14 00 a0 e3                                      mov r0, #0x14
004dcaf0  90 32 20 e0                                      mla r0, r0, r2, r3
004dcaf4  00 00 53 e1                                      cmp r3, r0
004dcaf8  01 00 00 1a                                      bne #0x4dcb04
004dcafc  08 00 00 ea                                      b #0x4dcb24
004dcb00  04 00 a0 e1                                      mov r0, r4
004dcb04  14 40 40 e2                                      sub r4, r0, #0x14
004dcb08  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004dcb0c  04 00 a0 e1                                      mov r0, r4
004dcb10  0f e0 a0 e1                                      mov lr, pc
004dcb14  00 f0 93 e5                                      ldr pc, [r3]
004dcb18  08 00 95 e5                                      ldr r0, [r5, #8]
004dcb1c  04 00 50 e1                                      cmp r0, r4
004dcb20  f6 ff ff 1a                                      bne #0x4dcb00
004dcb24  08 00 40 e2                                      sub r0, r0, #8
004dcb28  44 ce f8 eb                                      bl #0x310440
004dcb2c  04 40 95 e5                                      ldr r4, [r5, #4]
004dcb30  14 80 a0 e3                                      mov r8, #0x14
004dcb34  01 10 a0 e3                                      mov r1, #1
004dcb38  98 04 00 e0                                      mul r0, r8, r4
004dcb3c  08 00 80 e2                                      add r0, r0, #8
004dcb40  89 ce f8 eb                                      bl #0x31056c
004dcb44  00 00 54 e3                                      cmp r4, #0
004dcb48  00 80 80 e5                                      str r8, [r0]
004dcb4c  04 40 80 e5                                      str r4, [r0, #4]
004dcb50  08 30 80 e2                                      add r3, r0, #8
004dcb54  08 00 00 0a                                      beq #0x4dcb7c
004dcb58  70 10 9f e5                                      ldr r1, [pc, #0x70]
004dcb5c  00 20 a0 e3                                      mov r2, #0
004dcb60  01 10 96 e7                                      ldr r1, [r6, r1]
004dcb64  08 10 81 e2                                      add r1, r1, #8
004dcb68  01 20 82 e2                                      add r2, r2, #1
004dcb6c  04 00 52 e1                                      cmp r2, r4
004dcb70  08 10 80 e5                                      str r1, [r0, #8]
004dcb74  14 00 80 e2                                      add r0, r0, #0x14
004dcb78  fa ff ff 1a                                      bne #0x4dcb68
004dcb7c  04 20 95 e5                                      ldr r2, [r5, #4]
004dcb80  08 30 85 e5                                      str r3, [r5, #8]
004dcb84  00 00 52 e3                                      cmp r2, #0
004dcb88  0d 00 00 0a                                      beq #0x4dcbc4
004dcb8c  00 40 a0 e3                                      mov r4, #0
004dcb90  04 60 a0 e1                                      mov r6, r4
004dcb94  00 00 00 ea                                      b #0x4dcb9c
004dcb98  08 30 95 e5                                      ldr r3, [r5, #8]
004dcb9c  04 00 83 e0                                      add r0, r3, r4
004dcba0  07 10 a0 e1                                      mov r1, r7
004dcba4  04 30 93 e7                                      ldr r3, [r3, r4]
004dcba8  0f e0 a0 e1                                      mov lr, pc
004dcbac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004dcbb0  04 30 95 e5                                      ldr r3, [r5, #4]
004dcbb4  01 60 86 e2                                      add r6, r6, #1
004dcbb8  14 40 84 e2                                      add r4, r4, #0x14
004dcbbc  06 00 53 e1                                      cmp r3, r6
004dcbc0  f4 ff ff 8a                                      bhi #0x4dcb98
004dcbc4  08 d0 8d e2                                      add sp, sp, #8
004dcbc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004dcbcc  fc 7f 4b 00 f8 1d 00 00                          .byte 0xfc, 0x7f, 0x4b, 0x00, 0xf8, 0x1d, 0x00, 0x00
