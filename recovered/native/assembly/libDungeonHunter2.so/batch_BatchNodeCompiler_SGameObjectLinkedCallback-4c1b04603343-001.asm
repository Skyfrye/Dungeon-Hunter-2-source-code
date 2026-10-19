; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ef180, declared_size=4, range_size=4, mode=arm
; class-group: batch::BatchNodeCompiler::SGameObjectLinkedCallback
; alias: _ZN5batch17BatchNodeCompiler25SGameObjectLinkedCallbackD1Ev
; demangled: batch::BatchNodeCompiler::SGameObjectLinkedCallback::~SGameObjectLinkedCallback()
; decoder-mode: arm
003ef180  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef394, declared_size=52, range_size=52, mode=arm
; class-group: batch::BatchNodeCompiler::SGameObjectLinkedCallback
; alias: _ZN5batch17BatchNodeCompiler25SGameObjectLinkedCallbackD0Ev
; demangled: batch::BatchNodeCompiler::SGameObjectLinkedCallback::~SGameObjectLinkedCallback()
; decoder-mode: arm
003ef394  24 30 9f e5                                      ldr r3, [pc, #0x24]
003ef398  24 20 9f e5                                      ldr r2, [pc, #0x24]
003ef39c  10 40 2d e9                                      push {r4, lr}
003ef3a0  03 30 8f e0                                      add r3, pc, r3
003ef3a4  02 20 93 e7                                      ldr r2, [r3, r2]
003ef3a8  00 40 a0 e1                                      mov r4, r0
003ef3ac  08 20 82 e2                                      add r2, r2, #8
003ef3b0  00 20 80 e5                                      str r2, [r0]
003ef3b4  21 84 fc eb                                      bl #0x310440
003ef3b8  04 00 a0 e1                                      mov r0, r4
003ef3bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003ef3c0  f0 56 5a 00 a0 1c 00 00                          .byte 0xf0, 0x56, 0x5a, 0x00, 0xa0, 0x1c, 0x00, 0x00

; FUNCTION 0x003efe58, declared_size=320, range_size=320, mode=arm
; class-group: batch::BatchNodeCompiler::SGameObjectLinkedCallback
; alias: _ZN5batch17BatchNodeCompiler25SGameObjectLinkedCallbackclEPN6glitch5scene10CBatchMeshEPvRKNS3_12SCompileInfoE
; demangled: batch::BatchNodeCompiler::SGameObjectLinkedCallback::operator()(glitch::scene::CBatchMesh*, void*, glitch::scene::SCompileInfo const&)
; decoder-mode: arm
003efe58  70 40 2d e9                                      push {r4, r5, r6, lr}
003efe5c  01 40 a0 e1                                      mov r4, r1
003efe60  00 10 a0 e3                                      mov r1, #0
003efe64  00 50 a0 e1                                      mov r5, r0
003efe68  02 60 a0 e1                                      mov r6, r2
003efe6c  08 d0 4d e2                                      sub sp, sp, #8
003efe70  01 20 a0 e1                                      mov r2, r1
003efe74  04 00 90 e5                                      ldr r0, [r0, #4]
003efe78  a6 65 06 eb                                      bl #0x589518
003efe7c  08 20 95 e5                                      ldr r2, [r5, #8]
003efe80  70 10 94 e5                                      ldr r1, [r4, #0x70]
003efe84  f4 c0 9f e5                                      ldr ip, [pc, #0xf4]
003efe88  20 30 92 e5                                      ldr r3, [r2, #0x20]
003efe8c  91 06 06 e0                                      mul r6, r1, r6
003efe90  00 00 53 e3                                      cmp r3, #0
003efe94  0c c0 8f e0                                      add ip, pc, ip
003efe98  08 50 94 e5                                      ldr r5, [r4, #8]
003efe9c  2c 60 86 e2                                      add r6, r6, #0x2c
003efea0  1c 40 82 e2                                      add r4, r2, #0x1c
003efea4  19 00 00 0a                                      beq #0x3eff10
003efea8  04 10 a0 e1                                      mov r1, r4
003efeac  00 00 00 ea                                      b #0x3efeb4
003efeb0  02 30 a0 e1                                      mov r3, r2
003efeb4  10 20 93 e5                                      ldr r2, [r3, #0x10]
003efeb8  02 00 50 e1                                      cmp r0, r2
003efebc  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
003efec0  08 20 93 95                                      ldrls r2, [r3, #8]
003efec4  01 30 a0 81                                      movhi r3, r1
003efec8  03 10 a0 e1                                      mov r1, r3
003efecc  00 00 52 e3                                      cmp r2, #0
003efed0  f6 ff ff 1a                                      bne #0x3efeb0
003efed4  03 00 54 e1                                      cmp r4, r3
003efed8  0e 00 00 0a                                      beq #0x3eff18
003efedc  10 20 93 e5                                      ldr r2, [r3, #0x10]
003efee0  02 00 50 e1                                      cmp r0, r2
003efee4  09 00 00 3a                                      blo #0x3eff10
003efee8  03 00 54 e1                                      cmp r4, r3
003efeec  09 00 00 0a                                      beq #0x3eff18
003efef0  14 30 93 e5                                      ldr r3, [r3, #0x14]
003efef4  00 00 53 e3                                      cmp r3, #0
003efef8  06 30 85 e7                                      str r3, [r5, r6]
003efefc  07 00 00 0a                                      beq #0x3eff20
003eff00  01 20 a0 e3                                      mov r2, #1
003eff04  fc 22 c3 e5                                      strb r2, [r3, #0x2fc]
003eff08  08 d0 8d e2                                      add sp, sp, #8
003eff0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003eff10  04 30 a0 e1                                      mov r3, r4
003eff14  f3 ff ff ea                                      b #0x3efee8
003eff18  00 30 a0 e3                                      mov r3, #0
003eff1c  06 30 85 e7                                      str r3, [r5, r6]
003eff20  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003eff24  03 30 9c e7                                      ldr r3, [ip, r3]
003eff28  00 30 93 e5                                      ldr r3, [r3]
003eff2c  02 00 53 e3                                      cmp r3, #2
003eff30  00 30 a0 03                                      moveq r3, #0
003eff34  00 30 83 05                                      streq r3, [r3]
003eff38  f0 ff ff 0a                                      beq #0x3eff00
003eff3c  01 00 53 e3                                      cmp r3, #1
003eff40  00 30 a0 13                                      movne r3, #0
003eff44  ed ff ff 1a                                      bne #0x3eff00
003eff48  38 00 9f e5                                      ldr r0, [pc, #0x38]
003eff4c  38 10 9f e5                                      ldr r1, [pc, #0x38]
003eff50  38 20 9f e5                                      ldr r2, [pc, #0x38]
003eff54  00 00 9c e7                                      ldr r0, [ip, r0]
003eff58  34 30 9f e5                                      ldr r3, [pc, #0x34]
003eff5c  48 c0 a0 e3                                      mov ip, #0x48
003eff60  01 10 8f e0                                      add r1, pc, r1
003eff64  03 30 8f e0                                      add r3, pc, r3
003eff68  a8 00 80 e2                                      add r0, r0, #0xa8
003eff6c  02 20 8f e0                                      add r2, pc, r2
003eff70  00 c0 8d e5                                      str ip, [sp]
003eff74  22 78 fc eb                                      bl #0x30e004
003eff78  00 30 a0 e3                                      mov r3, #0
003eff7c  df ff ff ea                                      b #0x3eff00
; mapping-symbol data/literal pool
003eff80  fc 4b 5a 00 c0 39 00 00 c0 19 00 00 78 e4 4c 00  .byte 0xfc, 0x4b, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x78, 0xe4, 0x4c, 0x00
003eff90  14 66 4d 00 24 66 4d 00                          .byte 0x14, 0x66, 0x4d, 0x00, 0x24, 0x66, 0x4d, 0x00
