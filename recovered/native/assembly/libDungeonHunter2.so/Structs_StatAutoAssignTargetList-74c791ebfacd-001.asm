; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004daf4c, declared_size=100, range_size=100, mode=arm
; class-group: Structs::StatAutoAssignTargetList
; alias: _ZN7Structs24StatAutoAssignTargetList8finalizeEv
; demangled: Structs::StatAutoAssignTargetList::finalize()
; decoder-mode: arm
004daf4c  70 40 2d e9                                      push {r4, r5, r6, lr}
004daf50  08 30 90 e5                                      ldr r3, [r0, #8]
004daf54  00 50 a0 e1                                      mov r5, r0
004daf58  00 00 53 e3                                      cmp r3, #0
004daf5c  12 00 00 0a                                      beq #0x4dafac
004daf60  04 00 13 e5                                      ldr r0, [r3, #-4]
004daf64  00 02 83 e0                                      add r0, r3, r0, lsl #4
004daf68  00 00 53 e1                                      cmp r3, r0
004daf6c  01 00 00 1a                                      bne #0x4daf78
004daf70  08 00 00 ea                                      b #0x4daf98
004daf74  04 00 a0 e1                                      mov r0, r4
004daf78  10 40 40 e2                                      sub r4, r0, #0x10
004daf7c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004daf80  04 00 a0 e1                                      mov r0, r4
004daf84  0f e0 a0 e1                                      mov lr, pc
004daf88  00 f0 93 e5                                      ldr pc, [r3]
004daf8c  08 00 95 e5                                      ldr r0, [r5, #8]
004daf90  04 00 50 e1                                      cmp r0, r4
004daf94  f6 ff ff 1a                                      bne #0x4daf74
004daf98  08 00 40 e2                                      sub r0, r0, #8
004daf9c  27 d5 f8 eb                                      bl #0x310440
004dafa0  00 30 a0 e3                                      mov r3, #0
004dafa4  04 30 85 e5                                      str r3, [r5, #4]
004dafa8  08 30 85 e5                                      str r3, [r5, #8]
004dafac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004dafb0, declared_size=124, range_size=124, mode=arm
; class-group: Structs::StatAutoAssignTargetList
; alias: _ZN7Structs24StatAutoAssignTargetListD1Ev
; demangled: Structs::StatAutoAssignTargetList::~StatAutoAssignTargetList()
; decoder-mode: arm
004dafb0  70 40 2d e9                                      push {r4, r5, r6, lr}
004dafb4  68 30 9f e5                                      ldr r3, [pc, #0x68]
004dafb8  68 20 9f e5                                      ldr r2, [pc, #0x68]
004dafbc  08 10 90 e5                                      ldr r1, [r0, #8]
004dafc0  03 30 8f e0                                      add r3, pc, r3
004dafc4  02 20 93 e7                                      ldr r2, [r3, r2]
004dafc8  00 00 51 e3                                      cmp r1, #0
004dafcc  00 50 a0 e1                                      mov r5, r0
004dafd0  08 20 82 e2                                      add r2, r2, #8
004dafd4  00 20 80 e5                                      str r2, [r0]
004dafd8  0f 00 00 0a                                      beq #0x4db01c
004dafdc  04 00 11 e5                                      ldr r0, [r1, #-4]
004dafe0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004dafe4  00 00 51 e1                                      cmp r1, r0
004dafe8  01 00 00 1a                                      bne #0x4daff4
004dafec  08 00 00 ea                                      b #0x4db014
004daff0  04 00 a0 e1                                      mov r0, r4
004daff4  10 40 40 e2                                      sub r4, r0, #0x10
004daff8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004daffc  04 00 a0 e1                                      mov r0, r4
004db000  0f e0 a0 e1                                      mov lr, pc
004db004  00 f0 93 e5                                      ldr pc, [r3]
004db008  08 00 95 e5                                      ldr r0, [r5, #8]
004db00c  04 00 50 e1                                      cmp r0, r4
004db010  f6 ff ff 1a                                      bne #0x4daff0
004db014  08 00 40 e2                                      sub r0, r0, #8
004db018  08 d5 f8 eb                                      bl #0x310440
004db01c  05 00 a0 e1                                      mov r0, r5
004db020  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004db024  d0 9a 4b 00 e8 17 00 00                          .byte 0xd0, 0x9a, 0x4b, 0x00, 0xe8, 0x17, 0x00, 0x00

; FUNCTION 0x004db02c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::StatAutoAssignTargetList
; alias: _ZN7Structs24StatAutoAssignTargetListD0Ev
; demangled: Structs::StatAutoAssignTargetList::~StatAutoAssignTargetList()
; decoder-mode: arm
004db02c  10 40 2d e9                                      push {r4, lr}
004db030  00 40 a0 e1                                      mov r4, r0
004db034  dd ff ff eb                                      bl #0x4dafb0
004db038  04 00 a0 e1                                      mov r0, r4
004db03c  ff d4 f8 eb                                      bl #0x310440
004db040  04 00 a0 e1                                      mov r0, r4
004db044  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db048, declared_size=124, range_size=124, mode=arm
; class-group: Structs::StatAutoAssignTargetList
; alias: _ZN7Structs24StatAutoAssignTargetListD2Ev
; demangled: Structs::StatAutoAssignTargetList::~StatAutoAssignTargetList()
; decoder-mode: arm
004db048  70 40 2d e9                                      push {r4, r5, r6, lr}
004db04c  68 30 9f e5                                      ldr r3, [pc, #0x68]
004db050  68 20 9f e5                                      ldr r2, [pc, #0x68]
004db054  08 10 90 e5                                      ldr r1, [r0, #8]
004db058  03 30 8f e0                                      add r3, pc, r3
004db05c  02 20 93 e7                                      ldr r2, [r3, r2]
004db060  00 00 51 e3                                      cmp r1, #0
004db064  00 50 a0 e1                                      mov r5, r0
004db068  08 20 82 e2                                      add r2, r2, #8
004db06c  00 20 80 e5                                      str r2, [r0]
004db070  0f 00 00 0a                                      beq #0x4db0b4
004db074  04 00 11 e5                                      ldr r0, [r1, #-4]
004db078  00 02 81 e0                                      add r0, r1, r0, lsl #4
004db07c  00 00 51 e1                                      cmp r1, r0
004db080  01 00 00 1a                                      bne #0x4db08c
004db084  08 00 00 ea                                      b #0x4db0ac
004db088  04 00 a0 e1                                      mov r0, r4
004db08c  10 40 40 e2                                      sub r4, r0, #0x10
004db090  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004db094  04 00 a0 e1                                      mov r0, r4
004db098  0f e0 a0 e1                                      mov lr, pc
004db09c  00 f0 93 e5                                      ldr pc, [r3]
004db0a0  08 00 95 e5                                      ldr r0, [r5, #8]
004db0a4  04 00 50 e1                                      cmp r0, r4
004db0a8  f6 ff ff 1a                                      bne #0x4db088
004db0ac  08 00 40 e2                                      sub r0, r0, #8
004db0b0  e2 d4 f8 eb                                      bl #0x310440
004db0b4  05 00 a0 e1                                      mov r0, r5
004db0b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004db0bc  38 9a 4b 00 e8 17 00 00                          .byte 0x38, 0x9a, 0x4b, 0x00, 0xe8, 0x17, 0x00, 0x00

; FUNCTION 0x004dce90, declared_size=348, range_size=348, mode=arm
; class-group: Structs::StatAutoAssignTargetList
; alias: _ZN7Structs24StatAutoAssignTargetList4readEP11IStreamBase
; demangled: Structs::StatAutoAssignTargetList::read(IStreamBase*)
; decoder-mode: arm
004dce90  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004dce94  00 50 a0 e1                                      mov r5, r0
004dce98  0c d0 4d e2                                      sub sp, sp, #0xc
004dce9c  01 00 a0 e1                                      mov r0, r1
004dcea0  01 60 a0 e1                                      mov r6, r1
004dcea4  38 71 9f e5                                      ldr r7, [pc, #0x138]
004dcea8  04 10 85 e2                                      add r1, r5, #4
004dceac  bb 08 fc eb                                      bl #0x3df1a0
004dceb0  01 30 a0 e3                                      mov r3, #1
004dceb4  00 00 53 e3                                      cmp r3, #0
004dceb8  04 30 8d e5                                      str r3, [sp, #4]
004dcebc  07 70 8f e0                                      add r7, pc, r7
004dcec0  0f 00 00 1a                                      bne #0x4dcf04
004dcec4  05 30 85 e2                                      add r3, r5, #5
004dcec8  06 20 85 e2                                      add r2, r5, #6
004dcecc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dced0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dced4  02 00 53 e1                                      cmp r3, r2
004dced8  01 10 20 e0                                      eor r1, r0, r1
004dcedc  01 10 43 e5                                      strb r1, [r3, #-1]
004dcee0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dcee4  00 10 21 e0                                      eor r1, r1, r0
004dcee8  01 10 c2 e5                                      strb r1, [r2, #1]
004dceec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dcef0  01 20 42 e2                                      sub r2, r2, #1
004dcef4  00 10 21 e0                                      eor r1, r1, r0
004dcef8  01 10 43 e5                                      strb r1, [r3, #-1]
004dcefc  01 30 83 e2                                      add r3, r3, #1
004dcf00  f1 ff ff 3a                                      blo #0x4dcecc
004dcf04  08 30 95 e5                                      ldr r3, [r5, #8]
004dcf08  00 00 53 e3                                      cmp r3, #0
004dcf0c  0f 00 00 0a                                      beq #0x4dcf50
004dcf10  04 00 13 e5                                      ldr r0, [r3, #-4]
004dcf14  00 02 83 e0                                      add r0, r3, r0, lsl #4
004dcf18  00 00 53 e1                                      cmp r3, r0
004dcf1c  01 00 00 1a                                      bne #0x4dcf28
004dcf20  08 00 00 ea                                      b #0x4dcf48
004dcf24  04 00 a0 e1                                      mov r0, r4
004dcf28  10 40 40 e2                                      sub r4, r0, #0x10
004dcf2c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004dcf30  04 00 a0 e1                                      mov r0, r4
004dcf34  0f e0 a0 e1                                      mov lr, pc
004dcf38  00 f0 93 e5                                      ldr pc, [r3]
004dcf3c  08 00 95 e5                                      ldr r0, [r5, #8]
004dcf40  04 00 50 e1                                      cmp r0, r4
004dcf44  f6 ff ff 1a                                      bne #0x4dcf24
004dcf48  08 00 40 e2                                      sub r0, r0, #8
004dcf4c  3b cd f8 eb                                      bl #0x310440
004dcf50  04 40 95 e5                                      ldr r4, [r5, #4]
004dcf54  01 10 a0 e3                                      mov r1, #1
004dcf58  04 02 a0 e1                                      lsl r0, r4, #4
004dcf5c  08 00 80 e2                                      add r0, r0, #8
004dcf60  81 cd f8 eb                                      bl #0x31056c
004dcf64  10 30 a0 e3                                      mov r3, #0x10
004dcf68  00 00 54 e3                                      cmp r4, #0
004dcf6c  18 00 80 e8                                      stm r0, {r3, r4}
004dcf70  08 30 80 e2                                      add r3, r0, #8
004dcf74  08 00 00 0a                                      beq #0x4dcf9c
004dcf78  68 10 9f e5                                      ldr r1, [pc, #0x68]
004dcf7c  00 20 a0 e3                                      mov r2, #0
004dcf80  01 10 97 e7                                      ldr r1, [r7, r1]
004dcf84  08 10 81 e2                                      add r1, r1, #8
004dcf88  01 20 82 e2                                      add r2, r2, #1
004dcf8c  04 00 52 e1                                      cmp r2, r4
004dcf90  08 10 80 e5                                      str r1, [r0, #8]
004dcf94  10 00 80 e2                                      add r0, r0, #0x10
004dcf98  fa ff ff 1a                                      bne #0x4dcf88
004dcf9c  04 20 95 e5                                      ldr r2, [r5, #4]
004dcfa0  08 30 85 e5                                      str r3, [r5, #8]
004dcfa4  00 00 52 e3                                      cmp r2, #0
004dcfa8  0b 00 00 0a                                      beq #0x4dcfdc
004dcfac  00 40 a0 e3                                      mov r4, #0
004dcfb0  00 00 00 ea                                      b #0x4dcfb8
004dcfb4  08 30 95 e5                                      ldr r3, [r5, #8]
004dcfb8  04 02 83 e0                                      add r0, r3, r4, lsl #4
004dcfbc  06 10 a0 e1                                      mov r1, r6
004dcfc0  04 32 93 e7                                      ldr r3, [r3, r4, lsl #4]
004dcfc4  0f e0 a0 e1                                      mov lr, pc
004dcfc8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004dcfcc  04 30 95 e5                                      ldr r3, [r5, #4]
004dcfd0  01 40 84 e2                                      add r4, r4, #1
004dcfd4  04 00 53 e1                                      cmp r3, r4
004dcfd8  f5 ff ff 8a                                      bhi #0x4dcfb4
004dcfdc  0c d0 8d e2                                      add sp, sp, #0xc
004dcfe0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
004dcfe4  d4 7b 4b 00 a0 14 00 00                          .byte 0xd4, 0x7b, 0x4b, 0x00, 0xa0, 0x14, 0x00, 0x00
