; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d4a08, declared_size=168, range_size=168, mode=arm
; class-group: MaterialData
; alias: _ZN12MaterialData11setMaterialERKN5boost13intrusive_ptrIN6glitch5video9CMaterialEEE
; demangled: MaterialData::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
007d4a08  30 40 2d e9                                      push {r4, r5, lr}
007d4a0c  00 30 91 e5                                      ldr r3, [r1]
007d4a10  0c d0 4d e2                                      sub sp, sp, #0xc
007d4a14  00 40 a0 e1                                      mov r4, r0
007d4a18  04 30 8d e5                                      str r3, [sp, #4]
007d4a1c  00 00 53 e3                                      cmp r3, #0
007d4a20  00 20 93 15                                      ldrne r2, [r3]
007d4a24  01 50 a0 e1                                      mov r5, r1
007d4a28  01 20 82 12                                      addne r2, r2, #1
007d4a2c  00 20 83 15                                      strne r2, [r3]
007d4a30  04 20 90 e5                                      ldr r2, [r0, #4]
007d4a34  04 30 9d 15                                      ldrne r3, [sp, #4]
007d4a38  08 00 8d e2                                      add r0, sp, #8
007d4a3c  04 30 84 e5                                      str r3, [r4, #4]
007d4a40  04 20 20 e5                                      str r2, [r0, #-4]!
007d4a44  67 f0 ec eb                                      bl #0x310be8
007d4a48  00 30 95 e5                                      ldr r3, [r5]
007d4a4c  08 00 8d e2                                      add r0, sp, #8
007d4a50  04 30 93 e5                                      ldr r3, [r3, #4]
007d4a54  00 30 8d e5                                      str r3, [sp]
007d4a58  00 00 53 e3                                      cmp r3, #0
007d4a5c  00 20 93 15                                      ldrne r2, [r3]
007d4a60  01 20 82 12                                      addne r2, r2, #1
007d4a64  00 20 83 15                                      strne r2, [r3]
007d4a68  00 30 9d 15                                      ldrne r3, [sp]
007d4a6c  00 20 94 e5                                      ldr r2, [r4]
007d4a70  00 30 84 e5                                      str r3, [r4]
007d4a74  08 20 20 e5                                      str r2, [r0, #-8]!
007d4a78  0d 00 a0 e1                                      mov r0, sp
007d4a7c  0d f6 ed eb                                      bl #0x3522b8
007d4a80  02 10 a0 e3                                      mov r1, #2
007d4a84  00 20 a0 e3                                      mov r2, #0
007d4a88  00 00 94 e5                                      ldr r0, [r4]
007d4a8c  1d e9 f7 eb                                      bl #0x5cef08
007d4a90  06 10 a0 e3                                      mov r1, #6
007d4a94  b8 00 c4 e1                                      strh r0, [r4, #8]
007d4a98  00 20 a0 e3                                      mov r2, #0
007d4a9c  00 00 94 e5                                      ldr r0, [r4]
007d4aa0  18 e9 f7 eb                                      bl #0x5cef08
007d4aa4  ba 00 c4 e1                                      strh r0, [r4, #0xa]
007d4aa8  0c d0 8d e2                                      add sp, sp, #0xc
007d4aac  30 80 bd e8                                      pop {r4, r5, pc}
