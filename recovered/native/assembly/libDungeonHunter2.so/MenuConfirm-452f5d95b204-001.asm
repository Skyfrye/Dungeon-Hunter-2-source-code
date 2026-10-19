; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042aaa0, declared_size=52, range_size=52, mode=arm
; class-group: MenuConfirm
; alias: _ZN11MenuConfirmD1Ev
; demangled: MenuConfirm::~MenuConfirm()
; decoder-mode: arm
0042aaa0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042aaa4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042aaa8  10 40 2d e9                                      push {r4, lr}
0042aaac  03 30 8f e0                                      add r3, pc, r3
0042aab0  02 20 93 e7                                      ldr r2, [r3, r2]
0042aab4  00 40 a0 e1                                      mov r4, r0
0042aab8  08 20 82 e2                                      add r2, r2, #8
0042aabc  00 20 80 e5                                      str r2, [r0]
0042aac0  c8 ff ff eb                                      bl #0x42a9e8
0042aac4  04 00 a0 e1                                      mov r0, r4
0042aac8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042aacc  e4 9f 56 00 50 0f 00 00                          .byte 0xe4, 0x9f, 0x56, 0x00, 0x50, 0x0f, 0x00, 0x00

; FUNCTION 0x0042aad4, declared_size=28, range_size=28, mode=arm
; class-group: MenuConfirm
; alias: _ZN11MenuConfirmD0Ev
; demangled: MenuConfirm::~MenuConfirm()
; decoder-mode: arm
0042aad4  10 40 2d e9                                      push {r4, lr}
0042aad8  00 40 a0 e1                                      mov r4, r0
0042aadc  ef ff ff eb                                      bl #0x42aaa0
0042aae0  04 00 a0 e1                                      mov r0, r4
0042aae4  55 96 fb eb                                      bl #0x310440
0042aae8  04 00 a0 e1                                      mov r0, r4
0042aaec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0042aaf0, declared_size=52, range_size=52, mode=arm
; class-group: MenuConfirm
; alias: _ZN11MenuConfirmD2Ev
; demangled: MenuConfirm::~MenuConfirm()
; decoder-mode: arm
0042aaf0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042aaf4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042aaf8  10 40 2d e9                                      push {r4, lr}
0042aafc  03 30 8f e0                                      add r3, pc, r3
0042ab00  02 20 93 e7                                      ldr r2, [r3, r2]
0042ab04  00 40 a0 e1                                      mov r4, r0
0042ab08  08 20 82 e2                                      add r2, r2, #8
0042ab0c  00 20 80 e5                                      str r2, [r0]
0042ab10  b4 ff ff eb                                      bl #0x42a9e8
0042ab14  04 00 a0 e1                                      mov r0, r4
0042ab18  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042ab1c  94 9f 56 00 50 0f 00 00                          .byte 0x94, 0x9f, 0x56, 0x00, 0x50, 0x0f, 0x00, 0x00

