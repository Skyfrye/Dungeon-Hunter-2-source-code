; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c003c, declared_size=4, range_size=4, mode=arm
; class-group: CSInjured
; alias: _ZN9CSInjuredD1Ev
; demangled: CSInjured::~CSInjured()
; decoder-mode: arm
003c003c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0040, declared_size=4, range_size=4, mode=arm
; class-group: CSInjured
; alias: _ZN9CSInjured8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSInjured::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0040  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0044, declared_size=4, range_size=4, mode=arm
; class-group: CSInjured
; alias: _ZN9CSInjured7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSInjured::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c0044  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0858, declared_size=52, range_size=52, mode=arm
; class-group: CSInjured
; alias: _ZN9CSInjuredD0Ev
; demangled: CSInjured::~CSInjured()
; decoder-mode: arm
003c0858  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c085c  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c0860  10 40 2d e9                                      push {r4, lr}
003c0864  03 30 8f e0                                      add r3, pc, r3
003c0868  02 20 93 e7                                      ldr r2, [r3, r2]
003c086c  00 40 a0 e1                                      mov r4, r0
003c0870  08 20 82 e2                                      add r2, r2, #8
003c0874  00 20 80 e5                                      str r2, [r0]
003c0878  f0 3e fd eb                                      bl #0x310440
003c087c  04 00 a0 e1                                      mov r0, r4
003c0880  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0884  2c 42 5d 00 08 2a 00 00                          .byte 0x2c, 0x42, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c33e8, declared_size=228, range_size=228, mode=arm
; class-group: CSInjured
; alias: _ZN9CSInjured7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSInjured::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c33e8  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003c33ec  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
003c33f0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c33f4  03 30 8f e0                                      add r3, pc, r3
003c33f8  01 70 93 e7                                      ldr r7, [r3, r1]
003c33fc  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
003c3400  02 50 a0 e1                                      mov r5, r2
003c3404  00 20 97 e5                                      ldr r2, [r7]
003c3408  01 40 93 e7                                      ldr r4, [r3, r1]
003c340c  44 d0 4d e2                                      sub sp, sp, #0x44
003c3410  3c 20 8d e5                                      str r2, [sp, #0x3c]
003c3414  04 00 a0 e1                                      mov r0, r4
003c3418  1a d1 fd eb                                      bl #0x337888
003c341c  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
003c3420  24 60 8d e2                                      add r6, sp, #0x24
003c3424  08 20 8d e2                                      add r2, sp, #8
003c3428  06 00 a0 e1                                      mov r0, r6
003c342c  01 10 8f e0                                      add r1, pc, r1
003c3430  2d 43 fd eb                                      bl #0x3140ec
003c3434  06 10 a0 e1                                      mov r1, r6
003c3438  04 00 a0 e1                                      mov r0, r4
003c343c  91 d1 fd eb                                      bl #0x337a88
003c3440  06 00 a0 e1                                      mov r0, r6
003c3444  82 53 fd eb                                      bl #0x318254
003c3448  04 00 a0 e1                                      mov r0, r4
003c344c  0d d1 fd eb                                      bl #0x337888
003c3450  70 10 9f e5                                      ldr r1, [pc, #0x70]
003c3454  0c 60 8d e2                                      add r6, sp, #0xc
003c3458  04 20 8d e2                                      add r2, sp, #4
003c345c  01 10 8f e0                                      add r1, pc, r1
003c3460  06 00 a0 e1                                      mov r0, r6
003c3464  20 43 fd eb                                      bl #0x3140ec
003c3468  06 10 a0 e1                                      mov r1, r6
003c346c  04 00 a0 e1                                      mov r0, r4
003c3470  84 d1 fd eb                                      bl #0x337a88
003c3474  06 00 a0 e1                                      mov r0, r6
003c3478  75 53 fd eb                                      bl #0x318254
003c347c  41 3b 02 e3                                      movw r3, #0x2b41
003c3480  4f 0e 85 e2                                      add r0, r5, #0x4f0
003c3484  20 35 85 e5                                      str r3, [r5, #0x520]
003c3488  0c 00 80 e2                                      add r0, r0, #0xc
003c348c  00 10 e0 e3                                      mvn r1, #0
003c3490  ae f5 ff eb                                      bl #0x3c0b50
003c3494  05 00 a0 e1                                      mov r0, r5
003c3498  86 e4 ff eb                                      bl #0x3bc6b8
003c349c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003c34a0  00 30 97 e5                                      ldr r3, [r7]
003c34a4  03 00 52 e1                                      cmp r2, r3
003c34a8  01 00 00 1a                                      bne #0x3c34b4
003c34ac  44 d0 8d e2                                      add sp, sp, #0x44
003c34b0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c34b4  95 2b fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c34b8  9c 16 5d 00 ac 40 00 00 84 08 00 00 24 1a 50 00  .byte 0x9c, 0x16, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x24, 0x1a, 0x50, 0x00
003c34c8  24 1a 50 00                                      .byte 0x24, 0x1a, 0x50, 0x00

; FUNCTION 0x003c4ba4, declared_size=152, range_size=152, mode=arm
; class-group: CSInjured
; alias: _ZN9CSInjured6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSInjured::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c4ba4  80 30 9f e5                                      ldr r3, [pc, #0x80]
003c4ba8  80 10 9f e5                                      ldr r1, [pc, #0x80]
003c4bac  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c4bb0  03 30 8f e0                                      add r3, pc, r3
003c4bb4  01 50 93 e7                                      ldr r5, [r3, r1]
003c4bb8  74 10 9f e5                                      ldr r1, [pc, #0x74]
003c4bbc  02 60 a0 e1                                      mov r6, r2
003c4bc0  00 20 95 e5                                      ldr r2, [r5]
003c4bc4  01 70 93 e7                                      ldr r7, [r3, r1]
003c4bc8  24 d0 4d e2                                      sub sp, sp, #0x24
003c4bcc  1c 20 8d e5                                      str r2, [sp, #0x1c]
003c4bd0  07 00 a0 e1                                      mov r0, r7
003c4bd4  2b cb fd eb                                      bl #0x337888
003c4bd8  58 10 9f e5                                      ldr r1, [pc, #0x58]
003c4bdc  04 40 8d e2                                      add r4, sp, #4
003c4be0  0d 20 a0 e1                                      mov r2, sp
003c4be4  01 10 8f e0                                      add r1, pc, r1
003c4be8  04 00 a0 e1                                      mov r0, r4
003c4bec  3e 3d fd eb                                      bl #0x3140ec
003c4bf0  04 10 a0 e1                                      mov r1, r4
003c4bf4  07 00 a0 e1                                      mov r0, r7
003c4bf8  a2 cb fd eb                                      bl #0x337a88
003c4bfc  04 00 a0 e1                                      mov r0, r4
003c4c00  93 4d fd eb                                      bl #0x318254
003c4c04  08 14 96 e5                                      ldr r1, [r6, #0x408]
003c4c08  78 03 96 e5                                      ldr r0, [r6, #0x378]
003c4c0c  aa 01 01 eb                                      bl #0x4052bc
003c4c10  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c4c14  00 30 95 e5                                      ldr r3, [r5]
003c4c18  03 00 52 e1                                      cmp r2, r3
003c4c1c  01 00 00 1a                                      bne #0x3c4c28
003c4c20  24 d0 8d e2                                      add sp, sp, #0x24
003c4c24  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c4c28  b8 25 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c4c2c  e0 fe 5c 00 ac 40 00 00 84 08 00 00 6c 02 50 00  .byte 0xe0, 0xfe, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x6c, 0x02, 0x50, 0x00

; FUNCTION 0x003c8850, declared_size=208, range_size=208, mode=arm
; class-group: CSInjured
; alias: _ZN9CSInjured6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSInjured::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8850  70 40 2d e9                                      push {r4, r5, r6, lr}
003c8854  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c8858  0c 50 85 e2                                      add r5, r5, #0xc
003c885c  30 d0 4d e2                                      sub sp, sp, #0x30
003c8860  00 40 a0 e3                                      mov r4, #0
003c8864  01 60 a0 e1                                      mov r6, r1
003c8868  05 00 a0 e1                                      mov r0, r5
003c886c  22 20 a0 e3                                      mov r2, #0x22
003c8870  03 30 a0 e3                                      mov r3, #3
003c8874  28 40 8d e5                                      str r4, [sp, #0x28]
003c8878  2c 40 8d e5                                      str r4, [sp, #0x2c]
003c887c  00 40 8d e5                                      str r4, [sp]
003c8880  04 40 8d e5                                      str r4, [sp, #4]
003c8884  a3 fc ff eb                                      bl #0x3c7b18
003c8888  05 00 a0 e1                                      mov r0, r5
003c888c  06 10 a0 e1                                      mov r1, r6
003c8890  58 23 0c e3                                      movw r2, #0xc358
003c8894  0c 30 a0 e3                                      mov r3, #0xc
003c8898  20 40 8d e5                                      str r4, [sp, #0x20]
003c889c  24 40 8d e5                                      str r4, [sp, #0x24]
003c88a0  00 40 8d e5                                      str r4, [sp]
003c88a4  04 40 8d e5                                      str r4, [sp, #4]
003c88a8  9a fc ff eb                                      bl #0x3c7b18
003c88ac  05 00 a0 e1                                      mov r0, r5
003c88b0  06 10 a0 e1                                      mov r1, r6
003c88b4  5a 23 0c e3                                      movw r2, #0xc35a
003c88b8  0b 30 a0 e3                                      mov r3, #0xb
003c88bc  18 40 8d e5                                      str r4, [sp, #0x18]
003c88c0  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c88c4  00 40 8d e5                                      str r4, [sp]
003c88c8  04 40 8d e5                                      str r4, [sp, #4]
003c88cc  91 fc ff eb                                      bl #0x3c7b18
003c88d0  05 00 a0 e1                                      mov r0, r5
003c88d4  06 10 a0 e1                                      mov r1, r6
003c88d8  5b 23 0c e3                                      movw r2, #0xc35b
003c88dc  0a 30 a0 e3                                      mov r3, #0xa
003c88e0  10 40 8d e5                                      str r4, [sp, #0x10]
003c88e4  14 40 8d e5                                      str r4, [sp, #0x14]
003c88e8  00 40 8d e5                                      str r4, [sp]
003c88ec  04 40 8d e5                                      str r4, [sp, #4]
003c88f0  88 fc ff eb                                      bl #0x3c7b18
003c88f4  05 00 a0 e1                                      mov r0, r5
003c88f8  06 10 a0 e1                                      mov r1, r6
003c88fc  55 23 0c e3                                      movw r2, #0xc355
003c8900  06 30 a0 e3                                      mov r3, #6
003c8904  04 40 8d e5                                      str r4, [sp, #4]
003c8908  08 40 8d e5                                      str r4, [sp, #8]
003c890c  0c 40 8d e5                                      str r4, [sp, #0xc]
003c8910  00 40 8d e5                                      str r4, [sp]
003c8914  7f fc ff eb                                      bl #0x3c7b18
003c8918  30 d0 8d e2                                      add sp, sp, #0x30
003c891c  70 80 bd e8                                      pop {r4, r5, r6, pc}
