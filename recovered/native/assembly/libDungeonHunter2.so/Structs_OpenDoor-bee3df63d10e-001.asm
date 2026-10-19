; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d199c, declared_size=48, range_size=48, mode=arm
; class-group: Structs::OpenDoor
; alias: _ZN7Structs8OpenDoor8finalizeEv
; demangled: Structs::OpenDoor::finalize()
; decoder-mode: arm
004d199c  10 40 2d e9                                      push {r4, lr}
004d19a0  00 40 a0 e1                                      mov r4, r0
004d19a4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d19a8  00 00 50 e3                                      cmp r0, #0
004d19ac  03 00 00 0a                                      beq #0x4d19c0
004d19b0  a2 fa f8 eb                                      bl #0x310440
004d19b4  00 30 a0 e3                                      mov r3, #0
004d19b8  08 30 84 e5                                      str r3, [r4, #8]
004d19bc  0c 30 84 e5                                      str r3, [r4, #0xc]
004d19c0  04 00 a0 e1                                      mov r0, r4
004d19c4  10 40 bd e8                                      pop {r4, lr}
004d19c8  a6 d4 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d19cc, declared_size=72, range_size=72, mode=arm
; class-group: Structs::OpenDoor
; alias: _ZN7Structs8OpenDoorD1Ev
; demangled: Structs::OpenDoor::~OpenDoor()
; decoder-mode: arm
004d19cc  10 40 2d e9                                      push {r4, lr}
004d19d0  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d19d4  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d19d8  00 40 a0 e1                                      mov r4, r0
004d19dc  03 30 8f e0                                      add r3, pc, r3
004d19e0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d19e4  02 20 93 e7                                      ldr r2, [r3, r2]
004d19e8  00 00 50 e3                                      cmp r0, #0
004d19ec  08 20 82 e2                                      add r2, r2, #8
004d19f0  00 20 84 e5                                      str r2, [r4]
004d19f4  00 00 00 0a                                      beq #0x4d19fc
004d19f8  90 fa f8 eb                                      bl #0x310440
004d19fc  04 00 a0 e1                                      mov r0, r4
004d1a00  96 d4 ff eb                                      bl #0x4c6c60
004d1a04  04 00 a0 e1                                      mov r0, r4
004d1a08  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1a0c  b4 30 4c 00 ec 40 00 00                          .byte 0xb4, 0x30, 0x4c, 0x00, 0xec, 0x40, 0x00, 0x00

; FUNCTION 0x004d1a14, declared_size=28, range_size=28, mode=arm
; class-group: Structs::OpenDoor
; alias: _ZN7Structs8OpenDoorD0Ev
; demangled: Structs::OpenDoor::~OpenDoor()
; decoder-mode: arm
004d1a14  10 40 2d e9                                      push {r4, lr}
004d1a18  00 40 a0 e1                                      mov r4, r0
004d1a1c  ea ff ff eb                                      bl #0x4d19cc
004d1a20  04 00 a0 e1                                      mov r0, r4
004d1a24  85 fa f8 eb                                      bl #0x310440
004d1a28  04 00 a0 e1                                      mov r0, r4
004d1a2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1a30, declared_size=72, range_size=72, mode=arm
; class-group: Structs::OpenDoor
; alias: _ZN7Structs8OpenDoorD2Ev
; demangled: Structs::OpenDoor::~OpenDoor()
; decoder-mode: arm
004d1a30  10 40 2d e9                                      push {r4, lr}
004d1a34  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1a38  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1a3c  00 40 a0 e1                                      mov r4, r0
004d1a40  03 30 8f e0                                      add r3, pc, r3
004d1a44  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1a48  02 20 93 e7                                      ldr r2, [r3, r2]
004d1a4c  00 00 50 e3                                      cmp r0, #0
004d1a50  08 20 82 e2                                      add r2, r2, #8
004d1a54  00 20 84 e5                                      str r2, [r4]
004d1a58  00 00 00 0a                                      beq #0x4d1a60
004d1a5c  77 fa f8 eb                                      bl #0x310440
004d1a60  04 00 a0 e1                                      mov r0, r4
004d1a64  7d d4 ff eb                                      bl #0x4c6c60
004d1a68  04 00 a0 e1                                      mov r0, r4
004d1a6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1a70  50 30 4c 00 ec 40 00 00                          .byte 0x50, 0x30, 0x4c, 0x00, 0xec, 0x40, 0x00, 0x00

; FUNCTION 0x005006bc, declared_size=204, range_size=204, mode=arm
; class-group: Structs::OpenDoor
; alias: _ZN7Structs8OpenDoor4readEP11IStreamBase
; demangled: Structs::OpenDoor::read(IStreamBase*)
; decoder-mode: arm
005006bc  70 40 2d e9                                      push {r4, r5, r6, lr}
005006c0  00 40 a0 e1                                      mov r4, r0
005006c4  08 d0 4d e2                                      sub sp, sp, #8
005006c8  01 50 a0 e1                                      mov r5, r1
005006cc  55 fc ff eb                                      bl #0x4ff828
005006d0  05 00 a0 e1                                      mov r0, r5
005006d4  08 10 84 e2                                      add r1, r4, #8
005006d8  b0 7a fb eb                                      bl #0x3df1a0
005006dc  01 30 a0 e3                                      mov r3, #1
005006e0  00 00 53 e3                                      cmp r3, #0
005006e4  04 30 8d e5                                      str r3, [sp, #4]
005006e8  0f 00 00 1a                                      bne #0x50072c
005006ec  09 30 84 e2                                      add r3, r4, #9
005006f0  0a 20 84 e2                                      add r2, r4, #0xa
005006f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005006f8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005006fc  02 00 53 e1                                      cmp r3, r2
00500700  01 10 20 e0                                      eor r1, r0, r1
00500704  01 10 43 e5                                      strb r1, [r3, #-1]
00500708  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050070c  00 10 21 e0                                      eor r1, r1, r0
00500710  01 10 c2 e5                                      strb r1, [r2, #1]
00500714  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500718  01 20 42 e2                                      sub r2, r2, #1
0050071c  00 10 21 e0                                      eor r1, r1, r0
00500720  01 10 43 e5                                      strb r1, [r3, #-1]
00500724  01 30 83 e2                                      add r3, r3, #1
00500728  f1 ff ff 3a                                      blo #0x5006f4
0050072c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00500730  00 00 50 e3                                      cmp r0, #0
00500734  00 00 00 0a                                      beq #0x50073c
00500738  40 3f f8 eb                                      bl #0x310440
0050073c  08 00 94 e5                                      ldr r0, [r4, #8]
00500740  01 10 a0 e3                                      mov r1, #1
00500744  00 60 a0 e3                                      mov r6, #0
00500748  01 00 80 e0                                      add r0, r0, r1
0050074c  86 3f f8 eb                                      bl #0x31056c
00500750  08 20 94 e5                                      ldr r2, [r4, #8]
00500754  00 10 a0 e1                                      mov r1, r0
00500758  0c 00 84 e5                                      str r0, [r4, #0xc]
0050075c  06 30 a0 e1                                      mov r3, r6
00500760  05 00 a0 e1                                      mov r0, r5
00500764  3a 5b f8 eb                                      bl #0x317454
00500768  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050076c  08 30 94 e5                                      ldr r3, [r4, #8]
00500770  05 00 a0 e1                                      mov r0, r5
00500774  10 10 84 e2                                      add r1, r4, #0x10
00500778  03 60 c2 e7                                      strb r6, [r2, r3]
0050077c  46 6c ff eb                                      bl #0x4db89c
00500780  08 d0 8d e2                                      add sp, sp, #8
00500784  70 80 bd e8                                      pop {r4, r5, r6, pc}
