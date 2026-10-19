; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075ebd0, declared_size=152, range_size=152, mode=arm
; class-group: gameswf::weak_ptr<gameswf::as_function>
; alias: _ZN7gameswf8weak_ptrINS_11as_functionEEaSEPS1_
; demangled: gameswf::weak_ptr<gameswf::as_function>::operator=(gameswf::as_function*)
; decoder-mode: arm
0075ebd0  70 40 2d e9                                      push {r4, r5, r6, lr}
0075ebd4  00 00 51 e3                                      cmp r1, #0
0075ebd8  00 50 a0 e1                                      mov r5, r0
0075ebdc  04 10 85 e5                                      str r1, [r5, #4]
0075ebe0  14 00 00 0a                                      beq #0x75ec38
0075ebe4  01 00 a0 e1                                      mov r0, r1
0075ebe8  27 ef ff eb                                      bl #0x75a88c
0075ebec  00 40 a0 e1                                      mov r4, r0
0075ebf0  00 00 95 e5                                      ldr r0, [r5]
0075ebf4  00 00 54 e1                                      cmp r4, r0
0075ebf8  19 00 00 0a                                      beq #0x75ec64
0075ebfc  00 00 50 e3                                      cmp r0, #0
0075ec00  05 00 00 0a                                      beq #0x75ec1c
0075ec04  00 10 90 e5                                      ldr r1, [r0]
0075ec08  01 10 41 e2                                      sub r1, r1, #1
0075ec0c  00 00 51 e3                                      cmp r1, #0
0075ec10  00 10 80 e5                                      str r1, [r0]
0075ec14  00 00 00 1a                                      bne #0x75ec1c
0075ec18  c6 cf ff eb                                      bl #0x752b38
0075ec1c  00 00 54 e3                                      cmp r4, #0
0075ec20  00 40 85 e5                                      str r4, [r5]
0075ec24  0e 00 00 0a                                      beq #0x75ec64
0075ec28  00 30 94 e5                                      ldr r3, [r4]
0075ec2c  01 30 83 e2                                      add r3, r3, #1
0075ec30  00 30 84 e5                                      str r3, [r4]
0075ec34  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075ec38  00 00 90 e5                                      ldr r0, [r0]
0075ec3c  00 00 50 e3                                      cmp r0, #0
0075ec40  07 00 00 0a                                      beq #0x75ec64
0075ec44  00 30 90 e5                                      ldr r3, [r0]
0075ec48  01 30 43 e2                                      sub r3, r3, #1
0075ec4c  00 00 53 e3                                      cmp r3, #0
0075ec50  00 30 80 e5                                      str r3, [r0]
0075ec54  00 00 00 1a                                      bne #0x75ec5c
0075ec58  b6 cf ff eb                                      bl #0x752b38
0075ec5c  00 30 a0 e3                                      mov r3, #0
0075ec60  00 30 85 e5                                      str r3, [r5]
0075ec64  70 80 bd e8                                      pop {r4, r5, r6, pc}
