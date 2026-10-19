; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075ec88, declared_size=152, range_size=152, mode=arm
; class-group: gameswf::weak_ptr<gameswf::as_object>
; alias: _ZN7gameswf8weak_ptrINS_9as_objectEEaSEPS1_
; demangled: gameswf::weak_ptr<gameswf::as_object>::operator=(gameswf::as_object*)
; decoder-mode: arm
0075ec88  70 40 2d e9                                      push {r4, r5, r6, lr}
0075ec8c  00 00 51 e3                                      cmp r1, #0
0075ec90  00 50 a0 e1                                      mov r5, r0
0075ec94  04 10 85 e5                                      str r1, [r5, #4]
0075ec98  14 00 00 0a                                      beq #0x75ecf0
0075ec9c  01 00 a0 e1                                      mov r0, r1
0075eca0  f9 ee ff eb                                      bl #0x75a88c
0075eca4  00 40 a0 e1                                      mov r4, r0
0075eca8  00 00 95 e5                                      ldr r0, [r5]
0075ecac  00 00 54 e1                                      cmp r4, r0
0075ecb0  19 00 00 0a                                      beq #0x75ed1c
0075ecb4  00 00 50 e3                                      cmp r0, #0
0075ecb8  05 00 00 0a                                      beq #0x75ecd4
0075ecbc  00 10 90 e5                                      ldr r1, [r0]
0075ecc0  01 10 41 e2                                      sub r1, r1, #1
0075ecc4  00 00 51 e3                                      cmp r1, #0
0075ecc8  00 10 80 e5                                      str r1, [r0]
0075eccc  00 00 00 1a                                      bne #0x75ecd4
0075ecd0  98 cf ff eb                                      bl #0x752b38
0075ecd4  00 00 54 e3                                      cmp r4, #0
0075ecd8  00 40 85 e5                                      str r4, [r5]
0075ecdc  0e 00 00 0a                                      beq #0x75ed1c
0075ece0  00 30 94 e5                                      ldr r3, [r4]
0075ece4  01 30 83 e2                                      add r3, r3, #1
0075ece8  00 30 84 e5                                      str r3, [r4]
0075ecec  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075ecf0  00 00 90 e5                                      ldr r0, [r0]
0075ecf4  00 00 50 e3                                      cmp r0, #0
0075ecf8  07 00 00 0a                                      beq #0x75ed1c
0075ecfc  00 30 90 e5                                      ldr r3, [r0]
0075ed00  01 30 43 e2                                      sub r3, r3, #1
0075ed04  00 00 53 e3                                      cmp r3, #0
0075ed08  00 30 80 e5                                      str r3, [r0]
0075ed0c  00 00 00 1a                                      bne #0x75ed14
0075ed10  88 cf ff eb                                      bl #0x752b38
0075ed14  00 30 a0 e3                                      mov r3, #0
0075ed18  00 30 85 e5                                      str r3, [r5]
0075ed1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00760a9c, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::weak_ptr<gameswf::as_object>
; alias: _ZNK7gameswf8weak_ptrINS_9as_objectEE11check_proxyEv
; demangled: gameswf::weak_ptr<gameswf::as_object>::check_proxy() const
; decoder-mode: arm
00760a9c  10 40 2d e9                                      push {r4, lr}
00760aa0  04 30 90 e5                                      ldr r3, [r0, #4]
00760aa4  00 40 a0 e1                                      mov r4, r0
00760aa8  00 00 53 e3                                      cmp r3, #0
00760aac  03 00 00 0a                                      beq #0x760ac0
00760ab0  00 00 90 e5                                      ldr r0, [r0]
00760ab4  04 30 d0 e5                                      ldrb r3, [r0, #4]
00760ab8  00 00 53 e3                                      cmp r3, #0
00760abc  00 00 00 0a                                      beq #0x760ac4
00760ac0  10 80 bd e8                                      pop {r4, pc}
00760ac4  00 10 90 e5                                      ldr r1, [r0]
00760ac8  01 10 41 e2                                      sub r1, r1, #1
00760acc  00 00 51 e3                                      cmp r1, #0
00760ad0  00 10 80 e5                                      str r1, [r0]
00760ad4  00 00 00 1a                                      bne #0x760adc
00760ad8  16 c8 ff eb                                      bl #0x752b38
00760adc  00 30 a0 e3                                      mov r3, #0
00760ae0  04 30 84 e5                                      str r3, [r4, #4]
00760ae4  00 30 84 e5                                      str r3, [r4]
00760ae8  10 80 bd e8                                      pop {r4, pc}