; FUNCTION 0x0042acb8, declared_size=64, range_size=64, mode=arm
; class-group: MenuConfirm
; alias: _ZN11MenuConfirmC1Ev
; demangled: MenuConfirm::MenuConfirm()
; decoder-mode: arm
0042acb8  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0042acbc  70 40 2d e9                                      push {r4, r5, r6, lr}
0042acc0  01 10 8f e0                                      add r1, pc, r1
0042acc4  24 40 9f e5                                      ldr r4, [pc, #0x24]
0042acc8  00 50 a0 e1                                      mov r5, r0
0042accc  a6 ff ff eb                                      bl #0x42ab6c
0042acd0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0042acd4  04 40 8f e0                                      add r4, pc, r4
0042acd8  05 00 a0 e1                                      mov r0, r5
0042acdc  03 30 94 e7                                      ldr r3, [r4, r3]
0042ace0  08 30 83 e2                                      add r3, r3, #8
0042ace4  00 30 85 e5                                      str r3, [r5]
0042ace8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042acec  a0 ee 49 00 bc 9d 56 00 50 0f 00 00              .byte 0xa0, 0xee, 0x49, 0x00, 0xbc, 0x9d, 0x56, 0x00, 0x50, 0x0f, 0x00, 0x00

; FUNCTION 0x0042acf8, declared_size=136, range_size=136, mode=arm
; class-group: MenuConfirm
; alias: _ZN11MenuConfirm11GetInstanceEv
; demangled: MenuConfirm::GetInstance()
; decoder-mode: arm
0042acf8  70 40 2d e9                                      push {r4, r5, r6, lr}
0042acfc  68 50 9f e5                                      ldr r5, [pc, #0x68]
0042ad00  68 40 9f e5                                      ldr r4, [pc, #0x68]
0042ad04  05 50 8f e0                                      add r5, pc, r5
0042ad08  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
0042ad0c  04 40 8f e0                                      add r4, pc, r4
0042ad10  01 00 13 e3                                      tst r3, #1
0042ad14  03 00 00 0a                                      beq #0x42ad28
0042ad18  54 00 9f e5                                      ldr r0, [pc, #0x54]
0042ad1c  00 00 8f e0                                      add r0, pc, r0
0042ad20  d0 00 80 e2                                      add r0, r0, #0xd0
0042ad24  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042ad28  cc 60 85 e2                                      add r6, r5, #0xcc
0042ad2c  06 00 a0 e1                                      mov r0, r6
0042ad30  8d 8e fb eb                                      bl #0x30e76c
0042ad34  00 00 50 e3                                      cmp r0, #0
0042ad38  f6 ff ff 0a                                      beq #0x42ad18
0042ad3c  d0 50 85 e2                                      add r5, r5, #0xd0
0042ad40  05 00 a0 e1                                      mov r0, r5
0042ad44  db ff ff eb                                      bl #0x42acb8
0042ad48  06 00 a0 e1                                      mov r0, r6
0042ad4c  3a 8f fb eb                                      bl #0x30ea3c
0042ad50  20 30 9f e5                                      ldr r3, [pc, #0x20]
0042ad54  05 00 a0 e1                                      mov r0, r5
0042ad58  03 10 94 e7                                      ldr r1, [r4, r3]
0042ad5c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0042ad60  03 20 94 e7                                      ldr r2, [r4, r3]
0042ad64  66 8d fb eb                                      bl #0x30e304
0042ad68  ea ff ff ea                                      b #0x42ad18
; mapping-symbol data/literal pool
0042ad6c  5c a0 57 00 84 9d 56 00 44 a0 57 00 24 0e 00 00  .byte 0x5c, 0xa0, 0x57, 0x00, 0x84, 0x9d, 0x56, 0x00, 0x44, 0xa0, 0x57, 0x00, 0x24, 0x0e, 0x00, 0x00
0042ad7c  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0042ad80, declared_size=64, range_size=64, mode=arm
; class-group: MenuConfirm
; alias: _ZN11MenuConfirmC2Ev
; demangled: MenuConfirm::MenuConfirm()
; decoder-mode: arm
0042ad80  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0042ad84  70 40 2d e9                                      push {r4, r5, r6, lr}
0042ad88  01 10 8f e0                                      add r1, pc, r1
0042ad8c  24 40 9f e5                                      ldr r4, [pc, #0x24]
0042ad90  00 50 a0 e1                                      mov r5, r0
0042ad94  74 ff ff eb                                      bl #0x42ab6c
0042ad98  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0042ad9c  04 40 8f e0                                      add r4, pc, r4
0042ada0  05 00 a0 e1                                      mov r0, r5
0042ada4  03 30 94 e7                                      ldr r3, [r4, r3]
0042ada8  08 30 83 e2                                      add r3, r3, #8
0042adac  00 30 85 e5                                      str r3, [r5]
0042adb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042adb4  d8 ed 49 00 f4 9c 56 00 50 0f 00 00              .byte 0xd8, 0xed, 0x49, 0x00, 0xf4, 0x9c, 0x56, 0x00, 0x50, 0x0f, 0x00, 0x00
