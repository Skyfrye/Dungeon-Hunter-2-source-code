; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00429c1c, declared_size=184, range_size=184, mode=arm
; class-group: bool StreamReader
; alias: _ZN12StreamReader6readAsIbEET_P11IStreamBase
; demangled: bool StreamReader::readAs<bool>(IStreamBase*)
; decoder-mode: arm
00429c1c  04 e0 2d e5                                      str lr, [sp, #-4]!
00429c20  14 d0 4d e2                                      sub sp, sp, #0x14
00429c24  00 30 a0 e3                                      mov r3, #0
00429c28  00 c0 90 e5                                      ldr ip, [r0]
00429c2c  0f 10 8d e2                                      add r1, sp, #0xf
00429c30  01 20 a0 e3                                      mov r2, #1
00429c34  0f e0 a0 e1                                      mov lr, pc
00429c38  18 f0 9c e5                                      ldr pc, [ip, #0x18]
00429c3c  78 30 9f e5                                      ldr r3, [pc, #0x78]
00429c40  01 00 50 e3                                      cmp r0, #1
00429c44  03 30 8f e0                                      add r3, pc, r3
00429c48  0b 00 00 0a                                      beq #0x429c7c
00429c4c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00429c50  02 20 93 e7                                      ldr r2, [r3, r2]
00429c54  00 20 92 e5                                      ldr r2, [r2]
00429c58  02 00 52 e3                                      cmp r2, #2
00429c5c  00 30 a0 03                                      moveq r3, #0
00429c60  00 30 83 05                                      streq r3, [r3]
00429c64  01 00 00 0a                                      beq #0x429c70
00429c68  01 00 52 e3                                      cmp r2, #1
00429c6c  05 00 00 0a                                      beq #0x429c88
00429c70  0f 00 dd e5                                      ldrb r0, [sp, #0xf]
00429c74  14 d0 8d e2                                      add sp, sp, #0x14
00429c78  00 80 bd e8                                      ldm sp!, {pc}
00429c7c  00 00 51 e3                                      cmp r1, #0
00429c80  fa ff ff 0a                                      beq #0x429c70
00429c84  f0 ff ff ea                                      b #0x429c4c
00429c88  34 00 9f e5                                      ldr r0, [pc, #0x34]
00429c8c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00429c90  34 20 9f e5                                      ldr r2, [pc, #0x34]
00429c94  00 00 93 e7                                      ldr r0, [r3, r0]
00429c98  30 30 9f e5                                      ldr r3, [pc, #0x30]
00429c9c  44 c0 a0 e3                                      mov ip, #0x44
00429ca0  01 10 8f e0                                      add r1, pc, r1
00429ca4  02 20 8f e0                                      add r2, pc, r2
00429ca8  03 30 8f e0                                      add r3, pc, r3
00429cac  a8 00 80 e2                                      add r0, r0, #0xa8
00429cb0  00 c0 8d e5                                      str ip, [sp]
00429cb4  d2 90 fb eb                                      bl #0x30e004
00429cb8  ec ff ff ea                                      b #0x429c70
; mapping-symbol data/literal pool
00429cbc  4c ae 56 00 c0 39 00 00 c0 19 00 00 38 47 49 00  .byte 0x4c, 0xae, 0x56, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x38, 0x47, 0x49, 0x00
00429ccc  5c 48 49 00 98 60 49 00                          .byte 0x5c, 0x48, 0x49, 0x00, 0x98, 0x60, 0x49, 0x00
