; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d2fe0, declared_size=48, range_size=48, mode=arm
; class-group: Structs::LockCharacter
; alias: _ZN7Structs13LockCharacter8finalizeEv
; demangled: Structs::LockCharacter::finalize()
; decoder-mode: arm
004d2fe0  10 40 2d e9                                      push {r4, lr}
004d2fe4  00 40 a0 e1                                      mov r4, r0
004d2fe8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2fec  00 00 50 e3                                      cmp r0, #0
004d2ff0  03 00 00 0a                                      beq #0x4d3004
004d2ff4  11 f5 f8 eb                                      bl #0x310440
004d2ff8  00 30 a0 e3                                      mov r3, #0
004d2ffc  08 30 84 e5                                      str r3, [r4, #8]
004d3000  0c 30 84 e5                                      str r3, [r4, #0xc]
004d3004  04 00 a0 e1                                      mov r0, r4
004d3008  10 40 bd e8                                      pop {r4, lr}
004d300c  15 cf ff ea                                      b #0x4c6c68

; FUNCTION 0x004d3010, declared_size=72, range_size=72, mode=arm
; class-group: Structs::LockCharacter
; alias: _ZN7Structs13LockCharacterD1Ev
; demangled: Structs::LockCharacter::~LockCharacter()
; decoder-mode: arm
004d3010  10 40 2d e9                                      push {r4, lr}
004d3014  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d3018  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d301c  00 40 a0 e1                                      mov r4, r0
004d3020  03 30 8f e0                                      add r3, pc, r3
004d3024  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d3028  02 20 93 e7                                      ldr r2, [r3, r2]
004d302c  00 00 50 e3                                      cmp r0, #0
004d3030  08 20 82 e2                                      add r2, r2, #8
004d3034  00 20 84 e5                                      str r2, [r4]
004d3038  00 00 00 0a                                      beq #0x4d3040
004d303c  ff f4 f8 eb                                      bl #0x310440
004d3040  04 00 a0 e1                                      mov r0, r4
004d3044  05 cf ff eb                                      bl #0x4c6c60
004d3048  04 00 a0 e1                                      mov r0, r4
004d304c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3050  70 1a 4c 00 88 23 00 00                          .byte 0x70, 0x1a, 0x4c, 0x00, 0x88, 0x23, 0x00, 0x00

; FUNCTION 0x004d3058, declared_size=28, range_size=28, mode=arm
; class-group: Structs::LockCharacter
; alias: _ZN7Structs13LockCharacterD0Ev
; demangled: Structs::LockCharacter::~LockCharacter()
; decoder-mode: arm
004d3058  10 40 2d e9                                      push {r4, lr}
004d305c  00 40 a0 e1                                      mov r4, r0
004d3060  ea ff ff eb                                      bl #0x4d3010
004d3064  04 00 a0 e1                                      mov r0, r4
004d3068  f4 f4 f8 eb                                      bl #0x310440
004d306c  04 00 a0 e1                                      mov r0, r4
004d3070  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d3074, declared_size=72, range_size=72, mode=arm
; class-group: Structs::LockCharacter
; alias: _ZN7Structs13LockCharacterD2Ev
; demangled: Structs::LockCharacter::~LockCharacter()
; decoder-mode: arm
004d3074  10 40 2d e9                                      push {r4, lr}
004d3078  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d307c  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d3080  00 40 a0 e1                                      mov r4, r0
004d3084  03 30 8f e0                                      add r3, pc, r3
004d3088  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d308c  02 20 93 e7                                      ldr r2, [r3, r2]
004d3090  00 00 50 e3                                      cmp r0, #0
004d3094  08 20 82 e2                                      add r2, r2, #8
004d3098  00 20 84 e5                                      str r2, [r4]
004d309c  00 00 00 0a                                      beq #0x4d30a4
004d30a0  e6 f4 f8 eb                                      bl #0x310440
004d30a4  04 00 a0 e1                                      mov r0, r4
004d30a8  ec ce ff eb                                      bl #0x4c6c60
004d30ac  04 00 a0 e1                                      mov r0, r4
004d30b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d30b4  0c 1a 4c 00 88 23 00 00                          .byte 0x0c, 0x1a, 0x4c, 0x00, 0x88, 0x23, 0x00, 0x00

; FUNCTION 0x00501fcc, declared_size=192, range_size=192, mode=arm
; class-group: Structs::LockCharacter
; alias: _ZN7Structs13LockCharacter4readEP11IStreamBase
; demangled: Structs::LockCharacter::read(IStreamBase*)
; decoder-mode: arm
00501fcc  70 40 2d e9                                      push {r4, r5, r6, lr}
00501fd0  00 40 a0 e1                                      mov r4, r0
00501fd4  08 d0 4d e2                                      sub sp, sp, #8
00501fd8  01 60 a0 e1                                      mov r6, r1
00501fdc  11 f6 ff eb                                      bl #0x4ff828
00501fe0  06 00 a0 e1                                      mov r0, r6
00501fe4  08 10 84 e2                                      add r1, r4, #8
00501fe8  6c 74 fb eb                                      bl #0x3df1a0
00501fec  01 30 a0 e3                                      mov r3, #1
00501ff0  00 00 53 e3                                      cmp r3, #0
00501ff4  04 30 8d e5                                      str r3, [sp, #4]
00501ff8  0f 00 00 1a                                      bne #0x50203c
00501ffc  09 30 84 e2                                      add r3, r4, #9
00502000  0a 20 84 e2                                      add r2, r4, #0xa
00502004  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502008  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050200c  02 00 53 e1                                      cmp r3, r2
00502010  01 10 20 e0                                      eor r1, r0, r1
00502014  01 10 43 e5                                      strb r1, [r3, #-1]
00502018  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050201c  00 10 21 e0                                      eor r1, r1, r0
00502020  01 10 c2 e5                                      strb r1, [r2, #1]
00502024  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502028  01 20 42 e2                                      sub r2, r2, #1
0050202c  00 10 21 e0                                      eor r1, r1, r0
00502030  01 10 43 e5                                      strb r1, [r3, #-1]
00502034  01 30 83 e2                                      add r3, r3, #1
00502038  f1 ff ff 3a                                      blo #0x502004
0050203c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00502040  00 00 50 e3                                      cmp r0, #0
00502044  00 00 00 0a                                      beq #0x50204c
00502048  fc 38 f8 eb                                      bl #0x310440
0050204c  08 00 94 e5                                      ldr r0, [r4, #8]
00502050  01 10 a0 e3                                      mov r1, #1
00502054  00 50 a0 e3                                      mov r5, #0
00502058  01 00 80 e0                                      add r0, r0, r1
0050205c  42 39 f8 eb                                      bl #0x31056c
00502060  08 20 94 e5                                      ldr r2, [r4, #8]
00502064  00 10 a0 e1                                      mov r1, r0
00502068  0c 00 84 e5                                      str r0, [r4, #0xc]
0050206c  05 30 a0 e1                                      mov r3, r5
00502070  06 00 a0 e1                                      mov r0, r6
00502074  f6 54 f8 eb                                      bl #0x317454
00502078  08 30 94 e5                                      ldr r3, [r4, #8]
0050207c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00502080  03 50 c2 e7                                      strb r5, [r2, r3]
00502084  08 d0 8d e2                                      add sp, sp, #8
00502088  70 80 bd e8                                      pop {r4, r5, r6, pc}
