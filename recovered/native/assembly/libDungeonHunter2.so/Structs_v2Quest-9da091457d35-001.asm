; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cfe40, declared_size=456, range_size=456, mode=arm
; class-group: Structs::v2Quest
; alias: _ZN7Structs7v2Quest8finalizeEv
; demangled: Structs::v2Quest::finalize()
; decoder-mode: arm
004cfe40  70 40 2d e9                                      push {r4, r5, r6, lr}
004cfe44  18 30 90 e5                                      ldr r3, [r0, #0x18]
004cfe48  00 40 a0 e1                                      mov r4, r0
004cfe4c  00 00 53 e3                                      cmp r3, #0
004cfe50  12 00 00 0a                                      beq #0x4cfea0
004cfe54  04 00 13 e5                                      ldr r0, [r3, #-4]
004cfe58  00 02 83 e0                                      add r0, r3, r0, lsl #4
004cfe5c  00 00 53 e1                                      cmp r3, r0
004cfe60  01 00 00 1a                                      bne #0x4cfe6c
004cfe64  08 00 00 ea                                      b #0x4cfe8c
004cfe68  05 00 a0 e1                                      mov r0, r5
004cfe6c  10 50 40 e2                                      sub r5, r0, #0x10
004cfe70  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004cfe74  05 00 a0 e1                                      mov r0, r5
004cfe78  0f e0 a0 e1                                      mov lr, pc
004cfe7c  00 f0 93 e5                                      ldr pc, [r3]
004cfe80  18 00 94 e5                                      ldr r0, [r4, #0x18]
004cfe84  05 00 50 e1                                      cmp r0, r5
004cfe88  f6 ff ff 1a                                      bne #0x4cfe68
004cfe8c  08 00 40 e2                                      sub r0, r0, #8
004cfe90  6a 01 f9 eb                                      bl #0x310440
004cfe94  00 30 a0 e3                                      mov r3, #0
004cfe98  14 30 84 e5                                      str r3, [r4, #0x14]
004cfe9c  18 30 84 e5                                      str r3, [r4, #0x18]
004cfea0  20 30 94 e5                                      ldr r3, [r4, #0x20]
004cfea4  00 00 53 e3                                      cmp r3, #0
004cfea8  13 00 00 0a                                      beq #0x4cfefc
004cfeac  04 20 13 e5                                      ldr r2, [r3, #-4]
004cfeb0  2c 00 a0 e3                                      mov r0, #0x2c
004cfeb4  90 32 20 e0                                      mla r0, r0, r2, r3
004cfeb8  00 00 53 e1                                      cmp r3, r0
004cfebc  01 00 00 1a                                      bne #0x4cfec8
004cfec0  08 00 00 ea                                      b #0x4cfee8
004cfec4  05 00 a0 e1                                      mov r0, r5
004cfec8  2c 50 40 e2                                      sub r5, r0, #0x2c
004cfecc  2c 30 10 e5                                      ldr r3, [r0, #-0x2c]
004cfed0  05 00 a0 e1                                      mov r0, r5
004cfed4  0f e0 a0 e1                                      mov lr, pc
004cfed8  00 f0 93 e5                                      ldr pc, [r3]
004cfedc  20 00 94 e5                                      ldr r0, [r4, #0x20]
004cfee0  05 00 50 e1                                      cmp r0, r5
004cfee4  f6 ff ff 1a                                      bne #0x4cfec4
004cfee8  08 00 40 e2                                      sub r0, r0, #8
004cfeec  53 01 f9 eb                                      bl #0x310440
004cfef0  00 30 a0 e3                                      mov r3, #0
004cfef4  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cfef8  20 30 84 e5                                      str r3, [r4, #0x20]
004cfefc  28 30 94 e5                                      ldr r3, [r4, #0x28]
004cff00  00 00 53 e3                                      cmp r3, #0
004cff04  12 00 00 0a                                      beq #0x4cff54
004cff08  04 00 13 e5                                      ldr r0, [r3, #-4]
004cff0c  00 02 83 e0                                      add r0, r3, r0, lsl #4
004cff10  00 00 53 e1                                      cmp r3, r0
004cff14  01 00 00 1a                                      bne #0x4cff20
004cff18  08 00 00 ea                                      b #0x4cff40
004cff1c  05 00 a0 e1                                      mov r0, r5
004cff20  10 50 40 e2                                      sub r5, r0, #0x10
004cff24  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004cff28  05 00 a0 e1                                      mov r0, r5
004cff2c  0f e0 a0 e1                                      mov lr, pc
004cff30  00 f0 93 e5                                      ldr pc, [r3]
004cff34  28 00 94 e5                                      ldr r0, [r4, #0x28]
004cff38  05 00 50 e1                                      cmp r0, r5
004cff3c  f6 ff ff 1a                                      bne #0x4cff1c
004cff40  08 00 40 e2                                      sub r0, r0, #8
004cff44  3d 01 f9 eb                                      bl #0x310440
004cff48  00 30 a0 e3                                      mov r3, #0
004cff4c  24 30 84 e5                                      str r3, [r4, #0x24]
004cff50  28 30 84 e5                                      str r3, [r4, #0x28]
004cff54  30 30 94 e5                                      ldr r3, [r4, #0x30]
004cff58  00 00 53 e3                                      cmp r3, #0
004cff5c  12 00 00 0a                                      beq #0x4cffac
004cff60  04 00 13 e5                                      ldr r0, [r3, #-4]
004cff64  00 02 83 e0                                      add r0, r3, r0, lsl #4
004cff68  00 00 53 e1                                      cmp r3, r0
004cff6c  01 00 00 1a                                      bne #0x4cff78
004cff70  08 00 00 ea                                      b #0x4cff98
004cff74  05 00 a0 e1                                      mov r0, r5
004cff78  10 50 40 e2                                      sub r5, r0, #0x10
004cff7c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004cff80  05 00 a0 e1                                      mov r0, r5
004cff84  0f e0 a0 e1                                      mov lr, pc
004cff88  00 f0 93 e5                                      ldr pc, [r3]
004cff8c  30 00 94 e5                                      ldr r0, [r4, #0x30]
004cff90  05 00 50 e1                                      cmp r0, r5
004cff94  f6 ff ff 1a                                      bne #0x4cff74
004cff98  08 00 40 e2                                      sub r0, r0, #8
004cff9c  27 01 f9 eb                                      bl #0x310440
004cffa0  00 30 a0 e3                                      mov r3, #0
004cffa4  2c 30 84 e5                                      str r3, [r4, #0x2c]
004cffa8  30 30 84 e5                                      str r3, [r4, #0x30]
004cffac  38 30 94 e5                                      ldr r3, [r4, #0x38]
004cffb0  00 00 53 e3                                      cmp r3, #0
004cffb4  12 00 00 0a                                      beq #0x4d0004
004cffb8  04 00 13 e5                                      ldr r0, [r3, #-4]
004cffbc  00 02 83 e0                                      add r0, r3, r0, lsl #4
004cffc0  00 00 53 e1                                      cmp r3, r0
004cffc4  01 00 00 1a                                      bne #0x4cffd0
004cffc8  08 00 00 ea                                      b #0x4cfff0
004cffcc  05 00 a0 e1                                      mov r0, r5
004cffd0  10 50 40 e2                                      sub r5, r0, #0x10
004cffd4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004cffd8  05 00 a0 e1                                      mov r0, r5
004cffdc  0f e0 a0 e1                                      mov lr, pc
004cffe0  00 f0 93 e5                                      ldr pc, [r3]
004cffe4  38 00 94 e5                                      ldr r0, [r4, #0x38]
004cffe8  05 00 50 e1                                      cmp r0, r5
004cffec  f6 ff ff 1a                                      bne #0x4cffcc
004cfff0  08 00 40 e2                                      sub r0, r0, #8
004cfff4  11 01 f9 eb                                      bl #0x310440
004cfff8  00 30 a0 e3                                      mov r3, #0
004cfffc  34 30 84 e5                                      str r3, [r4, #0x34]
004d0000  38 30 84 e5                                      str r3, [r4, #0x38]
004d0004  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004d04dc, declared_size=456, range_size=456, mode=arm
; class-group: Structs::v2Quest
; alias: _ZN7Structs7v2QuestD1Ev
; demangled: Structs::v2Quest::~v2Quest()
; decoder-mode: arm
004d04dc  70 40 2d e9                                      push {r4, r5, r6, lr}
004d04e0  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
004d04e4  b4 21 9f e5                                      ldr r2, [pc, #0x1b4]
004d04e8  18 10 90 e5                                      ldr r1, [r0, #0x18]
004d04ec  03 30 8f e0                                      add r3, pc, r3
004d04f0  02 20 93 e7                                      ldr r2, [r3, r2]
004d04f4  00 00 51 e3                                      cmp r1, #0
004d04f8  00 40 a0 e1                                      mov r4, r0
004d04fc  08 20 82 e2                                      add r2, r2, #8
004d0500  00 20 80 e5                                      str r2, [r0]
004d0504  0f 00 00 0a                                      beq #0x4d0548
004d0508  04 00 11 e5                                      ldr r0, [r1, #-4]
004d050c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d0510  00 00 51 e1                                      cmp r1, r0
004d0514  01 00 00 1a                                      bne #0x4d0520
004d0518  08 00 00 ea                                      b #0x4d0540
004d051c  05 00 a0 e1                                      mov r0, r5
004d0520  10 50 40 e2                                      sub r5, r0, #0x10
004d0524  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d0528  05 00 a0 e1                                      mov r0, r5
004d052c  0f e0 a0 e1                                      mov lr, pc
004d0530  00 f0 93 e5                                      ldr pc, [r3]
004d0534  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d0538  05 00 50 e1                                      cmp r0, r5
004d053c  f6 ff ff 1a                                      bne #0x4d051c
004d0540  08 00 40 e2                                      sub r0, r0, #8
004d0544  bd ff f8 eb                                      bl #0x310440
004d0548  20 30 94 e5                                      ldr r3, [r4, #0x20]
004d054c  00 00 53 e3                                      cmp r3, #0
004d0550  10 00 00 0a                                      beq #0x4d0598
004d0554  04 20 13 e5                                      ldr r2, [r3, #-4]
004d0558  2c 00 a0 e3                                      mov r0, #0x2c
004d055c  90 32 20 e0                                      mla r0, r0, r2, r3
004d0560  00 00 53 e1                                      cmp r3, r0
004d0564  01 00 00 1a                                      bne #0x4d0570
004d0568  08 00 00 ea                                      b #0x4d0590
004d056c  05 00 a0 e1                                      mov r0, r5
004d0570  2c 50 40 e2                                      sub r5, r0, #0x2c
004d0574  2c 30 10 e5                                      ldr r3, [r0, #-0x2c]
004d0578  05 00 a0 e1                                      mov r0, r5
004d057c  0f e0 a0 e1                                      mov lr, pc
004d0580  00 f0 93 e5                                      ldr pc, [r3]
004d0584  20 00 94 e5                                      ldr r0, [r4, #0x20]
004d0588  05 00 50 e1                                      cmp r0, r5
004d058c  f6 ff ff 1a                                      bne #0x4d056c
004d0590  08 00 40 e2                                      sub r0, r0, #8
004d0594  a9 ff f8 eb                                      bl #0x310440
004d0598  28 30 94 e5                                      ldr r3, [r4, #0x28]
004d059c  00 00 53 e3                                      cmp r3, #0
004d05a0  0f 00 00 0a                                      beq #0x4d05e4
004d05a4  04 00 13 e5                                      ldr r0, [r3, #-4]
004d05a8  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d05ac  00 00 53 e1                                      cmp r3, r0
004d05b0  01 00 00 1a                                      bne #0x4d05bc
004d05b4  08 00 00 ea                                      b #0x4d05dc
004d05b8  05 00 a0 e1                                      mov r0, r5
004d05bc  10 50 40 e2                                      sub r5, r0, #0x10
004d05c0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d05c4  05 00 a0 e1                                      mov r0, r5
004d05c8  0f e0 a0 e1                                      mov lr, pc
004d05cc  00 f0 93 e5                                      ldr pc, [r3]
004d05d0  28 00 94 e5                                      ldr r0, [r4, #0x28]
004d05d4  05 00 50 e1                                      cmp r0, r5
004d05d8  f6 ff ff 1a                                      bne #0x4d05b8
004d05dc  08 00 40 e2                                      sub r0, r0, #8
004d05e0  96 ff f8 eb                                      bl #0x310440
004d05e4  30 30 94 e5                                      ldr r3, [r4, #0x30]
004d05e8  00 00 53 e3                                      cmp r3, #0
004d05ec  0f 00 00 0a                                      beq #0x4d0630
004d05f0  04 00 13 e5                                      ldr r0, [r3, #-4]
004d05f4  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d05f8  00 00 53 e1                                      cmp r3, r0
004d05fc  01 00 00 1a                                      bne #0x4d0608
004d0600  08 00 00 ea                                      b #0x4d0628
004d0604  05 00 a0 e1                                      mov r0, r5
004d0608  10 50 40 e2                                      sub r5, r0, #0x10
004d060c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d0610  05 00 a0 e1                                      mov r0, r5
004d0614  0f e0 a0 e1                                      mov lr, pc
004d0618  00 f0 93 e5                                      ldr pc, [r3]
004d061c  30 00 94 e5                                      ldr r0, [r4, #0x30]
004d0620  05 00 50 e1                                      cmp r0, r5
004d0624  f6 ff ff 1a                                      bne #0x4d0604
004d0628  08 00 40 e2                                      sub r0, r0, #8
004d062c  83 ff f8 eb                                      bl #0x310440
004d0630  38 30 94 e5                                      ldr r3, [r4, #0x38]
004d0634  00 00 53 e3                                      cmp r3, #0
004d0638  0f 00 00 0a                                      beq #0x4d067c
004d063c  04 00 13 e5                                      ldr r0, [r3, #-4]
004d0640  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d0644  00 00 53 e1                                      cmp r3, r0
004d0648  01 00 00 1a                                      bne #0x4d0654
004d064c  08 00 00 ea                                      b #0x4d0674
004d0650  05 00 a0 e1                                      mov r0, r5
004d0654  10 50 40 e2                                      sub r5, r0, #0x10
004d0658  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d065c  05 00 a0 e1                                      mov r0, r5
004d0660  0f e0 a0 e1                                      mov lr, pc
004d0664  00 f0 93 e5                                      ldr pc, [r3]
004d0668  38 00 94 e5                                      ldr r0, [r4, #0x38]
004d066c  05 00 50 e1                                      cmp r0, r5
004d0670  f6 ff ff 1a                                      bne #0x4d0650
004d0674  08 00 40 e2                                      sub r0, r0, #8
004d0678  70 ff f8 eb                                      bl #0x310440
004d067c  a0 00 84 e2                                      add r0, r4, #0xa0
004d0680  51 ff ff eb                                      bl #0x4d03cc
004d0684  68 00 84 e2                                      add r0, r4, #0x68
004d0688  84 fe ff eb                                      bl #0x4d00a0
004d068c  3c 00 84 e2                                      add r0, r4, #0x3c
004d0690  82 fe ff eb                                      bl #0x4d00a0
004d0694  04 00 a0 e1                                      mov r0, r4
004d0698  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d069c  a4 45 4c 00 68 15 00 00                          .byte 0xa4, 0x45, 0x4c, 0x00, 0x68, 0x15, 0x00, 0x00

; FUNCTION 0x004d06a4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2Quest
; alias: _ZN7Structs7v2QuestD0Ev
; demangled: Structs::v2Quest::~v2Quest()
; decoder-mode: arm
004d06a4  10 40 2d e9                                      push {r4, lr}
004d06a8  00 40 a0 e1                                      mov r4, r0
004d06ac  8a ff ff eb                                      bl #0x4d04dc
004d06b0  04 00 a0 e1                                      mov r0, r4
004d06b4  61 ff f8 eb                                      bl #0x310440
004d06b8  04 00 a0 e1                                      mov r0, r4
004d06bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d06c0, declared_size=456, range_size=456, mode=arm
; class-group: Structs::v2Quest
; alias: _ZN7Structs7v2QuestD2Ev
; demangled: Structs::v2Quest::~v2Quest()
; decoder-mode: arm
004d06c0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d06c4  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
004d06c8  b4 21 9f e5                                      ldr r2, [pc, #0x1b4]
004d06cc  18 10 90 e5                                      ldr r1, [r0, #0x18]
004d06d0  03 30 8f e0                                      add r3, pc, r3
004d06d4  02 20 93 e7                                      ldr r2, [r3, r2]
004d06d8  00 00 51 e3                                      cmp r1, #0
004d06dc  00 40 a0 e1                                      mov r4, r0
004d06e0  08 20 82 e2                                      add r2, r2, #8
004d06e4  00 20 80 e5                                      str r2, [r0]
004d06e8  0f 00 00 0a                                      beq #0x4d072c
004d06ec  04 00 11 e5                                      ldr r0, [r1, #-4]
004d06f0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d06f4  00 00 51 e1                                      cmp r1, r0
004d06f8  01 00 00 1a                                      bne #0x4d0704
004d06fc  08 00 00 ea                                      b #0x4d0724
004d0700  05 00 a0 e1                                      mov r0, r5
004d0704  10 50 40 e2                                      sub r5, r0, #0x10
004d0708  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d070c  05 00 a0 e1                                      mov r0, r5
004d0710  0f e0 a0 e1                                      mov lr, pc
004d0714  00 f0 93 e5                                      ldr pc, [r3]
004d0718  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d071c  05 00 50 e1                                      cmp r0, r5
004d0720  f6 ff ff 1a                                      bne #0x4d0700
004d0724  08 00 40 e2                                      sub r0, r0, #8
004d0728  44 ff f8 eb                                      bl #0x310440
004d072c  20 30 94 e5                                      ldr r3, [r4, #0x20]
004d0730  00 00 53 e3                                      cmp r3, #0
004d0734  10 00 00 0a                                      beq #0x4d077c
004d0738  04 20 13 e5                                      ldr r2, [r3, #-4]
004d073c  2c 00 a0 e3                                      mov r0, #0x2c
004d0740  90 32 20 e0                                      mla r0, r0, r2, r3
004d0744  00 00 53 e1                                      cmp r3, r0
004d0748  01 00 00 1a                                      bne #0x4d0754
004d074c  08 00 00 ea                                      b #0x4d0774
004d0750  05 00 a0 e1                                      mov r0, r5
004d0754  2c 50 40 e2                                      sub r5, r0, #0x2c
004d0758  2c 30 10 e5                                      ldr r3, [r0, #-0x2c]
004d075c  05 00 a0 e1                                      mov r0, r5
004d0760  0f e0 a0 e1                                      mov lr, pc
004d0764  00 f0 93 e5                                      ldr pc, [r3]
004d0768  20 00 94 e5                                      ldr r0, [r4, #0x20]
004d076c  05 00 50 e1                                      cmp r0, r5
004d0770  f6 ff ff 1a                                      bne #0x4d0750
004d0774  08 00 40 e2                                      sub r0, r0, #8
004d0778  30 ff f8 eb                                      bl #0x310440
004d077c  28 30 94 e5                                      ldr r3, [r4, #0x28]
004d0780  00 00 53 e3                                      cmp r3, #0
004d0784  0f 00 00 0a                                      beq #0x4d07c8
004d0788  04 00 13 e5                                      ldr r0, [r3, #-4]
004d078c  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d0790  00 00 53 e1                                      cmp r3, r0
004d0794  01 00 00 1a                                      bne #0x4d07a0
004d0798  08 00 00 ea                                      b #0x4d07c0
004d079c  05 00 a0 e1                                      mov r0, r5
004d07a0  10 50 40 e2                                      sub r5, r0, #0x10
004d07a4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d07a8  05 00 a0 e1                                      mov r0, r5
004d07ac  0f e0 a0 e1                                      mov lr, pc
004d07b0  00 f0 93 e5                                      ldr pc, [r3]
004d07b4  28 00 94 e5                                      ldr r0, [r4, #0x28]
004d07b8  05 00 50 e1                                      cmp r0, r5
004d07bc  f6 ff ff 1a                                      bne #0x4d079c
004d07c0  08 00 40 e2                                      sub r0, r0, #8
004d07c4  1d ff f8 eb                                      bl #0x310440
004d07c8  30 30 94 e5                                      ldr r3, [r4, #0x30]
004d07cc  00 00 53 e3                                      cmp r3, #0
004d07d0  0f 00 00 0a                                      beq #0x4d0814
004d07d4  04 00 13 e5                                      ldr r0, [r3, #-4]
004d07d8  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d07dc  00 00 53 e1                                      cmp r3, r0
004d07e0  01 00 00 1a                                      bne #0x4d07ec
004d07e4  08 00 00 ea                                      b #0x4d080c
004d07e8  05 00 a0 e1                                      mov r0, r5
004d07ec  10 50 40 e2                                      sub r5, r0, #0x10
004d07f0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d07f4  05 00 a0 e1                                      mov r0, r5
004d07f8  0f e0 a0 e1                                      mov lr, pc
004d07fc  00 f0 93 e5                                      ldr pc, [r3]
004d0800  30 00 94 e5                                      ldr r0, [r4, #0x30]
004d0804  05 00 50 e1                                      cmp r0, r5
004d0808  f6 ff ff 1a                                      bne #0x4d07e8
004d080c  08 00 40 e2                                      sub r0, r0, #8
004d0810  0a ff f8 eb                                      bl #0x310440
004d0814  38 30 94 e5                                      ldr r3, [r4, #0x38]
004d0818  00 00 53 e3                                      cmp r3, #0
004d081c  0f 00 00 0a                                      beq #0x4d0860
004d0820  04 00 13 e5                                      ldr r0, [r3, #-4]
004d0824  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d0828  00 00 53 e1                                      cmp r3, r0
004d082c  01 00 00 1a                                      bne #0x4d0838
004d0830  08 00 00 ea                                      b #0x4d0858
004d0834  05 00 a0 e1                                      mov r0, r5
004d0838  10 50 40 e2                                      sub r5, r0, #0x10
004d083c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d0840  05 00 a0 e1                                      mov r0, r5
004d0844  0f e0 a0 e1                                      mov lr, pc
004d0848  00 f0 93 e5                                      ldr pc, [r3]
004d084c  38 00 94 e5                                      ldr r0, [r4, #0x38]
004d0850  05 00 50 e1                                      cmp r0, r5
004d0854  f6 ff ff 1a                                      bne #0x4d0834
004d0858  08 00 40 e2                                      sub r0, r0, #8
004d085c  f7 fe f8 eb                                      bl #0x310440
004d0860  a0 00 84 e2                                      add r0, r4, #0xa0
004d0864  d8 fe ff eb                                      bl #0x4d03cc
004d0868  68 00 84 e2                                      add r0, r4, #0x68
004d086c  0b fe ff eb                                      bl #0x4d00a0
004d0870  3c 00 84 e2                                      add r0, r4, #0x3c
004d0874  09 fe ff eb                                      bl #0x4d00a0
004d0878  04 00 a0 e1                                      mov r0, r4
004d087c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d0880  c0 43 4c 00 68 15 00 00                          .byte 0xc0, 0x43, 0x4c, 0x00, 0x68, 0x15, 0x00, 0x00

; FUNCTION 0x00504a94, declared_size=2408, range_size=2408, mode=arm
; class-group: Structs::v2Quest
; alias: _ZN7Structs7v2Quest4readEP11IStreamBase
; demangled: Structs::v2Quest::read(IStreamBase*)
; decoder-mode: arm
00504a94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00504a98  00 40 a0 e1                                      mov r4, r0
00504a9c  08 d0 4d e2                                      sub sp, sp, #8
00504aa0  01 00 a0 e1                                      mov r0, r1
00504aa4  01 50 a0 e1                                      mov r5, r1
00504aa8  3c 89 9f e5                                      ldr r8, [pc, #0x93c]
00504aac  04 10 84 e2                                      add r1, r4, #4
00504ab0  76 51 fd eb                                      bl #0x459090
00504ab4  01 30 a0 e3                                      mov r3, #1
00504ab8  00 00 53 e3                                      cmp r3, #0
00504abc  04 30 8d e5                                      str r3, [sp, #4]
00504ac0  08 80 8f e0                                      add r8, pc, r8
00504ac4  0f 00 00 1a                                      bne #0x504b08
00504ac8  05 30 84 e2                                      add r3, r4, #5
00504acc  06 20 84 e2                                      add r2, r4, #6
00504ad0  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504ad4  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504ad8  02 00 53 e1                                      cmp r3, r2
00504adc  01 10 20 e0                                      eor r1, r0, r1
00504ae0  01 10 43 e5                                      strb r1, [r3, #-1]
00504ae4  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504ae8  00 10 21 e0                                      eor r1, r1, r0
00504aec  01 10 c2 e5                                      strb r1, [r2, #1]
00504af0  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504af4  01 20 42 e2                                      sub r2, r2, #1
00504af8  00 10 21 e0                                      eor r1, r1, r0
00504afc  01 10 43 e5                                      strb r1, [r3, #-1]
00504b00  01 30 83 e2                                      add r3, r3, #1
00504b04  f1 ff ff 3a                                      blo #0x504ad0
00504b08  05 00 a0 e1                                      mov r0, r5
00504b0c  08 10 84 e2                                      add r1, r4, #8
00504b10  5e 51 fd eb                                      bl #0x459090
00504b14  01 30 a0 e3                                      mov r3, #1
00504b18  00 00 53 e3                                      cmp r3, #0
00504b1c  04 30 8d e5                                      str r3, [sp, #4]
00504b20  0f 00 00 1a                                      bne #0x504b64
00504b24  09 30 84 e2                                      add r3, r4, #9
00504b28  0a 20 84 e2                                      add r2, r4, #0xa
00504b2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504b30  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504b34  02 00 53 e1                                      cmp r3, r2
00504b38  01 10 20 e0                                      eor r1, r0, r1
00504b3c  01 10 43 e5                                      strb r1, [r3, #-1]
00504b40  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504b44  00 10 21 e0                                      eor r1, r1, r0
00504b48  01 10 c2 e5                                      strb r1, [r2, #1]
00504b4c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504b50  01 20 42 e2                                      sub r2, r2, #1
00504b54  00 10 21 e0                                      eor r1, r1, r0
00504b58  01 10 43 e5                                      strb r1, [r3, #-1]
00504b5c  01 30 83 e2                                      add r3, r3, #1
00504b60  f1 ff ff 3a                                      blo #0x504b2c
00504b64  05 00 a0 e1                                      mov r0, r5
00504b68  0c 10 84 e2                                      add r1, r4, #0xc
00504b6c  47 51 fd eb                                      bl #0x459090
00504b70  01 30 a0 e3                                      mov r3, #1
00504b74  00 00 53 e3                                      cmp r3, #0
00504b78  04 30 8d e5                                      str r3, [sp, #4]
00504b7c  0f 00 00 1a                                      bne #0x504bc0
00504b80  0d 30 84 e2                                      add r3, r4, #0xd
00504b84  0e 20 84 e2                                      add r2, r4, #0xe
00504b88  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504b8c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504b90  02 00 53 e1                                      cmp r3, r2
00504b94  01 10 20 e0                                      eor r1, r0, r1
00504b98  01 10 43 e5                                      strb r1, [r3, #-1]
00504b9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504ba0  00 10 21 e0                                      eor r1, r1, r0
00504ba4  01 10 c2 e5                                      strb r1, [r2, #1]
00504ba8  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504bac  01 20 42 e2                                      sub r2, r2, #1
00504bb0  00 10 21 e0                                      eor r1, r1, r0
00504bb4  01 10 43 e5                                      strb r1, [r3, #-1]
00504bb8  01 30 83 e2                                      add r3, r3, #1
00504bbc  f1 ff ff 3a                                      blo #0x504b88
00504bc0  05 00 a0 e1                                      mov r0, r5
00504bc4  10 10 84 e2                                      add r1, r4, #0x10
00504bc8  30 51 fd eb                                      bl #0x459090
00504bcc  01 30 a0 e3                                      mov r3, #1
00504bd0  00 00 53 e3                                      cmp r3, #0
00504bd4  04 30 8d e5                                      str r3, [sp, #4]
00504bd8  0f 00 00 1a                                      bne #0x504c1c
00504bdc  11 30 84 e2                                      add r3, r4, #0x11
00504be0  12 20 84 e2                                      add r2, r4, #0x12
00504be4  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504be8  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504bec  02 00 53 e1                                      cmp r3, r2
00504bf0  01 10 20 e0                                      eor r1, r0, r1
00504bf4  01 10 43 e5                                      strb r1, [r3, #-1]
00504bf8  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504bfc  00 10 21 e0                                      eor r1, r1, r0
00504c00  01 10 c2 e5                                      strb r1, [r2, #1]
00504c04  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504c08  01 20 42 e2                                      sub r2, r2, #1
00504c0c  00 10 21 e0                                      eor r1, r1, r0
00504c10  01 10 43 e5                                      strb r1, [r3, #-1]
00504c14  01 30 83 e2                                      add r3, r3, #1
00504c18  f1 ff ff 3a                                      blo #0x504be4
00504c1c  05 00 a0 e1                                      mov r0, r5
00504c20  14 10 84 e2                                      add r1, r4, #0x14
00504c24  5d 69 fb eb                                      bl #0x3df1a0
00504c28  01 30 a0 e3                                      mov r3, #1
00504c2c  00 00 53 e3                                      cmp r3, #0
00504c30  04 30 8d e5                                      str r3, [sp, #4]
00504c34  0f 00 00 1a                                      bne #0x504c78
00504c38  15 30 84 e2                                      add r3, r4, #0x15
00504c3c  16 20 84 e2                                      add r2, r4, #0x16
00504c40  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504c44  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504c48  02 00 53 e1                                      cmp r3, r2
00504c4c  01 10 20 e0                                      eor r1, r0, r1
00504c50  01 10 43 e5                                      strb r1, [r3, #-1]
00504c54  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504c58  00 10 21 e0                                      eor r1, r1, r0
00504c5c  01 10 c2 e5                                      strb r1, [r2, #1]
00504c60  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504c64  01 20 42 e2                                      sub r2, r2, #1
00504c68  00 10 21 e0                                      eor r1, r1, r0
00504c6c  01 10 43 e5                                      strb r1, [r3, #-1]
00504c70  01 30 83 e2                                      add r3, r3, #1
00504c74  f1 ff ff 3a                                      blo #0x504c40
00504c78  18 30 94 e5                                      ldr r3, [r4, #0x18]
00504c7c  00 00 53 e3                                      cmp r3, #0
00504c80  0f 00 00 0a                                      beq #0x504cc4
00504c84  04 00 13 e5                                      ldr r0, [r3, #-4]
00504c88  00 02 83 e0                                      add r0, r3, r0, lsl #4
00504c8c  00 00 53 e1                                      cmp r3, r0
00504c90  01 00 00 1a                                      bne #0x504c9c
00504c94  08 00 00 ea                                      b #0x504cbc
00504c98  06 00 a0 e1                                      mov r0, r6
00504c9c  10 60 40 e2                                      sub r6, r0, #0x10
00504ca0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
00504ca4  06 00 a0 e1                                      mov r0, r6
00504ca8  0f e0 a0 e1                                      mov lr, pc
00504cac  00 f0 93 e5                                      ldr pc, [r3]
00504cb0  18 00 94 e5                                      ldr r0, [r4, #0x18]
00504cb4  06 00 50 e1                                      cmp r0, r6
00504cb8  f6 ff ff 1a                                      bne #0x504c98
00504cbc  08 00 40 e2                                      sub r0, r0, #8
00504cc0  de 2d f8 eb                                      bl #0x310440
00504cc4  14 60 94 e5                                      ldr r6, [r4, #0x14]
00504cc8  01 10 a0 e3                                      mov r1, #1
00504ccc  06 02 a0 e1                                      lsl r0, r6, #4
00504cd0  08 00 80 e2                                      add r0, r0, #8
00504cd4  24 2e f8 eb                                      bl #0x31056c
00504cd8  10 30 a0 e3                                      mov r3, #0x10
00504cdc  00 00 56 e3                                      cmp r6, #0
00504ce0  48 00 80 e8                                      stm r0, {r3, r6}
00504ce4  08 30 80 e2                                      add r3, r0, #8
00504ce8  08 00 00 0a                                      beq #0x504d10
00504cec  fc 16 9f e5                                      ldr r1, [pc, #0x6fc]
00504cf0  00 20 a0 e3                                      mov r2, #0
00504cf4  01 10 98 e7                                      ldr r1, [r8, r1]
00504cf8  08 10 81 e2                                      add r1, r1, #8
00504cfc  01 20 82 e2                                      add r2, r2, #1
00504d00  06 00 52 e1                                      cmp r2, r6
00504d04  08 10 80 e5                                      str r1, [r0, #8]
00504d08  10 00 80 e2                                      add r0, r0, #0x10
00504d0c  fa ff ff 1a                                      bne #0x504cfc
00504d10  14 20 94 e5                                      ldr r2, [r4, #0x14]
00504d14  18 30 84 e5                                      str r3, [r4, #0x18]
00504d18  00 00 52 e3                                      cmp r2, #0
00504d1c  0b 00 00 0a                                      beq #0x504d50
00504d20  00 60 a0 e3                                      mov r6, #0
00504d24  00 00 00 ea                                      b #0x504d2c
00504d28  18 30 94 e5                                      ldr r3, [r4, #0x18]
00504d2c  06 02 83 e0                                      add r0, r3, r6, lsl #4
00504d30  05 10 a0 e1                                      mov r1, r5
00504d34  06 32 93 e7                                      ldr r3, [r3, r6, lsl #4]
00504d38  0f e0 a0 e1                                      mov lr, pc
00504d3c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00504d40  14 30 94 e5                                      ldr r3, [r4, #0x14]
00504d44  01 60 86 e2                                      add r6, r6, #1
00504d48  06 00 53 e1                                      cmp r3, r6
00504d4c  f5 ff ff 8a                                      bhi #0x504d28
00504d50  05 00 a0 e1                                      mov r0, r5
00504d54  1c 10 84 e2                                      add r1, r4, #0x1c
00504d58  10 69 fb eb                                      bl #0x3df1a0
00504d5c  01 30 a0 e3                                      mov r3, #1
00504d60  00 00 53 e3                                      cmp r3, #0
00504d64  04 30 8d e5                                      str r3, [sp, #4]
00504d68  0f 00 00 1a                                      bne #0x504dac
00504d6c  1d 30 84 e2                                      add r3, r4, #0x1d
00504d70  1e 20 84 e2                                      add r2, r4, #0x1e
00504d74  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504d78  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504d7c  02 00 53 e1                                      cmp r3, r2
00504d80  01 10 20 e0                                      eor r1, r0, r1
00504d84  01 10 43 e5                                      strb r1, [r3, #-1]
00504d88  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504d8c  00 10 21 e0                                      eor r1, r1, r0
00504d90  01 10 c2 e5                                      strb r1, [r2, #1]
00504d94  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504d98  01 20 42 e2                                      sub r2, r2, #1
00504d9c  00 10 21 e0                                      eor r1, r1, r0
00504da0  01 10 43 e5                                      strb r1, [r3, #-1]
00504da4  01 30 83 e2                                      add r3, r3, #1
00504da8  f1 ff ff 3a                                      blo #0x504d74
00504dac  20 30 94 e5                                      ldr r3, [r4, #0x20]
00504db0  00 00 53 e3                                      cmp r3, #0
00504db4  10 00 00 0a                                      beq #0x504dfc
00504db8  04 20 13 e5                                      ldr r2, [r3, #-4]
00504dbc  2c 00 a0 e3                                      mov r0, #0x2c
00504dc0  90 32 20 e0                                      mla r0, r0, r2, r3
00504dc4  00 00 53 e1                                      cmp r3, r0
00504dc8  01 00 00 1a                                      bne #0x504dd4
00504dcc  08 00 00 ea                                      b #0x504df4
00504dd0  06 00 a0 e1                                      mov r0, r6
00504dd4  2c 60 40 e2                                      sub r6, r0, #0x2c
00504dd8  2c 30 10 e5                                      ldr r3, [r0, #-0x2c]
00504ddc  06 00 a0 e1                                      mov r0, r6
00504de0  0f e0 a0 e1                                      mov lr, pc
00504de4  00 f0 93 e5                                      ldr pc, [r3]
00504de8  20 00 94 e5                                      ldr r0, [r4, #0x20]
00504dec  06 00 50 e1                                      cmp r0, r6
00504df0  f6 ff ff 1a                                      bne #0x504dd0
00504df4  08 00 40 e2                                      sub r0, r0, #8
00504df8  90 2d f8 eb                                      bl #0x310440
00504dfc  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
00504e00  2c 70 a0 e3                                      mov r7, #0x2c
00504e04  01 10 a0 e3                                      mov r1, #1
00504e08  97 06 00 e0                                      mul r0, r7, r6
00504e0c  08 00 80 e2                                      add r0, r0, #8
00504e10  d5 2d f8 eb                                      bl #0x31056c
00504e14  00 00 56 e3                                      cmp r6, #0
00504e18  00 70 80 e5                                      str r7, [r0]
00504e1c  04 60 80 e5                                      str r6, [r0, #4]
00504e20  08 30 80 e2                                      add r3, r0, #8
00504e24  0b 00 00 0a                                      beq #0x504e58
00504e28  c4 15 9f e5                                      ldr r1, [pc, #0x5c4]
00504e2c  00 20 a0 e3                                      mov r2, #0
00504e30  01 c0 98 e7                                      ldr ip, [r8, r1]
00504e34  02 10 a0 e1                                      mov r1, r2
00504e38  08 c0 8c e2                                      add ip, ip, #8
00504e3c  01 20 82 e2                                      add r2, r2, #1
00504e40  06 00 52 e1                                      cmp r2, r6
00504e44  08 c0 80 e5                                      str ip, [r0, #8]
00504e48  1c 10 80 e5                                      str r1, [r0, #0x1c]
00504e4c  24 10 80 e5                                      str r1, [r0, #0x24]
00504e50  2c 00 80 e2                                      add r0, r0, #0x2c
00504e54  f8 ff ff 1a                                      bne #0x504e3c
00504e58  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00504e5c  20 30 84 e5                                      str r3, [r4, #0x20]
00504e60  00 00 52 e3                                      cmp r2, #0
00504e64  0d 00 00 0a                                      beq #0x504ea0
00504e68  00 60 a0 e3                                      mov r6, #0
00504e6c  06 70 a0 e1                                      mov r7, r6
00504e70  00 00 00 ea                                      b #0x504e78
00504e74  20 30 94 e5                                      ldr r3, [r4, #0x20]
00504e78  06 00 83 e0                                      add r0, r3, r6
00504e7c  05 10 a0 e1                                      mov r1, r5
00504e80  06 30 93 e7                                      ldr r3, [r3, r6]
00504e84  0f e0 a0 e1                                      mov lr, pc
00504e88  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00504e8c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00504e90  01 70 87 e2                                      add r7, r7, #1
00504e94  2c 60 86 e2                                      add r6, r6, #0x2c
00504e98  07 00 53 e1                                      cmp r3, r7
00504e9c  f4 ff ff 8a                                      bhi #0x504e74
00504ea0  05 00 a0 e1                                      mov r0, r5
00504ea4  24 10 84 e2                                      add r1, r4, #0x24
00504ea8  bc 68 fb eb                                      bl #0x3df1a0
00504eac  01 30 a0 e3                                      mov r3, #1
00504eb0  00 00 53 e3                                      cmp r3, #0
00504eb4  04 30 8d e5                                      str r3, [sp, #4]
00504eb8  0f 00 00 1a                                      bne #0x504efc
00504ebc  25 30 84 e2                                      add r3, r4, #0x25
00504ec0  26 20 84 e2                                      add r2, r4, #0x26
00504ec4  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504ec8  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504ecc  02 00 53 e1                                      cmp r3, r2
00504ed0  01 10 20 e0                                      eor r1, r0, r1
00504ed4  01 10 43 e5                                      strb r1, [r3, #-1]
00504ed8  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504edc  00 10 21 e0                                      eor r1, r1, r0
00504ee0  01 10 c2 e5                                      strb r1, [r2, #1]
00504ee4  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504ee8  01 20 42 e2                                      sub r2, r2, #1
00504eec  00 10 21 e0                                      eor r1, r1, r0
00504ef0  01 10 43 e5                                      strb r1, [r3, #-1]
00504ef4  01 30 83 e2                                      add r3, r3, #1
00504ef8  f1 ff ff 3a                                      blo #0x504ec4
00504efc  28 30 94 e5                                      ldr r3, [r4, #0x28]
00504f00  00 00 53 e3                                      cmp r3, #0
00504f04  0f 00 00 0a                                      beq #0x504f48
00504f08  04 00 13 e5                                      ldr r0, [r3, #-4]
00504f0c  00 02 83 e0                                      add r0, r3, r0, lsl #4
00504f10  00 00 53 e1                                      cmp r3, r0
00504f14  01 00 00 1a                                      bne #0x504f20
00504f18  08 00 00 ea                                      b #0x504f40
00504f1c  06 00 a0 e1                                      mov r0, r6
00504f20  10 60 40 e2                                      sub r6, r0, #0x10
00504f24  10 30 10 e5                                      ldr r3, [r0, #-0x10]
00504f28  06 00 a0 e1                                      mov r0, r6
00504f2c  0f e0 a0 e1                                      mov lr, pc
00504f30  00 f0 93 e5                                      ldr pc, [r3]
00504f34  28 00 94 e5                                      ldr r0, [r4, #0x28]
00504f38  06 00 50 e1                                      cmp r0, r6
00504f3c  f6 ff ff 1a                                      bne #0x504f1c
00504f40  08 00 40 e2                                      sub r0, r0, #8
00504f44  3d 2d f8 eb                                      bl #0x310440
00504f48  24 60 94 e5                                      ldr r6, [r4, #0x24]
00504f4c  01 10 a0 e3                                      mov r1, #1
00504f50  06 02 a0 e1                                      lsl r0, r6, #4
00504f54  08 00 80 e2                                      add r0, r0, #8
00504f58  83 2d f8 eb                                      bl #0x31056c
00504f5c  10 30 a0 e3                                      mov r3, #0x10
00504f60  00 00 56 e3                                      cmp r6, #0
00504f64  48 00 80 e8                                      stm r0, {r3, r6}
00504f68  08 30 80 e2                                      add r3, r0, #8
00504f6c  08 00 00 0a                                      beq #0x504f94
00504f70  80 14 9f e5                                      ldr r1, [pc, #0x480]
00504f74  00 20 a0 e3                                      mov r2, #0
00504f78  01 10 98 e7                                      ldr r1, [r8, r1]
00504f7c  08 10 81 e2                                      add r1, r1, #8
00504f80  01 20 82 e2                                      add r2, r2, #1
00504f84  06 00 52 e1                                      cmp r2, r6
00504f88  08 10 80 e5                                      str r1, [r0, #8]
00504f8c  10 00 80 e2                                      add r0, r0, #0x10
00504f90  fa ff ff 1a                                      bne #0x504f80
00504f94  24 20 94 e5                                      ldr r2, [r4, #0x24]
00504f98  28 30 84 e5                                      str r3, [r4, #0x28]
00504f9c  00 00 52 e3                                      cmp r2, #0
00504fa0  0b 00 00 0a                                      beq #0x504fd4
00504fa4  00 60 a0 e3                                      mov r6, #0
00504fa8  00 00 00 ea                                      b #0x504fb0
00504fac  28 30 94 e5                                      ldr r3, [r4, #0x28]
00504fb0  06 02 83 e0                                      add r0, r3, r6, lsl #4
00504fb4  05 10 a0 e1                                      mov r1, r5
00504fb8  06 32 93 e7                                      ldr r3, [r3, r6, lsl #4]
00504fbc  0f e0 a0 e1                                      mov lr, pc
00504fc0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00504fc4  24 30 94 e5                                      ldr r3, [r4, #0x24]
00504fc8  01 60 86 e2                                      add r6, r6, #1
00504fcc  06 00 53 e1                                      cmp r3, r6
00504fd0  f5 ff ff 8a                                      bhi #0x504fac
00504fd4  05 00 a0 e1                                      mov r0, r5
00504fd8  2c 10 84 e2                                      add r1, r4, #0x2c
00504fdc  6f 68 fb eb                                      bl #0x3df1a0
00504fe0  01 30 a0 e3                                      mov r3, #1
00504fe4  00 00 53 e3                                      cmp r3, #0
00504fe8  04 30 8d e5                                      str r3, [sp, #4]
00504fec  0f 00 00 1a                                      bne #0x505030
00504ff0  2d 30 84 e2                                      add r3, r4, #0x2d
00504ff4  2e 20 84 e2                                      add r2, r4, #0x2e
00504ff8  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504ffc  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505000  02 00 53 e1                                      cmp r3, r2
00505004  01 10 20 e0                                      eor r1, r0, r1
00505008  01 10 43 e5                                      strb r1, [r3, #-1]
0050500c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505010  00 10 21 e0                                      eor r1, r1, r0
00505014  01 10 c2 e5                                      strb r1, [r2, #1]
00505018  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050501c  01 20 42 e2                                      sub r2, r2, #1
00505020  00 10 21 e0                                      eor r1, r1, r0
00505024  01 10 43 e5                                      strb r1, [r3, #-1]
00505028  01 30 83 e2                                      add r3, r3, #1
0050502c  f1 ff ff 3a                                      blo #0x504ff8
00505030  30 30 94 e5                                      ldr r3, [r4, #0x30]
00505034  00 00 53 e3                                      cmp r3, #0
00505038  0f 00 00 0a                                      beq #0x50507c
0050503c  04 00 13 e5                                      ldr r0, [r3, #-4]
00505040  00 02 83 e0                                      add r0, r3, r0, lsl #4
00505044  00 00 53 e1                                      cmp r3, r0
00505048  01 00 00 1a                                      bne #0x505054
0050504c  08 00 00 ea                                      b #0x505074
00505050  06 00 a0 e1                                      mov r0, r6
00505054  10 60 40 e2                                      sub r6, r0, #0x10
00505058  10 30 10 e5                                      ldr r3, [r0, #-0x10]
0050505c  06 00 a0 e1                                      mov r0, r6
00505060  0f e0 a0 e1                                      mov lr, pc
00505064  00 f0 93 e5                                      ldr pc, [r3]
00505068  30 00 94 e5                                      ldr r0, [r4, #0x30]
0050506c  06 00 50 e1                                      cmp r0, r6
00505070  f6 ff ff 1a                                      bne #0x505050
00505074  08 00 40 e2                                      sub r0, r0, #8
00505078  f0 2c f8 eb                                      bl #0x310440
0050507c  2c 60 94 e5                                      ldr r6, [r4, #0x2c]
00505080  01 10 a0 e3                                      mov r1, #1
00505084  06 02 a0 e1                                      lsl r0, r6, #4
00505088  08 00 80 e2                                      add r0, r0, #8
0050508c  36 2d f8 eb                                      bl #0x31056c
00505090  10 30 a0 e3                                      mov r3, #0x10
00505094  00 00 56 e3                                      cmp r6, #0
00505098  48 00 80 e8                                      stm r0, {r3, r6}
0050509c  08 30 80 e2                                      add r3, r0, #8
005050a0  08 00 00 0a                                      beq #0x5050c8
005050a4  4c 13 9f e5                                      ldr r1, [pc, #0x34c]
005050a8  00 20 a0 e3                                      mov r2, #0
005050ac  01 10 98 e7                                      ldr r1, [r8, r1]
005050b0  08 10 81 e2                                      add r1, r1, #8
005050b4  01 20 82 e2                                      add r2, r2, #1
005050b8  06 00 52 e1                                      cmp r2, r6
005050bc  08 10 80 e5                                      str r1, [r0, #8]
005050c0  10 00 80 e2                                      add r0, r0, #0x10
005050c4  fa ff ff 1a                                      bne #0x5050b4
005050c8  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
005050cc  30 30 84 e5                                      str r3, [r4, #0x30]
005050d0  00 00 52 e3                                      cmp r2, #0
005050d4  0b 00 00 0a                                      beq #0x505108
005050d8  00 60 a0 e3                                      mov r6, #0
005050dc  00 00 00 ea                                      b #0x5050e4
005050e0  30 30 94 e5                                      ldr r3, [r4, #0x30]
005050e4  06 02 83 e0                                      add r0, r3, r6, lsl #4
005050e8  05 10 a0 e1                                      mov r1, r5
005050ec  06 32 93 e7                                      ldr r3, [r3, r6, lsl #4]
005050f0  0f e0 a0 e1                                      mov lr, pc
005050f4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005050f8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005050fc  01 60 86 e2                                      add r6, r6, #1
00505100  06 00 53 e1                                      cmp r3, r6
00505104  f5 ff ff 8a                                      bhi #0x5050e0
00505108  05 00 a0 e1                                      mov r0, r5
0050510c  34 10 84 e2                                      add r1, r4, #0x34
00505110  22 68 fb eb                                      bl #0x3df1a0
00505114  01 30 a0 e3                                      mov r3, #1
00505118  00 00 53 e3                                      cmp r3, #0
0050511c  04 30 8d e5                                      str r3, [sp, #4]
00505120  0f 00 00 1a                                      bne #0x505164
00505124  35 30 84 e2                                      add r3, r4, #0x35
00505128  36 20 84 e2                                      add r2, r4, #0x36
0050512c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505130  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505134  02 00 53 e1                                      cmp r3, r2
00505138  01 10 20 e0                                      eor r1, r0, r1
0050513c  01 10 43 e5                                      strb r1, [r3, #-1]
00505140  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505144  00 10 21 e0                                      eor r1, r1, r0
00505148  01 10 c2 e5                                      strb r1, [r2, #1]
0050514c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00505150  01 20 42 e2                                      sub r2, r2, #1
00505154  00 10 21 e0                                      eor r1, r1, r0
00505158  01 10 43 e5                                      strb r1, [r3, #-1]
0050515c  01 30 83 e2                                      add r3, r3, #1
00505160  f1 ff ff 3a                                      blo #0x50512c
00505164  38 30 94 e5                                      ldr r3, [r4, #0x38]
00505168  00 00 53 e3                                      cmp r3, #0
0050516c  0f 00 00 0a                                      beq #0x5051b0
00505170  04 00 13 e5                                      ldr r0, [r3, #-4]
00505174  00 02 83 e0                                      add r0, r3, r0, lsl #4
00505178  00 00 53 e1                                      cmp r3, r0
0050517c  01 00 00 1a                                      bne #0x505188
00505180  08 00 00 ea                                      b #0x5051a8
00505184  06 00 a0 e1                                      mov r0, r6
00505188  10 60 40 e2                                      sub r6, r0, #0x10
0050518c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
00505190  06 00 a0 e1                                      mov r0, r6
00505194  0f e0 a0 e1                                      mov lr, pc
00505198  00 f0 93 e5                                      ldr pc, [r3]
0050519c  38 00 94 e5                                      ldr r0, [r4, #0x38]
005051a0  06 00 50 e1                                      cmp r0, r6
005051a4  f6 ff ff 1a                                      bne #0x505184
005051a8  08 00 40 e2                                      sub r0, r0, #8
005051ac  a3 2c f8 eb                                      bl #0x310440
005051b0  34 60 94 e5                                      ldr r6, [r4, #0x34]
005051b4  01 10 a0 e3                                      mov r1, #1
005051b8  06 02 a0 e1                                      lsl r0, r6, #4
005051bc  08 00 80 e2                                      add r0, r0, #8
005051c0  e9 2c f8 eb                                      bl #0x31056c
005051c4  10 30 a0 e3                                      mov r3, #0x10
005051c8  00 00 56 e3                                      cmp r6, #0
005051cc  48 00 80 e8                                      stm r0, {r3, r6}
005051d0  08 30 80 e2                                      add r3, r0, #8
005051d4  08 00 00 0a                                      beq #0x5051fc
005051d8  18 12 9f e5                                      ldr r1, [pc, #0x218]
005051dc  00 20 a0 e3                                      mov r2, #0
005051e0  01 10 98 e7                                      ldr r1, [r8, r1]
005051e4  08 10 81 e2                                      add r1, r1, #8
005051e8  01 20 82 e2                                      add r2, r2, #1
005051ec  06 00 52 e1                                      cmp r2, r6
005051f0  08 10 80 e5                                      str r1, [r0, #8]
005051f4  10 00 80 e2                                      add r0, r0, #0x10
005051f8  fa ff ff 1a                                      bne #0x5051e8
005051fc  34 20 94 e5                                      ldr r2, [r4, #0x34]
00505200  38 30 84 e5                                      str r3, [r4, #0x38]
00505204  00 00 52 e3                                      cmp r2, #0
00505208  0b 00 00 0a                                      beq #0x50523c
0050520c  00 60 a0 e3                                      mov r6, #0
00505210  00 00 00 ea                                      b #0x505218
00505214  38 30 94 e5                                      ldr r3, [r4, #0x38]
00505218  06 02 83 e0                                      add r0, r3, r6, lsl #4
0050521c  05 10 a0 e1                                      mov r1, r5
00505220  06 32 93 e7                                      ldr r3, [r3, r6, lsl #4]
00505224  0f e0 a0 e1                                      mov lr, pc
00505228  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0050522c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00505230  01 60 86 e2                                      add r6, r6, #1
00505234  06 00 53 e1                                      cmp r3, r6
00505238  f5 ff ff 8a                                      bhi #0x505214
0050523c  3c 00 84 e2                                      add r0, r4, #0x3c
00505240  05 10 a0 e1                                      mov r1, r5
00505244  73 fd ff eb                                      bl #0x504818
00505248  05 10 a0 e1                                      mov r1, r5
0050524c  68 00 84 e2                                      add r0, r4, #0x68
00505250  70 fd ff eb                                      bl #0x504818
00505254  05 00 a0 e1                                      mov r0, r5
00505258  94 10 84 e2                                      add r1, r4, #0x94
0050525c  8b 4f fd eb                                      bl #0x459090
00505260  01 30 a0 e3                                      mov r3, #1
00505264  00 00 53 e3                                      cmp r3, #0
00505268  04 30 8d e5                                      str r3, [sp, #4]
0050526c  0f 00 00 1a                                      bne #0x5052b0
00505270  95 30 84 e2                                      add r3, r4, #0x95
00505274  96 20 84 e2                                      add r2, r4, #0x96
00505278  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050527c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505280  02 00 53 e1                                      cmp r3, r2
00505284  01 10 20 e0                                      eor r1, r0, r1
00505288  01 10 43 e5                                      strb r1, [r3, #-1]
0050528c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505290  00 10 21 e0                                      eor r1, r1, r0
00505294  01 10 c2 e5                                      strb r1, [r2, #1]
00505298  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050529c  01 20 42 e2                                      sub r2, r2, #1
005052a0  00 10 21 e0                                      eor r1, r1, r0
005052a4  01 10 43 e5                                      strb r1, [r3, #-1]
005052a8  01 30 83 e2                                      add r3, r3, #1
005052ac  f1 ff ff 3a                                      blo #0x505278
005052b0  98 10 84 e2                                      add r1, r4, #0x98
005052b4  05 00 a0 e1                                      mov r0, r5
005052b8  77 59 ff eb                                      bl #0x4db89c
005052bc  05 00 a0 e1                                      mov r0, r5
005052c0  9c 10 84 e2                                      add r1, r4, #0x9c
005052c4  71 4f fd eb                                      bl #0x459090
005052c8  01 30 a0 e3                                      mov r3, #1
005052cc  00 00 53 e3                                      cmp r3, #0
005052d0  04 30 8d e5                                      str r3, [sp, #4]
005052d4  0f 00 00 1a                                      bne #0x505318
005052d8  9d 30 84 e2                                      add r3, r4, #0x9d
005052dc  9e 20 84 e2                                      add r2, r4, #0x9e
005052e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005052e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005052e8  02 00 53 e1                                      cmp r3, r2
005052ec  01 10 20 e0                                      eor r1, r0, r1
005052f0  01 10 43 e5                                      strb r1, [r3, #-1]
005052f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005052f8  00 10 21 e0                                      eor r1, r1, r0
005052fc  01 10 c2 e5                                      strb r1, [r2, #1]
00505300  01 00 53 e5                                      ldrb r0, [r3, #-1]
00505304  01 20 42 e2                                      sub r2, r2, #1
00505308  00 10 21 e0                                      eor r1, r1, r0
0050530c  01 10 43 e5                                      strb r1, [r3, #-1]
00505310  01 30 83 e2                                      add r3, r3, #1
00505314  f1 ff ff 3a                                      blo #0x5052e0
00505318  a0 00 84 e2                                      add r0, r4, #0xa0
0050531c  05 10 a0 e1                                      mov r1, r5
00505320  45 6f 84 e2                                      add r6, r4, #0x114
00505324  9f 60 ff eb                                      bl #0x4dd5a8
00505328  05 00 a0 e1                                      mov r0, r5
0050532c  06 10 a0 e1                                      mov r1, r6
00505330  56 4f fd eb                                      bl #0x459090
00505334  01 30 a0 e3                                      mov r3, #1
00505338  00 00 53 e3                                      cmp r3, #0
0050533c  04 30 8d e5                                      str r3, [sp, #4]
00505340  0f 00 00 1a                                      bne #0x505384
00505344  02 30 86 e2                                      add r3, r6, #2
00505348  01 60 86 e2                                      add r6, r6, #1
0050534c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505350  01 20 56 e5                                      ldrb r2, [r6, #-1]
00505354  06 00 53 e1                                      cmp r3, r6
00505358  02 20 21 e0                                      eor r2, r1, r2
0050535c  01 20 46 e5                                      strb r2, [r6, #-1]
00505360  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505364  01 20 22 e0                                      eor r2, r2, r1
00505368  01 20 c3 e5                                      strb r2, [r3, #1]
0050536c  01 10 56 e5                                      ldrb r1, [r6, #-1]
00505370  01 30 43 e2                                      sub r3, r3, #1
00505374  01 20 22 e0                                      eor r2, r2, r1
00505378  01 20 46 e5                                      strb r2, [r6, #-1]
0050537c  01 60 86 e2                                      add r6, r6, #1
00505380  f1 ff ff 8a                                      bhi #0x50534c
00505384  46 4f 84 e2                                      add r4, r4, #0x118
00505388  05 00 a0 e1                                      mov r0, r5
0050538c  04 10 a0 e1                                      mov r1, r4
00505390  3e 4f fd eb                                      bl #0x459090
00505394  01 30 a0 e3                                      mov r3, #1
00505398  00 00 53 e3                                      cmp r3, #0
0050539c  04 30 8d e5                                      str r3, [sp, #4]
005053a0  0f 00 00 1a                                      bne #0x5053e4
005053a4  02 30 84 e2                                      add r3, r4, #2
005053a8  01 40 84 e2                                      add r4, r4, #1
005053ac  01 10 d3 e5                                      ldrb r1, [r3, #1]
005053b0  01 20 54 e5                                      ldrb r2, [r4, #-1]
005053b4  04 00 53 e1                                      cmp r3, r4
005053b8  02 20 21 e0                                      eor r2, r1, r2
005053bc  01 20 44 e5                                      strb r2, [r4, #-1]
005053c0  01 10 d3 e5                                      ldrb r1, [r3, #1]
005053c4  01 20 22 e0                                      eor r2, r2, r1
005053c8  01 20 c3 e5                                      strb r2, [r3, #1]
005053cc  01 10 54 e5                                      ldrb r1, [r4, #-1]
005053d0  01 30 43 e2                                      sub r3, r3, #1
005053d4  01 20 22 e0                                      eor r2, r2, r1
005053d8  01 20 44 e5                                      strb r2, [r4, #-1]
005053dc  01 40 84 e2                                      add r4, r4, #1
005053e0  f1 ff ff 8a                                      bhi #0x5053ac
005053e4  08 d0 8d e2                                      add sp, sp, #8
005053e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005053ec  d0 ff 48 00 48 09 00 00 28 1e 00 00 40 2e 00 00  .byte 0xd0, 0xff, 0x48, 0x00, 0x48, 0x09, 0x00, 0x00, 0x28, 0x1e, 0x00, 0x00, 0x40, 0x2e, 0x00, 0x00
