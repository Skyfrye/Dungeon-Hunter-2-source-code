; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075552c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::display_object_info>
; alias: _ZN7gameswf5arrayINS_19display_object_infoEE7reserveEi
; demangled: gameswf::array<gameswf::display_object_info>::reserve(int)
; decoder-mode: arm
0075552c  10 40 2d e9                                      push {r4, lr}
00755530  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00755534  00 40 a0 e1                                      mov r4, r0
00755538  00 00 53 e3                                      cmp r3, #0
0075553c  0f 00 00 1a                                      bne #0x755580
00755540  00 00 51 e3                                      cmp r1, #0
00755544  08 20 90 e5                                      ldr r2, [r0, #8]
00755548  08 10 80 e5                                      str r1, [r0, #8]
0075554c  0c 00 00 1a                                      bne #0x755584
00755550  00 00 90 e5                                      ldr r0, [r0]
00755554  00 00 50 e3                                      cmp r0, #0
00755558  01 00 00 0a                                      beq #0x755564
0075555c  02 11 a0 e1                                      lsl r1, r2, #2
00755560  74 f5 ff eb                                      bl #0x752b38
00755564  00 30 a0 e3                                      mov r3, #0
00755568  00 30 84 e5                                      str r3, [r4]
0075556c  10 80 bd e8                                      pop {r4, pc}
00755570  01 01 a0 e1                                      lsl r0, r1, #2
00755574  0c 10 a0 e1                                      mov r1, ip
00755578  87 f5 ff eb                                      bl #0x752b9c
0075557c  00 00 84 e5                                      str r0, [r4]
00755580  10 80 bd e8                                      pop {r4, pc}
00755584  00 c0 90 e5                                      ldr ip, [r0]
00755588  00 00 5c e3                                      cmp ip, #0
0075558c  f7 ff ff 0a                                      beq #0x755570
00755590  0c 00 a0 e1                                      mov r0, ip
00755594  01 11 a0 e1                                      lsl r1, r1, #2
00755598  02 21 a0 e1                                      lsl r2, r2, #2
0075559c  82 f5 ff eb                                      bl #0x752bac
007555a0  00 00 84 e5                                      str r0, [r4]
007555a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007555a8, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::array<gameswf::display_object_info>
; alias: _ZN7gameswf5arrayINS_19display_object_infoEE6resizeEi
; demangled: gameswf::array<gameswf::display_object_info>::resize(int)
; decoder-mode: arm
007555a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007555ac  04 60 90 e5                                      ldr r6, [r0, #4]
007555b0  00 40 a0 e1                                      mov r4, r0
007555b4  01 50 a0 e1                                      mov r5, r1
007555b8  01 00 56 e1                                      cmp r6, r1
007555bc  0a 00 00 da                                      ble #0x7555ec
007555c0  01 81 a0 e1                                      lsl r8, r1, #2
007555c4  01 70 a0 e1                                      mov r7, r1
007555c8  00 30 94 e5                                      ldr r3, [r4]
007555cc  01 70 87 e2                                      add r7, r7, #1
007555d0  08 00 93 e7                                      ldr r0, [r3, r8]
007555d4  04 80 88 e2                                      add r8, r8, #4
007555d8  00 00 50 e3                                      cmp r0, #0
007555dc  00 00 00 0a                                      beq #0x7555e4
007555e0  16 13 00 eb                                      bl #0x75a240
007555e4  06 00 57 e1                                      cmp r7, r6
007555e8  f6 ff ff 1a                                      bne #0x7555c8
007555ec  00 00 55 e3                                      cmp r5, #0
007555f0  02 00 00 0a                                      beq #0x755600
007555f4  08 30 94 e5                                      ldr r3, [r4, #8]
007555f8  03 00 55 e1                                      cmp r5, r3
007555fc  0c 00 00 ca                                      bgt #0x755634
00755600  05 00 56 e1                                      cmp r6, r5
00755604  08 00 00 aa                                      bge #0x75562c
00755608  06 30 a0 e1                                      mov r3, r6
0075560c  00 10 a0 e3                                      mov r1, #0
00755610  06 61 a0 e1                                      lsl r6, r6, #2
00755614  00 20 94 e5                                      ldr r2, [r4]
00755618  01 30 83 e2                                      add r3, r3, #1
0075561c  05 00 53 e1                                      cmp r3, r5
00755620  06 10 82 e7                                      str r1, [r2, r6]
00755624  04 60 86 e2                                      add r6, r6, #4
00755628  f9 ff ff 1a                                      bne #0x755614
0075562c  04 50 84 e5                                      str r5, [r4, #4]
00755630  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00755634  04 00 a0 e1                                      mov r0, r4
00755638  c5 10 85 e0                                      add r1, r5, r5, asr #1
0075563c  ba ff ff eb                                      bl #0x75552c
00755640  ee ff ff ea                                      b #0x755600

; FUNCTION 0x00755644, declared_size=116, range_size=116, mode=arm
; class-group: gameswf::array<gameswf::display_object_info>
; alias: _ZN7gameswf5arrayINS_19display_object_infoEE6removeEi
; demangled: gameswf::array<gameswf::display_object_info>::remove(int)
; decoder-mode: arm
00755644  70 40 2d e9                                      push {r4, r5, r6, lr}
00755648  04 30 90 e5                                      ldr r3, [r0, #4]
0075564c  00 40 a0 e1                                      mov r4, r0
00755650  01 50 a0 e1                                      mov r5, r1
00755654  01 00 53 e3                                      cmp r3, #1
00755658  13 00 00 0a                                      beq #0x7556ac
0075565c  00 20 90 e5                                      ldr r2, [r0]
00755660  01 61 a0 e1                                      lsl r6, r1, #2
00755664  01 11 92 e7                                      ldr r1, [r2, r1, lsl #2]
00755668  06 00 82 e0                                      add r0, r2, r6
0075566c  00 00 51 e3                                      cmp r1, #0
00755670  03 00 00 0a                                      beq #0x755684
00755674  01 00 a0 e1                                      mov r0, r1
00755678  f0 12 00 eb                                      bl #0x75a240
0075567c  0c 00 94 e8                                      ldm r4, {r2, r3}
00755680  06 00 82 e0                                      add r0, r2, r6
00755684  05 10 e0 e1                                      mvn r1, r5
00755688  03 30 81 e0                                      add r3, r1, r3
0075568c  01 10 85 e2                                      add r1, r5, #1
00755690  01 11 82 e0                                      add r1, r2, r1, lsl #2
00755694  03 21 a0 e1                                      lsl r2, r3, #2
00755698  26 e2 ee eb                                      bl #0x30df38
0075569c  04 30 94 e5                                      ldr r3, [r4, #4]
007556a0  01 30 43 e2                                      sub r3, r3, #1
007556a4  04 30 84 e5                                      str r3, [r4, #4]
007556a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007556ac  00 10 a0 e3                                      mov r1, #0
007556b0  70 40 bd e8                                      pop {r4, r5, r6, lr}
007556b4  bb ff ff ea                                      b #0x7555a8

; FUNCTION 0x007556b8, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::array<gameswf::display_object_info>
; alias: _ZN7gameswf5arrayINS_19display_object_infoEE6insertEiRKS1_
; demangled: gameswf::array<gameswf::display_object_info>::insert(int, gameswf::display_object_info const&)
; decoder-mode: arm
007556b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007556bc  04 30 90 e5                                      ldr r3, [r0, #4]
007556c0  01 50 a0 e1                                      mov r5, r1
007556c4  00 40 a0 e1                                      mov r4, r0
007556c8  01 10 83 e2                                      add r1, r3, #1
007556cc  02 70 a0 e1                                      mov r7, r2
007556d0  b4 ff ff eb                                      bl #0x7555a8
007556d4  04 20 94 e5                                      ldr r2, [r4, #4]
007556d8  01 20 42 e2                                      sub r2, r2, #1
007556dc  05 00 52 e1                                      cmp r2, r5
007556e0  05 61 a0 d1                                      lslle r6, r5, #2
007556e4  06 00 00 ca                                      bgt #0x755704
007556e8  00 00 94 e5                                      ldr r0, [r4]
007556ec  00 30 a0 e3                                      mov r3, #0
007556f0  06 30 80 e7                                      str r3, [r0, r6]
007556f4  00 10 97 e5                                      ldr r1, [r7]
007556f8  06 00 80 e0                                      add r0, r0, r6
007556fc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00755700  a1 fe ff ea                                      b #0x75518c
00755704  00 10 94 e5                                      ldr r1, [r4]
00755708  02 20 65 e0                                      rsb r2, r5, r2
0075570c  05 61 a0 e1                                      lsl r6, r5, #2
00755710  01 00 85 e2                                      add r0, r5, #1
00755714  00 01 81 e0                                      add r0, r1, r0, lsl #2
00755718  02 21 a0 e1                                      lsl r2, r2, #2
0075571c  06 10 81 e0                                      add r1, r1, r6
00755720  04 e2 ee eb                                      bl #0x30df38
00755724  ef ff ff ea                                      b #0x7556e8
