; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e4c34, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::SShaderVertexAttributeDef
; alias: _ZN6glitch5video25SShaderVertexAttributeDef21deserializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::SShaderVertexAttributeDef::deserializeAttributes(glitch::io::IAttributes*)
; decoder-mode: arm
005e4c34  70 40 2d e9                                      push {r4, r5, r6, lr}
005e4c38  01 40 a0 e1                                      mov r4, r1
005e4c3c  00 10 90 e5                                      ldr r1, [r0]
005e4c40  00 30 94 e5                                      ldr r3, [r4]
005e4c44  00 50 a0 e1                                      mov r5, r0
005e4c48  00 00 51 e3                                      cmp r1, #0
005e4c4c  04 10 81 12                                      addne r1, r1, #4
005e4c50  04 00 a0 e1                                      mov r0, r4
005e4c54  30 30 93 e5                                      ldr r3, [r3, #0x30]
005e4c58  33 ff 2f e1                                      blx r3
005e4c5c  00 30 94 e5                                      ldr r3, [r4]
005e4c60  00 00 a0 e3                                      mov r0, #0
005e4c64  00 61 93 e5                                      ldr r6, [r3, #0x100]
005e4c68  5a d9 03 eb                                      bl #0x6db1d8
005e4c6c  40 10 9f e5                                      ldr r1, [pc, #0x40]
005e4c70  00 20 a0 e1                                      mov r2, r0
005e4c74  04 00 a0 e1                                      mov r0, r4
005e4c78  01 10 8f e0                                      add r1, pc, r1
005e4c7c  36 ff 2f e1                                      blx r6
005e4c80  30 10 9f e5                                      ldr r1, [pc, #0x30]
005e4c84  b4 00 c5 e1                                      strh r0, [r5, #4]
005e4c88  00 30 94 e5                                      ldr r3, [r4]
005e4c8c  01 10 8f e0                                      add r1, pc, r1
005e4c90  04 00 a0 e1                                      mov r0, r4
005e4c94  0f e0 a0 e1                                      mov lr, pc
005e4c98  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005e4c9c  b6 00 c5 e1                                      strh r0, [r5, #6]
005e4ca0  00 30 94 e5                                      ldr r3, [r4]
005e4ca4  04 00 a0 e1                                      mov r0, r4
005e4ca8  0f e0 a0 e1                                      mov lr, pc
005e4cac  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e4cb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005e4cb4  00 dd 2d 00 ec de 2f 00                          .byte 0x00, 0xdd, 0x2d, 0x00, 0xec, 0xde, 0x2f, 0x00

; FUNCTION 0x005e4e64, declared_size=160, range_size=160, mode=arm
; class-group: glitch::video::SShaderVertexAttributeDef
; alias: _ZNK6glitch5video25SShaderVertexAttributeDef19serializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::SShaderVertexAttributeDef::serializeAttributes(glitch::io::IAttributes*) const
; decoder-mode: arm
005e4e64  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005e4e68  01 40 a0 e1                                      mov r4, r1
005e4e6c  00 10 90 e5                                      ldr r1, [r0]
005e4e70  00 30 94 e5                                      ldr r3, [r4]
005e4e74  0c d0 4d e2                                      sub sp, sp, #0xc
005e4e78  00 00 51 e3                                      cmp r1, #0
005e4e7c  04 10 81 12                                      addne r1, r1, #4
005e4e80  00 50 a0 e1                                      mov r5, r0
005e4e84  30 30 93 e5                                      ldr r3, [r3, #0x30]
005e4e88  04 00 a0 e1                                      mov r0, r4
005e4e8c  33 ff 2f e1                                      blx r3
005e4e90  00 00 a0 e3                                      mov r0, #0
005e4e94  b4 70 d5 e1                                      ldrh r7, [r5, #4]
005e4e98  ce d8 03 eb                                      bl #0x6db1d8
005e4e9c  58 10 9f e5                                      ldr r1, [pc, #0x58]
005e4ea0  00 60 a0 e3                                      mov r6, #0
005e4ea4  00 60 8d e5                                      str r6, [sp]
005e4ea8  00 30 a0 e1                                      mov r3, r0
005e4eac  07 20 a0 e1                                      mov r2, r7
005e4eb0  04 00 a0 e1                                      mov r0, r4
005e4eb4  00 c0 94 e5                                      ldr ip, [r4]
005e4eb8  01 10 8f e0                                      add r1, pc, r1
005e4ebc  0f e0 a0 e1                                      mov lr, pc
005e4ec0  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005e4ec4  34 10 9f e5                                      ldr r1, [pc, #0x34]
005e4ec8  06 30 a0 e1                                      mov r3, r6
005e4ecc  04 00 a0 e1                                      mov r0, r4
005e4ed0  b6 20 d5 e1                                      ldrh r2, [r5, #6]
005e4ed4  01 10 8f e0                                      add r1, pc, r1
005e4ed8  00 c0 94 e5                                      ldr ip, [r4]
005e4edc  0f e0 a0 e1                                      mov lr, pc
005e4ee0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005e4ee4  04 00 a0 e1                                      mov r0, r4
005e4ee8  00 30 94 e5                                      ldr r3, [r4]
005e4eec  0f e0 a0 e1                                      mov lr, pc
005e4ef0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e4ef4  0c d0 8d e2                                      add sp, sp, #0xc
005e4ef8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
005e4efc  c0 da 2d 00 a4 dc 2f 00                          .byte 0xc0, 0xda, 0x2d, 0x00, 0xa4, 0xdc, 0x2f, 0x00
