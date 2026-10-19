; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c8e10, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::arg_format_avm2>
; alias: _ZN7gameswf5arrayINS_15arg_format_avm2EE7reserveEi
; demangled: gameswf::array<gameswf::arg_format_avm2>::reserve(int)
; decoder-mode: arm
007c8e10  10 40 2d e9                                      push {r4, lr}
007c8e14  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007c8e18  00 40 a0 e1                                      mov r4, r0
007c8e1c  00 00 53 e3                                      cmp r3, #0
007c8e20  0f 00 00 1a                                      bne #0x7c8e64
007c8e24  00 00 51 e3                                      cmp r1, #0
007c8e28  08 20 90 e5                                      ldr r2, [r0, #8]
007c8e2c  08 10 80 e5                                      str r1, [r0, #8]
007c8e30  0c 00 00 1a                                      bne #0x7c8e68
007c8e34  00 00 90 e5                                      ldr r0, [r0]
007c8e38  00 00 50 e3                                      cmp r0, #0
007c8e3c  01 00 00 0a                                      beq #0x7c8e48
007c8e40  02 11 a0 e1                                      lsl r1, r2, #2
007c8e44  3b 27 fe eb                                      bl #0x752b38
007c8e48  00 30 a0 e3                                      mov r3, #0
007c8e4c  00 30 84 e5                                      str r3, [r4]
007c8e50  10 80 bd e8                                      pop {r4, pc}
007c8e54  01 01 a0 e1                                      lsl r0, r1, #2
007c8e58  0c 10 a0 e1                                      mov r1, ip
007c8e5c  4e 27 fe eb                                      bl #0x752b9c
007c8e60  00 00 84 e5                                      str r0, [r4]
007c8e64  10 80 bd e8                                      pop {r4, pc}
007c8e68  00 c0 90 e5                                      ldr ip, [r0]
007c8e6c  00 00 5c e3                                      cmp ip, #0
007c8e70  f7 ff ff 0a                                      beq #0x7c8e54
007c8e74  0c 00 a0 e1                                      mov r0, ip
007c8e78  01 11 a0 e1                                      lsl r1, r1, #2
007c8e7c  02 21 a0 e1                                      lsl r2, r2, #2
007c8e80  49 27 fe eb                                      bl #0x752bac
007c8e84  00 00 84 e5                                      str r0, [r4]
007c8e88  10 80 bd e8                                      pop {r4, pc}
