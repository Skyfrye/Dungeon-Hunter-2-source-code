; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00399a88, declared_size=104, range_size=104, mode=arm
; class-group: Property
; alias: _ZN8PropertyC2EPKcPvS2_
; demangled: Property::Property(char const*, void*, void*)
; decoder-mode: arm
00399a88  58 c0 9f e5                                      ldr ip, [pc, #0x58]
00399a8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00399a90  54 e0 9f e5                                      ldr lr, [pc, #0x54]
00399a94  0c c0 8f e0                                      add ip, pc, ip
00399a98  00 50 a0 e1                                      mov r5, r0
00399a9c  0e e0 9c e7                                      ldr lr, [ip, lr]
00399aa0  00 40 a0 e1                                      mov r4, r0
00399aa4  01 70 a0 e1                                      mov r7, r1
00399aa8  08 e0 8e e2                                      add lr, lr, #8
00399aac  08 e0 85 e4                                      str lr, [r5], #8
00399ab0  18 50 80 e5                                      str r5, [r0, #0x18]
00399ab4  1c 50 80 e5                                      str r5, [r0, #0x1c]
00399ab8  01 00 a0 e1                                      mov r0, r1
00399abc  03 80 a0 e1                                      mov r8, r3
00399ac0  02 60 a0 e1                                      mov r6, r2
00399ac4  e2 d0 fd eb                                      bl #0x30de54
00399ac8  08 60 66 e0                                      rsb r6, r6, r8
00399acc  00 20 87 e0                                      add r2, r7, r0
00399ad0  07 10 a0 e1                                      mov r1, r7
00399ad4  05 00 a0 e1                                      mov r0, r5
00399ad8  02 df fd eb                                      bl #0x3116e8
00399adc  04 60 84 e5                                      str r6, [r4, #4]
00399ae0  04 00 a0 e1                                      mov r0, r4
00399ae4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00399ae8  fc af 5f 00 30 23 00 00                          .byte 0xfc, 0xaf, 0x5f, 0x00, 0x30, 0x23, 0x00, 0x00
