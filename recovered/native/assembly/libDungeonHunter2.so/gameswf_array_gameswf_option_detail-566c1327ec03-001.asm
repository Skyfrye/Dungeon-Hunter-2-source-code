; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c2bb0, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::option_detail>
; alias: _ZN7gameswf5arrayINS_13option_detailEE7reserveEi
; demangled: gameswf::array<gameswf::option_detail>::reserve(int)
; decoder-mode: arm
007c2bb0  10 40 2d e9                                      push {r4, lr}
007c2bb4  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007c2bb8  00 40 a0 e1                                      mov r4, r0
007c2bbc  00 00 53 e3                                      cmp r3, #0
007c2bc0  0f 00 00 1a                                      bne #0x7c2c04
007c2bc4  00 00 51 e3                                      cmp r1, #0
007c2bc8  08 20 90 e5                                      ldr r2, [r0, #8]
007c2bcc  08 10 80 e5                                      str r1, [r0, #8]
007c2bd0  0c 00 00 1a                                      bne #0x7c2c08
007c2bd4  00 00 90 e5                                      ldr r0, [r0]
007c2bd8  00 00 50 e3                                      cmp r0, #0
007c2bdc  01 00 00 0a                                      beq #0x7c2be8
007c2be0  82 11 a0 e1                                      lsl r1, r2, #3
007c2be4  d3 3f fe eb                                      bl #0x752b38
007c2be8  00 30 a0 e3                                      mov r3, #0
007c2bec  00 30 84 e5                                      str r3, [r4]
007c2bf0  10 80 bd e8                                      pop {r4, pc}
007c2bf4  81 01 a0 e1                                      lsl r0, r1, #3
007c2bf8  0c 10 a0 e1                                      mov r1, ip
007c2bfc  e6 3f fe eb                                      bl #0x752b9c
007c2c00  00 00 84 e5                                      str r0, [r4]
007c2c04  10 80 bd e8                                      pop {r4, pc}
007c2c08  00 c0 90 e5                                      ldr ip, [r0]
007c2c0c  00 00 5c e3                                      cmp ip, #0
007c2c10  f7 ff ff 0a                                      beq #0x7c2bf4
007c2c14  0c 00 a0 e1                                      mov r0, ip
007c2c18  81 11 a0 e1                                      lsl r1, r1, #3
007c2c1c  82 21 a0 e1                                      lsl r2, r2, #3
007c2c20  e1 3f fe eb                                      bl #0x752bac
007c2c24  00 00 84 e5                                      str r0, [r4]
007c2c28  10 80 bd e8                                      pop {r4, pc}
