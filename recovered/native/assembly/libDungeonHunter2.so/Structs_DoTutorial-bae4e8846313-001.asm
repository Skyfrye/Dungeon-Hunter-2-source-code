; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d11a4, declared_size=48, range_size=48, mode=arm
; class-group: Structs::DoTutorial
; alias: _ZN7Structs10DoTutorial8finalizeEv
; demangled: Structs::DoTutorial::finalize()
; decoder-mode: arm
004d11a4  10 40 2d e9                                      push {r4, lr}
004d11a8  00 40 a0 e1                                      mov r4, r0
004d11ac  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d11b0  00 00 50 e3                                      cmp r0, #0
004d11b4  03 00 00 0a                                      beq #0x4d11c8
004d11b8  a0 fc f8 eb                                      bl #0x310440
004d11bc  00 30 a0 e3                                      mov r3, #0
004d11c0  08 30 84 e5                                      str r3, [r4, #8]
004d11c4  0c 30 84 e5                                      str r3, [r4, #0xc]
004d11c8  04 00 a0 e1                                      mov r0, r4
004d11cc  10 40 bd e8                                      pop {r4, lr}
004d11d0  a4 d6 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d11d4, declared_size=72, range_size=72, mode=arm
; class-group: Structs::DoTutorial
; alias: _ZN7Structs10DoTutorialD1Ev
; demangled: Structs::DoTutorial::~DoTutorial()
; decoder-mode: arm
004d11d4  10 40 2d e9                                      push {r4, lr}
004d11d8  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d11dc  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d11e0  00 40 a0 e1                                      mov r4, r0
004d11e4  03 30 8f e0                                      add r3, pc, r3
004d11e8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d11ec  02 20 93 e7                                      ldr r2, [r3, r2]
004d11f0  00 00 50 e3                                      cmp r0, #0
004d11f4  08 20 82 e2                                      add r2, r2, #8
004d11f8  00 20 84 e5                                      str r2, [r4]
004d11fc  00 00 00 0a                                      beq #0x4d1204
004d1200  8e fc f8 eb                                      bl #0x310440
004d1204  04 00 a0 e1                                      mov r0, r4
004d1208  94 d6 ff eb                                      bl #0x4c6c60
004d120c  04 00 a0 e1                                      mov r0, r4
004d1210  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1214  ac 38 4c 00 68 3c 00 00                          .byte 0xac, 0x38, 0x4c, 0x00, 0x68, 0x3c, 0x00, 0x00

; FUNCTION 0x004d121c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DoTutorial
; alias: _ZN7Structs10DoTutorialD0Ev
; demangled: Structs::DoTutorial::~DoTutorial()
; decoder-mode: arm
004d121c  10 40 2d e9                                      push {r4, lr}
004d1220  00 40 a0 e1                                      mov r4, r0
004d1224  ea ff ff eb                                      bl #0x4d11d4
004d1228  04 00 a0 e1                                      mov r0, r4
004d122c  83 fc f8 eb                                      bl #0x310440
004d1230  04 00 a0 e1                                      mov r0, r4
004d1234  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1238, declared_size=72, range_size=72, mode=arm
; class-group: Structs::DoTutorial
; alias: _ZN7Structs10DoTutorialD2Ev
; demangled: Structs::DoTutorial::~DoTutorial()
; decoder-mode: arm
004d1238  10 40 2d e9                                      push {r4, lr}
004d123c  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1240  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1244  00 40 a0 e1                                      mov r4, r0
004d1248  03 30 8f e0                                      add r3, pc, r3
004d124c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1250  02 20 93 e7                                      ldr r2, [r3, r2]
004d1254  00 00 50 e3                                      cmp r0, #0
004d1258  08 20 82 e2                                      add r2, r2, #8
004d125c  00 20 84 e5                                      str r2, [r4]
004d1260  00 00 00 0a                                      beq #0x4d1268
004d1264  75 fc f8 eb                                      bl #0x310440
004d1268  04 00 a0 e1                                      mov r0, r4
004d126c  7b d6 ff eb                                      bl #0x4c6c60
004d1270  04 00 a0 e1                                      mov r0, r4
004d1274  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1278  48 38 4c 00 68 3c 00 00                          .byte 0x48, 0x38, 0x4c, 0x00, 0x68, 0x3c, 0x00, 0x00

; FUNCTION 0x004ffe38, declared_size=284, range_size=284, mode=arm
; class-group: Structs::DoTutorial
; alias: _ZN7Structs10DoTutorial4readEP11IStreamBase
; demangled: Structs::DoTutorial::read(IStreamBase*)
; decoder-mode: arm
004ffe38  70 40 2d e9                                      push {r4, r5, r6, lr}
004ffe3c  00 40 a0 e1                                      mov r4, r0
004ffe40  08 d0 4d e2                                      sub sp, sp, #8
004ffe44  01 50 a0 e1                                      mov r5, r1
004ffe48  76 fe ff eb                                      bl #0x4ff828
004ffe4c  05 00 a0 e1                                      mov r0, r5
004ffe50  08 10 84 e2                                      add r1, r4, #8
004ffe54  d1 7c fb eb                                      bl #0x3df1a0
004ffe58  01 30 a0 e3                                      mov r3, #1
004ffe5c  00 00 53 e3                                      cmp r3, #0
004ffe60  04 30 8d e5                                      str r3, [sp, #4]
004ffe64  0f 00 00 1a                                      bne #0x4ffea8
004ffe68  09 30 84 e2                                      add r3, r4, #9
004ffe6c  0a 20 84 e2                                      add r2, r4, #0xa
004ffe70  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffe74  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ffe78  02 00 53 e1                                      cmp r3, r2
004ffe7c  01 10 20 e0                                      eor r1, r0, r1
004ffe80  01 10 43 e5                                      strb r1, [r3, #-1]
004ffe84  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffe88  00 10 21 e0                                      eor r1, r1, r0
004ffe8c  01 10 c2 e5                                      strb r1, [r2, #1]
004ffe90  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ffe94  01 20 42 e2                                      sub r2, r2, #1
004ffe98  00 10 21 e0                                      eor r1, r1, r0
004ffe9c  01 10 43 e5                                      strb r1, [r3, #-1]
004ffea0  01 30 83 e2                                      add r3, r3, #1
004ffea4  f1 ff ff 3a                                      blo #0x4ffe70
004ffea8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004ffeac  00 00 50 e3                                      cmp r0, #0
004ffeb0  00 00 00 0a                                      beq #0x4ffeb8
004ffeb4  61 41 f8 eb                                      bl #0x310440
004ffeb8  08 00 94 e5                                      ldr r0, [r4, #8]
004ffebc  01 10 a0 e3                                      mov r1, #1
004ffec0  00 60 a0 e3                                      mov r6, #0
004ffec4  01 00 80 e0                                      add r0, r0, r1
004ffec8  a7 41 f8 eb                                      bl #0x31056c
004ffecc  08 20 94 e5                                      ldr r2, [r4, #8]
004ffed0  00 10 a0 e1                                      mov r1, r0
004ffed4  0c 00 84 e5                                      str r0, [r4, #0xc]
004ffed8  06 30 a0 e1                                      mov r3, r6
004ffedc  05 00 a0 e1                                      mov r0, r5
004ffee0  5b 5d f8 eb                                      bl #0x317454
004ffee4  08 30 94 e5                                      ldr r3, [r4, #8]
004ffee8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004ffeec  05 00 a0 e1                                      mov r0, r5
004ffef0  10 10 84 e2                                      add r1, r4, #0x10
004ffef4  03 60 c2 e7                                      strb r6, [r2, r3]
004ffef8  64 64 fd eb                                      bl #0x459090
004ffefc  01 30 a0 e3                                      mov r3, #1
004fff00  06 00 53 e1                                      cmp r3, r6
004fff04  04 30 8d e5                                      str r3, [sp, #4]
004fff08  0f 00 00 1a                                      bne #0x4fff4c
004fff0c  12 30 84 e2                                      add r3, r4, #0x12
004fff10  11 40 84 e2                                      add r4, r4, #0x11
004fff14  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fff18  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fff1c  03 00 54 e1                                      cmp r4, r3
004fff20  02 20 21 e0                                      eor r2, r1, r2
004fff24  01 20 44 e5                                      strb r2, [r4, #-1]
004fff28  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fff2c  01 20 22 e0                                      eor r2, r2, r1
004fff30  01 20 c3 e5                                      strb r2, [r3, #1]
004fff34  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fff38  01 30 43 e2                                      sub r3, r3, #1
004fff3c  01 20 22 e0                                      eor r2, r2, r1
004fff40  01 20 44 e5                                      strb r2, [r4, #-1]
004fff44  01 40 84 e2                                      add r4, r4, #1
004fff48  f1 ff ff 3a                                      blo #0x4fff14
004fff4c  08 d0 8d e2                                      add sp, sp, #8
004fff50  70 80 bd e8                                      pop {r4, r5, r6, pc}
