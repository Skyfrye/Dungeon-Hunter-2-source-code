; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042b1e4, declared_size=124, range_size=124, mode=arm
; class-group: BufferedStream
; alias: _ZN14BufferedStream10FillBufferEP11IStreamBase
; demangled: BufferedStream::FillBuffer(IStreamBase*)
; decoder-mode: arm
0042b1e4  70 40 2d e9                                      push {r4, r5, r6, lr}
0042b1e8  00 50 a0 e1                                      mov r5, r0
0042b1ec  00 30 91 e5                                      ldr r3, [r1]
0042b1f0  01 00 a0 e1                                      mov r0, r1
0042b1f4  01 60 a0 e1                                      mov r6, r1
0042b1f8  0f e0 a0 e1                                      mov lr, pc
0042b1fc  08 f0 93 e5                                      ldr pc, [r3, #8]
0042b200  00 00 50 e3                                      cmp r0, #0
0042b204  00 20 a0 e1                                      mov r2, r0
0042b208  04 00 85 e5                                      str r0, [r5, #4]
0042b20c  03 00 00 da                                      ble #0x42b220
0042b210  00 10 a0 e3                                      mov r1, #0
0042b214  d4 94 fb eb                                      bl #0x31056c
0042b218  04 20 95 e5                                      ldr r2, [r5, #4]
0042b21c  00 00 85 e5                                      str r0, [r5]
0042b220  00 00 52 e3                                      cmp r2, #0
0042b224  0c 00 00 0a                                      beq #0x42b25c
0042b228  00 40 a0 e3                                      mov r4, #0
0042b22c  00 10 95 e5                                      ldr r1, [r5]
0042b230  02 20 64 e0                                      rsb r2, r4, r2
0042b234  c2 3f a0 e1                                      asr r3, r2, #0x1f
0042b238  04 10 81 e0                                      add r1, r1, r4
0042b23c  00 c0 96 e5                                      ldr ip, [r6]
0042b240  06 00 a0 e1                                      mov r0, r6
0042b244  0f e0 a0 e1                                      mov lr, pc
0042b248  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0042b24c  04 20 95 e5                                      ldr r2, [r5, #4]
0042b250  00 40 84 e0                                      add r4, r4, r0
0042b254  04 00 52 e1                                      cmp r2, r4
0042b258  f3 ff ff 1a                                      bne #0x42b22c
0042b25c  70 80 bd e8                                      pop {r4, r5, r6, pc}
