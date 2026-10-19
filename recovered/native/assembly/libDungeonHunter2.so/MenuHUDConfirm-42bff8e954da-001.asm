; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042aa1c, declared_size=52, range_size=52, mode=arm
; class-group: MenuHUDConfirm
; alias: _ZN14MenuHUDConfirmD1Ev
; demangled: MenuHUDConfirm::~MenuHUDConfirm()
; decoder-mode: arm
0042aa1c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042aa20  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042aa24  10 40 2d e9                                      push {r4, lr}
0042aa28  03 30 8f e0                                      add r3, pc, r3
0042aa2c  02 20 93 e7                                      ldr r2, [r3, r2]
0042aa30  00 40 a0 e1                                      mov r4, r0
0042aa34  08 20 82 e2                                      add r2, r2, #8
0042aa38  00 20 80 e5                                      str r2, [r0]
0042aa3c  e9 ff ff eb                                      bl #0x42a9e8
0042aa40  04 00 a0 e1                                      mov r0, r4
0042aa44  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042aa48  68 a0 56 00 24 20 00 00                          .byte 0x68, 0xa0, 0x56, 0x00, 0x24, 0x20, 0x00, 0x00

; FUNCTION 0x0042aa50, declared_size=28, range_size=28, mode=arm
; class-group: MenuHUDConfirm
; alias: _ZN14MenuHUDConfirmD0Ev
; demangled: MenuHUDConfirm::~MenuHUDConfirm()
; decoder-mode: arm
0042aa50  10 40 2d e9                                      push {r4, lr}
0042aa54  00 40 a0 e1                                      mov r4, r0
0042aa58  ef ff ff eb                                      bl #0x42aa1c
0042aa5c  04 00 a0 e1                                      mov r0, r4
0042aa60  76 96 fb eb                                      bl #0x310440
0042aa64  04 00 a0 e1                                      mov r0, r4
0042aa68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0042aa6c, declared_size=52, range_size=52, mode=arm
; class-group: MenuHUDConfirm
; alias: _ZN14MenuHUDConfirmD2Ev
; demangled: MenuHUDConfirm::~MenuHUDConfirm()
; decoder-mode: arm
0042aa6c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042aa70  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042aa74  10 40 2d e9                                      push {r4, lr}
0042aa78  03 30 8f e0                                      add r3, pc, r3
0042aa7c  02 20 93 e7                                      ldr r2, [r3, r2]
0042aa80  00 40 a0 e1                                      mov r4, r0
0042aa84  08 20 82 e2                                      add r2, r2, #8
0042aa88  00 20 80 e5                                      str r2, [r0]
0042aa8c  d5 ff ff eb                                      bl #0x42a9e8
0042aa90  04 00 a0 e1                                      mov r0, r4
0042aa94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042aa98  18 a0 56 00 24 20 00 00                          .byte 0x18, 0xa0, 0x56, 0x00, 0x24, 0x20, 0x00, 0x00

