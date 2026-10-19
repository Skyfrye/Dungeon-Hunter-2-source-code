; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004da2bc, declared_size=40, range_size=40, mode=arm
; class-group: Structs::FaeryList
; alias: _ZN7Structs9FaeryList8finalizeEv
; demangled: Structs::FaeryList::finalize()
; decoder-mode: arm
004da2bc  10 40 2d e9                                      push {r4, lr}
004da2c0  00 40 a0 e1                                      mov r4, r0
004da2c4  08 00 90 e5                                      ldr r0, [r0, #8]
004da2c8  00 00 50 e3                                      cmp r0, #0
004da2cc  03 00 00 0a                                      beq #0x4da2e0
004da2d0  5a d8 f8 eb                                      bl #0x310440
004da2d4  00 30 a0 e3                                      mov r3, #0
004da2d8  04 30 84 e5                                      str r3, [r4, #4]
004da2dc  08 30 84 e5                                      str r3, [r4, #8]
004da2e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da2e4, declared_size=64, range_size=64, mode=arm
; class-group: Structs::FaeryList
; alias: _ZN7Structs9FaeryListD1Ev
; demangled: Structs::FaeryList::~FaeryList()
; decoder-mode: arm
004da2e4  10 40 2d e9                                      push {r4, lr}
004da2e8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da2ec  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da2f0  00 40 a0 e1                                      mov r4, r0
004da2f4  03 30 8f e0                                      add r3, pc, r3
004da2f8  08 00 90 e5                                      ldr r0, [r0, #8]
004da2fc  02 20 93 e7                                      ldr r2, [r3, r2]
004da300  00 00 50 e3                                      cmp r0, #0
004da304  08 20 82 e2                                      add r2, r2, #8
004da308  00 20 84 e5                                      str r2, [r4]
004da30c  00 00 00 0a                                      beq #0x4da314
004da310  4a d8 f8 eb                                      bl #0x310440
004da314  04 00 a0 e1                                      mov r0, r4
004da318  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da31c  9c a7 4b 00 44 0a 00 00                          .byte 0x9c, 0xa7, 0x4b, 0x00, 0x44, 0x0a, 0x00, 0x00

; FUNCTION 0x004da324, declared_size=28, range_size=28, mode=arm
; class-group: Structs::FaeryList
; alias: _ZN7Structs9FaeryListD0Ev
; demangled: Structs::FaeryList::~FaeryList()
; decoder-mode: arm
004da324  10 40 2d e9                                      push {r4, lr}
004da328  00 40 a0 e1                                      mov r4, r0
004da32c  ec ff ff eb                                      bl #0x4da2e4
004da330  04 00 a0 e1                                      mov r0, r4
004da334  41 d8 f8 eb                                      bl #0x310440
004da338  04 00 a0 e1                                      mov r0, r4
004da33c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da340, declared_size=64, range_size=64, mode=arm
; class-group: Structs::FaeryList
; alias: _ZN7Structs9FaeryListD2Ev
; demangled: Structs::FaeryList::~FaeryList()
; decoder-mode: arm
004da340  10 40 2d e9                                      push {r4, lr}
004da344  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da348  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da34c  00 40 a0 e1                                      mov r4, r0
004da350  03 30 8f e0                                      add r3, pc, r3
004da354  08 00 90 e5                                      ldr r0, [r0, #8]
004da358  02 20 93 e7                                      ldr r2, [r3, r2]
004da35c  00 00 50 e3                                      cmp r0, #0
004da360  08 20 82 e2                                      add r2, r2, #8
004da364  00 20 84 e5                                      str r2, [r4]
004da368  00 00 00 0a                                      beq #0x4da370
004da36c  33 d8 f8 eb                                      bl #0x310440
004da370  04 00 a0 e1                                      mov r0, r4
004da374  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da378  40 a7 4b 00 44 0a 00 00                          .byte 0x40, 0xa7, 0x4b, 0x00, 0x44, 0x0a, 0x00, 0x00

; FUNCTION 0x004eab9c, declared_size=292, range_size=292, mode=arm
; class-group: Structs::FaeryList
; alias: _ZN7Structs9FaeryList4readEP11IStreamBase
; demangled: Structs::FaeryList::read(IStreamBase*)
; decoder-mode: arm
004eab9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004eaba0  00 50 a0 e1                                      mov r5, r0
004eaba4  08 d0 4d e2                                      sub sp, sp, #8
004eaba8  01 00 a0 e1                                      mov r0, r1
004eabac  01 80 a0 e1                                      mov r8, r1
004eabb0  04 10 85 e2                                      add r1, r5, #4
004eabb4  79 d1 fb eb                                      bl #0x3df1a0
004eabb8  01 30 a0 e3                                      mov r3, #1
004eabbc  00 00 53 e3                                      cmp r3, #0
004eabc0  04 30 8d e5                                      str r3, [sp, #4]
004eabc4  0f 00 00 1a                                      bne #0x4eac08
004eabc8  05 30 85 e2                                      add r3, r5, #5
004eabcc  06 20 85 e2                                      add r2, r5, #6
004eabd0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eabd4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eabd8  02 00 53 e1                                      cmp r3, r2
004eabdc  01 10 20 e0                                      eor r1, r0, r1
004eabe0  01 10 43 e5                                      strb r1, [r3, #-1]
004eabe4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eabe8  00 10 21 e0                                      eor r1, r1, r0
004eabec  01 10 c2 e5                                      strb r1, [r2, #1]
004eabf0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eabf4  01 20 42 e2                                      sub r2, r2, #1
004eabf8  00 10 21 e0                                      eor r1, r1, r0
004eabfc  01 10 43 e5                                      strb r1, [r3, #-1]
004eac00  01 30 83 e2                                      add r3, r3, #1
004eac04  f1 ff ff 3a                                      blo #0x4eabd0
004eac08  08 00 95 e5                                      ldr r0, [r5, #8]
004eac0c  00 00 50 e3                                      cmp r0, #0
004eac10  00 00 00 0a                                      beq #0x4eac18
004eac14  09 96 f8 eb                                      bl #0x310440
004eac18  04 00 95 e5                                      ldr r0, [r5, #4]
004eac1c  01 10 a0 e3                                      mov r1, #1
004eac20  00 01 a0 e1                                      lsl r0, r0, #2
004eac24  50 96 f8 eb                                      bl #0x31056c
004eac28  04 30 95 e5                                      ldr r3, [r5, #4]
004eac2c  08 00 85 e5                                      str r0, [r5, #8]
004eac30  00 00 53 e3                                      cmp r3, #0
004eac34  1f 00 00 0a                                      beq #0x4eacb8
004eac38  00 40 a0 e3                                      mov r4, #0
004eac3c  01 70 a0 e3                                      mov r7, #1
004eac40  04 61 a0 e1                                      lsl r6, r4, #2
004eac44  06 10 80 e0                                      add r1, r0, r6
004eac48  08 00 a0 e1                                      mov r0, r8
004eac4c  0f b9 fd eb                                      bl #0x459090
004eac50  04 70 8d e5                                      str r7, [sp, #4]
004eac54  00 00 57 e3                                      cmp r7, #0
004eac58  08 30 95 e5                                      ldr r3, [r5, #8]
004eac5c  10 00 00 1a                                      bne #0x4eaca4
004eac60  06 60 83 e0                                      add r6, r3, r6
004eac64  02 30 86 e2                                      add r3, r6, #2
004eac68  01 60 86 e2                                      add r6, r6, #1
004eac6c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eac70  01 20 56 e5                                      ldrb r2, [r6, #-1]
004eac74  06 00 53 e1                                      cmp r3, r6
004eac78  02 20 21 e0                                      eor r2, r1, r2
004eac7c  01 20 46 e5                                      strb r2, [r6, #-1]
004eac80  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eac84  01 20 22 e0                                      eor r2, r2, r1
004eac88  01 20 c3 e5                                      strb r2, [r3, #1]
004eac8c  01 10 56 e5                                      ldrb r1, [r6, #-1]
004eac90  01 30 43 e2                                      sub r3, r3, #1
004eac94  01 20 22 e0                                      eor r2, r2, r1
004eac98  01 20 46 e5                                      strb r2, [r6, #-1]
004eac9c  01 60 86 e2                                      add r6, r6, #1
004eaca0  f1 ff ff 8a                                      bhi #0x4eac6c
004eaca4  04 30 95 e5                                      ldr r3, [r5, #4]
004eaca8  01 40 84 e2                                      add r4, r4, #1
004eacac  04 00 53 e1                                      cmp r3, r4
004eacb0  08 00 95 85                                      ldrhi r0, [r5, #8]
004eacb4  e1 ff ff 8a                                      bhi #0x4eac40
004eacb8  08 d0 8d e2                                      add sp, sp, #8
004eacbc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
