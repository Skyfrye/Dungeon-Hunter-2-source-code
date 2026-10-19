; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00556090, declared_size=80, range_size=80, mode=arm
; class-group: glitch::gui::CGUITable::Cell
; alias: _ZN6glitch3gui9CGUITable4CellC1ERKS2_
; demangled: glitch::gui::CGUITable::Cell::Cell(glitch::gui::CGUITable::Cell const&)
; decoder-mode: arm
00556090  70 40 2d e9                                      push {r4, r5, r6, lr}
00556094  00 40 a0 e1                                      mov r4, r0
00556098  01 50 a0 e1                                      mov r5, r1
0055609c  40 00 84 e5                                      str r0, [r4, #0x40]
005560a0  44 00 84 e5                                      str r0, [r4, #0x44]
005560a4  40 20 95 e5                                      ldr r2, [r5, #0x40]
005560a8  44 10 91 e5                                      ldr r1, [r1, #0x44]
005560ac  5e 3f f7 eb                                      bl #0x325e2c
005560b0  48 00 84 e2                                      add r0, r4, #0x48
005560b4  88 00 84 e5                                      str r0, [r4, #0x88]
005560b8  8c 00 84 e5                                      str r0, [r4, #0x8c]
005560bc  8c 10 95 e5                                      ldr r1, [r5, #0x8c]
005560c0  88 20 95 e5                                      ldr r2, [r5, #0x88]
005560c4  58 3f f7 eb                                      bl #0x325e2c
005560c8  90 30 95 e5                                      ldr r3, [r5, #0x90]
005560cc  04 00 a0 e1                                      mov r0, r4
005560d0  90 30 84 e5                                      str r3, [r4, #0x90]
005560d4  94 30 95 e5                                      ldr r3, [r5, #0x94]
005560d8  94 30 84 e5                                      str r3, [r4, #0x94]
005560dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00556850, declared_size=80, range_size=80, mode=arm
; class-group: glitch::gui::CGUITable::Cell
; alias: _ZN6glitch3gui9CGUITable4CellC1Ev
; demangled: glitch::gui::CGUITable::Cell::Cell()
; decoder-mode: arm
00556850  70 40 2d e9                                      push {r4, r5, r6, lr}
00556854  00 40 a0 e1                                      mov r4, r0
00556858  40 00 84 e5                                      str r0, [r4, #0x40]
0055685c  44 00 84 e5                                      str r0, [r4, #0x44]
00556860  10 10 a0 e3                                      mov r1, #0x10
00556864  2d 28 f7 eb                                      bl #0x320920
00556868  40 20 94 e5                                      ldr r2, [r4, #0x40]
0055686c  48 30 84 e2                                      add r3, r4, #0x48
00556870  00 50 a0 e3                                      mov r5, #0
00556874  00 50 82 e5                                      str r5, [r2]
00556878  03 00 a0 e1                                      mov r0, r3
0055687c  88 30 84 e5                                      str r3, [r4, #0x88]
00556880  8c 30 84 e5                                      str r3, [r4, #0x8c]
00556884  10 10 a0 e3                                      mov r1, #0x10
00556888  24 28 f7 eb                                      bl #0x320920
0055688c  88 30 94 e5                                      ldr r3, [r4, #0x88]
00556890  04 00 a0 e1                                      mov r0, r4
00556894  00 50 83 e5                                      str r5, [r3]
00556898  94 50 84 e5                                      str r5, [r4, #0x94]
0055689c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00557b90, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::CGUITable::Cell
; alias: _ZN6glitch3gui9CGUITable4CellD1Ev
; demangled: glitch::gui::CGUITable::Cell::~Cell()
; decoder-mode: arm
00557b90  10 40 2d e9                                      push {r4, lr}
00557b94  48 30 80 e2                                      add r3, r0, #0x48
00557b98  00 40 a0 e1                                      mov r4, r0
00557b9c  44 00 93 e5                                      ldr r0, [r3, #0x44]
00557ba0  03 00 50 e1                                      cmp r0, r3
00557ba4  02 00 00 0a                                      beq #0x557bb4
00557ba8  00 00 50 e3                                      cmp r0, #0
00557bac  00 00 00 0a                                      beq #0x557bb4
00557bb0  26 e2 f6 eb                                      bl #0x310450
00557bb4  44 00 94 e5                                      ldr r0, [r4, #0x44]
00557bb8  04 00 50 e1                                      cmp r0, r4
00557bbc  02 00 00 0a                                      beq #0x557bcc
00557bc0  00 00 50 e3                                      cmp r0, #0
00557bc4  00 00 00 0a                                      beq #0x557bcc
00557bc8  20 e2 f6 eb                                      bl #0x310450
00557bcc  04 00 a0 e1                                      mov r0, r4
00557bd0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005583e0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::CGUITable::Cell
; alias: _ZN6glitch3gui9CGUITable4CellaSERKS2_
; demangled: glitch::gui::CGUITable::Cell::operator=(glitch::gui::CGUITable::Cell const&)
; decoder-mode: arm
005583e0  01 00 50 e1                                      cmp r0, r1
005583e4  70 40 2d e9                                      push {r4, r5, r6, lr}
005583e8  01 40 a0 e1                                      mov r4, r1
005583ec  00 50 a0 e1                                      mov r5, r0
005583f0  02 00 00 0a                                      beq #0x558400
005583f4  44 10 91 e5                                      ldr r1, [r1, #0x44]
005583f8  40 20 94 e5                                      ldr r2, [r4, #0x40]
005583fc  67 2b f7 eb                                      bl #0x3231a0
00558400  48 00 85 e2                                      add r0, r5, #0x48
00558404  48 30 84 e2                                      add r3, r4, #0x48
00558408  03 00 50 e1                                      cmp r0, r3
0055840c  02 00 00 0a                                      beq #0x55841c
00558410  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
00558414  88 20 94 e5                                      ldr r2, [r4, #0x88]
00558418  60 2b f7 eb                                      bl #0x3231a0
0055841c  90 30 94 e5                                      ldr r3, [r4, #0x90]
00558420  05 00 a0 e1                                      mov r0, r5
00558424  90 30 85 e5                                      str r3, [r5, #0x90]
00558428  94 30 94 e5                                      ldr r3, [r4, #0x94]
0055842c  94 30 85 e5                                      str r3, [r5, #0x94]
00558430  70 80 bd e8                                      pop {r4, r5, r6, pc}
