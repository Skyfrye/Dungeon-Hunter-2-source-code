; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004dae88, declared_size=40, range_size=40, mode=arm
; class-group: Structs::StatListList
; alias: _ZN7Structs12StatListList8finalizeEv
; demangled: Structs::StatListList::finalize()
; decoder-mode: arm
004dae88  10 40 2d e9                                      push {r4, lr}
004dae8c  00 40 a0 e1                                      mov r4, r0
004dae90  08 00 90 e5                                      ldr r0, [r0, #8]
004dae94  00 00 50 e3                                      cmp r0, #0
004dae98  03 00 00 0a                                      beq #0x4daeac
004dae9c  67 d5 f8 eb                                      bl #0x310440
004daea0  00 30 a0 e3                                      mov r3, #0
004daea4  04 30 84 e5                                      str r3, [r4, #4]
004daea8  08 30 84 e5                                      str r3, [r4, #8]
004daeac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004daeb0, declared_size=64, range_size=64, mode=arm
; class-group: Structs::StatListList
; alias: _ZN7Structs12StatListListD1Ev
; demangled: Structs::StatListList::~StatListList()
; decoder-mode: arm
004daeb0  10 40 2d e9                                      push {r4, lr}
004daeb4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004daeb8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004daebc  00 40 a0 e1                                      mov r4, r0
004daec0  03 30 8f e0                                      add r3, pc, r3
004daec4  08 00 90 e5                                      ldr r0, [r0, #8]
004daec8  02 20 93 e7                                      ldr r2, [r3, r2]
004daecc  00 00 50 e3                                      cmp r0, #0
004daed0  08 20 82 e2                                      add r2, r2, #8
004daed4  00 20 84 e5                                      str r2, [r4]
004daed8  00 00 00 0a                                      beq #0x4daee0
004daedc  57 d5 f8 eb                                      bl #0x310440
004daee0  04 00 a0 e1                                      mov r0, r4
004daee4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004daee8  d0 9b 4b 00 74 44 00 00                          .byte 0xd0, 0x9b, 0x4b, 0x00, 0x74, 0x44, 0x00, 0x00

; FUNCTION 0x004daef0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::StatListList
; alias: _ZN7Structs12StatListListD0Ev
; demangled: Structs::StatListList::~StatListList()
; decoder-mode: arm
004daef0  10 40 2d e9                                      push {r4, lr}
004daef4  00 40 a0 e1                                      mov r4, r0
004daef8  ec ff ff eb                                      bl #0x4daeb0
004daefc  04 00 a0 e1                                      mov r0, r4
004daf00  4e d5 f8 eb                                      bl #0x310440
004daf04  04 00 a0 e1                                      mov r0, r4
004daf08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004daf0c, declared_size=64, range_size=64, mode=arm
; class-group: Structs::StatListList
; alias: _ZN7Structs12StatListListD2Ev
; demangled: Structs::StatListList::~StatListList()
; decoder-mode: arm
004daf0c  10 40 2d e9                                      push {r4, lr}
004daf10  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004daf14  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004daf18  00 40 a0 e1                                      mov r4, r0
004daf1c  03 30 8f e0                                      add r3, pc, r3
004daf20  08 00 90 e5                                      ldr r0, [r0, #8]
004daf24  02 20 93 e7                                      ldr r2, [r3, r2]
004daf28  00 00 50 e3                                      cmp r0, #0
004daf2c  08 20 82 e2                                      add r2, r2, #8
004daf30  00 20 84 e5                                      str r2, [r4]
004daf34  00 00 00 0a                                      beq #0x4daf3c
004daf38  40 d5 f8 eb                                      bl #0x310440
004daf3c  04 00 a0 e1                                      mov r0, r4
004daf40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004daf44  74 9b 4b 00 74 44 00 00                          .byte 0x74, 0x9b, 0x4b, 0x00, 0x74, 0x44, 0x00, 0x00

; FUNCTION 0x004eacc0, declared_size=292, range_size=292, mode=arm
; class-group: Structs::StatListList
; alias: _ZN7Structs12StatListList4readEP11IStreamBase
; demangled: Structs::StatListList::read(IStreamBase*)
; decoder-mode: arm
004eacc0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004eacc4  00 50 a0 e1                                      mov r5, r0
004eacc8  08 d0 4d e2                                      sub sp, sp, #8
004eaccc  01 00 a0 e1                                      mov r0, r1
004eacd0  01 80 a0 e1                                      mov r8, r1
004eacd4  04 10 85 e2                                      add r1, r5, #4
004eacd8  30 d1 fb eb                                      bl #0x3df1a0
004eacdc  01 30 a0 e3                                      mov r3, #1
004eace0  00 00 53 e3                                      cmp r3, #0
004eace4  04 30 8d e5                                      str r3, [sp, #4]
004eace8  0f 00 00 1a                                      bne #0x4ead2c
004eacec  05 30 85 e2                                      add r3, r5, #5
004eacf0  06 20 85 e2                                      add r2, r5, #6
004eacf4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eacf8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eacfc  02 00 53 e1                                      cmp r3, r2
004ead00  01 10 20 e0                                      eor r1, r0, r1
004ead04  01 10 43 e5                                      strb r1, [r3, #-1]
004ead08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ead0c  00 10 21 e0                                      eor r1, r1, r0
004ead10  01 10 c2 e5                                      strb r1, [r2, #1]
004ead14  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ead18  01 20 42 e2                                      sub r2, r2, #1
004ead1c  00 10 21 e0                                      eor r1, r1, r0
004ead20  01 10 43 e5                                      strb r1, [r3, #-1]
004ead24  01 30 83 e2                                      add r3, r3, #1
004ead28  f1 ff ff 3a                                      blo #0x4eacf4
004ead2c  08 00 95 e5                                      ldr r0, [r5, #8]
004ead30  00 00 50 e3                                      cmp r0, #0
004ead34  00 00 00 0a                                      beq #0x4ead3c
004ead38  c0 95 f8 eb                                      bl #0x310440
004ead3c  04 00 95 e5                                      ldr r0, [r5, #4]
004ead40  01 10 a0 e3                                      mov r1, #1
004ead44  00 01 a0 e1                                      lsl r0, r0, #2
004ead48  07 96 f8 eb                                      bl #0x31056c
004ead4c  04 30 95 e5                                      ldr r3, [r5, #4]
004ead50  08 00 85 e5                                      str r0, [r5, #8]
004ead54  00 00 53 e3                                      cmp r3, #0
004ead58  1f 00 00 0a                                      beq #0x4eaddc
004ead5c  00 40 a0 e3                                      mov r4, #0
004ead60  01 70 a0 e3                                      mov r7, #1
004ead64  04 61 a0 e1                                      lsl r6, r4, #2
004ead68  06 10 80 e0                                      add r1, r0, r6
004ead6c  08 00 a0 e1                                      mov r0, r8
004ead70  c6 b8 fd eb                                      bl #0x459090
004ead74  04 70 8d e5                                      str r7, [sp, #4]
004ead78  00 00 57 e3                                      cmp r7, #0
004ead7c  08 30 95 e5                                      ldr r3, [r5, #8]
004ead80  10 00 00 1a                                      bne #0x4eadc8
004ead84  06 60 83 e0                                      add r6, r3, r6
004ead88  02 30 86 e2                                      add r3, r6, #2
004ead8c  01 60 86 e2                                      add r6, r6, #1
004ead90  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ead94  01 20 56 e5                                      ldrb r2, [r6, #-1]
004ead98  06 00 53 e1                                      cmp r3, r6
004ead9c  02 20 21 e0                                      eor r2, r1, r2
004eada0  01 20 46 e5                                      strb r2, [r6, #-1]
004eada4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eada8  01 20 22 e0                                      eor r2, r2, r1
004eadac  01 20 c3 e5                                      strb r2, [r3, #1]
004eadb0  01 10 56 e5                                      ldrb r1, [r6, #-1]
004eadb4  01 30 43 e2                                      sub r3, r3, #1
004eadb8  01 20 22 e0                                      eor r2, r2, r1
004eadbc  01 20 46 e5                                      strb r2, [r6, #-1]
004eadc0  01 60 86 e2                                      add r6, r6, #1
004eadc4  f1 ff ff 8a                                      bhi #0x4ead90
004eadc8  04 30 95 e5                                      ldr r3, [r5, #4]
004eadcc  01 40 84 e2                                      add r4, r4, #1
004eadd0  04 00 53 e1                                      cmp r3, r4
004eadd4  08 00 95 85                                      ldrhi r0, [r5, #8]
004eadd8  e1 ff ff 8a                                      bhi #0x4ead64
004eaddc  08 d0 8d e2                                      add sp, sp, #8
004eade0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
