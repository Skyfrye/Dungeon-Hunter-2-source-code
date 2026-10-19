; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00755260, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::weak_ptr<gameswf::player>
; alias: _ZNK7gameswf8weak_ptrINS_6playerEE11check_proxyEv
; demangled: gameswf::weak_ptr<gameswf::player>::check_proxy() const
; decoder-mode: arm
00755260  10 40 2d e9                                      push {r4, lr}
00755264  04 30 90 e5                                      ldr r3, [r0, #4]
00755268  00 40 a0 e1                                      mov r4, r0
0075526c  00 00 53 e3                                      cmp r3, #0
00755270  0c 00 00 0a                                      beq #0x7552a8
00755274  00 00 90 e5                                      ldr r0, [r0]
00755278  04 30 d0 e5                                      ldrb r3, [r0, #4]
0075527c  00 00 53 e3                                      cmp r3, #0
00755280  08 00 00 1a                                      bne #0x7552a8
00755284  00 10 90 e5                                      ldr r1, [r0]
00755288  01 10 41 e2                                      sub r1, r1, #1
0075528c  00 00 51 e3                                      cmp r1, #0
00755290  00 10 80 e5                                      str r1, [r0]
00755294  00 00 00 1a                                      bne #0x75529c
00755298  26 f6 ff eb                                      bl #0x752b38
0075529c  00 30 a0 e3                                      mov r3, #0
007552a0  04 30 84 e5                                      str r3, [r4, #4]
007552a4  00 30 84 e5                                      str r3, [r4]
007552a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0075e9ac, declared_size=152, range_size=152, mode=arm
; class-group: gameswf::weak_ptr<gameswf::player>
; alias: _ZN7gameswf8weak_ptrINS_6playerEEaSEPS1_
; demangled: gameswf::weak_ptr<gameswf::player>::operator=(gameswf::player*)
; decoder-mode: arm
0075e9ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0075e9b0  00 00 51 e3                                      cmp r1, #0
0075e9b4  00 50 a0 e1                                      mov r5, r0
0075e9b8  04 10 85 e5                                      str r1, [r5, #4]
0075e9bc  14 00 00 0a                                      beq #0x75ea14
0075e9c0  01 00 a0 e1                                      mov r0, r1
0075e9c4  b0 ef ff eb                                      bl #0x75a88c
0075e9c8  00 40 a0 e1                                      mov r4, r0
0075e9cc  00 00 95 e5                                      ldr r0, [r5]
0075e9d0  00 00 54 e1                                      cmp r4, r0
0075e9d4  19 00 00 0a                                      beq #0x75ea40
0075e9d8  00 00 50 e3                                      cmp r0, #0
0075e9dc  05 00 00 0a                                      beq #0x75e9f8
0075e9e0  00 10 90 e5                                      ldr r1, [r0]
0075e9e4  01 10 41 e2                                      sub r1, r1, #1
0075e9e8  00 00 51 e3                                      cmp r1, #0
0075e9ec  00 10 80 e5                                      str r1, [r0]
0075e9f0  00 00 00 1a                                      bne #0x75e9f8
0075e9f4  4f d0 ff eb                                      bl #0x752b38
0075e9f8  00 00 54 e3                                      cmp r4, #0
0075e9fc  00 40 85 e5                                      str r4, [r5]
0075ea00  0e 00 00 0a                                      beq #0x75ea40
0075ea04  00 30 94 e5                                      ldr r3, [r4]
0075ea08  01 30 83 e2                                      add r3, r3, #1
0075ea0c  00 30 84 e5                                      str r3, [r4]
0075ea10  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075ea14  00 00 90 e5                                      ldr r0, [r0]
0075ea18  00 00 50 e3                                      cmp r0, #0
0075ea1c  07 00 00 0a                                      beq #0x75ea40
0075ea20  00 30 90 e5                                      ldr r3, [r0]
0075ea24  01 30 43 e2                                      sub r3, r3, #1
0075ea28  00 00 53 e3                                      cmp r3, #0
0075ea2c  00 30 80 e5                                      str r3, [r0]
0075ea30  00 00 00 1a                                      bne #0x75ea38
0075ea34  3f d0 ff eb                                      bl #0x752b38
0075ea38  00 30 a0 e3                                      mov r3, #0
0075ea3c  00 30 85 e5                                      str r3, [r5]
0075ea40  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00780190, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::weak_ptr<gameswf::player>
; alias: _ZNK7gameswf8weak_ptrINS_6playerEEptEv
; demangled: gameswf::weak_ptr<gameswf::player>::operator->() const
; decoder-mode: arm
00780190  10 40 2d e9                                      push {r4, lr}
00780194  00 40 a0 e1                                      mov r4, r0
00780198  04 00 90 e5                                      ldr r0, [r0, #4]
0078019c  00 00 50 e3                                      cmp r0, #0
007801a0  03 00 00 0a                                      beq #0x7801b4
007801a4  00 30 94 e5                                      ldr r3, [r4]
007801a8  04 20 d3 e5                                      ldrb r2, [r3, #4]
007801ac  00 00 52 e3                                      cmp r2, #0
007801b0  00 00 00 0a                                      beq #0x7801b8
007801b4  10 80 bd e8                                      pop {r4, pc}
007801b8  00 10 93 e5                                      ldr r1, [r3]
007801bc  01 10 41 e2                                      sub r1, r1, #1
007801c0  00 00 51 e3                                      cmp r1, #0
007801c4  00 10 83 e5                                      str r1, [r3]
007801c8  01 00 00 1a                                      bne #0x7801d4
007801cc  03 00 a0 e1                                      mov r0, r3
007801d0  58 4a ff eb                                      bl #0x752b38
007801d4  00 00 a0 e3                                      mov r0, #0
007801d8  04 00 84 e5                                      str r0, [r4, #4]
007801dc  00 00 84 e5                                      str r0, [r4]
007801e0  10 80 bd e8                                      pop {r4, pc}