; FUNCTION 0x0042abb4, declared_size=64, range_size=64, mode=arm
; class-group: MenuHUDConfirm
; alias: _ZN14MenuHUDConfirmC1Ev
; demangled: MenuHUDConfirm::MenuHUDConfirm()
; decoder-mode: arm
0042abb4  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0042abb8  70 40 2d e9                                      push {r4, r5, r6, lr}
0042abbc  01 10 8f e0                                      add r1, pc, r1
0042abc0  24 40 9f e5                                      ldr r4, [pc, #0x24]
0042abc4  00 50 a0 e1                                      mov r5, r0
0042abc8  e7 ff ff eb                                      bl #0x42ab6c
0042abcc  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0042abd0  04 40 8f e0                                      add r4, pc, r4
0042abd4  05 00 a0 e1                                      mov r0, r5
0042abd8  03 30 94 e7                                      ldr r3, [r4, r3]
0042abdc  08 30 83 e2                                      add r3, r3, #8
0042abe0  00 30 85 e5                                      str r3, [r5]
0042abe4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042abe8  8c ef 49 00 c0 9e 56 00 24 20 00 00              .byte 0x8c, 0xef, 0x49, 0x00, 0xc0, 0x9e, 0x56, 0x00, 0x24, 0x20, 0x00, 0x00

; FUNCTION 0x0042abf4, declared_size=132, range_size=132, mode=arm
; class-group: MenuHUDConfirm
; alias: _ZN14MenuHUDConfirm11GetInstanceEv
; demangled: MenuHUDConfirm::GetInstance()
; decoder-mode: arm
0042abf4  70 40 2d e9                                      push {r4, r5, r6, lr}
0042abf8  64 50 9f e5                                      ldr r5, [pc, #0x64]
0042abfc  64 40 9f e5                                      ldr r4, [pc, #0x64]
0042ac00  05 50 8f e0                                      add r5, pc, r5
0042ac04  00 30 95 e5                                      ldr r3, [r5]
0042ac08  04 40 8f e0                                      add r4, pc, r4
0042ac0c  01 00 13 e3                                      tst r3, #1
0042ac10  03 00 00 0a                                      beq #0x42ac24
0042ac14  50 00 9f e5                                      ldr r0, [pc, #0x50]
0042ac18  00 00 8f e0                                      add r0, pc, r0
0042ac1c  04 00 80 e2                                      add r0, r0, #4
0042ac20  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042ac24  05 00 a0 e1                                      mov r0, r5
0042ac28  cf 8e fb eb                                      bl #0x30e76c
0042ac2c  00 00 50 e3                                      cmp r0, #0
0042ac30  f7 ff ff 0a                                      beq #0x42ac14
0042ac34  04 60 85 e2                                      add r6, r5, #4
0042ac38  06 00 a0 e1                                      mov r0, r6
0042ac3c  dc ff ff eb                                      bl #0x42abb4
0042ac40  05 00 a0 e1                                      mov r0, r5
0042ac44  7c 8f fb eb                                      bl #0x30ea3c
0042ac48  20 30 9f e5                                      ldr r3, [pc, #0x20]
0042ac4c  06 00 a0 e1                                      mov r0, r6
0042ac50  03 10 94 e7                                      ldr r1, [r4, r3]
0042ac54  18 30 9f e5                                      ldr r3, [pc, #0x18]
0042ac58  03 20 94 e7                                      ldr r2, [r4, r3]
0042ac5c  a8 8d fb eb                                      bl #0x30e304
0042ac60  eb ff ff ea                                      b #0x42ac14
; mapping-symbol data/literal pool
0042ac64  60 a1 57 00 88 9e 56 00 48 a1 57 00 64 2a 00 00  .byte 0x60, 0xa1, 0x57, 0x00, 0x88, 0x9e, 0x56, 0x00, 0x48, 0xa1, 0x57, 0x00, 0x64, 0x2a, 0x00, 0x00
0042ac74  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0042ac78, declared_size=64, range_size=64, mode=arm
; class-group: MenuHUDConfirm
; alias: _ZN14MenuHUDConfirmC2Ev
; demangled: MenuHUDConfirm::MenuHUDConfirm()
; decoder-mode: arm
0042ac78  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0042ac7c  70 40 2d e9                                      push {r4, r5, r6, lr}
0042ac80  01 10 8f e0                                      add r1, pc, r1
0042ac84  24 40 9f e5                                      ldr r4, [pc, #0x24]
0042ac88  00 50 a0 e1                                      mov r5, r0
0042ac8c  b6 ff ff eb                                      bl #0x42ab6c
0042ac90  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0042ac94  04 40 8f e0                                      add r4, pc, r4
0042ac98  05 00 a0 e1                                      mov r0, r5
0042ac9c  03 30 94 e7                                      ldr r3, [r4, r3]
0042aca0  08 30 83 e2                                      add r3, r3, #8
0042aca4  00 30 85 e5                                      str r3, [r5]
0042aca8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042acac  c8 ee 49 00 fc 9d 56 00 24 20 00 00              .byte 0xc8, 0xee, 0x49, 0x00, 0xfc, 0x9d, 0x56, 0x00, 0x24, 0x20, 0x00, 0x00
