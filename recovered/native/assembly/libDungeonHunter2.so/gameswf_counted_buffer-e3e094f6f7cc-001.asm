; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075b974, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::counted_buffer
; alias: _ZN7gameswf14counted_bufferD1Ev
; demangled: gameswf::counted_buffer::~counted_buffer()
; decoder-mode: arm
0075b974  10 40 2d e9                                      push {r4, lr}
0075b978  18 30 90 e5                                      ldr r3, [r0, #0x18]
0075b97c  00 40 a0 e1                                      mov r4, r0
0075b980  00 00 53 e3                                      cmp r3, #0
0075b984  11 00 00 da                                      ble #0x75b9d0
0075b988  20 30 d4 e5                                      ldrb r3, [r4, #0x20]
0075b98c  00 20 a0 e3                                      mov r2, #0
0075b990  18 20 84 e5                                      str r2, [r4, #0x18]
0075b994  02 00 53 e1                                      cmp r3, r2
0075b998  08 00 00 1a                                      bne #0x75b9c0
0075b99c  14 00 94 e5                                      ldr r0, [r4, #0x14]
0075b9a0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0075b9a4  1c 30 84 e5                                      str r3, [r4, #0x1c]
0075b9a8  02 00 50 e1                                      cmp r0, r2
0075b9ac  01 00 00 0a                                      beq #0x75b9b8
0075b9b0  01 11 a0 e1                                      lsl r1, r1, #2
0075b9b4  5f dc ff eb                                      bl #0x752b38
0075b9b8  00 30 a0 e3                                      mov r3, #0
0075b9bc  14 30 84 e5                                      str r3, [r4, #0x14]
0075b9c0  04 00 a0 e1                                      mov r0, r4
0075b9c4  f1 6a 01 eb                                      bl #0x7b6590
0075b9c8  04 00 a0 e1                                      mov r0, r4
0075b9cc  10 80 bd e8                                      pop {r4, pc}
0075b9d0  ec ff ff aa                                      bge #0x75b988
0075b9d4  03 21 a0 e1                                      lsl r2, r3, #2
0075b9d8  00 00 a0 e3                                      mov r0, #0
0075b9dc  14 10 94 e5                                      ldr r1, [r4, #0x14]
0075b9e0  01 30 93 e2                                      adds r3, r3, #1
0075b9e4  02 00 81 e7                                      str r0, [r1, r2]
0075b9e8  04 20 82 e2                                      add r2, r2, #4
0075b9ec  fa ff ff 1a                                      bne #0x75b9dc
0075b9f0  e4 ff ff ea                                      b #0x75b988

; FUNCTION 0x0075b9f4, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::counted_buffer
; alias: _ZN7gameswf14counted_buffer8drop_refEv
; demangled: gameswf::counted_buffer::drop_ref()
; decoder-mode: arm
0075b9f4  70 40 2d e9                                      push {r4, r5, r6, lr}
0075b9f8  10 40 90 e5                                      ldr r4, [r0, #0x10]
0075b9fc  00 50 a0 e1                                      mov r5, r0
0075ba00  01 40 44 e2                                      sub r4, r4, #1
0075ba04  00 00 54 e3                                      cmp r4, #0
0075ba08  10 40 80 e5                                      str r4, [r0, #0x10]
0075ba0c  04 00 00 1a                                      bne #0x75ba24
0075ba10  d7 ff ff eb                                      bl #0x75b974
0075ba14  05 00 a0 e1                                      mov r0, r5
0075ba18  04 10 a0 e1                                      mov r1, r4
0075ba1c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0075ba20  44 dc ff ea                                      b #0x752b38
0075ba24  70 80 bd e8                                      pop {r4, r5, r6, pc}
