; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004ceb00, declared_size=104, range_size=104, mode=arm
; class-group: Structs::LangSheetList
; alias: _ZN7Structs13LangSheetList8finalizeEv
; demangled: Structs::LangSheetList::finalize()
; decoder-mode: arm
004ceb00  70 40 2d e9                                      push {r4, r5, r6, lr}
004ceb04  08 30 90 e5                                      ldr r3, [r0, #8]
004ceb08  00 50 a0 e1                                      mov r5, r0
004ceb0c  00 00 53 e3                                      cmp r3, #0
004ceb10  13 00 00 0a                                      beq #0x4ceb64
004ceb14  04 20 13 e5                                      ldr r2, [r3, #-4]
004ceb18  14 00 a0 e3                                      mov r0, #0x14
004ceb1c  90 32 20 e0                                      mla r0, r0, r2, r3
004ceb20  00 00 53 e1                                      cmp r3, r0
004ceb24  01 00 00 1a                                      bne #0x4ceb30
004ceb28  08 00 00 ea                                      b #0x4ceb50
004ceb2c  04 00 a0 e1                                      mov r0, r4
004ceb30  14 40 40 e2                                      sub r4, r0, #0x14
004ceb34  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004ceb38  04 00 a0 e1                                      mov r0, r4
004ceb3c  0f e0 a0 e1                                      mov lr, pc
004ceb40  00 f0 93 e5                                      ldr pc, [r3]
004ceb44  08 00 95 e5                                      ldr r0, [r5, #8]
004ceb48  04 00 50 e1                                      cmp r0, r4
004ceb4c  f6 ff ff 1a                                      bne #0x4ceb2c
004ceb50  08 00 40 e2                                      sub r0, r0, #8
004ceb54  39 06 f9 eb                                      bl #0x310440
004ceb58  00 30 a0 e3                                      mov r3, #0
004ceb5c  04 30 85 e5                                      str r3, [r5, #4]
004ceb60  08 30 85 e5                                      str r3, [r5, #8]
004ceb64  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004ceb68, declared_size=128, range_size=128, mode=arm
; class-group: Structs::LangSheetList
; alias: _ZN7Structs13LangSheetListD1Ev
; demangled: Structs::LangSheetList::~LangSheetList()
; decoder-mode: arm
004ceb68  70 40 2d e9                                      push {r4, r5, r6, lr}
004ceb6c  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004ceb70  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004ceb74  08 10 90 e5                                      ldr r1, [r0, #8]
004ceb78  03 30 8f e0                                      add r3, pc, r3
004ceb7c  02 20 93 e7                                      ldr r2, [r3, r2]
004ceb80  00 00 51 e3                                      cmp r1, #0
004ceb84  00 50 a0 e1                                      mov r5, r0
004ceb88  08 20 82 e2                                      add r2, r2, #8
004ceb8c  00 20 80 e5                                      str r2, [r0]
004ceb90  10 00 00 0a                                      beq #0x4cebd8
004ceb94  04 30 11 e5                                      ldr r3, [r1, #-4]
004ceb98  14 00 a0 e3                                      mov r0, #0x14
004ceb9c  90 13 20 e0                                      mla r0, r0, r3, r1
004ceba0  00 00 51 e1                                      cmp r1, r0
004ceba4  01 00 00 1a                                      bne #0x4cebb0
004ceba8  08 00 00 ea                                      b #0x4cebd0
004cebac  04 00 a0 e1                                      mov r0, r4
004cebb0  14 40 40 e2                                      sub r4, r0, #0x14
004cebb4  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004cebb8  04 00 a0 e1                                      mov r0, r4
004cebbc  0f e0 a0 e1                                      mov lr, pc
004cebc0  00 f0 93 e5                                      ldr pc, [r3]
004cebc4  08 00 95 e5                                      ldr r0, [r5, #8]
004cebc8  04 00 50 e1                                      cmp r0, r4
004cebcc  f6 ff ff 1a                                      bne #0x4cebac
004cebd0  08 00 40 e2                                      sub r0, r0, #8
004cebd4  19 06 f9 eb                                      bl #0x310440
004cebd8  05 00 a0 e1                                      mov r0, r5
004cebdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004cebe0  18 5f 4c 00 28 12 00 00                          .byte 0x18, 0x5f, 0x4c, 0x00, 0x28, 0x12, 0x00, 0x00

; FUNCTION 0x004cebe8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::LangSheetList
; alias: _ZN7Structs13LangSheetListD0Ev
; demangled: Structs::LangSheetList::~LangSheetList()
; decoder-mode: arm
004cebe8  10 40 2d e9                                      push {r4, lr}
004cebec  00 40 a0 e1                                      mov r4, r0
004cebf0  dc ff ff eb                                      bl #0x4ceb68
004cebf4  04 00 a0 e1                                      mov r0, r4
004cebf8  10 06 f9 eb                                      bl #0x310440
004cebfc  04 00 a0 e1                                      mov r0, r4
004cec00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cec04, declared_size=128, range_size=128, mode=arm
; class-group: Structs::LangSheetList
; alias: _ZN7Structs13LangSheetListD2Ev
; demangled: Structs::LangSheetList::~LangSheetList()
; decoder-mode: arm
004cec04  70 40 2d e9                                      push {r4, r5, r6, lr}
004cec08  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004cec0c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004cec10  08 10 90 e5                                      ldr r1, [r0, #8]
004cec14  03 30 8f e0                                      add r3, pc, r3
004cec18  02 20 93 e7                                      ldr r2, [r3, r2]
004cec1c  00 00 51 e3                                      cmp r1, #0
004cec20  00 50 a0 e1                                      mov r5, r0
004cec24  08 20 82 e2                                      add r2, r2, #8
004cec28  00 20 80 e5                                      str r2, [r0]
004cec2c  10 00 00 0a                                      beq #0x4cec74
004cec30  04 30 11 e5                                      ldr r3, [r1, #-4]
004cec34  14 00 a0 e3                                      mov r0, #0x14
004cec38  90 13 20 e0                                      mla r0, r0, r3, r1
004cec3c  00 00 51 e1                                      cmp r1, r0
004cec40  01 00 00 1a                                      bne #0x4cec4c
004cec44  08 00 00 ea                                      b #0x4cec6c
004cec48  04 00 a0 e1                                      mov r0, r4
004cec4c  14 40 40 e2                                      sub r4, r0, #0x14
004cec50  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004cec54  04 00 a0 e1                                      mov r0, r4
004cec58  0f e0 a0 e1                                      mov lr, pc
004cec5c  00 f0 93 e5                                      ldr pc, [r3]
004cec60  08 00 95 e5                                      ldr r0, [r5, #8]
004cec64  04 00 50 e1                                      cmp r0, r4
004cec68  f6 ff ff 1a                                      bne #0x4cec48
004cec6c  08 00 40 e2                                      sub r0, r0, #8
004cec70  f2 05 f9 eb                                      bl #0x310440
004cec74  05 00 a0 e1                                      mov r0, r5
004cec78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004cec7c  7c 5e 4c 00 28 12 00 00                          .byte 0x7c, 0x5e, 0x4c, 0x00, 0x28, 0x12, 0x00, 0x00

; FUNCTION 0x004dc2ac, declared_size=376, range_size=376, mode=arm
; class-group: Structs::LangSheetList
; alias: _ZN7Structs13LangSheetList4readEP11IStreamBase
; demangled: Structs::LangSheetList::read(IStreamBase*)
; decoder-mode: arm
004dc2ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004dc2b0  00 50 a0 e1                                      mov r5, r0
004dc2b4  08 d0 4d e2                                      sub sp, sp, #8
004dc2b8  01 00 a0 e1                                      mov r0, r1
004dc2bc  01 70 a0 e1                                      mov r7, r1
004dc2c0  54 61 9f e5                                      ldr r6, [pc, #0x154]
004dc2c4  04 10 85 e2                                      add r1, r5, #4
004dc2c8  b4 0b fc eb                                      bl #0x3df1a0
004dc2cc  01 30 a0 e3                                      mov r3, #1
004dc2d0  00 00 53 e3                                      cmp r3, #0
004dc2d4  04 30 8d e5                                      str r3, [sp, #4]
004dc2d8  06 60 8f e0                                      add r6, pc, r6
004dc2dc  0f 00 00 1a                                      bne #0x4dc320
004dc2e0  05 30 85 e2                                      add r3, r5, #5
004dc2e4  06 20 85 e2                                      add r2, r5, #6
004dc2e8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc2ec  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dc2f0  02 00 53 e1                                      cmp r3, r2
004dc2f4  01 10 20 e0                                      eor r1, r0, r1
004dc2f8  01 10 43 e5                                      strb r1, [r3, #-1]
004dc2fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc300  00 10 21 e0                                      eor r1, r1, r0
004dc304  01 10 c2 e5                                      strb r1, [r2, #1]
004dc308  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dc30c  01 20 42 e2                                      sub r2, r2, #1
004dc310  00 10 21 e0                                      eor r1, r1, r0
004dc314  01 10 43 e5                                      strb r1, [r3, #-1]
004dc318  01 30 83 e2                                      add r3, r3, #1
004dc31c  f1 ff ff 3a                                      blo #0x4dc2e8
004dc320  08 30 95 e5                                      ldr r3, [r5, #8]
004dc324  00 00 53 e3                                      cmp r3, #0
004dc328  10 00 00 0a                                      beq #0x4dc370
004dc32c  04 20 13 e5                                      ldr r2, [r3, #-4]
004dc330  14 00 a0 e3                                      mov r0, #0x14
004dc334  90 32 20 e0                                      mla r0, r0, r2, r3
004dc338  00 00 53 e1                                      cmp r3, r0
004dc33c  01 00 00 1a                                      bne #0x4dc348
004dc340  08 00 00 ea                                      b #0x4dc368
004dc344  04 00 a0 e1                                      mov r0, r4
004dc348  14 40 40 e2                                      sub r4, r0, #0x14
004dc34c  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004dc350  04 00 a0 e1                                      mov r0, r4
004dc354  0f e0 a0 e1                                      mov lr, pc
004dc358  00 f0 93 e5                                      ldr pc, [r3]
004dc35c  08 00 95 e5                                      ldr r0, [r5, #8]
004dc360  04 00 50 e1                                      cmp r0, r4
004dc364  f6 ff ff 1a                                      bne #0x4dc344
004dc368  08 00 40 e2                                      sub r0, r0, #8
004dc36c  33 d0 f8 eb                                      bl #0x310440
004dc370  04 40 95 e5                                      ldr r4, [r5, #4]
004dc374  14 80 a0 e3                                      mov r8, #0x14
004dc378  01 10 a0 e3                                      mov r1, #1
004dc37c  98 04 00 e0                                      mul r0, r8, r4
004dc380  08 00 80 e2                                      add r0, r0, #8
004dc384  78 d0 f8 eb                                      bl #0x31056c
004dc388  00 00 54 e3                                      cmp r4, #0
004dc38c  00 80 80 e5                                      str r8, [r0]
004dc390  04 40 80 e5                                      str r4, [r0, #4]
004dc394  08 30 80 e2                                      add r3, r0, #8
004dc398  0b 00 00 0a                                      beq #0x4dc3cc
004dc39c  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
004dc3a0  00 20 a0 e3                                      mov r2, #0
004dc3a4  01 c0 96 e7                                      ldr ip, [r6, r1]
004dc3a8  02 10 a0 e1                                      mov r1, r2
004dc3ac  08 c0 8c e2                                      add ip, ip, #8
004dc3b0  01 20 82 e2                                      add r2, r2, #1
004dc3b4  04 00 52 e1                                      cmp r2, r4
004dc3b8  08 c0 80 e5                                      str ip, [r0, #8]
004dc3bc  10 10 80 e5                                      str r1, [r0, #0x10]
004dc3c0  18 10 80 e5                                      str r1, [r0, #0x18]
004dc3c4  14 00 80 e2                                      add r0, r0, #0x14
004dc3c8  f8 ff ff 1a                                      bne #0x4dc3b0
004dc3cc  04 20 95 e5                                      ldr r2, [r5, #4]
004dc3d0  08 30 85 e5                                      str r3, [r5, #8]
004dc3d4  00 00 52 e3                                      cmp r2, #0
004dc3d8  0d 00 00 0a                                      beq #0x4dc414
004dc3dc  00 40 a0 e3                                      mov r4, #0
004dc3e0  04 60 a0 e1                                      mov r6, r4
004dc3e4  00 00 00 ea                                      b #0x4dc3ec
004dc3e8  08 30 95 e5                                      ldr r3, [r5, #8]
004dc3ec  04 00 83 e0                                      add r0, r3, r4
004dc3f0  07 10 a0 e1                                      mov r1, r7
004dc3f4  04 30 93 e7                                      ldr r3, [r3, r4]
004dc3f8  0f e0 a0 e1                                      mov lr, pc
004dc3fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004dc400  04 30 95 e5                                      ldr r3, [r5, #4]
004dc404  01 60 86 e2                                      add r6, r6, #1
004dc408  14 40 84 e2                                      add r4, r4, #0x14
004dc40c  06 00 53 e1                                      cmp r3, r6
004dc410  f4 ff ff 8a                                      bhi #0x4dc3e8
004dc414  08 d0 8d e2                                      add sp, sp, #8
004dc418  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004dc41c  b8 87 4b 00 a8 37 00 00                          .byte 0xb8, 0x87, 0x4b, 0x00, 0xa8, 0x37, 0x00, 0x00
