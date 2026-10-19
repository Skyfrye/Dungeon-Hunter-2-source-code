; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004da1f8, declared_size=40, range_size=40, mode=arm
; class-group: Structs::FaerySpellList
; alias: _ZN7Structs14FaerySpellList8finalizeEv
; demangled: Structs::FaerySpellList::finalize()
; decoder-mode: arm
004da1f8  10 40 2d e9                                      push {r4, lr}
004da1fc  00 40 a0 e1                                      mov r4, r0
004da200  08 00 90 e5                                      ldr r0, [r0, #8]
004da204  00 00 50 e3                                      cmp r0, #0
004da208  03 00 00 0a                                      beq #0x4da21c
004da20c  8b d8 f8 eb                                      bl #0x310440
004da210  00 30 a0 e3                                      mov r3, #0
004da214  04 30 84 e5                                      str r3, [r4, #4]
004da218  08 30 84 e5                                      str r3, [r4, #8]
004da21c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da220, declared_size=64, range_size=64, mode=arm
; class-group: Structs::FaerySpellList
; alias: _ZN7Structs14FaerySpellListD1Ev
; demangled: Structs::FaerySpellList::~FaerySpellList()
; decoder-mode: arm
004da220  10 40 2d e9                                      push {r4, lr}
004da224  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da228  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da22c  00 40 a0 e1                                      mov r4, r0
004da230  03 30 8f e0                                      add r3, pc, r3
004da234  08 00 90 e5                                      ldr r0, [r0, #8]
004da238  02 20 93 e7                                      ldr r2, [r3, r2]
004da23c  00 00 50 e3                                      cmp r0, #0
004da240  08 20 82 e2                                      add r2, r2, #8
004da244  00 20 84 e5                                      str r2, [r4]
004da248  00 00 00 0a                                      beq #0x4da250
004da24c  7b d8 f8 eb                                      bl #0x310440
004da250  04 00 a0 e1                                      mov r0, r4
004da254  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da258  60 a8 4b 00 ac 12 00 00                          .byte 0x60, 0xa8, 0x4b, 0x00, 0xac, 0x12, 0x00, 0x00

; FUNCTION 0x004da260, declared_size=28, range_size=28, mode=arm
; class-group: Structs::FaerySpellList
; alias: _ZN7Structs14FaerySpellListD0Ev
; demangled: Structs::FaerySpellList::~FaerySpellList()
; decoder-mode: arm
004da260  10 40 2d e9                                      push {r4, lr}
004da264  00 40 a0 e1                                      mov r4, r0
004da268  ec ff ff eb                                      bl #0x4da220
004da26c  04 00 a0 e1                                      mov r0, r4
004da270  72 d8 f8 eb                                      bl #0x310440
004da274  04 00 a0 e1                                      mov r0, r4
004da278  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da27c, declared_size=64, range_size=64, mode=arm
; class-group: Structs::FaerySpellList
; alias: _ZN7Structs14FaerySpellListD2Ev
; demangled: Structs::FaerySpellList::~FaerySpellList()
; decoder-mode: arm
004da27c  10 40 2d e9                                      push {r4, lr}
004da280  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da284  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da288  00 40 a0 e1                                      mov r4, r0
004da28c  03 30 8f e0                                      add r3, pc, r3
004da290  08 00 90 e5                                      ldr r0, [r0, #8]
004da294  02 20 93 e7                                      ldr r2, [r3, r2]
004da298  00 00 50 e3                                      cmp r0, #0
004da29c  08 20 82 e2                                      add r2, r2, #8
004da2a0  00 20 84 e5                                      str r2, [r4]
004da2a4  00 00 00 0a                                      beq #0x4da2ac
004da2a8  64 d8 f8 eb                                      bl #0x310440
004da2ac  04 00 a0 e1                                      mov r0, r4
004da2b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da2b4  04 a8 4b 00 ac 12 00 00                          .byte 0x04, 0xa8, 0x4b, 0x00, 0xac, 0x12, 0x00, 0x00

; FUNCTION 0x004eaa78, declared_size=292, range_size=292, mode=arm
; class-group: Structs::FaerySpellList
; alias: _ZN7Structs14FaerySpellList4readEP11IStreamBase
; demangled: Structs::FaerySpellList::read(IStreamBase*)
; decoder-mode: arm
004eaa78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004eaa7c  00 50 a0 e1                                      mov r5, r0
004eaa80  08 d0 4d e2                                      sub sp, sp, #8
004eaa84  01 00 a0 e1                                      mov r0, r1
004eaa88  01 80 a0 e1                                      mov r8, r1
004eaa8c  04 10 85 e2                                      add r1, r5, #4
004eaa90  c2 d1 fb eb                                      bl #0x3df1a0
004eaa94  01 30 a0 e3                                      mov r3, #1
004eaa98  00 00 53 e3                                      cmp r3, #0
004eaa9c  04 30 8d e5                                      str r3, [sp, #4]
004eaaa0  0f 00 00 1a                                      bne #0x4eaae4
004eaaa4  05 30 85 e2                                      add r3, r5, #5
004eaaa8  06 20 85 e2                                      add r2, r5, #6
004eaaac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eaab0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eaab4  02 00 53 e1                                      cmp r3, r2
004eaab8  01 10 20 e0                                      eor r1, r0, r1
004eaabc  01 10 43 e5                                      strb r1, [r3, #-1]
004eaac0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eaac4  00 10 21 e0                                      eor r1, r1, r0
004eaac8  01 10 c2 e5                                      strb r1, [r2, #1]
004eaacc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eaad0  01 20 42 e2                                      sub r2, r2, #1
004eaad4  00 10 21 e0                                      eor r1, r1, r0
004eaad8  01 10 43 e5                                      strb r1, [r3, #-1]
004eaadc  01 30 83 e2                                      add r3, r3, #1
004eaae0  f1 ff ff 3a                                      blo #0x4eaaac
004eaae4  08 00 95 e5                                      ldr r0, [r5, #8]
004eaae8  00 00 50 e3                                      cmp r0, #0
004eaaec  00 00 00 0a                                      beq #0x4eaaf4
004eaaf0  52 96 f8 eb                                      bl #0x310440
004eaaf4  04 00 95 e5                                      ldr r0, [r5, #4]
004eaaf8  01 10 a0 e3                                      mov r1, #1
004eaafc  00 01 a0 e1                                      lsl r0, r0, #2
004eab00  99 96 f8 eb                                      bl #0x31056c
004eab04  04 30 95 e5                                      ldr r3, [r5, #4]
004eab08  08 00 85 e5                                      str r0, [r5, #8]
004eab0c  00 00 53 e3                                      cmp r3, #0
004eab10  1f 00 00 0a                                      beq #0x4eab94
004eab14  00 40 a0 e3                                      mov r4, #0
004eab18  01 70 a0 e3                                      mov r7, #1
004eab1c  04 61 a0 e1                                      lsl r6, r4, #2
004eab20  06 10 80 e0                                      add r1, r0, r6
004eab24  08 00 a0 e1                                      mov r0, r8
004eab28  58 b9 fd eb                                      bl #0x459090
004eab2c  04 70 8d e5                                      str r7, [sp, #4]
004eab30  00 00 57 e3                                      cmp r7, #0
004eab34  08 30 95 e5                                      ldr r3, [r5, #8]
004eab38  10 00 00 1a                                      bne #0x4eab80
004eab3c  06 60 83 e0                                      add r6, r3, r6
004eab40  02 30 86 e2                                      add r3, r6, #2
004eab44  01 60 86 e2                                      add r6, r6, #1
004eab48  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eab4c  01 20 56 e5                                      ldrb r2, [r6, #-1]
004eab50  06 00 53 e1                                      cmp r3, r6
004eab54  02 20 21 e0                                      eor r2, r1, r2
004eab58  01 20 46 e5                                      strb r2, [r6, #-1]
004eab5c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eab60  01 20 22 e0                                      eor r2, r2, r1
004eab64  01 20 c3 e5                                      strb r2, [r3, #1]
004eab68  01 10 56 e5                                      ldrb r1, [r6, #-1]
004eab6c  01 30 43 e2                                      sub r3, r3, #1
004eab70  01 20 22 e0                                      eor r2, r2, r1
004eab74  01 20 46 e5                                      strb r2, [r6, #-1]
004eab78  01 60 86 e2                                      add r6, r6, #1
004eab7c  f1 ff ff 8a                                      bhi #0x4eab48
004eab80  04 30 95 e5                                      ldr r3, [r5, #4]
004eab84  01 40 84 e2                                      add r4, r4, #1
004eab88  04 00 53 e1                                      cmp r3, r4
004eab8c  08 00 95 85                                      ldrhi r0, [r5, #8]
004eab90  e1 ff ff 8a                                      bhi #0x4eab1c
004eab94  08 d0 8d e2                                      add sp, sp, #8
004eab98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
