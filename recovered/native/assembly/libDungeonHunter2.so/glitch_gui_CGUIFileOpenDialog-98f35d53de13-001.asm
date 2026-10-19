; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053bfac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZNK6glitch3gui18CGUIFileOpenDialog11getFileNameEv
; demangled: glitch::gui::CGUIFileOpenDialog::getFileName() const
; decoder-mode: arm
0053bfac  a4 01 90 e5                                      ldr r0, [r0, #0x1a4]
0053bfb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053bfb4, declared_size=64, range_size=64, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZN6glitch3gui18CGUIFileOpenDialog17sendSelectedEventEv
; demangled: glitch::gui::CGUIFileOpenDialog::sendSelectedEvent()
; decoder-mode: arm
0053bfb4  04 e0 2d e5                                      str lr, [sp, #-4]!
0053bfb8  24 30 90 e5                                      ldr r3, [r0, #0x24]
0053bfbc  1c d0 4d e2                                      sub sp, sp, #0x1c
0053bfc0  00 20 a0 e3                                      mov r2, #0
0053bfc4  0a 10 a0 e3                                      mov r1, #0xa
0053bfc8  10 10 8d e5                                      str r1, [sp, #0x10]
0053bfcc  08 00 8d e5                                      str r0, [sp, #8]
0053bfd0  0c 20 8d e5                                      str r2, [sp, #0xc]
0053bfd4  00 20 8d e5                                      str r2, [sp]
0053bfd8  03 00 a0 e1                                      mov r0, r3
0053bfdc  0d 10 a0 e1                                      mov r1, sp
0053bfe0  00 30 93 e5                                      ldr r3, [r3]
0053bfe4  0f e0 a0 e1                                      mov lr, pc
0053bfe8  08 f0 93 e5                                      ldr pc, [r3, #8]
0053bfec  1c d0 8d e2                                      add sp, sp, #0x1c
0053bff0  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0053bff4, declared_size=64, range_size=64, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZN6glitch3gui18CGUIFileOpenDialog15sendCancelEventEv
; demangled: glitch::gui::CGUIFileOpenDialog::sendCancelEvent()
; decoder-mode: arm
0053bff4  04 e0 2d e5                                      str lr, [sp, #-4]!
0053bff8  24 30 90 e5                                      ldr r3, [r0, #0x24]
0053bffc  1c d0 4d e2                                      sub sp, sp, #0x1c
0053c000  00 20 a0 e3                                      mov r2, #0
0053c004  0b 10 a0 e3                                      mov r1, #0xb
0053c008  10 10 8d e5                                      str r1, [sp, #0x10]
0053c00c  08 00 8d e5                                      str r0, [sp, #8]
0053c010  0c 20 8d e5                                      str r2, [sp, #0xc]
0053c014  00 20 8d e5                                      str r2, [sp]
0053c018  03 00 a0 e1                                      mov r0, r3
0053c01c  0d 10 a0 e1                                      mov r1, sp
0053c020  00 30 93 e5                                      ldr r3, [r3]
0053c024  0f e0 a0 e1                                      mov lr, pc
0053c028  08 f0 93 e5                                      ldr pc, [r3, #8]
0053c02c  1c d0 8d e2                                      add sp, sp, #0x1c
0053c030  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0053c344, declared_size=460, range_size=460, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZN6glitch3gui18CGUIFileOpenDialog4drawEv
; demangled: glitch::gui::CGUIFileOpenDialog::draw()
; decoder-mode: arm
0053c344  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0053c348  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
0053c34c  44 d0 4d e2                                      sub sp, sp, #0x44
0053c350  00 40 a0 e1                                      mov r4, r0
0053c354  00 00 53 e3                                      cmp r3, #0
0053c358  01 00 00 1a                                      bne #0x53c364
0053c35c  44 d0 8d e2                                      add sp, sp, #0x44
0053c360  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0053c364  50 31 90 e5                                      ldr r3, [r0, #0x150]
0053c368  48 70 80 e2                                      add r7, r0, #0x48
0053c36c  28 60 8d e2                                      add r6, sp, #0x28
0053c370  03 00 a0 e1                                      mov r0, r3
0053c374  00 30 93 e5                                      ldr r3, [r3]
0053c378  0f e0 a0 e1                                      mov lr, pc
0053c37c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053c380  38 c0 94 e5                                      ldr ip, [r4, #0x38]
0053c384  3c 10 84 e2                                      add r1, r4, #0x3c
0053c388  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
0053c38c  28 c0 8d e5                                      str ip, [sp, #0x28]
0053c390  2c 10 8d e5                                      str r1, [sp, #0x2c]
0053c394  30 20 8d e5                                      str r2, [sp, #0x30]
0053c398  34 30 8d e5                                      str r3, [sp, #0x34]
0053c39c  00 30 90 e5                                      ldr r3, [r0]
0053c3a0  05 10 a0 e3                                      mov r1, #5
0053c3a4  00 50 a0 e1                                      mov r5, r0
0053c3a8  4c 80 93 e5                                      ldr r8, [r3, #0x4c]
0053c3ac  0f e0 a0 e1                                      mov lr, pc
0053c3b0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0053c3b4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0053c3b8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0053c3bc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0053c3c0  11 10 cd e5                                      strb r1, [sp, #0x11]
0053c3c4  12 20 cd e5                                      strb r2, [sp, #0x12]
0053c3c8  10 00 cd e5                                      strb r0, [sp, #0x10]
0053c3cc  13 30 cd e5                                      strb r3, [sp, #0x13]
0053c3d0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0053c3d4  05 10 a0 e1                                      mov r1, r5
0053c3d8  04 20 a0 e1                                      mov r2, r4
0053c3dc  00 30 8d e5                                      str r3, [sp]
0053c3e0  3c 30 8d e5                                      str r3, [sp, #0x3c]
0053c3e4  04 60 8d e5                                      str r6, [sp, #4]
0053c3e8  01 30 a0 e3                                      mov r3, #1
0053c3ec  08 70 8d e5                                      str r7, [sp, #8]
0053c3f0  18 00 8d e2                                      add r0, sp, #0x18
0053c3f4  38 ff 2f e1                                      blx r8
0053c3f8  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
0053c3fc  e4 20 94 e5                                      ldr r2, [r4, #0xe4]
0053c400  18 30 9d e5                                      ldr r3, [sp, #0x18]
0053c404  20 80 9d e5                                      ldr r8, [sp, #0x20]
0053c408  01 20 62 e0                                      rsb r2, r2, r1
0053c40c  22 21 b0 e1                                      lsrs r2, r2, #2
0053c410  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0053c414  28 30 8d e5                                      str r3, [sp, #0x28]
0053c418  30 80 8d e5                                      str r8, [sp, #0x30]
0053c41c  2c 20 8d e5                                      str r2, [sp, #0x2c]
0053c420  24 20 9d e5                                      ldr r2, [sp, #0x24]
0053c424  34 20 8d e5                                      str r2, [sp, #0x34]
0053c428  0d 00 00 1a                                      bne #0x53c464
0053c42c  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
0053c430  00 00 53 e3                                      cmp r3, #0
0053c434  04 50 b4 15                                      ldrne r5, [r4, #4]!
0053c438  06 00 00 1a                                      bne #0x53c458
0053c43c  c6 ff ff ea                                      b #0x53c35c
0053c440  08 30 95 e5                                      ldr r3, [r5, #8]
0053c444  03 00 a0 e1                                      mov r0, r3
0053c448  00 30 93 e5                                      ldr r3, [r3]
0053c44c  0f e0 a0 e1                                      mov lr, pc
0053c450  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0053c454  00 50 95 e5                                      ldr r5, [r5]
0053c458  04 00 55 e1                                      cmp r5, r4
0053c45c  f7 ff ff 1a                                      bne #0x53c440
0053c460  bd ff ff ea                                      b #0x53c35c
0053c464  02 30 83 e2                                      add r3, r3, #2
0053c468  28 30 8d e5                                      str r3, [sp, #0x28]
0053c46c  02 10 a0 e3                                      mov r1, #2
0053c470  00 30 95 e5                                      ldr r3, [r5]
0053c474  05 00 a0 e1                                      mov r0, r5
0053c478  0f e0 a0 e1                                      mov lr, pc
0053c47c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0053c480  05 80 48 e2                                      sub r8, r8, #5
0053c484  08 80 60 e0                                      rsb r8, r0, r8
0053c488  30 80 8d e5                                      str r8, [sp, #0x30]
0053c48c  00 30 95 e5                                      ldr r3, [r5]
0053c490  05 00 a0 e1                                      mov r0, r5
0053c494  02 10 a0 e3                                      mov r1, #2
0053c498  0f e0 a0 e1                                      mov lr, pc
0053c49c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0053c4a0  00 80 50 e2                                      subs r8, r0, #0
0053c4a4  e0 ff ff 0a                                      beq #0x53c42c
0053c4a8  00 20 98 e5                                      ldr r2, [r8]
0053c4ac  00 30 95 e5                                      ldr r3, [r5]
0053c4b0  05 00 a0 e1                                      mov r0, r5
0053c4b4  06 10 a0 e3                                      mov r1, #6
0053c4b8  0c 50 92 e5                                      ldr r5, [r2, #0xc]
0053c4bc  e4 a0 94 e5                                      ldr sl, [r4, #0xe4]
0053c4c0  0f e0 a0 e1                                      mov lr, pc
0053c4c4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0053c4c8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0053c4cc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0053c4d0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0053c4d4  11 10 cd e5                                      strb r1, [sp, #0x11]
0053c4d8  12 20 cd e5                                      strb r2, [sp, #0x12]
0053c4dc  10 00 cd e5                                      strb r0, [sp, #0x10]
0053c4e0  13 30 cd e5                                      strb r3, [sp, #0x13]
0053c4e4  10 30 9d e5                                      ldr r3, [sp, #0x10]
0053c4e8  00 20 a0 e3                                      mov r2, #0
0053c4ec  00 20 8d e5                                      str r2, [sp]
0053c4f0  01 20 a0 e3                                      mov r2, #1
0053c4f4  84 00 8d e9                                      stmib sp, {r2, r7}
0053c4f8  38 30 8d e5                                      str r3, [sp, #0x38]
0053c4fc  08 00 a0 e1                                      mov r0, r8
0053c500  0a 10 a0 e1                                      mov r1, sl
0053c504  06 20 a0 e1                                      mov r2, r6
0053c508  35 ff 2f e1                                      blx r5
0053c50c  c6 ff ff ea                                      b #0x53c42c

; FUNCTION 0x0053c584, declared_size=308, range_size=308, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZN6glitch3gui18CGUIFileOpenDialogD2Ev
; demangled: glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog()
; decoder-mode: arm
0053c584  70 40 2d e9                                      push {r4, r5, r6, lr}
0053c588  00 30 91 e5                                      ldr r3, [r1]
0053c58c  01 50 a0 e1                                      mov r5, r1
0053c590  00 40 a0 e1                                      mov r4, r0
0053c594  00 30 80 e5                                      str r3, [r0]
0053c598  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0053c59c  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
0053c5a0  03 20 80 e7                                      str r2, [r0, r3]
0053c5a4  00 30 90 e5                                      ldr r3, [r0]
0053c5a8  20 20 91 e5                                      ldr r2, [r1, #0x20]
0053c5ac  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0053c5b0  03 20 80 e7                                      str r2, [r0, r3]
0053c5b4  ac 31 90 e5                                      ldr r3, [r0, #0x1ac]
0053c5b8  00 00 53 e3                                      cmp r3, #0
0053c5bc  03 00 00 0a                                      beq #0x53c5d0
0053c5c0  00 20 93 e5                                      ldr r2, [r3]
0053c5c4  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0053c5c8  00 00 83 e0                                      add r0, r3, r0
0053c5cc  ec 83 f7 eb                                      bl #0x31d584
0053c5d0  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
0053c5d4  00 00 53 e3                                      cmp r3, #0
0053c5d8  03 00 00 0a                                      beq #0x53c5ec
0053c5dc  00 20 93 e5                                      ldr r2, [r3]
0053c5e0  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0053c5e4  00 00 83 e0                                      add r0, r3, r0
0053c5e8  e5 83 f7 eb                                      bl #0x31d584
0053c5ec  b4 31 94 e5                                      ldr r3, [r4, #0x1b4]
0053c5f0  00 00 53 e3                                      cmp r3, #0
0053c5f4  03 00 00 0a                                      beq #0x53c608
0053c5f8  00 20 93 e5                                      ldr r2, [r3]
0053c5fc  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0053c600  00 00 83 e0                                      add r0, r3, r0
0053c604  de 83 f7 eb                                      bl #0x31d584
0053c608  b8 31 94 e5                                      ldr r3, [r4, #0x1b8]
0053c60c  00 00 53 e3                                      cmp r3, #0
0053c610  03 00 00 0a                                      beq #0x53c624
0053c614  00 20 93 e5                                      ldr r2, [r3]
0053c618  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0053c61c  00 00 83 e0                                      add r0, r3, r0
0053c620  d7 83 f7 eb                                      bl #0x31d584
0053c624  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
0053c628  00 00 53 e3                                      cmp r3, #0
0053c62c  03 00 00 0a                                      beq #0x53c640
0053c630  00 20 93 e5                                      ldr r2, [r3]
0053c634  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0053c638  00 00 83 e0                                      add r0, r3, r0
0053c63c  d0 83 f7 eb                                      bl #0x31d584
0053c640  c8 01 94 e5                                      ldr r0, [r4, #0x1c8]
0053c644  00 00 50 e3                                      cmp r0, #0
0053c648  00 00 00 0a                                      beq #0x53c650
0053c64c  cc 83 f7 eb                                      bl #0x31d584
0053c650  c4 01 94 e5                                      ldr r0, [r4, #0x1c4]
0053c654  00 00 50 e3                                      cmp r0, #0
0053c658  00 00 00 0a                                      beq #0x53c660
0053c65c  c8 83 f7 eb                                      bl #0x31d584
0053c660  16 3e 84 e2                                      add r3, r4, #0x160
0053c664  44 00 93 e5                                      ldr r0, [r3, #0x44]
0053c668  03 00 50 e1                                      cmp r0, r3
0053c66c  02 00 00 0a                                      beq #0x53c67c
0053c670  00 00 50 e3                                      cmp r0, #0
0053c674  00 00 00 0a                                      beq #0x53c67c
0053c678  74 4f f7 eb                                      bl #0x310450
0053c67c  04 30 95 e5                                      ldr r3, [r5, #4]
0053c680  04 50 85 e2                                      add r5, r5, #4
0053c684  04 10 85 e2                                      add r1, r5, #4
0053c688  00 30 84 e5                                      str r3, [r4]
0053c68c  10 20 95 e5                                      ldr r2, [r5, #0x10]
0053c690  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0053c694  04 00 a0 e1                                      mov r0, r4
0053c698  03 20 84 e7                                      str r2, [r4, r3]
0053c69c  00 30 94 e5                                      ldr r3, [r4]
0053c6a0  14 20 95 e5                                      ldr r2, [r5, #0x14]
0053c6a4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0053c6a8  03 20 84 e7                                      str r2, [r4, r3]
0053c6ac  5b f2 ff eb                                      bl #0x539020
0053c6b0  04 00 a0 e1                                      mov r0, r4
0053c6b4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0053c734, declared_size=324, range_size=324, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZN6glitch3gui18CGUIFileOpenDialogD1Ev
; demangled: glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog()
; decoder-mode: arm
0053c734  70 40 2d e9                                      push {r4, r5, r6, lr}
0053c738  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
0053c73c  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
0053c740  ac 21 90 e5                                      ldr r2, [r0, #0x1ac]
0053c744  05 50 8f e0                                      add r5, pc, r5
0053c748  03 30 95 e7                                      ldr r3, [r5, r3]
0053c74c  00 40 a0 e1                                      mov r4, r0
0053c750  00 00 52 e3                                      cmp r2, #0
0053c754  c8 10 83 e2                                      add r1, r3, #0xc8
0053c758  10 00 83 e2                                      add r0, r3, #0x10
0053c75c  a8 30 83 e2                                      add r3, r3, #0xa8
0053c760  00 00 84 e5                                      str r0, [r4]
0053c764  cc 31 84 e5                                      str r3, [r4, #0x1cc]
0053c768  d0 11 84 e5                                      str r1, [r4, #0x1d0]
0053c76c  03 00 00 0a                                      beq #0x53c780
0053c770  00 30 92 e5                                      ldr r3, [r2]
0053c774  10 00 13 e5                                      ldr r0, [r3, #-0x10]
0053c778  00 00 82 e0                                      add r0, r2, r0
0053c77c  80 83 f7 eb                                      bl #0x31d584
0053c780  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
0053c784  00 00 53 e3                                      cmp r3, #0
0053c788  03 00 00 0a                                      beq #0x53c79c
0053c78c  00 20 93 e5                                      ldr r2, [r3]
0053c790  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0053c794  00 00 83 e0                                      add r0, r3, r0
0053c798  79 83 f7 eb                                      bl #0x31d584
0053c79c  b4 31 94 e5                                      ldr r3, [r4, #0x1b4]
0053c7a0  00 00 53 e3                                      cmp r3, #0
0053c7a4  03 00 00 0a                                      beq #0x53c7b8
0053c7a8  00 20 93 e5                                      ldr r2, [r3]
0053c7ac  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0053c7b0  00 00 83 e0                                      add r0, r3, r0
0053c7b4  72 83 f7 eb                                      bl #0x31d584
0053c7b8  b8 31 94 e5                                      ldr r3, [r4, #0x1b8]
0053c7bc  00 00 53 e3                                      cmp r3, #0
0053c7c0  03 00 00 0a                                      beq #0x53c7d4
0053c7c4  00 20 93 e5                                      ldr r2, [r3]
0053c7c8  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0053c7cc  00 00 83 e0                                      add r0, r3, r0
0053c7d0  6b 83 f7 eb                                      bl #0x31d584
0053c7d4  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
0053c7d8  00 00 53 e3                                      cmp r3, #0
0053c7dc  03 00 00 0a                                      beq #0x53c7f0
0053c7e0  00 20 93 e5                                      ldr r2, [r3]
0053c7e4  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0053c7e8  00 00 83 e0                                      add r0, r3, r0
0053c7ec  64 83 f7 eb                                      bl #0x31d584
0053c7f0  c8 01 94 e5                                      ldr r0, [r4, #0x1c8]
0053c7f4  00 00 50 e3                                      cmp r0, #0
0053c7f8  00 00 00 0a                                      beq #0x53c800
0053c7fc  60 83 f7 eb                                      bl #0x31d584
0053c800  c4 01 94 e5                                      ldr r0, [r4, #0x1c4]
0053c804  00 00 50 e3                                      cmp r0, #0
0053c808  00 00 00 0a                                      beq #0x53c810
0053c80c  5c 83 f7 eb                                      bl #0x31d584
0053c810  16 3e 84 e2                                      add r3, r4, #0x160
0053c814  44 00 93 e5                                      ldr r0, [r3, #0x44]
0053c818  03 00 50 e1                                      cmp r0, r3
0053c81c  02 00 00 0a                                      beq #0x53c82c
0053c820  00 00 50 e3                                      cmp r0, #0
0053c824  00 00 00 0a                                      beq #0x53c82c
0053c828  08 4f f7 eb                                      bl #0x310450
0053c82c  40 30 9f e5                                      ldr r3, [pc, #0x40]
0053c830  04 00 a0 e1                                      mov r0, r4
0053c834  03 10 95 e7                                      ldr r1, [r5, r3]
0053c838  04 30 91 e5                                      ldr r3, [r1, #4]
0053c83c  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0053c840  18 20 91 e5                                      ldr r2, [r1, #0x18]
0053c844  00 30 84 e5                                      str r3, [r4]
0053c848  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0053c84c  08 10 81 e2                                      add r1, r1, #8
0053c850  03 c0 84 e7                                      str ip, [r4, r3]
0053c854  00 30 94 e5                                      ldr r3, [r4]
0053c858  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0053c85c  03 20 84 e7                                      str r2, [r4, r3]
0053c860  ee f1 ff eb                                      bl #0x539020
0053c864  04 00 a0 e1                                      mov r0, r4
0053c868  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0053c86c  4c 83 45 00 5c 34 00 00 3c 19 00 00              .byte 0x4c, 0x83, 0x45, 0x00, 0x5c, 0x34, 0x00, 0x00, 0x3c, 0x19, 0x00, 0x00

; FUNCTION 0x0053c878, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZN6glitch3gui18CGUIFileOpenDialogD0Ev
; demangled: glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog()
; decoder-mode: arm
0053c878  10 40 2d e9                                      push {r4, lr}
0053c87c  00 40 a0 e1                                      mov r4, r0
0053c880  ab ff ff eb                                      bl #0x53c734
0053c884  04 00 a0 e1                                      mov r0, r4
0053c888  88 46 f7 eb                                      bl #0x30e2b0
0053c88c  04 00 a0 e1                                      mov r0, r4
0053c890  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0053c894, declared_size=520, range_size=520, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZN6glitch3gui18CGUIFileOpenDialog11fillListBoxEv
; demangled: glitch::gui::CGUIFileOpenDialog::fillListBox()
; decoder-mode: arm
0053c894  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053c898  50 31 90 e5                                      ldr r3, [r0, #0x150]
0053c89c  00 50 a0 e1                                      mov r5, r0
0053c8a0  e4 d0 4d e2                                      sub sp, sp, #0xe4
0053c8a4  03 00 a0 e1                                      mov r0, r3
0053c8a8  00 30 93 e5                                      ldr r3, [r3]
0053c8ac  0f e0 a0 e1                                      mov lr, pc
0053c8b0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053c8b4  c4 31 95 e5                                      ldr r3, [r5, #0x1c4]
0053c8b8  00 60 a0 e1                                      mov r6, r0
0053c8bc  00 00 53 e3                                      cmp r3, #0
0053c8c0  73 00 00 0a                                      beq #0x53ca94
0053c8c4  b8 31 95 e5                                      ldr r3, [r5, #0x1b8]
0053c8c8  00 00 53 e3                                      cmp r3, #0
0053c8cc  00 00 50 13                                      cmpne r0, #0
0053c8d0  6f 00 00 0a                                      beq #0x53ca94
0053c8d4  c8 01 95 e5                                      ldr r0, [r5, #0x1c8]
0053c8d8  00 00 50 e3                                      cmp r0, #0
0053c8dc  01 00 00 0a                                      beq #0x53c8e8
0053c8e0  27 83 f7 eb                                      bl #0x31d584
0053c8e4  b8 31 95 e5                                      ldr r3, [r5, #0x1b8]
0053c8e8  03 00 a0 e1                                      mov r0, r3
0053c8ec  00 30 93 e5                                      ldr r3, [r3]
0053c8f0  0f e0 a0 e1                                      mov lr, pc
0053c8f4  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0053c8f8  c4 31 95 e5                                      ldr r3, [r5, #0x1c4]
0053c8fc  98 20 8d e2                                      add r2, sp, #0x98
0053c900  04 20 8d e5                                      str r2, [sp, #4]
0053c904  03 00 a0 e1                                      mov r0, r3
0053c908  00 30 93 e5                                      ldr r3, [r3]
0053c90c  0f e0 a0 e1                                      mov lr, pc
0053c910  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0053c914  c8 01 85 e5                                      str r0, [r5, #0x1c8]
0053c918  04 00 9d e5                                      ldr r0, [sp, #4]
0053c91c  10 10 a0 e3                                      mov r1, #0x10
0053c920  50 70 8d e2                                      add r7, sp, #0x50
0053c924  d8 00 8d e5                                      str r0, [sp, #0xd8]
0053c928  dc 00 8d e5                                      str r0, [sp, #0xdc]
0053c92c  fb 8f f7 eb                                      bl #0x320920
0053c930  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
0053c934  00 30 a0 e3                                      mov r3, #0
0053c938  03 40 a0 e1                                      mov r4, r3
0053c93c  00 30 82 e5                                      str r3, [r2]
0053c940  28 00 00 ea                                      b #0x53c9e8
0053c944  c8 31 95 e5                                      ldr r3, [r5, #0x1c8]
0053c948  03 00 a0 e1                                      mov r0, r3
0053c94c  00 30 93 e5                                      ldr r3, [r3]
0053c950  0f e0 a0 e1                                      mov lr, pc
0053c954  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0053c958  00 10 a0 e1                                      mov r1, r0
0053c95c  07 00 a0 e1                                      mov r0, r7
0053c960  58 a6 f7 eb                                      bl #0x3262c8
0053c964  04 00 9d e5                                      ldr r0, [sp, #4]
0053c968  90 20 9d e5                                      ldr r2, [sp, #0x90]
0053c96c  94 10 9d e5                                      ldr r1, [sp, #0x94]
0053c970  0a 9a f7 eb                                      bl #0x3231a0
0053c974  94 30 9d e5                                      ldr r3, [sp, #0x94]
0053c978  07 00 53 e1                                      cmp r3, r7
0053c97c  03 00 a0 e1                                      mov r0, r3
0053c980  02 00 00 0a                                      beq #0x53c990
0053c984  00 00 53 e3                                      cmp r3, #0
0053c988  00 00 00 0a                                      beq #0x53c990
0053c98c  af 4e f7 eb                                      bl #0x310450
0053c990  b8 81 95 e5                                      ldr r8, [r5, #0x1b8]
0053c994  c8 31 95 e5                                      ldr r3, [r5, #0x1c8]
0053c998  00 20 96 e5                                      ldr r2, [r6]
0053c99c  00 c0 98 e5                                      ldr ip, [r8]
0053c9a0  04 10 a0 e1                                      mov r1, r4
0053c9a4  03 00 a0 e1                                      mov r0, r3
0053c9a8  00 30 93 e5                                      ldr r3, [r3]
0053c9ac  88 b0 9c e5                                      ldr fp, [ip, #0x88]
0053c9b0  38 90 92 e5                                      ldr sb, [r2, #0x38]
0053c9b4  dc a0 9d e5                                      ldr sl, [sp, #0xdc]
0053c9b8  0f e0 a0 e1                                      mov lr, pc
0053c9bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0053c9c0  00 00 50 e3                                      cmp r0, #0
0053c9c4  16 10 a0 13                                      movne r1, #0x16
0053c9c8  15 10 a0 03                                      moveq r1, #0x15
0053c9cc  06 00 a0 e1                                      mov r0, r6
0053c9d0  39 ff 2f e1                                      blx sb
0053c9d4  0a 10 a0 e1                                      mov r1, sl
0053c9d8  00 20 a0 e1                                      mov r2, r0
0053c9dc  08 00 a0 e1                                      mov r0, r8
0053c9e0  3b ff 2f e1                                      blx fp
0053c9e4  01 40 84 e2                                      add r4, r4, #1
0053c9e8  c8 31 95 e5                                      ldr r3, [r5, #0x1c8]
0053c9ec  03 00 a0 e1                                      mov r0, r3
0053c9f0  00 30 93 e5                                      ldr r3, [r3]
0053c9f4  0f e0 a0 e1                                      mov lr, pc
0053c9f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053c9fc  00 00 54 e1                                      cmp r4, r0
0053ca00  04 10 a0 e1                                      mov r1, r4
0053ca04  ce ff ff 3a                                      blo #0x53c944
0053ca08  bc 31 95 e5                                      ldr r3, [r5, #0x1bc]
0053ca0c  00 00 53 e3                                      cmp r3, #0
0053ca10  18 00 00 0a                                      beq #0x53ca78
0053ca14  c4 31 95 e5                                      ldr r3, [r5, #0x1c4]
0053ca18  08 40 8d e2                                      add r4, sp, #8
0053ca1c  03 00 a0 e1                                      mov r0, r3
0053ca20  00 30 93 e5                                      ldr r3, [r3]
0053ca24  0f e0 a0 e1                                      mov lr, pc
0053ca28  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0053ca2c  00 10 a0 e1                                      mov r1, r0
0053ca30  04 00 a0 e1                                      mov r0, r4
0053ca34  23 a6 f7 eb                                      bl #0x3262c8
0053ca38  04 00 9d e5                                      ldr r0, [sp, #4]
0053ca3c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0053ca40  48 20 9d e5                                      ldr r2, [sp, #0x48]
0053ca44  d5 99 f7 eb                                      bl #0x3231a0
0053ca48  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0053ca4c  04 00 50 e1                                      cmp r0, r4
0053ca50  02 00 00 0a                                      beq #0x53ca60
0053ca54  00 00 50 e3                                      cmp r0, #0
0053ca58  00 00 00 0a                                      beq #0x53ca60
0053ca5c  7b 4e f7 eb                                      bl #0x310450
0053ca60  bc 31 95 e5                                      ldr r3, [r5, #0x1bc]
0053ca64  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
0053ca68  03 00 a0 e1                                      mov r0, r3
0053ca6c  00 30 93 e5                                      ldr r3, [r3]
0053ca70  0f e0 a0 e1                                      mov lr, pc
0053ca74  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0053ca78  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
0053ca7c  04 20 9d e5                                      ldr r2, [sp, #4]
0053ca80  02 00 50 e1                                      cmp r0, r2
0053ca84  02 00 00 0a                                      beq #0x53ca94
0053ca88  00 00 50 e3                                      cmp r0, #0
0053ca8c  00 00 00 0a                                      beq #0x53ca94
0053ca90  6e 4e f7 eb                                      bl #0x310450
0053ca94  e4 d0 8d e2                                      add sp, sp, #0xe4
0053ca98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0053ca9c, declared_size=1656, range_size=1656, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZN6glitch3gui18CGUIFileOpenDialogC1EPKwPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIFileOpenDialog::CGUIFileOpenDialog(wchar_t const*, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
0053ca9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053caa0  4c 56 9f e5                                      ldr r5, [pc, #0x64c]
0053caa4  4c e6 9f e5                                      ldr lr, [pc, #0x64c]
0053caa8  4c c6 9f e5                                      ldr ip, [pc, #0x64c]
0053caac  05 50 8f e0                                      add r5, pc, r5
0053cab0  0e e0 95 e7                                      ldr lr, [r5, lr]
0053cab4  0c c0 95 e7                                      ldr ip, [r5, ip]
0053cab8  01 70 a0 e3                                      mov r7, #1
0053cabc  24 60 9e e5                                      ldr r6, [lr, #0x24]
0053cac0  08 c0 8c e2                                      add ip, ip, #8
0053cac4  d4 71 80 e5                                      str r7, [r0, #0x1d4]
0053cac8  d0 c1 80 e5                                      str ip, [r0, #0x1d0]
0053cacc  cc 61 80 e5                                      str r6, [r0, #0x1cc]
0053cad0  0c 60 16 e5                                      ldr r6, [r6, #-0xc]
0053cad4  28 80 9e e5                                      ldr r8, [lr, #0x28]
0053cad8  73 7f 80 e2                                      add r7, r0, #0x1cc
0053cadc  80 d0 4d e2                                      sub sp, sp, #0x80
0053cae0  06 80 87 e7                                      str r8, [r7, r6]
0053cae4  40 70 93 e5                                      ldr r7, [r3, #0x40]
0053cae8  38 60 93 e5                                      ldr r6, [r3, #0x38]
0053caec  44 80 93 e5                                      ldr r8, [r3, #0x44]
0053caf0  3c c0 93 e5                                      ldr ip, [r3, #0x3c]
0053caf4  57 7f 47 e2                                      sub r7, r7, #0x15c
0053caf8  02 70 47 e2                                      sub r7, r7, #2
0053cafc  07 70 66 e0                                      rsb r7, r6, r7
0053cb00  fa 80 48 e2                                      sub r8, r8, #0xfa
0053cb04  08 c0 6c e0                                      rsb ip, ip, r8
0053cb08  a7 7f 87 e0                                      add r7, r7, r7, lsr #31
0053cb0c  ac cf 8c e0                                      add ip, ip, ip, lsr #31
0053cb10  c7 70 a0 e1                                      asr r7, r7, #1
0053cb14  cc 80 a0 e1                                      asr r8, ip, #1
0053cb18  57 cf 87 e2                                      add ip, r7, #0x15c
0053cb1c  02 c0 8c e2                                      add ip, ip, #2
0053cb20  74 c0 8d e5                                      str ip, [sp, #0x74]
0053cb24  98 c0 9d e5                                      ldr ip, [sp, #0x98]
0053cb28  01 60 a0 e1                                      mov r6, r1
0053cb2c  04 10 8e e2                                      add r1, lr, #4
0053cb30  00 c0 8d e5                                      str ip, [sp]
0053cb34  fa e0 88 e2                                      add lr, r8, #0xfa
0053cb38  6c c0 8d e2                                      add ip, sp, #0x6c
0053cb3c  00 40 a0 e1                                      mov r4, r0
0053cb40  78 e0 8d e5                                      str lr, [sp, #0x78]
0053cb44  6c 70 8d e5                                      str r7, [sp, #0x6c]
0053cb48  70 80 8d e5                                      str r8, [sp, #0x70]
0053cb4c  04 c0 8d e5                                      str ip, [sp, #4]
0053cb50  02 70 a0 e1                                      mov r7, r2
0053cb54  48 fd ff eb                                      bl #0x53c07c
0053cb58  a0 35 9f e5                                      ldr r3, [pc, #0x5a0]
0053cb5c  00 80 a0 e3                                      mov r8, #0
0053cb60  16 2e 84 e2                                      add r2, r4, #0x160
0053cb64  03 30 95 e7                                      ldr r3, [r5, r3]
0053cb68  02 00 a0 e1                                      mov r0, r2
0053cb6c  a0 21 84 e5                                      str r2, [r4, #0x1a0]
0053cb70  10 c0 83 e2                                      add ip, r3, #0x10
0053cb74  c8 10 83 e2                                      add r1, r3, #0xc8
0053cb78  a8 30 83 e2                                      add r3, r3, #0xa8
0053cb7c  00 c0 84 e5                                      str ip, [r4]
0053cb80  a4 21 84 e5                                      str r2, [r4, #0x1a4]
0053cb84  cc 31 84 e5                                      str r3, [r4, #0x1cc]
0053cb88  d0 11 84 e5                                      str r1, [r4, #0x1d0]
0053cb8c  58 81 84 e5                                      str r8, [r4, #0x158]
0053cb90  10 10 a0 e3                                      mov r1, #0x10
0053cb94  5c 81 84 e5                                      str r8, [r4, #0x15c]
0053cb98  60 8f f7 eb                                      bl #0x320920
0053cb9c  a0 31 94 e5                                      ldr r3, [r4, #0x1a0]
0053cba0  06 00 a0 e1                                      mov r0, r6
0053cba4  00 80 83 e5                                      str r8, [r3]
0053cba8  c8 81 84 e5                                      str r8, [r4, #0x1c8]
0053cbac  a8 81 c4 e5                                      strb r8, [r4, #0x1a8]
0053cbb0  bc 81 84 e5                                      str r8, [r4, #0x1bc]
0053cbb4  c4 81 84 e5                                      str r8, [r4, #0x1c4]
0053cbb8  32 48 f7 eb                                      bl #0x30ec88
0053cbbc  06 10 a0 e1                                      mov r1, r6
0053cbc0  00 21 86 e0                                      add r2, r6, r0, lsl #2
0053cbc4  a0 00 84 e2                                      add r0, r4, #0xa0
0053cbc8  74 99 f7 eb                                      bl #0x3231a0
0053cbcc  50 31 94 e5                                      ldr r3, [r4, #0x150]
0053cbd0  03 00 a0 e1                                      mov r0, r3
0053cbd4  00 30 93 e5                                      ldr r3, [r3]
0053cbd8  0f e0 a0 e1                                      mov lr, pc
0053cbdc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053cbe0  00 30 e0 e3                                      mvn r3, #0
0053cbe4  00 50 50 e2                                      subs r5, r0, #0
0053cbe8  7f 30 cd e5                                      strb r3, [sp, #0x7f]
0053cbec  7c 30 cd e5                                      strb r3, [sp, #0x7c]
0053cbf0  7d 30 cd e5                                      strb r3, [sp, #0x7d]
0053cbf4  7e 30 cd e5                                      strb r3, [sp, #0x7e]
0053cbf8  05 60 a0 01                                      moveq r6, r5
0053cbfc  11 00 00 0a                                      beq #0x53cc48
0053cc00  00 30 95 e5                                      ldr r3, [r5]
0053cc04  0f e0 a0 e1                                      mov lr, pc
0053cc08  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0053cc0c  00 30 95 e5                                      ldr r3, [r5]
0053cc10  12 10 a0 e3                                      mov r1, #0x12
0053cc14  00 60 a0 e1                                      mov r6, r0
0053cc18  05 00 a0 e1                                      mov r0, r5
0053cc1c  0f e0 a0 e1                                      mov lr, pc
0053cc20  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0053cc24  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0053cc28  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0053cc2c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0053cc30  11 10 cd e5                                      strb r1, [sp, #0x11]
0053cc34  12 20 cd e5                                      strb r2, [sp, #0x12]
0053cc38  13 30 cd e5                                      strb r3, [sp, #0x13]
0053cc3c  10 00 cd e5                                      strb r0, [sp, #0x10]
0053cc40  10 30 9d e5                                      ldr r3, [sp, #0x10]
0053cc44  7c 30 8d e5                                      str r3, [sp, #0x7c]
0053cc48  00 30 97 e5                                      ldr r3, [r7]
0053cc4c  07 00 a0 e1                                      mov r0, r7
0053cc50  0f e0 a0 e1                                      mov lr, pc
0053cc54  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053cc58  02 10 a0 e3                                      mov r1, #2
0053cc5c  00 30 90 e5                                      ldr r3, [r0]
0053cc60  0f e0 a0 e1                                      mov lr, pc
0053cc64  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0053cc68  30 30 94 e5                                      ldr r3, [r4, #0x30]
0053cc6c  50 81 94 e5                                      ldr r8, [r4, #0x150]
0053cc70  28 20 94 e5                                      ldr r2, [r4, #0x28]
0053cc74  04 30 43 e2                                      sub r3, r3, #4
0053cc78  00 10 98 e5                                      ldr r1, [r8]
0053cc7c  03 30 62 e0                                      rsb r3, r2, r3
0053cc80  03 30 60 e0                                      rsb r3, r0, r3
0053cc84  78 70 91 e5                                      ldr r7, [r1, #0x78]
0053cc88  03 20 80 e2                                      add r2, r0, #3
0053cc8c  5c 30 8d e5                                      str r3, [sp, #0x5c]
0053cc90  00 00 83 e0                                      add r0, r3, r0
0053cc94  00 00 55 e3                                      cmp r5, #0
0053cc98  03 30 a0 e3                                      mov r3, #3
0053cc9c  60 30 8d e5                                      str r3, [sp, #0x60]
0053cca0  64 00 8d e5                                      str r0, [sp, #0x64]
0053cca4  68 20 8d e5                                      str r2, [sp, #0x68]
0053cca8  08 01 00 0a                                      beq #0x53d0d0
0053ccac  00 30 95 e5                                      ldr r3, [r5]
0053ccb0  05 00 a0 e1                                      mov r0, r5
0053ccb4  04 10 a0 e3                                      mov r1, #4
0053ccb8  0f e0 a0 e1                                      mov lr, pc
0053ccbc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053ccc0  3c 34 9f e5                                      ldr r3, [pc, #0x43c]
0053ccc4  04 00 8d e5                                      str r0, [sp, #4]
0053ccc8  5c 10 8d e2                                      add r1, sp, #0x5c
0053cccc  03 30 8f e0                                      add r3, pc, r3
0053ccd0  00 30 8d e5                                      str r3, [sp]
0053ccd4  04 20 a0 e1                                      mov r2, r4
0053ccd8  00 30 e0 e3                                      mvn r3, #0
0053ccdc  08 00 a0 e1                                      mov r0, r8
0053cce0  37 ff 2f e1                                      blx r7
0053cce4  ac 01 84 e5                                      str r0, [r4, #0x1ac]
0053cce8  00 30 90 e5                                      ldr r3, [r0]
0053ccec  01 10 a0 e3                                      mov r1, #1
0053ccf0  0f e0 a0 e1                                      mov lr, pc
0053ccf4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053ccf8  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
0053ccfc  00 70 a0 e3                                      mov r7, #0
0053cd00  00 00 56 e3                                      cmp r6, #0
0053cd04  34 71 c3 e5                                      strb r7, [r3, #0x134]
0053cd08  21 00 00 0a                                      beq #0x53cd94
0053cd0c  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
0053cd10  06 10 a0 e1                                      mov r1, r6
0053cd14  03 00 a0 e1                                      mov r0, r3
0053cd18  00 30 93 e5                                      ldr r3, [r3]
0053cd1c  0f e0 a0 e1                                      mov lr, pc
0053cd20  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0053cd24  ac 81 94 e5                                      ldr r8, [r4, #0x1ac]
0053cd28  02 10 a0 e3                                      mov r1, #2
0053cd2c  00 30 95 e5                                      ldr r3, [r5]
0053cd30  00 20 98 e5                                      ldr r2, [r8]
0053cd34  05 00 a0 e1                                      mov r0, r5
0053cd38  94 60 92 e5                                      ldr r6, [r2, #0x94]
0053cd3c  0f e0 a0 e1                                      mov lr, pc
0053cd40  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053cd44  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
0053cd48  00 20 a0 e1                                      mov r2, r0
0053cd4c  07 10 a0 e1                                      mov r1, r7
0053cd50  08 00 a0 e1                                      mov r0, r8
0053cd54  00 70 8d e5                                      str r7, [sp]
0053cd58  36 ff 2f e1                                      blx r6
0053cd5c  ac 81 94 e5                                      ldr r8, [r4, #0x1ac]
0053cd60  02 10 a0 e3                                      mov r1, #2
0053cd64  00 30 95 e5                                      ldr r3, [r5]
0053cd68  00 20 98 e5                                      ldr r2, [r8]
0053cd6c  05 00 a0 e1                                      mov r0, r5
0053cd70  94 60 92 e5                                      ldr r6, [r2, #0x94]
0053cd74  0f e0 a0 e1                                      mov lr, pc
0053cd78  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053cd7c  00 70 8d e5                                      str r7, [sp]
0053cd80  00 20 a0 e1                                      mov r2, r0
0053cd84  01 10 a0 e3                                      mov r1, #1
0053cd88  08 00 a0 e1                                      mov r0, r8
0053cd8c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
0053cd90  36 ff 2f e1                                      blx r6
0053cd94  00 60 a0 e3                                      mov r6, #0
0053cd98  01 10 a0 e3                                      mov r1, #1
0053cd9c  01 20 a0 e1                                      mov r2, r1
0053cda0  ac 01 94 e5                                      ldr r0, [r4, #0x1ac]
0053cda4  06 30 a0 e1                                      mov r3, r6
0053cda8  00 60 8d e5                                      str r6, [sp]
0053cdac  a3 de ff eb                                      bl #0x534840
0053cdb0  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
0053cdb4  06 00 55 e1                                      cmp r5, r6
0053cdb8  00 20 93 e5                                      ldr r2, [r3]
0053cdbc  10 20 12 e5                                      ldr r2, [r2, #-0x10]
0053cdc0  02 30 83 e0                                      add r3, r3, r2
0053cdc4  04 20 93 e5                                      ldr r2, [r3, #4]
0053cdc8  01 20 82 e2                                      add r2, r2, #1
0053cdcc  04 20 83 e5                                      str r2, [r3, #4]
0053cdd0  50 81 94 e5                                      ldr r8, [r4, #0x150]
0053cdd4  30 20 94 e5                                      ldr r2, [r4, #0x30]
0053cdd8  28 30 94 e5                                      ldr r3, [r4, #0x28]
0053cddc  00 10 98 e5                                      ldr r1, [r8]
0053cde0  02 30 63 e0                                      rsb r3, r3, r2
0053cde4  50 20 43 e2                                      sub r2, r3, #0x50
0053cde8  0a 30 43 e2                                      sub r3, r3, #0xa
0053cdec  78 70 91 e5                                      ldr r7, [r1, #0x78]
0053cdf0  4c 20 8d e5                                      str r2, [sp, #0x4c]
0053cdf4  54 30 8d e5                                      str r3, [sp, #0x54]
0053cdf8  1e 20 a0 e3                                      mov r2, #0x1e
0053cdfc  32 30 a0 e3                                      mov r3, #0x32
0053ce00  50 20 8d e5                                      str r2, [sp, #0x50]
0053ce04  58 30 8d e5                                      str r3, [sp, #0x58]
0053ce08  b6 00 00 0a                                      beq #0x53d0e8
0053ce0c  06 10 a0 e1                                      mov r1, r6
0053ce10  00 30 95 e5                                      ldr r3, [r5]
0053ce14  05 00 a0 e1                                      mov r0, r5
0053ce18  0f e0 a0 e1                                      mov lr, pc
0053ce1c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053ce20  00 60 a0 e3                                      mov r6, #0
0053ce24  04 20 a0 e1                                      mov r2, r4
0053ce28  41 00 8d e8                                      stm sp, {r0, r6}
0053ce2c  00 30 e0 e3                                      mvn r3, #0
0053ce30  4c 10 8d e2                                      add r1, sp, #0x4c
0053ce34  08 00 a0 e1                                      mov r0, r8
0053ce38  37 ff 2f e1                                      blx r7
0053ce3c  b0 01 84 e5                                      str r0, [r4, #0x1b0]
0053ce40  00 30 90 e5                                      ldr r3, [r0]
0053ce44  01 10 a0 e3                                      mov r1, #1
0053ce48  0f e0 a0 e1                                      mov lr, pc
0053ce4c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053ce50  01 10 a0 e3                                      mov r1, #1
0053ce54  06 30 a0 e1                                      mov r3, r6
0053ce58  01 20 a0 e1                                      mov r2, r1
0053ce5c  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
0053ce60  00 60 8d e5                                      str r6, [sp]
0053ce64  75 de ff eb                                      bl #0x534840
0053ce68  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
0053ce6c  06 00 55 e1                                      cmp r5, r6
0053ce70  00 20 93 e5                                      ldr r2, [r3]
0053ce74  10 20 12 e5                                      ldr r2, [r2, #-0x10]
0053ce78  02 30 83 e0                                      add r3, r3, r2
0053ce7c  04 20 93 e5                                      ldr r2, [r3, #4]
0053ce80  01 20 82 e2                                      add r2, r2, #1
0053ce84  04 20 83 e5                                      str r2, [r3, #4]
0053ce88  50 71 94 e5                                      ldr r7, [r4, #0x150]
0053ce8c  30 20 94 e5                                      ldr r2, [r4, #0x30]
0053ce90  28 30 94 e5                                      ldr r3, [r4, #0x28]
0053ce94  00 10 97 e5                                      ldr r1, [r7]
0053ce98  02 30 63 e0                                      rsb r3, r3, r2
0053ce9c  50 20 43 e2                                      sub r2, r3, #0x50
0053cea0  0a 30 43 e2                                      sub r3, r3, #0xa
0053cea4  78 60 91 e5                                      ldr r6, [r1, #0x78]
0053cea8  3c 20 8d e5                                      str r2, [sp, #0x3c]
0053ceac  44 30 8d e5                                      str r3, [sp, #0x44]
0053ceb0  37 20 a0 e3                                      mov r2, #0x37
0053ceb4  4b 30 a0 e3                                      mov r3, #0x4b
0053ceb8  40 20 8d e5                                      str r2, [sp, #0x40]
0053cebc  48 30 8d e5                                      str r3, [sp, #0x48]
0053cec0  85 00 00 0a                                      beq #0x53d0dc
0053cec4  05 00 a0 e1                                      mov r0, r5
0053cec8  00 30 95 e5                                      ldr r3, [r5]
0053cecc  01 10 a0 e3                                      mov r1, #1
0053ced0  0f e0 a0 e1                                      mov lr, pc
0053ced4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053ced8  00 50 a0 e3                                      mov r5, #0
0053cedc  04 20 a0 e1                                      mov r2, r4
0053cee0  00 00 8d e5                                      str r0, [sp]
0053cee4  00 30 e0 e3                                      mvn r3, #0
0053cee8  07 00 a0 e1                                      mov r0, r7
0053ceec  3c 10 8d e2                                      add r1, sp, #0x3c
0053cef0  04 50 8d e5                                      str r5, [sp, #4]
0053cef4  36 ff 2f e1                                      blx r6
0053cef8  b4 01 84 e5                                      str r0, [r4, #0x1b4]
0053cefc  00 30 90 e5                                      ldr r3, [r0]
0053cf00  01 10 a0 e3                                      mov r1, #1
0053cf04  0f e0 a0 e1                                      mov lr, pc
0053cf08  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053cf0c  01 10 a0 e3                                      mov r1, #1
0053cf10  b4 01 94 e5                                      ldr r0, [r4, #0x1b4]
0053cf14  01 20 a0 e1                                      mov r2, r1
0053cf18  05 30 a0 e1                                      mov r3, r5
0053cf1c  00 50 8d e5                                      str r5, [sp]
0053cf20  46 de ff eb                                      bl #0x534840
0053cf24  b4 11 94 e5                                      ldr r1, [r4, #0x1b4]
0053cf28  01 60 a0 e3                                      mov r6, #1
0053cf2c  0a 70 a0 e3                                      mov r7, #0xa
0053cf30  00 30 91 e5                                      ldr r3, [r1]
0053cf34  04 20 a0 e1                                      mov r2, r4
0053cf38  10 00 13 e5                                      ldr r0, [r3, #-0x10]
0053cf3c  00 30 e0 e3                                      mvn r3, #0
0053cf40  00 00 81 e0                                      add r0, r1, r0
0053cf44  04 c0 90 e5                                      ldr ip, [r0, #4]
0053cf48  2c 10 8d e2                                      add r1, sp, #0x2c
0053cf4c  06 c0 8c e0                                      add ip, ip, r6
0053cf50  04 c0 80 e5                                      str ip, [r0, #4]
0053cf54  50 01 94 e5                                      ldr r0, [r4, #0x150]
0053cf58  30 e0 94 e5                                      ldr lr, [r4, #0x30]
0053cf5c  28 80 94 e5                                      ldr r8, [r4, #0x28]
0053cf60  00 c0 90 e5                                      ldr ip, [r0]
0053cf64  5a e0 4e e2                                      sub lr, lr, #0x5a
0053cf68  0e e0 68 e0                                      rsb lr, r8, lr
0053cf6c  98 c0 9c e5                                      ldr ip, [ip, #0x98]
0053cf70  37 80 a0 e3                                      mov r8, #0x37
0053cf74  34 e0 8d e5                                      str lr, [sp, #0x34]
0053cf78  e6 e0 a0 e3                                      mov lr, #0xe6
0053cf7c  38 e0 8d e5                                      str lr, [sp, #0x38]
0053cf80  30 80 8d e5                                      str r8, [sp, #0x30]
0053cf84  2c 70 8d e5                                      str r7, [sp, #0x2c]
0053cf88  00 60 8d e5                                      str r6, [sp]
0053cf8c  3c ff 2f e1                                      blx ip
0053cf90  b8 01 84 e5                                      str r0, [r4, #0x1b8]
0053cf94  00 30 90 e5                                      ldr r3, [r0]
0053cf98  06 10 a0 e1                                      mov r1, r6
0053cf9c  0f e0 a0 e1                                      mov lr, pc
0053cfa0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053cfa4  b8 01 94 e5                                      ldr r0, [r4, #0x1b8]
0053cfa8  05 10 a0 e1                                      mov r1, r5
0053cfac  06 20 a0 e1                                      mov r2, r6
0053cfb0  05 30 a0 e1                                      mov r3, r5
0053cfb4  00 60 8d e5                                      str r6, [sp]
0053cfb8  20 de ff eb                                      bl #0x534840
0053cfbc  b8 01 94 e5                                      ldr r0, [r4, #0x1b8]
0053cfc0  1c 20 8d e2                                      add r2, sp, #0x1c
0053cfc4  05 10 a0 e1                                      mov r1, r5
0053cfc8  00 30 90 e5                                      ldr r3, [r0]
0053cfcc  10 c0 13 e5                                      ldr ip, [r3, #-0x10]
0053cfd0  06 30 a0 e1                                      mov r3, r6
0053cfd4  0c 00 80 e0                                      add r0, r0, ip
0053cfd8  04 c0 90 e5                                      ldr ip, [r0, #4]
0053cfdc  06 c0 8c e0                                      add ip, ip, r6
0053cfe0  04 c0 80 e5                                      str ip, [r0, #4]
0053cfe4  50 01 94 e5                                      ldr r0, [r4, #0x150]
0053cfe8  30 e0 94 e5                                      ldr lr, [r4, #0x30]
0053cfec  28 80 94 e5                                      ldr r8, [r4, #0x28]
0053cff0  00 c0 90 e5                                      ldr ip, [r0]
0053cff4  5a e0 4e e2                                      sub lr, lr, #0x5a
0053cff8  0e e0 68 e0                                      rsb lr, r8, lr
0053cffc  a8 c0 9c e5                                      ldr ip, [ip, #0xa8]
0053d000  24 e0 8d e5                                      str lr, [sp, #0x24]
0053d004  32 e0 a0 e3                                      mov lr, #0x32
0053d008  1c 70 8d e5                                      str r7, [sp, #0x1c]
0053d00c  28 e0 8d e5                                      str lr, [sp, #0x28]
0053d010  1e 70 a0 e3                                      mov r7, #0x1e
0053d014  00 e0 e0 e3                                      mvn lr, #0
0053d018  08 e0 8d e5                                      str lr, [sp, #8]
0053d01c  20 70 8d e5                                      str r7, [sp, #0x20]
0053d020  00 50 8d e5                                      str r5, [sp]
0053d024  04 40 8d e5                                      str r4, [sp, #4]
0053d028  0c 50 8d e5                                      str r5, [sp, #0xc]
0053d02c  3c ff 2f e1                                      blx ip
0053d030  bc 01 84 e5                                      str r0, [r4, #0x1bc]
0053d034  00 30 90 e5                                      ldr r3, [r0]
0053d038  06 10 a0 e1                                      mov r1, r6
0053d03c  0f e0 a0 e1                                      mov lr, pc
0053d040  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053d044  bc 01 94 e5                                      ldr r0, [r4, #0x1bc]
0053d048  05 10 a0 e1                                      mov r1, r5
0053d04c  06 20 a0 e1                                      mov r2, r6
0053d050  05 30 a0 e1                                      mov r3, r5
0053d054  00 50 8d e5                                      str r5, [sp]
0053d058  f8 dd ff eb                                      bl #0x534840
0053d05c  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
0053d060  00 20 93 e5                                      ldr r2, [r3]
0053d064  10 20 12 e5                                      ldr r2, [r2, #-0x10]
0053d068  02 30 83 e0                                      add r3, r3, r2
0053d06c  04 20 93 e5                                      ldr r2, [r3, #4]
0053d070  06 20 82 e0                                      add r2, r2, r6
0053d074  04 20 83 e5                                      str r2, [r3, #4]
0053d078  50 31 94 e5                                      ldr r3, [r4, #0x150]
0053d07c  03 00 a0 e1                                      mov r0, r3
0053d080  00 30 93 e5                                      ldr r3, [r3]
0053d084  0f e0 a0 e1                                      mov lr, pc
0053d088  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0053d08c  00 30 90 e5                                      ldr r3, [r0]
0053d090  05 00 53 e1                                      cmp r3, r5
0053d094  04 20 93 15                                      ldrne r2, [r3, #4]
0053d098  06 20 82 10                                      addne r2, r2, r6
0053d09c  04 20 83 15                                      strne r2, [r3, #4]
0053d0a0  c4 01 94 e5                                      ldr r0, [r4, #0x1c4]
0053d0a4  c4 31 84 e5                                      str r3, [r4, #0x1c4]
0053d0a8  00 00 50 e3                                      cmp r0, #0
0053d0ac  00 00 00 0a                                      beq #0x53d0b4
0053d0b0  33 81 f7 eb                                      bl #0x31d584
0053d0b4  01 30 a0 e3                                      mov r3, #1
0053d0b8  04 00 a0 e1                                      mov r0, r4
0053d0bc  3c 31 c4 e5                                      strb r3, [r4, #0x13c]
0053d0c0  f3 fd ff eb                                      bl #0x53c894
0053d0c4  04 00 a0 e1                                      mov r0, r4
0053d0c8  80 d0 8d e2                                      add sp, sp, #0x80
0053d0cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0053d0d0  30 00 9f e5                                      ldr r0, [pc, #0x30]
0053d0d4  00 00 8f e0                                      add r0, pc, r0
0053d0d8  f8 fe ff ea                                      b #0x53ccc0
0053d0dc  28 00 9f e5                                      ldr r0, [pc, #0x28]
0053d0e0  00 00 8f e0                                      add r0, pc, r0
0053d0e4  7b ff ff ea                                      b #0x53ced8
0053d0e8  20 00 9f e5                                      ldr r0, [pc, #0x20]
0053d0ec  00 00 8f e0                                      add r0, pc, r0
0053d0f0  4a ff ff ea                                      b #0x53ce20
; mapping-symbol data/literal pool
0053d0f4  e4 7f 45 00 3c 19 00 00 44 2b 00 00 5c 34 00 00  .byte 0xe4, 0x7f, 0x45, 0x00, 0x3c, 0x19, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x5c, 0x34, 0x00, 0x00
0053d104  44 1f 38 00 9c 10 3a 00 b8 10 3a 00 9c 10 3a 00  .byte 0x44, 0x1f, 0x38, 0x00, 0x9c, 0x10, 0x3a, 0x00, 0xb8, 0x10, 0x3a, 0x00, 0x9c, 0x10, 0x3a, 0x00

; FUNCTION 0x0053d114, declared_size=1592, range_size=1592, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZN6glitch3gui18CGUIFileOpenDialogC2EPKwPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIFileOpenDialog::CGUIFileOpenDialog(wchar_t const*, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
0053d114  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053d118  80 d0 4d e2                                      sub sp, sp, #0x80
0053d11c  98 60 9d e5                                      ldr r6, [sp, #0x98]
0053d120  01 40 a0 e1                                      mov r4, r1
0053d124  03 50 a0 e1                                      mov r5, r3
0053d128  40 e0 96 e5                                      ldr lr, [r6, #0x40]
0053d12c  38 c0 96 e5                                      ldr ip, [r6, #0x38]
0053d130  44 80 96 e5                                      ldr r8, [r6, #0x44]
0053d134  57 ef 4e e2                                      sub lr, lr, #0x15c
0053d138  02 e0 4e e2                                      sub lr, lr, #2
0053d13c  0e e0 6c e0                                      rsb lr, ip, lr
0053d140  ae ef 8e e0                                      add lr, lr, lr, lsr #31
0053d144  3c 10 96 e5                                      ldr r1, [r6, #0x3c]
0053d148  ce e0 a0 e1                                      asr lr, lr, #1
0053d14c  57 cf 8e e2                                      add ip, lr, #0x15c
0053d150  fa 80 48 e2                                      sub r8, r8, #0xfa
0053d154  08 80 61 e0                                      rsb r8, r1, r8
0053d158  02 c0 8c e2                                      add ip, ip, #2
0053d15c  74 c0 8d e5                                      str ip, [sp, #0x74]
0053d160  a8 8f 88 e0                                      add r8, r8, r8, lsr #31
0053d164  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
0053d168  c8 80 a0 e1                                      asr r8, r8, #1
0053d16c  06 30 a0 e1                                      mov r3, r6
0053d170  fa 70 88 e2                                      add r7, r8, #0xfa
0053d174  02 60 a0 e1                                      mov r6, r2
0053d178  04 10 84 e2                                      add r1, r4, #4
0053d17c  05 20 a0 e1                                      mov r2, r5
0053d180  00 c0 8d e5                                      str ip, [sp]
0053d184  6c c0 8d e2                                      add ip, sp, #0x6c
0053d188  6c e0 8d e5                                      str lr, [sp, #0x6c]
0053d18c  70 80 8d e5                                      str r8, [sp, #0x70]
0053d190  78 70 8d e5                                      str r7, [sp, #0x78]
0053d194  04 c0 8d e5                                      str ip, [sp, #4]
0053d198  00 70 a0 e1                                      mov r7, r0
0053d19c  b6 fb ff eb                                      bl #0x53c07c
0053d1a0  00 20 94 e5                                      ldr r2, [r4]
0053d1a4  00 80 a0 e3                                      mov r8, #0
0053d1a8  16 3e 87 e2                                      add r3, r7, #0x160
0053d1ac  00 20 87 e5                                      str r2, [r7]
0053d1b0  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
0053d1b4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0053d1b8  03 00 a0 e1                                      mov r0, r3
0053d1bc  10 10 a0 e3                                      mov r1, #0x10
0053d1c0  02 c0 87 e7                                      str ip, [r7, r2]
0053d1c4  00 20 97 e5                                      ldr r2, [r7]
0053d1c8  20 c0 94 e5                                      ldr ip, [r4, #0x20]
0053d1cc  10 20 12 e5                                      ldr r2, [r2, #-0x10]
0053d1d0  02 c0 87 e7                                      str ip, [r7, r2]
0053d1d4  a0 31 87 e5                                      str r3, [r7, #0x1a0]
0053d1d8  a4 31 87 e5                                      str r3, [r7, #0x1a4]
0053d1dc  58 81 87 e5                                      str r8, [r7, #0x158]
0053d1e0  5c 81 87 e5                                      str r8, [r7, #0x15c]
0053d1e4  cd 8d f7 eb                                      bl #0x320920
0053d1e8  a0 31 97 e5                                      ldr r3, [r7, #0x1a0]
0053d1ec  06 00 a0 e1                                      mov r0, r6
0053d1f0  00 80 83 e5                                      str r8, [r3]
0053d1f4  c8 81 87 e5                                      str r8, [r7, #0x1c8]
0053d1f8  a8 81 c7 e5                                      strb r8, [r7, #0x1a8]
0053d1fc  bc 81 87 e5                                      str r8, [r7, #0x1bc]
0053d200  c4 81 87 e5                                      str r8, [r7, #0x1c4]
0053d204  9f 46 f7 eb                                      bl #0x30ec88
0053d208  06 10 a0 e1                                      mov r1, r6
0053d20c  00 21 86 e0                                      add r2, r6, r0, lsl #2
0053d210  a0 00 87 e2                                      add r0, r7, #0xa0
0053d214  e1 97 f7 eb                                      bl #0x3231a0
0053d218  50 31 97 e5                                      ldr r3, [r7, #0x150]
0053d21c  03 00 a0 e1                                      mov r0, r3
0053d220  00 30 93 e5                                      ldr r3, [r3]
0053d224  0f e0 a0 e1                                      mov lr, pc
0053d228  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053d22c  00 30 e0 e3                                      mvn r3, #0
0053d230  00 40 50 e2                                      subs r4, r0, #0
0053d234  7f 30 cd e5                                      strb r3, [sp, #0x7f]
0053d238  7c 30 cd e5                                      strb r3, [sp, #0x7c]
0053d23c  7d 30 cd e5                                      strb r3, [sp, #0x7d]
0053d240  7e 30 cd e5                                      strb r3, [sp, #0x7e]
0053d244  04 60 a0 01                                      moveq r6, r4
0053d248  11 00 00 0a                                      beq #0x53d294
0053d24c  00 30 94 e5                                      ldr r3, [r4]
0053d250  0f e0 a0 e1                                      mov lr, pc
0053d254  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0053d258  00 30 94 e5                                      ldr r3, [r4]
0053d25c  12 10 a0 e3                                      mov r1, #0x12
0053d260  00 60 a0 e1                                      mov r6, r0
0053d264  04 00 a0 e1                                      mov r0, r4
0053d268  0f e0 a0 e1                                      mov lr, pc
0053d26c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0053d270  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0053d274  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0053d278  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0053d27c  11 10 cd e5                                      strb r1, [sp, #0x11]
0053d280  12 20 cd e5                                      strb r2, [sp, #0x12]
0053d284  13 30 cd e5                                      strb r3, [sp, #0x13]
0053d288  10 00 cd e5                                      strb r0, [sp, #0x10]
0053d28c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0053d290  7c 30 8d e5                                      str r3, [sp, #0x7c]
0053d294  00 30 95 e5                                      ldr r3, [r5]
0053d298  05 00 a0 e1                                      mov r0, r5
0053d29c  0f e0 a0 e1                                      mov lr, pc
0053d2a0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053d2a4  02 10 a0 e3                                      mov r1, #2
0053d2a8  00 30 90 e5                                      ldr r3, [r0]
0053d2ac  0f e0 a0 e1                                      mov lr, pc
0053d2b0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0053d2b4  30 30 97 e5                                      ldr r3, [r7, #0x30]
0053d2b8  50 81 97 e5                                      ldr r8, [r7, #0x150]
0053d2bc  28 20 97 e5                                      ldr r2, [r7, #0x28]
0053d2c0  04 30 43 e2                                      sub r3, r3, #4
0053d2c4  00 10 98 e5                                      ldr r1, [r8]
0053d2c8  03 30 62 e0                                      rsb r3, r2, r3
0053d2cc  03 30 60 e0                                      rsb r3, r0, r3
0053d2d0  78 50 91 e5                                      ldr r5, [r1, #0x78]
0053d2d4  03 20 80 e2                                      add r2, r0, #3
0053d2d8  5c 30 8d e5                                      str r3, [sp, #0x5c]
0053d2dc  00 00 83 e0                                      add r0, r3, r0
0053d2e0  00 00 54 e3                                      cmp r4, #0
0053d2e4  03 30 a0 e3                                      mov r3, #3
0053d2e8  60 30 8d e5                                      str r3, [sp, #0x60]
0053d2ec  64 00 8d e5                                      str r0, [sp, #0x64]
0053d2f0  68 20 8d e5                                      str r2, [sp, #0x68]
0053d2f4  07 01 00 0a                                      beq #0x53d718
0053d2f8  00 30 94 e5                                      ldr r3, [r4]
0053d2fc  04 00 a0 e1                                      mov r0, r4
0053d300  04 10 a0 e3                                      mov r1, #4
0053d304  0f e0 a0 e1                                      mov lr, pc
0053d308  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053d30c  28 34 9f e5                                      ldr r3, [pc, #0x428]
0053d310  04 00 8d e5                                      str r0, [sp, #4]
0053d314  5c 10 8d e2                                      add r1, sp, #0x5c
0053d318  03 30 8f e0                                      add r3, pc, r3
0053d31c  00 30 8d e5                                      str r3, [sp]
0053d320  07 20 a0 e1                                      mov r2, r7
0053d324  00 30 e0 e3                                      mvn r3, #0
0053d328  08 00 a0 e1                                      mov r0, r8
0053d32c  35 ff 2f e1                                      blx r5
0053d330  ac 01 87 e5                                      str r0, [r7, #0x1ac]
0053d334  00 30 90 e5                                      ldr r3, [r0]
0053d338  01 10 a0 e3                                      mov r1, #1
0053d33c  0f e0 a0 e1                                      mov lr, pc
0053d340  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053d344  ac 31 97 e5                                      ldr r3, [r7, #0x1ac]
0053d348  00 50 a0 e3                                      mov r5, #0
0053d34c  00 00 56 e3                                      cmp r6, #0
0053d350  34 51 c3 e5                                      strb r5, [r3, #0x134]
0053d354  21 00 00 0a                                      beq #0x53d3e0
0053d358  ac 31 97 e5                                      ldr r3, [r7, #0x1ac]
0053d35c  06 10 a0 e1                                      mov r1, r6
0053d360  03 00 a0 e1                                      mov r0, r3
0053d364  00 30 93 e5                                      ldr r3, [r3]
0053d368  0f e0 a0 e1                                      mov lr, pc
0053d36c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0053d370  ac 81 97 e5                                      ldr r8, [r7, #0x1ac]
0053d374  02 10 a0 e3                                      mov r1, #2
0053d378  00 30 94 e5                                      ldr r3, [r4]
0053d37c  00 20 98 e5                                      ldr r2, [r8]
0053d380  04 00 a0 e1                                      mov r0, r4
0053d384  94 60 92 e5                                      ldr r6, [r2, #0x94]
0053d388  0f e0 a0 e1                                      mov lr, pc
0053d38c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053d390  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
0053d394  00 20 a0 e1                                      mov r2, r0
0053d398  05 10 a0 e1                                      mov r1, r5
0053d39c  08 00 a0 e1                                      mov r0, r8
0053d3a0  00 50 8d e5                                      str r5, [sp]
0053d3a4  36 ff 2f e1                                      blx r6
0053d3a8  ac 81 97 e5                                      ldr r8, [r7, #0x1ac]
0053d3ac  02 10 a0 e3                                      mov r1, #2
0053d3b0  00 30 94 e5                                      ldr r3, [r4]
0053d3b4  00 20 98 e5                                      ldr r2, [r8]
0053d3b8  04 00 a0 e1                                      mov r0, r4
0053d3bc  94 60 92 e5                                      ldr r6, [r2, #0x94]
0053d3c0  0f e0 a0 e1                                      mov lr, pc
0053d3c4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053d3c8  00 50 8d e5                                      str r5, [sp]
0053d3cc  00 20 a0 e1                                      mov r2, r0
0053d3d0  01 10 a0 e3                                      mov r1, #1
0053d3d4  08 00 a0 e1                                      mov r0, r8
0053d3d8  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
0053d3dc  36 ff 2f e1                                      blx r6
0053d3e0  00 50 a0 e3                                      mov r5, #0
0053d3e4  01 10 a0 e3                                      mov r1, #1
0053d3e8  01 20 a0 e1                                      mov r2, r1
0053d3ec  ac 01 97 e5                                      ldr r0, [r7, #0x1ac]
0053d3f0  05 30 a0 e1                                      mov r3, r5
0053d3f4  00 50 8d e5                                      str r5, [sp]
0053d3f8  10 dd ff eb                                      bl #0x534840
0053d3fc  ac 31 97 e5                                      ldr r3, [r7, #0x1ac]
0053d400  05 00 54 e1                                      cmp r4, r5
0053d404  00 20 93 e5                                      ldr r2, [r3]
0053d408  10 20 12 e5                                      ldr r2, [r2, #-0x10]
0053d40c  02 30 83 e0                                      add r3, r3, r2
0053d410  04 20 93 e5                                      ldr r2, [r3, #4]
0053d414  01 20 82 e2                                      add r2, r2, #1
0053d418  04 20 83 e5                                      str r2, [r3, #4]
0053d41c  50 81 97 e5                                      ldr r8, [r7, #0x150]
0053d420  30 20 97 e5                                      ldr r2, [r7, #0x30]
0053d424  28 30 97 e5                                      ldr r3, [r7, #0x28]
0053d428  00 10 98 e5                                      ldr r1, [r8]
0053d42c  02 30 63 e0                                      rsb r3, r3, r2
0053d430  50 20 43 e2                                      sub r2, r3, #0x50
0053d434  0a 30 43 e2                                      sub r3, r3, #0xa
0053d438  78 60 91 e5                                      ldr r6, [r1, #0x78]
0053d43c  4c 20 8d e5                                      str r2, [sp, #0x4c]
0053d440  54 30 8d e5                                      str r3, [sp, #0x54]
0053d444  1e 20 a0 e3                                      mov r2, #0x1e
0053d448  32 30 a0 e3                                      mov r3, #0x32
0053d44c  50 20 8d e5                                      str r2, [sp, #0x50]
0053d450  58 30 8d e5                                      str r3, [sp, #0x58]
0053d454  b5 00 00 0a                                      beq #0x53d730
0053d458  05 10 a0 e1                                      mov r1, r5
0053d45c  00 30 94 e5                                      ldr r3, [r4]
0053d460  04 00 a0 e1                                      mov r0, r4
0053d464  0f e0 a0 e1                                      mov lr, pc
0053d468  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053d46c  00 50 a0 e3                                      mov r5, #0
0053d470  07 20 a0 e1                                      mov r2, r7
0053d474  21 00 8d e8                                      stm sp, {r0, r5}
0053d478  00 30 e0 e3                                      mvn r3, #0
0053d47c  4c 10 8d e2                                      add r1, sp, #0x4c
0053d480  08 00 a0 e1                                      mov r0, r8
0053d484  36 ff 2f e1                                      blx r6
0053d488  b0 01 87 e5                                      str r0, [r7, #0x1b0]
0053d48c  00 30 90 e5                                      ldr r3, [r0]
0053d490  01 10 a0 e3                                      mov r1, #1
0053d494  0f e0 a0 e1                                      mov lr, pc
0053d498  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053d49c  01 10 a0 e3                                      mov r1, #1
0053d4a0  05 30 a0 e1                                      mov r3, r5
0053d4a4  01 20 a0 e1                                      mov r2, r1
0053d4a8  b0 01 97 e5                                      ldr r0, [r7, #0x1b0]
0053d4ac  00 50 8d e5                                      str r5, [sp]
0053d4b0  e2 dc ff eb                                      bl #0x534840
0053d4b4  b0 31 97 e5                                      ldr r3, [r7, #0x1b0]
0053d4b8  05 00 54 e1                                      cmp r4, r5
0053d4bc  00 20 93 e5                                      ldr r2, [r3]
0053d4c0  10 20 12 e5                                      ldr r2, [r2, #-0x10]
0053d4c4  02 30 83 e0                                      add r3, r3, r2
0053d4c8  04 20 93 e5                                      ldr r2, [r3, #4]
0053d4cc  01 20 82 e2                                      add r2, r2, #1
0053d4d0  04 20 83 e5                                      str r2, [r3, #4]
0053d4d4  50 61 97 e5                                      ldr r6, [r7, #0x150]
0053d4d8  30 20 97 e5                                      ldr r2, [r7, #0x30]
0053d4dc  28 30 97 e5                                      ldr r3, [r7, #0x28]
0053d4e0  00 10 96 e5                                      ldr r1, [r6]
0053d4e4  02 30 63 e0                                      rsb r3, r3, r2
0053d4e8  50 20 43 e2                                      sub r2, r3, #0x50
0053d4ec  0a 30 43 e2                                      sub r3, r3, #0xa
0053d4f0  78 50 91 e5                                      ldr r5, [r1, #0x78]
0053d4f4  3c 20 8d e5                                      str r2, [sp, #0x3c]
0053d4f8  44 30 8d e5                                      str r3, [sp, #0x44]
0053d4fc  37 20 a0 e3                                      mov r2, #0x37
0053d500  4b 30 a0 e3                                      mov r3, #0x4b
0053d504  40 20 8d e5                                      str r2, [sp, #0x40]
0053d508  48 30 8d e5                                      str r3, [sp, #0x48]
0053d50c  84 00 00 0a                                      beq #0x53d724
0053d510  04 00 a0 e1                                      mov r0, r4
0053d514  00 30 94 e5                                      ldr r3, [r4]
0053d518  01 10 a0 e3                                      mov r1, #1
0053d51c  0f e0 a0 e1                                      mov lr, pc
0053d520  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053d524  00 40 a0 e3                                      mov r4, #0
0053d528  07 20 a0 e1                                      mov r2, r7
0053d52c  00 00 8d e5                                      str r0, [sp]
0053d530  00 30 e0 e3                                      mvn r3, #0
0053d534  06 00 a0 e1                                      mov r0, r6
0053d538  3c 10 8d e2                                      add r1, sp, #0x3c
0053d53c  04 40 8d e5                                      str r4, [sp, #4]
0053d540  35 ff 2f e1                                      blx r5
0053d544  b4 01 87 e5                                      str r0, [r7, #0x1b4]
0053d548  00 30 90 e5                                      ldr r3, [r0]
0053d54c  01 10 a0 e3                                      mov r1, #1
0053d550  0f e0 a0 e1                                      mov lr, pc
0053d554  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053d558  01 10 a0 e3                                      mov r1, #1
0053d55c  b4 01 97 e5                                      ldr r0, [r7, #0x1b4]
0053d560  01 20 a0 e1                                      mov r2, r1
0053d564  04 30 a0 e1                                      mov r3, r4
0053d568  00 40 8d e5                                      str r4, [sp]
0053d56c  b3 dc ff eb                                      bl #0x534840
0053d570  b4 11 97 e5                                      ldr r1, [r7, #0x1b4]
0053d574  01 50 a0 e3                                      mov r5, #1
0053d578  0a 60 a0 e3                                      mov r6, #0xa
0053d57c  00 30 91 e5                                      ldr r3, [r1]
0053d580  07 20 a0 e1                                      mov r2, r7
0053d584  10 00 13 e5                                      ldr r0, [r3, #-0x10]
0053d588  00 30 e0 e3                                      mvn r3, #0
0053d58c  00 00 81 e0                                      add r0, r1, r0
0053d590  04 c0 90 e5                                      ldr ip, [r0, #4]
0053d594  2c 10 8d e2                                      add r1, sp, #0x2c
0053d598  05 c0 8c e0                                      add ip, ip, r5
0053d59c  04 c0 80 e5                                      str ip, [r0, #4]
0053d5a0  50 01 97 e5                                      ldr r0, [r7, #0x150]
0053d5a4  30 e0 97 e5                                      ldr lr, [r7, #0x30]
0053d5a8  28 80 97 e5                                      ldr r8, [r7, #0x28]
0053d5ac  00 c0 90 e5                                      ldr ip, [r0]
0053d5b0  5a e0 4e e2                                      sub lr, lr, #0x5a
0053d5b4  0e e0 68 e0                                      rsb lr, r8, lr
0053d5b8  98 c0 9c e5                                      ldr ip, [ip, #0x98]
0053d5bc  37 80 a0 e3                                      mov r8, #0x37
0053d5c0  34 e0 8d e5                                      str lr, [sp, #0x34]
0053d5c4  e6 e0 a0 e3                                      mov lr, #0xe6
0053d5c8  38 e0 8d e5                                      str lr, [sp, #0x38]
0053d5cc  30 80 8d e5                                      str r8, [sp, #0x30]
0053d5d0  2c 60 8d e5                                      str r6, [sp, #0x2c]
0053d5d4  00 50 8d e5                                      str r5, [sp]
0053d5d8  3c ff 2f e1                                      blx ip
0053d5dc  b8 01 87 e5                                      str r0, [r7, #0x1b8]
0053d5e0  00 30 90 e5                                      ldr r3, [r0]
0053d5e4  05 10 a0 e1                                      mov r1, r5
0053d5e8  0f e0 a0 e1                                      mov lr, pc
0053d5ec  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053d5f0  b8 01 97 e5                                      ldr r0, [r7, #0x1b8]
0053d5f4  04 10 a0 e1                                      mov r1, r4
0053d5f8  05 20 a0 e1                                      mov r2, r5
0053d5fc  04 30 a0 e1                                      mov r3, r4
0053d600  00 50 8d e5                                      str r5, [sp]
0053d604  8d dc ff eb                                      bl #0x534840
0053d608  b8 01 97 e5                                      ldr r0, [r7, #0x1b8]
0053d60c  1c 20 8d e2                                      add r2, sp, #0x1c
0053d610  04 10 a0 e1                                      mov r1, r4
0053d614  00 30 90 e5                                      ldr r3, [r0]
0053d618  10 c0 13 e5                                      ldr ip, [r3, #-0x10]
0053d61c  05 30 a0 e1                                      mov r3, r5
0053d620  0c 00 80 e0                                      add r0, r0, ip
0053d624  04 c0 90 e5                                      ldr ip, [r0, #4]
0053d628  05 c0 8c e0                                      add ip, ip, r5
0053d62c  04 c0 80 e5                                      str ip, [r0, #4]
0053d630  50 01 97 e5                                      ldr r0, [r7, #0x150]
0053d634  30 e0 97 e5                                      ldr lr, [r7, #0x30]
0053d638  28 80 97 e5                                      ldr r8, [r7, #0x28]
0053d63c  00 c0 90 e5                                      ldr ip, [r0]
0053d640  5a e0 4e e2                                      sub lr, lr, #0x5a
0053d644  0e e0 68 e0                                      rsb lr, r8, lr
0053d648  a8 c0 9c e5                                      ldr ip, [ip, #0xa8]
0053d64c  24 e0 8d e5                                      str lr, [sp, #0x24]
0053d650  32 e0 a0 e3                                      mov lr, #0x32
0053d654  1c 60 8d e5                                      str r6, [sp, #0x1c]
0053d658  28 e0 8d e5                                      str lr, [sp, #0x28]
0053d65c  1e 60 a0 e3                                      mov r6, #0x1e
0053d660  00 e0 e0 e3                                      mvn lr, #0
0053d664  08 e0 8d e5                                      str lr, [sp, #8]
0053d668  20 60 8d e5                                      str r6, [sp, #0x20]
0053d66c  90 00 8d e8                                      stm sp, {r4, r7}
0053d670  0c 40 8d e5                                      str r4, [sp, #0xc]
0053d674  3c ff 2f e1                                      blx ip
0053d678  bc 01 87 e5                                      str r0, [r7, #0x1bc]
0053d67c  00 30 90 e5                                      ldr r3, [r0]
0053d680  05 10 a0 e1                                      mov r1, r5
0053d684  0f e0 a0 e1                                      mov lr, pc
0053d688  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053d68c  bc 01 97 e5                                      ldr r0, [r7, #0x1bc]
0053d690  04 10 a0 e1                                      mov r1, r4
0053d694  05 20 a0 e1                                      mov r2, r5
0053d698  04 30 a0 e1                                      mov r3, r4
0053d69c  00 40 8d e5                                      str r4, [sp]
0053d6a0  66 dc ff eb                                      bl #0x534840
0053d6a4  bc 31 97 e5                                      ldr r3, [r7, #0x1bc]
0053d6a8  00 20 93 e5                                      ldr r2, [r3]
0053d6ac  10 20 12 e5                                      ldr r2, [r2, #-0x10]
0053d6b0  02 30 83 e0                                      add r3, r3, r2
0053d6b4  04 20 93 e5                                      ldr r2, [r3, #4]
0053d6b8  05 20 82 e0                                      add r2, r2, r5
0053d6bc  04 20 83 e5                                      str r2, [r3, #4]
0053d6c0  50 31 97 e5                                      ldr r3, [r7, #0x150]
0053d6c4  03 00 a0 e1                                      mov r0, r3
0053d6c8  00 30 93 e5                                      ldr r3, [r3]
0053d6cc  0f e0 a0 e1                                      mov lr, pc
0053d6d0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0053d6d4  00 30 90 e5                                      ldr r3, [r0]
0053d6d8  04 00 53 e1                                      cmp r3, r4
0053d6dc  04 20 93 15                                      ldrne r2, [r3, #4]
0053d6e0  05 20 82 10                                      addne r2, r2, r5
0053d6e4  04 20 83 15                                      strne r2, [r3, #4]
0053d6e8  c4 01 97 e5                                      ldr r0, [r7, #0x1c4]
0053d6ec  c4 31 87 e5                                      str r3, [r7, #0x1c4]
0053d6f0  00 00 50 e3                                      cmp r0, #0
0053d6f4  00 00 00 0a                                      beq #0x53d6fc
0053d6f8  a1 7f f7 eb                                      bl #0x31d584
0053d6fc  01 30 a0 e3                                      mov r3, #1
0053d700  07 00 a0 e1                                      mov r0, r7
0053d704  3c 31 c7 e5                                      strb r3, [r7, #0x13c]
0053d708  61 fc ff eb                                      bl #0x53c894
0053d70c  07 00 a0 e1                                      mov r0, r7
0053d710  80 d0 8d e2                                      add sp, sp, #0x80
0053d714  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0053d718  20 00 9f e5                                      ldr r0, [pc, #0x20]
0053d71c  00 00 8f e0                                      add r0, pc, r0
0053d720  f9 fe ff ea                                      b #0x53d30c
0053d724  18 00 9f e5                                      ldr r0, [pc, #0x18]
0053d728  00 00 8f e0                                      add r0, pc, r0
0053d72c  7c ff ff ea                                      b #0x53d524
0053d730  10 00 9f e5                                      ldr r0, [pc, #0x10]
0053d734  00 00 8f e0                                      add r0, pc, r0
0053d738  4b ff ff ea                                      b #0x53d46c
; mapping-symbol data/literal pool
0053d73c  f8 18 38 00 54 0a 3a 00 70 0a 3a 00 54 0a 3a 00  .byte 0xf8, 0x18, 0x38, 0x00, 0x54, 0x0a, 0x3a, 0x00, 0x70, 0x0a, 0x3a, 0x00, 0x54, 0x0a, 0x3a, 0x00

; FUNCTION 0x0053d74c, declared_size=1088, range_size=1088, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZN6glitch3gui18CGUIFileOpenDialog7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIFileOpenDialog::onEvent(glitch::SEvent const&)
; decoder-mode: arm
0053d74c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0053d750  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
0053d754  9c d0 4d e2                                      sub sp, sp, #0x9c
0053d758  00 40 a0 e1                                      mov r4, r0
0053d75c  00 00 53 e3                                      cmp r3, #0
0053d760  01 50 a0 e1                                      mov r5, r1
0053d764  27 00 00 0a                                      beq #0x53d808
0053d768  00 30 91 e5                                      ldr r3, [r1]
0053d76c  00 00 53 e3                                      cmp r3, #0
0053d770  2f 00 00 1a                                      bne #0x53d834
0053d774  10 30 91 e5                                      ldr r3, [r1, #0x10]
0053d778  09 00 53 e3                                      cmp r3, #9
0053d77c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0053d780  20 00 00 ea                                      b #0x53d808
0053d784  3e 00 00 ea                                      b #0x53d884
0053d788  1e 00 00 ea                                      b #0x53d808
0053d78c  1d 00 00 ea                                      b #0x53d808
0053d790  1c 00 00 ea                                      b #0x53d808
0053d794  1b 00 00 ea                                      b #0x53d808
0053d798  3c 00 00 ea                                      b #0x53d890
0053d79c  19 00 00 ea                                      b #0x53d808
0053d7a0  18 00 00 ea                                      b #0x53d808
0053d7a4  55 00 00 ea                                      b #0x53d900
0053d7a8  6c 00 00 ea                                      b #0x53d960
0053d7ac  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
0053d7b0  06 10 a0 e1                                      mov r1, r6
0053d7b4  48 60 8d e2                                      add r6, sp, #0x48
0053d7b8  03 00 a0 e1                                      mov r0, r3
0053d7bc  00 30 93 e5                                      ldr r3, [r3]
0053d7c0  0f e0 a0 e1                                      mov lr, pc
0053d7c4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0053d7c8  16 7e 84 e2                                      add r7, r4, #0x160
0053d7cc  00 10 a0 e1                                      mov r1, r0
0053d7d0  06 00 a0 e1                                      mov r0, r6
0053d7d4  bb a2 f7 eb                                      bl #0x3262c8
0053d7d8  06 00 57 e1                                      cmp r7, r6
0053d7dc  03 00 00 0a                                      beq #0x53d7f0
0053d7e0  07 00 a0 e1                                      mov r0, r7
0053d7e4  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
0053d7e8  88 20 9d e5                                      ldr r2, [sp, #0x88]
0053d7ec  6b 96 f7 eb                                      bl #0x3231a0
0053d7f0  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
0053d7f4  06 00 50 e1                                      cmp r0, r6
0053d7f8  02 00 00 0a                                      beq #0x53d808
0053d7fc  00 00 50 e3                                      cmp r0, #0
0053d800  00 00 00 0a                                      beq #0x53d808
0053d804  11 4b f7 eb                                      bl #0x310450
0053d808  24 30 94 e5                                      ldr r3, [r4, #0x24]
0053d80c  00 00 53 e3                                      cmp r3, #0
0053d810  03 00 a0 01                                      moveq r0, r3
0053d814  04 00 00 0a                                      beq #0x53d82c
0053d818  03 00 a0 e1                                      mov r0, r3
0053d81c  05 10 a0 e1                                      mov r1, r5
0053d820  00 30 93 e5                                      ldr r3, [r3]
0053d824  0f e0 a0 e1                                      mov lr, pc
0053d828  08 f0 93 e5                                      ldr pc, [r3, #8]
0053d82c  9c d0 8d e2                                      add sp, sp, #0x9c
0053d830  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0053d834  01 00 53 e3                                      cmp r3, #1
0053d838  f2 ff ff 1a                                      bne #0x53d808
0053d83c  14 30 91 e5                                      ldr r3, [r1, #0x14]
0053d840  07 00 53 e3                                      cmp r3, #7
0053d844  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0053d848  ee ff ff ea                                      b #0x53d808
0053d84c  6d 00 00 ea                                      b #0x53da08
0053d850  ec ff ff ea                                      b #0x53d808
0053d854  eb ff ff ea                                      b #0x53d808
0053d858  66 00 00 ea                                      b #0x53d9f8
0053d85c  e9 ff ff ea                                      b #0x53d808
0053d860  e8 ff ff ea                                      b #0x53d808
0053d864  75 00 00 ea                                      b #0x53da40
0053d868  ff ff ff ea                                      b #0x53d86c
0053d86c  b8 31 90 e5                                      ldr r3, [r0, #0x1b8]
0053d870  03 00 a0 e1                                      mov r0, r3
0053d874  00 30 93 e5                                      ldr r3, [r3]
0053d878  0f e0 a0 e1                                      mov lr, pc
0053d87c  08 f0 93 e5                                      ldr pc, [r3, #8]
0053d880  e9 ff ff ea                                      b #0x53d82c
0053d884  00 30 a0 e3                                      mov r3, #0
0053d888  a8 31 c0 e5                                      strb r3, [r0, #0x1a8]
0053d88c  dd ff ff ea                                      b #0x53d808
0053d890  08 30 91 e5                                      ldr r3, [r1, #8]
0053d894  ac 21 90 e5                                      ldr r2, [r0, #0x1ac]
0053d898  02 00 53 e1                                      cmp r3, r2
0053d89c  a7 00 00 0a                                      beq #0x53db40
0053d8a0  b4 21 90 e5                                      ldr r2, [r0, #0x1b4]
0053d8a4  02 00 53 e1                                      cmp r3, r2
0053d8a8  a4 00 00 0a                                      beq #0x53db40
0053d8ac  b0 21 90 e5                                      ldr r2, [r0, #0x1b0]
0053d8b0  02 00 53 e1                                      cmp r3, r2
0053d8b4  d3 ff ff 1a                                      bne #0x53d808
0053d8b8  c0 62 9f e5                                      ldr r6, [pc, #0x2c0]
0053d8bc  06 60 8f e0                                      add r6, pc, r6
0053d8c0  06 00 a0 e1                                      mov r0, r6
0053d8c4  ef 44 f7 eb                                      bl #0x30ec88
0053d8c8  a0 31 94 e5                                      ldr r3, [r4, #0x1a0]
0053d8cc  00 20 a0 e1                                      mov r2, r0
0053d8d0  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
0053d8d4  03 30 60 e0                                      rsb r3, r0, r3
0053d8d8  43 01 52 e1                                      cmp r2, r3, asr #2
0053d8dc  a2 00 00 0a                                      beq #0x53db6c
0053d8e0  04 00 a0 e1                                      mov r0, r4
0053d8e4  b2 f9 ff eb                                      bl #0x53bfb4
0053d8e8  04 00 a0 e1                                      mov r0, r4
0053d8ec  00 30 94 e5                                      ldr r3, [r4]
0053d8f0  0f e0 a0 e1                                      mov lr, pc
0053d8f4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053d8f8  01 00 a0 e3                                      mov r0, #1
0053d8fc  ca ff ff ea                                      b #0x53d82c
0053d900  b8 31 90 e5                                      ldr r3, [r0, #0x1b8]
0053d904  03 00 a0 e1                                      mov r0, r3
0053d908  00 30 93 e5                                      ldr r3, [r3]
0053d90c  0f e0 a0 e1                                      mov lr, pc
0053d910  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0053d914  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
0053d918  00 60 a0 e1                                      mov r6, r0
0053d91c  00 00 53 e3                                      cmp r3, #0
0053d920  b8 ff ff 0a                                      beq #0x53d808
0053d924  c4 21 94 e5                                      ldr r2, [r4, #0x1c4]
0053d928  00 00 52 e3                                      cmp r2, #0
0053d92c  b5 ff ff 0a                                      beq #0x53d808
0053d930  03 00 a0 e1                                      mov r0, r3
0053d934  06 10 a0 e1                                      mov r1, r6
0053d938  00 30 93 e5                                      ldr r3, [r3]
0053d93c  0f e0 a0 e1                                      mov lr, pc
0053d940  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0053d944  00 00 50 e3                                      cmp r0, #0
0053d948  97 ff ff 0a                                      beq #0x53d7ac
0053d94c  30 12 9f e5                                      ldr r1, [pc, #0x230]
0053d950  16 0e 84 e2                                      add r0, r4, #0x160
0053d954  01 10 8f e0                                      add r1, pc, r1
0053d958  bd f9 ff eb                                      bl #0x53c054
0053d95c  a9 ff ff ea                                      b #0x53d808
0053d960  b8 31 90 e5                                      ldr r3, [r0, #0x1b8]
0053d964  03 00 a0 e1                                      mov r0, r3
0053d968  00 30 93 e5                                      ldr r3, [r3]
0053d96c  0f e0 a0 e1                                      mov lr, pc
0053d970  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0053d974  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
0053d978  00 60 a0 e1                                      mov r6, r0
0053d97c  00 00 53 e3                                      cmp r3, #0
0053d980  a0 ff ff 0a                                      beq #0x53d808
0053d984  c4 21 94 e5                                      ldr r2, [r4, #0x1c4]
0053d988  00 00 52 e3                                      cmp r2, #0
0053d98c  9d ff ff 0a                                      beq #0x53d808
0053d990  03 00 a0 e1                                      mov r0, r3
0053d994  06 10 a0 e1                                      mov r1, r6
0053d998  00 30 93 e5                                      ldr r3, [r3]
0053d99c  0f e0 a0 e1                                      mov lr, pc
0053d9a0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0053d9a4  00 00 50 e3                                      cmp r0, #0
0053d9a8  4b 00 00 0a                                      beq #0x53dadc
0053d9ac  c4 71 94 e5                                      ldr r7, [r4, #0x1c4]
0053d9b0  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
0053d9b4  06 10 a0 e1                                      mov r1, r6
0053d9b8  00 20 97 e5                                      ldr r2, [r7]
0053d9bc  03 00 a0 e1                                      mov r0, r3
0053d9c0  00 30 93 e5                                      ldr r3, [r3]
0053d9c4  30 60 92 e5                                      ldr r6, [r2, #0x30]
0053d9c8  0f e0 a0 e1                                      mov lr, pc
0053d9cc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0053d9d0  00 10 a0 e1                                      mov r1, r0
0053d9d4  07 00 a0 e1                                      mov r0, r7
0053d9d8  36 ff 2f e1                                      blx r6
0053d9dc  04 00 a0 e1                                      mov r0, r4
0053d9e0  ab fb ff eb                                      bl #0x53c894
0053d9e4  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
0053d9e8  16 0e 84 e2                                      add r0, r4, #0x160
0053d9ec  01 10 8f e0                                      add r1, pc, r1
0053d9f0  97 f9 ff eb                                      bl #0x53c054
0053d9f4  83 ff ff ea                                      b #0x53d808
0053d9f8  00 30 a0 e3                                      mov r3, #0
0053d9fc  a8 31 c0 e5                                      strb r3, [r0, #0x1a8]
0053da00  01 00 a0 e3                                      mov r0, #1
0053da04  88 ff ff ea                                      b #0x53d82c
0053da08  08 20 91 e5                                      ldr r2, [r1, #8]
0053da0c  50 31 90 e5                                      ldr r3, [r0, #0x150]
0053da10  01 60 a0 e3                                      mov r6, #1
0053da14  58 21 80 e5                                      str r2, [r0, #0x158]
0053da18  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0053da1c  a8 61 c0 e5                                      strb r6, [r0, #0x1a8]
0053da20  04 10 a0 e1                                      mov r1, r4
0053da24  5c 21 84 e5                                      str r2, [r4, #0x15c]
0053da28  03 00 a0 e1                                      mov r0, r3
0053da2c  00 30 93 e5                                      ldr r3, [r3]
0053da30  0f e0 a0 e1                                      mov lr, pc
0053da34  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0053da38  06 00 a0 e1                                      mov r0, r6
0053da3c  7a ff ff ea                                      b #0x53d82c
0053da40  a8 31 d0 e5                                      ldrb r3, [r0, #0x1a8]
0053da44  00 00 53 e3                                      cmp r3, #0
0053da48  6e ff ff 0a                                      beq #0x53d808
0053da4c  24 30 90 e5                                      ldr r3, [r0, #0x24]
0053da50  00 00 53 e3                                      cmp r3, #0
0053da54  41 00 00 0a                                      beq #0x53db60
0053da58  38 10 93 e5                                      ldr r1, [r3, #0x38]
0053da5c  08 20 95 e5                                      ldr r2, [r5, #8]
0053da60  01 00 52 e1                                      cmp r2, r1
0053da64  1a 00 00 da                                      ble #0x53dad4
0053da68  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
0053da6c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0053da70  00 00 51 e1                                      cmp r1, r0
0053da74  16 00 00 da                                      ble #0x53dad4
0053da78  40 00 93 e5                                      ldr r0, [r3, #0x40]
0053da7c  00 00 52 e1                                      cmp r2, r0
0053da80  13 00 00 aa                                      bge #0x53dad4
0053da84  44 30 93 e5                                      ldr r3, [r3, #0x44]
0053da88  03 00 51 e1                                      cmp r1, r3
0053da8c  10 00 00 aa                                      bge #0x53dad4
0053da90  58 01 94 e5                                      ldr r0, [r4, #0x158]
0053da94  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
0053da98  00 30 94 e5                                      ldr r3, [r4]
0053da9c  02 20 60 e0                                      rsb r2, r0, r2
0053daa0  01 10 6c e0                                      rsb r1, ip, r1
0053daa4  28 30 93 e5                                      ldr r3, [r3, #0x28]
0053daa8  04 00 a0 e1                                      mov r0, r4
0053daac  94 10 8d e5                                      str r1, [sp, #0x94]
0053dab0  90 20 8d e5                                      str r2, [sp, #0x90]
0053dab4  90 10 8d e2                                      add r1, sp, #0x90
0053dab8  33 ff 2f e1                                      blx r3
0053dabc  08 30 95 e5                                      ldr r3, [r5, #8]
0053dac0  01 00 a0 e3                                      mov r0, #1
0053dac4  58 31 84 e5                                      str r3, [r4, #0x158]
0053dac8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0053dacc  5c 31 84 e5                                      str r3, [r4, #0x15c]
0053dad0  55 ff ff ea                                      b #0x53d82c
0053dad4  01 00 a0 e3                                      mov r0, #1
0053dad8  53 ff ff ea                                      b #0x53d82c
0053dadc  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
0053dae0  06 10 a0 e1                                      mov r1, r6
0053dae4  0d 50 a0 e1                                      mov r5, sp
0053dae8  03 00 a0 e1                                      mov r0, r3
0053daec  00 30 93 e5                                      ldr r3, [r3]
0053daf0  0f e0 a0 e1                                      mov lr, pc
0053daf4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0053daf8  16 4e 84 e2                                      add r4, r4, #0x160
0053dafc  00 10 a0 e1                                      mov r1, r0
0053db00  0d 00 a0 e1                                      mov r0, sp
0053db04  ef a1 f7 eb                                      bl #0x3262c8
0053db08  05 00 54 e1                                      cmp r4, r5
0053db0c  03 00 00 0a                                      beq #0x53db20
0053db10  04 00 a0 e1                                      mov r0, r4
0053db14  44 10 9d e5                                      ldr r1, [sp, #0x44]
0053db18  40 20 9d e5                                      ldr r2, [sp, #0x40]
0053db1c  9f 95 f7 eb                                      bl #0x3231a0
0053db20  44 00 9d e5                                      ldr r0, [sp, #0x44]
0053db24  05 00 50 e1                                      cmp r0, r5
0053db28  e9 ff ff 0a                                      beq #0x53dad4
0053db2c  00 00 50 e3                                      cmp r0, #0
0053db30  e7 ff ff 0a                                      beq #0x53dad4
0053db34  45 4a f7 eb                                      bl #0x310450
0053db38  01 00 a0 e3                                      mov r0, #1
0053db3c  3a ff ff ea                                      b #0x53d82c
0053db40  04 00 a0 e1                                      mov r0, r4
0053db44  2a f9 ff eb                                      bl #0x53bff4
0053db48  04 00 a0 e1                                      mov r0, r4
0053db4c  00 30 94 e5                                      ldr r3, [r4]
0053db50  0f e0 a0 e1                                      mov lr, pc
0053db54  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053db58  01 00 a0 e3                                      mov r0, #1
0053db5c  32 ff ff ea                                      b #0x53d82c
0053db60  08 20 91 e5                                      ldr r2, [r1, #8]
0053db64  0c 10 91 e5                                      ldr r1, [r1, #0xc]
0053db68  c8 ff ff ea                                      b #0x53da90
0053db6c  06 10 a0 e1                                      mov r1, r6
0053db70  92 44 f7 eb                                      bl #0x30edc0
0053db74  00 00 50 e3                                      cmp r0, #0
0053db78  58 ff ff 1a                                      bne #0x53d8e0
0053db7c  21 ff ff ea                                      b #0x53d808
; mapping-symbol data/literal pool
0053db80  54 13 38 00 bc 12 38 00 24 12 38 00              .byte 0x54, 0x13, 0x38, 0x00, 0xbc, 0x12, 0x38, 0x00, 0x24, 0x12, 0x38, 0x00

; FUNCTION 0x0053db8c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZTv0_n24_N6glitch3gui18CGUIFileOpenDialogD0Ev
; demangled: virtual thunk to glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog()
; decoder-mode: arm
0053db8c  00 30 90 e5                                      ldr r3, [r0]
0053db90  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0053db94  03 00 80 e0                                      add r0, r0, r3
0053db98  36 fb ff ea                                      b #0x53c878

; FUNCTION 0x0053db9c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZTv0_n12_N6glitch3gui18CGUIFileOpenDialogD0Ev
; demangled: virtual thunk to glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog()
; decoder-mode: arm
0053db9c  00 30 90 e5                                      ldr r3, [r0]
0053dba0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0053dba4  03 00 80 e0                                      add r0, r0, r3
0053dba8  32 fb ff ea                                      b #0x53c878

; FUNCTION 0x0053dbac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZTv0_n24_N6glitch3gui18CGUIFileOpenDialogD1Ev
; demangled: virtual thunk to glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog()
; decoder-mode: arm
0053dbac  00 30 90 e5                                      ldr r3, [r0]
0053dbb0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0053dbb4  03 00 80 e0                                      add r0, r0, r3
0053dbb8  dd fa ff ea                                      b #0x53c734

; FUNCTION 0x0053dbbc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIFileOpenDialog
; alias: _ZTv0_n12_N6glitch3gui18CGUIFileOpenDialogD1Ev
; demangled: virtual thunk to glitch::gui::CGUIFileOpenDialog::~CGUIFileOpenDialog()
; decoder-mode: arm
0053dbbc  00 30 90 e5                                      ldr r3, [r0]
0053dbc0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0053dbc4  03 00 80 e0                                      add r0, r0, r3
0053dbc8  d9 fa ff ea                                      b #0x53c734
