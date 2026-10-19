; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005ba5f8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::SShaderParameterDef
; alias: _ZN6glitch5video19SShaderParameterDefD1Ev
; demangled: glitch::video::SShaderParameterDef::~SShaderParameterDef()
; decoder-mode: arm
005ba5f8  10 40 2d e9                                      push {r4, lr}
005ba5fc  00 40 a0 e1                                      mov r4, r0
005ba600  00 00 90 e5                                      ldr r0, [r0]
005ba604  00 00 50 e3                                      cmp r0, #0
005ba608  05 00 00 0a                                      beq #0x5ba624
005ba60c  00 30 90 e5                                      ldr r3, [r0]
005ba610  01 30 43 e2                                      sub r3, r3, #1
005ba614  00 00 53 e3                                      cmp r3, #0
005ba618  00 30 80 e5                                      str r3, [r0]
005ba61c  00 00 00 1a                                      bne #0x5ba624
005ba620  dd a9 03 eb                                      bl #0x6a4d9c
005ba624  04 00 a0 e1                                      mov r0, r4
005ba628  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e4cbc, declared_size=288, range_size=288, mode=arm
; class-group: glitch::video::SShaderParameterDef
; alias: _ZNK6glitch5video19SShaderParameterDef19serializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::SShaderParameterDef::serializeAttributes(glitch::io::IAttributes*) const
; decoder-mode: arm
005e4cbc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e4cc0  01 40 a0 e1                                      mov r4, r1
005e4cc4  00 10 90 e5                                      ldr r1, [r0]
005e4cc8  00 30 94 e5                                      ldr r3, [r4]
005e4ccc  08 d0 4d e2                                      sub sp, sp, #8
005e4cd0  00 00 51 e3                                      cmp r1, #0
005e4cd4  04 10 81 12                                      addne r1, r1, #4
005e4cd8  00 50 a0 e1                                      mov r5, r0
005e4cdc  30 30 93 e5                                      ldr r3, [r3, #0x30]
005e4ce0  04 00 a0 e1                                      mov r0, r4
005e4ce4  33 ff 2f e1                                      blx r3
005e4ce8  00 00 a0 e3                                      mov r0, #0
005e4cec  b4 70 d5 e1                                      ldrh r7, [r5, #4]
005e4cf0  eb 0c 00 eb                                      bl #0x5e80a4
005e4cf4  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
005e4cf8  00 60 a0 e3                                      mov r6, #0
005e4cfc  00 60 8d e5                                      str r6, [sp]
005e4d00  00 30 a0 e1                                      mov r3, r0
005e4d04  07 20 a0 e1                                      mov r2, r7
005e4d08  00 c0 94 e5                                      ldr ip, [r4]
005e4d0c  01 10 8f e0                                      add r1, pc, r1
005e4d10  04 00 a0 e1                                      mov r0, r4
005e4d14  0f e0 a0 e1                                      mov lr, pc
005e4d18  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005e4d1c  06 00 a0 e1                                      mov r0, r6
005e4d20  06 80 d5 e5                                      ldrb r8, [r5, #6]
005e4d24  e2 0c 00 eb                                      bl #0x5e80b4
005e4d28  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
005e4d2c  01 70 a0 e3                                      mov r7, #1
005e4d30  00 70 8d e5                                      str r7, [sp]
005e4d34  00 30 a0 e1                                      mov r3, r0
005e4d38  08 20 a0 e1                                      mov r2, r8
005e4d3c  04 00 a0 e1                                      mov r0, r4
005e4d40  00 c0 94 e5                                      ldr ip, [r4]
005e4d44  01 10 8f e0                                      add r1, pc, r1
005e4d48  0f e0 a0 e1                                      mov lr, pc
005e4d4c  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005e4d50  78 10 9f e5                                      ldr r1, [pc, #0x78]
005e4d54  06 30 a0 e1                                      mov r3, r6
005e4d58  04 00 a0 e1                                      mov r0, r4
005e4d5c  07 20 d5 e5                                      ldrb r2, [r5, #7]
005e4d60  00 c0 94 e5                                      ldr ip, [r4]
005e4d64  01 10 8f e0                                      add r1, pc, r1
005e4d68  0f e0 a0 e1                                      mov lr, pc
005e4d6c  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005e4d70  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
005e4d74  04 00 a0 e1                                      mov r0, r4
005e4d78  08 20 95 e5                                      ldr r2, [r5, #8]
005e4d7c  07 30 a0 e1                                      mov r3, r7
005e4d80  00 c0 94 e5                                      ldr ip, [r4]
005e4d84  01 10 8f e0                                      add r1, pc, r1
005e4d88  0f e0 a0 e1                                      mov lr, pc
005e4d8c  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005e4d90  40 10 9f e5                                      ldr r1, [pc, #0x40]
005e4d94  07 30 a0 e1                                      mov r3, r7
005e4d98  04 00 a0 e1                                      mov r0, r4
005e4d9c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005e4da0  01 10 8f e0                                      add r1, pc, r1
005e4da4  00 c0 94 e5                                      ldr ip, [r4]
005e4da8  0f e0 a0 e1                                      mov lr, pc
005e4dac  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005e4db0  04 00 a0 e1                                      mov r0, r4
005e4db4  00 30 94 e5                                      ldr r3, [r4]
005e4db8  0f e0 a0 e1                                      mov lr, pc
005e4dbc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e4dc0  08 d0 8d e2                                      add sp, sp, #8
005e4dc4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005e4dc8  6c dc 2d 00 ec bc 2f 00 1c de 2f 00 bc bc 2f 00  .byte 0x6c, 0xdc, 0x2d, 0x00, 0xec, 0xbc, 0x2f, 0x00, 0x1c, 0xde, 0x2f, 0x00, 0xbc, 0xbc, 0x2f, 0x00
005e4dd8  d8 dd 2f 00                                      .byte 0xd8, 0xdd, 0x2f, 0x00

; FUNCTION 0x005e4ddc, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::SShaderParameterDef
; alias: _ZN6glitch5video19SShaderParameterDef21deserializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::SShaderParameterDef::deserializeAttributes(glitch::io::IAttributes*)
; decoder-mode: arm
005e4ddc  70 40 2d e9                                      push {r4, r5, r6, lr}
005e4de0  01 40 a0 e1                                      mov r4, r1
005e4de4  00 10 90 e5                                      ldr r1, [r0]
005e4de8  00 30 94 e5                                      ldr r3, [r4]
005e4dec  00 50 a0 e1                                      mov r5, r0
005e4df0  00 00 51 e3                                      cmp r1, #0
005e4df4  04 10 81 12                                      addne r1, r1, #4
005e4df8  04 00 a0 e1                                      mov r0, r4
005e4dfc  30 30 93 e5                                      ldr r3, [r3, #0x30]
005e4e00  33 ff 2f e1                                      blx r3
005e4e04  00 30 94 e5                                      ldr r3, [r4]
005e4e08  00 00 a0 e3                                      mov r0, #0
005e4e0c  00 61 93 e5                                      ldr r6, [r3, #0x100]
005e4e10  a3 0c 00 eb                                      bl #0x5e80a4
005e4e14  40 10 9f e5                                      ldr r1, [pc, #0x40]
005e4e18  00 20 a0 e1                                      mov r2, r0
005e4e1c  04 00 a0 e1                                      mov r0, r4
005e4e20  01 10 8f e0                                      add r1, pc, r1
005e4e24  36 ff 2f e1                                      blx r6
005e4e28  30 10 9f e5                                      ldr r1, [pc, #0x30]
005e4e2c  b4 00 c5 e1                                      strh r0, [r5, #4]
005e4e30  00 30 94 e5                                      ldr r3, [r4]
005e4e34  01 10 8f e0                                      add r1, pc, r1
005e4e38  04 00 a0 e1                                      mov r0, r4
005e4e3c  0f e0 a0 e1                                      mov lr, pc
005e4e40  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005e4e44  07 00 c5 e5                                      strb r0, [r5, #7]
005e4e48  00 30 94 e5                                      ldr r3, [r4]
005e4e4c  04 00 a0 e1                                      mov r0, r4
005e4e50  0f e0 a0 e1                                      mov lr, pc
005e4e54  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e4e58  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005e4e5c  58 db 2d 00 4c dd 2f 00                          .byte 0x58, 0xdb, 0x2d, 0x00, 0x4c, 0xdd, 0x2f, 0x00
