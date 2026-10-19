; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00758af8, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::effect
; alias: _ZN7gameswf6effectD1Ev
; demangled: gameswf::effect::~effect()
; decoder-mode: arm
00758af8  10 40 2d e9                                      push {r4, lr}
00758afc  08 c0 90 e5                                      ldr ip, [r0, #8]
00758b00  00 40 a0 e1                                      mov r4, r0
00758b04  04 00 80 e2                                      add r0, r0, #4
00758b08  00 00 5c e3                                      cmp ip, #0
00758b0c  04 00 00 da                                      ble #0x758b24
00758b10  00 10 a0 e3                                      mov r1, #0
00758b14  08 10 84 e5                                      str r1, [r4, #8]
00758b18  ea e8 ff eb                                      bl #0x752ec8
00758b1c  04 00 a0 e1                                      mov r0, r4
00758b20  10 80 bd e8                                      pop {r4, pc}
00758b24  f9 ff ff aa                                      bge #0x758b10
00758b28  2c 10 a0 e3                                      mov r1, #0x2c
00758b2c  91 0c 01 e0                                      mul r1, r1, ip
00758b30  00 20 a0 e3                                      mov r2, #0
00758b34  00 e0 90 e5                                      ldr lr, [r0]
00758b38  01 c0 9c e2                                      adds ip, ip, #1
00758b3c  01 30 8e e0                                      add r3, lr, r1
00758b40  04 30 83 e2                                      add r3, r3, #4
00758b44  01 20 8e e7                                      str r2, [lr, r1]
00758b48  04 20 83 e4                                      str r2, [r3], #4
00758b4c  04 20 83 e4                                      str r2, [r3], #4
00758b50  04 20 83 e4                                      str r2, [r3], #4
00758b54  04 20 83 e4                                      str r2, [r3], #4
00758b58  04 20 83 e4                                      str r2, [r3], #4
00758b5c  04 20 83 e4                                      str r2, [r3], #4
00758b60  04 20 83 e4                                      str r2, [r3], #4
00758b64  04 20 83 e4                                      str r2, [r3], #4
00758b68  04 20 83 e4                                      str r2, [r3], #4
00758b6c  00 20 83 e5                                      str r2, [r3]
00758b70  2c 10 81 e2                                      add r1, r1, #0x2c
00758b74  ee ff ff 1a                                      bne #0x758b34
00758b78  00 10 a0 e3                                      mov r1, #0
00758b7c  08 10 84 e5                                      str r1, [r4, #8]
00758b80  d0 e8 ff eb                                      bl #0x752ec8
00758b84  04 00 a0 e1                                      mov r0, r4
00758b88  10 80 bd e8                                      pop {r4, pc}
