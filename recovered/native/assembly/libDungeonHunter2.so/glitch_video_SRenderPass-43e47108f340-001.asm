; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e1064, declared_size=160, range_size=160, mode=arm
; class-group: glitch::video::SRenderPass
; alias: _ZNK6glitch5video11SRenderPass19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::SRenderPass::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005e1064  00 00 52 e3                                      cmp r2, #0
005e1068  70 40 2d e9                                      push {r4, r5, r6, lr}
005e106c  00 50 a0 e1                                      mov r5, r0
005e1070  01 40 a0 e1                                      mov r4, r1
005e1074  12 00 00 0a                                      beq #0x5e10c4
005e1078  00 30 92 e5                                      ldr r3, [r2]
005e107c  02 00 13 e3                                      tst r3, #2
005e1080  0f 00 00 0a                                      beq #0x5e10c4
005e1084  01 00 a0 e1                                      mov r0, r1
005e1088  00 30 91 e5                                      ldr r3, [r1]
005e108c  68 10 9f e5                                      ldr r1, [pc, #0x68]
005e1090  01 10 8f e0                                      add r1, pc, r1
005e1094  0f e0 a0 e1                                      mov lr, pc
005e1098  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005e109c  20 30 95 e5                                      ldr r3, [r5, #0x20]
005e10a0  04 10 a0 e1                                      mov r1, r4
005e10a4  03 00 a0 e1                                      mov r0, r3
005e10a8  00 30 93 e5                                      ldr r3, [r3]
005e10ac  0f e0 a0 e1                                      mov lr, pc
005e10b0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005e10b4  00 30 94 e5                                      ldr r3, [r4]
005e10b8  04 00 a0 e1                                      mov r0, r4
005e10bc  0f e0 a0 e1                                      mov lr, pc
005e10c0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e10c4  34 10 9f e5                                      ldr r1, [pc, #0x34]
005e10c8  00 30 94 e5                                      ldr r3, [r4]
005e10cc  04 00 a0 e1                                      mov r0, r4
005e10d0  01 10 8f e0                                      add r1, pc, r1
005e10d4  0f e0 a0 e1                                      mov lr, pc
005e10d8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005e10dc  05 00 a0 e1                                      mov r0, r5
005e10e0  04 10 a0 e1                                      mov r1, r4
005e10e4  b0 fe ff eb                                      bl #0x5e0bac
005e10e8  04 00 a0 e1                                      mov r0, r4
005e10ec  00 30 94 e5                                      ldr r3, [r4]
005e10f0  0f e0 a0 e1                                      mov lr, pc
005e10f4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e10f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005e10fc  98 09 30 00 60 09 30 00                          .byte 0x98, 0x09, 0x30, 0x00, 0x60, 0x09, 0x30, 0x00

; FUNCTION 0x005e1670, declared_size=124, range_size=124, mode=arm
; class-group: glitch::video::SRenderPass
; alias: _ZN6glitch5video11SRenderPass21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::SRenderPass::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
005e1670  70 40 2d e9                                      push {r4, r5, r6, lr}
005e1674  01 50 a0 e1                                      mov r5, r1
005e1678  68 10 9f e5                                      ldr r1, [pc, #0x68]
005e167c  20 d0 4d e2                                      sub sp, sp, #0x20
005e1680  00 30 95 e5                                      ldr r3, [r5]
005e1684  00 40 a0 e1                                      mov r4, r0
005e1688  01 10 8f e0                                      add r1, pc, r1
005e168c  05 00 a0 e1                                      mov r0, r5
005e1690  0f e0 a0 e1                                      mov lr, pc
005e1694  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005e1698  0d 00 a0 e1                                      mov r0, sp
005e169c  ce 9d fe eb                                      bl #0x588ddc
005e16a0  0d 00 a0 e1                                      mov r0, sp
005e16a4  05 10 a0 e1                                      mov r1, r5
005e16a8  95 fe ff eb                                      bl #0x5e1104
005e16ac  0d e0 a0 e1                                      mov lr, sp
005e16b0  04 c0 a0 e1                                      mov ip, r4
005e16b4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005e16b8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005e16bc  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
005e16c0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005e16c4  01 30 a0 e3                                      mov r3, #1
005e16c8  30 30 c4 e5                                      strb r3, [r4, #0x30]
005e16cc  05 00 a0 e1                                      mov r0, r5
005e16d0  00 30 95 e5                                      ldr r3, [r5]
005e16d4  0d 60 a0 e1                                      mov r6, sp
005e16d8  0f e0 a0 e1                                      mov lr, pc
005e16dc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e16e0  20 d0 8d e2                                      add sp, sp, #0x20
005e16e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005e16e8  a8 03 30 00                                      .byte 0xa8, 0x03, 0x30, 0x00
