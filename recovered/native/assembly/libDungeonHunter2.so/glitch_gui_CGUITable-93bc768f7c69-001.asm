; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00554f60, declared_size=32, range_size=32, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZNK6glitch3gui9CGUITable14getColumnCountEv
; demangled: glitch::gui::CGUITable::getColumnCount() const
; decoder-mode: arm
00554f60  58 21 90 e5                                      ldr r2, [r0, #0x158]
00554f64  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
00554f68  3d 3f 0c e3                                      movw r3, #0xcf3d
00554f6c  f3 3c 43 e3                                      movt r3, #0x3cf3
00554f70  00 00 62 e0                                      rsb r0, r2, r0
00554f74  40 01 a0 e1                                      asr r0, r0, #2
00554f78  93 00 00 e0                                      mul r0, r3, r0
00554f7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00554f80, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZNK6glitch3gui9CGUITable11getRowCountEv
; demangled: glitch::gui::CGUITable::getRowCount() const
; decoder-mode: arm
00554f80  64 31 90 e5                                      ldr r3, [r0, #0x164]
00554f84  68 21 90 e5                                      ldr r2, [r0, #0x168]
00554f88  02 30 63 e0                                      rsb r3, r3, r2
00554f8c  43 31 a0 e1                                      asr r3, r3, #2
00554f90  03 01 83 e0                                      add r0, r3, r3, lsl #2
00554f94  00 02 80 e0                                      add r0, r0, r0, lsl #4
00554f98  00 04 80 e0                                      add r0, r0, r0, lsl #8
00554f9c  00 08 80 e0                                      add r0, r0, r0, lsl #16
00554fa0  80 00 83 e0                                      add r0, r3, r0, lsl #1
00554fa4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00554fa8, declared_size=344, range_size=344, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable15setActiveColumnEib
; demangled: glitch::gui::CGUITable::setActiveColumn(int, bool)
; decoder-mode: arm
00554fa8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00554fac  00 50 51 e2                                      subs r5, r1, #0
00554fb0  34 d0 4d e2                                      sub sp, sp, #0x34
00554fb4  00 40 a0 e1                                      mov r4, r0
00554fb8  08 00 00 ba                                      blt #0x554fe0
00554fbc  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
00554fc0  58 11 94 e5                                      ldr r1, [r4, #0x158]
00554fc4  3d 3f 0c e3                                      movw r3, #0xcf3d
00554fc8  f3 3c 43 e3                                      movt r3, #0x3cf3
00554fcc  00 00 61 e0                                      rsb r0, r1, r0
00554fd0  40 01 a0 e1                                      asr r0, r0, #2
00554fd4  93 00 03 e0                                      mul r3, r3, r0
00554fd8  03 00 55 e1                                      cmp r5, r3
00554fdc  02 00 00 ba                                      blt #0x554fec
00554fe0  00 00 a0 e3                                      mov r0, #0
00554fe4  34 d0 8d e2                                      add sp, sp, #0x34
00554fe8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00554fec  00 00 52 e3                                      cmp r2, #0
00554ff0  a8 61 94 e5                                      ldr r6, [r4, #0x1a8]
00554ff4  a8 51 84 e5                                      str r5, [r4, #0x1a8]
00554ff8  0e 00 00 1a                                      bne #0x555038
00554ffc  06 00 55 e1                                      cmp r5, r6
00555000  0a 00 00 0a                                      beq #0x555030
00555004  24 30 94 e5                                      ldr r3, [r4, #0x24]
00555008  00 20 a0 e3                                      mov r2, #0
0055500c  00 20 8d e5                                      str r2, [sp]
00555010  16 20 a0 e3                                      mov r2, #0x16
00555014  10 20 8d e5                                      str r2, [sp, #0x10]
00555018  08 40 8d e5                                      str r4, [sp, #8]
0055501c  03 00 a0 e1                                      mov r0, r3
00555020  0d 10 a0 e1                                      mov r1, sp
00555024  00 30 93 e5                                      ldr r3, [r3]
00555028  0f e0 a0 e1                                      mov lr, pc
0055502c  08 f0 93 e5                                      ldr pc, [r3, #8]
00555030  01 00 a0 e3                                      mov r0, #1
00555034  ea ff ff ea                                      b #0x554fe4
00555038  54 30 a0 e3                                      mov r3, #0x54
0055503c  93 15 21 e0                                      mla r1, r3, r5, r1
00555040  50 30 91 e5                                      ldr r3, [r1, #0x50]
00555044  04 00 53 e3                                      cmp r3, #4
00555048  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0055504c  04 00 00 ea                                      b #0x555064
00555050  03 00 00 ea                                      b #0x555064
00555054  17 00 00 ea                                      b #0x5550b8
00555058  25 00 00 ea                                      b #0x5550f4
0055505c  0c 00 00 ea                                      b #0x555094
00555060  0e 00 00 ea                                      b #0x5550a0
00555064  00 30 a0 e3                                      mov r3, #0
00555068  ac 31 84 e5                                      str r3, [r4, #0x1ac]
0055506c  00 30 94 e5                                      ldr r3, [r4]
00555070  04 00 a0 e1                                      mov r0, r4
00555074  c0 70 93 e5                                      ldr r7, [r3, #0xc0]
00555078  0f e0 a0 e1                                      mov lr, pc
0055507c  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
00555080  ac 21 94 e5                                      ldr r2, [r4, #0x1ac]
00555084  00 10 a0 e1                                      mov r1, r0
00555088  04 00 a0 e1                                      mov r0, r4
0055508c  37 ff 2f e1                                      blx r7
00555090  d9 ff ff ea                                      b #0x554ffc
00555094  02 30 a0 e3                                      mov r3, #2
00555098  ac 31 84 e5                                      str r3, [r4, #0x1ac]
0055509c  f2 ff ff ea                                      b #0x55506c
005550a0  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
005550a4  01 00 53 e3                                      cmp r3, #1
005550a8  02 30 a0 03                                      moveq r3, #2
005550ac  01 30 a0 13                                      movne r3, #1
005550b0  ac 31 84 e5                                      str r3, [r4, #0x1ac]
005550b4  ec ff ff ea                                      b #0x55506c
005550b8  24 30 94 e5                                      ldr r3, [r4, #0x24]
005550bc  00 20 a0 e3                                      mov r2, #0
005550c0  ac 21 84 e5                                      str r2, [r4, #0x1ac]
005550c4  02 00 53 e1                                      cmp r3, r2
005550c8  e7 ff ff 0a                                      beq #0x55506c
005550cc  18 20 8d e5                                      str r2, [sp, #0x18]
005550d0  16 20 a0 e3                                      mov r2, #0x16
005550d4  28 20 8d e5                                      str r2, [sp, #0x28]
005550d8  20 40 8d e5                                      str r4, [sp, #0x20]
005550dc  03 00 a0 e1                                      mov r0, r3
005550e0  18 10 8d e2                                      add r1, sp, #0x18
005550e4  00 30 93 e5                                      ldr r3, [r3]
005550e8  0f e0 a0 e1                                      mov lr, pc
005550ec  08 f0 93 e5                                      ldr pc, [r3, #8]
005550f0  dd ff ff ea                                      b #0x55506c
005550f4  01 30 a0 e3                                      mov r3, #1
005550f8  ac 31 84 e5                                      str r3, [r4, #0x1ac]
005550fc  da ff ff ea                                      b #0x55506c

; FUNCTION 0x00555100, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZNK6glitch3gui9CGUITable15getActiveColumnEv
; demangled: glitch::gui::CGUITable::getActiveColumn() const
; decoder-mode: arm
00555100  a8 01 90 e5                                      ldr r0, [r0, #0x1a8]
00555104  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555108, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZNK6glitch3gui9CGUITable23getActiveColumnOrderingEv
; demangled: glitch::gui::CGUITable::getActiveColumnOrdering() const
; decoder-mode: arm
00555108  ac 01 90 e5                                      ldr r0, [r0, #0x1ac]
0055510c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555110, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable19setResizableColumnsEb
; demangled: glitch::gui::CGUITable::setResizableColumns(bool)
; decoder-mode: arm
00555110  88 11 c0 e5                                      strb r1, [r0, #0x188]
00555114  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555118, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZNK6glitch3gui9CGUITable19hasResizableColumnsEv
; demangled: glitch::gui::CGUITable::hasResizableColumns() const
; decoder-mode: arm
00555118  88 01 d0 e5                                      ldrb r0, [r0, #0x188]
0055511c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555120, declared_size=156, range_size=156, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable12setCellColorEjjNS_5video6SColorE
; demangled: glitch::gui::CGUITable::setCellColor(unsigned int, unsigned int, glitch::video::SColor)
; decoder-mode: arm
00555120  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
00555124  64 c1 90 e5                                      ldr ip, [r0, #0x164]
00555128  68 41 90 e5                                      ldr r4, [r0, #0x168]
0055512c  0c d0 4d e2                                      sub sp, sp, #0xc
00555130  04 30 8d e5                                      str r3, [sp, #4]
00555134  04 40 6c e0                                      rsb r4, ip, r4
00555138  44 41 a0 e1                                      asr r4, r4, #2
0055513c  23 6c a0 e1                                      lsr r6, r3, #0x18
00555140  04 51 84 e0                                      add r5, r4, r4, lsl #2
00555144  73 70 ef e6                                      uxtb r7, r3
00555148  05 52 85 e0                                      add r5, r5, r5, lsl #4
0055514c  53 84 e7 e7                                      ubfx r8, r3, #8, #8
00555150  05 54 85 e0                                      add r5, r5, r5, lsl #8
00555154  53 38 e7 e7                                      ubfx r3, r3, #0x10, #8
00555158  05 58 85 e0                                      add r5, r5, r5, lsl #16
0055515c  85 50 84 e0                                      add r5, r4, r5, lsl #1
00555160  05 00 51 e1                                      cmp r1, r5
00555164  11 00 00 2a                                      bhs #0x5551b0
00555168  58 41 90 e5                                      ldr r4, [r0, #0x158]
0055516c  5c 51 90 e5                                      ldr r5, [r0, #0x15c]
00555170  3d 0f 0c e3                                      movw r0, #0xcf3d
00555174  f3 0c 43 e3                                      movt r0, #0x3cf3
00555178  05 40 64 e0                                      rsb r4, r4, r5
0055517c  44 41 a0 e1                                      asr r4, r4, #2
00555180  90 04 00 e0                                      mul r0, r0, r4
00555184  00 00 52 e1                                      cmp r2, r0
00555188  08 00 00 2a                                      bhs #0x5551b0
0055518c  0c 00 a0 e3                                      mov r0, #0xc
00555190  90 01 01 e0                                      mul r1, r0, r1
00555194  98 00 a0 e3                                      mov r0, #0x98
00555198  01 10 9c e7                                      ldr r1, [ip, r1]
0055519c  90 12 22 e0                                      mla r2, r0, r2, r1
005551a0  90 70 c2 e5                                      strb r7, [r2, #0x90]
005551a4  93 60 c2 e5                                      strb r6, [r2, #0x93]
005551a8  92 30 c2 e5                                      strb r3, [r2, #0x92]
005551ac  91 80 c2 e5                                      strb r8, [r2, #0x91]
005551b0  0c d0 8d e2                                      add sp, sp, #0xc
005551b4  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
005551b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005551bc, declared_size=116, range_size=116, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable11setCellDataEjjPv
; demangled: glitch::gui::CGUITable::setCellData(unsigned int, unsigned int, void*)
; decoder-mode: arm
005551bc  30 00 2d e9                                      push {r4, r5}
005551c0  64 c1 90 e5                                      ldr ip, [r0, #0x164]
005551c4  68 41 90 e5                                      ldr r4, [r0, #0x168]
005551c8  04 40 6c e0                                      rsb r4, ip, r4
005551cc  44 41 a0 e1                                      asr r4, r4, #2
005551d0  04 51 84 e0                                      add r5, r4, r4, lsl #2
005551d4  05 52 85 e0                                      add r5, r5, r5, lsl #4
005551d8  05 54 85 e0                                      add r5, r5, r5, lsl #8
005551dc  05 58 85 e0                                      add r5, r5, r5, lsl #16
005551e0  85 40 84 e0                                      add r4, r4, r5, lsl #1
005551e4  04 00 51 e1                                      cmp r1, r4
005551e8  0e 00 00 2a                                      bhs #0x555228
005551ec  58 41 90 e5                                      ldr r4, [r0, #0x158]
005551f0  5c 51 90 e5                                      ldr r5, [r0, #0x15c]
005551f4  3d 0f 0c e3                                      movw r0, #0xcf3d
005551f8  f3 0c 43 e3                                      movt r0, #0x3cf3
005551fc  05 40 64 e0                                      rsb r4, r4, r5
00555200  44 41 a0 e1                                      asr r4, r4, #2
00555204  90 04 00 e0                                      mul r0, r0, r4
00555208  00 00 52 e1                                      cmp r2, r0
0055520c  05 00 00 2a                                      bhs #0x555228
00555210  0c 00 a0 e3                                      mov r0, #0xc
00555214  90 01 01 e0                                      mul r1, r0, r1
00555218  98 00 a0 e3                                      mov r0, #0x98
0055521c  01 10 9c e7                                      ldr r1, [ip, r1]
00555220  90 12 22 e0                                      mla r2, r0, r2, r1
00555224  94 30 82 e5                                      str r3, [r2, #0x94]
00555228  30 00 bd e8                                      pop {r4, r5}
0055522c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555230, declared_size=124, range_size=124, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZNK6glitch3gui9CGUITable11getCellTextEjj
; demangled: glitch::gui::CGUITable::getCellText(unsigned int, unsigned int) const
; decoder-mode: arm
00555230  04 40 2d e5                                      str r4, [sp, #-4]!
00555234  64 31 90 e5                                      ldr r3, [r0, #0x164]
00555238  68 c1 90 e5                                      ldr ip, [r0, #0x168]
0055523c  0c c0 63 e0                                      rsb ip, r3, ip
00555240  4c c1 a0 e1                                      asr ip, ip, #2
00555244  0c 41 8c e0                                      add r4, ip, ip, lsl #2
00555248  04 42 84 e0                                      add r4, r4, r4, lsl #4
0055524c  04 44 84 e0                                      add r4, r4, r4, lsl #8
00555250  04 48 84 e0                                      add r4, r4, r4, lsl #16
00555254  84 c0 8c e0                                      add ip, ip, r4, lsl #1
00555258  0c 00 51 e1                                      cmp r1, ip
0055525c  08 00 00 2a                                      bhs #0x555284
00555260  58 c1 90 e5                                      ldr ip, [r0, #0x158]
00555264  5c 41 90 e5                                      ldr r4, [r0, #0x15c]
00555268  3d 0f 0c e3                                      movw r0, #0xcf3d
0055526c  f3 0c 43 e3                                      movt r0, #0x3cf3
00555270  04 c0 6c e0                                      rsb ip, ip, r4
00555274  4c c1 a0 e1                                      asr ip, ip, #2
00555278  90 0c 00 e0                                      mul r0, r0, ip
0055527c  00 00 52 e1                                      cmp r2, r0
00555280  02 00 00 3a                                      blo #0x555290
00555284  00 00 a0 e3                                      mov r0, #0
00555288  10 00 bd e8                                      ldm sp!, {r4}
0055528c  1e ff 2f e1                                      bx lr
00555290  0c 00 a0 e3                                      mov r0, #0xc
00555294  90 01 01 e0                                      mul r1, r0, r1
00555298  01 30 93 e7                                      ldr r3, [r3, r1]
0055529c  98 10 a0 e3                                      mov r1, #0x98
005552a0  91 32 22 e0                                      mla r2, r1, r2, r3
005552a4  44 00 92 e5                                      ldr r0, [r2, #0x44]
005552a8  f6 ff ff ea                                      b #0x555288

; FUNCTION 0x005552ac, declared_size=124, range_size=124, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZNK6glitch3gui9CGUITable11getCellDataEjj
; demangled: glitch::gui::CGUITable::getCellData(unsigned int, unsigned int) const
; decoder-mode: arm
005552ac  04 40 2d e5                                      str r4, [sp, #-4]!
005552b0  64 31 90 e5                                      ldr r3, [r0, #0x164]
005552b4  68 c1 90 e5                                      ldr ip, [r0, #0x168]
005552b8  0c c0 63 e0                                      rsb ip, r3, ip
005552bc  4c c1 a0 e1                                      asr ip, ip, #2
005552c0  0c 41 8c e0                                      add r4, ip, ip, lsl #2
005552c4  04 42 84 e0                                      add r4, r4, r4, lsl #4
005552c8  04 44 84 e0                                      add r4, r4, r4, lsl #8
005552cc  04 48 84 e0                                      add r4, r4, r4, lsl #16
005552d0  84 c0 8c e0                                      add ip, ip, r4, lsl #1
005552d4  0c 00 51 e1                                      cmp r1, ip
005552d8  08 00 00 2a                                      bhs #0x555300
005552dc  58 c1 90 e5                                      ldr ip, [r0, #0x158]
005552e0  5c 41 90 e5                                      ldr r4, [r0, #0x15c]
005552e4  3d 0f 0c e3                                      movw r0, #0xcf3d
005552e8  f3 0c 43 e3                                      movt r0, #0x3cf3
005552ec  04 c0 6c e0                                      rsb ip, ip, r4
005552f0  4c c1 a0 e1                                      asr ip, ip, #2
005552f4  90 0c 00 e0                                      mul r0, r0, ip
005552f8  00 00 52 e1                                      cmp r2, r0
005552fc  02 00 00 3a                                      blo #0x55530c
00555300  00 00 a0 e3                                      mov r0, #0
00555304  10 00 bd e8                                      ldm sp!, {r4}
00555308  1e ff 2f e1                                      bx lr
0055530c  0c 00 a0 e3                                      mov r0, #0xc
00555310  90 01 01 e0                                      mul r1, r0, r1
00555314  01 30 93 e7                                      ldr r3, [r3, r1]
00555318  98 10 a0 e3                                      mov r1, #0x98
0055531c  91 32 22 e0                                      mla r2, r1, r2, r3
00555320  94 00 92 e5                                      ldr r0, [r2, #0x94]
00555324  f6 ff ff ea                                      b #0x555304

; FUNCTION 0x00555328, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZNK6glitch3gui9CGUITable11getSelectedEv
; demangled: glitch::gui::CGUITable::getSelected() const
; decoder-mode: arm
00555328  98 01 90 e5                                      ldr r0, [r0, #0x198]
0055532c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555330, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZNK6glitch3gui9CGUITable17getSelectedColumnEv
; demangled: glitch::gui::CGUITable::getSelectedColumn() const
; decoder-mode: arm
00555330  9c 01 90 e5                                      ldr r0, [r0, #0x19c]
00555334  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555338, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable19setSelectableColumnEb
; demangled: glitch::gui::CGUITable::setSelectableColumn(bool)
; decoder-mode: arm
00555338  89 11 c0 e5                                      strb r1, [r0, #0x189]
0055533c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555340, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable19getSelectableColumnEv
; demangled: glitch::gui::CGUITable::getSelectableColumn()
; decoder-mode: arm
00555340  89 01 d0 e5                                      ldrb r0, [r0, #0x189]
00555344  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555348, declared_size=112, range_size=112, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable17recalculateWidthsEv
; demangled: glitch::gui::CGUITable::recalculateWidths()
; decoder-mode: arm
00555348  10 40 2d e9                                      push {r4, lr}
0055534c  58 e1 90 e5                                      ldr lr, [r0, #0x158]
00555350  5c 41 90 e5                                      ldr r4, [r0, #0x15c]
00555354  3d 2f 0c e3                                      movw r2, #0xcf3d
00555358  f3 2c 43 e3                                      movt r2, #0x3cf3
0055535c  04 40 6e e0                                      rsb r4, lr, r4
00555360  44 41 a0 e1                                      asr r4, r4, #2
00555364  92 04 04 e0                                      mul r4, r2, r4
00555368  00 20 a0 e3                                      mov r2, #0
0055536c  02 00 54 e1                                      cmp r4, r2
00555370  00 30 a0 e1                                      mov r3, r0
00555374  94 21 80 e5                                      str r2, [r0, #0x194]
00555378  09 00 00 0a                                      beq #0x5553a4
0055537c  02 00 a0 e1                                      mov r0, r2
00555380  02 10 a0 e1                                      mov r1, r2
00555384  02 c0 8e e0                                      add ip, lr, r2
00555388  4c c0 9c e5                                      ldr ip, [ip, #0x4c]
0055538c  01 10 81 e2                                      add r1, r1, #1
00555390  04 00 51 e1                                      cmp r1, r4
00555394  0c 00 80 e0                                      add r0, r0, ip
00555398  94 01 83 e5                                      str r0, [r3, #0x194]
0055539c  54 20 82 e2                                      add r2, r2, #0x54
005553a0  f7 ff ff 3a                                      blo #0x555384
005553a4  03 00 a0 e1                                      mov r0, r3
005553a8  00 30 93 e5                                      ldr r3, [r3]
005553ac  0f e0 a0 e1                                      mov lr, pc
005553b0  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
005553b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005553b8, declared_size=312, range_size=312, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable18recalculateHeightsEv
; demangled: glitch::gui::CGUITable::recalculateHeights()
; decoder-mode: arm
005553b8  70 40 2d e9                                      push {r4, r5, r6, lr}
005553bc  50 31 90 e5                                      ldr r3, [r0, #0x150]
005553c0  00 60 a0 e3                                      mov r6, #0
005553c4  90 61 80 e5                                      str r6, [r0, #0x190]
005553c8  08 d0 4d e2                                      sub sp, sp, #8
005553cc  00 40 a0 e1                                      mov r4, r0
005553d0  03 00 a0 e1                                      mov r0, r3
005553d4  00 30 93 e5                                      ldr r3, [r3]
005553d8  0f e0 a0 e1                                      mov lr, pc
005553dc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005553e0  06 10 a0 e1                                      mov r1, r6
005553e4  00 30 90 e5                                      ldr r3, [r0]
005553e8  70 61 94 e5                                      ldr r6, [r4, #0x170]
005553ec  00 50 a0 e1                                      mov r5, r0
005553f0  0f e0 a0 e1                                      mov lr, pc
005553f4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005553f8  00 00 56 e1                                      cmp r6, r0
005553fc  2e 00 00 0a                                      beq #0x5554bc
00555400  70 01 94 e5                                      ldr r0, [r4, #0x170]
00555404  00 00 50 e3                                      cmp r0, #0
00555408  00 00 00 0a                                      beq #0x555410
0055540c  5c 20 f7 eb                                      bl #0x31d584
00555410  00 30 95 e5                                      ldr r3, [r5]
00555414  05 00 a0 e1                                      mov r0, r5
00555418  00 10 a0 e3                                      mov r1, #0
0055541c  0f e0 a0 e1                                      mov lr, pc
00555420  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00555424  00 30 a0 e3                                      mov r3, #0
00555428  00 00 50 e3                                      cmp r0, #0
0055542c  8c 31 84 e5                                      str r3, [r4, #0x18c]
00555430  70 01 84 e5                                      str r0, [r4, #0x170]
00555434  19 00 00 0a                                      beq #0x5554a0
00555438  ac 20 9f e5                                      ldr r2, [pc, #0xac]
0055543c  00 10 a0 e1                                      mov r1, r0
00555440  00 30 90 e5                                      ldr r3, [r0]
00555444  02 20 8f e0                                      add r2, pc, r2
00555448  0d 00 a0 e1                                      mov r0, sp
0055544c  0f e0 a0 e1                                      mov lr, pc
00555450  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00555454  04 20 9d e5                                      ldr r2, [sp, #4]
00555458  a0 11 94 e5                                      ldr r1, [r4, #0x1a0]
0055545c  70 31 94 e5                                      ldr r3, [r4, #0x170]
00555460  81 20 82 e0                                      add r2, r2, r1, lsl #1
00555464  8c 21 84 e5                                      str r2, [r4, #0x18c]
00555468  04 20 93 e5                                      ldr r2, [r3, #4]
0055546c  01 20 82 e2                                      add r2, r2, #1
00555470  04 20 83 e5                                      str r2, [r3, #4]
00555474  68 21 94 e5                                      ldr r2, [r4, #0x168]
00555478  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055547c  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
00555480  02 30 63 e0                                      rsb r3, r3, r2
00555484  43 31 a0 e1                                      asr r3, r3, #2
00555488  03 21 83 e0                                      add r2, r3, r3, lsl #2
0055548c  02 22 82 e0                                      add r2, r2, r2, lsl #4
00555490  02 24 82 e0                                      add r2, r2, r2, lsl #8
00555494  02 28 82 e0                                      add r2, r2, r2, lsl #16
00555498  82 30 83 e0                                      add r3, r3, r2, lsl #1
0055549c  90 03 00 e0                                      mul r0, r0, r3
005554a0  90 01 84 e5                                      str r0, [r4, #0x190]
005554a4  00 30 94 e5                                      ldr r3, [r4]
005554a8  04 00 a0 e1                                      mov r0, r4
005554ac  0f e0 a0 e1                                      mov lr, pc
005554b0  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
005554b4  08 d0 8d e2                                      add sp, sp, #8
005554b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005554bc  64 31 94 e5                                      ldr r3, [r4, #0x164]
005554c0  68 21 94 e5                                      ldr r2, [r4, #0x168]
005554c4  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
005554c8  02 20 63 e0                                      rsb r2, r3, r2
005554cc  42 21 a0 e1                                      asr r2, r2, #2
005554d0  02 11 82 e0                                      add r1, r2, r2, lsl #2
005554d4  01 12 81 e0                                      add r1, r1, r1, lsl #4
005554d8  01 14 81 e0                                      add r1, r1, r1, lsl #8
005554dc  01 18 81 e0                                      add r1, r1, r1, lsl #16
005554e0  81 20 82 e0                                      add r2, r2, r1, lsl #1
005554e4  90 02 00 e0                                      mul r0, r0, r2
005554e8  ec ff ff ea                                      b #0x5554a0
; mapping-symbol data/literal pool
005554ec  1c 90 38 00                                      .byte 0x1c, 0x90, 0x38, 0x00

; FUNCTION 0x005554f0, declared_size=956, range_size=956, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable15checkScrollbarsEv
; demangled: glitch::gui::CGUITable::checkScrollbars()
; decoder-mode: arm
005554f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005554f4  50 31 90 e5                                      ldr r3, [r0, #0x150]
005554f8  00 40 a0 e1                                      mov r4, r0
005554fc  4c d0 4d e2                                      sub sp, sp, #0x4c
00555500  03 00 a0 e1                                      mov r0, r3
00555504  00 30 93 e5                                      ldr r3, [r3]
00555508  0f e0 a0 e1                                      mov lr, pc
0055550c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00555510  78 21 94 e5                                      ldr r2, [r4, #0x178]
00555514  00 00 52 e3                                      cmp r2, #0
00555518  05 00 00 0a                                      beq #0x555534
0055551c  74 61 94 e5                                      ldr r6, [r4, #0x174]
00555520  00 00 56 e3                                      cmp r6, #0
00555524  00 00 50 13                                      cmpne r0, #0
00555528  00 60 a0 13                                      movne r6, #0
0055552c  01 60 a0 03                                      moveq r6, #1
00555530  01 00 00 1a                                      bne #0x55553c
00555534  4c d0 8d e2                                      add sp, sp, #0x4c
00555538  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055553c  06 10 a0 e1                                      mov r1, r6
00555540  00 30 90 e5                                      ldr r3, [r0]
00555544  0f e0 a0 e1                                      mov lr, pc
00555548  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0055554c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00555550  00 50 a0 e1                                      mov r5, r0
00555554  03 00 a0 e1                                      mov r0, r3
00555558  00 30 93 e5                                      ldr r3, [r3]
0055555c  0f e0 a0 e1                                      mov lr, pc
00555560  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00555564  74 31 94 e5                                      ldr r3, [r4, #0x174]
00555568  00 b0 a0 e1                                      mov fp, r0
0055556c  03 00 a0 e1                                      mov r0, r3
00555570  00 30 93 e5                                      ldr r3, [r3]
00555574  0f e0 a0 e1                                      mov lr, pc
00555578  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0055557c  04 00 8d e5                                      str r0, [sp, #4]
00555580  78 31 94 e5                                      ldr r3, [r4, #0x178]
00555584  06 10 a0 e1                                      mov r1, r6
00555588  03 00 a0 e1                                      mov r0, r3
0055558c  00 30 93 e5                                      ldr r3, [r3]
00555590  0f e0 a0 e1                                      mov lr, pc
00555594  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00555598  74 31 94 e5                                      ldr r3, [r4, #0x174]
0055559c  06 10 a0 e1                                      mov r1, r6
005555a0  03 00 a0 e1                                      mov r0, r3
005555a4  00 30 93 e5                                      ldr r3, [r3]
005555a8  0f e0 a0 e1                                      mov lr, pc
005555ac  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005555b0  38 80 94 e5                                      ldr r8, [r4, #0x38]
005555b4  40 a0 94 e5                                      ldr sl, [r4, #0x40]
005555b8  8c 91 94 e5                                      ldr sb, [r4, #0x18c]
005555bc  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
005555c0  94 31 94 e5                                      ldr r3, [r4, #0x194]
005555c4  01 80 88 e2                                      add r8, r8, #1
005555c8  00 90 69 e2                                      rsb sb, sb, #0
005555cc  0a 70 68 e0                                      rsb r7, r8, sl
005555d0  09 90 62 e0                                      rsb sb, r2, sb
005555d4  07 00 53 e1                                      cmp r3, r7
005555d8  02 90 49 e2                                      sub sb, sb, #2
005555dc  44 60 94 e5                                      ldr r6, [r4, #0x44]
005555e0  89 00 00 ca                                      bgt #0x55580c
005555e4  90 31 94 e5                                      ldr r3, [r4, #0x190]
005555e8  06 60 89 e0                                      add r6, sb, r6
005555ec  06 00 53 e1                                      cmp r3, r6
005555f0  5e 00 00 ca                                      bgt #0x555770
005555f4  74 31 94 e5                                      ldr r3, [r4, #0x174]
005555f8  03 00 a0 e1                                      mov r0, r3
005555fc  00 30 93 e5                                      ldr r3, [r3]
00555600  0f e0 a0 e1                                      mov lr, pc
00555604  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00555608  00 00 50 e3                                      cmp r0, #0
0055560c  1b 00 00 0a                                      beq #0x555680
00555610  04 30 9d e5                                      ldr r3, [sp, #4]
00555614  00 00 53 e3                                      cmp r3, #0
00555618  9c 00 00 0a                                      beq #0x555890
0055561c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00555620  03 00 a0 e1                                      mov r0, r3
00555624  00 30 93 e5                                      ldr r3, [r3]
00555628  0f e0 a0 e1                                      mov lr, pc
0055562c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00555630  00 00 50 e3                                      cmp r0, #0
00555634  83 00 00 0a                                      beq #0x555848
00555638  30 c0 94 e5                                      ldr ip, [r4, #0x30]
0055563c  28 20 94 e5                                      ldr r2, [r4, #0x28]
00555640  34 10 94 e5                                      ldr r1, [r4, #0x34]
00555644  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00555648  0c 20 62 e0                                      rsb r2, r2, ip
0055564c  02 c0 65 e0                                      rsb ip, r5, r2
00555650  01 30 63 e0                                      rsb r3, r3, r1
00555654  05 10 e0 e1                                      mvn r1, r5
00555658  74 01 94 e5                                      ldr r0, [r4, #0x174]
0055565c  01 30 83 e0                                      add r3, r3, r1
00555660  01 20 42 e2                                      sub r2, r2, #1
00555664  38 c0 8d e5                                      str ip, [sp, #0x38]
00555668  38 10 8d e2                                      add r1, sp, #0x38
0055566c  01 c0 a0 e3                                      mov ip, #1
00555670  3c c0 8d e5                                      str ip, [sp, #0x3c]
00555674  40 20 8d e5                                      str r2, [sp, #0x40]
00555678  44 30 8d e5                                      str r3, [sp, #0x44]
0055567c  2f 7c ff eb                                      bl #0x534740
00555680  78 31 94 e5                                      ldr r3, [r4, #0x178]
00555684  03 00 a0 e1                                      mov r0, r3
00555688  00 30 93 e5                                      ldr r3, [r3]
0055568c  0f e0 a0 e1                                      mov lr, pc
00555690  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00555694  00 00 50 e3                                      cmp r0, #0
00555698  a5 ff ff 0a                                      beq #0x555534
0055569c  00 00 5b e3                                      cmp fp, #0
005556a0  2b 00 00 0a                                      beq #0x555754
005556a4  74 31 94 e5                                      ldr r3, [r4, #0x174]
005556a8  03 00 a0 e1                                      mov r0, r3
005556ac  00 30 93 e5                                      ldr r3, [r3]
005556b0  0f e0 a0 e1                                      mov lr, pc
005556b4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
005556b8  00 00 50 e3                                      cmp r0, #0
005556bc  12 00 00 0a                                      beq #0x55570c
005556c0  34 c0 94 e5                                      ldr ip, [r4, #0x34]
005556c4  30 10 94 e5                                      ldr r1, [r4, #0x30]
005556c8  28 20 94 e5                                      ldr r2, [r4, #0x28]
005556cc  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005556d0  78 01 94 e5                                      ldr r0, [r4, #0x178]
005556d4  01 20 62 e0                                      rsb r2, r2, r1
005556d8  0c 30 63 e0                                      rsb r3, r3, ip
005556dc  05 10 e0 e1                                      mvn r1, r5
005556e0  01 20 82 e0                                      add r2, r2, r1
005556e4  03 50 65 e0                                      rsb r5, r5, r3
005556e8  01 c0 a0 e3                                      mov ip, #1
005556ec  01 30 43 e2                                      sub r3, r3, #1
005556f0  18 10 8d e2                                      add r1, sp, #0x18
005556f4  18 c0 8d e5                                      str ip, [sp, #0x18]
005556f8  1c 50 8d e5                                      str r5, [sp, #0x1c]
005556fc  20 20 8d e5                                      str r2, [sp, #0x20]
00555700  24 30 8d e5                                      str r3, [sp, #0x24]
00555704  0d 7c ff eb                                      bl #0x534740
00555708  89 ff ff ea                                      b #0x555534
0055570c  34 c0 94 e5                                      ldr ip, [r4, #0x34]
00555710  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00555714  30 20 94 e5                                      ldr r2, [r4, #0x30]
00555718  28 10 94 e5                                      ldr r1, [r4, #0x28]
0055571c  0c 30 63 e0                                      rsb r3, r3, ip
00555720  01 20 42 e2                                      sub r2, r2, #1
00555724  78 01 94 e5                                      ldr r0, [r4, #0x178]
00555728  02 20 61 e0                                      rsb r2, r1, r2
0055572c  03 50 65 e0                                      rsb r5, r5, r3
00555730  01 c0 a0 e3                                      mov ip, #1
00555734  01 30 43 e2                                      sub r3, r3, #1
00555738  08 10 8d e2                                      add r1, sp, #8
0055573c  08 c0 8d e5                                      str ip, [sp, #8]
00555740  0c 50 8d e5                                      str r5, [sp, #0xc]
00555744  10 20 8d e5                                      str r2, [sp, #0x10]
00555748  14 30 8d e5                                      str r3, [sp, #0x14]
0055574c  fb 7b ff eb                                      bl #0x534740
00555750  77 ff ff ea                                      b #0x555534
00555754  78 31 94 e5                                      ldr r3, [r4, #0x178]
00555758  0b 10 a0 e1                                      mov r1, fp
0055575c  03 00 a0 e1                                      mov r0, r3
00555760  00 30 93 e5                                      ldr r3, [r3]
00555764  0f e0 a0 e1                                      mov lr, pc
00555768  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0055576c  cc ff ff ea                                      b #0x5556a4
00555770  74 31 94 e5                                      ldr r3, [r4, #0x174]
00555774  01 10 a0 e3                                      mov r1, #1
00555778  03 00 a0 e1                                      mov r0, r3
0055577c  00 30 93 e5                                      ldr r3, [r3]
00555780  0f e0 a0 e1                                      mov lr, pc
00555784  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00555788  74 31 94 e5                                      ldr r3, [r4, #0x174]
0055578c  90 11 94 e5                                      ldr r1, [r4, #0x190]
00555790  03 00 a0 e1                                      mov r0, r3
00555794  01 10 66 e0                                      rsb r1, r6, r1
00555798  00 30 93 e5                                      ldr r3, [r3]
0055579c  0f e0 a0 e1                                      mov lr, pc
005557a0  80 f0 93 e5                                      ldr pc, [r3, #0x80]
005557a4  78 31 94 e5                                      ldr r3, [r4, #0x178]
005557a8  03 00 a0 e1                                      mov r0, r3
005557ac  00 30 93 e5                                      ldr r3, [r3]
005557b0  0f e0 a0 e1                                      mov lr, pc
005557b4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
005557b8  00 00 50 e3                                      cmp r0, #0
005557bc  8c ff ff 1a                                      bne #0x5555f4
005557c0  94 31 94 e5                                      ldr r3, [r4, #0x194]
005557c4  0a a0 65 e0                                      rsb sl, r5, sl
005557c8  0a 80 68 e0                                      rsb r8, r8, sl
005557cc  08 00 53 e1                                      cmp r3, r8
005557d0  87 ff ff da                                      ble #0x5555f4
005557d4  78 31 94 e5                                      ldr r3, [r4, #0x178]
005557d8  01 10 a0 e3                                      mov r1, #1
005557dc  03 00 a0 e1                                      mov r0, r3
005557e0  00 30 93 e5                                      ldr r3, [r3]
005557e4  0f e0 a0 e1                                      mov lr, pc
005557e8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005557ec  78 31 94 e5                                      ldr r3, [r4, #0x178]
005557f0  94 11 94 e5                                      ldr r1, [r4, #0x194]
005557f4  03 00 a0 e1                                      mov r0, r3
005557f8  01 10 68 e0                                      rsb r1, r8, r1
005557fc  00 30 93 e5                                      ldr r3, [r3]
00555800  0f e0 a0 e1                                      mov lr, pc
00555804  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00555808  79 ff ff ea                                      b #0x5555f4
0055580c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00555810  01 10 a0 e3                                      mov r1, #1
00555814  06 60 65 e0                                      rsb r6, r5, r6
00555818  03 00 a0 e1                                      mov r0, r3
0055581c  00 30 93 e5                                      ldr r3, [r3]
00555820  0f e0 a0 e1                                      mov lr, pc
00555824  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00555828  78 31 94 e5                                      ldr r3, [r4, #0x178]
0055582c  94 11 94 e5                                      ldr r1, [r4, #0x194]
00555830  03 00 a0 e1                                      mov r0, r3
00555834  01 10 67 e0                                      rsb r1, r7, r1
00555838  00 30 93 e5                                      ldr r3, [r3]
0055583c  0f e0 a0 e1                                      mov lr, pc
00555840  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00555844  66 ff ff ea                                      b #0x5555e4
00555848  30 c0 94 e5                                      ldr ip, [r4, #0x30]
0055584c  28 20 94 e5                                      ldr r2, [r4, #0x28]
00555850  34 30 94 e5                                      ldr r3, [r4, #0x34]
00555854  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00555858  0c 20 62 e0                                      rsb r2, r2, ip
0055585c  02 c0 65 e0                                      rsb ip, r5, r2
00555860  01 30 43 e2                                      sub r3, r3, #1
00555864  74 01 94 e5                                      ldr r0, [r4, #0x174]
00555868  03 30 61 e0                                      rsb r3, r1, r3
0055586c  01 20 42 e2                                      sub r2, r2, #1
00555870  28 c0 8d e5                                      str ip, [sp, #0x28]
00555874  28 10 8d e2                                      add r1, sp, #0x28
00555878  01 c0 a0 e3                                      mov ip, #1
0055587c  2c c0 8d e5                                      str ip, [sp, #0x2c]
00555880  30 20 8d e5                                      str r2, [sp, #0x30]
00555884  34 30 8d e5                                      str r3, [sp, #0x34]
00555888  ac 7b ff eb                                      bl #0x534740
0055588c  7b ff ff ea                                      b #0x555680
00555890  74 31 94 e5                                      ldr r3, [r4, #0x174]
00555894  04 10 9d e5                                      ldr r1, [sp, #4]
00555898  03 00 a0 e1                                      mov r0, r3
0055589c  00 30 93 e5                                      ldr r3, [r3]
005558a0  0f e0 a0 e1                                      mov lr, pc
005558a4  98 f0 93 e5                                      ldr pc, [r3, #0x98]
005558a8  5b ff ff ea                                      b #0x55561c

; FUNCTION 0x005558ac, declared_size=104, range_size=104, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable15refreshControlsEv
; demangled: glitch::gui::CGUITable::refreshControls()
; decoder-mode: arm
005558ac  10 40 2d e9                                      push {r4, lr}
005558b0  00 40 a0 e1                                      mov r4, r0
005558b4  00 30 90 e5                                      ldr r3, [r0]
005558b8  0f e0 a0 e1                                      mov lr, pc
005558bc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005558c0  74 31 94 e5                                      ldr r3, [r4, #0x174]
005558c4  00 00 53 e3                                      cmp r3, #0
005558c8  04 00 00 0a                                      beq #0x5558e0
005558cc  03 00 a0 e1                                      mov r0, r3
005558d0  00 10 a0 e3                                      mov r1, #0
005558d4  00 30 93 e5                                      ldr r3, [r3]
005558d8  0f e0 a0 e1                                      mov lr, pc
005558dc  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005558e0  78 31 94 e5                                      ldr r3, [r4, #0x178]
005558e4  00 00 53 e3                                      cmp r3, #0
005558e8  04 00 00 0a                                      beq #0x555900
005558ec  03 00 a0 e1                                      mov r0, r3
005558f0  00 10 a0 e3                                      mov r1, #0
005558f4  00 30 93 e5                                      ldr r3, [r3]
005558f8  0f e0 a0 e1                                      mov lr, pc
005558fc  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00555900  04 00 a0 e1                                      mov r0, r4
00555904  ab fe ff eb                                      bl #0x5553b8
00555908  04 00 a0 e1                                      mov r0, r4
0055590c  10 40 bd e8                                      pop {r4, lr}
00555910  8c fe ff ea                                      b #0x555348

; FUNCTION 0x00555914, declared_size=48, range_size=48, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable17setColumnOrderingEjNS0_20EGUI_COLUMN_ORDERINGE
; demangled: glitch::gui::CGUITable::setColumnOrdering(unsigned int, glitch::gui::EGUI_COLUMN_ORDERING)
; decoder-mode: arm
00555914  5c c1 90 e5                                      ldr ip, [r0, #0x15c]
00555918  58 01 90 e5                                      ldr r0, [r0, #0x158]
0055591c  3d 3f 0c e3                                      movw r3, #0xcf3d
00555920  f3 3c 43 e3                                      movt r3, #0x3cf3
00555924  0c c0 60 e0                                      rsb ip, r0, ip
00555928  4c c1 a0 e1                                      asr ip, ip, #2
0055592c  93 0c 03 e0                                      mul r3, r3, ip
00555930  03 00 51 e1                                      cmp r1, r3
00555934  54 30 a0 33                                      movlo r3, #0x54
00555938  93 01 20 30                                      mlalo r0, r3, r1, r0
0055593c  50 20 80 35                                      strlo r2, [r0, #0x50]
00555940  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555944, declared_size=248, range_size=248, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable15dragColumnStartEii
; demangled: glitch::gui::CGUITable::dragColumnStart(int, int)
; decoder-mode: arm
00555944  70 40 2d e9                                      push {r4, r5, r6, lr}
00555948  88 31 d0 e5                                      ldrb r3, [r0, #0x188]
0055594c  00 40 a0 e1                                      mov r4, r0
00555950  01 50 a0 e1                                      mov r5, r1
00555954  00 00 53 e3                                      cmp r3, #0
00555958  2a 00 00 0a                                      beq #0x555a08
0055595c  8c 11 90 e5                                      ldr r1, [r0, #0x18c]
00555960  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00555964  03 30 81 e0                                      add r3, r1, r3
00555968  02 00 53 e1                                      cmp r3, r2
0055596c  25 00 00 ba                                      blt #0x555a08
00555970  78 31 90 e5                                      ldr r3, [r0, #0x178]
00555974  38 60 90 e5                                      ldr r6, [r0, #0x38]
00555978  00 00 53 e3                                      cmp r3, #0
0055597c  01 60 86 e2                                      add r6, r6, #1
00555980  05 00 00 0a                                      beq #0x55599c
00555984  03 00 a0 e1                                      mov r0, r3
00555988  00 30 93 e5                                      ldr r3, [r3]
0055598c  0f e0 a0 e1                                      mov lr, pc
00555990  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00555994  00 00 50 e3                                      cmp r0, #0
00555998  1c 00 00 1a                                      bne #0x555a10
0055599c  58 c1 94 e5                                      ldr ip, [r4, #0x158]
005559a0  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
005559a4  3d 2f 0c e3                                      movw r2, #0xcf3d
005559a8  f3 2c 43 e3                                      movt r2, #0x3cf3
005559ac  03 30 6c e0                                      rsb r3, ip, r3
005559b0  43 31 a0 e1                                      asr r3, r3, #2
005559b4  92 03 03 e0                                      mul r3, r2, r3
005559b8  94 11 94 e5                                      ldr r1, [r4, #0x194]
005559bc  01 30 53 e2                                      subs r3, r3, #1
005559c0  10 00 00 4a                                      bmi #0x555a08
005559c4  54 20 a0 e3                                      mov r2, #0x54
005559c8  92 03 02 e0                                      mul r2, r2, r3
005559cc  01 60 86 e0                                      add r6, r6, r1
005559d0  00 00 00 ea                                      b #0x5559d8
005559d4  06 60 61 e0                                      rsb r6, r1, r6
005559d8  03 10 46 e2                                      sub r1, r6, #3
005559dc  05 00 51 e1                                      cmp r1, r5
005559e0  02 10 8c e0                                      add r1, ip, r2
005559e4  02 00 86 e2                                      add r0, r6, #2
005559e8  4c 10 91 e5                                      ldr r1, [r1, #0x4c]
005559ec  01 00 00 ca                                      bgt #0x5559f8
005559f0  00 00 55 e1                                      cmp r5, r0
005559f4  0c 00 00 da                                      ble #0x555a2c
005559f8  01 30 43 e2                                      sub r3, r3, #1
005559fc  01 00 73 e3                                      cmn r3, #1
00555a00  54 20 42 e2                                      sub r2, r2, #0x54
00555a04  f2 ff ff 1a                                      bne #0x5559d4
00555a08  00 00 a0 e3                                      mov r0, #0
00555a0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00555a10  78 31 94 e5                                      ldr r3, [r4, #0x178]
00555a14  03 00 a0 e1                                      mov r0, r3
00555a18  00 30 93 e5                                      ldr r3, [r3]
00555a1c  0f e0 a0 e1                                      mov lr, pc
00555a20  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00555a24  06 60 60 e0                                      rsb r6, r0, r6
00555a28  db ff ff ea                                      b #0x55599c
00555a2c  84 51 84 e5                                      str r5, [r4, #0x184]
00555a30  80 31 84 e5                                      str r3, [r4, #0x180]
00555a34  01 00 a0 e3                                      mov r0, #1
00555a38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00555a3c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable16dragColumnUpdateEi
; demangled: glitch::gui::CGUITable::dragColumnUpdate(int)
; decoder-mode: arm
00555a3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00555a40  88 31 d0 e5                                      ldrb r3, [r0, #0x188]
00555a44  00 40 a0 e1                                      mov r4, r0
00555a48  01 50 a0 e1                                      mov r5, r1
00555a4c  00 00 53 e3                                      cmp r3, #0
00555a50  03 00 00 1a                                      bne #0x555a64
00555a54  00 30 e0 e3                                      mvn r3, #0
00555a58  80 31 84 e5                                      str r3, [r4, #0x180]
00555a5c  00 00 a0 e3                                      mov r0, #0
00555a60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00555a64  80 11 90 e5                                      ldr r1, [r0, #0x180]
00555a68  00 00 51 e3                                      cmp r1, #0
00555a6c  f8 ff ff ba                                      blt #0x555a54
00555a70  58 21 90 e5                                      ldr r2, [r0, #0x158]
00555a74  5c c1 90 e5                                      ldr ip, [r0, #0x15c]
00555a78  3d 3f 0c e3                                      movw r3, #0xcf3d
00555a7c  f3 3c 43 e3                                      movt r3, #0x3cf3
00555a80  0c c0 62 e0                                      rsb ip, r2, ip
00555a84  4c c1 a0 e1                                      asr ip, ip, #2
00555a88  93 0c 03 e0                                      mul r3, r3, ip
00555a8c  03 00 51 e1                                      cmp r1, r3
00555a90  ef ff ff aa                                      bge #0x555a54
00555a94  54 30 a0 e3                                      mov r3, #0x54
00555a98  93 21 22 e0                                      mla r2, r3, r1, r2
00555a9c  84 c1 90 e5                                      ldr ip, [r0, #0x184]
00555aa0  4c 20 92 e5                                      ldr r2, [r2, #0x4c]
00555aa4  00 30 90 e5                                      ldr r3, [r0]
00555aa8  02 20 6c e0                                      rsb r2, ip, r2
00555aac  05 20 82 e0                                      add r2, r2, r5
00555ab0  c2 2f c2 e1                                      bic r2, r2, r2, asr #31
00555ab4  0f e0 a0 e1                                      mov lr, pc
00555ab8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00555abc  84 51 84 e5                                      str r5, [r4, #0x184]
00555ac0  00 00 a0 e3                                      mov r0, #0
00555ac4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00555ac8, declared_size=232, range_size=232, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable18selectColumnHeaderEii
; demangled: glitch::gui::CGUITable::selectColumnHeader(int, int)
; decoder-mode: arm
00555ac8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00555acc  00 40 a0 e1                                      mov r4, r0
00555ad0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00555ad4  8c 01 90 e5                                      ldr r0, [r0, #0x18c]
00555ad8  01 50 a0 e1                                      mov r5, r1
00555adc  03 30 80 e0                                      add r3, r0, r3
00555ae0  02 00 53 e1                                      cmp r3, r2
00555ae4  28 00 00 ba                                      blt #0x555b8c
00555ae8  78 31 94 e5                                      ldr r3, [r4, #0x178]
00555aec  38 60 94 e5                                      ldr r6, [r4, #0x38]
00555af0  00 00 53 e3                                      cmp r3, #0
00555af4  01 60 86 e2                                      add r6, r6, #1
00555af8  0b 00 00 0a                                      beq #0x555b2c
00555afc  03 00 a0 e1                                      mov r0, r3
00555b00  00 30 93 e5                                      ldr r3, [r3]
00555b04  0f e0 a0 e1                                      mov lr, pc
00555b08  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00555b0c  00 00 50 e3                                      cmp r0, #0
00555b10  05 00 00 0a                                      beq #0x555b2c
00555b14  78 31 94 e5                                      ldr r3, [r4, #0x178]
00555b18  03 00 a0 e1                                      mov r0, r3
00555b1c  00 30 93 e5                                      ldr r3, [r3]
00555b20  0f e0 a0 e1                                      mov lr, pc
00555b24  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00555b28  06 60 60 e0                                      rsb r6, r0, r6
00555b2c  58 01 94 e5                                      ldr r0, [r4, #0x158]
00555b30  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
00555b34  3d 3f 0c e3                                      movw r3, #0xcf3d
00555b38  f3 3c 43 e3                                      movt r3, #0x3cf3
00555b3c  0c c0 60 e0                                      rsb ip, r0, ip
00555b40  4c c1 a0 e1                                      asr ip, ip, #2
00555b44  93 0c 0c e0                                      mul ip, r3, ip
00555b48  00 00 5c e3                                      cmp ip, #0
00555b4c  0e 00 00 0a                                      beq #0x555b8c
00555b50  00 30 a0 e3                                      mov r3, #0
00555b54  03 10 a0 e1                                      mov r1, r3
00555b58  00 00 00 ea                                      b #0x555b60
00555b5c  02 60 86 e0                                      add r6, r6, r2
00555b60  03 20 80 e0                                      add r2, r0, r3
00555b64  06 00 55 e1                                      cmp r5, r6
00555b68  4c 20 92 e5                                      ldr r2, [r2, #0x4c]
00555b6c  02 00 00 ba                                      blt #0x555b7c
00555b70  02 70 86 e0                                      add r7, r6, r2
00555b74  07 00 55 e1                                      cmp r5, r7
00555b78  05 00 00 ba                                      blt #0x555b94
00555b7c  01 10 81 e2                                      add r1, r1, #1
00555b80  01 00 5c e1                                      cmp ip, r1
00555b84  54 30 83 e2                                      add r3, r3, #0x54
00555b88  f3 ff ff 1a                                      bne #0x555b5c
00555b8c  00 00 a0 e3                                      mov r0, #0
00555b90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00555b94  04 00 a0 e1                                      mov r0, r4
00555b98  00 30 94 e5                                      ldr r3, [r4]
00555b9c  01 20 a0 e3                                      mov r2, #1
00555ba0  0f e0 a0 e1                                      mov lr, pc
00555ba4  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00555ba8  01 00 a0 e3                                      mov r0, #1
00555bac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00555bb0, declared_size=276, range_size=276, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable9selectNewEib
; demangled: glitch::gui::CGUITable::selectNew(int, bool)
; decoder-mode: arm
00555bb0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00555bb4  50 31 90 e5                                      ldr r3, [r0, #0x150]
00555bb8  1c d0 4d e2                                      sub sp, sp, #0x1c
00555bbc  00 40 a0 e1                                      mov r4, r0
00555bc0  03 00 a0 e1                                      mov r0, r3
00555bc4  00 30 93 e5                                      ldr r3, [r3]
00555bc8  01 50 a0 e1                                      mov r5, r1
00555bcc  02 60 a0 e1                                      mov r6, r2
00555bd0  0f e0 a0 e1                                      mov lr, pc
00555bd4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00555bd8  00 00 50 e3                                      cmp r0, #0
00555bdc  29 00 00 0a                                      beq #0x555c88
00555be0  3c a0 94 e5                                      ldr sl, [r4, #0x3c]
00555be4  8c 81 94 e5                                      ldr r8, [r4, #0x18c]
00555be8  98 71 94 e5                                      ldr r7, [r4, #0x198]
00555bec  0a 30 88 e0                                      add r3, r8, sl
00555bf0  05 00 53 e1                                      cmp r3, r5
00555bf4  23 00 00 ca                                      bgt #0x555c88
00555bf8  00 00 58 e3                                      cmp r8, #0
00555bfc  07 00 a0 01                                      moveq r0, r7
00555c00  22 00 00 1a                                      bne #0x555c90
00555c04  68 21 94 e5                                      ldr r2, [r4, #0x168]
00555c08  64 31 94 e5                                      ldr r3, [r4, #0x164]
00555c0c  02 30 63 e0                                      rsb r3, r3, r2
00555c10  43 31 a0 e1                                      asr r3, r3, #2
00555c14  03 21 83 e0                                      add r2, r3, r3, lsl #2
00555c18  02 22 82 e0                                      add r2, r2, r2, lsl #4
00555c1c  02 24 82 e0                                      add r2, r2, r2, lsl #8
00555c20  02 28 82 e0                                      add r2, r2, r2, lsl #16
00555c24  82 30 83 e0                                      add r3, r3, r2, lsl #1
00555c28  03 00 50 e1                                      cmp r0, r3
00555c2c  01 30 43 a2                                      subge r3, r3, #1
00555c30  98 31 84 a5                                      strge r3, [r4, #0x198]
00555c34  02 00 00 aa                                      bge #0x555c44
00555c38  00 00 50 e3                                      cmp r0, #0
00555c3c  00 30 a0 b3                                      movlt r3, #0
00555c40  98 31 84 b5                                      strlt r3, [r4, #0x198]
00555c44  24 30 94 e5                                      ldr r3, [r4, #0x24]
00555c48  00 00 53 e3                                      cmp r3, #0
00555c4c  0d 00 00 0a                                      beq #0x555c88
00555c50  00 00 56 e3                                      cmp r6, #0
00555c54  0b 00 00 1a                                      bne #0x555c88
00555c58  98 21 94 e5                                      ldr r2, [r4, #0x198]
00555c5c  00 60 8d e5                                      str r6, [sp]
00555c60  08 40 8d e5                                      str r4, [sp, #8]
00555c64  07 00 52 e1                                      cmp r2, r7
00555c68  15 70 a0 13                                      movne r7, #0x15
00555c6c  17 70 a0 03                                      moveq r7, #0x17
00555c70  10 70 8d e5                                      str r7, [sp, #0x10]
00555c74  03 00 a0 e1                                      mov r0, r3
00555c78  0d 10 a0 e1                                      mov r1, sp
00555c7c  00 30 93 e5                                      ldr r3, [r3]
00555c80  0f e0 a0 e1                                      mov lr, pc
00555c84  08 f0 93 e5                                      ldr pc, [r3, #8]
00555c88  1c d0 8d e2                                      add sp, sp, #0x1c
00555c8c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00555c90  74 31 94 e5                                      ldr r3, [r4, #0x174]
00555c94  0a a0 e0 e1                                      mvn sl, sl
00555c98  0a 80 68 e0                                      rsb r8, r8, sl
00555c9c  03 00 a0 e1                                      mov r0, r3
00555ca0  00 30 93 e5                                      ldr r3, [r3]
00555ca4  0f e0 a0 e1                                      mov lr, pc
00555ca8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00555cac  05 50 88 e0                                      add r5, r8, r5
00555cb0  00 00 85 e0                                      add r0, r5, r0
00555cb4  8c 11 94 e5                                      ldr r1, [r4, #0x18c]
00555cb8  79 e1 f6 eb                                      bl #0x30e2a4
00555cbc  98 01 84 e5                                      str r0, [r4, #0x198]
00555cc0  cf ff ff ea                                      b #0x555c04

; FUNCTION 0x00555cc4, declared_size=276, range_size=276, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable12selectColumnEib
; demangled: glitch::gui::CGUITable::selectColumn(int, bool)
; decoder-mode: arm
00555cc4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00555cc8  89 31 d0 e5                                      ldrb r3, [r0, #0x189]
00555ccc  18 d0 4d e2                                      sub sp, sp, #0x18
00555cd0  00 40 a0 e1                                      mov r4, r0
00555cd4  00 00 53 e3                                      cmp r3, #0
00555cd8  01 50 a0 e1                                      mov r5, r1
00555cdc  02 70 a0 e1                                      mov r7, r2
00555ce0  28 00 00 0a                                      beq #0x555d88
00555ce4  78 31 90 e5                                      ldr r3, [r0, #0x178]
00555ce8  38 60 90 e5                                      ldr r6, [r0, #0x38]
00555cec  00 00 53 e3                                      cmp r3, #0
00555cf0  01 60 86 e2                                      add r6, r6, #1
00555cf4  0b 00 00 0a                                      beq #0x555d28
00555cf8  03 00 a0 e1                                      mov r0, r3
00555cfc  00 30 93 e5                                      ldr r3, [r3]
00555d00  0f e0 a0 e1                                      mov lr, pc
00555d04  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00555d08  00 00 50 e3                                      cmp r0, #0
00555d0c  05 00 00 0a                                      beq #0x555d28
00555d10  78 31 94 e5                                      ldr r3, [r4, #0x178]
00555d14  03 00 a0 e1                                      mov r0, r3
00555d18  00 30 93 e5                                      ldr r3, [r3]
00555d1c  0f e0 a0 e1                                      mov lr, pc
00555d20  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00555d24  06 60 60 e0                                      rsb r6, r0, r6
00555d28  58 01 94 e5                                      ldr r0, [r4, #0x158]
00555d2c  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
00555d30  3d 3f 0c e3                                      movw r3, #0xcf3d
00555d34  f3 3c 43 e3                                      movt r3, #0x3cf3
00555d38  0c c0 60 e0                                      rsb ip, r0, ip
00555d3c  4c c1 a0 e1                                      asr ip, ip, #2
00555d40  93 0c 0c e0                                      mul ip, r3, ip
00555d44  00 00 5c e3                                      cmp ip, #0
00555d48  0e 00 00 0a                                      beq #0x555d88
00555d4c  00 30 a0 e3                                      mov r3, #0
00555d50  03 20 a0 e1                                      mov r2, r3
00555d54  00 00 00 ea                                      b #0x555d5c
00555d58  01 60 86 e0                                      add r6, r6, r1
00555d5c  03 10 80 e0                                      add r1, r0, r3
00555d60  06 00 55 e1                                      cmp r5, r6
00555d64  4c 10 91 e5                                      ldr r1, [r1, #0x4c]
00555d68  02 00 00 ba                                      blt #0x555d78
00555d6c  01 80 86 e0                                      add r8, r6, r1
00555d70  08 00 55 e1                                      cmp r5, r8
00555d74  05 00 00 ba                                      blt #0x555d90
00555d78  01 20 82 e2                                      add r2, r2, #1
00555d7c  02 00 5c e1                                      cmp ip, r2
00555d80  54 30 83 e2                                      add r3, r3, #0x54
00555d84  f3 ff ff 1a                                      bne #0x555d58
00555d88  18 d0 8d e2                                      add sp, sp, #0x18
00555d8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00555d90  24 30 94 e5                                      ldr r3, [r4, #0x24]
00555d94  9c 21 84 e5                                      str r2, [r4, #0x19c]
00555d98  00 00 53 e3                                      cmp r3, #0
00555d9c  f9 ff ff 0a                                      beq #0x555d88
00555da0  00 00 57 e3                                      cmp r7, #0
00555da4  f7 ff ff 1a                                      bne #0x555d88
00555da8  01 00 52 e3                                      cmp r2, #1
00555dac  15 20 a0 13                                      movne r2, #0x15
00555db0  17 20 a0 03                                      moveq r2, #0x17
00555db4  00 70 8d e5                                      str r7, [sp]
00555db8  08 40 8d e5                                      str r4, [sp, #8]
00555dbc  10 20 8d e5                                      str r2, [sp, #0x10]
00555dc0  03 00 a0 e1                                      mov r0, r3
00555dc4  0d 10 a0 e1                                      mov r1, sp
00555dc8  00 30 93 e5                                      ldr r3, [r3]
00555dcc  0f e0 a0 e1                                      mov lr, pc
00555dd0  08 f0 93 e5                                      ldr pc, [r3, #8]
00555dd4  eb ff ff ea                                      b #0x555d88

; FUNCTION 0x00555dd8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable12setDrawFlagsEi
; demangled: glitch::gui::CGUITable::setDrawFlags(int)
; decoder-mode: arm
00555dd8  b0 11 80 e5                                      str r1, [r0, #0x1b0]
00555ddc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555de0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZNK6glitch3gui9CGUITable12getDrawFlagsEv
; demangled: glitch::gui::CGUITable::getDrawFlags() const
; decoder-mode: arm
00555de0  b0 01 90 e5                                      ldr r0, [r0, #0x1b0]
00555de4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00555de8, declared_size=408, range_size=408, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable12getRowColumnEjjRiS2_
; demangled: glitch::gui::CGUITable::getRowColumn(unsigned int, unsigned int, int&, int&)
; decoder-mode: arm
00555de8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00555dec  50 c1 90 e5                                      ldr ip, [r0, #0x150]
00555df0  00 50 a0 e1                                      mov r5, r0
00555df4  02 60 a0 e1                                      mov r6, r2
00555df8  0c 00 a0 e1                                      mov r0, ip
00555dfc  00 20 9c e5                                      ldr r2, [ip]
00555e00  01 40 a0 e1                                      mov r4, r1
00555e04  03 70 a0 e1                                      mov r7, r3
00555e08  0f e0 a0 e1                                      mov lr, pc
00555e0c  38 f0 92 e5                                      ldr pc, [r2, #0x38]
00555e10  00 00 50 e3                                      cmp r0, #0
00555e14  41 00 00 0a                                      beq #0x555f20
00555e18  3c a0 95 e5                                      ldr sl, [r5, #0x3c]
00555e1c  8c 81 95 e5                                      ldr r8, [r5, #0x18c]
00555e20  0a 30 88 e0                                      add r3, r8, sl
00555e24  03 00 56 e1                                      cmp r6, r3
00555e28  3c 00 00 ba                                      blt #0x555f20
00555e2c  00 00 58 e3                                      cmp r8, #0
00555e30  45 00 00 1a                                      bne #0x555f4c
00555e34  68 21 95 e5                                      ldr r2, [r5, #0x168]
00555e38  64 31 95 e5                                      ldr r3, [r5, #0x164]
00555e3c  02 30 63 e0                                      rsb r3, r3, r2
00555e40  43 31 a0 e1                                      asr r3, r3, #2
00555e44  03 21 83 e0                                      add r2, r3, r3, lsl #2
00555e48  02 22 82 e0                                      add r2, r2, r2, lsl #4
00555e4c  02 24 82 e0                                      add r2, r2, r2, lsl #8
00555e50  02 28 82 e0                                      add r2, r2, r2, lsl #16
00555e54  82 30 83 e0                                      add r3, r3, r2, lsl #1
00555e58  03 00 58 e1                                      cmp r8, r3
00555e5c  00 80 e0 a3                                      mvnge r8, #0
00555e60  c8 8f 88 b1                                      orrlt r8, r8, r8, asr #31
00555e64  00 80 87 e5                                      str r8, [r7]
00555e68  78 31 95 e5                                      ldr r3, [r5, #0x178]
00555e6c  38 60 95 e5                                      ldr r6, [r5, #0x38]
00555e70  00 00 53 e3                                      cmp r3, #0
00555e74  01 60 86 e2                                      add r6, r6, #1
00555e78  05 00 00 0a                                      beq #0x555e94
00555e7c  03 00 a0 e1                                      mov r0, r3
00555e80  00 30 93 e5                                      ldr r3, [r3]
00555e84  0f e0 a0 e1                                      mov lr, pc
00555e88  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00555e8c  00 00 50 e3                                      cmp r0, #0
00555e90  26 00 00 1a                                      bne #0x555f30
00555e94  5c 01 95 e5                                      ldr r0, [r5, #0x15c]
00555e98  58 71 95 e5                                      ldr r7, [r5, #0x158]
00555e9c  3d 3f 0c e3                                      movw r3, #0xcf3d
00555ea0  f3 3c 43 e3                                      movt r3, #0x3cf3
00555ea4  00 00 67 e0                                      rsb r0, r7, r0
00555ea8  40 01 a0 e1                                      asr r0, r0, #2
00555eac  93 00 00 e0                                      mul r0, r3, r0
00555eb0  94 21 95 e5                                      ldr r2, [r5, #0x194]
00555eb4  01 30 50 e2                                      subs r3, r0, #1
00555eb8  18 00 00 4a                                      bmi #0x555f20
00555ebc  54 c0 a0 e3                                      mov ip, #0x54
00555ec0  9c 73 21 e0                                      mla r1, ip, r3, r7
00555ec4  02 60 86 e0                                      add r6, r6, r2
00555ec8  4c 20 91 e5                                      ldr r2, [r1, #0x4c]
00555ecc  06 20 62 e0                                      rsb r2, r2, r6
00555ed0  02 00 54 e1                                      cmp r4, r2
00555ed4  04 00 56 a1                                      cmpge r6, r4
00555ed8  11 00 00 ca                                      bgt #0x555f24
00555edc  02 10 40 e2                                      sub r1, r0, #2
00555ee0  9c 01 01 e0                                      mul r1, ip, r1
00555ee4  0a 00 00 ea                                      b #0x555f14
00555ee8  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
00555eec  54 10 41 e2                                      sub r1, r1, #0x54
00555ef0  02 00 60 e0                                      rsb r0, r0, r2
00555ef4  04 00 50 e1                                      cmp r0, r4
00555ef8  00 c0 a0 c3                                      movgt ip, #0
00555efc  01 c0 a0 d3                                      movle ip, #1
00555f00  04 00 52 e1                                      cmp r2, r4
00555f04  00 c0 a0 d3                                      movle ip, #0
00555f08  00 00 5c e3                                      cmp ip, #0
00555f0c  04 00 00 1a                                      bne #0x555f24
00555f10  00 20 a0 e1                                      mov r2, r0
00555f14  01 30 53 e2                                      subs r3, r3, #1
00555f18  01 00 87 e0                                      add r0, r7, r1
00555f1c  f1 ff ff 2a                                      bhs #0x555ee8
00555f20  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00555f24  20 20 9d e5                                      ldr r2, [sp, #0x20]
00555f28  00 30 82 e5                                      str r3, [r2]
00555f2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00555f30  78 31 95 e5                                      ldr r3, [r5, #0x178]
00555f34  03 00 a0 e1                                      mov r0, r3
00555f38  00 30 93 e5                                      ldr r3, [r3]
00555f3c  0f e0 a0 e1                                      mov lr, pc
00555f40  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00555f44  06 60 60 e0                                      rsb r6, r0, r6
00555f48  d1 ff ff ea                                      b #0x555e94
00555f4c  74 31 95 e5                                      ldr r3, [r5, #0x174]
00555f50  08 80 e0 e1                                      mvn r8, r8
00555f54  08 a0 6a e0                                      rsb sl, sl, r8
00555f58  03 00 a0 e1                                      mov r0, r3
00555f5c  00 30 93 e5                                      ldr r3, [r3]
00555f60  0f e0 a0 e1                                      mov lr, pc
00555f64  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00555f68  06 60 8a e0                                      add r6, sl, r6
00555f6c  00 00 86 e0                                      add r0, r6, r0
00555f70  8c 11 95 e5                                      ldr r1, [r5, #0x18c]
00555f74  34 e3 f6 eb                                      bl #0x30ec4c
00555f78  00 80 a0 e1                                      mov r8, r0
00555f7c  ac ff ff ea                                      b #0x555e34

; FUNCTION 0x005563fc, declared_size=592, range_size=592, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITableC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEbbb
; demangled: glitch::gui::CGUITable::CGUITable(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>, bool, bool, bool)
; decoder-mode: arm
005563fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00556400  34 62 9f e5                                      ldr r6, [pc, #0x234]
00556404  34 e2 9f e5                                      ldr lr, [pc, #0x234]
00556408  34 c2 9f e5                                      ldr ip, [pc, #0x234]
0055640c  06 60 8f e0                                      add r6, pc, r6
00556410  0e e0 96 e7                                      ldr lr, [r6, lr]
00556414  0c c0 96 e7                                      ldr ip, [r6, ip]
00556418  01 70 a0 e3                                      mov r7, #1
0055641c  24 50 9e e5                                      ldr r5, [lr, #0x24]
00556420  08 c0 8c e2                                      add ip, ip, #8
00556424  b8 c1 80 e5                                      str ip, [r0, #0x1b8]
00556428  b4 51 80 e5                                      str r5, [r0, #0x1b4]
0055642c  bc 71 80 e5                                      str r7, [r0, #0x1bc]
00556430  3c d0 4d e2                                      sub sp, sp, #0x3c
00556434  0c 80 15 e5                                      ldr r8, [r5, #-0xc]
00556438  28 a0 9e e5                                      ldr sl, [lr, #0x28]
0055643c  60 c0 9d e5                                      ldr ip, [sp, #0x60]
00556440  6d 5f 80 e2                                      add r5, r0, #0x1b4
00556444  08 a0 85 e7                                      str sl, [r5, r8]
00556448  0c 90 9c e5                                      ldr sb, [ip, #0xc]
0055644c  00 0d 9c e8                                      ldm ip, {r8, sl, fp}
00556450  01 50 a0 e1                                      mov r5, r1
00556454  02 c0 a0 e1                                      mov ip, r2
00556458  04 10 8e e2                                      add r1, lr, #4
0055645c  05 20 a0 e1                                      mov r2, r5
00556460  00 30 8d e5                                      str r3, [sp]
00556464  0c 30 a0 e1                                      mov r3, ip
00556468  28 c0 8d e2                                      add ip, sp, #0x28
0055646c  00 40 a0 e1                                      mov r4, r0
00556470  28 80 8d e5                                      str r8, [sp, #0x28]
00556474  2c a0 8d e5                                      str sl, [sp, #0x2c]
00556478  34 90 8d e5                                      str sb, [sp, #0x34]
0055647c  04 c0 8d e5                                      str ip, [sp, #4]
00556480  64 80 dd e5                                      ldrb r8, [sp, #0x64]
00556484  68 a0 dd e5                                      ldrb sl, [sp, #0x68]
00556488  6c 90 dd e5                                      ldrb sb, [sp, #0x6c]
0055648c  30 b0 8d e5                                      str fp, [sp, #0x30]
00556490  27 ff ff eb                                      bl #0x556134
00556494  ac 21 9f e5                                      ldr r2, [pc, #0x1ac]
00556498  50 01 94 e5                                      ldr r0, [r4, #0x150]
0055649c  00 50 a0 e3                                      mov r5, #0
005564a0  02 20 96 e7                                      ldr r2, [r6, r2]
005564a4  00 30 e0 e3                                      mvn r3, #0
005564a8  80 31 84 e5                                      str r3, [r4, #0x180]
005564ac  51 1f 82 e2                                      add r1, r2, #0x144
005564b0  10 c0 82 e2                                      add ip, r2, #0x10
005564b4  49 2f 82 e2                                      add r2, r2, #0x124
005564b8  b4 21 84 e5                                      str r2, [r4, #0x1b4]
005564bc  02 20 a0 e3                                      mov r2, #2
005564c0  a0 21 84 e5                                      str r2, [r4, #0x1a0]
005564c4  05 20 a0 e3                                      mov r2, #5
005564c8  a4 21 84 e5                                      str r2, [r4, #0x1a4]
005564cc  07 20 a0 e3                                      mov r2, #7
005564d0  b0 21 84 e5                                      str r2, [r4, #0x1b0]
005564d4  98 31 84 e5                                      str r3, [r4, #0x198]
005564d8  a8 31 84 e5                                      str r3, [r4, #0x1a8]
005564dc  00 c0 84 e5                                      str ip, [r4]
005564e0  b8 11 84 e5                                      str r1, [r4, #0x1b8]
005564e4  7c 81 c4 e5                                      strb r8, [r4, #0x17c]
005564e8  7d a1 c4 e5                                      strb sl, [r4, #0x17d]
005564ec  7e 91 c4 e5                                      strb sb, [r4, #0x17e]
005564f0  58 51 84 e5                                      str r5, [r4, #0x158]
005564f4  5c 51 84 e5                                      str r5, [r4, #0x15c]
005564f8  60 51 84 e5                                      str r5, [r4, #0x160]
005564fc  64 51 84 e5                                      str r5, [r4, #0x164]
00556500  68 51 84 e5                                      str r5, [r4, #0x168]
00556504  6c 51 84 e5                                      str r5, [r4, #0x16c]
00556508  70 51 84 e5                                      str r5, [r4, #0x170]
0055650c  74 51 84 e5                                      str r5, [r4, #0x174]
00556510  78 51 84 e5                                      str r5, [r4, #0x178]
00556514  7f 51 c4 e5                                      strb r5, [r4, #0x17f]
00556518  84 51 84 e5                                      str r5, [r4, #0x184]
0055651c  88 71 c4 e5                                      strb r7, [r4, #0x188]
00556520  89 51 c4 e5                                      strb r5, [r4, #0x189]
00556524  8c 51 84 e5                                      str r5, [r4, #0x18c]
00556528  90 51 84 e5                                      str r5, [r4, #0x190]
0055652c  94 51 84 e5                                      str r5, [r4, #0x194]
00556530  ac 51 84 e5                                      str r5, [r4, #0x1ac]
00556534  00 10 90 e5                                      ldr r1, [r0]
00556538  64 20 a0 e3                                      mov r2, #0x64
0055653c  88 c0 91 e5                                      ldr ip, [r1, #0x88]
00556540  18 50 8d e5                                      str r5, [sp, #0x18]
00556544  05 10 a0 e1                                      mov r1, r5
00556548  24 20 8d e5                                      str r2, [sp, #0x24]
0055654c  00 30 8d e5                                      str r3, [sp]
00556550  20 20 8d e5                                      str r2, [sp, #0x20]
00556554  1c 50 8d e5                                      str r5, [sp, #0x1c]
00556558  18 20 8d e2                                      add r2, sp, #0x18
0055655c  04 30 a0 e1                                      mov r3, r4
00556560  3c ff 2f e1                                      blx ip
00556564  05 00 50 e1                                      cmp r0, r5
00556568  74 01 84 e5                                      str r0, [r4, #0x174]
0055656c  0d 00 00 0a                                      beq #0x5565a8
00556570  00 30 90 e5                                      ldr r3, [r0]
00556574  07 10 a0 e1                                      mov r1, r7
00556578  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0055657c  03 00 80 e0                                      add r0, r0, r3
00556580  04 30 90 e5                                      ldr r3, [r0, #4]
00556584  07 30 83 e0                                      add r3, r3, r7
00556588  04 30 80 e5                                      str r3, [r0, #4]
0055658c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00556590  9b 50 c3 e5                                      strb r5, [r3, #0x9b]
00556594  74 31 94 e5                                      ldr r3, [r4, #0x174]
00556598  03 00 a0 e1                                      mov r0, r3
0055659c  00 30 93 e5                                      ldr r3, [r3]
005565a0  0f e0 a0 e1                                      mov lr, pc
005565a4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005565a8  50 01 94 e5                                      ldr r0, [r4, #0x150]
005565ac  00 50 a0 e3                                      mov r5, #0
005565b0  64 30 a0 e3                                      mov r3, #0x64
005565b4  00 20 90 e5                                      ldr r2, [r0]
005565b8  01 10 a0 e3                                      mov r1, #1
005565bc  88 c0 92 e5                                      ldr ip, [r2, #0x88]
005565c0  00 20 e0 e3                                      mvn r2, #0
005565c4  14 30 8d e5                                      str r3, [sp, #0x14]
005565c8  00 20 8d e5                                      str r2, [sp]
005565cc  10 30 8d e5                                      str r3, [sp, #0x10]
005565d0  08 50 8d e5                                      str r5, [sp, #8]
005565d4  0c 50 8d e5                                      str r5, [sp, #0xc]
005565d8  08 20 8d e2                                      add r2, sp, #8
005565dc  04 30 a0 e1                                      mov r3, r4
005565e0  3c ff 2f e1                                      blx ip
005565e4  05 00 50 e1                                      cmp r0, r5
005565e8  78 01 84 e5                                      str r0, [r4, #0x178]
005565ec  0d 00 00 0a                                      beq #0x556628
005565f0  00 30 90 e5                                      ldr r3, [r0]
005565f4  01 10 a0 e3                                      mov r1, #1
005565f8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
005565fc  03 00 80 e0                                      add r0, r0, r3
00556600  04 30 90 e5                                      ldr r3, [r0, #4]
00556604  01 30 83 e0                                      add r3, r3, r1
00556608  04 30 80 e5                                      str r3, [r0, #4]
0055660c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00556610  9b 50 c3 e5                                      strb r5, [r3, #0x9b]
00556614  78 31 94 e5                                      ldr r3, [r4, #0x178]
00556618  03 00 a0 e1                                      mov r0, r3
0055661c  00 30 93 e5                                      ldr r3, [r3]
00556620  0f e0 a0 e1                                      mov lr, pc
00556624  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00556628  04 00 a0 e1                                      mov r0, r4
0055662c  9e fc ff eb                                      bl #0x5558ac
00556630  04 00 a0 e1                                      mov r0, r4
00556634  3c d0 8d e2                                      add sp, sp, #0x3c
00556638  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0055663c  84 e6 43 00 ec 2b 00 00 44 2b 00 00 04 2e 00 00  .byte 0x84, 0xe6, 0x43, 0x00, 0xec, 0x2b, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x04, 0x2e, 0x00, 0x00

; FUNCTION 0x0055664c, declared_size=516, range_size=516, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITableC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEbbb
; demangled: glitch::gui::CGUITable::CGUITable(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>, bool, bool, bool)
; decoder-mode: arm
0055664c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00556650  38 d0 4d e2                                      sub sp, sp, #0x38
00556654  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
00556658  01 60 a0 e1                                      mov r6, r1
0055665c  04 10 81 e2                                      add r1, r1, #4
00556660  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00556664  00 50 9c e5                                      ldr r5, [ip]
00556668  10 10 9c e9                                      ldmib ip, {r4, ip}
0055666c  60 80 dd e5                                      ldrb r8, [sp, #0x60]
00556670  28 50 8d e5                                      str r5, [sp, #0x28]
00556674  30 c0 8d e5                                      str ip, [sp, #0x30]
00556678  58 c0 9d e5                                      ldr ip, [sp, #0x58]
0055667c  2c 40 8d e5                                      str r4, [sp, #0x2c]
00556680  34 e0 8d e5                                      str lr, [sp, #0x34]
00556684  00 c0 8d e5                                      str ip, [sp]
00556688  28 c0 8d e2                                      add ip, sp, #0x28
0055668c  00 40 a0 e1                                      mov r4, r0
00556690  04 c0 8d e5                                      str ip, [sp, #4]
00556694  64 a0 dd e5                                      ldrb sl, [sp, #0x64]
00556698  68 90 dd e5                                      ldrb sb, [sp, #0x68]
0055669c  a4 fe ff eb                                      bl #0x556134
005566a0  00 20 96 e5                                      ldr r2, [r6]
005566a4  00 50 a0 e3                                      mov r5, #0
005566a8  00 30 e0 e3                                      mvn r3, #0
005566ac  00 20 84 e5                                      str r2, [r4]
005566b0  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
005566b4  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
005566b8  01 70 a0 e3                                      mov r7, #1
005566bc  64 e0 a0 e3                                      mov lr, #0x64
005566c0  02 10 84 e7                                      str r1, [r4, r2]
005566c4  00 20 94 e5                                      ldr r2, [r4]
005566c8  20 10 96 e5                                      ldr r1, [r6, #0x20]
005566cc  10 20 12 e5                                      ldr r2, [r2, #-0x10]
005566d0  02 10 84 e7                                      str r1, [r4, r2]
005566d4  02 20 a0 e3                                      mov r2, #2
005566d8  a0 21 84 e5                                      str r2, [r4, #0x1a0]
005566dc  05 20 a0 e3                                      mov r2, #5
005566e0  a4 21 84 e5                                      str r2, [r4, #0x1a4]
005566e4  80 31 84 e5                                      str r3, [r4, #0x180]
005566e8  98 31 84 e5                                      str r3, [r4, #0x198]
005566ec  a8 31 84 e5                                      str r3, [r4, #0x1a8]
005566f0  7c 81 c4 e5                                      strb r8, [r4, #0x17c]
005566f4  7d a1 c4 e5                                      strb sl, [r4, #0x17d]
005566f8  7e 91 c4 e5                                      strb sb, [r4, #0x17e]
005566fc  58 51 84 e5                                      str r5, [r4, #0x158]
00556700  5c 51 84 e5                                      str r5, [r4, #0x15c]
00556704  60 51 84 e5                                      str r5, [r4, #0x160]
00556708  64 51 84 e5                                      str r5, [r4, #0x164]
0055670c  68 51 84 e5                                      str r5, [r4, #0x168]
00556710  6c 51 84 e5                                      str r5, [r4, #0x16c]
00556714  70 51 84 e5                                      str r5, [r4, #0x170]
00556718  74 51 84 e5                                      str r5, [r4, #0x174]
0055671c  78 51 84 e5                                      str r5, [r4, #0x178]
00556720  7f 51 c4 e5                                      strb r5, [r4, #0x17f]
00556724  84 51 84 e5                                      str r5, [r4, #0x184]
00556728  88 71 c4 e5                                      strb r7, [r4, #0x188]
0055672c  89 51 c4 e5                                      strb r5, [r4, #0x189]
00556730  8c 51 84 e5                                      str r5, [r4, #0x18c]
00556734  90 51 84 e5                                      str r5, [r4, #0x190]
00556738  94 51 84 e5                                      str r5, [r4, #0x194]
0055673c  ac 51 84 e5                                      str r5, [r4, #0x1ac]
00556740  50 01 94 e5                                      ldr r0, [r4, #0x150]
00556744  07 20 a0 e3                                      mov r2, #7
00556748  b0 21 84 e5                                      str r2, [r4, #0x1b0]
0055674c  00 c0 90 e5                                      ldr ip, [r0]
00556750  05 10 a0 e1                                      mov r1, r5
00556754  18 20 8d e2                                      add r2, sp, #0x18
00556758  88 c0 9c e5                                      ldr ip, [ip, #0x88]
0055675c  00 30 8d e5                                      str r3, [sp]
00556760  24 e0 8d e5                                      str lr, [sp, #0x24]
00556764  18 50 8d e5                                      str r5, [sp, #0x18]
00556768  1c 50 8d e5                                      str r5, [sp, #0x1c]
0055676c  20 e0 8d e5                                      str lr, [sp, #0x20]
00556770  04 30 a0 e1                                      mov r3, r4
00556774  3c ff 2f e1                                      blx ip
00556778  05 00 50 e1                                      cmp r0, r5
0055677c  74 01 84 e5                                      str r0, [r4, #0x174]
00556780  0d 00 00 0a                                      beq #0x5567bc
00556784  00 30 90 e5                                      ldr r3, [r0]
00556788  07 10 a0 e1                                      mov r1, r7
0055678c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00556790  03 00 80 e0                                      add r0, r0, r3
00556794  04 30 90 e5                                      ldr r3, [r0, #4]
00556798  07 30 83 e0                                      add r3, r3, r7
0055679c  04 30 80 e5                                      str r3, [r0, #4]
005567a0  74 31 94 e5                                      ldr r3, [r4, #0x174]
005567a4  9b 50 c3 e5                                      strb r5, [r3, #0x9b]
005567a8  74 31 94 e5                                      ldr r3, [r4, #0x174]
005567ac  03 00 a0 e1                                      mov r0, r3
005567b0  00 30 93 e5                                      ldr r3, [r3]
005567b4  0f e0 a0 e1                                      mov lr, pc
005567b8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005567bc  50 01 94 e5                                      ldr r0, [r4, #0x150]
005567c0  00 50 a0 e3                                      mov r5, #0
005567c4  64 30 a0 e3                                      mov r3, #0x64
005567c8  00 20 90 e5                                      ldr r2, [r0]
005567cc  01 10 a0 e3                                      mov r1, #1
005567d0  88 c0 92 e5                                      ldr ip, [r2, #0x88]
005567d4  00 20 e0 e3                                      mvn r2, #0
005567d8  14 30 8d e5                                      str r3, [sp, #0x14]
005567dc  00 20 8d e5                                      str r2, [sp]
005567e0  10 30 8d e5                                      str r3, [sp, #0x10]
005567e4  08 50 8d e5                                      str r5, [sp, #8]
005567e8  0c 50 8d e5                                      str r5, [sp, #0xc]
005567ec  08 20 8d e2                                      add r2, sp, #8
005567f0  04 30 a0 e1                                      mov r3, r4
005567f4  3c ff 2f e1                                      blx ip
005567f8  05 00 50 e1                                      cmp r0, r5
005567fc  78 01 84 e5                                      str r0, [r4, #0x178]
00556800  0d 00 00 0a                                      beq #0x55683c
00556804  00 30 90 e5                                      ldr r3, [r0]
00556808  01 10 a0 e3                                      mov r1, #1
0055680c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00556810  03 00 80 e0                                      add r0, r0, r3
00556814  04 30 90 e5                                      ldr r3, [r0, #4]
00556818  01 30 83 e0                                      add r3, r3, r1
0055681c  04 30 80 e5                                      str r3, [r0, #4]
00556820  78 31 94 e5                                      ldr r3, [r4, #0x178]
00556824  9b 50 c3 e5                                      strb r5, [r3, #0x9b]
00556828  78 31 94 e5                                      ldr r3, [r4, #0x178]
0055682c  03 00 a0 e1                                      mov r0, r3
00556830  00 30 93 e5                                      ldr r3, [r3]
00556834  0f e0 a0 e1                                      mov lr, pc
00556838  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055683c  04 00 a0 e1                                      mov r0, r4
00556840  19 fc ff eb                                      bl #0x5558ac
00556844  04 00 a0 e1                                      mov r0, r4
00556848  38 d0 8d e2                                      add sp, sp, #0x38
0055684c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005568a0, declared_size=1220, range_size=1220, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUITable::onEvent(glitch::SEvent const&)
; decoder-mode: arm
005568a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005568a4  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
005568a8  00 40 a0 e1                                      mov r4, r0
005568ac  01 50 a0 e1                                      mov r5, r1
005568b0  00 00 53 e3                                      cmp r3, #0
005568b4  08 00 00 0a                                      beq #0x5568dc
005568b8  00 30 91 e5                                      ldr r3, [r1]
005568bc  00 00 53 e3                                      cmp r3, #0
005568c0  0e 00 00 1a                                      bne #0x556900
005568c4  10 30 91 e5                                      ldr r3, [r1, #0x10]
005568c8  00 00 53 e3                                      cmp r3, #0
005568cc  00 20 e0 03                                      mvneq r2, #0
005568d0  80 21 80 05                                      streq r2, [r0, #0x180]
005568d4  7f 31 c0 05                                      strbeq r3, [r0, #0x17f]
005568d8  18 00 00 1a                                      bne #0x556940
005568dc  24 30 94 e5                                      ldr r3, [r4, #0x24]
005568e0  00 00 53 e3                                      cmp r3, #0
005568e4  20 00 00 0a                                      beq #0x55696c
005568e8  03 00 a0 e1                                      mov r0, r3
005568ec  05 10 a0 e1                                      mov r1, r5
005568f0  00 30 93 e5                                      ldr r3, [r3]
005568f4  0f e0 a0 e1                                      mov lr, pc
005568f8  08 f0 93 e5                                      ldr pc, [r3, #8]
005568fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00556900  01 00 53 e3                                      cmp r3, #1
00556904  f4 ff ff 1a                                      bne #0x5568dc
00556908  14 30 91 e5                                      ldr r3, [r1, #0x14]
0055690c  08 60 91 e5                                      ldr r6, [r1, #8]
00556910  0c 70 91 e5                                      ldr r7, [r1, #0xc]
00556914  07 00 53 e3                                      cmp r3, #7
00556918  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0055691c  ee ff ff ea                                      b #0x5568dc
00556920  71 00 00 ea                                      b #0x556aec
00556924  ec ff ff ea                                      b #0x5568dc
00556928  eb ff ff ea                                      b #0x5568dc
0055692c  3e 00 00 ea                                      b #0x556a2c
00556930  e9 ff ff ea                                      b #0x5568dc
00556934  e8 ff ff ea                                      b #0x5568dc
00556938  1c 00 00 ea                                      b #0x5569b0
0055693c  0c 00 00 ea                                      b #0x556974
00556940  06 00 53 e3                                      cmp r3, #6
00556944  e4 ff ff 1a                                      bne #0x5568dc
00556948  08 30 91 e5                                      ldr r3, [r1, #8]
0055694c  74 21 90 e5                                      ldr r2, [r0, #0x174]
00556950  02 00 53 e1                                      cmp r3, r2
00556954  02 00 00 0a                                      beq #0x556964
00556958  78 21 90 e5                                      ldr r2, [r0, #0x178]
0055695c  02 00 53 e1                                      cmp r3, r2
00556960  dd ff ff 1a                                      bne #0x5568dc
00556964  01 00 a0 e3                                      mov r0, #1
00556968  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0055696c  03 00 a0 e1                                      mov r0, r3
00556970  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00556974  74 61 90 e5                                      ldr r6, [r0, #0x174]
00556978  00 30 96 e5                                      ldr r3, [r6]
0055697c  06 00 a0 e1                                      mov r0, r6
00556980  98 40 93 e5                                      ldr r4, [r3, #0x98]
00556984  0f e0 a0 e1                                      mov lr, pc
00556988  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0055698c  00 70 a0 e1                                      mov r7, r0
00556990  10 00 95 e5                                      ldr r0, [r5, #0x10]
00556994  cc de f6 eb                                      bl #0x30e4cc
00556998  09 10 e0 e3                                      mvn r1, #9
0055699c  91 70 21 e0                                      mla r1, r1, r0, r7
005569a0  06 00 a0 e1                                      mov r0, r6
005569a4  34 ff 2f e1                                      blx r4
005569a8  01 00 a0 e3                                      mov r0, #1
005569ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005569b0  80 31 90 e5                                      ldr r3, [r0, #0x180]
005569b4  00 00 53 e3                                      cmp r3, #0
005569b8  03 00 00 ba                                      blt #0x5569cc
005569bc  06 10 a0 e1                                      mov r1, r6
005569c0  1d fc ff eb                                      bl #0x555a3c
005569c4  00 00 50 e3                                      cmp r0, #0
005569c8  e5 ff ff 1a                                      bne #0x556964
005569cc  7f 31 d4 e5                                      ldrb r3, [r4, #0x17f]
005569d0  00 00 53 e3                                      cmp r3, #0
005569d4  02 00 00 1a                                      bne #0x5569e4
005569d8  7e 31 d4 e5                                      ldrb r3, [r4, #0x17e]
005569dc  00 00 53 e3                                      cmp r3, #0
005569e0  bd ff ff 0a                                      beq #0x5568dc
005569e4  38 30 94 e5                                      ldr r3, [r4, #0x38]
005569e8  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
005569ec  40 10 94 e5                                      ldr r1, [r4, #0x40]
005569f0  03 00 56 e1                                      cmp r6, r3
005569f4  44 30 94 e5                                      ldr r3, [r4, #0x44]
005569f8  b7 ff ff ba                                      blt #0x5568dc
005569fc  02 00 57 e1                                      cmp r7, r2
00556a00  b5 ff ff ba                                      blt #0x5568dc
00556a04  01 00 56 e1                                      cmp r6, r1
00556a08  b3 ff ff ca                                      bgt #0x5568dc
00556a0c  03 00 57 e1                                      cmp r7, r3
00556a10  b1 ff ff ca                                      bgt #0x5568dc
00556a14  04 00 a0 e1                                      mov r0, r4
00556a18  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00556a1c  00 20 a0 e3                                      mov r2, #0
00556a20  62 fc ff eb                                      bl #0x555bb0
00556a24  01 00 a0 e3                                      mov r0, #1
00556a28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00556a2c  38 30 90 e5                                      ldr r3, [r0, #0x38]
00556a30  40 10 90 e5                                      ldr r1, [r0, #0x40]
00556a34  44 20 90 e5                                      ldr r2, [r0, #0x44]
00556a38  03 00 56 e1                                      cmp r6, r3
00556a3c  00 30 e0 e3                                      mvn r3, #0
00556a40  80 31 80 e5                                      str r3, [r0, #0x180]
00556a44  00 30 a0 e3                                      mov r3, #0
00556a48  7f 31 c0 e5                                      strb r3, [r0, #0x17f]
00556a4c  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00556a50  05 00 00 ba                                      blt #0x556a6c
00556a54  03 00 57 e1                                      cmp r7, r3
00556a58  03 00 00 ba                                      blt #0x556a6c
00556a5c  01 00 56 e1                                      cmp r6, r1
00556a60  01 00 00 ca                                      bgt #0x556a6c
00556a64  02 00 57 e1                                      cmp r7, r2
00556a68  05 00 00 da                                      ble #0x556a84
00556a6c  50 31 94 e5                                      ldr r3, [r4, #0x150]
00556a70  04 10 a0 e1                                      mov r1, r4
00556a74  03 00 a0 e1                                      mov r0, r3
00556a78  00 30 93 e5                                      ldr r3, [r3]
00556a7c  0f e0 a0 e1                                      mov lr, pc
00556a80  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00556a84  50 31 94 e5                                      ldr r3, [r4, #0x150]
00556a88  04 10 a0 e1                                      mov r1, r4
00556a8c  03 00 a0 e1                                      mov r0, r3
00556a90  00 30 93 e5                                      ldr r3, [r3]
00556a94  0f e0 a0 e1                                      mov lr, pc
00556a98  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00556a9c  00 00 50 e3                                      cmp r0, #0
00556aa0  37 00 00 1a                                      bne #0x556b84
00556aa4  50 31 94 e5                                      ldr r3, [r4, #0x150]
00556aa8  04 10 a0 e1                                      mov r1, r4
00556aac  03 00 a0 e1                                      mov r0, r3
00556ab0  00 30 93 e5                                      ldr r3, [r3]
00556ab4  0f e0 a0 e1                                      mov lr, pc
00556ab8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00556abc  00 00 50 e3                                      cmp r0, #0
00556ac0  83 00 00 1a                                      bne #0x556cd4
00556ac4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00556ac8  00 20 a0 e3                                      mov r2, #0
00556acc  04 00 a0 e1                                      mov r0, r4
00556ad0  36 fc ff eb                                      bl #0x555bb0
00556ad4  04 00 a0 e1                                      mov r0, r4
00556ad8  08 10 95 e5                                      ldr r1, [r5, #8]
00556adc  00 20 a0 e3                                      mov r2, #0
00556ae0  77 fc ff eb                                      bl #0x555cc4
00556ae4  01 00 a0 e3                                      mov r0, #1
00556ae8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00556aec  50 31 90 e5                                      ldr r3, [r0, #0x150]
00556af0  00 10 a0 e1                                      mov r1, r0
00556af4  03 00 a0 e1                                      mov r0, r3
00556af8  00 30 93 e5                                      ldr r3, [r3]
00556afc  0f e0 a0 e1                                      mov lr, pc
00556b00  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00556b04  00 00 50 e3                                      cmp r0, #0
00556b08  39 00 00 1a                                      bne #0x556bf4
00556b0c  50 31 94 e5                                      ldr r3, [r4, #0x150]
00556b10  04 10 a0 e1                                      mov r1, r4
00556b14  03 00 a0 e1                                      mov r0, r3
00556b18  00 30 93 e5                                      ldr r3, [r3]
00556b1c  0f e0 a0 e1                                      mov lr, pc
00556b20  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00556b24  00 00 50 e3                                      cmp r0, #0
00556b28  4d 00 00 1a                                      bne #0x556c64
00556b2c  04 00 a0 e1                                      mov r0, r4
00556b30  08 10 95 e5                                      ldr r1, [r5, #8]
00556b34  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00556b38  81 fb ff eb                                      bl #0x555944
00556b3c  00 00 50 e3                                      cmp r0, #0
00556b40  7f 00 00 1a                                      bne #0x556d44
00556b44  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00556b48  04 00 a0 e1                                      mov r0, r4
00556b4c  08 10 95 e5                                      ldr r1, [r5, #8]
00556b50  dc fb ff eb                                      bl #0x555ac8
00556b54  00 00 50 e3                                      cmp r0, #0
00556b58  81 ff ff 1a                                      bne #0x556964
00556b5c  50 31 94 e5                                      ldr r3, [r4, #0x150]
00556b60  01 50 a0 e3                                      mov r5, #1
00556b64  7f 51 c4 e5                                      strb r5, [r4, #0x17f]
00556b68  03 00 a0 e1                                      mov r0, r3
00556b6c  04 10 a0 e1                                      mov r1, r4
00556b70  00 30 93 e5                                      ldr r3, [r3]
00556b74  0f e0 a0 e1                                      mov lr, pc
00556b78  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00556b7c  05 00 a0 e1                                      mov r0, r5
00556b80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00556b84  74 31 94 e5                                      ldr r3, [r4, #0x174]
00556b88  03 00 a0 e1                                      mov r0, r3
00556b8c  00 30 93 e5                                      ldr r3, [r3]
00556b90  0f e0 a0 e1                                      mov lr, pc
00556b94  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00556b98  00 00 50 e3                                      cmp r0, #0
00556b9c  c0 ff ff 0a                                      beq #0x556aa4
00556ba0  74 31 94 e5                                      ldr r3, [r4, #0x174]
00556ba4  38 20 93 e5                                      ldr r2, [r3, #0x38]
00556ba8  3c 10 93 e5                                      ldr r1, [r3, #0x3c]
00556bac  40 00 93 e5                                      ldr r0, [r3, #0x40]
00556bb0  02 00 56 e1                                      cmp r6, r2
00556bb4  44 20 93 e5                                      ldr r2, [r3, #0x44]
00556bb8  b9 ff ff ba                                      blt #0x556aa4
00556bbc  01 00 57 e1                                      cmp r7, r1
00556bc0  b7 ff ff ba                                      blt #0x556aa4
00556bc4  00 00 56 e1                                      cmp r6, r0
00556bc8  b5 ff ff ca                                      bgt #0x556aa4
00556bcc  02 00 57 e1                                      cmp r7, r2
00556bd0  b3 ff ff ca                                      bgt #0x556aa4
00556bd4  03 00 a0 e1                                      mov r0, r3
00556bd8  05 10 a0 e1                                      mov r1, r5
00556bdc  00 30 93 e5                                      ldr r3, [r3]
00556be0  0f e0 a0 e1                                      mov lr, pc
00556be4  08 f0 93 e5                                      ldr pc, [r3, #8]
00556be8  00 00 50 e3                                      cmp r0, #0
00556bec  5c ff ff 1a                                      bne #0x556964
00556bf0  ab ff ff ea                                      b #0x556aa4
00556bf4  74 31 94 e5                                      ldr r3, [r4, #0x174]
00556bf8  03 00 a0 e1                                      mov r0, r3
00556bfc  00 30 93 e5                                      ldr r3, [r3]
00556c00  0f e0 a0 e1                                      mov lr, pc
00556c04  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00556c08  00 00 50 e3                                      cmp r0, #0
00556c0c  be ff ff 0a                                      beq #0x556b0c
00556c10  74 31 94 e5                                      ldr r3, [r4, #0x174]
00556c14  38 20 93 e5                                      ldr r2, [r3, #0x38]
00556c18  3c 10 93 e5                                      ldr r1, [r3, #0x3c]
00556c1c  40 00 93 e5                                      ldr r0, [r3, #0x40]
00556c20  02 00 56 e1                                      cmp r6, r2
00556c24  44 20 93 e5                                      ldr r2, [r3, #0x44]
00556c28  b7 ff ff ba                                      blt #0x556b0c
00556c2c  01 00 57 e1                                      cmp r7, r1
00556c30  b5 ff ff ba                                      blt #0x556b0c
00556c34  00 00 56 e1                                      cmp r6, r0
00556c38  b3 ff ff ca                                      bgt #0x556b0c
00556c3c  02 00 57 e1                                      cmp r7, r2
00556c40  b1 ff ff ca                                      bgt #0x556b0c
00556c44  03 00 a0 e1                                      mov r0, r3
00556c48  05 10 a0 e1                                      mov r1, r5
00556c4c  00 30 93 e5                                      ldr r3, [r3]
00556c50  0f e0 a0 e1                                      mov lr, pc
00556c54  08 f0 93 e5                                      ldr pc, [r3, #8]
00556c58  00 00 50 e3                                      cmp r0, #0
00556c5c  40 ff ff 1a                                      bne #0x556964
00556c60  a9 ff ff ea                                      b #0x556b0c
00556c64  78 31 94 e5                                      ldr r3, [r4, #0x178]
00556c68  03 00 a0 e1                                      mov r0, r3
00556c6c  00 30 93 e5                                      ldr r3, [r3]
00556c70  0f e0 a0 e1                                      mov lr, pc
00556c74  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00556c78  00 00 50 e3                                      cmp r0, #0
00556c7c  aa ff ff 0a                                      beq #0x556b2c
00556c80  78 31 94 e5                                      ldr r3, [r4, #0x178]
00556c84  38 20 93 e5                                      ldr r2, [r3, #0x38]
00556c88  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00556c8c  40 10 93 e5                                      ldr r1, [r3, #0x40]
00556c90  02 00 56 e1                                      cmp r6, r2
00556c94  44 20 93 e5                                      ldr r2, [r3, #0x44]
00556c98  a3 ff ff ba                                      blt #0x556b2c
00556c9c  00 00 57 e1                                      cmp r7, r0
00556ca0  a1 ff ff ba                                      blt #0x556b2c
00556ca4  01 00 56 e1                                      cmp r6, r1
00556ca8  9f ff ff ca                                      bgt #0x556b2c
00556cac  02 00 57 e1                                      cmp r7, r2
00556cb0  9d ff ff ca                                      bgt #0x556b2c
00556cb4  03 00 a0 e1                                      mov r0, r3
00556cb8  05 10 a0 e1                                      mov r1, r5
00556cbc  00 30 93 e5                                      ldr r3, [r3]
00556cc0  0f e0 a0 e1                                      mov lr, pc
00556cc4  08 f0 93 e5                                      ldr pc, [r3, #8]
00556cc8  00 00 50 e3                                      cmp r0, #0
00556ccc  24 ff ff 1a                                      bne #0x556964
00556cd0  95 ff ff ea                                      b #0x556b2c
00556cd4  78 31 94 e5                                      ldr r3, [r4, #0x178]
00556cd8  03 00 a0 e1                                      mov r0, r3
00556cdc  00 30 93 e5                                      ldr r3, [r3]
00556ce0  0f e0 a0 e1                                      mov lr, pc
00556ce4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00556ce8  00 00 50 e3                                      cmp r0, #0
00556cec  74 ff ff 0a                                      beq #0x556ac4
00556cf0  78 31 94 e5                                      ldr r3, [r4, #0x178]
00556cf4  38 20 93 e5                                      ldr r2, [r3, #0x38]
00556cf8  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00556cfc  40 10 93 e5                                      ldr r1, [r3, #0x40]
00556d00  02 00 56 e1                                      cmp r6, r2
00556d04  44 20 93 e5                                      ldr r2, [r3, #0x44]
00556d08  6d ff ff ba                                      blt #0x556ac4
00556d0c  00 00 57 e1                                      cmp r7, r0
00556d10  6b ff ff ba                                      blt #0x556ac4
00556d14  01 00 56 e1                                      cmp r6, r1
00556d18  69 ff ff ca                                      bgt #0x556ac4
00556d1c  02 00 57 e1                                      cmp r7, r2
00556d20  67 ff ff ca                                      bgt #0x556ac4
00556d24  03 00 a0 e1                                      mov r0, r3
00556d28  05 10 a0 e1                                      mov r1, r5
00556d2c  00 30 93 e5                                      ldr r3, [r3]
00556d30  0f e0 a0 e1                                      mov lr, pc
00556d34  08 f0 93 e5                                      ldr pc, [r3, #8]
00556d38  00 00 50 e3                                      cmp r0, #0
00556d3c  08 ff ff 1a                                      bne #0x556964
00556d40  5f ff ff ea                                      b #0x556ac4
00556d44  50 31 94 e5                                      ldr r3, [r4, #0x150]
00556d48  04 10 a0 e1                                      mov r1, r4
00556d4c  03 00 a0 e1                                      mov r0, r3
00556d50  00 30 93 e5                                      ldr r3, [r3]
00556d54  0f e0 a0 e1                                      mov lr, pc
00556d58  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00556d5c  01 00 a0 e3                                      mov r0, #1
00556d60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00556ea0, declared_size=2548, range_size=2548, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable4drawEv
; demangled: glitch::gui::CGUITable::draw()
; decoder-mode: arm
00556ea0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00556ea4  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00556ea8  ec d0 4d e2                                      sub sp, sp, #0xec
00556eac  00 40 a0 e1                                      mov r4, r0
00556eb0  00 00 53 e3                                      cmp r3, #0
00556eb4  01 00 00 1a                                      bne #0x556ec0
00556eb8  ec d0 8d e2                                      add sp, sp, #0xec
00556ebc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00556ec0  50 31 90 e5                                      ldr r3, [r0, #0x150]
00556ec4  03 00 a0 e1                                      mov r0, r3
00556ec8  00 30 93 e5                                      ldr r3, [r3]
00556ecc  0f e0 a0 e1                                      mov lr, pc
00556ed0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00556ed4  38 00 8d e5                                      str r0, [sp, #0x38]
00556ed8  50 31 94 e5                                      ldr r3, [r4, #0x150]
00556edc  03 00 a0 e1                                      mov r0, r3
00556ee0  00 30 93 e5                                      ldr r3, [r3]
00556ee4  0f e0 a0 e1                                      mov lr, pc
00556ee8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00556eec  00 60 50 e2                                      subs r6, r0, #0
00556ef0  f0 ff ff 0a                                      beq #0x556eb8
00556ef4  00 30 96 e5                                      ldr r3, [r6]
00556ef8  00 10 a0 e3                                      mov r1, #0
00556efc  0f e0 a0 e1                                      mov lr, pc
00556f00  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00556f04  00 70 50 e2                                      subs r7, r0, #0
00556f08  ea ff ff 0a                                      beq #0x556eb8
00556f0c  38 10 94 e5                                      ldr r1, [r4, #0x38]
00556f10  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00556f14  74 31 94 e5                                      ldr r3, [r4, #0x174]
00556f18  40 c0 94 e5                                      ldr ip, [r4, #0x40]
00556f1c  44 00 94 e5                                      ldr r0, [r4, #0x44]
00556f20  01 10 81 e2                                      add r1, r1, #1
00556f24  01 20 82 e2                                      add r2, r2, #1
00556f28  00 00 53 e3                                      cmp r3, #0
00556f2c  b0 c0 8d e5                                      str ip, [sp, #0xb0]
00556f30  b4 00 8d e5                                      str r0, [sp, #0xb4]
00556f34  a8 10 8d e5                                      str r1, [sp, #0xa8]
00556f38  ac 20 8d e5                                      str r2, [sp, #0xac]
00556f3c  0d 00 00 0a                                      beq #0x556f78
00556f40  03 00 a0 e1                                      mov r0, r3
00556f44  00 30 93 e5                                      ldr r3, [r3]
00556f48  0f e0 a0 e1                                      mov lr, pc
00556f4c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00556f50  00 00 50 e3                                      cmp r0, #0
00556f54  07 00 00 0a                                      beq #0x556f78
00556f58  00 30 96 e5                                      ldr r3, [r6]
00556f5c  06 00 a0 e1                                      mov r0, r6
00556f60  00 10 a0 e3                                      mov r1, #0
00556f64  b0 50 9d e5                                      ldr r5, [sp, #0xb0]
00556f68  0f e0 a0 e1                                      mov lr, pc
00556f6c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00556f70  05 00 60 e0                                      rsb r0, r0, r5
00556f74  b0 00 8d e5                                      str r0, [sp, #0xb0]
00556f78  78 31 94 e5                                      ldr r3, [r4, #0x178]
00556f7c  00 00 53 e3                                      cmp r3, #0
00556f80  0d 00 00 0a                                      beq #0x556fbc
00556f84  03 00 a0 e1                                      mov r0, r3
00556f88  00 30 93 e5                                      ldr r3, [r3]
00556f8c  0f e0 a0 e1                                      mov lr, pc
00556f90  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00556f94  00 00 50 e3                                      cmp r0, #0
00556f98  07 00 00 0a                                      beq #0x556fbc
00556f9c  00 30 96 e5                                      ldr r3, [r6]
00556fa0  06 00 a0 e1                                      mov r0, r6
00556fa4  00 10 a0 e3                                      mov r1, #0
00556fa8  b4 50 9d e5                                      ldr r5, [sp, #0xb4]
00556fac  0f e0 a0 e1                                      mov lr, pc
00556fb0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00556fb4  05 00 60 e0                                      rsb r0, r0, r5
00556fb8  b4 00 8d e5                                      str r0, [sp, #0xb4]
00556fbc  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00556fc0  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00556fc4  7c a1 d4 e5                                      ldrb sl, [r4, #0x17c]
00556fc8  03 10 a0 e3                                      mov r1, #3
00556fcc  03 30 82 e0                                      add r3, r2, r3
00556fd0  34 30 8d e5                                      str r3, [sp, #0x34]
00556fd4  01 50 83 e2                                      add r5, r3, #1
00556fd8  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00556fdc  9c 50 8d e5                                      str r5, [sp, #0x9c]
00556fe0  00 00 5a e3                                      cmp sl, #0
00556fe4  98 30 8d e5                                      str r3, [sp, #0x98]
00556fe8  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
00556fec  06 00 a0 e1                                      mov r0, r6
00556ff0  48 a0 84 12                                      addne sl, r4, #0x48
00556ff4  a0 30 8d e5                                      str r3, [sp, #0xa0]
00556ff8  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
00556ffc  a4 30 8d e5                                      str r3, [sp, #0xa4]
00557000  00 30 96 e5                                      ldr r3, [r6]
00557004  48 80 93 e5                                      ldr r8, [r3, #0x48]
00557008  0f e0 a0 e1                                      mov lr, pc
0055700c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00557010  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00557014  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00557018  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0055701c  41 10 cd e5                                      strb r1, [sp, #0x41]
00557020  40 00 cd e5                                      strb r0, [sp, #0x40]
00557024  42 20 cd e5                                      strb r2, [sp, #0x42]
00557028  43 30 cd e5                                      strb r3, [sp, #0x43]
0055702c  7d 31 d4 e5                                      ldrb r3, [r4, #0x17d]
00557030  40 20 9d e5                                      ldr r2, [sp, #0x40]
00557034  38 10 84 e2                                      add r1, r4, #0x38
00557038  04 10 8d e5                                      str r1, [sp, #4]
0055703c  00 30 8d e5                                      str r3, [sp]
00557040  08 a0 8d e5                                      str sl, [sp, #8]
00557044  06 00 a0 e1                                      mov r0, r6
00557048  01 30 a0 e3                                      mov r3, #1
0055704c  e4 20 8d e5                                      str r2, [sp, #0xe4]
00557050  04 10 a0 e1                                      mov r1, r4
00557054  38 ff 2f e1                                      blx r8
00557058  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
0055705c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00557060  30 00 8d e5                                      str r0, [sp, #0x30]
00557064  94 a1 94 e5                                      ldr sl, [r4, #0x194]
00557068  00 00 53 e3                                      cmp r3, #0
0055706c  0a a0 80 e0                                      add sl, r0, sl
00557070  10 00 00 0a                                      beq #0x5570b8
00557074  03 00 a0 e1                                      mov r0, r3
00557078  00 30 93 e5                                      ldr r3, [r3]
0055707c  0f e0 a0 e1                                      mov lr, pc
00557080  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00557084  00 00 50 e3                                      cmp r0, #0
00557088  0a 00 00 0a                                      beq #0x5570b8
0055708c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00557090  03 00 a0 e1                                      mov r0, r3
00557094  00 30 93 e5                                      ldr r3, [r3]
00557098  0f e0 a0 e1                                      mov lr, pc
0055709c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
005570a0  74 31 94 e5                                      ldr r3, [r4, #0x174]
005570a4  05 50 60 e0                                      rsb r5, r0, r5
005570a8  03 00 a0 e1                                      mov r0, r3
005570ac  00 30 93 e5                                      ldr r3, [r3]
005570b0  0f e0 a0 e1                                      mov lr, pc
005570b4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
005570b8  78 31 94 e5                                      ldr r3, [r4, #0x178]
005570bc  00 00 53 e3                                      cmp r3, #0
005570c0  13 00 00 0a                                      beq #0x557114
005570c4  03 00 a0 e1                                      mov r0, r3
005570c8  00 30 93 e5                                      ldr r3, [r3]
005570cc  0f e0 a0 e1                                      mov lr, pc
005570d0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
005570d4  00 00 50 e3                                      cmp r0, #0
005570d8  0d 00 00 0a                                      beq #0x557114
005570dc  78 31 94 e5                                      ldr r3, [r4, #0x178]
005570e0  03 00 a0 e1                                      mov r0, r3
005570e4  00 30 93 e5                                      ldr r3, [r3]
005570e8  0f e0 a0 e1                                      mov lr, pc
005570ec  94 f0 93 e5                                      ldr pc, [r3, #0x94]
005570f0  30 10 9d e5                                      ldr r1, [sp, #0x30]
005570f4  78 31 94 e5                                      ldr r3, [r4, #0x178]
005570f8  01 10 60 e0                                      rsb r1, r0, r1
005570fc  30 10 8d e5                                      str r1, [sp, #0x30]
00557100  03 00 a0 e1                                      mov r0, r3
00557104  00 30 93 e5                                      ldr r3, [r3]
00557108  0f e0 a0 e1                                      mov lr, pc
0055710c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00557110  0a a0 60 e0                                      rsb sl, r0, sl
00557114  68 81 94 e5                                      ldr r8, [r4, #0x168]
00557118  64 e1 94 e5                                      ldr lr, [r4, #0x164]
0055711c  8c c1 94 e5                                      ldr ip, [r4, #0x18c]
00557120  30 00 9d e5                                      ldr r0, [sp, #0x30]
00557124  08 30 6e e0                                      rsb r3, lr, r8
00557128  43 31 a0 e1                                      asr r3, r3, #2
0055712c  0c 20 85 e0                                      add r2, r5, ip
00557130  03 11 83 e0                                      add r1, r3, r3, lsl #2
00557134  90 a0 8d e5                                      str sl, [sp, #0x90]
00557138  01 12 81 e0                                      add r1, r1, r1, lsl #4
0055713c  88 00 8d e5                                      str r0, [sp, #0x88]
00557140  01 14 81 e0                                      add r1, r1, r1, lsl #8
00557144  8c 50 8d e5                                      str r5, [sp, #0x8c]
00557148  01 18 81 e0                                      add r1, r1, r1, lsl #16
0055714c  94 20 8d e5                                      str r2, [sp, #0x94]
00557150  81 30 83 e0                                      add r3, r3, r1, lsl #1
00557154  00 00 53 e3                                      cmp r3, #0
00557158  b4 00 00 0a                                      beq #0x557430
0055715c  3d 3f 0c e3                                      movw r3, #0xcf3d
00557160  00 10 a0 e3                                      mov r1, #0
00557164  f3 3c 43 e3                                      movt r3, #0x3cf3
00557168  18 10 8d e5                                      str r1, [sp, #0x18]
0055716c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00557170  01 b0 a0 e1                                      mov fp, r1
00557174  98 00 8d e2                                      add r0, sp, #0x98
00557178  68 10 8d e2                                      add r1, sp, #0x68
0055717c  88 30 8d e2                                      add r3, sp, #0x88
00557180  24 00 8d e5                                      str r0, [sp, #0x24]
00557184  28 10 8d e5                                      str r1, [sp, #0x28]
00557188  3c 30 8d e5                                      str r3, [sp, #0x3c]
0055718c  07 a0 a0 e1                                      mov sl, r7
00557190  06 90 a0 e1                                      mov sb, r6
00557194  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00557198  02 00 53 e1                                      cmp r3, r2
0055719c  8f 00 00 ca                                      bgt #0x5573e0
005571a0  44 30 94 e5                                      ldr r3, [r4, #0x44]
005571a4  05 00 53 e1                                      cmp r3, r5
005571a8  8c 00 00 ba                                      blt #0x5573e0
005571ac  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
005571b0  01 00 13 e3                                      tst r3, #1
005571b4  1a 00 00 0a                                      beq #0x557224
005571b8  88 10 9d e5                                      ldr r1, [sp, #0x88]
005571bc  94 30 9d e5                                      ldr r3, [sp, #0x94]
005571c0  09 00 a0 e1                                      mov r0, sb
005571c4  58 10 8d e5                                      str r1, [sp, #0x58]
005571c8  90 10 9d e5                                      ldr r1, [sp, #0x90]
005571cc  01 20 43 e2                                      sub r2, r3, #1
005571d0  5c 20 8d e5                                      str r2, [sp, #0x5c]
005571d4  60 10 8d e5                                      str r1, [sp, #0x60]
005571d8  64 30 8d e5                                      str r3, [sp, #0x64]
005571dc  01 10 a0 e3                                      mov r1, #1
005571e0  00 30 99 e5                                      ldr r3, [sb]
005571e4  0f e0 a0 e1                                      mov lr, pc
005571e8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005571ec  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005571f0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005571f4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005571f8  41 10 cd e5                                      strb r1, [sp, #0x41]
005571fc  42 20 cd e5                                      strb r2, [sp, #0x42]
00557200  43 30 cd e5                                      strb r3, [sp, #0x43]
00557204  40 00 cd e5                                      strb r0, [sp, #0x40]
00557208  40 c0 9d e5                                      ldr ip, [sp, #0x40]
0055720c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00557210  58 20 8d e2                                      add r2, sp, #0x58
00557214  0c 10 a0 e1                                      mov r1, ip
00557218  24 30 9d e5                                      ldr r3, [sp, #0x24]
0055721c  e0 c0 8d e5                                      str ip, [sp, #0xe0]
00557220  95 21 01 eb                                      bl #0x59f87c
00557224  98 31 94 e5                                      ldr r3, [r4, #0x198]
00557228  88 60 9d e5                                      ldr r6, [sp, #0x88]
0055722c  0b 00 53 e1                                      cmp r3, fp
00557230  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
00557234  68 60 8d e5                                      str r6, [sp, #0x68]
00557238  6c 30 8d e5                                      str r3, [sp, #0x6c]
0055723c  90 30 9d e5                                      ldr r3, [sp, #0x90]
00557240  70 30 8d e5                                      str r3, [sp, #0x70]
00557244  94 30 9d e5                                      ldr r3, [sp, #0x94]
00557248  74 30 8d e5                                      str r3, [sp, #0x74]
0055724c  7a 01 00 0a                                      beq #0x55783c
00557250  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00557254  58 11 94 e5                                      ldr r1, [r4, #0x158]
00557258  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0055725c  03 30 61 e0                                      rsb r3, r1, r3
00557260  43 31 a0 e1                                      asr r3, r3, #2
00557264  90 03 03 e0                                      mul r3, r0, r3
00557268  00 00 53 e3                                      cmp r3, #0
0055726c  57 00 00 0a                                      beq #0x5573d0
00557270  00 70 a0 e3                                      mov r7, #0
00557274  07 50 a0 e1                                      mov r5, r7
00557278  07 80 a0 e1                                      mov r8, r7
0055727c  20 b0 8d e5                                      str fp, [sp, #0x20]
00557280  22 00 00 ea                                      b #0x557310
00557284  64 31 94 e5                                      ldr r3, [r4, #0x164]
00557288  18 00 9d e5                                      ldr r0, [sp, #0x18]
0055728c  99 10 d4 e5                                      ldrb r1, [r4, #0x99]
00557290  00 20 9a e5                                      ldr r2, [sl]
00557294  00 30 93 e7                                      ldr r3, [r3, r0]
00557298  00 00 51 e3                                      cmp r1, #0
0055729c  0c c0 92 e5                                      ldr ip, [r2, #0xc]
005572a0  07 30 83 e0                                      add r3, r3, r7
005572a4  8c b0 93 e5                                      ldr fp, [r3, #0x8c]
005572a8  ea 00 00 0a                                      beq #0x557658
005572ac  90 30 93 e5                                      ldr r3, [r3, #0x90]
005572b0  d4 30 8d e5                                      str r3, [sp, #0xd4]
005572b4  24 30 9d e5                                      ldr r3, [sp, #0x24]
005572b8  00 10 a0 e3                                      mov r1, #0
005572bc  01 20 a0 e3                                      mov r2, #1
005572c0  0e 00 8d e8                                      stm sp, {r1, r2, r3}
005572c4  0b 10 a0 e1                                      mov r1, fp
005572c8  0a 00 a0 e1                                      mov r0, sl
005572cc  28 20 9d e5                                      ldr r2, [sp, #0x28]
005572d0  d4 30 9d e5                                      ldr r3, [sp, #0xd4]
005572d4  3c ff 2f e1                                      blx ip
005572d8  58 11 94 e5                                      ldr r1, [r4, #0x158]
005572dc  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
005572e0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005572e4  01 80 88 e2                                      add r8, r8, #1
005572e8  03 30 61 e0                                      rsb r3, r1, r3
005572ec  43 31 a0 e1                                      asr r3, r3, #2
005572f0  90 03 03 e0                                      mul r3, r0, r3
005572f4  05 20 81 e0                                      add r2, r1, r5
005572f8  03 00 58 e1                                      cmp r8, r3
005572fc  4c 20 92 e5                                      ldr r2, [r2, #0x4c]
00557300  54 50 85 e2                                      add r5, r5, #0x54
00557304  98 70 87 e2                                      add r7, r7, #0x98
00557308  2f 00 00 2a                                      bhs #0x5573cc
0055730c  02 60 86 e0                                      add r6, r6, r2
00557310  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00557314  98 21 94 e5                                      ldr r2, [r4, #0x198]
00557318  05 10 81 e0                                      add r1, r1, r5
0055731c  03 00 86 e0                                      add r0, r6, r3
00557320  68 00 8d e5                                      str r0, [sp, #0x68]
00557324  4c 10 91 e5                                      ldr r1, [r1, #0x4c]
00557328  20 00 9d e5                                      ldr r0, [sp, #0x20]
0055732c  01 30 63 e0                                      rsb r3, r3, r1
00557330  06 30 83 e0                                      add r3, r3, r6
00557334  00 00 52 e1                                      cmp r2, r0
00557338  70 30 8d e5                                      str r3, [sp, #0x70]
0055733c  d0 ff ff 1a                                      bne #0x557284
00557340  64 31 94 e5                                      ldr r3, [r4, #0x164]
00557344  18 00 9d e5                                      ldr r0, [sp, #0x18]
00557348  00 20 9a e5                                      ldr r2, [sl]
0055734c  99 10 d4 e5                                      ldrb r1, [r4, #0x99]
00557350  00 30 93 e7                                      ldr r3, [r3, r0]
00557354  0c c0 92 e5                                      ldr ip, [r2, #0xc]
00557358  00 00 51 e3                                      cmp r1, #0
0055735c  07 30 83 e0                                      add r3, r3, r7
00557360  8c b0 93 e5                                      ldr fp, [r3, #0x8c]
00557364  14 c0 8d e5                                      str ip, [sp, #0x14]
00557368  0b 10 a0 13                                      movne r1, #0xb
0055736c  09 10 a0 03                                      moveq r1, #9
00557370  00 20 99 e5                                      ldr r2, [sb]
00557374  09 00 a0 e1                                      mov r0, sb
00557378  0f e0 a0 e1                                      mov lr, pc
0055737c  10 f0 92 e5                                      ldr pc, [r2, #0x10]
00557380  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00557384  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00557388  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0055738c  41 10 cd e5                                      strb r1, [sp, #0x41]
00557390  42 20 cd e5                                      strb r2, [sp, #0x42]
00557394  40 00 cd e5                                      strb r0, [sp, #0x40]
00557398  43 30 cd e5                                      strb r3, [sp, #0x43]
0055739c  24 20 9d e5                                      ldr r2, [sp, #0x24]
005573a0  40 30 9d e5                                      ldr r3, [sp, #0x40]
005573a4  00 00 a0 e3                                      mov r0, #0
005573a8  01 10 a0 e3                                      mov r1, #1
005573ac  07 00 8d e8                                      stm sp, {r0, r1, r2}
005573b0  d8 30 8d e5                                      str r3, [sp, #0xd8]
005573b4  0b 10 a0 e1                                      mov r1, fp
005573b8  0a 00 a0 e1                                      mov r0, sl
005573bc  28 20 9d e5                                      ldr r2, [sp, #0x28]
005573c0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005573c4  3c ff 2f e1                                      blx ip
005573c8  c2 ff ff ea                                      b #0x5572d8
005573cc  20 b0 9d e5                                      ldr fp, [sp, #0x20]
005573d0  8c 50 9d e5                                      ldr r5, [sp, #0x8c]
005573d4  8c c1 94 e5                                      ldr ip, [r4, #0x18c]
005573d8  68 81 94 e5                                      ldr r8, [r4, #0x168]
005573dc  64 e1 94 e5                                      ldr lr, [r4, #0x164]
005573e0  08 30 6e e0                                      rsb r3, lr, r8
005573e4  43 31 a0 e1                                      asr r3, r3, #2
005573e8  01 b0 8b e2                                      add fp, fp, #1
005573ec  03 11 83 e0                                      add r1, r3, r3, lsl #2
005573f0  94 20 9d e5                                      ldr r2, [sp, #0x94]
005573f4  01 12 81 e0                                      add r1, r1, r1, lsl #4
005573f8  0c 50 85 e0                                      add r5, r5, ip
005573fc  01 14 81 e0                                      add r1, r1, r1, lsl #8
00557400  02 20 8c e0                                      add r2, ip, r2
00557404  01 18 81 e0                                      add r1, r1, r1, lsl #16
00557408  8c 50 8d e5                                      str r5, [sp, #0x8c]
0055740c  81 10 83 e0                                      add r1, r3, r1, lsl #1
00557410  01 00 5b e1                                      cmp fp, r1
00557414  18 10 9d e5                                      ldr r1, [sp, #0x18]
00557418  94 20 8d e5                                      str r2, [sp, #0x94]
0055741c  0c 10 81 e2                                      add r1, r1, #0xc
00557420  18 10 8d e5                                      str r1, [sp, #0x18]
00557424  5a ff ff 3a                                      blo #0x557194
00557428  0a 70 a0 e1                                      mov r7, sl
0055742c  09 60 a0 e1                                      mov r6, sb
00557430  58 31 94 e5                                      ldr r3, [r4, #0x158]
00557434  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00557438  3d 2f 0c e3                                      movw r2, #0xcf3d
0055743c  f3 2c 43 e3                                      movt r2, #0x3cf3
00557440  01 10 63 e0                                      rsb r1, r3, r1
00557444  41 11 a0 e1                                      asr r1, r1, #2
00557448  92 01 01 e0                                      mul r1, r2, r1
0055744c  30 80 9d e5                                      ldr r8, [sp, #0x30]
00557450  00 00 51 e3                                      cmp r1, #0
00557454  98 10 9d e5                                      ldr r1, [sp, #0x98]
00557458  a8 20 8d 02                                      addeq r2, sp, #0xa8
0055745c  18 20 8d 05                                      streq r2, [sp, #0x18]
00557460  78 10 8d e5                                      str r1, [sp, #0x78]
00557464  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
00557468  7c 10 8d e5                                      str r1, [sp, #0x7c]
0055746c  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00557470  80 10 8d e5                                      str r1, [sp, #0x80]
00557474  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00557478  84 10 8d e5                                      str r1, [sp, #0x84]
0055747c  b8 00 00 0a                                      beq #0x557764
00557480  68 00 8d e2                                      add r0, sp, #0x68
00557484  a8 10 8d e2                                      add r1, sp, #0xa8
00557488  78 20 8d e2                                      add r2, sp, #0x78
0055748c  00 b0 a0 e3                                      mov fp, #0
00557490  1c 00 8d e5                                      str r0, [sp, #0x1c]
00557494  18 10 8d e5                                      str r1, [sp, #0x18]
00557498  24 20 8d e5                                      str r2, [sp, #0x24]
0055749c  58 00 8d e2                                      add r0, sp, #0x58
005574a0  b8 10 8d e2                                      add r1, sp, #0xb8
005574a4  c0 20 8d e2                                      add r2, sp, #0xc0
005574a8  0b 50 a0 e1                                      mov r5, fp
005574ac  2c 00 8d e5                                      str r0, [sp, #0x2c]
005574b0  28 10 8d e5                                      str r1, [sp, #0x28]
005574b4  3c 20 8d e5                                      str r2, [sp, #0x3c]
005574b8  07 90 a0 e1                                      mov sb, r7
005574bc  0b 30 83 e0                                      add r3, r3, fp
005574c0  4c 70 93 e5                                      ldr r7, [r3, #0x4c]
005574c4  44 30 93 e5                                      ldr r3, [r3, #0x44]
005574c8  68 80 8d e5                                      str r8, [sp, #0x68]
005574cc  07 70 88 e0                                      add r7, r8, r7
005574d0  20 30 8d e5                                      str r3, [sp, #0x20]
005574d4  ac 30 9d e5                                      ldr r3, [sp, #0xac]
005574d8  70 70 8d e5                                      str r7, [sp, #0x70]
005574dc  06 00 a0 e1                                      mov r0, r6
005574e0  6c 30 8d e5                                      str r3, [sp, #0x6c]
005574e4  34 30 9d e5                                      ldr r3, [sp, #0x34]
005574e8  04 10 a0 e1                                      mov r1, r4
005574ec  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005574f0  74 30 8d e5                                      str r3, [sp, #0x74]
005574f4  00 c0 96 e5                                      ldr ip, [r6]
005574f8  18 30 9d e5                                      ldr r3, [sp, #0x18]
005574fc  0f e0 a0 e1                                      mov lr, pc
00557500  40 f0 9c e5                                      ldr pc, [ip, #0x40]
00557504  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
00557508  30 70 8d e5                                      str r7, [sp, #0x30]
0055750c  02 00 13 e3                                      tst r3, #2
00557510  61 00 00 1a                                      bne #0x55769c
00557514  89 31 d4 e5                                      ldrb r3, [r4, #0x189]
00557518  00 00 53 e3                                      cmp r3, #0
0055751c  02 00 00 0a                                      beq #0x55752c
00557520  9c a1 94 e5                                      ldr sl, [r4, #0x19c]
00557524  05 00 5a e1                                      cmp sl, r5
00557528  30 00 00 0a                                      beq #0x5575f0
0055752c  05 a0 a0 e1                                      mov sl, r5
00557530  68 20 9d e5                                      ldr r2, [sp, #0x68]
00557534  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00557538  99 10 d4 e5                                      ldrb r1, [r4, #0x99]
0055753c  06 00 a0 e1                                      mov r0, r6
00557540  03 30 82 e0                                      add r3, r2, r3
00557544  68 30 8d e5                                      str r3, [sp, #0x68]
00557548  00 30 99 e5                                      ldr r3, [sb]
0055754c  00 00 51 e3                                      cmp r1, #0
00557550  08 10 a0 13                                      movne r1, #8
00557554  09 10 a0 03                                      moveq r1, #9
00557558  00 20 96 e5                                      ldr r2, [r6]
0055755c  0c 80 93 e5                                      ldr r8, [r3, #0xc]
00557560  0f e0 a0 e1                                      mov lr, pc
00557564  10 f0 92 e5                                      ldr pc, [r2, #0x10]
00557568  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0055756c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00557570  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00557574  41 10 cd e5                                      strb r1, [sp, #0x41]
00557578  42 20 cd e5                                      strb r2, [sp, #0x42]
0055757c  40 00 cd e5                                      strb r0, [sp, #0x40]
00557580  43 30 cd e5                                      strb r3, [sp, #0x43]
00557584  40 30 9d e5                                      ldr r3, [sp, #0x40]
00557588  18 20 9d e5                                      ldr r2, [sp, #0x18]
0055758c  00 00 a0 e3                                      mov r0, #0
00557590  01 10 a0 e3                                      mov r1, #1
00557594  03 00 8d e8                                      stm sp, {r0, r1}
00557598  c8 30 8d e5                                      str r3, [sp, #0xc8]
0055759c  08 20 8d e5                                      str r2, [sp, #8]
005575a0  20 10 9d e5                                      ldr r1, [sp, #0x20]
005575a4  09 00 a0 e1                                      mov r0, sb
005575a8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005575ac  38 ff 2f e1                                      blx r8
005575b0  a8 31 94 e5                                      ldr r3, [r4, #0x1a8]
005575b4  0a 00 53 e1                                      cmp r3, sl
005575b8  4e 00 00 0a                                      beq #0x5576f8
005575bc  58 31 94 e5                                      ldr r3, [r4, #0x158]
005575c0  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
005575c4  3d 0f 0c e3                                      movw r0, #0xcf3d
005575c8  f3 0c 43 e3                                      movt r0, #0x3cf3
005575cc  02 20 63 e0                                      rsb r2, r3, r2
005575d0  42 21 a0 e1                                      asr r2, r2, #2
005575d4  90 02 02 e0                                      mul r2, r0, r2
005575d8  01 50 85 e2                                      add r5, r5, #1
005575dc  02 00 55 e1                                      cmp r5, r2
005575e0  54 b0 8b e2                                      add fp, fp, #0x54
005575e4  5e 00 00 2a                                      bhs #0x557764
005575e8  07 80 a0 e1                                      mov r8, r7
005575ec  b2 ff ff ea                                      b #0x5574bc
005575f0  ac 30 9d e5                                      ldr r3, [sp, #0xac]
005575f4  58 80 8d e5                                      str r8, [sp, #0x58]
005575f8  60 70 8d e5                                      str r7, [sp, #0x60]
005575fc  5c 30 8d e5                                      str r3, [sp, #0x5c]
00557600  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
00557604  0a 10 a0 e3                                      mov r1, #0xa
00557608  06 00 a0 e1                                      mov r0, r6
0055760c  64 30 8d e5                                      str r3, [sp, #0x64]
00557610  00 30 96 e5                                      ldr r3, [r6]
00557614  0f e0 a0 e1                                      mov lr, pc
00557618  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0055761c  50 1c e7 e7                                      ubfx r1, r0, #0x18, #8
00557620  50 24 e7 e7                                      ubfx r2, r0, #8, #8
00557624  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
00557628  41 20 cd e5                                      strb r2, [sp, #0x41]
0055762c  42 30 cd e5                                      strb r3, [sp, #0x42]
00557630  43 10 cd e5                                      strb r1, [sp, #0x43]
00557634  40 00 cd e5                                      strb r0, [sp, #0x40]
00557638  40 c0 9d e5                                      ldr ip, [sp, #0x40]
0055763c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00557640  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00557644  0c 10 a0 e1                                      mov r1, ip
00557648  18 30 9d e5                                      ldr r3, [sp, #0x18]
0055764c  cc c0 8d e5                                      str ip, [sp, #0xcc]
00557650  89 20 01 eb                                      bl #0x59f87c
00557654  b5 ff ff ea                                      b #0x557530
00557658  00 30 99 e5                                      ldr r3, [sb]
0055765c  09 10 a0 e3                                      mov r1, #9
00557660  14 c0 8d e5                                      str ip, [sp, #0x14]
00557664  09 00 a0 e1                                      mov r0, sb
00557668  0f e0 a0 e1                                      mov lr, pc
0055766c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00557670  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
00557674  50 1c e7 e7                                      ubfx r1, r0, #0x18, #8
00557678  50 24 e7 e7                                      ubfx r2, r0, #8, #8
0055767c  41 20 cd e5                                      strb r2, [sp, #0x41]
00557680  42 30 cd e5                                      strb r3, [sp, #0x42]
00557684  43 10 cd e5                                      strb r1, [sp, #0x43]
00557688  40 00 cd e5                                      strb r0, [sp, #0x40]
0055768c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00557690  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00557694  d4 30 8d e5                                      str r3, [sp, #0xd4]
00557698  05 ff ff ea                                      b #0x5572b4
0055769c  01 30 88 e2                                      add r3, r8, #1
005576a0  80 30 8d e5                                      str r3, [sp, #0x80]
005576a4  78 80 8d e5                                      str r8, [sp, #0x78]
005576a8  00 30 96 e5                                      ldr r3, [r6]
005576ac  01 10 a0 e3                                      mov r1, #1
005576b0  06 00 a0 e1                                      mov r0, r6
005576b4  0f e0 a0 e1                                      mov lr, pc
005576b8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005576bc  50 1c e7 e7                                      ubfx r1, r0, #0x18, #8
005576c0  50 24 e7 e7                                      ubfx r2, r0, #8, #8
005576c4  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
005576c8  41 20 cd e5                                      strb r2, [sp, #0x41]
005576cc  42 30 cd e5                                      strb r3, [sp, #0x42]
005576d0  43 10 cd e5                                      strb r1, [sp, #0x43]
005576d4  40 00 cd e5                                      strb r0, [sp, #0x40]
005576d8  40 c0 9d e5                                      ldr ip, [sp, #0x40]
005576dc  38 00 9d e5                                      ldr r0, [sp, #0x38]
005576e0  24 20 9d e5                                      ldr r2, [sp, #0x24]
005576e4  0c 10 a0 e1                                      mov r1, ip
005576e8  18 30 9d e5                                      ldr r3, [sp, #0x18]
005576ec  d0 c0 8d e5                                      str ip, [sp, #0xd0]
005576f0  61 20 01 eb                                      bl #0x59f87c
005576f4  86 ff ff ea                                      b #0x557514
005576f8  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
005576fc  01 00 53 e3                                      cmp r3, #1
00557700  35 00 00 0a                                      beq #0x5577dc
00557704  70 30 9d e5                                      ldr r3, [sp, #0x70]
00557708  a4 21 94 e5                                      ldr r2, [r4, #0x1a4]
0055770c  6c e0 9d e5                                      ldr lr, [sp, #0x6c]
00557710  05 30 43 e2                                      sub r3, r3, #5
00557714  03 30 62 e0                                      rsb r3, r2, r3
00557718  07 e0 8e e2                                      add lr, lr, #7
0055771c  68 30 8d e5                                      str r3, [sp, #0x68]
00557720  6c e0 8d e5                                      str lr, [sp, #0x6c]
00557724  00 20 96 e5                                      ldr r2, [r6]
00557728  06 00 a0 e1                                      mov r0, r6
0055772c  04 10 a0 e1                                      mov r1, r4
00557730  60 c0 92 e5                                      ldr ip, [r2, #0x60]
00557734  18 20 9d e5                                      ldr r2, [sp, #0x18]
00557738  b8 30 8d e5                                      str r3, [sp, #0xb8]
0055773c  00 30 a0 e3                                      mov r3, #0
00557740  00 30 8d e5                                      str r3, [sp]
00557744  04 30 8d e5                                      str r3, [sp, #4]
00557748  08 30 8d e5                                      str r3, [sp, #8]
0055774c  0c 20 8d e5                                      str r2, [sp, #0xc]
00557750  bc e0 8d e5                                      str lr, [sp, #0xbc]
00557754  06 20 a0 e3                                      mov r2, #6
00557758  28 30 9d e5                                      ldr r3, [sp, #0x28]
0055775c  3c ff 2f e1                                      blx ip
00557760  95 ff ff ea                                      b #0x5575bc
00557764  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00557768  30 10 9d e5                                      ldr r1, [sp, #0x30]
0055776c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00557770  4c 30 8d e5                                      str r3, [sp, #0x4c]
00557774  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
00557778  48 10 8d e5                                      str r1, [sp, #0x48]
0055777c  54 20 8d e5                                      str r2, [sp, #0x54]
00557780  50 30 8d e5                                      str r3, [sp, #0x50]
00557784  04 10 a0 e1                                      mov r1, r4
00557788  18 30 9d e5                                      ldr r3, [sp, #0x18]
0055778c  06 00 a0 e1                                      mov r0, r6
00557790  00 c0 96 e5                                      ldr ip, [r6]
00557794  48 20 8d e2                                      add r2, sp, #0x48
00557798  0f e0 a0 e1                                      mov lr, pc
0055779c  40 f0 9c e5                                      ldr pc, [ip, #0x40]
005577a0  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
005577a4  00 00 53 e3                                      cmp r3, #0
005577a8  04 50 b4 15                                      ldrne r5, [r4, #4]!
005577ac  c1 fd ff 0a                                      beq #0x556eb8
005577b0  04 00 55 e1                                      cmp r5, r4
005577b4  bf fd ff 0a                                      beq #0x556eb8
005577b8  08 30 95 e5                                      ldr r3, [r5, #8]
005577bc  03 00 a0 e1                                      mov r0, r3
005577c0  00 30 93 e5                                      ldr r3, [r3]
005577c4  0f e0 a0 e1                                      mov lr, pc
005577c8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005577cc  00 50 95 e5                                      ldr r5, [r5]
005577d0  04 00 55 e1                                      cmp r5, r4
005577d4  f7 ff ff 1a                                      bne #0x5577b8
005577d8  b6 fd ff ea                                      b #0x556eb8
005577dc  70 20 9d e5                                      ldr r2, [sp, #0x70]
005577e0  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
005577e4  6c e0 9d e5                                      ldr lr, [sp, #0x6c]
005577e8  05 20 42 e2                                      sub r2, r2, #5
005577ec  02 20 63 e0                                      rsb r2, r3, r2
005577f0  07 e0 8e e2                                      add lr, lr, #7
005577f4  68 20 8d e5                                      str r2, [sp, #0x68]
005577f8  6c e0 8d e5                                      str lr, [sp, #0x6c]
005577fc  00 30 96 e5                                      ldr r3, [r6]
00557800  06 00 a0 e1                                      mov r0, r6
00557804  04 10 a0 e1                                      mov r1, r4
00557808  60 c0 93 e5                                      ldr ip, [r3, #0x60]
0055780c  c0 20 8d e5                                      str r2, [sp, #0xc0]
00557810  18 20 9d e5                                      ldr r2, [sp, #0x18]
00557814  00 30 a0 e3                                      mov r3, #0
00557818  00 30 8d e5                                      str r3, [sp]
0055781c  04 30 8d e5                                      str r3, [sp, #4]
00557820  08 30 8d e5                                      str r3, [sp, #8]
00557824  0c 20 8d e5                                      str r2, [sp, #0xc]
00557828  c4 e0 8d e5                                      str lr, [sp, #0xc4]
0055782c  05 20 a0 e3                                      mov r2, #5
00557830  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00557834  3c ff 2f e1                                      blx ip
00557838  5f ff ff ea                                      b #0x5575bc
0055783c  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
00557840  04 00 13 e3                                      tst r3, #4
00557844  81 fe ff 0a                                      beq #0x557250
00557848  00 30 99 e5                                      ldr r3, [sb]
0055784c  0a 10 a0 e3                                      mov r1, #0xa
00557850  09 00 a0 e1                                      mov r0, sb
00557854  0f e0 a0 e1                                      mov lr, pc
00557858  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0055785c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00557860  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00557864  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00557868  41 10 cd e5                                      strb r1, [sp, #0x41]
0055786c  42 20 cd e5                                      strb r2, [sp, #0x42]
00557870  43 30 cd e5                                      strb r3, [sp, #0x43]
00557874  40 00 cd e5                                      strb r0, [sp, #0x40]
00557878  38 00 8d e2                                      add r0, sp, #0x38
0055787c  05 10 90 e8                                      ldm r0, {r0, r2, ip}
00557880  0c 10 a0 e1                                      mov r1, ip
00557884  24 30 9d e5                                      ldr r3, [sp, #0x24]
00557888  dc c0 8d e5                                      str ip, [sp, #0xdc]
0055788c  fa 1f 01 eb                                      bl #0x59f87c
00557890  6e fe ff ea                                      b #0x557250

; FUNCTION 0x00557c90, declared_size=212, range_size=212, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITableD1Ev
; demangled: glitch::gui::CGUITable::~CGUITable()
; decoder-mode: arm
00557c90  70 40 2d e9                                      push {r4, r5, r6, lr}
00557c94  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
00557c98  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00557c9c  74 21 90 e5                                      ldr r2, [r0, #0x174]
00557ca0  05 50 8f e0                                      add r5, pc, r5
00557ca4  03 30 95 e7                                      ldr r3, [r5, r3]
00557ca8  00 40 a0 e1                                      mov r4, r0
00557cac  00 00 52 e3                                      cmp r2, #0
00557cb0  51 1f 83 e2                                      add r1, r3, #0x144
00557cb4  10 00 83 e2                                      add r0, r3, #0x10
00557cb8  49 3f 83 e2                                      add r3, r3, #0x124
00557cbc  00 00 84 e5                                      str r0, [r4]
00557cc0  b4 31 84 e5                                      str r3, [r4, #0x1b4]
00557cc4  b8 11 84 e5                                      str r1, [r4, #0x1b8]
00557cc8  03 00 00 0a                                      beq #0x557cdc
00557ccc  00 30 92 e5                                      ldr r3, [r2]
00557cd0  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00557cd4  00 00 82 e0                                      add r0, r2, r0
00557cd8  29 16 f7 eb                                      bl #0x31d584
00557cdc  78 31 94 e5                                      ldr r3, [r4, #0x178]
00557ce0  00 00 53 e3                                      cmp r3, #0
00557ce4  03 00 00 0a                                      beq #0x557cf8
00557ce8  00 20 93 e5                                      ldr r2, [r3]
00557cec  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00557cf0  00 00 83 e0                                      add r0, r3, r0
00557cf4  22 16 f7 eb                                      bl #0x31d584
00557cf8  70 01 94 e5                                      ldr r0, [r4, #0x170]
00557cfc  00 00 50 e3                                      cmp r0, #0
00557d00  00 00 00 0a                                      beq #0x557d08
00557d04  1e 16 f7 eb                                      bl #0x31d584
00557d08  59 0f 84 e2                                      add r0, r4, #0x164
00557d0c  ce ff ff eb                                      bl #0x557c4c
00557d10  56 0f 84 e2                                      add r0, r4, #0x158
00557d14  de fe ff eb                                      bl #0x557894
00557d18  40 30 9f e5                                      ldr r3, [pc, #0x40]
00557d1c  04 00 a0 e1                                      mov r0, r4
00557d20  03 10 95 e7                                      ldr r1, [r5, r3]
00557d24  04 30 91 e5                                      ldr r3, [r1, #4]
00557d28  14 c0 91 e5                                      ldr ip, [r1, #0x14]
00557d2c  18 20 91 e5                                      ldr r2, [r1, #0x18]
00557d30  00 30 84 e5                                      str r3, [r4]
00557d34  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00557d38  08 10 81 e2                                      add r1, r1, #8
00557d3c  03 c0 84 e7                                      str ip, [r4, r3]
00557d40  00 30 94 e5                                      ldr r3, [r4]
00557d44  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00557d48  03 20 84 e7                                      str r2, [r4, r3]
00557d4c  b3 84 ff eb                                      bl #0x539020
00557d50  04 00 a0 e1                                      mov r0, r4
00557d54  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00557d58  f0 cd 43 00 04 2e 00 00 ec 2b 00 00              .byte 0xf0, 0xcd, 0x43, 0x00, 0x04, 0x2e, 0x00, 0x00, 0xec, 0x2b, 0x00, 0x00

; FUNCTION 0x00557d64, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITableD0Ev
; demangled: glitch::gui::CGUITable::~CGUITable()
; decoder-mode: arm
00557d64  10 40 2d e9                                      push {r4, lr}
00557d68  00 40 a0 e1                                      mov r4, r0
00557d6c  c7 ff ff eb                                      bl #0x557c90
00557d70  04 00 a0 e1                                      mov r0, r4
00557d74  4d d9 f6 eb                                      bl #0x30e2b0
00557d78  04 00 a0 e1                                      mov r0, r4
00557d7c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00557d80, declared_size=196, range_size=196, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITableD2Ev
; demangled: glitch::gui::CGUITable::~CGUITable()
; decoder-mode: arm
00557d80  70 40 2d e9                                      push {r4, r5, r6, lr}
00557d84  00 30 91 e5                                      ldr r3, [r1]
00557d88  01 50 a0 e1                                      mov r5, r1
00557d8c  00 40 a0 e1                                      mov r4, r0
00557d90  00 30 80 e5                                      str r3, [r0]
00557d94  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00557d98  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
00557d9c  03 20 80 e7                                      str r2, [r0, r3]
00557da0  00 30 90 e5                                      ldr r3, [r0]
00557da4  20 20 91 e5                                      ldr r2, [r1, #0x20]
00557da8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00557dac  03 20 80 e7                                      str r2, [r0, r3]
00557db0  74 31 90 e5                                      ldr r3, [r0, #0x174]
00557db4  00 00 53 e3                                      cmp r3, #0
00557db8  03 00 00 0a                                      beq #0x557dcc
00557dbc  00 20 93 e5                                      ldr r2, [r3]
00557dc0  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00557dc4  00 00 83 e0                                      add r0, r3, r0
00557dc8  ed 15 f7 eb                                      bl #0x31d584
00557dcc  78 31 94 e5                                      ldr r3, [r4, #0x178]
00557dd0  00 00 53 e3                                      cmp r3, #0
00557dd4  03 00 00 0a                                      beq #0x557de8
00557dd8  00 20 93 e5                                      ldr r2, [r3]
00557ddc  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00557de0  00 00 83 e0                                      add r0, r3, r0
00557de4  e6 15 f7 eb                                      bl #0x31d584
00557de8  70 01 94 e5                                      ldr r0, [r4, #0x170]
00557dec  00 00 50 e3                                      cmp r0, #0
00557df0  00 00 00 0a                                      beq #0x557df8
00557df4  e2 15 f7 eb                                      bl #0x31d584
00557df8  59 0f 84 e2                                      add r0, r4, #0x164
00557dfc  92 ff ff eb                                      bl #0x557c4c
00557e00  56 0f 84 e2                                      add r0, r4, #0x158
00557e04  a2 fe ff eb                                      bl #0x557894
00557e08  04 30 95 e5                                      ldr r3, [r5, #4]
00557e0c  04 50 85 e2                                      add r5, r5, #4
00557e10  04 10 85 e2                                      add r1, r5, #4
00557e14  00 30 84 e5                                      str r3, [r4]
00557e18  10 20 95 e5                                      ldr r2, [r5, #0x10]
00557e1c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00557e20  04 00 a0 e1                                      mov r0, r4
00557e24  03 20 84 e7                                      str r2, [r4, r3]
00557e28  00 30 94 e5                                      ldr r3, [r4]
00557e2c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00557e30  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00557e34  03 20 84 e7                                      str r2, [r4, r3]
00557e38  78 84 ff eb                                      bl #0x539020
00557e3c  04 00 a0 e1                                      mov r0, r4
00557e40  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00558770, declared_size=88, range_size=88, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable9clearRowsEv
; demangled: glitch::gui::CGUITable::clearRows()
; decoder-mode: arm
00558770  10 40 2d e9                                      push {r4, lr}
00558774  64 11 90 e5                                      ldr r1, [r0, #0x164]
00558778  68 21 90 e5                                      ldr r2, [r0, #0x168]
0055877c  08 d0 4d e2                                      sub sp, sp, #8
00558780  00 40 a0 e1                                      mov r4, r0
00558784  02 00 51 e1                                      cmp r1, r2
00558788  02 00 00 0a                                      beq #0x558798
0055878c  59 0f 80 e2                                      add r0, r0, #0x164
00558790  04 30 8d e2                                      add r3, sp, #4
00558794  d0 ff ff eb                                      bl #0x5586dc
00558798  74 31 94 e5                                      ldr r3, [r4, #0x174]
0055879c  00 00 53 e3                                      cmp r3, #0
005587a0  04 00 00 0a                                      beq #0x5587b8
005587a4  03 00 a0 e1                                      mov r0, r3
005587a8  00 10 a0 e3                                      mov r1, #0
005587ac  00 30 93 e5                                      ldr r3, [r3]
005587b0  0f e0 a0 e1                                      mov lr, pc
005587b4  98 f0 93 e5                                      ldr pc, [r3, #0x98]
005587b8  04 00 a0 e1                                      mov r0, r4
005587bc  fd f2 ff eb                                      bl #0x5553b8
005587c0  08 d0 8d e2                                      add sp, sp, #8
005587c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005587c8, declared_size=156, range_size=156, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable5clearEv
; demangled: glitch::gui::CGUITable::clear()
; decoder-mode: arm
005587c8  10 40 2d e9                                      push {r4, lr}
005587cc  64 11 90 e5                                      ldr r1, [r0, #0x164]
005587d0  68 21 90 e5                                      ldr r2, [r0, #0x168]
005587d4  08 d0 4d e2                                      sub sp, sp, #8
005587d8  00 40 a0 e1                                      mov r4, r0
005587dc  02 00 51 e1                                      cmp r1, r2
005587e0  02 00 00 0a                                      beq #0x5587f0
005587e4  59 0f 80 e2                                      add r0, r0, #0x164
005587e8  04 30 8d e2                                      add r3, sp, #4
005587ec  ba ff ff eb                                      bl #0x5586dc
005587f0  58 11 94 e5                                      ldr r1, [r4, #0x158]
005587f4  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
005587f8  02 00 51 e1                                      cmp r1, r2
005587fc  02 00 00 0a                                      beq #0x55880c
00558800  56 0f 84 e2                                      add r0, r4, #0x158
00558804  0d 30 a0 e1                                      mov r3, sp
00558808  1e fe ff eb                                      bl #0x558088
0055880c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00558810  00 00 53 e3                                      cmp r3, #0
00558814  04 00 00 0a                                      beq #0x55882c
00558818  03 00 a0 e1                                      mov r0, r3
0055881c  00 10 a0 e3                                      mov r1, #0
00558820  00 30 93 e5                                      ldr r3, [r3]
00558824  0f e0 a0 e1                                      mov lr, pc
00558828  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0055882c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00558830  00 00 53 e3                                      cmp r3, #0
00558834  04 00 00 0a                                      beq #0x55884c
00558838  03 00 a0 e1                                      mov r0, r3
0055883c  00 10 a0 e3                                      mov r1, #0
00558840  00 30 93 e5                                      ldr r3, [r3]
00558844  0f e0 a0 e1                                      mov lr, pc
00558848  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0055884c  04 00 a0 e1                                      mov r0, r4
00558850  d8 f2 ff eb                                      bl #0x5553b8
00558854  04 00 a0 e1                                      mov r0, r4
00558858  ba f2 ff eb                                      bl #0x555348
0055885c  08 d0 8d e2                                      add sp, sp, #8
00558860  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005588d8, declared_size=144, range_size=144, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable9removeRowEj
; demangled: glitch::gui::CGUITable::removeRow(unsigned int)
; decoder-mode: arm
005588d8  10 40 2d e9                                      push {r4, lr}
005588dc  64 31 90 e5                                      ldr r3, [r0, #0x164]
005588e0  68 21 90 e5                                      ldr r2, [r0, #0x168]
005588e4  00 40 a0 e1                                      mov r4, r0
005588e8  08 d0 4d e2                                      sub sp, sp, #8
005588ec  02 20 63 e0                                      rsb r2, r3, r2
005588f0  42 21 a0 e1                                      asr r2, r2, #2
005588f4  02 01 82 e0                                      add r0, r2, r2, lsl #2
005588f8  00 02 80 e0                                      add r0, r0, r0, lsl #4
005588fc  00 04 80 e0                                      add r0, r0, r0, lsl #8
00558900  00 08 80 e0                                      add r0, r0, r0, lsl #16
00558904  80 20 82 e0                                      add r2, r2, r0, lsl #1
00558908  02 00 51 e1                                      cmp r1, r2
0055890c  13 00 00 8a                                      bhi #0x558960
00558910  0c 20 a0 e3                                      mov r2, #0xc
00558914  92 31 21 e0                                      mla r1, r2, r1, r3
00558918  59 0f 84 e2                                      add r0, r4, #0x164
0055891c  04 20 8d e2                                      add r2, sp, #4
00558920  cf ff ff eb                                      bl #0x558864
00558924  68 21 94 e5                                      ldr r2, [r4, #0x168]
00558928  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055892c  98 11 94 e5                                      ldr r1, [r4, #0x198]
00558930  04 00 a0 e1                                      mov r0, r4
00558934  02 30 63 e0                                      rsb r3, r3, r2
00558938  43 31 a0 e1                                      asr r3, r3, #2
0055893c  03 21 83 e0                                      add r2, r3, r3, lsl #2
00558940  02 22 82 e0                                      add r2, r2, r2, lsl #4
00558944  02 24 82 e0                                      add r2, r2, r2, lsl #8
00558948  02 28 82 e0                                      add r2, r2, r2, lsl #16
0055894c  82 30 83 e0                                      add r3, r3, r2, lsl #1
00558950  03 00 51 e1                                      cmp r1, r3
00558954  01 30 43 a2                                      subge r3, r3, #1
00558958  98 31 84 a5                                      strge r3, [r4, #0x198]
0055895c  95 f2 ff eb                                      bl #0x5553b8
00558960  08 d0 8d e2                                      add sp, sp, #8
00558964  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00558968, declared_size=176, range_size=176, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable8swapRowsEjj
; demangled: glitch::gui::CGUITable::swapRows(unsigned int, unsigned int)
; decoder-mode: arm
00558968  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0055896c  00 40 a0 e1                                      mov r4, r0
00558970  64 31 90 e5                                      ldr r3, [r0, #0x164]
00558974  68 01 90 e5                                      ldr r0, [r0, #0x168]
00558978  02 60 a0 e1                                      mov r6, r2
0055897c  14 d0 4d e2                                      sub sp, sp, #0x14
00558980  00 00 63 e0                                      rsb r0, r3, r0
00558984  40 01 a0 e1                                      asr r0, r0, #2
00558988  01 50 a0 e1                                      mov r5, r1
0055898c  00 21 80 e0                                      add r2, r0, r0, lsl #2
00558990  02 22 82 e0                                      add r2, r2, r2, lsl #4
00558994  02 24 82 e0                                      add r2, r2, r2, lsl #8
00558998  02 28 82 e0                                      add r2, r2, r2, lsl #16
0055899c  82 00 80 e0                                      add r0, r0, r2, lsl #1
005589a0  00 00 51 e1                                      cmp r1, r0
005589a4  01 00 00 2a                                      bhs #0x5589b0
005589a8  00 00 56 e1                                      cmp r6, r0
005589ac  01 00 00 3a                                      blo #0x5589b8
005589b0  14 d0 8d e2                                      add sp, sp, #0x14
005589b4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005589b8  0c 80 a0 e3                                      mov r8, #0xc
005589bc  98 01 0a e0                                      mul sl, r8, r1
005589c0  04 70 8d e2                                      add r7, sp, #4
005589c4  0a 10 83 e0                                      add r1, r3, sl
005589c8  07 00 a0 e1                                      mov r0, r7
005589cc  00 f9 ff eb                                      bl #0x556dd4
005589d0  98 06 08 e0                                      mul r8, r8, r6
005589d4  64 01 94 e5                                      ldr r0, [r4, #0x164]
005589d8  08 10 80 e0                                      add r1, r0, r8
005589dc  0a 00 80 e0                                      add r0, r0, sl
005589e0  93 fe ff eb                                      bl #0x558434
005589e4  64 01 94 e5                                      ldr r0, [r4, #0x164]
005589e8  07 10 a0 e1                                      mov r1, r7
005589ec  08 00 80 e0                                      add r0, r0, r8
005589f0  8f fe ff eb                                      bl #0x558434
005589f4  98 31 94 e5                                      ldr r3, [r4, #0x198]
005589f8  05 00 53 e1                                      cmp r3, r5
005589fc  98 61 84 05                                      streq r6, [r4, #0x198]
00558a00  01 00 00 0a                                      beq #0x558a0c
00558a04  06 00 53 e1                                      cmp r3, r6
00558a08  98 51 84 05                                      streq r5, [r4, #0x198]
00558a0c  07 00 a0 e1                                      mov r0, r7
00558a10  6f fc ff eb                                      bl #0x557bd4
00558a14  e5 ff ff ea                                      b #0x5589b0

; FUNCTION 0x00558a18, declared_size=628, range_size=628, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable9orderRowsEiNS0_18EGUI_ORDERING_MODEE
; demangled: glitch::gui::CGUITable::orderRows(int, glitch::gui::EGUI_ORDERING_MODE)
; decoder-mode: arm
00558a18  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00558a1c  00 30 a0 e3                                      mov r3, #0
00558a20  1c d0 4d e2                                      sub sp, sp, #0x1c
00558a24  01 00 71 e3                                      cmn r1, #1
00558a28  14 30 8d e5                                      str r3, [sp, #0x14]
00558a2c  0c 30 8d e5                                      str r3, [sp, #0xc]
00558a30  10 30 8d e5                                      str r3, [sp, #0x10]
00558a34  00 40 a0 e1                                      mov r4, r0
00558a38  88 00 00 0a                                      beq #0x558c60
00558a3c  00 00 51 e3                                      cmp r1, #0
00558a40  8e 00 00 ba                                      blt #0x558c80
00558a44  01 00 52 e3                                      cmp r2, #1
00558a48  45 00 00 0a                                      beq #0x558b64
00558a4c  02 00 52 e3                                      cmp r2, #2
00558a50  04 00 00 0a                                      beq #0x558a68
00558a54  0c b0 8d e2                                      add fp, sp, #0xc
00558a58  0b 00 a0 e1                                      mov r0, fp
00558a5c  5c fc ff eb                                      bl #0x557bd4
00558a60  1c d0 8d e2                                      add sp, sp, #0x1c
00558a64  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00558a68  68 c1 94 e5                                      ldr ip, [r4, #0x168]
00558a6c  64 01 94 e5                                      ldr r0, [r4, #0x164]
00558a70  0c c0 60 e0                                      rsb ip, r0, ip
00558a74  17 00 5c e3                                      cmp ip, #0x17
00558a78  f5 ff ff da                                      ble #0x558a54
00558a7c  98 a0 a0 e3                                      mov sl, #0x98
00558a80  9a 01 0a e0                                      mul sl, sl, r1
00558a84  00 90 a0 e3                                      mov sb, #0
00558a88  0c b0 8d e2                                      add fp, sp, #0xc
00558a8c  00 50 a0 e3                                      mov r5, #0
00558a90  05 60 a0 e1                                      mov r6, r5
00558a94  04 00 00 ea                                      b #0x558aac
00558a98  68 c1 94 e5                                      ldr ip, [r4, #0x168]
00558a9c  64 01 94 e5                                      ldr r0, [r4, #0x164]
00558aa0  07 50 a0 e1                                      mov r5, r7
00558aa4  08 60 a0 e1                                      mov r6, r8
00558aa8  0c c0 60 e0                                      rsb ip, r0, ip
00558aac  4c 31 a0 e1                                      asr r3, ip, #2
00558ab0  0c 70 85 e2                                      add r7, r5, #0xc
00558ab4  03 21 83 e0                                      add r2, r3, r3, lsl #2
00558ab8  01 80 86 e2                                      add r8, r6, #1
00558abc  02 22 82 e0                                      add r2, r2, r2, lsl #4
00558ac0  02 24 82 e0                                      add r2, r2, r2, lsl #8
00558ac4  02 28 82 e0                                      add r2, r2, r2, lsl #16
00558ac8  82 30 83 e0                                      add r3, r3, r2, lsl #1
00558acc  01 30 43 e2                                      sub r3, r3, #1
00558ad0  03 20 69 e0                                      rsb r2, sb, r3
00558ad4  02 00 56 e1                                      cmp r6, r2
00558ad8  1d 00 00 aa                                      bge #0x558b54
00558adc  07 20 90 e7                                      ldr r2, [r0, r7]
00558ae0  05 00 90 e7                                      ldr r0, [r0, r5]
00558ae4  0a 20 82 e0                                      add r2, r2, sl
00558ae8  0a 00 80 e0                                      add r0, r0, sl
00558aec  40 30 92 e5                                      ldr r3, [r2, #0x40]
00558af0  40 10 90 e5                                      ldr r1, [r0, #0x40]
00558af4  44 20 92 e5                                      ldr r2, [r2, #0x44]
00558af8  44 00 90 e5                                      ldr r0, [r0, #0x44]
00558afc  77 f5 ff eb                                      bl #0x5560e0
00558b00  00 00 50 e3                                      cmp r0, #0
00558b04  e3 ff ff aa                                      bge #0x558a98
00558b08  64 11 94 e5                                      ldr r1, [r4, #0x164]
00558b0c  0b 00 a0 e1                                      mov r0, fp
00558b10  05 10 81 e0                                      add r1, r1, r5
00558b14  46 fe ff eb                                      bl #0x558434
00558b18  64 11 94 e5                                      ldr r1, [r4, #0x164]
00558b1c  05 00 81 e0                                      add r0, r1, r5
00558b20  07 10 81 e0                                      add r1, r1, r7
00558b24  42 fe ff eb                                      bl #0x558434
00558b28  64 01 94 e5                                      ldr r0, [r4, #0x164]
00558b2c  0b 10 a0 e1                                      mov r1, fp
00558b30  07 00 80 e0                                      add r0, r0, r7
00558b34  3e fe ff eb                                      bl #0x558434
00558b38  98 31 94 e5                                      ldr r3, [r4, #0x198]
00558b3c  06 00 53 e1                                      cmp r3, r6
00558b40  98 81 84 05                                      streq r8, [r4, #0x198]
00558b44  d3 ff ff 0a                                      beq #0x558a98
00558b48  03 00 58 e1                                      cmp r8, r3
00558b4c  98 61 84 05                                      streq r6, [r4, #0x198]
00558b50  d0 ff ff ea                                      b #0x558a98
00558b54  01 90 89 e2                                      add sb, sb, #1
00558b58  03 00 59 e1                                      cmp sb, r3
00558b5c  ca ff ff ba                                      blt #0x558a8c
00558b60  bc ff ff ea                                      b #0x558a58
00558b64  68 c1 94 e5                                      ldr ip, [r4, #0x168]
00558b68  64 01 94 e5                                      ldr r0, [r4, #0x164]
00558b6c  0c c0 60 e0                                      rsb ip, r0, ip
00558b70  17 00 5c e3                                      cmp ip, #0x17
00558b74  b6 ff ff da                                      ble #0x558a54
00558b78  98 a0 a0 e3                                      mov sl, #0x98
00558b7c  9a 01 0a e0                                      mul sl, sl, r1
00558b80  00 90 a0 e3                                      mov sb, #0
00558b84  0c b0 8d e2                                      add fp, sp, #0xc
00558b88  00 50 a0 e3                                      mov r5, #0
00558b8c  05 60 a0 e1                                      mov r6, r5
00558b90  04 00 00 ea                                      b #0x558ba8
00558b94  68 c1 94 e5                                      ldr ip, [r4, #0x168]
00558b98  64 01 94 e5                                      ldr r0, [r4, #0x164]
00558b9c  07 50 a0 e1                                      mov r5, r7
00558ba0  08 60 a0 e1                                      mov r6, r8
00558ba4  0c c0 60 e0                                      rsb ip, r0, ip
00558ba8  4c 31 a0 e1                                      asr r3, ip, #2
00558bac  0c 70 85 e2                                      add r7, r5, #0xc
00558bb0  03 21 83 e0                                      add r2, r3, r3, lsl #2
00558bb4  01 80 86 e2                                      add r8, r6, #1
00558bb8  02 22 82 e0                                      add r2, r2, r2, lsl #4
00558bbc  02 24 82 e0                                      add r2, r2, r2, lsl #8
00558bc0  02 28 82 e0                                      add r2, r2, r2, lsl #16
00558bc4  82 30 83 e0                                      add r3, r3, r2, lsl #1
00558bc8  01 30 43 e2                                      sub r3, r3, #1
00558bcc  03 20 69 e0                                      rsb r2, sb, r3
00558bd0  02 00 56 e1                                      cmp r6, r2
00558bd4  1d 00 00 aa                                      bge #0x558c50
00558bd8  05 20 90 e7                                      ldr r2, [r0, r5]
00558bdc  07 00 90 e7                                      ldr r0, [r0, r7]
00558be0  0a 20 82 e0                                      add r2, r2, sl
00558be4  0a 00 80 e0                                      add r0, r0, sl
00558be8  40 30 92 e5                                      ldr r3, [r2, #0x40]
00558bec  40 10 90 e5                                      ldr r1, [r0, #0x40]
00558bf0  44 20 92 e5                                      ldr r2, [r2, #0x44]
00558bf4  44 00 90 e5                                      ldr r0, [r0, #0x44]
00558bf8  38 f5 ff eb                                      bl #0x5560e0
00558bfc  00 00 50 e3                                      cmp r0, #0
00558c00  e3 ff ff aa                                      bge #0x558b94
00558c04  64 11 94 e5                                      ldr r1, [r4, #0x164]
00558c08  0b 00 a0 e1                                      mov r0, fp
00558c0c  05 10 81 e0                                      add r1, r1, r5
00558c10  07 fe ff eb                                      bl #0x558434
00558c14  64 11 94 e5                                      ldr r1, [r4, #0x164]
00558c18  05 00 81 e0                                      add r0, r1, r5
00558c1c  07 10 81 e0                                      add r1, r1, r7
00558c20  03 fe ff eb                                      bl #0x558434
00558c24  64 01 94 e5                                      ldr r0, [r4, #0x164]
00558c28  0b 10 a0 e1                                      mov r1, fp
00558c2c  07 00 80 e0                                      add r0, r0, r7
00558c30  ff fd ff eb                                      bl #0x558434
00558c34  98 31 94 e5                                      ldr r3, [r4, #0x198]
00558c38  06 00 53 e1                                      cmp r3, r6
00558c3c  98 81 84 05                                      streq r8, [r4, #0x198]
00558c40  d3 ff ff 0a                                      beq #0x558b94
00558c44  03 00 58 e1                                      cmp r8, r3
00558c48  98 61 84 05                                      streq r6, [r4, #0x198]
00558c4c  d0 ff ff ea                                      b #0x558b94
00558c50  01 90 89 e2                                      add sb, sb, #1
00558c54  03 00 59 e1                                      cmp sb, r3
00558c58  ca ff ff ba                                      blt #0x558b88
00558c5c  7d ff ff ea                                      b #0x558a58
00558c60  00 30 90 e5                                      ldr r3, [r0]
00558c64  04 20 8d e5                                      str r2, [sp, #4]
00558c68  0f e0 a0 e1                                      mov lr, pc
00558c6c  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
00558c70  00 10 a0 e1                                      mov r1, r0
00558c74  00 00 51 e3                                      cmp r1, #0
00558c78  04 20 9d e5                                      ldr r2, [sp, #4]
00558c7c  70 ff ff aa                                      bge #0x558a44
00558c80  0c 00 8d e2                                      add r0, sp, #0xc
00558c84  d2 fb ff eb                                      bl #0x557bd4
00558c88  74 ff ff ea                                      b #0x558a60

; FUNCTION 0x00558e28, declared_size=684, range_size=684, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable9breakTextERKSbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEERS9_j
; demangled: glitch::gui::CGUITable::breakText(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >&, unsigned int)
; decoder-mode: arm
00558e28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00558e2c  50 c1 90 e5                                      ldr ip, [r0, #0x150]
00558e30  59 df 4d e2                                      sub sp, sp, #0x164
00558e34  1c 20 8d e5                                      str r2, [sp, #0x1c]
00558e38  00 20 9c e5                                      ldr r2, [ip]
00558e3c  00 60 a0 e1                                      mov r6, r0
00558e40  0c 00 a0 e1                                      mov r0, ip
00558e44  01 40 a0 e1                                      mov r4, r1
00558e48  03 a0 a0 e1                                      mov sl, r3
00558e4c  0f e0 a0 e1                                      mov lr, pc
00558e50  38 f0 92 e5                                      ldr pc, [r2, #0x38]
00558e54  00 20 50 e2                                      subs r2, r0, #0
00558e58  84 00 00 0a                                      beq #0x559070
00558e5c  70 31 96 e5                                      ldr r3, [r6, #0x170]
00558e60  00 00 53 e3                                      cmp r3, #0
00558e64  81 00 00 0a                                      beq #0x559070
00558e68  00 30 92 e5                                      ldr r3, [r2]
00558e6c  00 10 a0 e3                                      mov r1, #0
00558e70  0f e0 a0 e1                                      mov lr, pc
00558e74  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00558e78  00 50 50 e2                                      subs r5, r0, #0
00558e7c  7b 00 00 0a                                      beq #0x559070
00558e80  f8 80 8d e2                                      add r8, sp, #0xf8
00558e84  08 00 a0 e1                                      mov r0, r8
00558e88  10 10 a0 e3                                      mov r1, #0x10
00558e8c  38 81 8d e5                                      str r8, [sp, #0x138]
00558e90  3c 81 8d e5                                      str r8, [sp, #0x13c]
00558e94  a1 1e f7 eb                                      bl #0x320920
00558e98  38 31 9d e5                                      ldr r3, [sp, #0x138]
00558e9c  00 70 a0 e3                                      mov r7, #0
00558ea0  b0 10 8d e2                                      add r1, sp, #0xb0
00558ea4  18 10 8d e5                                      str r1, [sp, #0x18]
00558ea8  00 70 83 e5                                      str r7, [r3]
00558eac  18 00 9d e5                                      ldr r0, [sp, #0x18]
00558eb0  10 10 a0 e3                                      mov r1, #0x10
00558eb4  f0 00 8d e5                                      str r0, [sp, #0xf0]
00558eb8  f4 00 8d e5                                      str r0, [sp, #0xf4]
00558ebc  97 1e f7 eb                                      bl #0x320920
00558ec0  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
00558ec4  01 c0 e0 e3                                      mvn ip, #1
00558ec8  fc 21 9f e5                                      ldr r2, [pc, #0x1fc]
00558ecc  00 70 83 e5                                      str r7, [r3]
00558ed0  a4 31 96 e5                                      ldr r3, [r6, #0x1a4]
00558ed4  5c 71 8d e5                                      str r7, [sp, #0x15c]
00558ed8  02 20 8f e0                                      add r2, pc, r2
00558edc  9c a3 2c e0                                      mla ip, ip, r3, sl
00558ee0  00 60 95 e5                                      ldr r6, [r5]
00558ee4  05 10 a0 e1                                      mov r1, r5
00558ee8  15 0e 8d e2                                      add r0, sp, #0x150
00558eec  04 c0 8d e5                                      str ip, [sp, #4]
00558ef0  0f e0 a0 e1                                      mov lr, pc
00558ef4  1c f0 96 e5                                      ldr pc, [r6, #0x1c]
00558ef8  44 20 94 e5                                      ldr r2, [r4, #0x44]
00558efc  40 30 94 e5                                      ldr r3, [r4, #0x40]
00558f00  04 10 9d e5                                      ldr r1, [sp, #4]
00558f04  03 30 62 e0                                      rsb r3, r2, r3
00558f08  43 31 b0 e1                                      asrs r3, r3, #2
00558f0c  08 30 8d e5                                      str r3, [sp, #8]
00558f10  50 31 9d e5                                      ldr r3, [sp, #0x150]
00558f14  01 30 63 e0                                      rsb r3, r3, r1
00558f18  10 30 8d e5                                      str r3, [sp, #0x10]
00558f1c  42 00 00 0a                                      beq #0x55902c
00558f20  00 30 92 e5                                      ldr r3, [r2]
00558f24  0a 00 53 e3                                      cmp r3, #0xa
00558f28  58 31 8d e5                                      str r3, [sp, #0x158]
00558f2c  51 00 00 0a                                      beq #0x559078
00558f30  52 3f 8d e2                                      add r3, sp, #0x148
00558f34  05 1d 8d e2                                      add r1, sp, #0x140
00558f38  07 60 a0 e1                                      mov r6, r7
00558f3c  0c 30 8d e5                                      str r3, [sp, #0xc]
00558f40  56 9f 8d e2                                      add sb, sp, #0x158
00558f44  68 b0 8d e2                                      add fp, sp, #0x68
00558f48  14 10 8d e5                                      str r1, [sp, #0x14]
00558f4c  04 a0 a0 e1                                      mov sl, r4
00558f50  0a 00 00 ea                                      b #0x558f80
00558f54  08 00 a0 e1                                      mov r0, r8
00558f58  58 11 9d e5                                      ldr r1, [sp, #0x158]
00558f5c  c6 dc ff eb                                      bl #0x55027c
00558f60  08 30 9d e5                                      ldr r3, [sp, #8]
00558f64  03 00 56 e1                                      cmp r6, r3
00558f68  2f 00 00 0a                                      beq #0x55902c
00558f6c  44 30 9a e5                                      ldr r3, [sl, #0x44]
00558f70  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
00558f74  0a 00 53 e3                                      cmp r3, #0xa
00558f78  58 31 8d e5                                      str r3, [sp, #0x158]
00558f7c  41 00 00 0a                                      beq #0x559088
00558f80  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00558f84  05 10 a0 e1                                      mov r1, r5
00558f88  09 20 a0 e1                                      mov r2, sb
00558f8c  00 30 95 e5                                      ldr r3, [r5]
00558f90  0f e0 a0 e1                                      mov lr, pc
00558f94  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00558f98  48 31 9d e5                                      ldr r3, [sp, #0x148]
00558f9c  09 20 a0 e1                                      mov r2, sb
00558fa0  0b 00 a0 e1                                      mov r0, fp
00558fa4  03 70 87 e0                                      add r7, r7, r3
00558fa8  04 30 9d e5                                      ldr r3, [sp, #4]
00558fac  08 10 a0 e1                                      mov r1, r8
00558fb0  07 00 53 e1                                      cmp r3, r7
00558fb4  30 00 00 3a                                      blo #0x55907c
00558fb8  00 30 95 e5                                      ldr r3, [r5]
00558fbc  01 60 86 e2                                      add r6, r6, #1
00558fc0  1c 40 93 e5                                      ldr r4, [r3, #0x1c]
00558fc4  77 ff ff eb                                      bl #0x558da8
00558fc8  14 00 9d e5                                      ldr r0, [sp, #0x14]
00558fcc  05 10 a0 e1                                      mov r1, r5
00558fd0  ac 20 9d e5                                      ldr r2, [sp, #0xac]
00558fd4  34 ff 2f e1                                      blx r4
00558fd8  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00558fdc  40 41 9d e5                                      ldr r4, [sp, #0x140]
00558fe0  0b 00 53 e1                                      cmp r3, fp
00558fe4  03 00 a0 e1                                      mov r0, r3
00558fe8  02 00 00 0a                                      beq #0x558ff8
00558fec  00 00 53 e3                                      cmp r3, #0
00558ff0  00 00 00 0a                                      beq #0x558ff8
00558ff4  15 dd f6 eb                                      bl #0x310450
00558ff8  10 10 9d e5                                      ldr r1, [sp, #0x10]
00558ffc  04 00 51 e1                                      cmp r1, r4
00559000  d3 ff ff aa                                      bge #0x558f54
00559004  3c 11 9d e5                                      ldr r1, [sp, #0x13c]
00559008  38 21 9d e5                                      ldr r2, [sp, #0x138]
0055900c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00559010  62 28 f7 eb                                      bl #0x3231a0
00559014  08 00 a0 e1                                      mov r0, r8
00559018  58 11 9d e5                                      ldr r1, [sp, #0x158]
0055901c  96 dc ff eb                                      bl #0x55027c
00559020  08 30 9d e5                                      ldr r3, [sp, #8]
00559024  03 00 56 e1                                      cmp r6, r3
00559028  cf ff ff 1a                                      bne #0x558f6c
0055902c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00559030  3c 11 9d e5                                      ldr r1, [sp, #0x13c]
00559034  38 21 9d e5                                      ldr r2, [sp, #0x138]
00559038  58 28 f7 eb                                      bl #0x3231a0
0055903c  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
00559040  18 30 9d e5                                      ldr r3, [sp, #0x18]
00559044  03 00 50 e1                                      cmp r0, r3
00559048  02 00 00 0a                                      beq #0x559058
0055904c  00 00 50 e3                                      cmp r0, #0
00559050  00 00 00 0a                                      beq #0x559058
00559054  fd dc f6 eb                                      bl #0x310450
00559058  3c 01 9d e5                                      ldr r0, [sp, #0x13c]
0055905c  08 00 50 e1                                      cmp r0, r8
00559060  02 00 00 0a                                      beq #0x559070
00559064  00 00 50 e3                                      cmp r0, #0
00559068  00 00 00 0a                                      beq #0x559070
0055906c  f7 dc f6 eb                                      bl #0x310450
00559070  59 df 8d e2                                      add sp, sp, #0x164
00559074  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00559078  07 60 a0 e1                                      mov r6, r7
0055907c  08 10 9d e5                                      ldr r1, [sp, #8]
00559080  06 00 51 e1                                      cmp r1, r6
00559084  e8 ff ff 9a                                      bls #0x55902c
00559088  40 20 9f e5                                      ldr r2, [pc, #0x40]
0055908c  20 40 8d e2                                      add r4, sp, #0x20
00559090  18 10 9d e5                                      ldr r1, [sp, #0x18]
00559094  02 20 8f e0                                      add r2, pc, r2
00559098  04 00 a0 e1                                      mov r0, r4
0055909c  41 ff ff eb                                      bl #0x558da8
005590a0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005590a4  64 10 9d e5                                      ldr r1, [sp, #0x64]
005590a8  60 20 9d e5                                      ldr r2, [sp, #0x60]
005590ac  3b 28 f7 eb                                      bl #0x3231a0
005590b0  64 00 9d e5                                      ldr r0, [sp, #0x64]
005590b4  04 00 50 e1                                      cmp r0, r4
005590b8  df ff ff 0a                                      beq #0x55903c
005590bc  00 00 50 e3                                      cmp r0, #0
005590c0  dd ff ff 0a                                      beq #0x55903c
005590c4  e1 dc f6 eb                                      bl #0x310450
005590c8  db ff ff ea                                      b #0x55903c
; mapping-symbol data/literal pool
005590cc  a8 5c 38 00 ec 5a 38 00                          .byte 0xa8, 0x5c, 0x38, 0x00, 0xec, 0x5a, 0x38, 0x00

; FUNCTION 0x005590d4, declared_size=264, range_size=264, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable11setCellTextEjjPKwNS_5video6SColorE
; demangled: glitch::gui::CGUITable::setCellText(unsigned int, unsigned int, wchar_t const*, glitch::video::SColor)
; decoder-mode: arm
005590d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005590d8  00 40 a0 e1                                      mov r4, r0
005590dc  64 c1 90 e5                                      ldr ip, [r0, #0x164]
005590e0  68 01 90 e5                                      ldr r0, [r0, #0x168]
005590e4  03 b0 a0 e1                                      mov fp, r3
005590e8  0c d0 4d e2                                      sub sp, sp, #0xc
005590ec  00 00 6c e0                                      rsb r0, ip, r0
005590f0  40 01 a0 e1                                      asr r0, r0, #2
005590f4  02 50 a0 e1                                      mov r5, r2
005590f8  00 31 80 e0                                      add r3, r0, r0, lsl #2
005590fc  30 70 dd e5                                      ldrb r7, [sp, #0x30]
00559100  03 32 83 e0                                      add r3, r3, r3, lsl #4
00559104  31 a0 dd e5                                      ldrb sl, [sp, #0x31]
00559108  03 34 83 e0                                      add r3, r3, r3, lsl #8
0055910c  32 80 dd e5                                      ldrb r8, [sp, #0x32]
00559110  03 38 83 e0                                      add r3, r3, r3, lsl #16
00559114  33 60 dd e5                                      ldrb r6, [sp, #0x33]
00559118  83 00 80 e0                                      add r0, r0, r3, lsl #1
0055911c  00 00 51 e1                                      cmp r1, r0
00559120  2b 00 00 2a                                      bhs #0x5591d4
00559124  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
00559128  58 21 94 e5                                      ldr r2, [r4, #0x158]
0055912c  3d 3f 0c e3                                      movw r3, #0xcf3d
00559130  f3 3c 43 e3                                      movt r3, #0x3cf3
00559134  00 20 62 e0                                      rsb r2, r2, r0
00559138  42 21 a0 e1                                      asr r2, r2, #2
0055913c  93 02 03 e0                                      mul r3, r3, r2
00559140  03 00 55 e1                                      cmp r5, r3
00559144  22 00 00 2a                                      bhs #0x5591d4
00559148  98 30 a0 e3                                      mov r3, #0x98
0055914c  93 05 03 e0                                      mul r3, r3, r5
00559150  0c 90 a0 e3                                      mov sb, #0xc
00559154  99 01 09 e0                                      mul sb, sb, r1
00559158  04 30 8d e5                                      str r3, [sp, #4]
0055915c  09 30 9c e7                                      ldr r3, [ip, sb]
00559160  04 20 9d e5                                      ldr r2, [sp, #4]
00559164  0b 00 a0 e1                                      mov r0, fp
00559168  02 30 83 e0                                      add r3, r3, r2
0055916c  00 30 8d e5                                      str r3, [sp]
00559170  c4 d6 f6 eb                                      bl #0x30ec88
00559174  00 30 9d e5                                      ldr r3, [sp]
00559178  00 21 8b e0                                      add r2, fp, r0, lsl #2
0055917c  0b 10 a0 e1                                      mov r1, fp
00559180  03 00 a0 e1                                      mov r0, r3
00559184  05 28 f7 eb                                      bl #0x3231a0
00559188  64 21 94 e5                                      ldr r2, [r4, #0x164]
0055918c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00559190  04 00 a0 e1                                      mov r0, r4
00559194  09 10 92 e7                                      ldr r1, [r2, sb]
00559198  54 20 a0 e3                                      mov r2, #0x54
0055919c  92 35 25 e0                                      mla r5, r2, r5, r3
005591a0  04 30 9d e5                                      ldr r3, [sp, #4]
005591a4  03 10 81 e0                                      add r1, r1, r3
005591a8  48 20 81 e2                                      add r2, r1, #0x48
005591ac  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
005591b0  1c ff ff eb                                      bl #0x558e28
005591b4  64 31 94 e5                                      ldr r3, [r4, #0x164]
005591b8  04 20 9d e5                                      ldr r2, [sp, #4]
005591bc  09 30 93 e7                                      ldr r3, [r3, sb]
005591c0  02 30 83 e0                                      add r3, r3, r2
005591c4  90 70 c3 e5                                      strb r7, [r3, #0x90]
005591c8  93 60 c3 e5                                      strb r6, [r3, #0x93]
005591cc  92 80 c3 e5                                      strb r8, [r3, #0x92]
005591d0  91 a0 c3 e5                                      strb sl, [r3, #0x91]
005591d4  0c d0 8d e2                                      add sp, sp, #0xc
005591d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005591dc, declared_size=276, range_size=276, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable11setCellTextEjjPKw
; demangled: glitch::gui::CGUITable::setCellText(unsigned int, unsigned int, wchar_t const*)
; decoder-mode: arm
005591dc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005591e0  00 40 a0 e1                                      mov r4, r0
005591e4  64 c1 90 e5                                      ldr ip, [r0, #0x164]
005591e8  68 01 90 e5                                      ldr r0, [r0, #0x168]
005591ec  02 50 a0 e1                                      mov r5, r2
005591f0  03 a0 a0 e1                                      mov sl, r3
005591f4  00 00 6c e0                                      rsb r0, ip, r0
005591f8  40 21 a0 e1                                      asr r2, r0, #2
005591fc  02 01 82 e0                                      add r0, r2, r2, lsl #2
00559200  00 02 80 e0                                      add r0, r0, r0, lsl #4
00559204  00 04 80 e0                                      add r0, r0, r0, lsl #8
00559208  00 08 80 e0                                      add r0, r0, r0, lsl #16
0055920c  80 20 82 e0                                      add r2, r2, r0, lsl #1
00559210  02 00 51 e1                                      cmp r1, r2
00559214  34 00 00 2a                                      bhs #0x5592ec
00559218  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
0055921c  58 21 94 e5                                      ldr r2, [r4, #0x158]
00559220  3d 3f 0c e3                                      movw r3, #0xcf3d
00559224  f3 3c 43 e3                                      movt r3, #0x3cf3
00559228  00 20 62 e0                                      rsb r2, r2, r0
0055922c  42 21 a0 e1                                      asr r2, r2, #2
00559230  93 02 03 e0                                      mul r3, r3, r2
00559234  03 00 55 e1                                      cmp r5, r3
00559238  2b 00 00 2a                                      bhs #0x5592ec
0055923c  0c 70 a0 e3                                      mov r7, #0xc
00559240  97 01 07 e0                                      mul r7, r7, r1
00559244  0a 00 a0 e1                                      mov r0, sl
00559248  07 80 9c e7                                      ldr r8, [ip, r7]
0055924c  8d d6 f6 eb                                      bl #0x30ec88
00559250  98 60 a0 e3                                      mov r6, #0x98
00559254  96 05 06 e0                                      mul r6, r6, r5
00559258  00 21 8a e0                                      add r2, sl, r0, lsl #2
0055925c  06 80 88 e0                                      add r8, r8, r6
00559260  0a 10 a0 e1                                      mov r1, sl
00559264  08 00 a0 e1                                      mov r0, r8
00559268  cc 27 f7 eb                                      bl #0x3231a0
0055926c  64 21 94 e5                                      ldr r2, [r4, #0x164]
00559270  58 31 94 e5                                      ldr r3, [r4, #0x158]
00559274  04 00 a0 e1                                      mov r0, r4
00559278  07 10 92 e7                                      ldr r1, [r2, r7]
0055927c  54 20 a0 e3                                      mov r2, #0x54
00559280  92 35 25 e0                                      mla r5, r2, r5, r3
00559284  06 10 81 e0                                      add r1, r1, r6
00559288  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
0055928c  48 20 81 e2                                      add r2, r1, #0x48
00559290  e4 fe ff eb                                      bl #0x558e28
00559294  50 31 94 e5                                      ldr r3, [r4, #0x150]
00559298  03 00 a0 e1                                      mov r0, r3
0055929c  00 30 93 e5                                      ldr r3, [r3]
005592a0  0f e0 a0 e1                                      mov lr, pc
005592a4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005592a8  00 30 50 e2                                      subs r3, r0, #0
005592ac  0e 00 00 0a                                      beq #0x5592ec
005592b0  64 21 94 e5                                      ldr r2, [r4, #0x164]
005592b4  00 30 93 e5                                      ldr r3, [r3]
005592b8  08 10 a0 e3                                      mov r1, #8
005592bc  07 20 92 e7                                      ldr r2, [r2, r7]
005592c0  06 60 82 e0                                      add r6, r2, r6
005592c4  0f e0 a0 e1                                      mov lr, pc
005592c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005592cc  90 30 86 e2                                      add r3, r6, #0x90
005592d0  50 cc e7 e7                                      ubfx ip, r0, #0x18, #8
005592d4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005592d8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005592dc  90 00 c6 e5                                      strb r0, [r6, #0x90]
005592e0  03 c0 c3 e5                                      strb ip, [r3, #3]
005592e4  01 10 c3 e5                                      strb r1, [r3, #1]
005592e8  02 20 c3 e5                                      strb r2, [r3, #2]
005592ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005592f0, declared_size=292, range_size=292, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable14setColumnWidthEjj
; demangled: glitch::gui::CGUITable::setColumnWidth(unsigned int, unsigned int)
; decoder-mode: arm
005592f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005592f4  00 40 a0 e1                                      mov r4, r0
005592f8  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
005592fc  58 01 90 e5                                      ldr r0, [r0, #0x158]
00559300  3d 3f 0c e3                                      movw r3, #0xcf3d
00559304  f3 3c 43 e3                                      movt r3, #0x3cf3
00559308  0c c0 60 e0                                      rsb ip, r0, ip
0055930c  4c c1 a0 e1                                      asr ip, ip, #2
00559310  93 0c 03 e0                                      mul r3, r3, ip
00559314  08 d0 4d e2                                      sub sp, sp, #8
00559318  03 00 51 e1                                      cmp r1, r3
0055931c  01 50 a0 e1                                      mov r5, r1
00559320  02 60 a0 e1                                      mov r6, r2
00559324  03 00 00 3a                                      blo #0x559338
00559328  04 00 a0 e1                                      mov r0, r4
0055932c  08 d0 8d e2                                      add sp, sp, #8
00559330  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00559334  03 f0 ff ea                                      b #0x555348
00559338  54 70 a0 e3                                      mov r7, #0x54
0055933c  97 01 07 e0                                      mul r7, r7, r1
00559340  70 31 94 e5                                      ldr r3, [r4, #0x170]
00559344  07 00 80 e0                                      add r0, r0, r7
00559348  44 20 90 e5                                      ldr r2, [r0, #0x44]
0055934c  03 10 a0 e1                                      mov r1, r3
00559350  0d 00 a0 e1                                      mov r0, sp
00559354  00 30 93 e5                                      ldr r3, [r3]
00559358  0f e0 a0 e1                                      mov lr, pc
0055935c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00559360  a4 11 94 e5                                      ldr r1, [r4, #0x1a4]
00559364  58 31 94 e5                                      ldr r3, [r4, #0x158]
00559368  00 20 9d e5                                      ldr r2, [sp]
0055936c  07 30 83 e0                                      add r3, r3, r7
00559370  81 20 82 e0                                      add r2, r2, r1, lsl #1
00559374  02 00 56 e1                                      cmp r6, r2
00559378  4c 60 83 25                                      strhs r6, [r3, #0x4c]
0055937c  4c 20 83 35                                      strlo r2, [r3, #0x4c]
00559380  64 21 94 e5                                      ldr r2, [r4, #0x164]
00559384  68 31 94 e5                                      ldr r3, [r4, #0x168]
00559388  03 30 62 e0                                      rsb r3, r2, r3
0055938c  43 31 a0 e1                                      asr r3, r3, #2
00559390  03 11 83 e0                                      add r1, r3, r3, lsl #2
00559394  01 12 81 e0                                      add r1, r1, r1, lsl #4
00559398  01 14 81 e0                                      add r1, r1, r1, lsl #8
0055939c  01 18 81 e0                                      add r1, r1, r1, lsl #16
005593a0  81 30 83 e0                                      add r3, r3, r1, lsl #1
005593a4  00 00 53 e3                                      cmp r3, #0
005593a8  de ff ff 0a                                      beq #0x559328
005593ac  98 80 a0 e3                                      mov r8, #0x98
005593b0  98 05 08 e0                                      mul r8, r8, r5
005593b4  00 50 a0 e3                                      mov r5, #0
005593b8  05 60 a0 e1                                      mov r6, r5
005593bc  05 10 92 e7                                      ldr r1, [r2, r5]
005593c0  58 31 94 e5                                      ldr r3, [r4, #0x158]
005593c4  04 00 a0 e1                                      mov r0, r4
005593c8  08 10 81 e0                                      add r1, r1, r8
005593cc  07 30 83 e0                                      add r3, r3, r7
005593d0  48 20 81 e2                                      add r2, r1, #0x48
005593d4  4c 30 93 e5                                      ldr r3, [r3, #0x4c]
005593d8  92 fe ff eb                                      bl #0x558e28
005593dc  64 21 94 e5                                      ldr r2, [r4, #0x164]
005593e0  68 31 94 e5                                      ldr r3, [r4, #0x168]
005593e4  01 60 86 e2                                      add r6, r6, #1
005593e8  0c 50 85 e2                                      add r5, r5, #0xc
005593ec  03 30 62 e0                                      rsb r3, r2, r3
005593f0  43 31 a0 e1                                      asr r3, r3, #2
005593f4  03 11 83 e0                                      add r1, r3, r3, lsl #2
005593f8  01 12 81 e0                                      add r1, r1, r1, lsl #4
005593fc  01 14 81 e0                                      add r1, r1, r1, lsl #8
00559400  01 18 81 e0                                      add r1, r1, r1, lsl #16
00559404  81 30 83 e0                                      add r3, r3, r1, lsl #1
00559408  03 00 56 e1                                      cmp r6, r3
0055940c  ea ff ff 3a                                      blo #0x5593bc
00559410  c4 ff ff ea                                      b #0x559328

; FUNCTION 0x005596c0, declared_size=284, range_size=284, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable12removeColumnEj
; demangled: glitch::gui::CGUITable::removeColumn(unsigned int)
; decoder-mode: arm
005596c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005596c4  00 40 a0 e1                                      mov r4, r0
005596c8  58 21 90 e5                                      ldr r2, [r0, #0x158]
005596cc  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
005596d0  3d 3f 0c e3                                      movw r3, #0xcf3d
005596d4  f3 3c 43 e3                                      movt r3, #0x3cf3
005596d8  00 00 62 e0                                      rsb r0, r2, r0
005596dc  40 01 a0 e1                                      asr r0, r0, #2
005596e0  93 00 03 e0                                      mul r3, r3, r0
005596e4  0c d0 4d e2                                      sub sp, sp, #0xc
005596e8  03 00 51 e1                                      cmp r1, r3
005596ec  01 70 a0 e1                                      mov r7, r1
005596f0  11 00 00 3a                                      blo #0x55973c
005596f4  a8 31 94 e5                                      ldr r3, [r4, #0x1a8]
005596f8  03 00 57 e1                                      cmp r7, r3
005596fc  0a 00 00 ca                                      bgt #0x55972c
00559700  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00559704  58 21 94 e5                                      ldr r2, [r4, #0x158]
00559708  3d 3f 0c e3                                      movw r3, #0xcf3d
0055970c  f3 3c 43 e3                                      movt r3, #0x3cf3
00559710  01 20 62 e0                                      rsb r2, r2, r1
00559714  42 21 a0 e1                                      asr r2, r2, #2
00559718  93 02 03 e0                                      mul r3, r3, r2
0055971c  00 00 53 e3                                      cmp r3, #0
00559720  00 30 a0 13                                      movne r3, #0
00559724  00 30 e0 03                                      mvneq r3, #0
00559728  a8 31 84 e5                                      str r3, [r4, #0x1a8]
0055972c  04 00 a0 e1                                      mov r0, r4
00559730  04 ef ff eb                                      bl #0x555348
00559734  0c d0 8d e2                                      add sp, sp, #0xc
00559738  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0055973c  54 10 a0 e3                                      mov r1, #0x54
00559740  91 27 21 e0                                      mla r1, r1, r7, r2
00559744  56 0f 84 e2                                      add r0, r4, #0x158
00559748  04 20 8d e2                                      add r2, sp, #4
0055974c  6c fa ff eb                                      bl #0x558104
00559750  64 01 94 e5                                      ldr r0, [r4, #0x164]
00559754  68 31 94 e5                                      ldr r3, [r4, #0x168]
00559758  03 30 60 e0                                      rsb r3, r0, r3
0055975c  43 31 a0 e1                                      asr r3, r3, #2
00559760  03 21 83 e0                                      add r2, r3, r3, lsl #2
00559764  02 22 82 e0                                      add r2, r2, r2, lsl #4
00559768  02 24 82 e0                                      add r2, r2, r2, lsl #8
0055976c  02 28 82 e0                                      add r2, r2, r2, lsl #16
00559770  82 30 83 e0                                      add r3, r3, r2, lsl #1
00559774  00 00 53 e3                                      cmp r3, #0
00559778  dd ff ff 0a                                      beq #0x5596f4
0055977c  98 a0 a0 e3                                      mov sl, #0x98
00559780  9a 07 0a e0                                      mul sl, sl, r7
00559784  00 50 a0 e3                                      mov r5, #0
00559788  05 60 a0 e1                                      mov r6, r5
0055978c  0d 80 a0 e1                                      mov r8, sp
00559790  05 10 90 e7                                      ldr r1, [r0, r5]
00559794  0d 20 a0 e1                                      mov r2, sp
00559798  05 00 80 e0                                      add r0, r0, r5
0055979c  0a 10 81 e0                                      add r1, r1, sl
005597a0  9c ff ff eb                                      bl #0x559618
005597a4  64 01 94 e5                                      ldr r0, [r4, #0x164]
005597a8  68 31 94 e5                                      ldr r3, [r4, #0x168]
005597ac  01 60 86 e2                                      add r6, r6, #1
005597b0  0c 50 85 e2                                      add r5, r5, #0xc
005597b4  03 30 60 e0                                      rsb r3, r0, r3
005597b8  43 31 a0 e1                                      asr r3, r3, #2
005597bc  03 21 83 e0                                      add r2, r3, r3, lsl #2
005597c0  02 22 82 e0                                      add r2, r2, r2, lsl #4
005597c4  02 24 82 e0                                      add r2, r2, r2, lsl #8
005597c8  02 28 82 e0                                      add r2, r2, r2, lsl #16
005597cc  82 30 83 e0                                      add r3, r3, r2, lsl #1
005597d0  03 00 56 e1                                      cmp r6, r3
005597d4  ed ff ff 3a                                      blo #0x559790
005597d8  c5 ff ff ea                                      b #0x5596f4

; FUNCTION 0x005597dc, declared_size=1776, range_size=1776, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZNK6glitch3gui9CGUITable19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUITable::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005597dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005597e0  88 36 9f e5                                      ldr r3, [pc, #0x688]
005597e4  88 c6 9f e5                                      ldr ip, [pc, #0x688]
005597e8  74 d0 4d e2                                      sub sp, sp, #0x74
005597ec  03 30 8f e0                                      add r3, pc, r3
005597f0  30 30 8d e5                                      str r3, [sp, #0x30]
005597f4  0c 30 93 e7                                      ldr r3, [r3, ip]
005597f8  00 70 a0 e1                                      mov r7, r0
005597fc  01 50 a0 e1                                      mov r5, r1
00559800  00 30 93 e5                                      ldr r3, [r3]
00559804  34 c0 8d e5                                      str ip, [sp, #0x34]
00559808  3d 4f 0c e3                                      movw r4, #0xcf3d
0055980c  6c 30 8d e5                                      str r3, [sp, #0x6c]
00559810  29 6e ff eb                                      bl #0x5350bc
00559814  58 31 97 e5                                      ldr r3, [r7, #0x158]
00559818  5c 21 97 e5                                      ldr r2, [r7, #0x15c]
0055981c  54 16 9f e5                                      ldr r1, [pc, #0x654]
00559820  f3 4c 43 e3                                      movt r4, #0x3cf3
00559824  02 20 63 e0                                      rsb r2, r3, r2
00559828  42 21 a0 e1                                      asr r2, r2, #2
0055982c  94 02 02 e0                                      mul r2, r4, r2
00559830  00 30 a0 e3                                      mov r3, #0
00559834  00 c0 95 e5                                      ldr ip, [r5]
00559838  01 10 8f e0                                      add r1, pc, r1
0055983c  05 00 a0 e1                                      mov r0, r5
00559840  0f e0 a0 e1                                      mov lr, pc
00559844  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00559848  5c 21 97 e5                                      ldr r2, [r7, #0x15c]
0055984c  58 31 97 e5                                      ldr r3, [r7, #0x158]
00559850  02 30 63 e0                                      rsb r3, r3, r2
00559854  43 31 a0 e1                                      asr r3, r3, #2
00559858  94 03 04 e0                                      mul r4, r4, r3
0055985c  00 00 54 e3                                      cmp r4, #0
00559860  89 00 00 0a                                      beq #0x559a8c
00559864  10 36 9f e5                                      ldr r3, [pc, #0x610]
00559868  10 96 9f e5                                      ldr sb, [pc, #0x610]
0055986c  10 e6 9f e5                                      ldr lr, [pc, #0x610]
00559870  03 30 8f e0                                      add r3, pc, r3
00559874  0c 30 8d e5                                      str r3, [sp, #0xc]
00559878  08 36 9f e5                                      ldr r3, [pc, #0x608]
0055987c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00559880  09 90 8f e0                                      add sb, pc, sb
00559884  03 30 8f e0                                      add r3, pc, r3
00559888  10 30 8d e5                                      str r3, [sp, #0x10]
0055988c  f8 35 9f e5                                      ldr r3, [pc, #0x5f8]
00559890  00 60 a0 e3                                      mov r6, #0
00559894  06 10 89 e2                                      add r1, sb, #6
00559898  03 30 8f e0                                      add r3, pc, r3
0055989c  14 30 8d e5                                      str r3, [sp, #0x14]
005598a0  e8 35 9f e5                                      ldr r3, [pc, #0x5e8]
005598a4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005598a8  04 20 82 e2                                      add r2, r2, #4
005598ac  03 30 8f e0                                      add r3, pc, r3
005598b0  70 30 83 e2                                      add r3, r3, #0x70
005598b4  28 30 8d e5                                      str r3, [sp, #0x28]
005598b8  10 30 9d e5                                      ldr r3, [sp, #0x10]
005598bc  05 c0 8c e2                                      add ip, ip, #5
005598c0  18 e0 8d e5                                      str lr, [sp, #0x18]
005598c4  05 30 83 e2                                      add r3, r3, #5
005598c8  06 b0 a0 e1                                      mov fp, r6
005598cc  54 40 8d e2                                      add r4, sp, #0x54
005598d0  08 10 8d e5                                      str r1, [sp, #8]
005598d4  1c 20 8d e5                                      str r2, [sp, #0x1c]
005598d8  20 30 8d e5                                      str r3, [sp, #0x20]
005598dc  24 c0 8d e5                                      str ip, [sp, #0x24]
005598e0  04 00 a0 e1                                      mov r0, r4
005598e4  64 40 8d e5                                      str r4, [sp, #0x64]
005598e8  68 40 8d e5                                      str r4, [sp, #0x68]
005598ec  0f f2 ff eb                                      bl #0x556130
005598f0  64 30 9d e5                                      ldr r3, [sp, #0x64]
005598f4  00 80 a0 e3                                      mov r8, #0
005598f8  7b a0 af e6                                      sxtb sl, fp
005598fc  00 80 c3 e5                                      strb r8, [r3]
00559900  08 20 9d e5                                      ldr r2, [sp, #8]
00559904  09 10 a0 e1                                      mov r1, sb
00559908  04 00 a0 e1                                      mov r0, r4
0055990c  9d 1c f7 eb                                      bl #0x320b88
00559910  04 00 a0 e1                                      mov r0, r4
00559914  0a 10 a0 e1                                      mov r1, sl
00559918  a2 71 fb eb                                      bl #0x435fa8
0055991c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00559920  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00559924  04 00 a0 e1                                      mov r0, r4
00559928  47 1c f7 eb                                      bl #0x320a4c
0055992c  58 21 97 e5                                      ldr r2, [r7, #0x158]
00559930  08 30 a0 e1                                      mov r3, r8
00559934  00 c0 95 e5                                      ldr ip, [r5]
00559938  06 20 82 e0                                      add r2, r2, r6
0055993c  44 20 92 e5                                      ldr r2, [r2, #0x44]
00559940  05 00 a0 e1                                      mov r0, r5
00559944  68 10 9d e5                                      ldr r1, [sp, #0x68]
00559948  0f e0 a0 e1                                      mov lr, pc
0055994c  94 f0 9c e5                                      ldr pc, [ip, #0x94]
00559950  08 20 9d e5                                      ldr r2, [sp, #8]
00559954  09 10 a0 e1                                      mov r1, sb
00559958  04 00 a0 e1                                      mov r0, r4
0055995c  89 1c f7 eb                                      bl #0x320b88
00559960  04 00 a0 e1                                      mov r0, r4
00559964  0a 10 a0 e1                                      mov r1, sl
00559968  8e 71 fb eb                                      bl #0x435fa8
0055996c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00559970  20 20 9d e5                                      ldr r2, [sp, #0x20]
00559974  04 00 a0 e1                                      mov r0, r4
00559978  33 1c f7 eb                                      bl #0x320a4c
0055997c  58 21 97 e5                                      ldr r2, [r7, #0x158]
00559980  08 30 a0 e1                                      mov r3, r8
00559984  00 c0 95 e5                                      ldr ip, [r5]
00559988  06 20 82 e0                                      add r2, r2, r6
0055998c  48 20 92 e5                                      ldr r2, [r2, #0x48]
00559990  05 00 a0 e1                                      mov r0, r5
00559994  68 10 9d e5                                      ldr r1, [sp, #0x68]
00559998  0f e0 a0 e1                                      mov lr, pc
0055999c  18 f1 9c e5                                      ldr pc, [ip, #0x118]
005599a0  08 20 9d e5                                      ldr r2, [sp, #8]
005599a4  09 10 a0 e1                                      mov r1, sb
005599a8  04 00 a0 e1                                      mov r0, r4
005599ac  75 1c f7 eb                                      bl #0x320b88
005599b0  04 00 a0 e1                                      mov r0, r4
005599b4  0a 10 a0 e1                                      mov r1, sl
005599b8  7a 71 fb eb                                      bl #0x435fa8
005599bc  14 10 9d e5                                      ldr r1, [sp, #0x14]
005599c0  24 20 9d e5                                      ldr r2, [sp, #0x24]
005599c4  04 00 a0 e1                                      mov r0, r4
005599c8  1f 1c f7 eb                                      bl #0x320a4c
005599cc  58 21 97 e5                                      ldr r2, [r7, #0x158]
005599d0  08 30 a0 e1                                      mov r3, r8
005599d4  00 c0 95 e5                                      ldr ip, [r5]
005599d8  06 20 82 e0                                      add r2, r2, r6
005599dc  4c 20 92 e5                                      ldr r2, [r2, #0x4c]
005599e0  05 00 a0 e1                                      mov r0, r5
005599e4  68 10 9d e5                                      ldr r1, [sp, #0x68]
005599e8  0f e0 a0 e1                                      mov lr, pc
005599ec  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005599f0  08 20 9d e5                                      ldr r2, [sp, #8]
005599f4  09 10 a0 e1                                      mov r1, sb
005599f8  04 00 a0 e1                                      mov r0, r4
005599fc  61 1c f7 eb                                      bl #0x320b88
00559a00  04 00 a0 e1                                      mov r0, r4
00559a04  0a 10 a0 e1                                      mov r1, sl
00559a08  66 71 fb eb                                      bl #0x435fa8
00559a0c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00559a10  04 00 a0 e1                                      mov r0, r4
00559a14  02 10 8f e0                                      add r1, pc, r2
00559a18  0c 20 81 e2                                      add r2, r1, #0xc
00559a1c  0a 1c f7 eb                                      bl #0x320a4c
00559a20  58 31 97 e5                                      ldr r3, [r7, #0x158]
00559a24  00 c0 95 e5                                      ldr ip, [r5]
00559a28  05 00 a0 e1                                      mov r0, r5
00559a2c  06 30 83 e0                                      add r3, r3, r6
00559a30  50 20 93 e5                                      ldr r2, [r3, #0x50]
00559a34  68 10 9d e5                                      ldr r1, [sp, #0x68]
00559a38  00 80 8d e5                                      str r8, [sp]
00559a3c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00559a40  0f e0 a0 e1                                      mov lr, pc
00559a44  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
00559a48  68 00 9d e5                                      ldr r0, [sp, #0x68]
00559a4c  04 00 50 e1                                      cmp r0, r4
00559a50  02 00 00 0a                                      beq #0x559a60
00559a54  08 00 50 e1                                      cmp r0, r8
00559a58  00 00 00 0a                                      beq #0x559a60
00559a5c  7b da f6 eb                                      bl #0x310450
00559a60  5c 11 97 e5                                      ldr r1, [r7, #0x15c]
00559a64  58 21 97 e5                                      ldr r2, [r7, #0x158]
00559a68  3d 3f 0c e3                                      movw r3, #0xcf3d
00559a6c  f3 3c 43 e3                                      movt r3, #0x3cf3
00559a70  01 20 62 e0                                      rsb r2, r2, r1
00559a74  42 21 a0 e1                                      asr r2, r2, #2
00559a78  93 02 03 e0                                      mul r3, r3, r2
00559a7c  01 b0 8b e2                                      add fp, fp, #1
00559a80  03 00 5b e1                                      cmp fp, r3
00559a84  54 60 86 e2                                      add r6, r6, #0x54
00559a88  94 ff ff 3a                                      blo #0x5598e0
00559a8c  64 31 97 e5                                      ldr r3, [r7, #0x164]
00559a90  68 21 97 e5                                      ldr r2, [r7, #0x168]
00559a94  f8 13 9f e5                                      ldr r1, [pc, #0x3f8]
00559a98  00 c0 95 e5                                      ldr ip, [r5]
00559a9c  02 20 63 e0                                      rsb r2, r3, r2
00559aa0  42 21 a0 e1                                      asr r2, r2, #2
00559aa4  00 30 a0 e3                                      mov r3, #0
00559aa8  02 e1 82 e0                                      add lr, r2, r2, lsl #2
00559aac  01 10 8f e0                                      add r1, pc, r1
00559ab0  0e e2 8e e0                                      add lr, lr, lr, lsl #4
00559ab4  05 00 a0 e1                                      mov r0, r5
00559ab8  0e e4 8e e0                                      add lr, lr, lr, lsl #8
00559abc  0e e8 8e e0                                      add lr, lr, lr, lsl #16
00559ac0  8e 20 82 e0                                      add r2, r2, lr, lsl #1
00559ac4  0f e0 a0 e1                                      mov lr, pc
00559ac8  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00559acc  68 21 97 e5                                      ldr r2, [r7, #0x168]
00559ad0  64 31 97 e5                                      ldr r3, [r7, #0x164]
00559ad4  02 30 63 e0                                      rsb r3, r3, r2
00559ad8  43 31 a0 e1                                      asr r3, r3, #2
00559adc  03 21 83 e0                                      add r2, r3, r3, lsl #2
00559ae0  02 22 82 e0                                      add r2, r2, r2, lsl #4
00559ae4  02 24 82 e0                                      add r2, r2, r2, lsl #8
00559ae8  02 28 82 e0                                      add r2, r2, r2, lsl #16
00559aec  82 30 83 e0                                      add r3, r3, r2, lsl #1
00559af0  00 00 53 e3                                      cmp r3, #0
00559af4  8f 00 00 0a                                      beq #0x559d38
00559af8  98 33 9f e5                                      ldr r3, [pc, #0x398]
00559afc  00 60 a0 e3                                      mov r6, #0
00559b00  28 60 8d e5                                      str r6, [sp, #0x28]
00559b04  2c 30 8d e5                                      str r3, [sp, #0x2c]
00559b08  8c 33 9f e5                                      ldr r3, [pc, #0x38c]
00559b0c  3c 40 8d e2                                      add r4, sp, #0x3c
00559b10  03 30 8f e0                                      add r3, pc, r3
00559b14  08 30 8d e5                                      str r3, [sp, #8]
00559b18  80 33 9f e5                                      ldr r3, [pc, #0x380]
00559b1c  08 c0 9d e5                                      ldr ip, [sp, #8]
00559b20  03 30 8f e0                                      add r3, pc, r3
00559b24  0c 30 8d e5                                      str r3, [sp, #0xc]
00559b28  74 33 9f e5                                      ldr r3, [pc, #0x374]
00559b2c  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00559b30  03 c0 8c e2                                      add ip, ip, #3
00559b34  03 30 8f e0                                      add r3, pc, r3
00559b38  04 e0 8e e2                                      add lr, lr, #4
00559b3c  05 10 83 e2                                      add r1, r3, #5
00559b40  20 30 8d e5                                      str r3, [sp, #0x20]
00559b44  10 c0 8d e5                                      str ip, [sp, #0x10]
00559b48  14 e0 8d e5                                      str lr, [sp, #0x14]
00559b4c  24 10 8d e5                                      str r1, [sp, #0x24]
00559b50  04 00 a0 e1                                      mov r0, r4
00559b54  4c 40 8d e5                                      str r4, [sp, #0x4c]
00559b58  50 40 8d e5                                      str r4, [sp, #0x50]
00559b5c  73 f1 ff eb                                      bl #0x556130
00559b60  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00559b64  00 80 a0 e3                                      mov r8, #0
00559b68  00 80 c3 e5                                      strb r8, [r3]
00559b6c  64 31 97 e5                                      ldr r3, [r7, #0x164]
00559b70  06 20 83 e0                                      add r2, r3, r6
00559b74  04 10 92 e5                                      ldr r1, [r2, #4]
00559b78  06 20 93 e7                                      ldr r2, [r3, r6]
00559b7c  01 20 62 e0                                      rsb r2, r2, r1
00559b80  c2 21 a0 e1                                      asr r2, r2, #3
00559b84  82 20 82 e0                                      add r2, r2, r2, lsl #1
00559b88  82 21 82 e0                                      add r2, r2, r2, lsl #3
00559b8c  82 14 a0 e1                                      lsl r1, r2, #9
00559b90  01 20 62 e0                                      rsb r2, r2, r1
00559b94  02 29 82 e0                                      add r2, r2, r2, lsl #18
00559b98  08 00 52 e1                                      cmp r2, r8
00559b9c  50 00 00 0a                                      beq #0x559ce4
00559ba0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00559ba4  28 30 9d e5                                      ldr r3, [sp, #0x28]
00559ba8  08 a0 a0 e1                                      mov sl, r8
00559bac  02 20 8f e0                                      add r2, pc, r2
00559bb0  04 c0 82 e2                                      add ip, r2, #4
00559bb4  18 20 8d e5                                      str r2, [sp, #0x18]
00559bb8  73 b0 af e6                                      sxtb fp, r3
00559bbc  1c c0 8d e5                                      str ip, [sp, #0x1c]
00559bc0  10 20 9d e5                                      ldr r2, [sp, #0x10]
00559bc4  08 10 9d e5                                      ldr r1, [sp, #8]
00559bc8  04 00 a0 e1                                      mov r0, r4
00559bcc  ed 1b f7 eb                                      bl #0x320b88
00559bd0  04 00 a0 e1                                      mov r0, r4
00559bd4  0b 10 a0 e1                                      mov r1, fp
00559bd8  f2 70 fb eb                                      bl #0x435fa8
00559bdc  7a 90 af e6                                      sxtb sb, sl
00559be0  14 20 9d e5                                      ldr r2, [sp, #0x14]
00559be4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00559be8  04 00 a0 e1                                      mov r0, r4
00559bec  96 1b f7 eb                                      bl #0x320a4c
00559bf0  04 00 a0 e1                                      mov r0, r4
00559bf4  09 10 a0 e1                                      mov r1, sb
00559bf8  ea 70 fb eb                                      bl #0x435fa8
00559bfc  18 10 9d e5                                      ldr r1, [sp, #0x18]
00559c00  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00559c04  04 00 a0 e1                                      mov r0, r4
00559c08  8f 1b f7 eb                                      bl #0x320a4c
00559c0c  64 21 97 e5                                      ldr r2, [r7, #0x164]
00559c10  00 30 a0 e3                                      mov r3, #0
00559c14  00 c0 95 e5                                      ldr ip, [r5]
00559c18  06 20 92 e7                                      ldr r2, [r2, r6]
00559c1c  05 00 a0 e1                                      mov r0, r5
00559c20  50 10 9d e5                                      ldr r1, [sp, #0x50]
00559c24  08 20 82 e0                                      add r2, r2, r8
00559c28  44 20 92 e5                                      ldr r2, [r2, #0x44]
00559c2c  0f e0 a0 e1                                      mov lr, pc
00559c30  94 f0 9c e5                                      ldr pc, [ip, #0x94]
00559c34  10 20 9d e5                                      ldr r2, [sp, #0x10]
00559c38  08 10 9d e5                                      ldr r1, [sp, #8]
00559c3c  04 00 a0 e1                                      mov r0, r4
00559c40  d0 1b f7 eb                                      bl #0x320b88
00559c44  04 00 a0 e1                                      mov r0, r4
00559c48  0b 10 a0 e1                                      mov r1, fp
00559c4c  d5 70 fb eb                                      bl #0x435fa8
00559c50  14 20 9d e5                                      ldr r2, [sp, #0x14]
00559c54  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00559c58  04 00 a0 e1                                      mov r0, r4
00559c5c  7a 1b f7 eb                                      bl #0x320a4c
00559c60  04 00 a0 e1                                      mov r0, r4
00559c64  09 10 a0 e1                                      mov r1, sb
00559c68  ce 70 fb eb                                      bl #0x435fa8
00559c6c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00559c70  24 20 9d e5                                      ldr r2, [sp, #0x24]
00559c74  04 00 a0 e1                                      mov r0, r4
00559c78  73 1b f7 eb                                      bl #0x320a4c
00559c7c  64 31 97 e5                                      ldr r3, [r7, #0x164]
00559c80  50 10 9d e5                                      ldr r1, [sp, #0x50]
00559c84  00 c0 95 e5                                      ldr ip, [r5]
00559c88  06 20 93 e7                                      ldr r2, [r3, r6]
00559c8c  05 00 a0 e1                                      mov r0, r5
00559c90  00 30 a0 e3                                      mov r3, #0
00559c94  08 20 82 e0                                      add r2, r2, r8
00559c98  90 20 92 e5                                      ldr r2, [r2, #0x90]
00559c9c  0f e0 a0 e1                                      mov lr, pc
00559ca0  18 f1 9c e5                                      ldr pc, [ip, #0x118]
00559ca4  64 31 97 e5                                      ldr r3, [r7, #0x164]
00559ca8  01 a0 8a e2                                      add sl, sl, #1
00559cac  98 80 88 e2                                      add r8, r8, #0x98
00559cb0  06 20 83 e0                                      add r2, r3, r6
00559cb4  04 10 92 e5                                      ldr r1, [r2, #4]
00559cb8  06 20 93 e7                                      ldr r2, [r3, r6]
00559cbc  01 20 62 e0                                      rsb r2, r2, r1
00559cc0  c2 21 a0 e1                                      asr r2, r2, #3
00559cc4  82 20 82 e0                                      add r2, r2, r2, lsl #1
00559cc8  82 21 82 e0                                      add r2, r2, r2, lsl #3
00559ccc  82 14 a0 e1                                      lsl r1, r2, #9
00559cd0  01 20 62 e0                                      rsb r2, r2, r1
00559cd4  02 29 82 e0                                      add r2, r2, r2, lsl #18
00559cd8  00 20 62 e2                                      rsb r2, r2, #0
00559cdc  02 00 5a e1                                      cmp sl, r2
00559ce0  b6 ff ff 3a                                      blo #0x559bc0
00559ce4  50 00 9d e5                                      ldr r0, [sp, #0x50]
00559ce8  04 00 50 e1                                      cmp r0, r4
00559cec  03 00 00 0a                                      beq #0x559d00
00559cf0  00 00 50 e3                                      cmp r0, #0
00559cf4  01 00 00 0a                                      beq #0x559d00
00559cf8  d4 d9 f6 eb                                      bl #0x310450
00559cfc  64 31 97 e5                                      ldr r3, [r7, #0x164]
00559d00  68 21 97 e5                                      ldr r2, [r7, #0x168]
00559d04  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00559d08  0c 60 86 e2                                      add r6, r6, #0xc
00559d0c  02 30 63 e0                                      rsb r3, r3, r2
00559d10  43 31 a0 e1                                      asr r3, r3, #2
00559d14  01 e0 8e e2                                      add lr, lr, #1
00559d18  03 21 83 e0                                      add r2, r3, r3, lsl #2
00559d1c  28 e0 8d e5                                      str lr, [sp, #0x28]
00559d20  02 22 82 e0                                      add r2, r2, r2, lsl #4
00559d24  02 24 82 e0                                      add r2, r2, r2, lsl #8
00559d28  02 28 82 e0                                      add r2, r2, r2, lsl #16
00559d2c  82 20 83 e0                                      add r2, r3, r2, lsl #1
00559d30  02 00 5e e1                                      cmp lr, r2
00559d34  85 ff ff 3a                                      blo #0x559b50
00559d38  68 11 9f e5                                      ldr r1, [pc, #0x168]
00559d3c  05 00 a0 e1                                      mov r0, r5
00559d40  7c 21 d7 e5                                      ldrb r2, [r7, #0x17c]
00559d44  01 10 8f e0                                      add r1, pc, r1
00559d48  00 30 a0 e3                                      mov r3, #0
00559d4c  00 c0 95 e5                                      ldr ip, [r5]
00559d50  0f e0 a0 e1                                      mov lr, pc
00559d54  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00559d58  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
00559d5c  05 00 a0 e1                                      mov r0, r5
00559d60  7d 21 d7 e5                                      ldrb r2, [r7, #0x17d]
00559d64  01 10 8f e0                                      add r1, pc, r1
00559d68  00 30 a0 e3                                      mov r3, #0
00559d6c  00 c0 95 e5                                      ldr ip, [r5]
00559d70  0f e0 a0 e1                                      mov lr, pc
00559d74  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00559d78  30 11 9f e5                                      ldr r1, [pc, #0x130]
00559d7c  05 00 a0 e1                                      mov r0, r5
00559d80  7e 21 d7 e5                                      ldrb r2, [r7, #0x17e]
00559d84  01 10 8f e0                                      add r1, pc, r1
00559d88  00 30 a0 e3                                      mov r3, #0
00559d8c  00 c0 95 e5                                      ldr ip, [r5]
00559d90  0f e0 a0 e1                                      mov lr, pc
00559d94  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00559d98  14 11 9f e5                                      ldr r1, [pc, #0x114]
00559d9c  05 00 a0 e1                                      mov r0, r5
00559da0  88 21 d7 e5                                      ldrb r2, [r7, #0x188]
00559da4  01 10 8f e0                                      add r1, pc, r1
00559da8  00 30 a0 e3                                      mov r3, #0
00559dac  00 c0 95 e5                                      ldr ip, [r5]
00559db0  0f e0 a0 e1                                      mov lr, pc
00559db4  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00559db8  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
00559dbc  05 00 a0 e1                                      mov r0, r5
00559dc0  a4 21 97 e5                                      ldr r2, [r7, #0x1a4]
00559dc4  01 10 8f e0                                      add r1, pc, r1
00559dc8  00 30 a0 e3                                      mov r3, #0
00559dcc  00 c0 95 e5                                      ldr ip, [r5]
00559dd0  0f e0 a0 e1                                      mov lr, pc
00559dd4  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00559dd8  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00559ddc  05 00 a0 e1                                      mov r0, r5
00559de0  a0 21 97 e5                                      ldr r2, [r7, #0x1a0]
00559de4  01 10 8f e0                                      add r1, pc, r1
00559de8  00 30 a0 e3                                      mov r3, #0
00559dec  00 c0 95 e5                                      ldr ip, [r5]
00559df0  0f e0 a0 e1                                      mov lr, pc
00559df4  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00559df8  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00559dfc  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
00559e00  00 40 a0 e3                                      mov r4, #0
00559e04  ac 21 97 e5                                      ldr r2, [r7, #0x1ac]
00559e08  03 30 8f e0                                      add r3, pc, r3
00559e0c  00 40 8d e5                                      str r4, [sp]
00559e10  01 10 8f e0                                      add r1, pc, r1
00559e14  88 30 83 e2                                      add r3, r3, #0x88
00559e18  05 00 a0 e1                                      mov r0, r5
00559e1c  00 c0 95 e5                                      ldr ip, [r5]
00559e20  0f e0 a0 e1                                      mov lr, pc
00559e24  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
00559e28  98 10 9f e5                                      ldr r1, [pc, #0x98]
00559e2c  b0 21 97 e5                                      ldr r2, [r7, #0x1b0]
00559e30  04 30 a0 e1                                      mov r3, r4
00559e34  01 10 8f e0                                      add r1, pc, r1
00559e38  05 00 a0 e1                                      mov r0, r5
00559e3c  00 c0 95 e5                                      ldr ip, [r5]
00559e40  0f e0 a0 e1                                      mov lr, pc
00559e44  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00559e48  30 20 9d e5                                      ldr r2, [sp, #0x30]
00559e4c  34 10 9d e5                                      ldr r1, [sp, #0x34]
00559e50  01 30 92 e7                                      ldr r3, [r2, r1]
00559e54  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00559e58  00 30 93 e5                                      ldr r3, [r3]
00559e5c  03 00 52 e1                                      cmp r2, r3
00559e60  01 00 00 1a                                      bne #0x559e6c
00559e64  74 d0 8d e2                                      add sp, sp, #0x74
00559e68  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00559e6c  27 d1 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00559e70  a4 b2 43 00 ac 40 00 00 58 53 38 00 78 78 38 00  .byte 0xa4, 0xb2, 0x43, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0x53, 0x38, 0x00, 0x78, 0x78, 0x38, 0x00
00559e80  20 53 38 00 9c 51 38 00 dc 92 38 00 10 53 38 00  .byte 0x20, 0x53, 0x38, 0x00, 0x9c, 0x51, 0x38, 0x00, 0xdc, 0x92, 0x38, 0x00, 0x10, 0x53, 0x38, 0x00
00559e90  58 d9 3f 00 14 51 38 00 64 f1 36 00 c0 50 38 00  .byte 0x58, 0xd9, 0x3f, 0x00, 0x14, 0x51, 0x38, 0x00, 0x64, 0xf1, 0x36, 0x00, 0xc0, 0x50, 0x38, 0x00
00559ea0  b8 50 38 00 2c 90 38 00 2c f7 3a 00 7c 47 38 00  .byte 0xb8, 0x50, 0x38, 0x00, 0x2c, 0x90, 0x38, 0x00, 0x2c, 0xf7, 0x3a, 0x00, 0x7c, 0x47, 0x38, 0x00
00559eb0  6c 47 38 00 3c 4e 38 00 34 4e 38 00 2c 4e 38 00  .byte 0x6c, 0x47, 0x38, 0x00, 0x3c, 0x4e, 0x38, 0x00, 0x34, 0x4e, 0x38, 0x00, 0x2c, 0x4e, 0x38, 0x00
00559ec0  fc d3 3f 00 18 4e 38 00 04 4e 38 00              .byte 0xfc, 0xd3, 0x3f, 0x00, 0x18, 0x4e, 0x38, 0x00, 0x04, 0x4e, 0x38, 0x00

; FUNCTION 0x00559ecc, declared_size=2212, range_size=2212, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUITable::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00559ecc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00559ed0  34 38 9f e5                                      ldr r3, [pc, #0x834]
00559ed4  34 c8 9f e5                                      ldr ip, [pc, #0x834]
00559ed8  91 df 4d e2                                      sub sp, sp, #0x244
00559edc  03 30 8f e0                                      add r3, pc, r3
00559ee0  50 30 8d e5                                      str r3, [sp, #0x50]
00559ee4  0c 30 93 e7                                      ldr r3, [r3, ip]
00559ee8  00 70 a0 e1                                      mov r7, r0
00559eec  56 ef 80 e2                                      add lr, r0, #0x158
00559ef0  00 30 93 e5                                      ldr r3, [r3]
00559ef4  01 60 a0 e1                                      mov r6, r1
00559ef8  54 c0 8d e5                                      str ip, [sp, #0x54]
00559efc  28 e0 8d e5                                      str lr, [sp, #0x28]
00559f00  3c 32 8d e5                                      str r3, [sp, #0x23c]
00559f04  4b 7e ff eb                                      bl #0x539838
00559f08  58 11 97 e5                                      ldr r1, [r7, #0x158]
00559f0c  5c 21 97 e5                                      ldr r2, [r7, #0x15c]
00559f10  02 00 51 e1                                      cmp r1, r2
00559f14  02 00 00 0a                                      beq #0x559f24
00559f18  28 00 9d e5                                      ldr r0, [sp, #0x28]
00559f1c  76 3f 8d e2                                      add r3, sp, #0x1d8
00559f20  58 f8 ff eb                                      bl #0x558088
00559f24  e8 17 9f e5                                      ldr r1, [pc, #0x7e8]
00559f28  00 30 96 e5                                      ldr r3, [r6]
00559f2c  06 00 a0 e1                                      mov r0, r6
00559f30  01 10 8f e0                                      add r1, pc, r1
00559f34  0f e0 a0 e1                                      mov lr, pc
00559f38  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00559f3c  00 00 50 e3                                      cmp r0, #0
00559f40  18 00 8d e5                                      str r0, [sp, #0x18]
00559f44  c2 00 00 0a                                      beq #0x55a254
00559f48  c8 37 9f e5                                      ldr r3, [pc, #0x7c8]
00559f4c  c8 27 9f e5                                      ldr r2, [pc, #0x7c8]
00559f50  83 ef 8d e2                                      add lr, sp, #0x20c
00559f54  03 30 8f e0                                      add r3, pc, r3
00559f58  14 30 8d e5                                      str r3, [sp, #0x14]
00559f5c  bc 37 9f e5                                      ldr r3, [pc, #0x7bc]
00559f60  bc 17 9f e5                                      ldr r1, [pc, #0x7bc]
00559f64  f0 c0 8d e2                                      add ip, sp, #0xf0
00559f68  03 30 8f e0                                      add r3, pc, r3
00559f6c  20 30 8d e5                                      str r3, [sp, #0x20]
00559f70  b0 37 9f e5                                      ldr r3, [pc, #0x7b0]
00559f74  30 20 8d e5                                      str r2, [sp, #0x30]
00559f78  10 e0 8d e5                                      str lr, [sp, #0x10]
00559f7c  03 30 8f e0                                      add r3, pc, r3
00559f80  24 30 8d e5                                      str r3, [sp, #0x24]
00559f84  14 30 9d e5                                      ldr r3, [sp, #0x14]
00559f88  20 20 9d e5                                      ldr r2, [sp, #0x20]
00559f8c  24 e0 9d e5                                      ldr lr, [sp, #0x24]
00559f90  06 30 83 e2                                      add r3, r3, #6
00559f94  1c 30 8d e5                                      str r3, [sp, #0x1c]
00559f98  8c 37 9f e5                                      ldr r3, [pc, #0x78c]
00559f9c  40 c0 8d e5                                      str ip, [sp, #0x40]
00559fa0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00559fa4  03 30 8f e0                                      add r3, pc, r3
00559fa8  70 30 83 e2                                      add r3, r3, #0x70
00559fac  3c 30 8d e5                                      str r3, [sp, #0x3c]
00559fb0  14 30 9d e5                                      ldr r3, [sp, #0x14]
00559fb4  40 50 9d e5                                      ldr r5, [sp, #0x40]
00559fb8  2c 10 8d e5                                      str r1, [sp, #0x2c]
00559fbc  04 20 82 e2                                      add r2, r2, #4
00559fc0  63 1f 8d e2                                      add r1, sp, #0x18c
00559fc4  05 e0 8e e2                                      add lr, lr, #5
00559fc8  00 a0 a0 e3                                      mov sl, #0
00559fcc  89 4f 8d e2                                      add r4, sp, #0x224
00559fd0  04 10 8d e5                                      str r1, [sp, #4]
00559fd4  34 20 8d e5                                      str r2, [sp, #0x34]
00559fd8  08 30 8d e5                                      str r3, [sp, #8]
00559fdc  0c c0 8d e5                                      str ip, [sp, #0xc]
00559fe0  38 e0 8d e5                                      str lr, [sp, #0x38]
00559fe4  44 70 8d e5                                      str r7, [sp, #0x44]
00559fe8  04 00 a0 e1                                      mov r0, r4
00559fec  34 42 8d e5                                      str r4, [sp, #0x234]
00559ff0  38 42 8d e5                                      str r4, [sp, #0x238]
00559ff4  4d f0 ff eb                                      bl #0x556130
00559ff8  34 32 9d e5                                      ldr r3, [sp, #0x234]
00559ffc  00 70 a0 e3                                      mov r7, #0
0055a000  05 00 a0 e1                                      mov r0, r5
0055a004  00 70 c3 e5                                      strb r7, [r3]
0055a008  10 10 a0 e3                                      mov r1, #0x10
0055a00c  30 51 8d e5                                      str r5, [sp, #0x130]
0055a010  34 51 8d e5                                      str r5, [sp, #0x134]
0055a014  41 1a f7 eb                                      bl #0x320920
0055a018  30 31 9d e5                                      ldr r3, [sp, #0x130]
0055a01c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0055a020  14 10 9d e5                                      ldr r1, [sp, #0x14]
0055a024  04 00 a0 e1                                      mov r0, r4
0055a028  00 70 83 e5                                      str r7, [r3]
0055a02c  7a 80 af e6                                      sxtb r8, sl
0055a030  3c 71 8d e5                                      str r7, [sp, #0x13c]
0055a034  40 71 8d e5                                      str r7, [sp, #0x140]
0055a038  d2 1a f7 eb                                      bl #0x320b88
0055a03c  04 00 a0 e1                                      mov r0, r4
0055a040  08 10 a0 e1                                      mov r1, r8
0055a044  d7 6f fb eb                                      bl #0x435fa8
0055a048  20 10 9d e5                                      ldr r1, [sp, #0x20]
0055a04c  34 20 9d e5                                      ldr r2, [sp, #0x34]
0055a050  04 00 a0 e1                                      mov r0, r4
0055a054  7c 1a f7 eb                                      bl #0x320a4c
0055a058  00 30 96 e5                                      ldr r3, [r6]
0055a05c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0055a060  06 10 a0 e1                                      mov r1, r6
0055a064  38 22 9d e5                                      ldr r2, [sp, #0x238]
0055a068  0f e0 a0 e1                                      mov lr, pc
0055a06c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0055a070  20 b2 9d e5                                      ldr fp, [sp, #0x220]
0055a074  1c 92 9d e5                                      ldr sb, [sp, #0x21c]
0055a078  04 00 9d e5                                      ldr r0, [sp, #4]
0055a07c  09 90 6b e0                                      rsb sb, fp, sb
0055a080  01 10 89 e2                                      add r1, sb, #1
0055a084  cc 01 8d e5                                      str r0, [sp, #0x1cc]
0055a088  d0 01 8d e5                                      str r0, [sp, #0x1d0]
0055a08c  23 1a f7 eb                                      bl #0x320920
0055a090  07 00 59 e1                                      cmp sb, r7
0055a094  d0 31 9d e5                                      ldr r3, [sp, #0x1d0]
0055a098  05 00 00 da                                      ble #0x55a0b4
0055a09c  d7 20 9b e1                                      ldrsb r2, [fp, r7]
0055a0a0  07 21 83 e7                                      str r2, [r3, r7, lsl #2]
0055a0a4  01 70 87 e2                                      add r7, r7, #1
0055a0a8  09 00 57 e1                                      cmp r7, sb
0055a0ac  fa ff ff 1a                                      bne #0x55a09c
0055a0b0  07 31 83 e0                                      add r3, r3, r7, lsl #2
0055a0b4  00 20 a0 e3                                      mov r2, #0
0055a0b8  cc 31 8d e5                                      str r3, [sp, #0x1cc]
0055a0bc  00 20 83 e5                                      str r2, [r3]
0055a0c0  05 00 a0 e1                                      mov r0, r5
0055a0c4  d0 11 9d e5                                      ldr r1, [sp, #0x1d0]
0055a0c8  cc 21 9d e5                                      ldr r2, [sp, #0x1cc]
0055a0cc  33 24 f7 eb                                      bl #0x3231a0
0055a0d0  d0 01 9d e5                                      ldr r0, [sp, #0x1d0]
0055a0d4  04 30 9d e5                                      ldr r3, [sp, #4]
0055a0d8  03 00 50 e1                                      cmp r0, r3
0055a0dc  02 00 00 0a                                      beq #0x55a0ec
0055a0e0  00 00 50 e3                                      cmp r0, #0
0055a0e4  00 00 00 0a                                      beq #0x55a0ec
0055a0e8  d8 d8 f6 eb                                      bl #0x310450
0055a0ec  20 02 9d e5                                      ldr r0, [sp, #0x220]
0055a0f0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0055a0f4  0c 00 50 e1                                      cmp r0, ip
0055a0f8  02 00 00 0a                                      beq #0x55a108
0055a0fc  00 00 50 e3                                      cmp r0, #0
0055a100  00 00 00 0a                                      beq #0x55a108
0055a104  d1 d8 f6 eb                                      bl #0x310450
0055a108  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0055a10c  08 10 9d e5                                      ldr r1, [sp, #8]
0055a110  04 00 a0 e1                                      mov r0, r4
0055a114  9b 1a f7 eb                                      bl #0x320b88
0055a118  04 00 a0 e1                                      mov r0, r4
0055a11c  08 10 a0 e1                                      mov r1, r8
0055a120  a0 6f fb eb                                      bl #0x435fa8
0055a124  38 20 9d e5                                      ldr r2, [sp, #0x38]
0055a128  24 10 9d e5                                      ldr r1, [sp, #0x24]
0055a12c  04 00 a0 e1                                      mov r0, r4
0055a130  45 1a f7 eb                                      bl #0x320a4c
0055a134  38 12 9d e5                                      ldr r1, [sp, #0x238]
0055a138  00 30 96 e5                                      ldr r3, [r6]
0055a13c  06 00 a0 e1                                      mov r0, r6
0055a140  0f e0 a0 e1                                      mov lr, pc
0055a144  24 f1 93 e5                                      ldr pc, [r3, #0x124]
0055a148  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0055a14c  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
0055a150  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
0055a154  50 ec e7 e7                                      ubfx lr, r0, #0x18, #8
0055a158  38 01 cd e5                                      strb r0, [sp, #0x138]
0055a15c  08 10 9d e5                                      ldr r1, [sp, #8]
0055a160  04 00 a0 e1                                      mov r0, r4
0055a164  39 c1 cd e5                                      strb ip, [sp, #0x139]
0055a168  3a 31 cd e5                                      strb r3, [sp, #0x13a]
0055a16c  3b e1 cd e5                                      strb lr, [sp, #0x13b]
0055a170  84 1a f7 eb                                      bl #0x320b88
0055a174  04 00 a0 e1                                      mov r0, r4
0055a178  08 10 a0 e1                                      mov r1, r8
0055a17c  89 6f fb eb                                      bl #0x435fa8
0055a180  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
0055a184  04 00 a0 e1                                      mov r0, r4
0055a188  0e 10 8f e0                                      add r1, pc, lr
0055a18c  05 20 81 e2                                      add r2, r1, #5
0055a190  2d 1a f7 eb                                      bl #0x320a4c
0055a194  00 30 96 e5                                      ldr r3, [r6]
0055a198  38 12 9d e5                                      ldr r1, [sp, #0x238]
0055a19c  06 00 a0 e1                                      mov r0, r6
0055a1a0  0f e0 a0 e1                                      mov lr, pc
0055a1a4  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0055a1a8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0055a1ac  3c 01 8d e5                                      str r0, [sp, #0x13c]
0055a1b0  08 10 9d e5                                      ldr r1, [sp, #8]
0055a1b4  04 00 a0 e1                                      mov r0, r4
0055a1b8  72 1a f7 eb                                      bl #0x320b88
0055a1bc  04 00 a0 e1                                      mov r0, r4
0055a1c0  08 10 a0 e1                                      mov r1, r8
0055a1c4  77 6f fb eb                                      bl #0x435fa8
0055a1c8  30 20 9d e5                                      ldr r2, [sp, #0x30]
0055a1cc  04 00 a0 e1                                      mov r0, r4
0055a1d0  02 10 8f e0                                      add r1, pc, r2
0055a1d4  0c 20 81 e2                                      add r2, r1, #0xc
0055a1d8  1b 1a f7 eb                                      bl #0x320a4c
0055a1dc  00 30 a0 e3                                      mov r3, #0
0055a1e0  40 31 8d e5                                      str r3, [sp, #0x140]
0055a1e4  00 30 96 e5                                      ldr r3, [r6]
0055a1e8  38 12 9d e5                                      ldr r1, [sp, #0x238]
0055a1ec  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0055a1f0  06 00 a0 e1                                      mov r0, r6
0055a1f4  0f e0 a0 e1                                      mov lr, pc
0055a1f8  00 f1 93 e5                                      ldr pc, [r3, #0x100]
0055a1fc  00 00 50 e3                                      cmp r0, #0
0055a200  40 01 8d c5                                      strgt r0, [sp, #0x140]
0055a204  05 10 a0 e1                                      mov r1, r5
0055a208  28 00 9d e5                                      ldr r0, [sp, #0x28]
0055a20c  07 f6 ff eb                                      bl #0x557a30
0055a210  34 01 9d e5                                      ldr r0, [sp, #0x134]
0055a214  05 00 50 e1                                      cmp r0, r5
0055a218  02 00 00 0a                                      beq #0x55a228
0055a21c  00 00 50 e3                                      cmp r0, #0
0055a220  00 00 00 0a                                      beq #0x55a228
0055a224  89 d8 f6 eb                                      bl #0x310450
0055a228  38 02 9d e5                                      ldr r0, [sp, #0x238]
0055a22c  04 00 50 e1                                      cmp r0, r4
0055a230  02 00 00 0a                                      beq #0x55a240
0055a234  00 00 50 e3                                      cmp r0, #0
0055a238  00 00 00 0a                                      beq #0x55a240
0055a23c  83 d8 f6 eb                                      bl #0x310450
0055a240  18 30 9d e5                                      ldr r3, [sp, #0x18]
0055a244  01 a0 8a e2                                      add sl, sl, #1
0055a248  0a 00 53 e1                                      cmp r3, sl
0055a24c  65 ff ff 1a                                      bne #0x559fe8
0055a250  44 70 9d e5                                      ldr r7, [sp, #0x44]
0055a254  64 11 97 e5                                      ldr r1, [r7, #0x164]
0055a258  68 21 97 e5                                      ldr r2, [r7, #0x168]
0055a25c  59 cf 87 e2                                      add ip, r7, #0x164
0055a260  44 c0 8d e5                                      str ip, [sp, #0x44]
0055a264  02 00 51 e1                                      cmp r1, r2
0055a268  02 00 00 0a                                      beq #0x55a278
0055a26c  0c 00 a0 e1                                      mov r0, ip
0055a270  75 3f 8d e2                                      add r3, sp, #0x1d4
0055a274  18 f9 ff eb                                      bl #0x5586dc
0055a278  b0 14 9f e5                                      ldr r1, [pc, #0x4b0]
0055a27c  00 30 96 e5                                      ldr r3, [r6]
0055a280  06 00 a0 e1                                      mov r0, r6
0055a284  01 10 8f e0                                      add r1, pc, r1
0055a288  0f e0 a0 e1                                      mov lr, pc
0055a28c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0055a290  00 00 50 e3                                      cmp r0, #0
0055a294  48 00 8d e5                                      str r0, [sp, #0x48]
0055a298  c2 00 00 0a                                      beq #0x55a5a8
0055a29c  90 34 9f e5                                      ldr r3, [pc, #0x490]
0055a2a0  90 e4 9f e5                                      ldr lr, [pc, #0x490]
0055a2a4  00 10 a0 e3                                      mov r1, #0
0055a2a8  03 30 8f e0                                      add r3, pc, r3
0055a2ac  24 30 8d e5                                      str r3, [sp, #0x24]
0055a2b0  84 34 9f e5                                      ldr r3, [pc, #0x484]
0055a2b4  4c e0 8d e5                                      str lr, [sp, #0x4c]
0055a2b8  f0 20 8d e2                                      add r2, sp, #0xf0
0055a2bc  03 30 8f e0                                      add r3, pc, r3
0055a2c0  28 30 8d e5                                      str r3, [sp, #0x28]
0055a2c4  74 34 9f e5                                      ldr r3, [pc, #0x474]
0055a2c8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0055a2cc  3c 10 8d e5                                      str r1, [sp, #0x3c]
0055a2d0  03 30 8f e0                                      add r3, pc, r3
0055a2d4  2c 30 8d e5                                      str r3, [sp, #0x2c]
0055a2d8  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
0055a2dc  24 30 9d e5                                      ldr r3, [sp, #0x24]
0055a2e0  04 c0 8c e2                                      add ip, ip, #4
0055a2e4  03 e0 8e e2                                      add lr, lr, #3
0055a2e8  03 30 83 e2                                      add r3, r3, #3
0055a2ec  40 20 8d e5                                      str r2, [sp, #0x40]
0055a2f0  7d 4f 8d e2                                      add r4, sp, #0x1f4
0055a2f4  30 30 8d e5                                      str r3, [sp, #0x30]
0055a2f8  34 c0 8d e5                                      str ip, [sp, #0x34]
0055a2fc  38 e0 8d e5                                      str lr, [sp, #0x38]
0055a300  04 00 a0 e1                                      mov r0, r4
0055a304  04 42 8d e5                                      str r4, [sp, #0x204]
0055a308  08 42 8d e5                                      str r4, [sp, #0x208]
0055a30c  87 ef ff eb                                      bl #0x556130
0055a310  04 32 9d e5                                      ldr r3, [sp, #0x204]
0055a314  00 90 a0 e3                                      mov sb, #0
0055a318  44 00 9d e5                                      ldr r0, [sp, #0x44]
0055a31c  00 90 c3 e5                                      strb sb, [r3]
0055a320  40 10 9d e5                                      ldr r1, [sp, #0x40]
0055a324  f0 90 8d e5                                      str sb, [sp, #0xf0]
0055a328  f4 90 8d e5                                      str sb, [sp, #0xf4]
0055a32c  f8 90 8d e5                                      str sb, [sp, #0xf8]
0055a330  24 f7 ff eb                                      bl #0x557fc8
0055a334  18 10 9d e5                                      ldr r1, [sp, #0x18]
0055a338  09 00 51 e1                                      cmp r1, sb
0055a33c  8b 00 00 0a                                      beq #0x55a570
0055a340  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0055a344  f8 23 9f e5                                      ldr r2, [pc, #0x3f8]
0055a348  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0055a34c  03 30 8f e0                                      add r3, pc, r3
0055a350  14 30 8d e5                                      str r3, [sp, #0x14]
0055a354  1c 20 8d e5                                      str r2, [sp, #0x1c]
0055a358  e8 33 9f e5                                      ldr r3, [pc, #0x3e8]
0055a35c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0055a360  7c c0 af e6                                      sxtb ip, ip
0055a364  03 30 8f e0                                      add r3, pc, r3
0055a368  77 ef 8d e2                                      add lr, sp, #0x1dc
0055a36c  51 1f 8d e2                                      add r1, sp, #0x144
0055a370  04 20 82 e2                                      add r2, r2, #4
0055a374  10 30 8d e5                                      str r3, [sp, #0x10]
0055a378  09 80 a0 e1                                      mov r8, sb
0055a37c  58 50 8d e2                                      add r5, sp, #0x58
0055a380  0c c0 8d e5                                      str ip, [sp, #0xc]
0055a384  02 40 8d e9                                      stmib sp, {r1, lr}
0055a388  20 20 8d e5                                      str r2, [sp, #0x20]
0055a38c  05 00 a0 e1                                      mov r0, r5
0055a390  2e f1 ff eb                                      bl #0x556850
0055a394  30 20 9d e5                                      ldr r2, [sp, #0x30]
0055a398  24 10 9d e5                                      ldr r1, [sp, #0x24]
0055a39c  04 00 a0 e1                                      mov r0, r4
0055a3a0  f8 19 f7 eb                                      bl #0x320b88
0055a3a4  04 00 a0 e1                                      mov r0, r4
0055a3a8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0055a3ac  fd 6e fb eb                                      bl #0x435fa8
0055a3b0  78 b0 af e6                                      sxtb fp, r8
0055a3b4  34 20 9d e5                                      ldr r2, [sp, #0x34]
0055a3b8  28 10 9d e5                                      ldr r1, [sp, #0x28]
0055a3bc  04 00 a0 e1                                      mov r0, r4
0055a3c0  a1 19 f7 eb                                      bl #0x320a4c
0055a3c4  04 00 a0 e1                                      mov r0, r4
0055a3c8  0b 10 a0 e1                                      mov r1, fp
0055a3cc  f5 6e fb eb                                      bl #0x435fa8
0055a3d0  14 10 9d e5                                      ldr r1, [sp, #0x14]
0055a3d4  20 20 9d e5                                      ldr r2, [sp, #0x20]
0055a3d8  04 00 a0 e1                                      mov r0, r4
0055a3dc  9a 19 f7 eb                                      bl #0x320a4c
0055a3e0  00 30 96 e5                                      ldr r3, [r6]
0055a3e4  08 22 9d e5                                      ldr r2, [sp, #0x208]
0055a3e8  06 10 a0 e1                                      mov r1, r6
0055a3ec  08 00 9d e5                                      ldr r0, [sp, #8]
0055a3f0  0f e0 a0 e1                                      mov lr, pc
0055a3f4  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0055a3f8  04 00 9d e5                                      ldr r0, [sp, #4]
0055a3fc  f0 11 9d e5                                      ldr r1, [sp, #0x1f0]
0055a400  b0 2f f7 eb                                      bl #0x3262c8
0055a404  05 00 a0 e1                                      mov r0, r5
0055a408  88 11 9d e5                                      ldr r1, [sp, #0x188]
0055a40c  84 21 9d e5                                      ldr r2, [sp, #0x184]
0055a410  62 23 f7 eb                                      bl #0x3231a0
0055a414  88 01 9d e5                                      ldr r0, [sp, #0x188]
0055a418  04 30 9d e5                                      ldr r3, [sp, #4]
0055a41c  03 00 50 e1                                      cmp r0, r3
0055a420  02 00 00 0a                                      beq #0x55a430
0055a424  00 00 50 e3                                      cmp r0, #0
0055a428  00 00 00 0a                                      beq #0x55a430
0055a42c  07 d8 f6 eb                                      bl #0x310450
0055a430  f0 01 9d e5                                      ldr r0, [sp, #0x1f0]
0055a434  08 c0 9d e5                                      ldr ip, [sp, #8]
0055a438  0c 00 50 e1                                      cmp r0, ip
0055a43c  02 00 00 0a                                      beq #0x55a44c
0055a440  00 00 50 e3                                      cmp r0, #0
0055a444  00 00 00 0a                                      beq #0x55a44c
0055a448  00 d8 f6 eb                                      bl #0x310450
0055a44c  58 31 97 e5                                      ldr r3, [r7, #0x158]
0055a450  48 a0 85 e2                                      add sl, r5, #0x48
0055a454  07 00 a0 e1                                      mov r0, r7
0055a458  09 30 83 e0                                      add r3, r3, sb
0055a45c  4c 30 93 e5                                      ldr r3, [r3, #0x4c]
0055a460  05 10 a0 e1                                      mov r1, r5
0055a464  0a 20 a0 e1                                      mov r2, sl
0055a468  6e fa ff eb                                      bl #0x558e28
0055a46c  38 20 9d e5                                      ldr r2, [sp, #0x38]
0055a470  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0055a474  04 00 a0 e1                                      mov r0, r4
0055a478  c2 19 f7 eb                                      bl #0x320b88
0055a47c  04 00 a0 e1                                      mov r0, r4
0055a480  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0055a484  c7 6e fb eb                                      bl #0x435fa8
0055a488  10 10 9d e5                                      ldr r1, [sp, #0x10]
0055a48c  04 00 a0 e1                                      mov r0, r4
0055a490  04 20 81 e2                                      add r2, r1, #4
0055a494  6c 19 f7 eb                                      bl #0x320a4c
0055a498  0b 10 a0 e1                                      mov r1, fp
0055a49c  04 00 a0 e1                                      mov r0, r4
0055a4a0  c0 6e fb eb                                      bl #0x435fa8
0055a4a4  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
0055a4a8  04 00 a0 e1                                      mov r0, r4
0055a4ac  0e 10 8f e0                                      add r1, pc, lr
0055a4b0  05 20 81 e2                                      add r2, r1, #5
0055a4b4  64 19 f7 eb                                      bl #0x320a4c
0055a4b8  08 12 9d e5                                      ldr r1, [sp, #0x208]
0055a4bc  00 30 96 e5                                      ldr r3, [r6]
0055a4c0  06 00 a0 e1                                      mov r0, r6
0055a4c4  0f e0 a0 e1                                      mov lr, pc
0055a4c8  24 f1 93 e5                                      ldr pc, [r3, #0x124]
0055a4cc  64 21 97 e5                                      ldr r2, [r7, #0x164]
0055a4d0  68 31 97 e5                                      ldr r3, [r7, #0x168]
0055a4d4  50 1c e7 e7                                      ubfx r1, r0, #0x18, #8
0055a4d8  01 b0 a0 e1                                      mov fp, r1
0055a4dc  03 30 62 e0                                      rsb r3, r2, r3
0055a4e0  43 31 a0 e1                                      asr r3, r3, #2
0055a4e4  50 e4 e7 e7                                      ubfx lr, r0, #8, #8
0055a4e8  03 11 83 e0                                      add r1, r3, r3, lsl #2
0055a4ec  50 c8 e7 e7                                      ubfx ip, r0, #0x10, #8
0055a4f0  01 12 81 e0                                      add r1, r1, r1, lsl #4
0055a4f4  e8 00 cd e5                                      strb r0, [sp, #0xe8]
0055a4f8  01 14 81 e0                                      add r1, r1, r1, lsl #8
0055a4fc  e9 e0 cd e5                                      strb lr, [sp, #0xe9]
0055a500  01 08 81 e0                                      add r0, r1, r1, lsl #16
0055a504  05 10 a0 e1                                      mov r1, r5
0055a508  80 30 83 e0                                      add r3, r3, r0, lsl #1
0055a50c  01 30 43 e2                                      sub r3, r3, #1
0055a510  0c 00 a0 e3                                      mov r0, #0xc
0055a514  90 23 20 e0                                      mla r0, r0, r3, r2
0055a518  00 30 a0 e3                                      mov r3, #0
0055a51c  ea c0 cd e5                                      strb ip, [sp, #0xea]
0055a520  eb b0 cd e5                                      strb fp, [sp, #0xeb]
0055a524  ec 30 8d e5                                      str r3, [sp, #0xec]
0055a528  2a fc ff eb                                      bl #0x5595d8
0055a52c  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
0055a530  0a 00 50 e1                                      cmp r0, sl
0055a534  02 00 00 0a                                      beq #0x55a544
0055a538  00 00 50 e3                                      cmp r0, #0
0055a53c  00 00 00 0a                                      beq #0x55a544
0055a540  c2 d7 f6 eb                                      bl #0x310450
0055a544  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
0055a548  05 00 50 e1                                      cmp r0, r5
0055a54c  02 00 00 0a                                      beq #0x55a55c
0055a550  00 00 50 e3                                      cmp r0, #0
0055a554  00 00 00 0a                                      beq #0x55a55c
0055a558  bc d7 f6 eb                                      bl #0x310450
0055a55c  18 20 9d e5                                      ldr r2, [sp, #0x18]
0055a560  01 80 88 e2                                      add r8, r8, #1
0055a564  54 90 89 e2                                      add sb, sb, #0x54
0055a568  08 00 52 e1                                      cmp r2, r8
0055a56c  86 ff ff 1a                                      bne #0x55a38c
0055a570  40 00 9d e5                                      ldr r0, [sp, #0x40]
0055a574  96 f5 ff eb                                      bl #0x557bd4
0055a578  08 02 9d e5                                      ldr r0, [sp, #0x208]
0055a57c  04 00 50 e1                                      cmp r0, r4
0055a580  02 00 00 0a                                      beq #0x55a590
0055a584  00 00 50 e3                                      cmp r0, #0
0055a588  00 00 00 0a                                      beq #0x55a590
0055a58c  af d7 f6 eb                                      bl #0x310450
0055a590  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0055a594  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0055a598  01 30 83 e2                                      add r3, r3, #1
0055a59c  03 00 5c e1                                      cmp ip, r3
0055a5a0  3c 30 8d e5                                      str r3, [sp, #0x3c]
0055a5a4  55 ff ff 1a                                      bne #0x55a300
0055a5a8  70 01 97 e5                                      ldr r0, [r7, #0x170]
0055a5ac  00 40 a0 e3                                      mov r4, #0
0055a5b0  8c 41 87 e5                                      str r4, [r7, #0x18c]
0055a5b4  04 00 50 e1                                      cmp r0, r4
0055a5b8  90 41 87 e5                                      str r4, [r7, #0x190]
0055a5bc  94 41 87 e5                                      str r4, [r7, #0x194]
0055a5c0  01 00 00 0a                                      beq #0x55a5cc
0055a5c4  ee 0b f7 eb                                      bl #0x31d584
0055a5c8  70 41 87 e5                                      str r4, [r7, #0x170]
0055a5cc  78 11 9f e5                                      ldr r1, [pc, #0x178]
0055a5d0  00 30 96 e5                                      ldr r3, [r6]
0055a5d4  06 00 a0 e1                                      mov r0, r6
0055a5d8  01 10 8f e0                                      add r1, pc, r1
0055a5dc  0f e0 a0 e1                                      mov lr, pc
0055a5e0  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0055a5e4  64 11 9f e5                                      ldr r1, [pc, #0x164]
0055a5e8  7c 01 c7 e5                                      strb r0, [r7, #0x17c]
0055a5ec  00 30 96 e5                                      ldr r3, [r6]
0055a5f0  01 10 8f e0                                      add r1, pc, r1
0055a5f4  06 00 a0 e1                                      mov r0, r6
0055a5f8  0f e0 a0 e1                                      mov lr, pc
0055a5fc  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0055a600  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
0055a604  7d 01 c7 e5                                      strb r0, [r7, #0x17d]
0055a608  00 30 96 e5                                      ldr r3, [r6]
0055a60c  01 10 8f e0                                      add r1, pc, r1
0055a610  06 00 a0 e1                                      mov r0, r6
0055a614  0f e0 a0 e1                                      mov lr, pc
0055a618  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0055a61c  34 11 9f e5                                      ldr r1, [pc, #0x134]
0055a620  00 40 e0 e3                                      mvn r4, #0
0055a624  00 50 a0 e3                                      mov r5, #0
0055a628  7e 01 c7 e5                                      strb r0, [r7, #0x17e]
0055a62c  80 41 87 e5                                      str r4, [r7, #0x180]
0055a630  84 51 87 e5                                      str r5, [r7, #0x184]
0055a634  01 10 8f e0                                      add r1, pc, r1
0055a638  00 30 96 e5                                      ldr r3, [r6]
0055a63c  06 00 a0 e1                                      mov r0, r6
0055a640  0f e0 a0 e1                                      mov lr, pc
0055a644  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0055a648  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
0055a64c  88 01 c7 e5                                      strb r0, [r7, #0x188]
0055a650  98 41 87 e5                                      str r4, [r7, #0x198]
0055a654  01 10 8f e0                                      add r1, pc, r1
0055a658  00 30 96 e5                                      ldr r3, [r6]
0055a65c  06 00 a0 e1                                      mov r0, r6
0055a660  0f e0 a0 e1                                      mov lr, pc
0055a664  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0055a668  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0055a66c  a4 01 87 e5                                      str r0, [r7, #0x1a4]
0055a670  00 30 96 e5                                      ldr r3, [r6]
0055a674  01 10 8f e0                                      add r1, pc, r1
0055a678  06 00 a0 e1                                      mov r0, r6
0055a67c  0f e0 a0 e1                                      mov lr, pc
0055a680  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0055a684  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
0055a688  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0055a68c  a0 01 87 e5                                      str r0, [r7, #0x1a0]
0055a690  a8 41 87 e5                                      str r4, [r7, #0x1a8]
0055a694  7f 51 c7 e5                                      strb r5, [r7, #0x17f]
0055a698  02 20 8f e0                                      add r2, pc, r2
0055a69c  88 20 82 e2                                      add r2, r2, #0x88
0055a6a0  01 10 8f e0                                      add r1, pc, r1
0055a6a4  00 30 96 e5                                      ldr r3, [r6]
0055a6a8  06 00 a0 e1                                      mov r0, r6
0055a6ac  0f e0 a0 e1                                      mov lr, pc
0055a6b0  00 f1 93 e5                                      ldr pc, [r3, #0x100]
0055a6b4  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0055a6b8  ac 01 87 e5                                      str r0, [r7, #0x1ac]
0055a6bc  00 30 96 e5                                      ldr r3, [r6]
0055a6c0  01 10 8f e0                                      add r1, pc, r1
0055a6c4  06 00 a0 e1                                      mov r0, r6
0055a6c8  0f e0 a0 e1                                      mov lr, pc
0055a6cc  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0055a6d0  00 30 97 e5                                      ldr r3, [r7]
0055a6d4  b0 01 87 e5                                      str r0, [r7, #0x1b0]
0055a6d8  07 00 a0 e1                                      mov r0, r7
0055a6dc  0f e0 a0 e1                                      mov lr, pc
0055a6e0  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
0055a6e4  50 20 9d e5                                      ldr r2, [sp, #0x50]
0055a6e8  54 10 9d e5                                      ldr r1, [sp, #0x54]
0055a6ec  01 30 92 e7                                      ldr r3, [r2, r1]
0055a6f0  3c 22 9d e5                                      ldr r2, [sp, #0x23c]
0055a6f4  00 30 93 e5                                      ldr r3, [r3]
0055a6f8  03 00 52 e1                                      cmp r2, r3
0055a6fc  01 00 00 1a                                      bne #0x55a708
0055a700  91 df 8d e2                                      add sp, sp, #0x244
0055a704  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055a708  00 cf f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0055a70c  b4 ab 43 00 ac 40 00 00 60 4c 38 00 4c 4c 38 00  .byte 0xb4, 0xab, 0x43, 0x00, 0xac, 0x40, 0x00, 0x00, 0x60, 0x4c, 0x38, 0x00, 0x4c, 0x4c, 0x38, 0x00
0055a71c  e0 49 38 00 80 71 38 00 20 4a 38 00 e4 8b 38 00  .byte 0xe0, 0x49, 0x38, 0x00, 0x80, 0x71, 0x38, 0x00, 0x20, 0x4a, 0x38, 0x00, 0xe4, 0x8b, 0x38, 0x00
0055a72c  60 d2 3f 00 3c 49 38 00 28 49 38 00 c4 e9 36 00  .byte 0x60, 0xd2, 0x3f, 0x00, 0x3c, 0x49, 0x38, 0x00, 0x28, 0x49, 0x38, 0x00, 0xc4, 0xe9, 0x36, 0x00
0055a73c  1c 49 38 00 00 49 38 00 b4 86 38 00 74 48 38 00  .byte 0x1c, 0x49, 0x38, 0x00, 0x00, 0x49, 0x38, 0x00, 0xb4, 0x86, 0x38, 0x00, 0x74, 0x48, 0x38, 0x00
0055a74c  98 ee 3a 00 f0 3e 38 00 e4 3e 38 00 ac 45 38 00  .byte 0x98, 0xee, 0x3a, 0x00, 0xf0, 0x3e, 0x38, 0x00, 0xe4, 0x3e, 0x38, 0x00, 0xac, 0x45, 0x38, 0x00
0055a75c  a4 45 38 00 9c 45 38 00 6c cb 3f 00 88 45 38 00  .byte 0xa4, 0x45, 0x38, 0x00, 0x9c, 0x45, 0x38, 0x00, 0x6c, 0xcb, 0x3f, 0x00, 0x88, 0x45, 0x38, 0x00
0055a76c  78 45 38 00                                      .byte 0x78, 0x45, 0x38, 0x00

; FUNCTION 0x0055a914, declared_size=848, range_size=848, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable9addColumnEPKwi
; demangled: glitch::gui::CGUITable::addColumn(wchar_t const*, int)
; decoder-mode: arm
0055a914  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055a918  65 df 4d e2                                      sub sp, sp, #0x194
0055a91c  4d af 8d e2                                      add sl, sp, #0x134
0055a920  01 70 a0 e1                                      mov r7, r1
0055a924  00 40 a0 e1                                      mov r4, r0
0055a928  10 10 a0 e3                                      mov r1, #0x10
0055a92c  0a 00 a0 e1                                      mov r0, sl
0055a930  02 50 a0 e1                                      mov r5, r2
0055a934  74 a1 8d e5                                      str sl, [sp, #0x174]
0055a938  78 a1 8d e5                                      str sl, [sp, #0x178]
0055a93c  f7 17 f7 eb                                      bl #0x320920
0055a940  74 31 9d e5                                      ldr r3, [sp, #0x174]
0055a944  00 60 a0 e3                                      mov r6, #0
0055a948  07 00 a0 e1                                      mov r0, r7
0055a94c  00 60 83 e5                                      str r6, [r3]
0055a950  80 61 8d e5                                      str r6, [sp, #0x180]
0055a954  84 61 8d e5                                      str r6, [sp, #0x184]
0055a958  ca d0 f6 eb                                      bl #0x30ec88
0055a95c  07 10 a0 e1                                      mov r1, r7
0055a960  00 21 87 e0                                      add r2, r7, r0, lsl #2
0055a964  0a 00 a0 e1                                      mov r0, sl
0055a968  0c 22 f7 eb                                      bl #0x3231a0
0055a96c  70 31 94 e5                                      ldr r3, [r4, #0x170]
0055a970  07 20 a0 e1                                      mov r2, r7
0055a974  62 0f 8d e2                                      add r0, sp, #0x188
0055a978  03 10 a0 e1                                      mov r1, r3
0055a97c  00 30 93 e5                                      ldr r3, [r3]
0055a980  0f e0 a0 e1                                      mov lr, pc
0055a984  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055a988  88 21 9d e5                                      ldr r2, [sp, #0x188]
0055a98c  a4 11 94 e5                                      ldr r1, [r4, #0x1a4]
0055a990  50 31 94 e5                                      ldr r3, [r4, #0x150]
0055a994  0f 20 82 e2                                      add r2, r2, #0xf
0055a998  81 20 82 e0                                      add r2, r2, r1, lsl #1
0055a99c  80 21 8d e5                                      str r2, [sp, #0x180]
0055a9a0  84 61 8d e5                                      str r6, [sp, #0x184]
0055a9a4  03 00 a0 e1                                      mov r0, r3
0055a9a8  00 30 93 e5                                      ldr r3, [r3]
0055a9ac  0f e0 a0 e1                                      mov lr, pc
0055a9b0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055a9b4  00 30 50 e2                                      subs r3, r0, #0
0055a9b8  0a 00 00 0a                                      beq #0x55a9e8
0055a9bc  00 30 93 e5                                      ldr r3, [r3]
0055a9c0  08 10 a0 e3                                      mov r1, #8
0055a9c4  0f e0 a0 e1                                      mov lr, pc
0055a9c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0055a9cc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0055a9d0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0055a9d4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0055a9d8  7d 11 cd e5                                      strb r1, [sp, #0x17d]
0055a9dc  7e 21 cd e5                                      strb r2, [sp, #0x17e]
0055a9e0  7f 31 cd e5                                      strb r3, [sp, #0x17f]
0055a9e4  7c 01 cd e5                                      strb r0, [sp, #0x17c]
0055a9e8  00 00 55 e3                                      cmp r5, #0
0055a9ec  58 00 00 ba                                      blt #0x55ab54
0055a9f0  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0055a9f4  58 11 94 e5                                      ldr r1, [r4, #0x158]
0055a9f8  3d 2f 0c e3                                      movw r2, #0xcf3d
0055a9fc  f3 2c 43 e3                                      movt r2, #0x3cf3
0055aa00  03 00 61 e0                                      rsb r0, r1, r3
0055aa04  40 01 a0 e1                                      asr r0, r0, #2
0055aa08  92 00 00 e0                                      mul r0, r2, r0
0055aa0c  00 00 55 e1                                      cmp r5, r0
0055aa10  4f 00 00 aa                                      bge #0x55ab54
0055aa14  60 01 94 e5                                      ldr r0, [r4, #0x160]
0055aa18  54 c0 a0 e3                                      mov ip, #0x54
0055aa1c  9c 15 21 e0                                      mla r1, ip, r5, r1
0055aa20  00 30 63 e0                                      rsb r3, r3, r0
0055aa24  43 31 a0 e1                                      asr r3, r3, #2
0055aa28  92 03 03 e0                                      mul r3, r2, r3
0055aa2c  56 0f 84 e2                                      add r0, r4, #0x158
0055aa30  00 00 53 e3                                      cmp r3, #0
0055aa34  87 00 00 1a                                      bne #0x55ac58
0055aa38  0a 20 a0 e1                                      mov r2, sl
0055aa3c  aa f3 ff eb                                      bl #0x5578ec
0055aa40  68 21 94 e5                                      ldr r2, [r4, #0x168]
0055aa44  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055aa48  02 30 63 e0                                      rsb r3, r3, r2
0055aa4c  43 31 a0 e1                                      asr r3, r3, #2
0055aa50  03 21 83 e0                                      add r2, r3, r3, lsl #2
0055aa54  02 22 82 e0                                      add r2, r2, r2, lsl #4
0055aa58  02 24 82 e0                                      add r2, r2, r2, lsl #8
0055aa5c  02 28 82 e0                                      add r2, r2, r2, lsl #16
0055aa60  82 30 83 e0                                      add r3, r3, r2, lsl #1
0055aa64  00 00 53 e3                                      cmp r3, #0
0055aa68  6c 00 00 0a                                      beq #0x55ac20
0055aa6c  98 90 a0 e3                                      mov sb, #0x98
0055aa70  99 05 09 e0                                      mul sb, sb, r5
0055aa74  04 60 8d e2                                      add r6, sp, #4
0055aa78  00 50 a0 e3                                      mov r5, #0
0055aa7c  05 70 a0 e1                                      mov r7, r5
0055aa80  48 b0 86 e2                                      add fp, r6, #0x48
0055aa84  1b 00 00 ea                                      b #0x55aaf8
0055aa88  61 fa ff eb                                      bl #0x559414
0055aa8c  90 30 9d e5                                      ldr r3, [sp, #0x90]
0055aa90  01 70 87 e2                                      add r7, r7, #1
0055aa94  0c 50 85 e2                                      add r5, r5, #0xc
0055aa98  0b 00 53 e1                                      cmp r3, fp
0055aa9c  03 00 a0 e1                                      mov r0, r3
0055aaa0  02 00 00 0a                                      beq #0x55aab0
0055aaa4  00 00 53 e3                                      cmp r3, #0
0055aaa8  00 00 00 0a                                      beq #0x55aab0
0055aaac  67 d6 f6 eb                                      bl #0x310450
0055aab0  48 30 9d e5                                      ldr r3, [sp, #0x48]
0055aab4  06 00 53 e1                                      cmp r3, r6
0055aab8  03 00 a0 e1                                      mov r0, r3
0055aabc  02 00 00 0a                                      beq #0x55aacc
0055aac0  00 00 53 e3                                      cmp r3, #0
0055aac4  00 00 00 0a                                      beq #0x55aacc
0055aac8  60 d6 f6 eb                                      bl #0x310450
0055aacc  68 21 94 e5                                      ldr r2, [r4, #0x168]
0055aad0  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055aad4  02 30 63 e0                                      rsb r3, r3, r2
0055aad8  43 31 a0 e1                                      asr r3, r3, #2
0055aadc  03 21 83 e0                                      add r2, r3, r3, lsl #2
0055aae0  02 22 82 e0                                      add r2, r2, r2, lsl #4
0055aae4  02 24 82 e0                                      add r2, r2, r2, lsl #8
0055aae8  02 28 82 e0                                      add r2, r2, r2, lsl #16
0055aaec  82 30 83 e0                                      add r3, r3, r2, lsl #1
0055aaf0  03 00 57 e1                                      cmp r7, r3
0055aaf4  49 00 00 2a                                      bhs #0x55ac20
0055aaf8  06 00 a0 e1                                      mov r0, r6
0055aafc  53 ef ff eb                                      bl #0x556850
0055ab00  64 01 94 e5                                      ldr r0, [r4, #0x164]
0055ab04  06 20 a0 e1                                      mov r2, r6
0055ab08  05 c0 80 e0                                      add ip, r0, r5
0055ab0c  08 10 9c e5                                      ldr r1, [ip, #8]
0055ab10  04 30 9c e5                                      ldr r3, [ip, #4]
0055ab14  05 e0 90 e7                                      ldr lr, [r0, r5]
0055ab18  0c 00 a0 e1                                      mov r0, ip
0055ab1c  01 30 63 e0                                      rsb r3, r3, r1
0055ab20  c3 31 a0 e1                                      asr r3, r3, #3
0055ab24  09 e0 8e e0                                      add lr, lr, sb
0055ab28  83 30 83 e0                                      add r3, r3, r3, lsl #1
0055ab2c  0e 10 a0 e1                                      mov r1, lr
0055ab30  83 31 83 e0                                      add r3, r3, r3, lsl #3
0055ab34  83 84 a0 e1                                      lsl r8, r3, #9
0055ab38  08 30 63 e0                                      rsb r3, r3, r8
0055ab3c  03 39 83 e0                                      add r3, r3, r3, lsl #18
0055ab40  00 30 63 e2                                      rsb r3, r3, #0
0055ab44  00 00 53 e3                                      cmp r3, #0
0055ab48  ce ff ff 0a                                      beq #0x55aa88
0055ab4c  07 ff ff eb                                      bl #0x55a770
0055ab50  cd ff ff ea                                      b #0x55aa8c
0055ab54  56 0f 84 e2                                      add r0, r4, #0x158
0055ab58  0a 10 a0 e1                                      mov r1, sl
0055ab5c  b3 f3 ff eb                                      bl #0x557a30
0055ab60  68 21 94 e5                                      ldr r2, [r4, #0x168]
0055ab64  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055ab68  02 30 63 e0                                      rsb r3, r3, r2
0055ab6c  43 31 a0 e1                                      asr r3, r3, #2
0055ab70  03 21 83 e0                                      add r2, r3, r3, lsl #2
0055ab74  02 22 82 e0                                      add r2, r2, r2, lsl #4
0055ab78  02 24 82 e0                                      add r2, r2, r2, lsl #8
0055ab7c  02 28 82 e0                                      add r2, r2, r2, lsl #16
0055ab80  82 30 83 e0                                      add r3, r3, r2, lsl #1
0055ab84  00 00 53 e3                                      cmp r3, #0
0055ab88  24 00 00 0a                                      beq #0x55ac20
0055ab8c  00 60 a0 e3                                      mov r6, #0
0055ab90  9c 50 8d e2                                      add r5, sp, #0x9c
0055ab94  06 70 a0 e1                                      mov r7, r6
0055ab98  48 80 85 e2                                      add r8, r5, #0x48
0055ab9c  05 00 a0 e1                                      mov r0, r5
0055aba0  2a ef ff eb                                      bl #0x556850
0055aba4  64 01 94 e5                                      ldr r0, [r4, #0x164]
0055aba8  05 10 a0 e1                                      mov r1, r5
0055abac  01 70 87 e2                                      add r7, r7, #1
0055abb0  06 00 80 e0                                      add r0, r0, r6
0055abb4  87 fa ff eb                                      bl #0x5595d8
0055abb8  28 31 9d e5                                      ldr r3, [sp, #0x128]
0055abbc  0c 60 86 e2                                      add r6, r6, #0xc
0055abc0  08 00 53 e1                                      cmp r3, r8
0055abc4  03 00 a0 e1                                      mov r0, r3
0055abc8  02 00 00 0a                                      beq #0x55abd8
0055abcc  00 00 53 e3                                      cmp r3, #0
0055abd0  00 00 00 0a                                      beq #0x55abd8
0055abd4  1d d6 f6 eb                                      bl #0x310450
0055abd8  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
0055abdc  05 00 53 e1                                      cmp r3, r5
0055abe0  03 00 a0 e1                                      mov r0, r3
0055abe4  02 00 00 0a                                      beq #0x55abf4
0055abe8  00 00 53 e3                                      cmp r3, #0
0055abec  00 00 00 0a                                      beq #0x55abf4
0055abf0  16 d6 f6 eb                                      bl #0x310450
0055abf4  68 21 94 e5                                      ldr r2, [r4, #0x168]
0055abf8  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055abfc  02 30 63 e0                                      rsb r3, r3, r2
0055ac00  43 31 a0 e1                                      asr r3, r3, #2
0055ac04  03 21 83 e0                                      add r2, r3, r3, lsl #2
0055ac08  02 22 82 e0                                      add r2, r2, r2, lsl #4
0055ac0c  02 24 82 e0                                      add r2, r2, r2, lsl #8
0055ac10  02 28 82 e0                                      add r2, r2, r2, lsl #16
0055ac14  82 30 83 e0                                      add r3, r3, r2, lsl #1
0055ac18  03 00 57 e1                                      cmp r7, r3
0055ac1c  de ff ff 3a                                      blo #0x55ab9c
0055ac20  a8 31 94 e5                                      ldr r3, [r4, #0x1a8]
0055ac24  04 00 a0 e1                                      mov r0, r4
0055ac28  01 00 73 e3                                      cmn r3, #1
0055ac2c  00 30 a0 03                                      moveq r3, #0
0055ac30  a8 31 84 05                                      streq r3, [r4, #0x1a8]
0055ac34  c3 e9 ff eb                                      bl #0x555348
0055ac38  78 01 9d e5                                      ldr r0, [sp, #0x178]
0055ac3c  0a 00 50 e1                                      cmp r0, sl
0055ac40  02 00 00 0a                                      beq #0x55ac50
0055ac44  00 00 50 e3                                      cmp r0, #0
0055ac48  00 00 00 0a                                      beq #0x55ac50
0055ac4c  ff d5 f6 eb                                      bl #0x310450
0055ac50  65 df 8d e2                                      add sp, sp, #0x194
0055ac54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055ac58  0a 20 a0 e1                                      mov r2, sl
0055ac5c  80 f5 ff eb                                      bl #0x558264
0055ac60  76 ff ff ea                                      b #0x55aa40

; FUNCTION 0x0055adfc, declared_size=368, range_size=368, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZN6glitch3gui9CGUITable6addRowEj
; demangled: glitch::gui::CGUITable::addRow(unsigned int)
; decoder-mode: arm
0055adfc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0055ae00  68 31 90 e5                                      ldr r3, [r0, #0x168]
0055ae04  64 21 90 e5                                      ldr r2, [r0, #0x164]
0055ae08  01 50 a0 e1                                      mov r5, r1
0055ae0c  00 40 a0 e1                                      mov r4, r0
0055ae10  03 10 62 e0                                      rsb r1, r2, r3
0055ae14  41 11 a0 e1                                      asr r1, r1, #2
0055ae18  a8 d0 4d e2                                      sub sp, sp, #0xa8
0055ae1c  01 01 81 e0                                      add r0, r1, r1, lsl #2
0055ae20  00 02 80 e0                                      add r0, r0, r0, lsl #4
0055ae24  00 04 80 e0                                      add r0, r0, r0, lsl #8
0055ae28  00 08 80 e0                                      add r0, r0, r0, lsl #16
0055ae2c  80 10 81 e0                                      add r1, r1, r0, lsl #1
0055ae30  01 00 55 e1                                      cmp r5, r1
0055ae34  41 00 00 8a                                      bhi #0x55af40
0055ae38  00 10 a0 e3                                      mov r1, #0
0055ae3c  a4 10 8d e5                                      str r1, [sp, #0xa4]
0055ae40  9c 10 8d e5                                      str r1, [sp, #0x9c]
0055ae44  a0 10 8d e5                                      str r1, [sp, #0xa0]
0055ae48  3e 00 00 0a                                      beq #0x55af48
0055ae4c  6c 01 94 e5                                      ldr r0, [r4, #0x16c]
0055ae50  0c 10 a0 e3                                      mov r1, #0xc
0055ae54  91 25 21 e0                                      mla r1, r1, r5, r2
0055ae58  00 30 63 e0                                      rsb r3, r3, r0
0055ae5c  43 21 a0 e1                                      asr r2, r3, #2
0055ae60  59 0f 84 e2                                      add r0, r4, #0x164
0055ae64  02 31 82 e0                                      add r3, r2, r2, lsl #2
0055ae68  03 32 83 e0                                      add r3, r3, r3, lsl #4
0055ae6c  03 34 83 e0                                      add r3, r3, r3, lsl #8
0055ae70  03 38 83 e0                                      add r3, r3, r3, lsl #16
0055ae74  83 30 92 e0                                      adds r3, r2, r3, lsl #1
0055ae78  37 00 00 1a                                      bne #0x55af5c
0055ae7c  9c 60 8d e2                                      add r6, sp, #0x9c
0055ae80  06 20 a0 e1                                      mov r2, r6
0055ae84  ee f3 ff eb                                      bl #0x557e44
0055ae88  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
0055ae8c  58 31 94 e5                                      ldr r3, [r4, #0x158]
0055ae90  3d 9f 0c e3                                      movw sb, #0xcf3d
0055ae94  f3 9c 43 e3                                      movt sb, #0x3cf3
0055ae98  02 30 63 e0                                      rsb r3, r3, r2
0055ae9c  43 31 a0 e1                                      asr r3, r3, #2
0055aea0  99 03 03 e0                                      mul r3, sb, r3
0055aea4  00 00 53 e3                                      cmp r3, #0
0055aea8  20 00 00 0a                                      beq #0x55af30
0055aeac  0c 30 a0 e3                                      mov r3, #0xc
0055aeb0  93 05 05 e0                                      mul r5, r3, r5
0055aeb4  04 70 8d e2                                      add r7, sp, #4
0055aeb8  00 80 a0 e3                                      mov r8, #0
0055aebc  48 a0 87 e2                                      add sl, r7, #0x48
0055aec0  07 00 a0 e1                                      mov r0, r7
0055aec4  61 ee ff eb                                      bl #0x556850
0055aec8  64 01 94 e5                                      ldr r0, [r4, #0x164]
0055aecc  07 10 a0 e1                                      mov r1, r7
0055aed0  01 80 88 e2                                      add r8, r8, #1
0055aed4  05 00 80 e0                                      add r0, r0, r5
0055aed8  be f9 ff eb                                      bl #0x5595d8
0055aedc  90 30 9d e5                                      ldr r3, [sp, #0x90]
0055aee0  0a 00 53 e1                                      cmp r3, sl
0055aee4  03 00 a0 e1                                      mov r0, r3
0055aee8  02 00 00 0a                                      beq #0x55aef8
0055aeec  00 00 53 e3                                      cmp r3, #0
0055aef0  00 00 00 0a                                      beq #0x55aef8
0055aef4  55 d5 f6 eb                                      bl #0x310450
0055aef8  48 30 9d e5                                      ldr r3, [sp, #0x48]
0055aefc  07 00 53 e1                                      cmp r3, r7
0055af00  03 00 a0 e1                                      mov r0, r3
0055af04  02 00 00 0a                                      beq #0x55af14
0055af08  00 00 53 e3                                      cmp r3, #0
0055af0c  00 00 00 0a                                      beq #0x55af14
0055af10  4e d5 f6 eb                                      bl #0x310450
0055af14  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
0055af18  58 31 94 e5                                      ldr r3, [r4, #0x158]
0055af1c  02 30 63 e0                                      rsb r3, r3, r2
0055af20  43 31 a0 e1                                      asr r3, r3, #2
0055af24  99 03 03 e0                                      mul r3, sb, r3
0055af28  03 00 58 e1                                      cmp r8, r3
0055af2c  e3 ff ff 3a                                      blo #0x55aec0
0055af30  04 00 a0 e1                                      mov r0, r4
0055af34  1f e9 ff eb                                      bl #0x5553b8
0055af38  06 00 a0 e1                                      mov r0, r6
0055af3c  24 f3 ff eb                                      bl #0x557bd4
0055af40  a8 d0 8d e2                                      add sp, sp, #0xa8
0055af44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0055af48  9c 60 8d e2                                      add r6, sp, #0x9c
0055af4c  59 0f 84 e2                                      add r0, r4, #0x164
0055af50  06 10 a0 e1                                      mov r1, r6
0055af54  1b f4 ff eb                                      bl #0x557fc8
0055af58  ca ff ff ea                                      b #0x55ae88
0055af5c  9c 60 8d e2                                      add r6, sp, #0x9c
0055af60  06 20 a0 e1                                      mov r2, r6
0055af64  3e ff ff eb                                      bl #0x55ac64
0055af68  c6 ff ff ea                                      b #0x55ae88

; FUNCTION 0x0055af6c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZTv0_n20_N6glitch3gui9CGUITable21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUITable::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0055af6c  00 30 90 e5                                      ldr r3, [r0]
0055af70  14 30 13 e5                                      ldr r3, [r3, #-0x14]
0055af74  03 00 80 e0                                      add r0, r0, r3
0055af78  d3 fb ff ea                                      b #0x559ecc

; FUNCTION 0x0055af7c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZTv0_n16_NK6glitch3gui9CGUITable19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUITable::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0055af7c  00 30 90 e5                                      ldr r3, [r0]
0055af80  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0055af84  03 00 80 e0                                      add r0, r0, r3
0055af88  13 fa ff ea                                      b #0x5597dc

; FUNCTION 0x0055af8c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZTv0_n24_N6glitch3gui9CGUITableD0Ev
; demangled: virtual thunk to glitch::gui::CGUITable::~CGUITable()
; decoder-mode: arm
0055af8c  00 30 90 e5                                      ldr r3, [r0]
0055af90  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0055af94  03 00 80 e0                                      add r0, r0, r3
0055af98  71 f3 ff ea                                      b #0x557d64

; FUNCTION 0x0055af9c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZTv0_n12_N6glitch3gui9CGUITableD0Ev
; demangled: virtual thunk to glitch::gui::CGUITable::~CGUITable()
; decoder-mode: arm
0055af9c  00 30 90 e5                                      ldr r3, [r0]
0055afa0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055afa4  03 00 80 e0                                      add r0, r0, r3
0055afa8  6d f3 ff ea                                      b #0x557d64

; FUNCTION 0x0055afac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZTv0_n24_N6glitch3gui9CGUITableD1Ev
; demangled: virtual thunk to glitch::gui::CGUITable::~CGUITable()
; decoder-mode: arm
0055afac  00 30 90 e5                                      ldr r3, [r0]
0055afb0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0055afb4  03 00 80 e0                                      add r0, r0, r3
0055afb8  34 f3 ff ea                                      b #0x557c90

; FUNCTION 0x0055afbc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITable
; alias: _ZTv0_n12_N6glitch3gui9CGUITableD1Ev
; demangled: virtual thunk to glitch::gui::CGUITable::~CGUITable()
; decoder-mode: arm
0055afbc  00 30 90 e5                                      ldr r3, [r0]
0055afc0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055afc4  03 00 80 e0                                      add r0, r0, r3
0055afc8  30 f3 ff ea                                      b #0x557c90
