; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b90f8, declared_size=260, range_size=260, mode=arm
; class-group: gameswf::class_info
; alias: _ZN7gameswf10class_info4readEPNS_6streamEPNS_7abc_defE
; demangled: gameswf::class_info::read(gameswf::stream*, gameswf::abc_def*)
; decoder-mode: arm
007b90f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b90fc  00 80 a0 e1                                      mov r8, r0
007b9100  0c d0 4d e2                                      sub sp, sp, #0xc
007b9104  01 00 a0 e1                                      mov r0, r1
007b9108  01 a0 a0 e1                                      mov sl, r1
007b910c  02 b0 a0 e1                                      mov fp, r2
007b9110  91 2a ff eb                                      bl #0x783b5c
007b9114  0c 00 88 e5                                      str r0, [r8, #0xc]
007b9118  0a 00 a0 e1                                      mov r0, sl
007b911c  8e 2a ff eb                                      bl #0x783b5c
007b9120  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
007b9124  00 90 a0 e1                                      mov sb, r0
007b9128  00 10 a0 e1                                      mov r1, r0
007b912c  10 00 88 e2                                      add r0, r8, #0x10
007b9130  5e fe ff eb                                      bl #0x7b8ab0
007b9134  00 00 59 e3                                      cmp sb, #0
007b9138  07 70 8f e0                                      add r7, pc, r7
007b913c  2a 00 00 da                                      ble #0x7b91ec
007b9140  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
007b9144  00 60 a0 e3                                      mov r6, #0
007b9148  06 40 a0 e1                                      mov r4, r6
007b914c  04 20 8d e5                                      str r2, [sp, #4]
007b9150  00 10 a0 e3                                      mov r1, #0
007b9154  34 00 a0 e3                                      mov r0, #0x34
007b9158  92 66 fe eb                                      bl #0x752ba8
007b915c  00 30 a0 e1                                      mov r3, r0
007b9160  04 40 83 e4                                      str r4, [r3], #4
007b9164  04 30 83 e2                                      add r3, r3, #4
007b9168  04 40 80 e5                                      str r4, [r0, #4]
007b916c  04 40 83 e4                                      str r4, [r3], #4
007b9170  04 40 83 e4                                      str r4, [r3], #4
007b9174  04 40 83 e4                                      str r4, [r3], #4
007b9178  04 40 83 e4                                      str r4, [r3], #4
007b917c  04 40 83 e4                                      str r4, [r3], #4
007b9180  04 40 83 e4                                      str r4, [r3], #4
007b9184  04 40 83 e4                                      str r4, [r3], #4
007b9188  04 40 83 e4                                      str r4, [r3], #4
007b918c  04 40 83 e4                                      str r4, [r3], #4
007b9190  04 40 83 e4                                      str r4, [r3], #4
007b9194  00 40 83 e5                                      str r4, [r3]
007b9198  00 50 a0 e1                                      mov r5, r0
007b919c  98 82 fe eb                                      bl #0x759c04
007b91a0  04 20 9d e5                                      ldr r2, [sp, #4]
007b91a4  05 00 a0 e1                                      mov r0, r5
007b91a8  0a 10 a0 e1                                      mov r1, sl
007b91ac  02 30 97 e7                                      ldr r3, [r7, r2]
007b91b0  24 40 85 e5                                      str r4, [r5, #0x24]
007b91b4  0b 20 a0 e1                                      mov r2, fp
007b91b8  08 30 83 e2                                      add r3, r3, #8
007b91bc  00 30 85 e5                                      str r3, [r5]
007b91c0  28 40 85 e5                                      str r4, [r5, #0x28]
007b91c4  2c 40 85 e5                                      str r4, [r5, #0x2c]
007b91c8  30 40 c5 e5                                      strb r4, [r5, #0x30]
007b91cc  6c fc ff eb                                      bl #0x7b8384
007b91d0  10 00 98 e5                                      ldr r0, [r8, #0x10]
007b91d4  05 10 a0 e1                                      mov r1, r5
007b91d8  06 01 80 e0                                      add r0, r0, r6, lsl #2
007b91dc  01 60 86 e2                                      add r6, r6, #1
007b91e0  f7 fe ff eb                                      bl #0x7b8dc4
007b91e4  09 00 56 e1                                      cmp r6, sb
007b91e8  d8 ff ff 1a                                      bne #0x7b9150
007b91ec  0c d0 8d e2                                      add sp, sp, #0xc
007b91f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007b91f4  58 b9 1d 00 44 36 00 00                          .byte 0x58, 0xb9, 0x1d, 0x00, 0x44, 0x36, 0x00, 0x00

; FUNCTION 0x007b926c, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::class_info
; alias: _ZN7gameswf10class_infoD0Ev
; demangled: gameswf::class_info::~class_info()
; decoder-mode: arm
007b926c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
007b9270  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
007b9274  70 40 2d e9                                      push {r4, r5, r6, lr}
007b9278  03 30 8f e0                                      add r3, pc, r3
007b927c  02 20 93 e7                                      ldr r2, [r3, r2]
007b9280  00 50 a0 e1                                      mov r5, r0
007b9284  00 40 a0 e1                                      mov r4, r0
007b9288  08 20 82 e2                                      add r2, r2, #8
007b928c  10 20 85 e4                                      str r2, [r5], #0x10
007b9290  05 00 a0 e1                                      mov r0, r5
007b9294  00 10 a0 e3                                      mov r1, #0
007b9298  04 fe ff eb                                      bl #0x7b8ab0
007b929c  00 10 a0 e3                                      mov r1, #0
007b92a0  05 00 a0 e1                                      mov r0, r5
007b92a4  2f fd ff eb                                      bl #0x7b8768
007b92a8  04 00 a0 e1                                      mov r0, r4
007b92ac  7c 92 fe eb                                      bl #0x75dca4
007b92b0  04 00 a0 e1                                      mov r0, r4
007b92b4  fd 53 ed eb                                      bl #0x30e2b0
007b92b8  04 00 a0 e1                                      mov r0, r4
007b92bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007b92c0  18 b8 1d 00 c8 2a 00 00                          .byte 0x18, 0xb8, 0x1d, 0x00, 0xc8, 0x2a, 0x00, 0x00

; FUNCTION 0x007b931c, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::class_info
; alias: _ZN7gameswf10class_infoD1Ev
; demangled: gameswf::class_info::~class_info()
; decoder-mode: arm
007b931c  44 30 9f e5                                      ldr r3, [pc, #0x44]
007b9320  44 20 9f e5                                      ldr r2, [pc, #0x44]
007b9324  70 40 2d e9                                      push {r4, r5, r6, lr}
007b9328  03 30 8f e0                                      add r3, pc, r3
007b932c  02 20 93 e7                                      ldr r2, [r3, r2]
007b9330  00 40 a0 e1                                      mov r4, r0
007b9334  00 50 a0 e1                                      mov r5, r0
007b9338  08 20 82 e2                                      add r2, r2, #8
007b933c  10 20 84 e4                                      str r2, [r4], #0x10
007b9340  04 00 a0 e1                                      mov r0, r4
007b9344  00 10 a0 e3                                      mov r1, #0
007b9348  d8 fd ff eb                                      bl #0x7b8ab0
007b934c  04 00 a0 e1                                      mov r0, r4
007b9350  00 10 a0 e3                                      mov r1, #0
007b9354  03 fd ff eb                                      bl #0x7b8768
007b9358  05 00 a0 e1                                      mov r0, r5
007b935c  50 92 fe eb                                      bl #0x75dca4
007b9360  05 00 a0 e1                                      mov r0, r5
007b9364  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007b9368  68 b7 1d 00 c8 2a 00 00                          .byte 0x68, 0xb7, 0x1d, 0x00, 0xc8, 0x2a, 0x00, 0x00
