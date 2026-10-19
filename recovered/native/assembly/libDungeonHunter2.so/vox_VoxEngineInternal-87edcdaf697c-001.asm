; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00862e70, declared_size=36, range_size=36, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal18RegisterStreamTypeEPFPNS_15StreamInterfaceEPvE
; demangled: vox::VoxEngineInternal::RegisterStreamType(vox::StreamInterface* (*)(void*))
; decoder-mode: arm
00862e70  c4 34 90 e5                                      ldr r3, [r0, #0x4c4]
00862e74  1e 00 53 e3                                      cmp r3, #0x1e
00862e78  03 21 80 d0                                      addle r2, r0, r3, lsl #2
00862e7c  00 30 e0 c3                                      mvngt r3, #0
00862e80  01 c0 83 d2                                      addle ip, r3, #1
00862e84  c4 c4 80 d5                                      strle ip, [r0, #0x4c4]
00862e88  44 14 82 d5                                      strle r1, [r2, #0x444]
00862e8c  03 00 a0 e1                                      mov r0, r3
00862e90  1e ff 2f e1                                      bx lr

; FUNCTION 0x00862e94, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal19RegisterDecoderTypeEPFPNS_16DecoderInterfaceEPvE
; demangled: vox::VoxEngineInternal::RegisterDecoderType(vox::DecoderInterface* (*)(void*))
; decoder-mode: arm
00862e94  48 35 90 e5                                      ldr r3, [r0, #0x548]
00862e98  1e 00 53 e3                                      cmp r3, #0x1e
00862e9c  13 2e 83 d2                                      addle r2, r3, #0x130
00862ea0  00 30 e0 c3                                      mvngt r3, #0
00862ea4  02 20 82 d2                                      addle r2, r2, #2
00862ea8  01 c0 83 d2                                      addle ip, r3, #1
00862eac  48 c5 80 d5                                      strle ip, [r0, #0x548]
00862eb0  02 11 80 d7                                      strle r1, [r0, r2, lsl #2]
00862eb4  03 00 a0 e1                                      mov r0, r3
00862eb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00862ebc, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal17UpdateDebugServerEv
; demangled: vox::VoxEngineInternal::UpdateDebugServer()
; decoder-mode: arm
00862ebc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00862ec0, declared_size=460, range_size=460, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal8Update3DEv
; demangled: vox::VoxEngineInternal::Update3D()
; decoder-mode: arm
00862ec0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00862ec4  4c 35 90 e5                                      ldr r3, [r0, #0x54c]
00862ec8  18 d0 4d e2                                      sub sp, sp, #0x18
00862ecc  00 40 a0 e1                                      mov r4, r0
00862ed0  00 00 53 e3                                      cmp r3, #0
00862ed4  2e 00 00 0a                                      beq #0x862f94
00862ed8  34 24 d0 e5                                      ldrb r2, [r0, #0x434]
00862edc  00 00 52 e3                                      cmp r2, #0
00862ee0  2d 00 00 1a                                      bne #0x862f9c
00862ee4  35 34 d4 e5                                      ldrb r3, [r4, #0x435]
00862ee8  00 00 53 e3                                      cmp r3, #0
00862eec  36 00 00 1a                                      bne #0x862fcc
00862ef0  36 34 d4 e5                                      ldrb r3, [r4, #0x436]
00862ef4  00 00 53 e3                                      cmp r3, #0
00862ef8  40 00 00 1a                                      bne #0x863000
00862efc  37 34 d4 e5                                      ldrb r3, [r4, #0x437]
00862f00  00 00 53 e3                                      cmp r3, #0
00862f04  49 00 00 1a                                      bne #0x863030
00862f08  38 34 d4 e5                                      ldrb r3, [r4, #0x438]
00862f0c  00 00 53 e3                                      cmp r3, #0
00862f10  52 00 00 1a                                      bne #0x863060
00862f14  39 34 d4 e5                                      ldrb r3, [r4, #0x439]
00862f18  00 00 53 e3                                      cmp r3, #0
00862f1c  1c 00 00 0a                                      beq #0x862f94
00862f20  04 20 a0 e1                                      mov r2, r4
00862f24  41 3e 84 e2                                      add r3, r4, #0x410
00862f28  10 e4 b2 e5                                      ldr lr, [r2, #0x410]!
00862f2c  04 30 83 e2                                      add r3, r3, #4
00862f30  04 80 93 e4                                      ldr r8, [r3], #4
00862f34  10 70 92 e5                                      ldr r7, [r2, #0x10]
00862f38  1c c4 94 e5                                      ldr ip, [r4, #0x41c]
00862f3c  00 60 93 e5                                      ldr r6, [r3]
00862f40  24 54 94 e5                                      ldr r5, [r4, #0x424]
00862f44  4c 35 94 e5                                      ldr r3, [r4, #0x54c]
00862f48  00 00 a0 e3                                      mov r0, #0
00862f4c  04 10 8d e2                                      add r1, sp, #4
00862f50  10 20 8d e2                                      add r2, sp, #0x10
00862f54  14 00 8d e5                                      str r0, [sp, #0x14]
00862f58  08 00 8d e5                                      str r0, [sp, #8]
00862f5c  04 80 81 e4                                      str r8, [r1], #4
00862f60  04 70 82 e4                                      str r7, [r2], #4
00862f64  00 60 81 e5                                      str r6, [r1]
00862f68  00 50 82 e5                                      str r5, [r2]
00862f6c  00 e0 8d e5                                      str lr, [sp]
00862f70  0c c0 8d e5                                      str ip, [sp, #0xc]
00862f74  03 00 a0 e1                                      mov r0, r3
00862f78  05 10 a0 e3                                      mov r1, #5
00862f7c  00 30 93 e5                                      ldr r3, [r3]
00862f80  0d 20 a0 e1                                      mov r2, sp
00862f84  0f e0 a0 e1                                      mov lr, pc
00862f88  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00862f8c  00 30 a0 e3                                      mov r3, #0
00862f90  39 34 c4 e5                                      strb r3, [r4, #0x439]
00862f94  18 d0 8d e2                                      add sp, sp, #0x18
00862f98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00862f9c  42 2e 80 e2                                      add r2, r0, #0x420
00862fa0  08 20 82 e2                                      add r2, r2, #8
00862fa4  03 00 a0 e1                                      mov r0, r3
00862fa8  00 10 a0 e3                                      mov r1, #0
00862fac  00 30 93 e5                                      ldr r3, [r3]
00862fb0  0f e0 a0 e1                                      mov lr, pc
00862fb4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00862fb8  00 30 a0 e3                                      mov r3, #0
00862fbc  34 34 c4 e5                                      strb r3, [r4, #0x434]
00862fc0  35 34 d4 e5                                      ldrb r3, [r4, #0x435]
00862fc4  00 00 53 e3                                      cmp r3, #0
00862fc8  c8 ff ff 0a                                      beq #0x862ef0
00862fcc  4c 35 94 e5                                      ldr r3, [r4, #0x54c]
00862fd0  42 2e 84 e2                                      add r2, r4, #0x420
00862fd4  0c 20 82 e2                                      add r2, r2, #0xc
00862fd8  03 00 a0 e1                                      mov r0, r3
00862fdc  01 10 a0 e3                                      mov r1, #1
00862fe0  00 30 93 e5                                      ldr r3, [r3]
00862fe4  0f e0 a0 e1                                      mov lr, pc
00862fe8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00862fec  00 30 a0 e3                                      mov r3, #0
00862ff0  35 34 c4 e5                                      strb r3, [r4, #0x435]
00862ff4  36 34 d4 e5                                      ldrb r3, [r4, #0x436]
00862ff8  00 00 53 e3                                      cmp r3, #0
00862ffc  be ff ff 0a                                      beq #0x862efc
00863000  4c 35 94 e5                                      ldr r3, [r4, #0x54c]
00863004  02 10 a0 e3                                      mov r1, #2
00863008  43 2e 84 e2                                      add r2, r4, #0x430
0086300c  03 00 a0 e1                                      mov r0, r3
00863010  00 30 93 e5                                      ldr r3, [r3]
00863014  0f e0 a0 e1                                      mov lr, pc
00863018  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0086301c  00 30 a0 e3                                      mov r3, #0
00863020  36 34 c4 e5                                      strb r3, [r4, #0x436]
00863024  37 34 d4 e5                                      ldrb r3, [r4, #0x437]
00863028  00 00 53 e3                                      cmp r3, #0
0086302c  b5 ff ff 0a                                      beq #0x862f08
00863030  4c 35 94 e5                                      ldr r3, [r4, #0x54c]
00863034  03 10 a0 e3                                      mov r1, #3
00863038  fe 2f 84 e2                                      add r2, r4, #0x3f8
0086303c  03 00 a0 e1                                      mov r0, r3
00863040  00 30 93 e5                                      ldr r3, [r3]
00863044  0f e0 a0 e1                                      mov lr, pc
00863048  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0086304c  00 30 a0 e3                                      mov r3, #0
00863050  37 34 c4 e5                                      strb r3, [r4, #0x437]
00863054  38 34 d4 e5                                      ldrb r3, [r4, #0x438]
00863058  00 00 53 e3                                      cmp r3, #0
0086305c  ac ff ff 0a                                      beq #0x862f14
00863060  4c 35 94 e5                                      ldr r3, [r4, #0x54c]
00863064  01 2b 84 e2                                      add r2, r4, #0x400
00863068  04 20 82 e2                                      add r2, r2, #4
0086306c  03 00 a0 e1                                      mov r0, r3
00863070  04 10 a0 e3                                      mov r1, #4
00863074  00 30 93 e5                                      ldr r3, [r3]
00863078  0f e0 a0 e1                                      mov lr, pc
0086307c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00863080  00 30 a0 e3                                      mov r3, #0
00863084  38 34 c4 e5                                      strb r3, [r4, #0x438]
00863088  a1 ff ff ea                                      b #0x862f14

; FUNCTION 0x0086308c, declared_size=36, range_size=36, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal9UpdateDSPEf
; demangled: vox::VoxEngineInternal::UpdateDSP(float)
; decoder-mode: arm
0086308c  10 40 2d e9                                      push {r4, lr}
00863090  4c 35 90 e5                                      ldr r3, [r0, #0x54c]
00863094  00 00 53 e3                                      cmp r3, #0
00863098  03 00 00 0a                                      beq #0x8630ac
0086309c  03 00 a0 e1                                      mov r0, r3
008630a0  00 30 93 e5                                      ldr r3, [r3]
008630a4  0f e0 a0 e1                                      mov lr, pc
008630a8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
008630ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008630b0, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal23_SetDefault3DParametersEv
; demangled: vox::VoxEngineInternal::_SetDefault3DParameters()
; decoder-mode: arm
008630b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008630b4, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal16SetRoutingVolumeEPcS1_NS_22VoxDSPGeneralParameter14BusRoutingTypeEfff
; demangled: vox::VoxEngineInternal::SetRoutingVolume(char*, char*, vox::VoxDSPGeneralParameter::BusRoutingType, float, float, float)
; decoder-mode: arm
008630b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008630b8, declared_size=44, range_size=44, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal13GetOutputModeEv
; demangled: vox::VoxEngineInternal::GetOutputMode()
; decoder-mode: arm
008630b8  10 40 2d e9                                      push {r4, lr}
008630bc  4c 35 90 e5                                      ldr r3, [r0, #0x54c]
008630c0  00 00 53 e3                                      cmp r3, #0
008630c4  04 00 00 0a                                      beq #0x8630dc
008630c8  03 00 a0 e1                                      mov r0, r3
008630cc  00 30 93 e5                                      ldr r3, [r3]
008630d0  0f e0 a0 e1                                      mov lr, pc
008630d4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008630d8  10 80 bd e8                                      pop {r4, pc}
008630dc  00 00 e0 e3                                      mvn r0, #0
008630e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008630e4, declared_size=44, range_size=44, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal13SetOutputModeENS_13VoxOutputModeE
; demangled: vox::VoxEngineInternal::SetOutputMode(vox::VoxOutputMode)
; decoder-mode: arm
008630e4  10 40 2d e9                                      push {r4, lr}
008630e8  4c 35 90 e5                                      ldr r3, [r0, #0x54c]
008630ec  00 00 53 e3                                      cmp r3, #0
008630f0  04 00 00 0a                                      beq #0x863108
008630f4  03 00 a0 e1                                      mov r0, r3
008630f8  00 30 93 e5                                      ldr r3, [r3]
008630fc  0f e0 a0 e1                                      mov lr, pc
00863100  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00863104  10 80 bd e8                                      pop {r4, pc}
00863108  03 00 a0 e1                                      mov r0, r3
0086310c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00864d10, declared_size=52, range_size=52, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal11IsSuspendedEv
; demangled: vox::VoxEngineInternal::IsSuspended()
; decoder-mode: arm
00864d10  70 40 2d e9                                      push {r4, r5, r6, lr}
00864d14  fd 4f 80 e2                                      add r4, r0, #0x3f4
00864d18  00 50 a0 e1                                      mov r5, r0
00864d1c  04 00 a0 e1                                      mov r0, r4
00864d20  d5 b9 00 eb                                      bl #0x89347c
00864d24  94 35 95 e5                                      ldr r3, [r5, #0x594]
00864d28  04 00 a0 e1                                      mov r0, r4
00864d2c  00 00 53 e3                                      cmp r3, #0
00864d30  00 40 a0 d3                                      movle r4, #0
00864d34  01 40 a0 c3                                      movgt r4, #1
00864d38  ce b9 00 eb                                      bl #0x893478
00864d3c  04 00 a0 e1                                      mov r0, r4
00864d40  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00864d44, declared_size=128, range_size=128, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal6ResumeEv
; demangled: vox::VoxEngineInternal::Resume()
; decoder-mode: arm
00864d44  70 40 2d e9                                      push {r4, r5, r6, lr}
00864d48  4c 35 90 e5                                      ldr r3, [r0, #0x54c]
00864d4c  00 40 a0 e1                                      mov r4, r0
00864d50  94 25 90 e5                                      ldr r2, [r0, #0x594]
00864d54  00 00 53 e3                                      cmp r3, #0
00864d58  0b 00 00 0a                                      beq #0x864d8c
00864d5c  fd 5f 80 e2                                      add r5, r0, #0x3f4
00864d60  05 00 a0 e1                                      mov r0, r5
00864d64  c4 b9 00 eb                                      bl #0x89347c
00864d68  94 35 94 e5                                      ldr r3, [r4, #0x594]
00864d6c  01 00 53 e3                                      cmp r3, #1
00864d70  06 00 00 da                                      ble #0x864d90
00864d74  94 35 94 e5                                      ldr r3, [r4, #0x594]
00864d78  01 30 43 e2                                      sub r3, r3, #1
00864d7c  94 35 84 e5                                      str r3, [r4, #0x594]
00864d80  05 00 a0 e1                                      mov r0, r5
00864d84  70 40 bd e8                                      pop {r4, r5, r6, lr}
00864d88  ba b9 00 ea                                      b #0x893478
00864d8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00864d90  94 35 94 e5                                      ldr r3, [r4, #0x594]
00864d94  01 00 53 e3                                      cmp r3, #1
00864d98  f8 ff ff 1a                                      bne #0x864d80
00864d9c  4c 35 94 e5                                      ldr r3, [r4, #0x54c]
00864da0  00 00 53 e3                                      cmp r3, #0
00864da4  03 00 00 0a                                      beq #0x864db8
00864da8  03 00 a0 e1                                      mov r0, r3
00864dac  00 30 93 e5                                      ldr r3, [r3]
00864db0  0f e0 a0 e1                                      mov lr, pc
00864db4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00864db8  00 30 a0 e3                                      mov r3, #0
00864dbc  94 35 84 e5                                      str r3, [r4, #0x594]
00864dc0  ee ff ff ea                                      b #0x864d80

; FUNCTION 0x00864dc4, declared_size=100, range_size=100, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal7SuspendEv
; demangled: vox::VoxEngineInternal::Suspend()
; decoder-mode: arm
00864dc4  70 40 2d e9                                      push {r4, r5, r6, lr}
00864dc8  4c 35 90 e5                                      ldr r3, [r0, #0x54c]
00864dcc  00 40 a0 e1                                      mov r4, r0
00864dd0  00 00 53 e3                                      cmp r3, #0
00864dd4  12 00 00 0a                                      beq #0x864e24
00864dd8  fd 5f 80 e2                                      add r5, r0, #0x3f4
00864ddc  05 00 a0 e1                                      mov r0, r5
00864de0  a5 b9 00 eb                                      bl #0x89347c
00864de4  94 35 94 e5                                      ldr r3, [r4, #0x594]
00864de8  00 00 53 e3                                      cmp r3, #0
00864dec  06 00 00 1a                                      bne #0x864e0c
00864df0  4c 35 94 e5                                      ldr r3, [r4, #0x54c]
00864df4  00 00 53 e3                                      cmp r3, #0
00864df8  03 00 00 0a                                      beq #0x864e0c
00864dfc  03 00 a0 e1                                      mov r0, r3
00864e00  00 30 93 e5                                      ldr r3, [r3]
00864e04  0f e0 a0 e1                                      mov lr, pc
00864e08  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00864e0c  94 35 94 e5                                      ldr r3, [r4, #0x594]
00864e10  05 00 a0 e1                                      mov r0, r5
00864e14  01 30 83 e2                                      add r3, r3, #1
00864e18  94 35 84 e5                                      str r3, [r4, #0x594]
00864e1c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00864e20  94 b9 00 ea                                      b #0x893478
00864e24  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00865c50, declared_size=84, range_size=84, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal18SetSFXPresetActiveEibf
; demangled: vox::VoxEngineInternal::SetSFXPresetActive(int, bool, float)
; decoder-mode: arm
00865c50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865c54  fd 4f 80 e2                                      add r4, r0, #0x3f4
00865c58  00 50 a0 e1                                      mov r5, r0
00865c5c  04 00 a0 e1                                      mov r0, r4
00865c60  01 80 a0 e1                                      mov r8, r1
00865c64  02 70 a0 e1                                      mov r7, r2
00865c68  03 60 a0 e1                                      mov r6, r3
00865c6c  02 b6 00 eb                                      bl #0x89347c
00865c70  4c c5 95 e5                                      ldr ip, [r5, #0x54c]
00865c74  00 00 5c e3                                      cmp ip, #0
00865c78  06 00 00 0a                                      beq #0x865c98
00865c7c  0c 00 a0 e1                                      mov r0, ip
00865c80  08 10 a0 e1                                      mov r1, r8
00865c84  07 20 a0 e1                                      mov r2, r7
00865c88  06 30 a0 e1                                      mov r3, r6
00865c8c  00 c0 9c e5                                      ldr ip, [ip]
00865c90  0f e0 a0 e1                                      mov lr, pc
00865c94  34 f0 9c e5                                      ldr pc, [ip, #0x34]
00865c98  04 00 a0 e1                                      mov r0, r4
00865c9c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00865ca0  f4 b5 00 ea                                      b #0x893478

; FUNCTION 0x00865ca4, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal20SetDynamicBusRoutingEPc
; demangled: vox::VoxEngineInternal::SetDynamicBusRouting(char*)
; decoder-mode: arm
00865ca4  70 40 2d e9                                      push {r4, r5, r6, lr}
00865ca8  fd 4f 80 e2                                      add r4, r0, #0x3f4
00865cac  00 50 a0 e1                                      mov r5, r0
00865cb0  04 00 a0 e1                                      mov r0, r4
00865cb4  01 60 a0 e1                                      mov r6, r1
00865cb8  ef b5 00 eb                                      bl #0x89347c
00865cbc  4c 35 95 e5                                      ldr r3, [r5, #0x54c]
00865cc0  00 00 53 e3                                      cmp r3, #0
00865cc4  04 00 00 0a                                      beq #0x865cdc
00865cc8  03 00 a0 e1                                      mov r0, r3
00865ccc  06 10 a0 e1                                      mov r1, r6
00865cd0  00 30 93 e5                                      ldr r3, [r3]
00865cd4  0f e0 a0 e1                                      mov lr, pc
00865cd8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00865cdc  04 00 a0 e1                                      mov r0, r4
00865ce0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00865ce4  e3 b5 00 ea                                      b #0x893478

; FUNCTION 0x00865ce8, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal19SetStaticBusRoutingEPc
; demangled: vox::VoxEngineInternal::SetStaticBusRouting(char*)
; decoder-mode: arm
00865ce8  70 40 2d e9                                      push {r4, r5, r6, lr}
00865cec  fd 4f 80 e2                                      add r4, r0, #0x3f4
00865cf0  00 50 a0 e1                                      mov r5, r0
00865cf4  04 00 a0 e1                                      mov r0, r4
00865cf8  01 60 a0 e1                                      mov r6, r1
00865cfc  de b5 00 eb                                      bl #0x89347c
00865d00  4c 35 95 e5                                      ldr r3, [r5, #0x54c]
00865d04  00 00 53 e3                                      cmp r3, #0
00865d08  04 00 00 0a                                      beq #0x865d20
00865d0c  03 00 a0 e1                                      mov r0, r3
00865d10  06 10 a0 e1                                      mov r1, r6
00865d14  00 30 93 e5                                      ldr r3, [r3]
00865d18  0f e0 a0 e1                                      mov lr, pc
00865d1c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00865d20  04 00 a0 e1                                      mov r0, r4
00865d24  70 40 bd e8                                      pop {r4, r5, r6, lr}
00865d28  d2 b5 00 ea                                      b #0x893478

; FUNCTION 0x00865d2c, declared_size=52, range_size=52, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22Get3DGeneralParameteriEiRi
; demangled: vox::VoxEngineInternal::Get3DGeneralParameteri(int, int&)
; decoder-mode: arm
00865d2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865d30  fd 4f 80 e2                                      add r4, r0, #0x3f4
00865d34  00 50 a0 e1                                      mov r5, r0
00865d38  04 00 a0 e1                                      mov r0, r4
00865d3c  01 60 a0 e1                                      mov r6, r1
00865d40  02 70 a0 e1                                      mov r7, r2
00865d44  cc b5 00 eb                                      bl #0x89347c
00865d48  02 00 56 e3                                      cmp r6, #2
00865d4c  30 34 95 05                                      ldreq r3, [r5, #0x430]
00865d50  04 00 a0 e1                                      mov r0, r4
00865d54  00 30 87 05                                      streq r3, [r7]
00865d58  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00865d5c  c5 b5 00 ea                                      b #0x893478

; FUNCTION 0x00865d60, declared_size=72, range_size=72, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22Get3DGeneralParameterfEiRf
; demangled: vox::VoxEngineInternal::Get3DGeneralParameterf(int, float&)
; decoder-mode: arm
00865d60  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865d64  fd 4f 80 e2                                      add r4, r0, #0x3f4
00865d68  01 60 a0 e1                                      mov r6, r1
00865d6c  00 50 a0 e1                                      mov r5, r0
00865d70  04 00 a0 e1                                      mov r0, r4
00865d74  02 70 a0 e1                                      mov r7, r2
00865d78  bf b5 00 eb                                      bl #0x89347c
00865d7c  00 00 56 e3                                      cmp r6, #0
00865d80  04 00 00 1a                                      bne #0x865d98
00865d84  28 34 95 e5                                      ldr r3, [r5, #0x428]
00865d88  00 30 87 e5                                      str r3, [r7]
00865d8c  04 00 a0 e1                                      mov r0, r4
00865d90  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00865d94  b7 b5 00 ea                                      b #0x893478
00865d98  01 00 56 e3                                      cmp r6, #1
00865d9c  2c 34 95 05                                      ldreq r3, [r5, #0x42c]
00865da0  00 30 87 05                                      streq r3, [r7]
00865da4  f8 ff ff ea                                      b #0x865d8c

; FUNCTION 0x00865da8, declared_size=64, range_size=64, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal21Get3DGeneralParameterERNS_22Vox3DGeneralParametersE
; demangled: vox::VoxEngineInternal::Get3DGeneralParameter(vox::Vox3DGeneralParameters&)
; decoder-mode: arm
00865da8  70 40 2d e9                                      push {r4, r5, r6, lr}
00865dac  fd 5f 80 e2                                      add r5, r0, #0x3f4
00865db0  00 40 a0 e1                                      mov r4, r0
00865db4  05 00 a0 e1                                      mov r0, r5
00865db8  01 60 a0 e1                                      mov r6, r1
00865dbc  ae b5 00 eb                                      bl #0x89347c
00865dc0  28 24 94 e5                                      ldr r2, [r4, #0x428]
00865dc4  06 30 a0 e1                                      mov r3, r6
00865dc8  05 00 a0 e1                                      mov r0, r5
00865dcc  04 20 83 e4                                      str r2, [r3], #4
00865dd0  2c 24 94 e5                                      ldr r2, [r4, #0x42c]
00865dd4  04 20 86 e5                                      str r2, [r6, #4]
00865dd8  30 24 94 e5                                      ldr r2, [r4, #0x430]
00865ddc  04 20 83 e5                                      str r2, [r3, #4]
00865de0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00865de4  a3 b5 00 ea                                      b #0x893478

; FUNCTION 0x00865de8, declared_size=112, range_size=112, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal24Get3DListenerOrientationERfS1_S1_S1_S1_S1_
; demangled: vox::VoxEngineInternal::Get3DListenerOrientation(float&, float&, float&, float&, float&, float&)
; decoder-mode: arm
00865de8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00865dec  fd 5f 80 e2                                      add r5, r0, #0x3f4
00865df0  00 40 a0 e1                                      mov r4, r0
00865df4  04 d0 4d e2                                      sub sp, sp, #4
00865df8  05 00 a0 e1                                      mov r0, r5
00865dfc  03 b0 a0 e1                                      mov fp, r3
00865e00  01 60 a0 e1                                      mov r6, r1
00865e04  02 70 a0 e1                                      mov r7, r2
00865e08  28 90 9d e5                                      ldr sb, [sp, #0x28]
00865e0c  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
00865e10  30 80 9d e5                                      ldr r8, [sp, #0x30]
00865e14  98 b5 00 eb                                      bl #0x89347c
00865e18  10 34 94 e5                                      ldr r3, [r4, #0x410]
00865e1c  05 00 a0 e1                                      mov r0, r5
00865e20  00 30 86 e5                                      str r3, [r6]
00865e24  14 34 94 e5                                      ldr r3, [r4, #0x414]
00865e28  00 30 87 e5                                      str r3, [r7]
00865e2c  18 34 94 e5                                      ldr r3, [r4, #0x418]
00865e30  00 30 8b e5                                      str r3, [fp]
00865e34  1c 34 94 e5                                      ldr r3, [r4, #0x41c]
00865e38  00 30 89 e5                                      str r3, [sb]
00865e3c  20 34 94 e5                                      ldr r3, [r4, #0x420]
00865e40  00 30 8a e5                                      str r3, [sl]
00865e44  24 34 94 e5                                      ldr r3, [r4, #0x424]
00865e48  00 30 88 e5                                      str r3, [r8]
00865e4c  04 d0 8d e2                                      add sp, sp, #4
00865e50  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00865e54  87 b5 00 ea                                      b #0x893478

; FUNCTION 0x00865e58, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal21Get3DListenerVelocityERfS1_S1_
; demangled: vox::VoxEngineInternal::Get3DListenerVelocity(float&, float&, float&)
; decoder-mode: arm
00865e58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865e5c  fd 5f 80 e2                                      add r5, r0, #0x3f4
00865e60  00 40 a0 e1                                      mov r4, r0
00865e64  05 00 a0 e1                                      mov r0, r5
00865e68  03 80 a0 e1                                      mov r8, r3
00865e6c  01 60 a0 e1                                      mov r6, r1
00865e70  02 70 a0 e1                                      mov r7, r2
00865e74  80 b5 00 eb                                      bl #0x89347c
00865e78  04 34 94 e5                                      ldr r3, [r4, #0x404]
00865e7c  05 00 a0 e1                                      mov r0, r5
00865e80  00 30 86 e5                                      str r3, [r6]
00865e84  08 34 94 e5                                      ldr r3, [r4, #0x408]
00865e88  00 30 87 e5                                      str r3, [r7]
00865e8c  0c 34 94 e5                                      ldr r3, [r4, #0x40c]
00865e90  00 30 88 e5                                      str r3, [r8]
00865e94  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00865e98  76 b5 00 ea                                      b #0x893478

; FUNCTION 0x00865e9c, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal21Get3DListenerPositionERfS1_S1_
; demangled: vox::VoxEngineInternal::Get3DListenerPosition(float&, float&, float&)
; decoder-mode: arm
00865e9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865ea0  fd 5f 80 e2                                      add r5, r0, #0x3f4
00865ea4  00 40 a0 e1                                      mov r4, r0
00865ea8  05 00 a0 e1                                      mov r0, r5
00865eac  03 80 a0 e1                                      mov r8, r3
00865eb0  01 60 a0 e1                                      mov r6, r1
00865eb4  02 70 a0 e1                                      mov r7, r2
00865eb8  6f b5 00 eb                                      bl #0x89347c
00865ebc  f8 33 94 e5                                      ldr r3, [r4, #0x3f8]
00865ec0  05 00 a0 e1                                      mov r0, r5
00865ec4  00 30 86 e5                                      str r3, [r6]
00865ec8  fc 33 94 e5                                      ldr r3, [r4, #0x3fc]
00865ecc  00 30 87 e5                                      str r3, [r7]
00865ed0  00 34 94 e5                                      ldr r3, [r4, #0x400]
00865ed4  00 30 88 e5                                      str r3, [r8]
00865ed8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00865edc  65 b5 00 ea                                      b #0x893478

; FUNCTION 0x00865ee0, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22Set3DGeneralParameteriEii
; demangled: vox::VoxEngineInternal::Set3DGeneralParameteri(int, int)
; decoder-mode: arm
00865ee0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865ee4  fd 5f 80 e2                                      add r5, r0, #0x3f4
00865ee8  00 40 a0 e1                                      mov r4, r0
00865eec  05 00 a0 e1                                      mov r0, r5
00865ef0  01 60 a0 e1                                      mov r6, r1
00865ef4  02 70 a0 e1                                      mov r7, r2
00865ef8  5f b5 00 eb                                      bl #0x89347c
00865efc  02 00 56 e3                                      cmp r6, #2
00865f00  01 30 a0 03                                      moveq r3, #1
00865f04  05 00 a0 e1                                      mov r0, r5
00865f08  36 34 c4 05                                      strbeq r3, [r4, #0x436]
00865f0c  30 74 84 05                                      streq r7, [r4, #0x430]
00865f10  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00865f14  57 b5 00 ea                                      b #0x893478

; FUNCTION 0x00865f18, declared_size=80, range_size=80, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22Set3DGeneralParameterfEif
; demangled: vox::VoxEngineInternal::Set3DGeneralParameterf(int, float)
; decoder-mode: arm
00865f18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865f1c  fd 5f 80 e2                                      add r5, r0, #0x3f4
00865f20  00 40 a0 e1                                      mov r4, r0
00865f24  05 00 a0 e1                                      mov r0, r5
00865f28  01 60 a0 e1                                      mov r6, r1
00865f2c  02 70 a0 e1                                      mov r7, r2
00865f30  51 b5 00 eb                                      bl #0x89347c
00865f34  00 00 56 e3                                      cmp r6, #0
00865f38  01 30 a0 03                                      moveq r3, #1
00865f3c  34 34 c4 05                                      strbeq r3, [r4, #0x434]
00865f40  28 74 84 05                                      streq r7, [r4, #0x428]
00865f44  01 00 00 0a                                      beq #0x865f50
00865f48  01 00 56 e3                                      cmp r6, #1
00865f4c  02 00 00 0a                                      beq #0x865f5c
00865f50  05 00 a0 e1                                      mov r0, r5
00865f54  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00865f58  46 b5 00 ea                                      b #0x893478
00865f5c  35 64 c4 e5                                      strb r6, [r4, #0x435]
00865f60  2c 74 84 e5                                      str r7, [r4, #0x42c]
00865f64  f9 ff ff ea                                      b #0x865f50

; FUNCTION 0x00865f68, declared_size=80, range_size=80, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal21Set3DGeneralParameterERKNS_22Vox3DGeneralParametersE
; demangled: vox::VoxEngineInternal::Set3DGeneralParameter(vox::Vox3DGeneralParameters const&)
; decoder-mode: arm
00865f68  70 40 2d e9                                      push {r4, r5, r6, lr}
00865f6c  fd 5f 80 e2                                      add r5, r0, #0x3f4
00865f70  00 40 a0 e1                                      mov r4, r0
00865f74  05 00 a0 e1                                      mov r0, r5
00865f78  01 60 a0 e1                                      mov r6, r1
00865f7c  3e b5 00 eb                                      bl #0x89347c
00865f80  06 20 a0 e1                                      mov r2, r6
00865f84  04 10 92 e4                                      ldr r1, [r2], #4
00865f88  01 30 a0 e3                                      mov r3, #1
00865f8c  05 00 a0 e1                                      mov r0, r5
00865f90  28 14 84 e5                                      str r1, [r4, #0x428]
00865f94  04 10 96 e5                                      ldr r1, [r6, #4]
00865f98  2c 14 84 e5                                      str r1, [r4, #0x42c]
00865f9c  04 20 92 e5                                      ldr r2, [r2, #4]
00865fa0  36 34 c4 e5                                      strb r3, [r4, #0x436]
00865fa4  34 34 c4 e5                                      strb r3, [r4, #0x434]
00865fa8  30 24 84 e5                                      str r2, [r4, #0x430]
00865fac  35 34 c4 e5                                      strb r3, [r4, #0x435]
00865fb0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00865fb4  2f b5 00 ea                                      b #0x893478

; FUNCTION 0x00865fb8, declared_size=96, range_size=96, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal24Set3DListenerOrientationEffffff
; demangled: vox::VoxEngineInternal::Set3DListenerOrientation(float, float, float, float, float, float)
; decoder-mode: arm
00865fb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00865fbc  fd 5f 80 e2                                      add r5, r0, #0x3f4
00865fc0  00 40 a0 e1                                      mov r4, r0
00865fc4  04 d0 4d e2                                      sub sp, sp, #4
00865fc8  05 00 a0 e1                                      mov r0, r5
00865fcc  03 b0 a0 e1                                      mov fp, r3
00865fd0  28 70 9d e5                                      ldr r7, [sp, #0x28]
00865fd4  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
00865fd8  30 80 9d e5                                      ldr r8, [sp, #0x30]
00865fdc  01 a0 a0 e1                                      mov sl, r1
00865fe0  02 90 a0 e1                                      mov sb, r2
00865fe4  24 b5 00 eb                                      bl #0x89347c
00865fe8  01 30 a0 e3                                      mov r3, #1
00865fec  05 00 a0 e1                                      mov r0, r5
00865ff0  39 34 c4 e5                                      strb r3, [r4, #0x439]
00865ff4  10 a4 84 e5                                      str sl, [r4, #0x410]
00865ff8  14 94 84 e5                                      str sb, [r4, #0x414]
00865ffc  18 b4 84 e5                                      str fp, [r4, #0x418]
00866000  1c 74 84 e5                                      str r7, [r4, #0x41c]
00866004  20 64 84 e5                                      str r6, [r4, #0x420]
00866008  24 84 84 e5                                      str r8, [r4, #0x424]
0086600c  04 d0 8d e2                                      add sp, sp, #4
00866010  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00866014  17 b5 00 ea                                      b #0x893478

; FUNCTION 0x00866018, declared_size=64, range_size=64, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal21Set3DListenerVelocityEfff
; demangled: vox::VoxEngineInternal::Set3DListenerVelocity(float, float, float)
; decoder-mode: arm
00866018  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086601c  fd 5f 80 e2                                      add r5, r0, #0x3f4
00866020  00 40 a0 e1                                      mov r4, r0
00866024  05 00 a0 e1                                      mov r0, r5
00866028  03 80 a0 e1                                      mov r8, r3
0086602c  01 60 a0 e1                                      mov r6, r1
00866030  02 70 a0 e1                                      mov r7, r2
00866034  10 b5 00 eb                                      bl #0x89347c
00866038  01 30 a0 e3                                      mov r3, #1
0086603c  05 00 a0 e1                                      mov r0, r5
00866040  38 34 c4 e5                                      strb r3, [r4, #0x438]
00866044  04 64 84 e5                                      str r6, [r4, #0x404]
00866048  08 74 84 e5                                      str r7, [r4, #0x408]
0086604c  0c 84 84 e5                                      str r8, [r4, #0x40c]
00866050  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00866054  07 b5 00 ea                                      b #0x893478

; FUNCTION 0x00866058, declared_size=64, range_size=64, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal21Set3DListenerPositionEfff
; demangled: vox::VoxEngineInternal::Set3DListenerPosition(float, float, float)
; decoder-mode: arm
00866058  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086605c  fd 5f 80 e2                                      add r5, r0, #0x3f4
00866060  00 40 a0 e1                                      mov r4, r0
00866064  05 00 a0 e1                                      mov r0, r5
00866068  03 80 a0 e1                                      mov r8, r3
0086606c  01 60 a0 e1                                      mov r6, r1
00866070  02 70 a0 e1                                      mov r7, r2
00866074  00 b5 00 eb                                      bl #0x89347c
00866078  01 30 a0 e3                                      mov r3, #1
0086607c  05 00 a0 e1                                      mov r0, r5
00866080  37 34 c4 e5                                      strb r3, [r4, #0x437]
00866084  f8 63 84 e5                                      str r6, [r4, #0x3f8]
00866088  fc 73 84 e5                                      str r7, [r4, #0x3fc]
0086608c  00 84 84 e5                                      str r8, [r4, #0x400]
00866090  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00866094  f7 b4 00 ea                                      b #0x893478

; FUNCTION 0x00866098, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal12GetGroupGainEi
; demangled: vox::VoxEngineInternal::GetGroupGain(int)
; decoder-mode: arm
00866098  70 40 2d e9                                      push {r4, r5, r6, lr}
0086609c  fd 4f 80 e2                                      add r4, r0, #0x3f4
008660a0  00 50 a0 e1                                      mov r5, r0
008660a4  04 00 a0 e1                                      mov r0, r4
008660a8  01 60 a0 e1                                      mov r6, r1
008660ac  f2 b4 00 eb                                      bl #0x89347c
008660b0  1f 00 56 e3                                      cmp r6, #0x1f
008660b4  14 30 a0 93                                      movls r3, #0x14
008660b8  93 56 25 90                                      mlals r5, r3, r6, r5
008660bc  00 50 a0 83                                      movhi r5, #0
008660c0  f8 50 95 95                                      ldrls r5, [r5, #0xf8]
008660c4  04 00 a0 e1                                      mov r0, r4
008660c8  ea b4 00 eb                                      bl #0x893478
008660cc  05 00 a0 e1                                      mov r0, r5
008660d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008660d4, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal13GetMasterGainEv
; demangled: vox::VoxEngineInternal::GetMasterGain()
; decoder-mode: arm
008660d4  70 40 2d e9                                      push {r4, r5, r6, lr}
008660d8  fd 4f 80 e2                                      add r4, r0, #0x3f4
008660dc  00 50 a0 e1                                      mov r5, r0
008660e0  04 00 a0 e1                                      mov r0, r4
008660e4  e4 b4 00 eb                                      bl #0x89347c
008660e8  e4 50 95 e5                                      ldr r5, [r5, #0xe4]
008660ec  04 00 a0 e1                                      mov r0, r4
008660f0  e0 b4 00 eb                                      bl #0x893478
008660f4  05 00 a0 e1                                      mov r0, r5
008660f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00866258, declared_size=24, range_size=24, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal15SetPriorityBankEiiiNS_20PriorityBankBehaviorE
; demangled: vox::VoxEngineInternal::SetPriorityBank(int, int, int, vox::PriorityBankBehavior)
; decoder-mode: arm
00866258  dc 00 90 e5                                      ldr r0, [r0, #0xdc]
0086625c  00 c0 9d e5                                      ldr ip, [sp]
00866260  00 00 50 e3                                      cmp r0, #0
00866264  1e ff 2f 01                                      bxeq lr
00866268  00 c0 8d e5                                      str ip, [sp]
0086626c  d2 ff ff ea                                      b #0x8661bc

; FUNCTION 0x00867260, declared_size=272, range_size=272, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal12GetDebugInfoERNS_9DebugInfoE
; demangled: vox::VoxEngineInternal::GetDebugInfo(vox::DebugInfo&)
; decoder-mode: arm
00867260  70 40 2d e9                                      push {r4, r5, r6, lr}
00867264  54 60 80 e2                                      add r6, r0, #0x54
00867268  08 d0 4d e2                                      sub sp, sp, #8
0086726c  00 50 a0 e1                                      mov r5, r0
00867270  06 00 a0 e1                                      mov r0, r6
00867274  01 40 a0 e1                                      mov r4, r1
00867278  b2 b0 00 eb                                      bl #0x893548
0086727c  18 30 95 e5                                      ldr r3, [r5, #0x18]
00867280  06 00 a0 e1                                      mov r0, r6
00867284  c4 60 85 e2                                      add r6, r5, #0xc4
00867288  00 30 84 e5                                      str r3, [r4]
0086728c  a2 b0 00 eb                                      bl #0x89351c
00867290  06 00 a0 e1                                      mov r0, r6
00867294  ab b0 00 eb                                      bl #0x893548
00867298  88 30 95 e5                                      ldr r3, [r5, #0x88]
0086729c  78 50 85 e2                                      add r5, r5, #0x78
008672a0  04 00 8d e2                                      add r0, sp, #4
008672a4  04 30 84 e5                                      str r3, [r4, #4]
008672a8  05 10 a0 e1                                      mov r1, r5
008672ac  d8 ef ff eb                                      bl #0x863214
008672b0  05 10 a0 e1                                      mov r1, r5
008672b4  0d 00 a0 e1                                      mov r0, sp
008672b8  d8 ef ff eb                                      bl #0x863220
008672bc  00 30 a0 e3                                      mov r3, #0
008672c0  08 30 84 e5                                      str r3, [r4, #8]
008672c4  0c 00 9d e8                                      ldm sp, {r2, r3}
008672c8  03 00 52 e1                                      cmp r2, r3
008672cc  13 00 00 0a                                      beq #0x867320
008672d0  18 00 93 e5                                      ldr r0, [r3, #0x18]
008672d4  b0 f8 ff eb                                      bl #0x86559c
008672d8  00 00 50 e3                                      cmp r0, #0
008672dc  08 30 94 15                                      ldrne r3, [r4, #8]
008672e0  01 30 83 12                                      addne r3, r3, #1
008672e4  08 30 84 15                                      strne r3, [r4, #8]
008672e8  04 30 9d e5                                      ldr r3, [sp, #4]
008672ec  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008672f0  00 00 52 e3                                      cmp r2, #0
008672f4  01 00 00 1a                                      bne #0x867300
008672f8  0e 00 00 ea                                      b #0x867338
008672fc  03 20 a0 e1                                      mov r2, r3
00867300  08 30 92 e5                                      ldr r3, [r2, #8]
00867304  00 00 53 e3                                      cmp r3, #0
00867308  fb ff ff 1a                                      bne #0x8672fc
0086730c  02 30 a0 e1                                      mov r3, r2
00867310  04 30 8d e5                                      str r3, [sp, #4]
00867314  00 20 9d e5                                      ldr r2, [sp]
00867318  03 00 52 e1                                      cmp r2, r3
0086731c  eb ff ff 1a                                      bne #0x8672d0
00867320  00 30 e0 e3                                      mvn r3, #0
00867324  0c 30 84 e5                                      str r3, [r4, #0xc]
00867328  06 00 a0 e1                                      mov r0, r6
0086732c  7a b0 00 eb                                      bl #0x89351c
00867330  08 d0 8d e2                                      add sp, sp, #8
00867334  70 80 bd e8                                      pop {r4, r5, r6, pc}
00867338  04 10 93 e5                                      ldr r1, [r3, #4]
0086733c  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00867340  00 00 53 e1                                      cmp r3, r0
00867344  05 00 00 1a                                      bne #0x867360
00867348  01 30 a0 e1                                      mov r3, r1
0086734c  04 10 91 e5                                      ldr r1, [r1, #4]
00867350  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00867354  03 00 52 e1                                      cmp r2, r3
00867358  fa ff ff 0a                                      beq #0x867348
0086735c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00867360  02 00 51 e1                                      cmp r1, r2
00867364  01 30 a0 11                                      movne r3, r1
00867368  04 30 8d e5                                      str r3, [sp, #4]
0086736c  e8 ff ff ea                                      b #0x867314

; FUNCTION 0x00867370, declared_size=348, range_size=348, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal10PrintDebugEv
; demangled: vox::VoxEngineInternal::PrintDebug()
; decoder-mode: arm
00867370  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00867374  fd 4f 80 e2                                      add r4, r0, #0x3f4
00867378  00 a0 a0 e1                                      mov sl, r0
0086737c  0c d0 4d e2                                      sub sp, sp, #0xc
00867380  04 00 a0 e1                                      mov r0, r4
00867384  3c b0 00 eb                                      bl #0x89347c
00867388  4c 35 9a e5                                      ldr r3, [sl, #0x54c]
0086738c  00 00 53 e3                                      cmp r3, #0
00867390  03 00 00 0a                                      beq #0x8673a4
00867394  03 00 a0 e1                                      mov r0, r3
00867398  00 30 93 e5                                      ldr r3, [r3]
0086739c  0f e0 a0 e1                                      mov lr, pc
008673a0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008673a4  04 00 a0 e1                                      mov r0, r4
008673a8  54 50 8a e2                                      add r5, sl, #0x54
008673ac  31 b0 00 eb                                      bl #0x893478
008673b0  c4 60 8a e2                                      add r6, sl, #0xc4
008673b4  05 00 a0 e1                                      mov r0, r5
008673b8  62 b0 00 eb                                      bl #0x893548
008673bc  08 70 8a e2                                      add r7, sl, #8
008673c0  06 00 a0 e1                                      mov r0, r6
008673c4  5f b0 00 eb                                      bl #0x893548
008673c8  04 00 8d e2                                      add r0, sp, #4
008673cc  07 10 a0 e1                                      mov r1, r7
008673d0  8f ef ff eb                                      bl #0x863214
008673d4  07 10 a0 e1                                      mov r1, r7
008673d8  0d 00 a0 e1                                      mov r0, sp
008673dc  8f ef ff eb                                      bl #0x863220
008673e0  0c 00 9d e8                                      ldm sp, {r2, r3}
008673e4  78 a0 8a e2                                      add sl, sl, #0x78
008673e8  02 00 53 e1                                      cmp r3, r2
008673ec  22 00 00 0a                                      beq #0x86747c
008673f0  18 00 93 e5                                      ldr r0, [r3, #0x18]
008673f4  7c f9 ff eb                                      bl #0x8659ec
008673f8  04 00 a0 e1                                      mov r0, r4
008673fc  1e b0 00 eb                                      bl #0x89347c
00867400  04 30 9d e5                                      ldr r3, [sp, #4]
00867404  0a 00 a0 e1                                      mov r0, sl
00867408  18 80 93 e5                                      ldr r8, [r3, #0x18]
0086740c  40 70 b8 e5                                      ldr r7, [r8, #0x40]!
00867410  07 00 58 e1                                      cmp r8, r7
00867414  08 00 00 0a                                      beq #0x86743c
00867418  d8 20 c7 e1                                      ldrd r2, r3, [r7, #8]
0086741c  48 ef ff eb                                      bl #0x863144
00867420  00 00 50 e3                                      cmp r0, #0
00867424  00 00 00 0a                                      beq #0x86742c
00867428  7e f6 ff eb                                      bl #0x864e28
0086742c  00 70 97 e5                                      ldr r7, [r7]
00867430  0a 00 a0 e1                                      mov r0, sl
00867434  07 00 58 e1                                      cmp r8, r7
00867438  f6 ff ff 1a                                      bne #0x867418
0086743c  04 00 a0 e1                                      mov r0, r4
00867440  0c b0 00 eb                                      bl #0x893478
00867444  04 30 9d e5                                      ldr r3, [sp, #4]
00867448  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086744c  00 00 52 e3                                      cmp r2, #0
00867450  01 00 00 1a                                      bne #0x86745c
00867454  0e 00 00 ea                                      b #0x867494
00867458  03 20 a0 e1                                      mov r2, r3
0086745c  08 30 92 e5                                      ldr r3, [r2, #8]
00867460  00 00 53 e3                                      cmp r3, #0
00867464  fb ff ff 1a                                      bne #0x867458
00867468  02 30 a0 e1                                      mov r3, r2
0086746c  04 30 8d e5                                      str r3, [sp, #4]
00867470  00 20 9d e5                                      ldr r2, [sp]
00867474  02 00 53 e1                                      cmp r3, r2
00867478  dc ff ff 1a                                      bne #0x8673f0
0086747c  06 00 a0 e1                                      mov r0, r6
00867480  25 b0 00 eb                                      bl #0x89351c
00867484  05 00 a0 e1                                      mov r0, r5
00867488  23 b0 00 eb                                      bl #0x89351c
0086748c  0c d0 8d e2                                      add sp, sp, #0xc
00867490  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00867494  04 10 93 e5                                      ldr r1, [r3, #4]
00867498  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086749c  00 00 53 e1                                      cmp r3, r0
008674a0  05 00 00 1a                                      bne #0x8674bc
008674a4  01 30 a0 e1                                      mov r3, r1
008674a8  04 10 91 e5                                      ldr r1, [r1, #4]
008674ac  0c 20 91 e5                                      ldr r2, [r1, #0xc]
008674b0  03 00 52 e1                                      cmp r2, r3
008674b4  fa ff ff 0a                                      beq #0x8674a4
008674b8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008674bc  02 00 51 e1                                      cmp r1, r2
008674c0  01 30 a0 11                                      movne r3, r1
008674c4  04 30 8d e5                                      str r3, [sp, #4]
008674c8  e8 ff ff ea                                      b #0x867470

; FUNCTION 0x008674cc, declared_size=244, range_size=244, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal16GetEmitterObjectERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::GetEmitterObject(vox::EmitterHandle&)
; decoder-mode: arm
008674cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008674d0  0c d0 4d e2                                      sub sp, sp, #0xc
008674d4  00 30 91 e5                                      ldr r3, [r1]
008674d8  00 50 a0 e1                                      mov r5, r0
008674dc  0d 20 a0 e1                                      mov r2, sp
008674e0  01 00 a0 e1                                      mov r0, r1
008674e4  01 40 a0 e1                                      mov r4, r1
008674e8  04 10 8d e2                                      add r1, sp, #4
008674ec  0f e0 a0 e1                                      mov lr, pc
008674f0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008674f4  00 30 9d e5                                      ldr r3, [sp]
008674f8  55 3f 83 e2                                      add r3, r3, #0x154
008674fc  03 21 95 e7                                      ldr r2, [r5, r3, lsl #2]
00867500  04 30 9d e5                                      ldr r3, [sp, #4]
00867504  03 00 52 e1                                      cmp r2, r3
00867508  14 00 00 0a                                      beq #0x867560
0086750c  00 30 94 e5                                      ldr r3, [r4]
00867510  04 00 a0 e1                                      mov r0, r4
00867514  0f e0 a0 e1                                      mov lr, pc
00867518  08 f0 93 e5                                      ldr pc, [r3, #8]
0086751c  00 20 a0 e1                                      mov r2, r0
00867520  01 30 a0 e1                                      mov r3, r1
00867524  78 00 85 e2                                      add r0, r5, #0x78
00867528  05 ef ff eb                                      bl #0x863144
0086752c  00 70 50 e2                                      subs r7, r0, #0
00867530  11 00 00 0a                                      beq #0x86757c
00867534  14 20 97 e5                                      ldr r2, [r7, #0x14]
00867538  00 30 94 e5                                      ldr r3, [r4]
0086753c  04 00 a0 e1                                      mov r0, r4
00867540  55 1f 82 e2                                      add r1, r2, #0x154
00867544  01 11 95 e7                                      ldr r1, [r5, r1, lsl #2]
00867548  00 20 8d e5                                      str r2, [sp]
0086754c  0f e0 a0 e1                                      mov lr, pc
00867550  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00867554  07 00 a0 e1                                      mov r0, r7
00867558  0c d0 8d e2                                      add sp, sp, #0xc
0086755c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00867560  00 30 94 e5                                      ldr r3, [r4]
00867564  04 00 a0 e1                                      mov r0, r4
00867568  0f e0 a0 e1                                      mov lr, pc
0086756c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00867570  00 70 50 e2                                      subs r7, r0, #0
00867574  f6 ff ff 1a                                      bne #0x867554
00867578  e3 ff ff ea                                      b #0x86750c
0086757c  d0 60 85 e2                                      add r6, r5, #0xd0
00867580  06 00 a0 e1                                      mov r0, r6
00867584  ef af 00 eb                                      bl #0x893548
00867588  00 30 94 e5                                      ldr r3, [r4]
0086758c  04 00 a0 e1                                      mov r0, r4
00867590  0f e0 a0 e1                                      mov lr, pc
00867594  08 f0 93 e5                                      ldr pc, [r3, #8]
00867598  00 20 a0 e1                                      mov r2, r0
0086759c  01 30 a0 e1                                      mov r3, r1
008675a0  98 00 85 e2                                      add r0, r5, #0x98
008675a4  e6 ee ff eb                                      bl #0x863144
008675a8  00 70 a0 e1                                      mov r7, r0
008675ac  06 00 a0 e1                                      mov r0, r6
008675b0  d9 af 00 eb                                      bl #0x89351c
008675b4  00 00 57 e3                                      cmp r7, #0
008675b8  dd ff ff 1a                                      bne #0x867534
008675bc  e4 ff ff ea                                      b #0x867554

; FUNCTION 0x008675c0, declared_size=72, range_size=72, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal11GetUserDataERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::GetUserData(vox::EmitterHandle&)
; decoder-mode: arm
008675c0  70 40 2d e9                                      push {r4, r5, r6, lr}
008675c4  c4 40 80 e2                                      add r4, r0, #0xc4
008675c8  00 50 a0 e1                                      mov r5, r0
008675cc  01 60 a0 e1                                      mov r6, r1
008675d0  04 00 a0 e1                                      mov r0, r4
008675d4  db af 00 eb                                      bl #0x893548
008675d8  05 00 a0 e1                                      mov r0, r5
008675dc  06 10 a0 e1                                      mov r1, r6
008675e0  b9 ff ff eb                                      bl #0x8674cc
008675e4  00 00 50 e3                                      cmp r0, #0
008675e8  00 50 e0 03                                      mvneq r5, #0
008675ec  01 00 00 0a                                      beq #0x8675f8
008675f0  68 f7 ff eb                                      bl #0x865398
008675f4  00 50 a0 e1                                      mov r5, r0
008675f8  04 00 a0 e1                                      mov r0, r4
008675fc  c6 af 00 eb                                      bl #0x89351c
00867600  05 00 a0 e1                                      mov r0, r5
00867604  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00867608, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal11SetUserDataERNS_13EmitterHandleERNS_21EmitterHandleUserDataE
; demangled: vox::VoxEngineInternal::SetUserData(vox::EmitterHandle&, vox::EmitterHandleUserData&)
; decoder-mode: arm
00867608  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086760c  c4 40 80 e2                                      add r4, r0, #0xc4
00867610  00 50 a0 e1                                      mov r5, r0
00867614  01 60 a0 e1                                      mov r6, r1
00867618  04 00 a0 e1                                      mov r0, r4
0086761c  02 70 a0 e1                                      mov r7, r2
00867620  c8 af 00 eb                                      bl #0x893548
00867624  05 00 a0 e1                                      mov r0, r5
00867628  06 10 a0 e1                                      mov r1, r6
0086762c  a6 ff ff eb                                      bl #0x8674cc
00867630  00 00 50 e3                                      cmp r0, #0
00867634  01 00 00 0a                                      beq #0x867640
00867638  07 10 a0 e1                                      mov r1, r7
0086763c  5f f7 ff eb                                      bl #0x8653c0
00867640  04 00 a0 e1                                      mov r0, r4
00867644  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00867648  b3 af 00 ea                                      b #0x89351c

; FUNCTION 0x0086764c, declared_size=140, range_size=140, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal24SetInteractiveMusicStateERNS_13EmitterHandleEPKc
; demangled: vox::VoxEngineInternal::SetInteractiveMusicState(vox::EmitterHandle&, char const*)
; decoder-mode: arm
0086764c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00867650  c4 40 80 e2                                      add r4, r0, #0xc4
00867654  00 50 a0 e1                                      mov r5, r0
00867658  01 60 a0 e1                                      mov r6, r1
0086765c  04 00 a0 e1                                      mov r0, r4
00867660  02 70 a0 e1                                      mov r7, r2
00867664  b7 af 00 eb                                      bl #0x893548
00867668  05 00 a0 e1                                      mov r0, r5
0086766c  06 10 a0 e1                                      mov r1, r6
00867670  95 ff ff eb                                      bl #0x8674cc
00867674  00 50 50 e2                                      subs r5, r0, #0
00867678  0a 00 00 0a                                      beq #0x8676a8
0086767c  18 31 95 e5                                      ldr r3, [r5, #0x118]
00867680  50 20 93 e5                                      ldr r2, [r3, #0x50]
00867684  00 00 52 e3                                      cmp r2, #0
00867688  3c 30 93 05                                      ldreq r3, [r3, #0x3c]
0086768c  00 30 a0 13                                      movne r3, #0
00867690  03 00 a0 e1                                      mov r0, r3
00867694  00 30 93 e5                                      ldr r3, [r3]
00867698  0f e0 a0 e1                                      mov lr, pc
0086769c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008676a0  04 00 50 e3                                      cmp r0, #4
008676a4  02 00 00 0a                                      beq #0x8676b4
008676a8  04 00 a0 e1                                      mov r0, r4
008676ac  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008676b0  99 af 00 ea                                      b #0x89351c
008676b4  14 01 95 e5                                      ldr r0, [r5, #0x114]
008676b8  00 00 50 e3                                      cmp r0, #0
008676bc  f9 ff ff 0a                                      beq #0x8676a8
008676c0  07 10 a0 e1                                      mov r1, r7
008676c4  9e 2e 00 eb                                      bl #0x873144
008676c8  05 00 a0 e1                                      mov r0, r5
008676cc  07 10 a0 e1                                      mov r1, r7
008676d0  f9 fc ff eb                                      bl #0x866abc
008676d4  f3 ff ff ea                                      b #0x8676a8

; FUNCTION 0x008676d8, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22SetDSPEmitterParameterERNS_13EmitterHandleEiPv
; demangled: vox::VoxEngineInternal::SetDSPEmitterParameter(vox::EmitterHandle&, int, void*)
; decoder-mode: arm
008676d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008676dc  c4 40 80 e2                                      add r4, r0, #0xc4
008676e0  00 50 a0 e1                                      mov r5, r0
008676e4  01 60 a0 e1                                      mov r6, r1
008676e8  04 00 a0 e1                                      mov r0, r4
008676ec  02 70 a0 e1                                      mov r7, r2
008676f0  03 80 a0 e1                                      mov r8, r3
008676f4  93 af 00 eb                                      bl #0x893548
008676f8  05 00 a0 e1                                      mov r0, r5
008676fc  06 10 a0 e1                                      mov r1, r6
00867700  71 ff ff eb                                      bl #0x8674cc
00867704  00 00 50 e3                                      cmp r0, #0
00867708  02 00 00 0a                                      beq #0x867718
0086770c  07 10 a0 e1                                      mov r1, r7
00867710  08 20 a0 e1                                      mov r2, r8
00867714  ec fc ff eb                                      bl #0x866acc
00867718  04 00 a0 e1                                      mov r0, r4
0086771c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00867720  7d af 00 ea                                      b #0x89351c

; FUNCTION 0x00867724, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22Get3DEmitterParameteriERNS_13EmitterHandleEiRi
; demangled: vox::VoxEngineInternal::Get3DEmitterParameteri(vox::EmitterHandle&, int, int&)
; decoder-mode: arm
00867724  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00867728  c4 40 80 e2                                      add r4, r0, #0xc4
0086772c  00 50 a0 e1                                      mov r5, r0
00867730  01 60 a0 e1                                      mov r6, r1
00867734  04 00 a0 e1                                      mov r0, r4
00867738  02 70 a0 e1                                      mov r7, r2
0086773c  03 80 a0 e1                                      mov r8, r3
00867740  80 af 00 eb                                      bl #0x893548
00867744  05 00 a0 e1                                      mov r0, r5
00867748  06 10 a0 e1                                      mov r1, r6
0086774c  5e ff ff eb                                      bl #0x8674cc
00867750  00 00 50 e3                                      cmp r0, #0
00867754  02 00 00 0a                                      beq #0x867764
00867758  07 10 a0 e1                                      mov r1, r7
0086775c  08 20 a0 e1                                      mov r2, r8
00867760  37 f6 ff eb                                      bl #0x865044
00867764  04 00 a0 e1                                      mov r0, r4
00867768  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0086776c  6a af 00 ea                                      b #0x89351c

; FUNCTION 0x00867770, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22Get3DEmitterParameterfERNS_13EmitterHandleEiRf
; demangled: vox::VoxEngineInternal::Get3DEmitterParameterf(vox::EmitterHandle&, int, float&)
; decoder-mode: arm
00867770  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00867774  c4 40 80 e2                                      add r4, r0, #0xc4
00867778  00 50 a0 e1                                      mov r5, r0
0086777c  01 60 a0 e1                                      mov r6, r1
00867780  04 00 a0 e1                                      mov r0, r4
00867784  02 70 a0 e1                                      mov r7, r2
00867788  03 80 a0 e1                                      mov r8, r3
0086778c  6d af 00 eb                                      bl #0x893548
00867790  05 00 a0 e1                                      mov r0, r5
00867794  06 10 a0 e1                                      mov r1, r6
00867798  4b ff ff eb                                      bl #0x8674cc
0086779c  00 00 50 e3                                      cmp r0, #0
008677a0  02 00 00 0a                                      beq #0x8677b0
008677a4  07 10 a0 e1                                      mov r1, r7
008677a8  08 20 a0 e1                                      mov r2, r8
008677ac  fb f5 ff eb                                      bl #0x864fa0
008677b0  04 00 a0 e1                                      mov r0, r4
008677b4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008677b8  57 af 00 ea                                      b #0x89351c

; FUNCTION 0x008677bc, declared_size=184, range_size=184, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22Get3DEmitterParametersERNS_13EmitterHandleERNS_22Vox3DEmitterParametersE
; demangled: vox::VoxEngineInternal::Get3DEmitterParameters(vox::EmitterHandle&, vox::Vox3DEmitterParameters&)
; decoder-mode: arm
008677bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008677c0  c4 60 80 e2                                      add r6, r0, #0xc4
008677c4  00 50 a0 e1                                      mov r5, r0
008677c8  01 70 a0 e1                                      mov r7, r1
008677cc  06 00 a0 e1                                      mov r0, r6
008677d0  02 40 a0 e1                                      mov r4, r2
008677d4  5b af 00 eb                                      bl #0x893548
008677d8  05 00 a0 e1                                      mov r0, r5
008677dc  07 10 a0 e1                                      mov r1, r7
008677e0  39 ff ff eb                                      bl #0x8674cc
008677e4  00 50 50 e2                                      subs r5, r0, #0
008677e8  1e 00 00 0a                                      beq #0x867868
008677ec  00 10 a0 e3                                      mov r1, #0
008677f0  04 20 a0 e1                                      mov r2, r4
008677f4  12 f6 ff eb                                      bl #0x865044
008677f8  05 00 a0 e1                                      mov r0, r5
008677fc  01 10 a0 e3                                      mov r1, #1
00867800  04 20 84 e2                                      add r2, r4, #4
00867804  e5 f5 ff eb                                      bl #0x864fa0
00867808  05 00 a0 e1                                      mov r0, r5
0086780c  02 10 a0 e3                                      mov r1, #2
00867810  08 20 84 e2                                      add r2, r4, #8
00867814  e1 f5 ff eb                                      bl #0x864fa0
00867818  05 00 a0 e1                                      mov r0, r5
0086781c  03 10 a0 e3                                      mov r1, #3
00867820  0c 20 84 e2                                      add r2, r4, #0xc
00867824  dd f5 ff eb                                      bl #0x864fa0
00867828  05 00 a0 e1                                      mov r0, r5
0086782c  04 10 a0 e3                                      mov r1, #4
00867830  10 20 84 e2                                      add r2, r4, #0x10
00867834  d9 f5 ff eb                                      bl #0x864fa0
00867838  05 00 a0 e1                                      mov r0, r5
0086783c  05 10 a0 e3                                      mov r1, #5
00867840  14 20 84 e2                                      add r2, r4, #0x14
00867844  d5 f5 ff eb                                      bl #0x864fa0
00867848  05 00 a0 e1                                      mov r0, r5
0086784c  06 10 a0 e3                                      mov r1, #6
00867850  18 20 84 e2                                      add r2, r4, #0x18
00867854  d1 f5 ff eb                                      bl #0x864fa0
00867858  05 00 a0 e1                                      mov r0, r5
0086785c  1c 20 84 e2                                      add r2, r4, #0x1c
00867860  07 10 a0 e3                                      mov r1, #7
00867864  cd f5 ff eb                                      bl #0x864fa0
00867868  06 00 a0 e1                                      mov r0, r6
0086786c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00867870  29 af 00 ea                                      b #0x89351c

; FUNCTION 0x00867874, declared_size=96, range_size=96, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal21Get3DEmitterDirectionERNS_13EmitterHandleERfS3_S3_
; demangled: vox::VoxEngineInternal::Get3DEmitterDirection(vox::EmitterHandle&, float&, float&, float&)
; decoder-mode: arm
00867874  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00867878  c4 40 80 e2                                      add r4, r0, #0xc4
0086787c  0c d0 4d e2                                      sub sp, sp, #0xc
00867880  00 50 a0 e1                                      mov r5, r0
00867884  01 70 a0 e1                                      mov r7, r1
00867888  04 00 a0 e1                                      mov r0, r4
0086788c  02 a0 a0 e1                                      mov sl, r2
00867890  03 80 a0 e1                                      mov r8, r3
00867894  28 60 9d e5                                      ldr r6, [sp, #0x28]
00867898  2a af 00 eb                                      bl #0x893548
0086789c  05 00 a0 e1                                      mov r0, r5
008678a0  07 10 a0 e1                                      mov r1, r7
008678a4  08 ff ff eb                                      bl #0x8674cc
008678a8  00 00 50 e3                                      cmp r0, #0
008678ac  04 00 00 0a                                      beq #0x8678c4
008678b0  0a 20 a0 e1                                      mov r2, sl
008678b4  08 30 a0 e1                                      mov r3, r8
008678b8  0a 10 a0 e3                                      mov r1, #0xa
008678bc  00 60 8d e5                                      str r6, [sp]
008678c0  8f f5 ff eb                                      bl #0x864f04
008678c4  04 00 a0 e1                                      mov r0, r4
008678c8  0c d0 8d e2                                      add sp, sp, #0xc
008678cc  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
008678d0  11 af 00 ea                                      b #0x89351c

; FUNCTION 0x008678d4, declared_size=96, range_size=96, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal20Get3DEmitterVelocityERNS_13EmitterHandleERfS3_S3_
; demangled: vox::VoxEngineInternal::Get3DEmitterVelocity(vox::EmitterHandle&, float&, float&, float&)
; decoder-mode: arm
008678d4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008678d8  c4 40 80 e2                                      add r4, r0, #0xc4
008678dc  0c d0 4d e2                                      sub sp, sp, #0xc
008678e0  00 50 a0 e1                                      mov r5, r0
008678e4  01 70 a0 e1                                      mov r7, r1
008678e8  04 00 a0 e1                                      mov r0, r4
008678ec  02 a0 a0 e1                                      mov sl, r2
008678f0  03 80 a0 e1                                      mov r8, r3
008678f4  28 60 9d e5                                      ldr r6, [sp, #0x28]
008678f8  12 af 00 eb                                      bl #0x893548
008678fc  05 00 a0 e1                                      mov r0, r5
00867900  07 10 a0 e1                                      mov r1, r7
00867904  f0 fe ff eb                                      bl #0x8674cc
00867908  00 00 50 e3                                      cmp r0, #0
0086790c  04 00 00 0a                                      beq #0x867924
00867910  0a 20 a0 e1                                      mov r2, sl
00867914  08 30 a0 e1                                      mov r3, r8
00867918  09 10 a0 e3                                      mov r1, #9
0086791c  00 60 8d e5                                      str r6, [sp]
00867920  77 f5 ff eb                                      bl #0x864f04
00867924  04 00 a0 e1                                      mov r0, r4
00867928  0c d0 8d e2                                      add sp, sp, #0xc
0086792c  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
00867930  f9 ae 00 ea                                      b #0x89351c

; FUNCTION 0x00867934, declared_size=96, range_size=96, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal20Get3DEmitterPositionERNS_13EmitterHandleERfS3_S3_
; demangled: vox::VoxEngineInternal::Get3DEmitterPosition(vox::EmitterHandle&, float&, float&, float&)
; decoder-mode: arm
00867934  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00867938  c4 40 80 e2                                      add r4, r0, #0xc4
0086793c  0c d0 4d e2                                      sub sp, sp, #0xc
00867940  00 50 a0 e1                                      mov r5, r0
00867944  01 70 a0 e1                                      mov r7, r1
00867948  04 00 a0 e1                                      mov r0, r4
0086794c  02 a0 a0 e1                                      mov sl, r2
00867950  03 80 a0 e1                                      mov r8, r3
00867954  28 60 9d e5                                      ldr r6, [sp, #0x28]
00867958  fa ae 00 eb                                      bl #0x893548
0086795c  05 00 a0 e1                                      mov r0, r5
00867960  07 10 a0 e1                                      mov r1, r7
00867964  d8 fe ff eb                                      bl #0x8674cc
00867968  00 00 50 e3                                      cmp r0, #0
0086796c  04 00 00 0a                                      beq #0x867984
00867970  0a 20 a0 e1                                      mov r2, sl
00867974  08 30 a0 e1                                      mov r3, r8
00867978  08 10 a0 e3                                      mov r1, #8
0086797c  00 60 8d e5                                      str r6, [sp]
00867980  5f f5 ff eb                                      bl #0x864f04
00867984  04 00 a0 e1                                      mov r0, r4
00867988  0c d0 8d e2                                      add sp, sp, #0xc
0086798c  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
00867990  e1 ae 00 ea                                      b #0x89351c

; FUNCTION 0x00867994, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22Set3DEmitterParameteriERNS_13EmitterHandleEii
; demangled: vox::VoxEngineInternal::Set3DEmitterParameteri(vox::EmitterHandle&, int, int)
; decoder-mode: arm
00867994  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00867998  c4 40 80 e2                                      add r4, r0, #0xc4
0086799c  00 50 a0 e1                                      mov r5, r0
008679a0  01 60 a0 e1                                      mov r6, r1
008679a4  04 00 a0 e1                                      mov r0, r4
008679a8  02 70 a0 e1                                      mov r7, r2
008679ac  03 80 a0 e1                                      mov r8, r3
008679b0  e4 ae 00 eb                                      bl #0x893548
008679b4  05 00 a0 e1                                      mov r0, r5
008679b8  06 10 a0 e1                                      mov r1, r6
008679bc  c2 fe ff eb                                      bl #0x8674cc
008679c0  00 00 50 e3                                      cmp r0, #0
008679c4  02 00 00 0a                                      beq #0x8679d4
008679c8  07 10 a0 e1                                      mov r1, r7
008679cc  08 20 a0 e1                                      mov r2, r8
008679d0  2a f6 ff eb                                      bl #0x865280
008679d4  04 00 a0 e1                                      mov r0, r4
008679d8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008679dc  ce ae 00 ea                                      b #0x89351c

; FUNCTION 0x008679e0, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22Set3DEmitterParameterfERNS_13EmitterHandleEif
; demangled: vox::VoxEngineInternal::Set3DEmitterParameterf(vox::EmitterHandle&, int, float)
; decoder-mode: arm
008679e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008679e4  c4 40 80 e2                                      add r4, r0, #0xc4
008679e8  00 50 a0 e1                                      mov r5, r0
008679ec  01 60 a0 e1                                      mov r6, r1
008679f0  04 00 a0 e1                                      mov r0, r4
008679f4  02 70 a0 e1                                      mov r7, r2
008679f8  03 80 a0 e1                                      mov r8, r3
008679fc  d1 ae 00 eb                                      bl #0x893548
00867a00  05 00 a0 e1                                      mov r0, r5
00867a04  06 10 a0 e1                                      mov r1, r6
00867a08  af fe ff eb                                      bl #0x8674cc
00867a0c  00 00 50 e3                                      cmp r0, #0
00867a10  02 00 00 0a                                      beq #0x867a20
00867a14  07 10 a0 e1                                      mov r1, r7
00867a18  08 20 a0 e1                                      mov r2, r8
00867a1c  e7 f5 ff eb                                      bl #0x8651c0
00867a20  04 00 a0 e1                                      mov r0, r4
00867a24  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00867a28  bb ae 00 ea                                      b #0x89351c

; FUNCTION 0x00867a2c, declared_size=184, range_size=184, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22Set3DEmitterParametersERNS_13EmitterHandleERKNS_22Vox3DEmitterParametersE
; demangled: vox::VoxEngineInternal::Set3DEmitterParameters(vox::EmitterHandle&, vox::Vox3DEmitterParameters const&)
; decoder-mode: arm
00867a2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00867a30  c4 60 80 e2                                      add r6, r0, #0xc4
00867a34  00 50 a0 e1                                      mov r5, r0
00867a38  01 70 a0 e1                                      mov r7, r1
00867a3c  06 00 a0 e1                                      mov r0, r6
00867a40  02 40 a0 e1                                      mov r4, r2
00867a44  bf ae 00 eb                                      bl #0x893548
00867a48  05 00 a0 e1                                      mov r0, r5
00867a4c  07 10 a0 e1                                      mov r1, r7
00867a50  9d fe ff eb                                      bl #0x8674cc
00867a54  00 50 50 e2                                      subs r5, r0, #0
00867a58  1e 00 00 0a                                      beq #0x867ad8
00867a5c  00 10 a0 e3                                      mov r1, #0
00867a60  00 20 94 e5                                      ldr r2, [r4]
00867a64  05 f6 ff eb                                      bl #0x865280
00867a68  05 00 a0 e1                                      mov r0, r5
00867a6c  01 10 a0 e3                                      mov r1, #1
00867a70  04 20 94 e5                                      ldr r2, [r4, #4]
00867a74  d1 f5 ff eb                                      bl #0x8651c0
00867a78  05 00 a0 e1                                      mov r0, r5
00867a7c  02 10 a0 e3                                      mov r1, #2
00867a80  08 20 94 e5                                      ldr r2, [r4, #8]
00867a84  cd f5 ff eb                                      bl #0x8651c0
00867a88  05 00 a0 e1                                      mov r0, r5
00867a8c  03 10 a0 e3                                      mov r1, #3
00867a90  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00867a94  c9 f5 ff eb                                      bl #0x8651c0
00867a98  05 00 a0 e1                                      mov r0, r5
00867a9c  04 10 a0 e3                                      mov r1, #4
00867aa0  10 20 94 e5                                      ldr r2, [r4, #0x10]
00867aa4  c5 f5 ff eb                                      bl #0x8651c0
00867aa8  05 00 a0 e1                                      mov r0, r5
00867aac  05 10 a0 e3                                      mov r1, #5
00867ab0  14 20 94 e5                                      ldr r2, [r4, #0x14]
00867ab4  c1 f5 ff eb                                      bl #0x8651c0
00867ab8  05 00 a0 e1                                      mov r0, r5
00867abc  06 10 a0 e3                                      mov r1, #6
00867ac0  18 20 94 e5                                      ldr r2, [r4, #0x18]
00867ac4  bd f5 ff eb                                      bl #0x8651c0
00867ac8  05 00 a0 e1                                      mov r0, r5
00867acc  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00867ad0  07 10 a0 e3                                      mov r1, #7
00867ad4  b9 f5 ff eb                                      bl #0x8651c0
00867ad8  06 00 a0 e1                                      mov r0, r6
00867adc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00867ae0  8d ae 00 ea                                      b #0x89351c

; FUNCTION 0x00867ae4, declared_size=96, range_size=96, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal21Set3DEmitterDirectionERNS_13EmitterHandleEfff
; demangled: vox::VoxEngineInternal::Set3DEmitterDirection(vox::EmitterHandle&, float, float, float)
; decoder-mode: arm
00867ae4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00867ae8  c4 40 80 e2                                      add r4, r0, #0xc4
00867aec  0c d0 4d e2                                      sub sp, sp, #0xc
00867af0  00 50 a0 e1                                      mov r5, r0
00867af4  01 70 a0 e1                                      mov r7, r1
00867af8  04 00 a0 e1                                      mov r0, r4
00867afc  02 a0 a0 e1                                      mov sl, r2
00867b00  03 80 a0 e1                                      mov r8, r3
00867b04  28 60 9d e5                                      ldr r6, [sp, #0x28]
00867b08  8e ae 00 eb                                      bl #0x893548
00867b0c  05 00 a0 e1                                      mov r0, r5
00867b10  07 10 a0 e1                                      mov r1, r7
00867b14  6c fe ff eb                                      bl #0x8674cc
00867b18  00 00 50 e3                                      cmp r0, #0
00867b1c  04 00 00 0a                                      beq #0x867b34
00867b20  0a 20 a0 e1                                      mov r2, sl
00867b24  08 30 a0 e1                                      mov r3, r8
00867b28  0a 10 a0 e3                                      mov r1, #0xa
00867b2c  00 60 8d e5                                      str r6, [sp]
00867b30  7e f5 ff eb                                      bl #0x865130
00867b34  04 00 a0 e1                                      mov r0, r4
00867b38  0c d0 8d e2                                      add sp, sp, #0xc
00867b3c  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
00867b40  75 ae 00 ea                                      b #0x89351c

; FUNCTION 0x00867b44, declared_size=96, range_size=96, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal20Set3DEmitterVelocityERNS_13EmitterHandleEfff
; demangled: vox::VoxEngineInternal::Set3DEmitterVelocity(vox::EmitterHandle&, float, float, float)
; decoder-mode: arm
00867b44  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00867b48  c4 40 80 e2                                      add r4, r0, #0xc4
00867b4c  0c d0 4d e2                                      sub sp, sp, #0xc
00867b50  00 50 a0 e1                                      mov r5, r0
00867b54  01 70 a0 e1                                      mov r7, r1
00867b58  04 00 a0 e1                                      mov r0, r4
00867b5c  02 a0 a0 e1                                      mov sl, r2
00867b60  03 80 a0 e1                                      mov r8, r3
00867b64  28 60 9d e5                                      ldr r6, [sp, #0x28]
00867b68  76 ae 00 eb                                      bl #0x893548
00867b6c  05 00 a0 e1                                      mov r0, r5
00867b70  07 10 a0 e1                                      mov r1, r7
00867b74  54 fe ff eb                                      bl #0x8674cc
00867b78  00 00 50 e3                                      cmp r0, #0
00867b7c  04 00 00 0a                                      beq #0x867b94
00867b80  0a 20 a0 e1                                      mov r2, sl
00867b84  08 30 a0 e1                                      mov r3, r8
00867b88  09 10 a0 e3                                      mov r1, #9
00867b8c  00 60 8d e5                                      str r6, [sp]
00867b90  66 f5 ff eb                                      bl #0x865130
00867b94  04 00 a0 e1                                      mov r0, r4
00867b98  0c d0 8d e2                                      add sp, sp, #0xc
00867b9c  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
00867ba0  5d ae 00 ea                                      b #0x89351c

; FUNCTION 0x00867ba4, declared_size=96, range_size=96, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal20Set3DEmitterPositionERNS_13EmitterHandleEfff
; demangled: vox::VoxEngineInternal::Set3DEmitterPosition(vox::EmitterHandle&, float, float, float)
; decoder-mode: arm
00867ba4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00867ba8  c4 40 80 e2                                      add r4, r0, #0xc4
00867bac  0c d0 4d e2                                      sub sp, sp, #0xc
00867bb0  00 50 a0 e1                                      mov r5, r0
00867bb4  01 70 a0 e1                                      mov r7, r1
00867bb8  04 00 a0 e1                                      mov r0, r4
00867bbc  02 a0 a0 e1                                      mov sl, r2
00867bc0  03 80 a0 e1                                      mov r8, r3
00867bc4  28 60 9d e5                                      ldr r6, [sp, #0x28]
00867bc8  5e ae 00 eb                                      bl #0x893548
00867bcc  05 00 a0 e1                                      mov r0, r5
00867bd0  07 10 a0 e1                                      mov r1, r7
00867bd4  3c fe ff eb                                      bl #0x8674cc
00867bd8  00 00 50 e3                                      cmp r0, #0
00867bdc  04 00 00 0a                                      beq #0x867bf4
00867be0  0a 20 a0 e1                                      mov r2, sl
00867be4  08 30 a0 e1                                      mov r3, r8
00867be8  08 10 a0 e3                                      mov r1, #8
00867bec  00 60 8d e5                                      str r6, [sp]
00867bf0  4e f5 ff eb                                      bl #0x865130
00867bf4  04 00 a0 e1                                      mov r0, r4
00867bf8  0c d0 8d e2                                      add sp, sp, #0xc
00867bfc  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
00867c00  45 ae 00 ea                                      b #0x89351c

; FUNCTION 0x00867c04, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal8GetGroupERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::GetGroup(vox::EmitterHandle&)
; decoder-mode: arm
00867c04  70 40 2d e9                                      push {r4, r5, r6, lr}
00867c08  c4 40 80 e2                                      add r4, r0, #0xc4
00867c0c  00 50 a0 e1                                      mov r5, r0
00867c10  01 60 a0 e1                                      mov r6, r1
00867c14  04 00 a0 e1                                      mov r0, r4
00867c18  4a ae 00 eb                                      bl #0x893548
00867c1c  05 00 a0 e1                                      mov r0, r5
00867c20  06 10 a0 e1                                      mov r1, r6
00867c24  28 fe ff eb                                      bl #0x8674cc
00867c28  00 50 50 e2                                      subs r5, r0, #0
00867c2c  01 00 00 0a                                      beq #0x867c38
00867c30  c9 f6 ff eb                                      bl #0x86575c
00867c34  00 50 a0 e1                                      mov r5, r0
00867c38  04 00 a0 e1                                      mov r0, r4
00867c3c  36 ae 00 eb                                      bl #0x89351c
00867c40  05 00 a0 e1                                      mov r0, r5
00867c44  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00867c48, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal8SetGroupERNS_13EmitterHandleEi
; demangled: vox::VoxEngineInternal::SetGroup(vox::EmitterHandle&, int)
; decoder-mode: arm
00867c48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00867c4c  c4 40 80 e2                                      add r4, r0, #0xc4
00867c50  1f 00 52 e3                                      cmp r2, #0x1f
00867c54  00 50 a0 e1                                      mov r5, r0
00867c58  01 60 a0 e1                                      mov r6, r1
00867c5c  04 00 a0 e1                                      mov r0, r4
00867c60  02 70 a0 91                                      movls r7, r2
00867c64  00 70 a0 83                                      movhi r7, #0
00867c68  36 ae 00 eb                                      bl #0x893548
00867c6c  05 00 a0 e1                                      mov r0, r5
00867c70  06 10 a0 e1                                      mov r1, r6
00867c74  14 fe ff eb                                      bl #0x8674cc
00867c78  00 00 50 e3                                      cmp r0, #0
00867c7c  01 00 00 0a                                      beq #0x867c88
00867c80  07 10 a0 e1                                      mov r1, r7
00867c84  aa f6 ff eb                                      bl #0x865734
00867c88  04 00 a0 e1                                      mov r0, r4
00867c8c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00867c90  21 ae 00 ea                                      b #0x89351c

; FUNCTION 0x00867c94, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal13SetPlayCursorERNS_13EmitterHandleEf
; demangled: vox::VoxEngineInternal::SetPlayCursor(vox::EmitterHandle&, float)
; decoder-mode: arm
00867c94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00867c98  c4 40 80 e2                                      add r4, r0, #0xc4
00867c9c  00 50 a0 e1                                      mov r5, r0
00867ca0  01 60 a0 e1                                      mov r6, r1
00867ca4  04 00 a0 e1                                      mov r0, r4
00867ca8  02 70 a0 e1                                      mov r7, r2
00867cac  25 ae 00 eb                                      bl #0x893548
00867cb0  05 00 a0 e1                                      mov r0, r5
00867cb4  06 10 a0 e1                                      mov r1, r6
00867cb8  03 fe ff eb                                      bl #0x8674cc
00867cbc  00 00 50 e3                                      cmp r0, #0
00867cc0  01 00 00 0a                                      beq #0x867ccc
00867cc4  07 10 a0 e1                                      mov r1, r7
00867cc8  c7 f5 ff eb                                      bl #0x8653ec
00867ccc  04 00 a0 e1                                      mov r0, r4
00867cd0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00867cd4  10 ae 00 ea                                      b #0x89351c

; FUNCTION 0x00867cd8, declared_size=72, range_size=72, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal13GetPlayCursorERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::GetPlayCursor(vox::EmitterHandle&)
; decoder-mode: arm
00867cd8  70 40 2d e9                                      push {r4, r5, r6, lr}
00867cdc  c4 40 80 e2                                      add r4, r0, #0xc4
00867ce0  00 50 a0 e1                                      mov r5, r0
00867ce4  01 60 a0 e1                                      mov r6, r1
00867ce8  04 00 a0 e1                                      mov r0, r4
00867cec  15 ae 00 eb                                      bl #0x893548
00867cf0  05 00 a0 e1                                      mov r0, r5
00867cf4  06 10 a0 e1                                      mov r1, r6
00867cf8  f3 fd ff eb                                      bl #0x8674cc
00867cfc  00 00 50 e3                                      cmp r0, #0
00867d00  00 50 a0 03                                      moveq r5, #0
00867d04  01 00 00 0a                                      beq #0x867d10
00867d08  fa f5 ff eb                                      bl #0x8654f8
00867d0c  00 50 a0 e1                                      mov r5, r0
00867d10  04 00 a0 e1                                      mov r0, r4
00867d14  00 ae 00 eb                                      bl #0x89351c
00867d18  05 00 a0 e1                                      mov r0, r5
00867d1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00867d20, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal9GetStatusERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::GetStatus(vox::EmitterHandle&)
; decoder-mode: arm
00867d20  70 40 2d e9                                      push {r4, r5, r6, lr}
00867d24  c4 40 80 e2                                      add r4, r0, #0xc4
00867d28  00 50 a0 e1                                      mov r5, r0
00867d2c  01 60 a0 e1                                      mov r6, r1
00867d30  04 00 a0 e1                                      mov r0, r4
00867d34  03 ae 00 eb                                      bl #0x893548
00867d38  05 00 a0 e1                                      mov r0, r5
00867d3c  06 10 a0 e1                                      mov r1, r6
00867d40  e1 fd ff eb                                      bl #0x8674cc
00867d44  00 50 50 e2                                      subs r5, r0, #0
00867d48  01 00 00 0a                                      beq #0x867d54
00867d4c  82 f3 ff eb                                      bl #0x864b5c
00867d50  00 50 a0 e1                                      mov r5, r0
00867d54  04 00 a0 e1                                      mov r0, r4
00867d58  ef ad 00 eb                                      bl #0x89351c
00867d5c  05 00 a0 e1                                      mov r0, r5
00867d60  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00867d64, declared_size=72, range_size=72, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal6IsDoneERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::IsDone(vox::EmitterHandle&)
; decoder-mode: arm
00867d64  70 40 2d e9                                      push {r4, r5, r6, lr}
00867d68  c4 40 80 e2                                      add r4, r0, #0xc4
00867d6c  00 50 a0 e1                                      mov r5, r0
00867d70  01 60 a0 e1                                      mov r6, r1
00867d74  04 00 a0 e1                                      mov r0, r4
00867d78  f2 ad 00 eb                                      bl #0x893548
00867d7c  05 00 a0 e1                                      mov r0, r5
00867d80  06 10 a0 e1                                      mov r1, r6
00867d84  d0 fd ff eb                                      bl #0x8674cc
00867d88  00 00 50 e3                                      cmp r0, #0
00867d8c  01 50 a0 03                                      moveq r5, #1
00867d90  01 00 00 0a                                      beq #0x867d9c
00867d94  f4 f5 ff eb                                      bl #0x86556c
00867d98  00 50 a0 e1                                      mov r5, r0
00867d9c  04 00 a0 e1                                      mov r0, r4
00867da0  dd ad 00 eb                                      bl #0x89351c
00867da4  05 00 a0 e1                                      mov r0, r5
00867da8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00867dac, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal9IsPlayingERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::IsPlaying(vox::EmitterHandle&)
; decoder-mode: arm
00867dac  70 40 2d e9                                      push {r4, r5, r6, lr}
00867db0  c4 40 80 e2                                      add r4, r0, #0xc4
00867db4  00 50 a0 e1                                      mov r5, r0
00867db8  01 60 a0 e1                                      mov r6, r1
00867dbc  04 00 a0 e1                                      mov r0, r4
00867dc0  e0 ad 00 eb                                      bl #0x893548
00867dc4  05 00 a0 e1                                      mov r0, r5
00867dc8  06 10 a0 e1                                      mov r1, r6
00867dcc  be fd ff eb                                      bl #0x8674cc
00867dd0  00 50 50 e2                                      subs r5, r0, #0
00867dd4  01 00 00 0a                                      beq #0x867de0
00867dd8  ef f5 ff eb                                      bl #0x86559c
00867ddc  00 50 a0 e1                                      mov r5, r0
00867de0  04 00 a0 e1                                      mov r0, r4
00867de4  cc ad 00 eb                                      bl #0x89351c
00867de8  05 00 a0 e1                                      mov r0, r5
00867dec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00867df0, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal7IsAliveERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::IsAlive(vox::EmitterHandle&)
; decoder-mode: arm
00867df0  70 40 2d e9                                      push {r4, r5, r6, lr}
00867df4  c4 40 80 e2                                      add r4, r0, #0xc4
00867df8  00 50 a0 e1                                      mov r5, r0
00867dfc  01 60 a0 e1                                      mov r6, r1
00867e00  04 00 a0 e1                                      mov r0, r4
00867e04  cf ad 00 eb                                      bl #0x893548
00867e08  05 00 a0 e1                                      mov r0, r5
00867e0c  06 10 a0 e1                                      mov r1, r6
00867e10  ad fd ff eb                                      bl #0x8674cc
00867e14  00 50 50 e2                                      subs r5, r0, #0
00867e18  01 00 00 0a                                      beq #0x867e24
00867e1c  74 f6 ff eb                                      bl #0x8657f4
00867e20  00 50 a0 e1                                      mov r5, r0
00867e24  04 00 a0 e1                                      mov r0, r4
00867e28  bb ad 00 eb                                      bl #0x89351c
00867e2c  05 00 a0 e1                                      mov r0, r5
00867e30  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00867e34, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal7IsValidERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::IsValid(vox::EmitterHandle&)
; decoder-mode: arm
00867e34  70 40 2d e9                                      push {r4, r5, r6, lr}
00867e38  c4 40 80 e2                                      add r4, r0, #0xc4
00867e3c  00 50 a0 e1                                      mov r5, r0
00867e40  01 60 a0 e1                                      mov r6, r1
00867e44  04 00 a0 e1                                      mov r0, r4
00867e48  be ad 00 eb                                      bl #0x893548
00867e4c  06 10 a0 e1                                      mov r1, r6
00867e50  05 00 a0 e1                                      mov r0, r5
00867e54  9c fd ff eb                                      bl #0x8674cc
00867e58  00 50 a0 e1                                      mov r5, r0
00867e5c  04 00 a0 e1                                      mov r0, r4
00867e60  ad ad 00 eb                                      bl #0x89351c
00867e64  00 00 55 e2                                      subs r0, r5, #0
00867e68  01 00 a0 13                                      movne r0, #1
00867e6c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00867e70, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal7IsReadyERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::IsReady(vox::EmitterHandle&)
; decoder-mode: arm
00867e70  70 40 2d e9                                      push {r4, r5, r6, lr}
00867e74  c4 40 80 e2                                      add r4, r0, #0xc4
00867e78  00 50 a0 e1                                      mov r5, r0
00867e7c  01 60 a0 e1                                      mov r6, r1
00867e80  04 00 a0 e1                                      mov r0, r4
00867e84  af ad 00 eb                                      bl #0x893548
00867e88  05 00 a0 e1                                      mov r0, r5
00867e8c  06 10 a0 e1                                      mov r1, r6
00867e90  8d fd ff eb                                      bl #0x8674cc
00867e94  00 50 50 e2                                      subs r5, r0, #0
00867e98  01 00 00 0a                                      beq #0x867ea4
00867e9c  a3 ed ff eb                                      bl #0x863530
00867ea0  00 50 a0 e1                                      mov r5, r0
00867ea4  04 00 a0 e1                                      mov r0, r4
00867ea8  9b ad 00 eb                                      bl #0x89351c
00867eac  05 00 a0 e1                                      mov r0, r5
00867eb0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00867eb4, declared_size=72, range_size=72, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal8GetPitchERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::GetPitch(vox::EmitterHandle&)
; decoder-mode: arm
00867eb4  70 40 2d e9                                      push {r4, r5, r6, lr}
00867eb8  c4 40 80 e2                                      add r4, r0, #0xc4
00867ebc  00 50 a0 e1                                      mov r5, r0
00867ec0  01 60 a0 e1                                      mov r6, r1
00867ec4  04 00 a0 e1                                      mov r0, r4
00867ec8  9e ad 00 eb                                      bl #0x893548
00867ecc  05 00 a0 e1                                      mov r0, r5
00867ed0  06 10 a0 e1                                      mov r1, r6
00867ed4  7c fd ff eb                                      bl #0x8674cc
00867ed8  00 00 50 e3                                      cmp r0, #0
00867edc  00 50 a0 03                                      moveq r5, #0
00867ee0  01 00 00 0a                                      beq #0x867eec
00867ee4  ef f5 ff eb                                      bl #0x8656a8
00867ee8  00 50 a0 e1                                      mov r5, r0
00867eec  04 00 a0 e1                                      mov r0, r4
00867ef0  89 ad 00 eb                                      bl #0x89351c
00867ef4  05 00 a0 e1                                      mov r0, r5
00867ef8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00867efc, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal7SetLoopERNS_13EmitterHandleEb
; demangled: vox::VoxEngineInternal::SetLoop(vox::EmitterHandle&, bool)
; decoder-mode: arm
00867efc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00867f00  c4 40 80 e2                                      add r4, r0, #0xc4
00867f04  00 50 a0 e1                                      mov r5, r0
00867f08  01 60 a0 e1                                      mov r6, r1
00867f0c  04 00 a0 e1                                      mov r0, r4
00867f10  02 70 a0 e1                                      mov r7, r2
00867f14  8b ad 00 eb                                      bl #0x893548
00867f18  05 00 a0 e1                                      mov r0, r5
00867f1c  06 10 a0 e1                                      mov r1, r6
00867f20  69 fd ff eb                                      bl #0x8674cc
00867f24  00 00 50 e3                                      cmp r0, #0
00867f28  01 00 00 0a                                      beq #0x867f34
00867f2c  07 10 a0 e1                                      mov r1, r7
00867f30  b4 f5 ff eb                                      bl #0x865608
00867f34  04 00 a0 e1                                      mov r0, r4
00867f38  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00867f3c  76 ad 00 ea                                      b #0x89351c

; FUNCTION 0x00867f40, declared_size=72, range_size=72, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal7GetGainERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::GetGain(vox::EmitterHandle&)
; decoder-mode: arm
00867f40  70 40 2d e9                                      push {r4, r5, r6, lr}
00867f44  c4 40 80 e2                                      add r4, r0, #0xc4
00867f48  00 50 a0 e1                                      mov r5, r0
00867f4c  01 60 a0 e1                                      mov r6, r1
00867f50  04 00 a0 e1                                      mov r0, r4
00867f54  7b ad 00 eb                                      bl #0x893548
00867f58  05 00 a0 e1                                      mov r0, r5
00867f5c  06 10 a0 e1                                      mov r1, r6
00867f60  59 fd ff eb                                      bl #0x8674cc
00867f64  00 00 50 e3                                      cmp r0, #0
00867f68  00 50 a0 03                                      moveq r5, #0
00867f6c  01 00 00 0a                                      beq #0x867f78
00867f70  d6 f5 ff eb                                      bl #0x8656d0
00867f74  00 50 a0 e1                                      mov r5, r0
00867f78  04 00 a0 e1                                      mov r0, r4
00867f7c  66 ad 00 eb                                      bl #0x89351c
00867f80  05 00 a0 e1                                      mov r0, r5
00867f84  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00867f88, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal20SetAutoKillAfterDoneERNS_13EmitterHandleEb
; demangled: vox::VoxEngineInternal::SetAutoKillAfterDone(vox::EmitterHandle&, bool)
; decoder-mode: arm
00867f88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00867f8c  c4 40 80 e2                                      add r4, r0, #0xc4
00867f90  00 50 a0 e1                                      mov r5, r0
00867f94  01 60 a0 e1                                      mov r6, r1
00867f98  04 00 a0 e1                                      mov r0, r4
00867f9c  02 70 a0 e1                                      mov r7, r2
00867fa0  68 ad 00 eb                                      bl #0x893548
00867fa4  05 00 a0 e1                                      mov r0, r5
00867fa8  06 10 a0 e1                                      mov r1, r6
00867fac  46 fd ff eb                                      bl #0x8674cc
00867fb0  00 00 50 e3                                      cmp r0, #0
00867fb4  01 00 00 0a                                      beq #0x867fc0
00867fb8  07 10 a0 e1                                      mov r1, r7
00867fbc  23 f6 ff eb                                      bl #0x865850
00867fc0  04 00 a0 e1                                      mov r0, r4
00867fc4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00867fc8  53 ad 00 ea                                      b #0x89351c

; FUNCTION 0x00867fcc, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal43UnregisterForEmitterStateChangeNotificationERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::UnregisterForEmitterStateChangeNotification(vox::EmitterHandle&)
; decoder-mode: arm
00867fcc  70 40 2d e9                                      push {r4, r5, r6, lr}
00867fd0  c4 40 80 e2                                      add r4, r0, #0xc4
00867fd4  00 50 a0 e1                                      mov r5, r0
00867fd8  01 60 a0 e1                                      mov r6, r1
00867fdc  04 00 a0 e1                                      mov r0, r4
00867fe0  58 ad 00 eb                                      bl #0x893548
00867fe4  05 00 a0 e1                                      mov r0, r5
00867fe8  06 10 a0 e1                                      mov r1, r6
00867fec  36 fd ff eb                                      bl #0x8674cc
00867ff0  00 00 50 e3                                      cmp r0, #0
00867ff4  00 00 00 0a                                      beq #0x867ffc
00867ff8  2d f3 ff eb                                      bl #0x864cb4
00867ffc  04 00 a0 e1                                      mov r0, r4
00868000  70 40 bd e8                                      pop {r4, r5, r6, lr}
00868004  44 ad 00 ea                                      b #0x89351c

; FUNCTION 0x00868008, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal41RegisterForEmitterStateChangeNotificationERNS_13EmitterHandleEPFvS2_PvNS_18EmitterExternStateEES3_
; demangled: vox::VoxEngineInternal::RegisterForEmitterStateChangeNotification(vox::EmitterHandle&, void (*)(vox::EmitterHandle&, void*, vox::EmitterExternState), void*)
; decoder-mode: arm
00868008  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086800c  c4 40 80 e2                                      add r4, r0, #0xc4
00868010  00 50 a0 e1                                      mov r5, r0
00868014  01 60 a0 e1                                      mov r6, r1
00868018  04 00 a0 e1                                      mov r0, r4
0086801c  02 70 a0 e1                                      mov r7, r2
00868020  03 80 a0 e1                                      mov r8, r3
00868024  47 ad 00 eb                                      bl #0x893548
00868028  05 00 a0 e1                                      mov r0, r5
0086802c  06 10 a0 e1                                      mov r1, r6
00868030  25 fd ff eb                                      bl #0x8674cc
00868034  00 00 50 e3                                      cmp r0, #0
00868038  02 00 00 0a                                      beq #0x868048
0086803c  07 10 a0 e1                                      mov r1, r7
00868040  08 20 a0 e1                                      mov r2, r8
00868044  25 f3 ff eb                                      bl #0x864ce0
00868048  04 00 a0 e1                                      mov r0, r4
0086804c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00868050  31 ad 00 ea                                      b #0x89351c

; FUNCTION 0x00868054, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal29IncreaseEmitterObjectRefCountERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::IncreaseEmitterObjectRefCount(vox::EmitterHandle&)
; decoder-mode: arm
00868054  70 40 2d e9                                      push {r4, r5, r6, lr}
00868058  c4 40 80 e2                                      add r4, r0, #0xc4
0086805c  00 50 a0 e1                                      mov r5, r0
00868060  01 60 a0 e1                                      mov r6, r1
00868064  04 00 a0 e1                                      mov r0, r4
00868068  36 ad 00 eb                                      bl #0x893548
0086806c  05 00 a0 e1                                      mov r0, r5
00868070  06 10 a0 e1                                      mov r1, r6
00868074  14 fd ff eb                                      bl #0x8674cc
00868078  00 30 50 e2                                      subs r3, r0, #0
0086807c  02 00 00 0a                                      beq #0x86808c
00868080  00 30 93 e5                                      ldr r3, [r3]
00868084  0f e0 a0 e1                                      mov lr, pc
00868088  08 f0 93 e5                                      ldr pc, [r3, #8]
0086808c  04 00 a0 e1                                      mov r0, r4
00868090  70 40 bd e8                                      pop {r4, r5, r6, lr}
00868094  20 ad 00 ea                                      b #0x89351c

; FUNCTION 0x008682e0, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal29DecreaseEmitterObjectRefCountERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::DecreaseEmitterObjectRefCount(vox::EmitterHandle&)
; decoder-mode: arm
008682e0  70 40 2d e9                                      push {r4, r5, r6, lr}
008682e4  c4 40 80 e2                                      add r4, r0, #0xc4
008682e8  00 50 a0 e1                                      mov r5, r0
008682ec  01 60 a0 e1                                      mov r6, r1
008682f0  04 00 a0 e1                                      mov r0, r4
008682f4  93 ac 00 eb                                      bl #0x893548
008682f8  05 00 a0 e1                                      mov r0, r5
008682fc  06 10 a0 e1                                      mov r1, r6
00868300  71 fc ff eb                                      bl #0x8674cc
00868304  00 30 50 e2                                      subs r3, r0, #0
00868308  02 00 00 0a                                      beq #0x868318
0086830c  00 30 93 e5                                      ldr r3, [r3]
00868310  0f e0 a0 e1                                      mov lr, pc
00868314  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00868318  04 00 a0 e1                                      mov r0, r4
0086831c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00868320  7d ac 00 ea                                      b #0x89351c

; FUNCTION 0x00868468, declared_size=596, range_size=596, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal14GetAllEmittersEPNS_13EmitterHandleEi
; demangled: vox::VoxEngineInternal::GetAllEmitters(vox::EmitterHandle*, int)
; decoder-mode: arm
00868468  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086846c  c4 30 80 e2                                      add r3, r0, #0xc4
00868470  84 d0 4d e2                                      sub sp, sp, #0x84
00868474  00 70 a0 e1                                      mov r7, r0
00868478  18 30 8d e5                                      str r3, [sp, #0x18]
0086847c  03 00 a0 e1                                      mov r0, r3
00868480  d0 30 87 e2                                      add r3, r7, #0xd0
00868484  14 30 8d e5                                      str r3, [sp, #0x14]
00868488  02 60 a0 e1                                      mov r6, r2
0086848c  1c 10 8d e5                                      str r1, [sp, #0x1c]
00868490  78 40 87 e2                                      add r4, r7, #0x78
00868494  2b ac 00 eb                                      bl #0x893548
00868498  14 00 9d e5                                      ldr r0, [sp, #0x14]
0086849c  29 ac 00 eb                                      bl #0x893548
008684a0  04 10 a0 e1                                      mov r1, r4
008684a4  7c 00 8d e2                                      add r0, sp, #0x7c
008684a8  59 eb ff eb                                      bl #0x863214
008684ac  04 10 a0 e1                                      mov r1, r4
008684b0  78 00 8d e2                                      add r0, sp, #0x78
008684b4  59 eb ff eb                                      bl #0x863220
008684b8  f4 91 9f e5                                      ldr sb, [pc, #0x1f4]
008684bc  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
008684c0  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
008684c4  ec b1 9f e5                                      ldr fp, [pc, #0x1ec]
008684c8  00 40 a0 e3                                      mov r4, #0
008684cc  48 80 8d e2                                      add r8, sp, #0x48
008684d0  09 90 8f e0                                      add sb, pc, sb
008684d4  78 20 9d e5                                      ldr r2, [sp, #0x78]
008684d8  02 00 53 e1                                      cmp r3, r2
008684dc  01 00 00 0a                                      beq #0x8684e8
008684e0  06 00 54 e1                                      cmp r4, r6
008684e4  1c 00 00 ba                                      blt #0x86855c
008684e8  98 50 87 e2                                      add r5, r7, #0x98
008684ec  05 10 a0 e1                                      mov r1, r5
008684f0  74 00 8d e2                                      add r0, sp, #0x74
008684f4  46 eb ff eb                                      bl #0x863214
008684f8  74 30 9d e5                                      ldr r3, [sp, #0x74]
008684fc  05 10 a0 e1                                      mov r1, r5
00868500  70 00 8d e2                                      add r0, sp, #0x70
00868504  7c 30 8d e5                                      str r3, [sp, #0x7c]
00868508  44 eb ff eb                                      bl #0x863220
0086850c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00868510  28 50 a0 e3                                      mov r5, #0x28
00868514  9c b1 9f e5                                      ldr fp, [pc, #0x19c]
00868518  95 34 25 e0                                      mla r5, r5, r4, r3
0086851c  70 30 9d e5                                      ldr r3, [sp, #0x70]
00868520  20 80 8d e2                                      add r8, sp, #0x20
00868524  78 30 8d e5                                      str r3, [sp, #0x78]
00868528  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
0086852c  78 20 9d e5                                      ldr r2, [sp, #0x78]
00868530  02 00 53 e1                                      cmp r3, r2
00868534  01 00 00 0a                                      beq #0x868540
00868538  06 00 54 e1                                      cmp r4, r6
0086853c  24 00 00 ba                                      blt #0x8685d4
00868540  14 00 9d e5                                      ldr r0, [sp, #0x14]
00868544  f4 ab 00 eb                                      bl #0x89351c
00868548  18 00 9d e5                                      ldr r0, [sp, #0x18]
0086854c  f2 ab 00 eb                                      bl #0x89351c
00868550  04 00 a0 e1                                      mov r0, r4
00868554  84 d0 8d e2                                      add sp, sp, #0x84
00868558  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086855c  18 10 93 e5                                      ldr r1, [r3, #0x18]
00868560  0b a0 99 e7                                      ldr sl, [sb, fp]
00868564  08 00 a0 e1                                      mov r0, r8
00868568  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0086856c  d8 20 c1 e1                                      ldrd r2, r3, [r1, #8]
00868570  55 ef 8c e2                                      add lr, ip, #0x154
00868574  0e e1 97 e7                                      ldr lr, [r7, lr, lsl #2]
00868578  0c c0 8d e5                                      str ip, [sp, #0xc]
0086857c  02 40 8d e9                                      stmib sp, {r1, lr}
00868580  00 a0 8d e5                                      str sl, [sp]
00868584  c3 fe ff eb                                      bl #0x868098
00868588  08 10 a0 e1                                      mov r1, r8
0086858c  05 00 a0 e1                                      mov r0, r5
00868590  63 ff ff eb                                      bl #0x868324
00868594  08 00 a0 e1                                      mov r0, r8
00868598  83 ff ff eb                                      bl #0x8683ac
0086859c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
008685a0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008685a4  00 00 52 e3                                      cmp r2, #0
008685a8  01 00 00 1a                                      bne #0x8685b4
008685ac  33 00 00 ea                                      b #0x868680
008685b0  03 20 a0 e1                                      mov r2, r3
008685b4  08 30 92 e5                                      ldr r3, [r2, #8]
008685b8  00 00 53 e3                                      cmp r3, #0
008685bc  fb ff ff 1a                                      bne #0x8685b0
008685c0  02 30 a0 e1                                      mov r3, r2
008685c4  7c 30 8d e5                                      str r3, [sp, #0x7c]
008685c8  01 40 84 e2                                      add r4, r4, #1
008685cc  28 50 85 e2                                      add r5, r5, #0x28
008685d0  bf ff ff ea                                      b #0x8684d4
008685d4  18 10 93 e5                                      ldr r1, [r3, #0x18]
008685d8  0b a0 99 e7                                      ldr sl, [sb, fp]
008685dc  08 00 a0 e1                                      mov r0, r8
008685e0  14 c0 91 e5                                      ldr ip, [r1, #0x14]
008685e4  d8 20 c1 e1                                      ldrd r2, r3, [r1, #8]
008685e8  55 ef 8c e2                                      add lr, ip, #0x154
008685ec  0e e1 97 e7                                      ldr lr, [r7, lr, lsl #2]
008685f0  0c c0 8d e5                                      str ip, [sp, #0xc]
008685f4  02 40 8d e9                                      stmib sp, {r1, lr}
008685f8  00 a0 8d e5                                      str sl, [sp]
008685fc  a5 fe ff eb                                      bl #0x868098
00868600  08 10 a0 e1                                      mov r1, r8
00868604  05 00 a0 e1                                      mov r0, r5
00868608  45 ff ff eb                                      bl #0x868324
0086860c  08 00 a0 e1                                      mov r0, r8
00868610  65 ff ff eb                                      bl #0x8683ac
00868614  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
00868618  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086861c  00 00 52 e3                                      cmp r2, #0
00868620  01 00 00 1a                                      bne #0x86862c
00868624  08 00 00 ea                                      b #0x86864c
00868628  03 20 a0 e1                                      mov r2, r3
0086862c  08 30 92 e5                                      ldr r3, [r2, #8]
00868630  00 00 53 e3                                      cmp r3, #0
00868634  fb ff ff 1a                                      bne #0x868628
00868638  02 30 a0 e1                                      mov r3, r2
0086863c  7c 30 8d e5                                      str r3, [sp, #0x7c]
00868640  01 40 84 e2                                      add r4, r4, #1
00868644  28 50 85 e2                                      add r5, r5, #0x28
00868648  b7 ff ff ea                                      b #0x86852c
0086864c  04 10 93 e5                                      ldr r1, [r3, #4]
00868650  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00868654  00 00 53 e1                                      cmp r3, r0
00868658  05 00 00 1a                                      bne #0x868674
0086865c  01 30 a0 e1                                      mov r3, r1
00868660  04 10 91 e5                                      ldr r1, [r1, #4]
00868664  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00868668  03 00 52 e1                                      cmp r2, r3
0086866c  fa ff ff 0a                                      beq #0x86865c
00868670  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00868674  02 00 51 e1                                      cmp r1, r2
00868678  01 30 a0 11                                      movne r3, r1
0086867c  ee ff ff ea                                      b #0x86863c
00868680  04 10 93 e5                                      ldr r1, [r3, #4]
00868684  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00868688  03 00 50 e1                                      cmp r0, r3
0086868c  05 00 00 1a                                      bne #0x8686a8
00868690  01 30 a0 e1                                      mov r3, r1
00868694  04 10 91 e5                                      ldr r1, [r1, #4]
00868698  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086869c  03 00 52 e1                                      cmp r2, r3
008686a0  fa ff ff 0a                                      beq #0x868690
008686a4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008686a8  02 00 51 e1                                      cmp r1, r2
008686ac  01 30 a0 11                                      movne r3, r1
008686b0  c3 ff ff ea                                      b #0x8685c4
; mapping-symbol data/literal pool
008686b4  c0 c5 12 00 98 38 00 00                          .byte 0xc0, 0xc5, 0x12, 0x00, 0x98, 0x38, 0x00, 0x00

; FUNCTION 0x008686bc, declared_size=244, range_size=244, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal13GetDataObjectERNS_10DataHandleE
; demangled: vox::VoxEngineInternal::GetDataObject(vox::DataHandle&)
; decoder-mode: arm
008686bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008686c0  0c d0 4d e2                                      sub sp, sp, #0xc
008686c4  00 30 91 e5                                      ldr r3, [r1]
008686c8  00 50 a0 e1                                      mov r5, r0
008686cc  0d 20 a0 e1                                      mov r2, sp
008686d0  01 00 a0 e1                                      mov r0, r1
008686d4  01 40 a0 e1                                      mov r4, r1
008686d8  04 10 8d e2                                      add r1, sp, #4
008686dc  0f e0 a0 e1                                      mov lr, pc
008686e0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008686e4  00 30 9d e5                                      ldr r3, [sp]
008686e8  55 3f 83 e2                                      add r3, r3, #0x154
008686ec  03 21 95 e7                                      ldr r2, [r5, r3, lsl #2]
008686f0  04 30 9d e5                                      ldr r3, [sp, #4]
008686f4  03 00 52 e1                                      cmp r2, r3
008686f8  14 00 00 0a                                      beq #0x868750
008686fc  00 30 94 e5                                      ldr r3, [r4]
00868700  04 00 a0 e1                                      mov r0, r4
00868704  0f e0 a0 e1                                      mov lr, pc
00868708  08 f0 93 e5                                      ldr pc, [r3, #8]
0086870c  00 20 a0 e1                                      mov r2, r0
00868710  01 30 a0 e1                                      mov r3, r1
00868714  08 00 85 e2                                      add r0, r5, #8
00868718  89 ea ff eb                                      bl #0x863144
0086871c  00 70 50 e2                                      subs r7, r0, #0
00868720  11 00 00 0a                                      beq #0x86876c
00868724  14 20 97 e5                                      ldr r2, [r7, #0x14]
00868728  00 30 94 e5                                      ldr r3, [r4]
0086872c  04 00 a0 e1                                      mov r0, r4
00868730  55 1f 82 e2                                      add r1, r2, #0x154
00868734  01 11 95 e7                                      ldr r1, [r5, r1, lsl #2]
00868738  00 20 8d e5                                      str r2, [sp]
0086873c  0f e0 a0 e1                                      mov lr, pc
00868740  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00868744  07 00 a0 e1                                      mov r0, r7
00868748  0c d0 8d e2                                      add sp, sp, #0xc
0086874c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00868750  00 30 94 e5                                      ldr r3, [r4]
00868754  04 00 a0 e1                                      mov r0, r4
00868758  0f e0 a0 e1                                      mov lr, pc
0086875c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00868760  00 70 50 e2                                      subs r7, r0, #0
00868764  f6 ff ff 1a                                      bne #0x868744
00868768  e3 ff ff ea                                      b #0x8686fc
0086876c  60 60 85 e2                                      add r6, r5, #0x60
00868770  06 00 a0 e1                                      mov r0, r6
00868774  73 ab 00 eb                                      bl #0x893548
00868778  00 30 94 e5                                      ldr r3, [r4]
0086877c  04 00 a0 e1                                      mov r0, r4
00868780  0f e0 a0 e1                                      mov lr, pc
00868784  08 f0 93 e5                                      ldr pc, [r3, #8]
00868788  00 20 a0 e1                                      mov r2, r0
0086878c  01 30 a0 e1                                      mov r3, r1
00868790  28 00 85 e2                                      add r0, r5, #0x28
00868794  6a ea ff eb                                      bl #0x863144
00868798  00 70 a0 e1                                      mov r7, r0
0086879c  06 00 a0 e1                                      mov r0, r6
008687a0  5d ab 00 eb                                      bl #0x89351c
008687a4  00 00 57 e3                                      cmp r7, #0
008687a8  dd ff ff 1a                                      bne #0x868724
008687ac  e4 ff ff ea                                      b #0x868744

; FUNCTION 0x008687b0, declared_size=72, range_size=72, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal11GetUserDataERNS_10DataHandleE
; demangled: vox::VoxEngineInternal::GetUserData(vox::DataHandle&)
; decoder-mode: arm
008687b0  70 40 2d e9                                      push {r4, r5, r6, lr}
008687b4  54 40 80 e2                                      add r4, r0, #0x54
008687b8  00 50 a0 e1                                      mov r5, r0
008687bc  01 60 a0 e1                                      mov r6, r1
008687c0  04 00 a0 e1                                      mov r0, r4
008687c4  5f ab 00 eb                                      bl #0x893548
008687c8  05 00 a0 e1                                      mov r0, r5
008687cc  06 10 a0 e1                                      mov r1, r6
008687d0  b9 ff ff eb                                      bl #0x8686bc
008687d4  00 00 50 e3                                      cmp r0, #0
008687d8  00 50 e0 03                                      mvneq r5, #0
008687dc  01 00 00 0a                                      beq #0x8687e8
008687e0  24 f4 ff eb                                      bl #0x865878
008687e4  00 50 a0 e1                                      mov r5, r0
008687e8  04 00 a0 e1                                      mov r0, r4
008687ec  4a ab 00 eb                                      bl #0x89351c
008687f0  05 00 a0 e1                                      mov r0, r5
008687f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008687f8, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal11SetUserDataERNS_10DataHandleERNS_18DataHandleUserDataE
; demangled: vox::VoxEngineInternal::SetUserData(vox::DataHandle&, vox::DataHandleUserData&)
; decoder-mode: arm
008687f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008687fc  54 40 80 e2                                      add r4, r0, #0x54
00868800  00 50 a0 e1                                      mov r5, r0
00868804  01 60 a0 e1                                      mov r6, r1
00868808  04 00 a0 e1                                      mov r0, r4
0086880c  02 70 a0 e1                                      mov r7, r2
00868810  4c ab 00 eb                                      bl #0x893548
00868814  05 00 a0 e1                                      mov r0, r5
00868818  06 10 a0 e1                                      mov r1, r6
0086881c  a6 ff ff eb                                      bl #0x8686bc
00868820  00 00 50 e3                                      cmp r0, #0
00868824  01 00 00 0a                                      beq #0x868830
00868828  07 10 a0 e1                                      mov r1, r7
0086882c  1b f4 ff eb                                      bl #0x8658a0
00868830  04 00 a0 e1                                      mov r0, r4
00868834  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00868838  37 ab 00 ea                                      b #0x89351c

; FUNCTION 0x0086883c, declared_size=64, range_size=64, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal6GetUidERNS_10DataHandleE
; demangled: vox::VoxEngineInternal::GetUid(vox::DataHandle&)
; decoder-mode: arm
0086883c  70 40 2d e9                                      push {r4, r5, r6, lr}
00868840  54 40 80 e2                                      add r4, r0, #0x54
00868844  00 50 a0 e1                                      mov r5, r0
00868848  01 60 a0 e1                                      mov r6, r1
0086884c  04 00 a0 e1                                      mov r0, r4
00868850  3c ab 00 eb                                      bl #0x893548
00868854  05 00 a0 e1                                      mov r0, r5
00868858  06 10 a0 e1                                      mov r1, r6
0086885c  96 ff ff eb                                      bl #0x8686bc
00868860  00 00 50 e3                                      cmp r0, #0
00868864  24 50 90 15                                      ldrne r5, [r0, #0x24]
00868868  00 50 e0 03                                      mvneq r5, #0
0086886c  04 00 a0 e1                                      mov r0, r4
00868870  29 ab 00 eb                                      bl #0x89351c
00868874  05 00 a0 e1                                      mov r0, r5
00868878  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0086887c, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal6SetUidERNS_10DataHandleEi
; demangled: vox::VoxEngineInternal::SetUid(vox::DataHandle&, int)
; decoder-mode: arm
0086887c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00868880  54 40 80 e2                                      add r4, r0, #0x54
00868884  00 50 a0 e1                                      mov r5, r0
00868888  01 60 a0 e1                                      mov r6, r1
0086888c  04 00 a0 e1                                      mov r0, r4
00868890  02 70 a0 e1                                      mov r7, r2
00868894  2b ab 00 eb                                      bl #0x893548
00868898  05 00 a0 e1                                      mov r0, r5
0086889c  06 10 a0 e1                                      mov r1, r6
008688a0  85 ff ff eb                                      bl #0x8686bc
008688a4  00 00 50 e3                                      cmp r0, #0
008688a8  24 70 80 15                                      strne r7, [r0, #0x24]
008688ac  04 00 a0 e1                                      mov r0, r4
008688b0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008688b4  18 ab 00 ea                                      b #0x89351c

; FUNCTION 0x008688b8, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal17SetPriorityBankIdERNS_10DataHandleEi
; demangled: vox::VoxEngineInternal::SetPriorityBankId(vox::DataHandle&, int)
; decoder-mode: arm
008688b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008688bc  54 40 80 e2                                      add r4, r0, #0x54
008688c0  00 50 a0 e1                                      mov r5, r0
008688c4  01 60 a0 e1                                      mov r6, r1
008688c8  04 00 a0 e1                                      mov r0, r4
008688cc  02 70 a0 e1                                      mov r7, r2
008688d0  1c ab 00 eb                                      bl #0x893548
008688d4  05 00 a0 e1                                      mov r0, r5
008688d8  06 10 a0 e1                                      mov r1, r6
008688dc  76 ff ff eb                                      bl #0x8686bc
008688e0  00 00 50 e3                                      cmp r0, #0
008688e4  20 70 80 15                                      strne r7, [r0, #0x20]
008688e8  04 00 a0 e1                                      mov r0, r4
008688ec  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008688f0  09 ab 00 ea                                      b #0x89351c

; FUNCTION 0x008688f4, declared_size=72, range_size=72, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal11GetDurationERNS_10DataHandleE
; demangled: vox::VoxEngineInternal::GetDuration(vox::DataHandle&)
; decoder-mode: arm
008688f4  70 40 2d e9                                      push {r4, r5, r6, lr}
008688f8  54 40 80 e2                                      add r4, r0, #0x54
008688fc  00 50 a0 e1                                      mov r5, r0
00868900  01 60 a0 e1                                      mov r6, r1
00868904  04 00 a0 e1                                      mov r0, r4
00868908  0e ab 00 eb                                      bl #0x893548
0086890c  05 00 a0 e1                                      mov r0, r5
00868910  06 10 a0 e1                                      mov r1, r6
00868914  68 ff ff eb                                      bl #0x8686bc
00868918  00 00 50 e3                                      cmp r0, #0
0086891c  00 50 a0 03                                      moveq r5, #0
00868920  01 00 00 0a                                      beq #0x86892c
00868924  f4 f3 ff eb                                      bl #0x8658fc
00868928  00 50 a0 e1                                      mov r5, r0
0086892c  04 00 a0 e1                                      mov r0, r4
00868930  f9 aa 00 eb                                      bl #0x89351c
00868934  05 00 a0 e1                                      mov r0, r5
00868938  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0086893c, declared_size=60, range_size=60, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal7IsValidERNS_10DataHandleE
; demangled: vox::VoxEngineInternal::IsValid(vox::DataHandle&)
; decoder-mode: arm
0086893c  70 40 2d e9                                      push {r4, r5, r6, lr}
00868940  54 40 80 e2                                      add r4, r0, #0x54
00868944  00 50 a0 e1                                      mov r5, r0
00868948  01 60 a0 e1                                      mov r6, r1
0086894c  04 00 a0 e1                                      mov r0, r4
00868950  fc aa 00 eb                                      bl #0x893548
00868954  06 10 a0 e1                                      mov r1, r6
00868958  05 00 a0 e1                                      mov r0, r5
0086895c  56 ff ff eb                                      bl #0x8686bc
00868960  00 50 a0 e1                                      mov r5, r0
00868964  04 00 a0 e1                                      mov r0, r4
00868968  eb aa 00 eb                                      bl #0x89351c
0086896c  00 00 55 e2                                      subs r0, r5, #0
00868970  01 00 a0 13                                      movne r0, #1
00868974  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00868978, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal7IsReadyERNS_10DataHandleE
; demangled: vox::VoxEngineInternal::IsReady(vox::DataHandle&)
; decoder-mode: arm
00868978  70 40 2d e9                                      push {r4, r5, r6, lr}
0086897c  54 40 80 e2                                      add r4, r0, #0x54
00868980  00 50 a0 e1                                      mov r5, r0
00868984  01 60 a0 e1                                      mov r6, r1
00868988  04 00 a0 e1                                      mov r0, r4
0086898c  ed aa 00 eb                                      bl #0x893548
00868990  05 00 a0 e1                                      mov r0, r5
00868994  06 10 a0 e1                                      mov r1, r6
00868998  47 ff ff eb                                      bl #0x8686bc
0086899c  00 50 50 e2                                      subs r5, r0, #0
008689a0  01 00 00 0a                                      beq #0x8689ac
008689a4  c8 f3 ff eb                                      bl #0x8658cc
008689a8  00 50 a0 e1                                      mov r5, r0
008689ac  04 00 a0 e1                                      mov r0, r4
008689b0  d9 aa 00 eb                                      bl #0x89351c
008689b4  05 00 a0 e1                                      mov r0, r5
008689b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008689bc, declared_size=716, range_size=716, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal17GetEmitterHandlesERNS_10DataHandleEPNS_13EmitterHandleEi
; demangled: vox::VoxEngineInternal::GetEmitterHandles(vox::DataHandle&, vox::EmitterHandle*, int)
; decoder-mode: arm
008689bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008689c0  54 a0 80 e2                                      add sl, r0, #0x54
008689c4  84 d0 4d e2                                      sub sp, sp, #0x84
008689c8  01 40 a0 e1                                      mov r4, r1
008689cc  00 70 a0 e1                                      mov r7, r0
008689d0  0a 00 a0 e1                                      mov r0, sl
008689d4  1c 20 8d e5                                      str r2, [sp, #0x1c]
008689d8  03 50 a0 e1                                      mov r5, r3
008689dc  d9 aa 00 eb                                      bl #0x893548
008689e0  04 10 a0 e1                                      mov r1, r4
008689e4  07 00 a0 e1                                      mov r0, r7
008689e8  33 ff ff eb                                      bl #0x8686bc
008689ec  8c 82 9f e5                                      ldr r8, [pc, #0x28c]
008689f0  00 60 50 e2                                      subs r6, r0, #0
008689f4  06 40 a0 01                                      moveq r4, r6
008689f8  08 80 8f e0                                      add r8, pc, r8
008689fc  2e 00 00 0a                                      beq #0x868abc
00868a00  c4 10 87 e2                                      add r1, r7, #0xc4
00868a04  01 00 a0 e1                                      mov r0, r1
00868a08  d0 b0 87 e2                                      add fp, r7, #0xd0
00868a0c  14 10 8d e5                                      str r1, [sp, #0x14]
00868a10  78 40 87 e2                                      add r4, r7, #0x78
00868a14  cb aa 00 eb                                      bl #0x893548
00868a18  0b 00 a0 e1                                      mov r0, fp
00868a1c  c9 aa 00 eb                                      bl #0x893548
00868a20  04 10 a0 e1                                      mov r1, r4
00868a24  7c 00 8d e2                                      add r0, sp, #0x7c
00868a28  f9 e9 ff eb                                      bl #0x863214
00868a2c  04 10 a0 e1                                      mov r1, r4
00868a30  78 00 8d e2                                      add r0, sp, #0x78
00868a34  f9 e9 ff eb                                      bl #0x863220
00868a38  44 32 9f e5                                      ldr r3, [pc, #0x244]
00868a3c  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00868a40  78 00 9d e5                                      ldr r0, [sp, #0x78]
00868a44  00 40 a0 e3                                      mov r4, #0
00868a48  48 90 8d e2                                      add sb, sp, #0x48
00868a4c  10 30 8d e5                                      str r3, [sp, #0x10]
00868a50  00 00 52 e1                                      cmp r2, r0
00868a54  01 00 00 0a                                      beq #0x868a60
00868a58  05 00 54 e1                                      cmp r4, r5
00868a5c  1b 00 00 ba                                      blt #0x868ad0
00868a60  98 90 87 e2                                      add sb, r7, #0x98
00868a64  09 10 a0 e1                                      mov r1, sb
00868a68  74 00 8d e2                                      add r0, sp, #0x74
00868a6c  e8 e9 ff eb                                      bl #0x863214
00868a70  74 30 9d e5                                      ldr r3, [sp, #0x74]
00868a74  09 10 a0 e1                                      mov r1, sb
00868a78  70 00 8d e2                                      add r0, sp, #0x70
00868a7c  7c 30 8d e5                                      str r3, [sp, #0x7c]
00868a80  e6 e9 ff eb                                      bl #0x863220
00868a84  70 00 9d e5                                      ldr r0, [sp, #0x70]
00868a88  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
00868a8c  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00868a90  20 90 8d e2                                      add sb, sp, #0x20
00868a94  78 00 8d e5                                      str r0, [sp, #0x78]
00868a98  10 10 8d e5                                      str r1, [sp, #0x10]
00868a9c  02 00 50 e1                                      cmp r0, r2
00868aa0  01 00 00 0a                                      beq #0x868aac
00868aa4  05 00 54 e1                                      cmp r4, r5
00868aa8  17 00 00 ba                                      blt #0x868b0c
00868aac  0b 00 a0 e1                                      mov r0, fp
00868ab0  99 aa 00 eb                                      bl #0x89351c
00868ab4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00868ab8  97 aa 00 eb                                      bl #0x89351c
00868abc  0a 00 a0 e1                                      mov r0, sl
00868ac0  95 aa 00 eb                                      bl #0x89351c
00868ac4  04 00 a0 e1                                      mov r0, r4
00868ac8  84 d0 8d e2                                      add sp, sp, #0x84
00868acc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00868ad0  18 10 92 e5                                      ldr r1, [r2, #0x18]
00868ad4  18 31 91 e5                                      ldr r3, [r1, #0x118]
00868ad8  03 00 56 e1                                      cmp r6, r3
00868adc  4e 00 00 0a                                      beq #0x868c1c
00868ae0  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00868ae4  00 00 53 e3                                      cmp r3, #0
00868ae8  01 00 00 1a                                      bne #0x868af4
00868aec  23 00 00 ea                                      b #0x868b80
00868af0  02 30 a0 e1                                      mov r3, r2
00868af4  08 20 93 e5                                      ldr r2, [r3, #8]
00868af8  00 00 52 e3                                      cmp r2, #0
00868afc  fb ff ff 1a                                      bne #0x868af0
00868b00  03 20 a0 e1                                      mov r2, r3
00868b04  7c 20 8d e5                                      str r2, [sp, #0x7c]
00868b08  d0 ff ff ea                                      b #0x868a50
00868b0c  18 10 92 e5                                      ldr r1, [r2, #0x18]
00868b10  18 31 91 e5                                      ldr r3, [r1, #0x118]
00868b14  03 00 56 e1                                      cmp r6, r3
00868b18  26 00 00 0a                                      beq #0x868bb8
00868b1c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00868b20  00 00 53 e3                                      cmp r3, #0
00868b24  01 00 00 1a                                      bne #0x868b30
00868b28  06 00 00 ea                                      b #0x868b48
00868b2c  02 30 a0 e1                                      mov r3, r2
00868b30  08 20 93 e5                                      ldr r2, [r3, #8]
00868b34  00 00 52 e3                                      cmp r2, #0
00868b38  fb ff ff 1a                                      bne #0x868b2c
00868b3c  03 20 a0 e1                                      mov r2, r3
00868b40  7c 20 8d e5                                      str r2, [sp, #0x7c]
00868b44  d4 ff ff ea                                      b #0x868a9c
00868b48  04 10 92 e5                                      ldr r1, [r2, #4]
00868b4c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00868b50  0c 00 52 e1                                      cmp r2, ip
00868b54  05 00 00 1a                                      bne #0x868b70
00868b58  01 20 a0 e1                                      mov r2, r1
00868b5c  04 10 91 e5                                      ldr r1, [r1, #4]
00868b60  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00868b64  02 00 53 e1                                      cmp r3, r2
00868b68  fa ff ff 0a                                      beq #0x868b58
00868b6c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00868b70  01 00 53 e1                                      cmp r3, r1
00868b74  01 20 a0 11                                      movne r2, r1
00868b78  7c 20 8d e5                                      str r2, [sp, #0x7c]
00868b7c  c6 ff ff ea                                      b #0x868a9c
00868b80  04 10 92 e5                                      ldr r1, [r2, #4]
00868b84  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00868b88  02 00 5c e1                                      cmp ip, r2
00868b8c  05 00 00 1a                                      bne #0x868ba8
00868b90  01 20 a0 e1                                      mov r2, r1
00868b94  04 10 91 e5                                      ldr r1, [r1, #4]
00868b98  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00868b9c  02 00 53 e1                                      cmp r3, r2
00868ba0  fa ff ff 0a                                      beq #0x868b90
00868ba4  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00868ba8  03 00 51 e1                                      cmp r1, r3
00868bac  01 20 a0 11                                      movne r2, r1
00868bb0  7c 20 8d e5                                      str r2, [sp, #0x7c]
00868bb4  a5 ff ff ea                                      b #0x868a50
00868bb8  14 c0 91 e5                                      ldr ip, [r1, #0x14]
00868bbc  10 20 9d e5                                      ldr r2, [sp, #0x10]
00868bc0  55 0f 8c e2                                      add r0, ip, #0x154
00868bc4  00 01 97 e7                                      ldr r0, [r7, r0, lsl #2]
00868bc8  02 e0 98 e7                                      ldr lr, [r8, r2]
00868bcc  d8 20 c1 e1                                      ldrd r2, r3, [r1, #8]
00868bd0  18 00 8d e5                                      str r0, [sp, #0x18]
00868bd4  04 10 8d e5                                      str r1, [sp, #4]
00868bd8  18 10 9d e5                                      ldr r1, [sp, #0x18]
00868bdc  09 00 a0 e1                                      mov r0, sb
00868be0  00 e0 8d e5                                      str lr, [sp]
00868be4  0c c0 8d e5                                      str ip, [sp, #0xc]
00868be8  08 10 8d e5                                      str r1, [sp, #8]
00868bec  29 fd ff eb                                      bl #0x868098
00868bf0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00868bf4  28 20 a0 e3                                      mov r2, #0x28
00868bf8  09 10 a0 e1                                      mov r1, sb
00868bfc  92 34 20 e0                                      mla r0, r2, r4, r3
00868c00  c7 fd ff eb                                      bl #0x868324
00868c04  09 00 a0 e1                                      mov r0, sb
00868c08  e7 fd ff eb                                      bl #0x8683ac
00868c0c  01 40 84 e2                                      add r4, r4, #1
00868c10  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00868c14  78 00 9d e5                                      ldr r0, [sp, #0x78]
00868c18  bf ff ff ea                                      b #0x868b1c
00868c1c  14 c0 91 e5                                      ldr ip, [r1, #0x14]
00868c20  10 20 9d e5                                      ldr r2, [sp, #0x10]
00868c24  55 0f 8c e2                                      add r0, ip, #0x154
00868c28  00 01 97 e7                                      ldr r0, [r7, r0, lsl #2]
00868c2c  02 e0 98 e7                                      ldr lr, [r8, r2]
00868c30  d8 20 c1 e1                                      ldrd r2, r3, [r1, #8]
00868c34  18 00 8d e5                                      str r0, [sp, #0x18]
00868c38  04 10 8d e5                                      str r1, [sp, #4]
00868c3c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00868c40  09 00 a0 e1                                      mov r0, sb
00868c44  00 e0 8d e5                                      str lr, [sp]
00868c48  0c c0 8d e5                                      str ip, [sp, #0xc]
00868c4c  08 10 8d e5                                      str r1, [sp, #8]
00868c50  10 fd ff eb                                      bl #0x868098
00868c54  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00868c58  28 20 a0 e3                                      mov r2, #0x28
00868c5c  09 10 a0 e1                                      mov r1, sb
00868c60  92 34 20 e0                                      mla r0, r2, r4, r3
00868c64  ae fd ff eb                                      bl #0x868324
00868c68  09 00 a0 e1                                      mov r0, sb
00868c6c  ce fd ff eb                                      bl #0x8683ac
00868c70  01 40 84 e2                                      add r4, r4, #1
00868c74  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00868c78  78 00 9d e5                                      ldr r0, [sp, #0x78]
00868c7c  97 ff ff ea                                      b #0x868ae0
; mapping-symbol data/literal pool
00868c80  98 c0 12 00 98 38 00 00                          .byte 0x98, 0xc0, 0x12, 0x00, 0x98, 0x38, 0x00, 0x00

; FUNCTION 0x00868c88, declared_size=136, range_size=136, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal17ReleaseDatasourceERNS_10DataHandleE
; demangled: vox::VoxEngineInternal::ReleaseDatasource(vox::DataHandle&)
; decoder-mode: arm
00868c88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00868c8c  54 50 80 e2                                      add r5, r0, #0x54
00868c90  00 40 a0 e1                                      mov r4, r0
00868c94  01 60 a0 e1                                      mov r6, r1
00868c98  05 00 a0 e1                                      mov r0, r5
00868c9c  29 aa 00 eb                                      bl #0x893548
00868ca0  04 00 a0 e1                                      mov r0, r4
00868ca4  06 10 a0 e1                                      mov r1, r6
00868ca8  83 fe ff eb                                      bl #0x8686bc
00868cac  00 70 50 e2                                      subs r7, r0, #0
00868cb0  08 00 00 0a                                      beq #0x868cd8
00868cb4  74 60 84 e2                                      add r6, r4, #0x74
00868cb8  8b f3 ff eb                                      bl #0x865aec
00868cbc  06 00 a0 e1                                      mov r0, r6
00868cc0  ed a9 00 eb                                      bl #0x89347c
00868cc4  4c 10 d7 e5                                      ldrb r1, [r7, #0x4c]
00868cc8  00 00 51 e3                                      cmp r1, #0
00868ccc  04 00 00 0a                                      beq #0x868ce4
00868cd0  06 00 a0 e1                                      mov r0, r6
00868cd4  e7 a9 00 eb                                      bl #0x893478
00868cd8  05 00 a0 e1                                      mov r0, r5
00868cdc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00868ce0  0d aa 00 ea                                      b #0x89351c
00868ce4  01 30 a0 e3                                      mov r3, #1
00868ce8  4c 30 c7 e5                                      strb r3, [r7, #0x4c]
00868cec  0c 00 a0 e3                                      mov r0, #0xc
00868cf0  54 9e ea eb                                      bl #0x310648
00868cf4  08 70 80 e5                                      str r7, [r0, #8]
00868cf8  70 30 94 e5                                      ldr r3, [r4, #0x70]
00868cfc  6c 20 84 e2                                      add r2, r4, #0x6c
00868d00  0c 00 80 e8                                      stm r0, {r2, r3}
00868d04  00 00 83 e5                                      str r0, [r3]
00868d08  70 00 84 e5                                      str r0, [r4, #0x70]
00868d0c  ef ff ff ea                                      b #0x868cd0

; FUNCTION 0x00868d10, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal26IncreaseDataObjectRefCountERNS_10DataHandleE
; demangled: vox::VoxEngineInternal::IncreaseDataObjectRefCount(vox::DataHandle&)
; decoder-mode: arm
00868d10  70 40 2d e9                                      push {r4, r5, r6, lr}
00868d14  54 40 80 e2                                      add r4, r0, #0x54
00868d18  00 50 a0 e1                                      mov r5, r0
00868d1c  01 60 a0 e1                                      mov r6, r1
00868d20  04 00 a0 e1                                      mov r0, r4
00868d24  07 aa 00 eb                                      bl #0x893548
00868d28  05 00 a0 e1                                      mov r0, r5
00868d2c  06 10 a0 e1                                      mov r1, r6
00868d30  61 fe ff eb                                      bl #0x8686bc
00868d34  00 30 50 e2                                      subs r3, r0, #0
00868d38  02 00 00 0a                                      beq #0x868d48
00868d3c  00 30 93 e5                                      ldr r3, [r3]
00868d40  0f e0 a0 e1                                      mov lr, pc
00868d44  08 f0 93 e5                                      ldr pc, [r3, #8]
00868d48  04 00 a0 e1                                      mov r0, r4
00868d4c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00868d50  f1 a9 00 ea                                      b #0x89351c

; FUNCTION 0x00868f9c, declared_size=204, range_size=204, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal7GetDataERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::GetData(vox::EmitterHandle&)
; decoder-mode: arm
00868f9c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00868fa0  c4 60 81 e2                                      add r6, r1, #0xc4
00868fa4  01 50 a0 e1                                      mov r5, r1
00868fa8  02 70 a0 e1                                      mov r7, r2
00868fac  14 d0 4d e2                                      sub sp, sp, #0x14
00868fb0  00 40 a0 e1                                      mov r4, r0
00868fb4  06 00 a0 e1                                      mov r0, r6
00868fb8  62 a9 00 eb                                      bl #0x893548
00868fbc  05 00 a0 e1                                      mov r0, r5
00868fc0  07 10 a0 e1                                      mov r1, r7
00868fc4  40 f9 ff eb                                      bl #0x8674cc
00868fc8  90 50 9f e5                                      ldr r5, [pc, #0x90]
00868fcc  00 00 50 e3                                      cmp r0, #0
00868fd0  05 50 8f e0                                      add r5, pc, r5
00868fd4  15 00 00 0a                                      beq #0x869030
00868fd8  18 31 90 e5                                      ldr r3, [r0, #0x118]
00868fdc  00 00 53 e3                                      cmp r3, #0
00868fe0  10 00 00 0a                                      beq #0x869028
00868fe4  06 00 a0 e1                                      mov r0, r6
00868fe8  d8 60 c3 e1                                      ldrd r6, r7, [r3, #8]
00868fec  4a a9 00 eb                                      bl #0x89351c
00868ff0  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00868ff4  00 10 a0 e3                                      mov r1, #0
00868ff8  06 20 a0 e1                                      mov r2, r6
00868ffc  00 c0 95 e7                                      ldr ip, [r5, r0]
00869000  07 30 a0 e1                                      mov r3, r7
00869004  04 00 a0 e1                                      mov r0, r4
00869008  0c 10 8d e5                                      str r1, [sp, #0xc]
0086900c  00 c0 8d e5                                      str ip, [sp]
00869010  04 10 8d e5                                      str r1, [sp, #4]
00869014  08 10 8d e5                                      str r1, [sp, #8]
00869018  4d ff ff eb                                      bl #0x868d54
0086901c  04 00 a0 e1                                      mov r0, r4
00869020  14 d0 8d e2                                      add sp, sp, #0x14
00869024  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00869028  06 00 a0 e1                                      mov r0, r6
0086902c  3a a9 00 eb                                      bl #0x89351c
00869030  06 00 a0 e1                                      mov r0, r6
00869034  38 a9 00 eb                                      bl #0x89351c
00869038  00 10 a0 e3                                      mov r1, #0
0086903c  04 00 a0 e1                                      mov r0, r4
00869040  00 20 e0 e3                                      mvn r2, #0
00869044  00 30 e0 e3                                      mvn r3, #0
00869048  0c 10 8d e5                                      str r1, [sp, #0xc]
0086904c  00 10 8d e5                                      str r1, [sp]
00869050  04 10 8d e5                                      str r1, [sp, #4]
00869054  08 10 8d e5                                      str r1, [sp, #8]
00869058  3d ff ff eb                                      bl #0x868d54
0086905c  ee ff ff ea                                      b #0x86901c
; mapping-symbol data/literal pool
00869060  c0 ba 12 00 98 38 00 00                          .byte 0xc0, 0xba, 0x12, 0x00, 0x98, 0x38, 0x00, 0x00

; FUNCTION 0x00869068, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal22GetFreeEmitterObjectIdEv
; demangled: vox::VoxEngineInternal::GetFreeEmitterObjectId()
; decoder-mode: arm
00869068  70 40 2d e9                                      push {r4, r5, r6, lr}
0086906c  c4 40 80 e2                                      add r4, r0, #0xc4
00869070  00 50 a0 e1                                      mov r5, r0
00869074  04 00 a0 e1                                      mov r0, r4
00869078  0b a9 00 eb                                      bl #0x8934ac
0086907c  78 00 85 e2                                      add r0, r5, #0x78
00869080  58 e8 ff eb                                      bl #0x8631e8
00869084  00 50 a0 e1                                      mov r5, r0
00869088  01 60 a0 e1                                      mov r6, r1
0086908c  04 00 a0 e1                                      mov r0, r4
00869090  fa a8 00 eb                                      bl #0x893480
00869094  05 00 a0 e1                                      mov r0, r5
00869098  06 10 a0 e1                                      mov r1, r6
0086909c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008690a0, declared_size=628, range_size=628, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal18CreateEmitterAsyncERNS_10DataHandleEiPv
; demangled: vox::VoxEngineInternal::CreateEmitterAsync(vox::DataHandle&, int, void*)
; decoder-mode: arm
008690a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008690a4  54 80 81 e2                                      add r8, r1, #0x54
008690a8  02 50 a0 e1                                      mov r5, r2
008690ac  01 40 a0 e1                                      mov r4, r1
008690b0  5c d0 4d e2                                      sub sp, sp, #0x5c
008690b4  00 a0 a0 e1                                      mov sl, r0
008690b8  08 00 a0 e1                                      mov r0, r8
008690bc  03 90 a0 e1                                      mov sb, r3
008690c0  20 a9 00 eb                                      bl #0x893548
008690c4  05 10 a0 e1                                      mov r1, r5
008690c8  04 00 a0 e1                                      mov r0, r4
008690cc  7a fd ff eb                                      bl #0x8686bc
008690d0  34 62 9f e5                                      ldr r6, [pc, #0x234]
008690d4  00 50 50 e2                                      subs r5, r0, #0
008690d8  06 60 8f e0                                      add r6, pc, r6
008690dc  7f 00 00 0a                                      beq #0x8692e0
008690e0  f9 f1 ff eb                                      bl #0x8658cc
008690e4  00 70 50 e2                                      subs r7, r0, #0
008690e8  71 00 00 0a                                      beq #0x8692b4
008690ec  50 30 95 e5                                      ldr r3, [r5, #0x50]
008690f0  00 00 53 e3                                      cmp r3, #0
008690f4  60 00 00 1a                                      bne #0x86927c
008690f8  3c 70 95 e5                                      ldr r7, [r5, #0x3c]
008690fc  38 30 95 e5                                      ldr r3, [r5, #0x38]
00869100  00 00 53 e3                                      cmp r3, #0
00869104  00 00 57 13                                      cmpne r7, #0
00869108  00 70 a0 13                                      movne r7, #0
0086910c  01 70 a0 03                                      moveq r7, #1
00869110  59 00 00 0a                                      beq #0x86927c
00869114  28 30 85 e2                                      add r3, r5, #0x28
00869118  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0086911c  48 c0 8d e2                                      add ip, sp, #0x48
00869120  00 00 50 e3                                      cmp r0, #0
00869124  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00869128  53 00 00 da                                      ble #0x86927c
0086912c  4c 35 94 e5                                      ldr r3, [r4, #0x54c]
00869130  00 00 53 e3                                      cmp r3, #0
00869134  50 00 00 0a                                      beq #0x86927c
00869138  03 00 a0 e1                                      mov r0, r3
0086913c  0c 10 a0 e1                                      mov r1, ip
00869140  80 20 9d e5                                      ldr r2, [sp, #0x80]
00869144  00 c0 93 e5                                      ldr ip, [r3]
00869148  09 30 a0 e1                                      mov r3, sb
0086914c  0f e0 a0 e1                                      mov lr, pc
00869150  44 f0 9c e5                                      ldr pc, [ip, #0x44]
00869154  00 00 50 e3                                      cmp r0, #0
00869158  1c 00 8d e5                                      str r0, [sp, #0x1c]
0086915c  46 00 00 0a                                      beq #0x86927c
00869160  04 00 a0 e1                                      mov r0, r4
00869164  bf ff ff eb                                      bl #0x869068
00869168  00 20 a0 e1                                      mov r2, r0
0086916c  01 30 a0 e1                                      mov r3, r1
00869170  5a 0f a0 e3                                      mov r0, #0x168
00869174  07 10 a0 e1                                      mov r1, r7
00869178  20 b0 95 e5                                      ldr fp, [r5, #0x20]
0086917c  18 20 8d e5                                      str r2, [sp, #0x18]
00869180  14 30 8d e5                                      str r3, [sp, #0x14]
00869184  2f 9d ea eb                                      bl #0x310648
00869188  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0086918c  00 70 a0 e1                                      mov r7, r0
00869190  18 20 9d e5                                      ldr r2, [sp, #0x18]
00869194  14 30 9d e5                                      ldr r3, [sp, #0x14]
00869198  00 0a 8d e8                                      stm sp, {sb, fp}
0086919c  08 10 8d e5                                      str r1, [sp, #8]
008691a0  0c 50 8d e5                                      str r5, [sp, #0xc]
008691a4  75 f4 ff eb                                      bl #0x866380
008691a8  00 00 57 e3                                      cmp r7, #0
008691ac  2a 00 00 0a                                      beq #0x86925c
008691b0  05 00 a0 e1                                      mov r0, r5
008691b4  23 f2 ff eb                                      bl #0x865a48
008691b8  00 10 a0 e1                                      mov r1, r0
008691bc  07 00 a0 e1                                      mov r0, r7
008691c0  5b f1 ff eb                                      bl #0x865734
008691c4  d8 20 c7 e1                                      ldrd r2, r3, [r7, #8]
008691c8  05 00 a0 e1                                      mov r0, r5
008691cc  75 f2 ff eb                                      bl #0x865ba8
008691d0  08 00 a0 e1                                      mov r0, r8
008691d4  d0 a8 00 eb                                      bl #0x89351c
008691d8  d8 20 c7 e1                                      ldrd r2, r3, [r7, #8]
008691dc  90 15 94 e5                                      ldr r1, [r4, #0x590]
008691e0  28 01 9f e5                                      ldr r0, [pc, #0x128]
008691e4  20 50 8d e2                                      add r5, sp, #0x20
008691e8  14 10 87 e5                                      str r1, [r7, #0x14]
008691ec  90 15 94 e5                                      ldr r1, [r4, #0x590]
008691f0  00 e0 96 e7                                      ldr lr, [r6, r0]
008691f4  d0 60 84 e2                                      add r6, r4, #0xd0
008691f8  55 0f 81 e2                                      add r0, r1, #0x154
008691fc  00 c1 94 e7                                      ldr ip, [r4, r0, lsl #2]
00869200  05 00 a0 e1                                      mov r0, r5
00869204  00 e0 8d e5                                      str lr, [sp]
00869208  08 c0 8d e5                                      str ip, [sp, #8]
0086920c  0c 10 8d e5                                      str r1, [sp, #0xc]
00869210  04 70 8d e5                                      str r7, [sp, #4]
00869214  9f fb ff eb                                      bl #0x868098
00869218  90 35 94 e5                                      ldr r3, [r4, #0x590]
0086921c  06 00 a0 e1                                      mov r0, r6
00869220  01 30 83 e2                                      add r3, r3, #1
00869224  0f 30 03 e2                                      and r3, r3, #0xf
00869228  90 35 84 e5                                      str r3, [r4, #0x590]
0086922c  9e a8 00 eb                                      bl #0x8934ac
00869230  07 10 a0 e1                                      mov r1, r7
00869234  98 00 84 e2                                      add r0, r4, #0x98
00869238  ad ed ff eb                                      bl #0x8648f4
0086923c  06 00 a0 e1                                      mov r0, r6
00869240  8e a8 00 eb                                      bl #0x893480
00869244  0a 00 a0 e1                                      mov r0, sl
00869248  05 10 a0 e1                                      mov r1, r5
0086924c  db fb ff eb                                      bl #0x8681c0
00869250  05 00 a0 e1                                      mov r0, r5
00869254  54 fc ff eb                                      bl #0x8683ac
00869258  12 00 00 ea                                      b #0x8692a8
0086925c  4c 35 94 e5                                      ldr r3, [r4, #0x54c]
00869260  00 00 53 e3                                      cmp r3, #0
00869264  04 00 00 0a                                      beq #0x86927c
00869268  03 00 a0 e1                                      mov r0, r3
0086926c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00869270  00 30 93 e5                                      ldr r3, [r3]
00869274  0f e0 a0 e1                                      mov lr, pc
00869278  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0086927c  08 00 a0 e1                                      mov r0, r8
00869280  a5 a8 00 eb                                      bl #0x89351c
00869284  00 10 a0 e3                                      mov r1, #0
00869288  0a 00 a0 e1                                      mov r0, sl
0086928c  00 20 e0 e3                                      mvn r2, #0
00869290  00 30 e0 e3                                      mvn r3, #0
00869294  0c 10 8d e5                                      str r1, [sp, #0xc]
00869298  00 10 8d e5                                      str r1, [sp]
0086929c  04 10 8d e5                                      str r1, [sp, #4]
008692a0  08 10 8d e5                                      str r1, [sp, #8]
008692a4  7b fb ff eb                                      bl #0x868098
008692a8  0a 00 a0 e1                                      mov r0, sl
008692ac  5c d0 8d e2                                      add sp, sp, #0x5c
008692b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008692b4  08 00 a0 e1                                      mov r0, r8
008692b8  97 a8 00 eb                                      bl #0x89351c
008692bc  0a 00 a0 e1                                      mov r0, sl
008692c0  00 20 e0 e3                                      mvn r2, #0
008692c4  00 30 e0 e3                                      mvn r3, #0
008692c8  0c 70 8d e5                                      str r7, [sp, #0xc]
008692cc  00 70 8d e5                                      str r7, [sp]
008692d0  04 70 8d e5                                      str r7, [sp, #4]
008692d4  08 70 8d e5                                      str r7, [sp, #8]
008692d8  6e fb ff eb                                      bl #0x868098
008692dc  f1 ff ff ea                                      b #0x8692a8
008692e0  08 00 a0 e1                                      mov r0, r8
008692e4  8c a8 00 eb                                      bl #0x89351c
008692e8  0a 00 a0 e1                                      mov r0, sl
008692ec  00 20 e0 e3                                      mvn r2, #0
008692f0  00 30 e0 e3                                      mvn r3, #0
008692f4  0c 50 8d e5                                      str r5, [sp, #0xc]
008692f8  00 50 8d e5                                      str r5, [sp]
008692fc  04 50 8d e5                                      str r5, [sp, #4]
00869300  08 50 8d e5                                      str r5, [sp, #8]
00869304  63 fb ff eb                                      bl #0x868098
00869308  e6 ff ff ea                                      b #0x8692a8
; mapping-symbol data/literal pool
0086930c  b8 b9 12 00 98 38 00 00                          .byte 0xb8, 0xb9, 0x12, 0x00, 0x98, 0x38, 0x00, 0x00

; FUNCTION 0x00869314, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal19GetFreeDataObjectIdEv
; demangled: vox::VoxEngineInternal::GetFreeDataObjectId()
; decoder-mode: arm
00869314  70 40 2d e9                                      push {r4, r5, r6, lr}
00869318  54 40 80 e2                                      add r4, r0, #0x54
0086931c  00 50 a0 e1                                      mov r5, r0
00869320  04 00 a0 e1                                      mov r0, r4
00869324  60 a8 00 eb                                      bl #0x8934ac
00869328  08 00 85 e2                                      add r0, r5, #8
0086932c  ad e7 ff eb                                      bl #0x8631e8
00869330  00 50 a0 e1                                      mov r5, r0
00869334  01 60 a0 e1                                      mov r6, r1
00869338  04 00 a0 e1                                      mov r0, r4
0086933c  4f a8 00 eb                                      bl #0x893480
00869340  05 00 a0 e1                                      mov r0, r5
00869344  06 10 a0 e1                                      mov r1, r6
00869348  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0086934c, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal10InitializeEv
; demangled: vox::VoxEngineInternal::Initialize()
; decoder-mode: arm
0086934c  10 40 2d e9                                      push {r4, lr}
00869350  4c 35 90 e5                                      ldr r3, [r0, #0x54c]
00869354  00 40 a0 e1                                      mov r4, r0
00869358  00 00 53 e3                                      cmp r3, #0
0086935c  01 00 00 0a                                      beq #0x869368
00869360  10 40 bd e8                                      pop {r4, lr}
00869364  8e ac 00 ea                                      b #0x8945a4
00869368  d5 99 00 eb                                      bl #0x88fac4
0086936c  4c 05 84 e5                                      str r0, [r4, #0x54c]
00869370  fa ff ff ea                                      b #0x869360

; FUNCTION 0x00869a94, declared_size=680, range_size=680, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternalC1Ev
; demangled: vox::VoxEngineInternal::VoxEngineInternal()
; decoder-mode: arm
00869a94  98 32 9f e5                                      ldr r3, [pc, #0x298]
00869a98  98 22 9f e5                                      ldr r2, [pc, #0x298]
00869a9c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00869aa0  03 30 8f e0                                      add r3, pc, r3
00869aa4  02 20 93 e7                                      ldr r2, [r3, r2]
00869aa8  00 50 a0 e3                                      mov r5, #0
00869aac  00 10 a0 e1                                      mov r1, r0
00869ab0  08 20 82 e2                                      add r2, r2, #8
00869ab4  00 20 80 e5                                      str r2, [r0]
00869ab8  0c 50 80 e5                                      str r5, [r0, #0xc]
00869abc  00 20 a0 e1                                      mov r2, r0
00869ac0  08 50 e1 e5                                      strb r5, [r1, #8]!
00869ac4  00 70 a0 e3                                      mov r7, #0
00869ac8  01 60 a0 e3                                      mov r6, #1
00869acc  14 10 80 e5                                      str r1, [r0, #0x14]
00869ad0  10 10 80 e5                                      str r1, [r0, #0x10]
00869ad4  18 50 80 e5                                      str r5, [r0, #0x18]
00869ad8  f0 62 c0 e1                                      strd r6, r7, [r0, #0x20]
00869adc  2c 50 80 e5                                      str r5, [r0, #0x2c]
00869ae0  28 50 e2 e5                                      strb r5, [r2, #0x28]!
00869ae4  00 40 a0 e1                                      mov r4, r0
00869ae8  28 d0 4d e2                                      sub sp, sp, #0x28
00869aec  34 20 80 e5                                      str r2, [r0, #0x34]
00869af0  30 20 80 e5                                      str r2, [r0, #0x30]
00869af4  38 50 80 e5                                      str r5, [r0, #0x38]
00869af8  f0 64 c0 e1                                      strd r6, r7, [r0, #0x40]
00869afc  48 50 80 e5                                      str r5, [r0, #0x48]
00869b00  4c 50 80 e5                                      str r5, [r0, #0x4c]
00869b04  50 50 80 e5                                      str r5, [r0, #0x50]
00869b08  54 50 80 e5                                      str r5, [r0, #0x54]
00869b0c  58 50 80 e5                                      str r5, [r0, #0x58]
00869b10  5c 00 80 e2                                      add r0, r0, #0x5c
00869b14  ad a6 00 eb                                      bl #0x8935d0
00869b18  60 50 84 e5                                      str r5, [r4, #0x60]
00869b1c  64 50 84 e5                                      str r5, [r4, #0x64]
00869b20  68 00 84 e2                                      add r0, r4, #0x68
00869b24  a9 a6 00 eb                                      bl #0x8935d0
00869b28  6c 30 84 e2                                      add r3, r4, #0x6c
00869b2c  70 30 84 e5                                      str r3, [r4, #0x70]
00869b30  6c 30 84 e5                                      str r3, [r4, #0x6c]
00869b34  74 00 84 e2                                      add r0, r4, #0x74
00869b38  a4 a6 00 eb                                      bl #0x8935d0
00869b3c  04 20 a0 e1                                      mov r2, r4
00869b40  04 30 a0 e1                                      mov r3, r4
00869b44  7c 50 84 e5                                      str r5, [r4, #0x7c]
00869b48  78 50 e2 e5                                      strb r5, [r2, #0x78]!
00869b4c  84 20 84 e5                                      str r2, [r4, #0x84]
00869b50  80 20 84 e5                                      str r2, [r4, #0x80]
00869b54  88 50 84 e5                                      str r5, [r4, #0x88]
00869b58  f0 69 c4 e1                                      strd r6, r7, [r4, #0x90]
00869b5c  9c 50 84 e5                                      str r5, [r4, #0x9c]
00869b60  98 50 e3 e5                                      strb r5, [r3, #0x98]!
00869b64  a4 30 84 e5                                      str r3, [r4, #0xa4]
00869b68  a0 30 84 e5                                      str r3, [r4, #0xa0]
00869b6c  f0 6b c4 e1                                      strd r6, r7, [r4, #0xb0]
00869b70  a8 50 84 e5                                      str r5, [r4, #0xa8]
00869b74  b8 50 84 e5                                      str r5, [r4, #0xb8]
00869b78  bc 50 84 e5                                      str r5, [r4, #0xbc]
00869b7c  c0 50 84 e5                                      str r5, [r4, #0xc0]
00869b80  c4 50 84 e5                                      str r5, [r4, #0xc4]
00869b84  c8 50 84 e5                                      str r5, [r4, #0xc8]
00869b88  cc 00 84 e2                                      add r0, r4, #0xcc
00869b8c  8f a6 00 eb                                      bl #0x8935d0
00869b90  d4 50 84 e5                                      str r5, [r4, #0xd4]
00869b94  d0 50 84 e5                                      str r5, [r4, #0xd0]
00869b98  d8 00 84 e2                                      add r0, r4, #0xd8
00869b9c  8b a6 00 eb                                      bl #0x8935d0
00869ba0  00 50 a0 e3                                      mov r5, #0
00869ba4  fe 75 a0 e3                                      mov r7, #0x3f800000
00869ba8  01 10 a0 e3                                      mov r1, #1
00869bac  e0 50 84 e5                                      str r5, [r4, #0xe0]
00869bb0  e4 70 84 e5                                      str r7, [r4, #0xe4]
00869bb4  e8 50 84 e5                                      str r5, [r4, #0xe8]
00869bb8  ec 50 84 e5                                      str r5, [r4, #0xec]
00869bbc  f0 10 c4 e5                                      strb r1, [r4, #0xf0]
00869bc0  f4 30 84 e2                                      add r3, r4, #0xf4
00869bc4  dd 2f 84 e2                                      add r2, r4, #0x374
00869bc8  00 50 83 e5                                      str r5, [r3]
00869bcc  04 70 83 e5                                      str r7, [r3, #4]
00869bd0  08 50 83 e5                                      str r5, [r3, #8]
00869bd4  0c 50 83 e5                                      str r5, [r3, #0xc]
00869bd8  10 10 c3 e5                                      strb r1, [r3, #0x10]
00869bdc  14 30 83 e2                                      add r3, r3, #0x14
00869be0  02 00 53 e1                                      cmp r3, r2
00869be4  f7 ff ff 1a                                      bne #0x869bc8
00869be8  fd 0f 84 e2                                      add r0, r4, #0x3f4
00869bec  77 a6 00 eb                                      bl #0x8935d0
00869bf0  43 3e 84 e2                                      add r3, r4, #0x430
00869bf4  0c 30 83 e2                                      add r3, r3, #0xc
00869bf8  00 60 a0 e3                                      mov r6, #0
00869bfc  40 34 84 e5                                      str r3, [r4, #0x440]
00869c00  3c 34 84 e5                                      str r3, [r4, #0x43c]
00869c04  b8 00 84 e2                                      add r0, r4, #0xb8
00869c08  f8 53 84 e5                                      str r5, [r4, #0x3f8]
00869c0c  fc 53 84 e5                                      str r5, [r4, #0x3fc]
00869c10  00 54 84 e5                                      str r5, [r4, #0x400]
00869c14  04 54 84 e5                                      str r5, [r4, #0x404]
00869c18  08 54 84 e5                                      str r5, [r4, #0x408]
00869c1c  0c 54 84 e5                                      str r5, [r4, #0x40c]
00869c20  10 54 84 e5                                      str r5, [r4, #0x410]
00869c24  14 54 84 e5                                      str r5, [r4, #0x414]
00869c28  18 54 84 e5                                      str r5, [r4, #0x418]
00869c2c  1c 54 84 e5                                      str r5, [r4, #0x41c]
00869c30  20 54 84 e5                                      str r5, [r4, #0x420]
00869c34  24 54 84 e5                                      str r5, [r4, #0x424]
00869c38  c4 64 84 e5                                      str r6, [r4, #0x4c4]
00869c3c  48 65 84 e5                                      str r6, [r4, #0x548]
00869c40  cb fd ff eb                                      bl #0x869374
00869c44  48 00 84 e2                                      add r0, r4, #0x48
00869c48  eb fd ff eb                                      bl #0x8693fc
00869c4c  14 50 8d e5                                      str r5, [sp, #0x14]
00869c50  18 70 8d e5                                      str r7, [sp, #0x18]
00869c54  1c 50 8d e5                                      str r5, [sp, #0x1c]
00869c58  20 50 8d e5                                      str r5, [sp, #0x20]
00869c5c  e0 c0 84 e2                                      add ip, r4, #0xe0
00869c60  14 e0 8d e2                                      add lr, sp, #0x14
00869c64  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00869c68  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00869c6c  24 60 cd e5                                      strb r6, [sp, #0x24]
00869c70  00 20 9e e5                                      ldr r2, [lr]
00869c74  0d 80 a0 e1                                      mov r8, sp
00869c78  06 e0 a0 e1                                      mov lr, r6
00869c7c  00 20 cc e5                                      strb r2, [ip]
00869c80  14 a0 a0 e3                                      mov sl, #0x14
00869c84  06 90 a0 e1                                      mov sb, r6
00869c88  9a 4e 2c e0                                      mla ip, sl, lr, r4
00869c8c  00 50 8d e5                                      str r5, [sp]
00869c90  04 70 8d e5                                      str r7, [sp, #4]
00869c94  08 50 8d e5                                      str r5, [sp, #8]
00869c98  0c 50 8d e5                                      str r5, [sp, #0xc]
00869c9c  f4 c0 8c e2                                      add ip, ip, #0xf4
00869ca0  08 60 a0 e1                                      mov r6, r8
00869ca4  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00869ca8  10 90 cd e5                                      strb sb, [sp, #0x10]
00869cac  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00869cb0  00 20 96 e5                                      ldr r2, [r6]
00869cb4  01 e0 8e e2                                      add lr, lr, #1
00869cb8  20 00 5e e3                                      cmp lr, #0x20
00869cbc  00 20 cc e5                                      strb r2, [ip]
00869cc0  00 60 a0 e3                                      mov r6, #0
00869cc4  ef ff ff 1a                                      bne #0x869c88
00869cc8  04 00 a0 e1                                      mov r0, r4
00869ccc  34 64 c4 e5                                      strb r6, [r4, #0x434]
00869cd0  35 64 c4 e5                                      strb r6, [r4, #0x435]
00869cd4  36 64 c4 e5                                      strb r6, [r4, #0x436]
00869cd8  37 64 c4 e5                                      strb r6, [r4, #0x437]
00869cdc  38 64 c4 e5                                      strb r6, [r4, #0x438]
00869ce0  39 64 c4 e5                                      strb r6, [r4, #0x439]
00869ce4  f1 e4 ff eb                                      bl #0x8630b0
00869ce8  06 10 a0 e1                                      mov r1, r6
00869cec  14 00 a0 e3                                      mov r0, #0x14
00869cf0  54 9a ea eb                                      bl #0x310648
00869cf4  08 10 a0 e3                                      mov r1, #8
00869cf8  00 50 a0 e1                                      mov r5, r0
00869cfc  ae fe ff eb                                      bl #0x8697bc
00869d00  dc 50 84 e5                                      str r5, [r4, #0xdc]
00869d04  4c 65 84 e5                                      str r6, [r4, #0x54c]
00869d08  55 0e 84 e2                                      add r0, r4, #0x550
00869d0c  06 10 a0 e1                                      mov r1, r6
00869d10  40 20 a0 e3                                      mov r2, #0x40
00869d14  d1 91 ea eb                                      bl #0x30e460
00869d18  9c 65 84 e5                                      str r6, [r4, #0x59c]
00869d1c  90 65 84 e5                                      str r6, [r4, #0x590]
00869d20  94 65 84 e5                                      str r6, [r4, #0x594]
00869d24  98 65 84 e5                                      str r6, [r4, #0x598]
00869d28  04 00 a0 e1                                      mov r0, r4
00869d2c  28 d0 8d e2                                      add sp, sp, #0x28
00869d30  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00869d34  f0 af 12 00 0c 17 00 00                          .byte 0xf0, 0xaf, 0x12, 0x00, 0x0c, 0x17, 0x00, 0x00

; FUNCTION 0x00869d3c, declared_size=80, range_size=80, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal20GetVoxEngineInternalEv
; demangled: vox::VoxEngineInternal::GetVoxEngineInternal()
; decoder-mode: arm
00869d3c  40 30 9f e5                                      ldr r3, [pc, #0x40]
00869d40  40 20 9f e5                                      ldr r2, [pc, #0x40]
00869d44  70 40 2d e9                                      push {r4, r5, r6, lr}
00869d48  03 30 8f e0                                      add r3, pc, r3
00869d4c  02 40 93 e7                                      ldr r4, [r3, r2]
00869d50  00 50 94 e5                                      ldr r5, [r4]
00869d54  00 00 55 e3                                      cmp r5, #0
00869d58  01 00 00 0a                                      beq #0x869d64
00869d5c  05 00 a0 e1                                      mov r0, r5
00869d60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00869d64  05 10 a0 e1                                      mov r1, r5
00869d68  5a 0e a0 e3                                      mov r0, #0x5a0
00869d6c  35 9a ea eb                                      bl #0x310648
00869d70  00 50 a0 e1                                      mov r5, r0
00869d74  46 ff ff eb                                      bl #0x869a94
00869d78  00 50 84 e5                                      str r5, [r4]
00869d7c  05 00 a0 e1                                      mov r0, r5
00869d80  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00869d84  48 ad 12 00 98 38 00 00                          .byte 0x48, 0xad, 0x12, 0x00, 0x98, 0x38, 0x00, 0x00

; FUNCTION 0x00869d8c, declared_size=680, range_size=680, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternalC2Ev
; demangled: vox::VoxEngineInternal::VoxEngineInternal()
; decoder-mode: arm
00869d8c  98 32 9f e5                                      ldr r3, [pc, #0x298]
00869d90  98 22 9f e5                                      ldr r2, [pc, #0x298]
00869d94  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00869d98  03 30 8f e0                                      add r3, pc, r3
00869d9c  02 20 93 e7                                      ldr r2, [r3, r2]
00869da0  00 50 a0 e3                                      mov r5, #0
00869da4  00 10 a0 e1                                      mov r1, r0
00869da8  08 20 82 e2                                      add r2, r2, #8
00869dac  00 20 80 e5                                      str r2, [r0]
00869db0  0c 50 80 e5                                      str r5, [r0, #0xc]
00869db4  00 20 a0 e1                                      mov r2, r0
00869db8  08 50 e1 e5                                      strb r5, [r1, #8]!
00869dbc  00 70 a0 e3                                      mov r7, #0
00869dc0  01 60 a0 e3                                      mov r6, #1
00869dc4  14 10 80 e5                                      str r1, [r0, #0x14]
00869dc8  10 10 80 e5                                      str r1, [r0, #0x10]
00869dcc  18 50 80 e5                                      str r5, [r0, #0x18]
00869dd0  f0 62 c0 e1                                      strd r6, r7, [r0, #0x20]
00869dd4  2c 50 80 e5                                      str r5, [r0, #0x2c]
00869dd8  28 50 e2 e5                                      strb r5, [r2, #0x28]!
00869ddc  00 40 a0 e1                                      mov r4, r0
00869de0  28 d0 4d e2                                      sub sp, sp, #0x28
00869de4  34 20 80 e5                                      str r2, [r0, #0x34]
00869de8  30 20 80 e5                                      str r2, [r0, #0x30]
00869dec  38 50 80 e5                                      str r5, [r0, #0x38]
00869df0  f0 64 c0 e1                                      strd r6, r7, [r0, #0x40]
00869df4  48 50 80 e5                                      str r5, [r0, #0x48]
00869df8  4c 50 80 e5                                      str r5, [r0, #0x4c]
00869dfc  50 50 80 e5                                      str r5, [r0, #0x50]
00869e00  54 50 80 e5                                      str r5, [r0, #0x54]
00869e04  58 50 80 e5                                      str r5, [r0, #0x58]
00869e08  5c 00 80 e2                                      add r0, r0, #0x5c
00869e0c  ef a5 00 eb                                      bl #0x8935d0
00869e10  60 50 84 e5                                      str r5, [r4, #0x60]
00869e14  64 50 84 e5                                      str r5, [r4, #0x64]
00869e18  68 00 84 e2                                      add r0, r4, #0x68
00869e1c  eb a5 00 eb                                      bl #0x8935d0
00869e20  6c 30 84 e2                                      add r3, r4, #0x6c
00869e24  70 30 84 e5                                      str r3, [r4, #0x70]
00869e28  6c 30 84 e5                                      str r3, [r4, #0x6c]
00869e2c  74 00 84 e2                                      add r0, r4, #0x74
00869e30  e6 a5 00 eb                                      bl #0x8935d0
00869e34  04 20 a0 e1                                      mov r2, r4
00869e38  04 30 a0 e1                                      mov r3, r4
00869e3c  7c 50 84 e5                                      str r5, [r4, #0x7c]
00869e40  78 50 e2 e5                                      strb r5, [r2, #0x78]!
00869e44  84 20 84 e5                                      str r2, [r4, #0x84]
00869e48  80 20 84 e5                                      str r2, [r4, #0x80]
00869e4c  88 50 84 e5                                      str r5, [r4, #0x88]
00869e50  f0 69 c4 e1                                      strd r6, r7, [r4, #0x90]
00869e54  9c 50 84 e5                                      str r5, [r4, #0x9c]
00869e58  98 50 e3 e5                                      strb r5, [r3, #0x98]!
00869e5c  a4 30 84 e5                                      str r3, [r4, #0xa4]
00869e60  a0 30 84 e5                                      str r3, [r4, #0xa0]
00869e64  f0 6b c4 e1                                      strd r6, r7, [r4, #0xb0]
00869e68  a8 50 84 e5                                      str r5, [r4, #0xa8]
00869e6c  b8 50 84 e5                                      str r5, [r4, #0xb8]
00869e70  bc 50 84 e5                                      str r5, [r4, #0xbc]
00869e74  c0 50 84 e5                                      str r5, [r4, #0xc0]
00869e78  c4 50 84 e5                                      str r5, [r4, #0xc4]
00869e7c  c8 50 84 e5                                      str r5, [r4, #0xc8]
00869e80  cc 00 84 e2                                      add r0, r4, #0xcc
00869e84  d1 a5 00 eb                                      bl #0x8935d0
00869e88  d4 50 84 e5                                      str r5, [r4, #0xd4]
00869e8c  d0 50 84 e5                                      str r5, [r4, #0xd0]
00869e90  d8 00 84 e2                                      add r0, r4, #0xd8
00869e94  cd a5 00 eb                                      bl #0x8935d0
00869e98  00 50 a0 e3                                      mov r5, #0
00869e9c  fe 75 a0 e3                                      mov r7, #0x3f800000
00869ea0  01 10 a0 e3                                      mov r1, #1
00869ea4  e0 50 84 e5                                      str r5, [r4, #0xe0]
00869ea8  e4 70 84 e5                                      str r7, [r4, #0xe4]
00869eac  e8 50 84 e5                                      str r5, [r4, #0xe8]
00869eb0  ec 50 84 e5                                      str r5, [r4, #0xec]
00869eb4  f0 10 c4 e5                                      strb r1, [r4, #0xf0]
00869eb8  f4 30 84 e2                                      add r3, r4, #0xf4
00869ebc  dd 2f 84 e2                                      add r2, r4, #0x374
00869ec0  00 50 83 e5                                      str r5, [r3]
00869ec4  04 70 83 e5                                      str r7, [r3, #4]
00869ec8  08 50 83 e5                                      str r5, [r3, #8]
00869ecc  0c 50 83 e5                                      str r5, [r3, #0xc]
00869ed0  10 10 c3 e5                                      strb r1, [r3, #0x10]
00869ed4  14 30 83 e2                                      add r3, r3, #0x14
00869ed8  02 00 53 e1                                      cmp r3, r2
00869edc  f7 ff ff 1a                                      bne #0x869ec0
00869ee0  fd 0f 84 e2                                      add r0, r4, #0x3f4
00869ee4  b9 a5 00 eb                                      bl #0x8935d0
00869ee8  43 3e 84 e2                                      add r3, r4, #0x430
00869eec  0c 30 83 e2                                      add r3, r3, #0xc
00869ef0  00 60 a0 e3                                      mov r6, #0
00869ef4  40 34 84 e5                                      str r3, [r4, #0x440]
00869ef8  3c 34 84 e5                                      str r3, [r4, #0x43c]
00869efc  b8 00 84 e2                                      add r0, r4, #0xb8
00869f00  f8 53 84 e5                                      str r5, [r4, #0x3f8]
00869f04  fc 53 84 e5                                      str r5, [r4, #0x3fc]
00869f08  00 54 84 e5                                      str r5, [r4, #0x400]
00869f0c  04 54 84 e5                                      str r5, [r4, #0x404]
00869f10  08 54 84 e5                                      str r5, [r4, #0x408]
00869f14  0c 54 84 e5                                      str r5, [r4, #0x40c]
00869f18  10 54 84 e5                                      str r5, [r4, #0x410]
00869f1c  14 54 84 e5                                      str r5, [r4, #0x414]
00869f20  18 54 84 e5                                      str r5, [r4, #0x418]
00869f24  1c 54 84 e5                                      str r5, [r4, #0x41c]
00869f28  20 54 84 e5                                      str r5, [r4, #0x420]
00869f2c  24 54 84 e5                                      str r5, [r4, #0x424]
00869f30  c4 64 84 e5                                      str r6, [r4, #0x4c4]
00869f34  48 65 84 e5                                      str r6, [r4, #0x548]
00869f38  0d fd ff eb                                      bl #0x869374
00869f3c  48 00 84 e2                                      add r0, r4, #0x48
00869f40  2d fd ff eb                                      bl #0x8693fc
00869f44  14 50 8d e5                                      str r5, [sp, #0x14]
00869f48  18 70 8d e5                                      str r7, [sp, #0x18]
00869f4c  1c 50 8d e5                                      str r5, [sp, #0x1c]
00869f50  20 50 8d e5                                      str r5, [sp, #0x20]
00869f54  e0 c0 84 e2                                      add ip, r4, #0xe0
00869f58  14 e0 8d e2                                      add lr, sp, #0x14
00869f5c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00869f60  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00869f64  24 60 cd e5                                      strb r6, [sp, #0x24]
00869f68  00 20 9e e5                                      ldr r2, [lr]
00869f6c  0d 80 a0 e1                                      mov r8, sp
00869f70  06 e0 a0 e1                                      mov lr, r6
00869f74  00 20 cc e5                                      strb r2, [ip]
00869f78  14 a0 a0 e3                                      mov sl, #0x14
00869f7c  06 90 a0 e1                                      mov sb, r6
00869f80  9a 4e 2c e0                                      mla ip, sl, lr, r4
00869f84  00 50 8d e5                                      str r5, [sp]
00869f88  04 70 8d e5                                      str r7, [sp, #4]
00869f8c  08 50 8d e5                                      str r5, [sp, #8]
00869f90  0c 50 8d e5                                      str r5, [sp, #0xc]
00869f94  f4 c0 8c e2                                      add ip, ip, #0xf4
00869f98  08 60 a0 e1                                      mov r6, r8
00869f9c  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00869fa0  10 90 cd e5                                      strb sb, [sp, #0x10]
00869fa4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00869fa8  00 20 96 e5                                      ldr r2, [r6]
00869fac  01 e0 8e e2                                      add lr, lr, #1
00869fb0  20 00 5e e3                                      cmp lr, #0x20
00869fb4  00 20 cc e5                                      strb r2, [ip]
00869fb8  00 60 a0 e3                                      mov r6, #0
00869fbc  ef ff ff 1a                                      bne #0x869f80
00869fc0  04 00 a0 e1                                      mov r0, r4
00869fc4  34 64 c4 e5                                      strb r6, [r4, #0x434]
00869fc8  35 64 c4 e5                                      strb r6, [r4, #0x435]
00869fcc  36 64 c4 e5                                      strb r6, [r4, #0x436]
00869fd0  37 64 c4 e5                                      strb r6, [r4, #0x437]
00869fd4  38 64 c4 e5                                      strb r6, [r4, #0x438]
00869fd8  39 64 c4 e5                                      strb r6, [r4, #0x439]
00869fdc  33 e4 ff eb                                      bl #0x8630b0
00869fe0  06 10 a0 e1                                      mov r1, r6
00869fe4  14 00 a0 e3                                      mov r0, #0x14
00869fe8  96 99 ea eb                                      bl #0x310648
00869fec  08 10 a0 e3                                      mov r1, #8
00869ff0  00 50 a0 e1                                      mov r5, r0
00869ff4  f0 fd ff eb                                      bl #0x8697bc
00869ff8  dc 50 84 e5                                      str r5, [r4, #0xdc]
00869ffc  4c 65 84 e5                                      str r6, [r4, #0x54c]
0086a000  55 0e 84 e2                                      add r0, r4, #0x550
0086a004  06 10 a0 e1                                      mov r1, r6
0086a008  40 20 a0 e3                                      mov r2, #0x40
0086a00c  13 91 ea eb                                      bl #0x30e460
0086a010  9c 65 84 e5                                      str r6, [r4, #0x59c]
0086a014  90 65 84 e5                                      str r6, [r4, #0x590]
0086a018  94 65 84 e5                                      str r6, [r4, #0x594]
0086a01c  98 65 84 e5                                      str r6, [r4, #0x598]
0086a020  04 00 a0 e1                                      mov r0, r4
0086a024  28 d0 8d e2                                      add sp, sp, #0x28
0086a028  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0086a02c  f8 ac 12 00 0c 17 00 00                          .byte 0xf8, 0xac, 0x12, 0x00, 0x0c, 0x17, 0x00, 0x00

; FUNCTION 0x0086a034, declared_size=640, range_size=640, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal17ReleaseDatasourceEj
; demangled: vox::VoxEngineInternal::ReleaseDatasource(unsigned int)
; decoder-mode: arm
0086a034  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086a038  00 70 a0 e1                                      mov r7, r0
0086a03c  54 80 80 e2                                      add r8, r0, #0x54
0086a040  10 d0 4d e2                                      sub sp, sp, #0x10
0086a044  08 00 a0 e1                                      mov r0, r8
0086a048  08 40 87 e2                                      add r4, r7, #8
0086a04c  01 50 a0 e1                                      mov r5, r1
0086a050  3c a5 00 eb                                      bl #0x893548
0086a054  0c 00 8d e2                                      add r0, sp, #0xc
0086a058  04 10 a0 e1                                      mov r1, r4
0086a05c  6c e4 ff eb                                      bl #0x863214
0086a060  04 10 a0 e1                                      mov r1, r4
0086a064  08 00 8d e2                                      add r0, sp, #8
0086a068  6c e4 ff eb                                      bl #0x863220
0086a06c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086a070  08 20 9d e5                                      ldr r2, [sp, #8]
0086a074  74 60 87 e2                                      add r6, r7, #0x74
0086a078  6c a0 87 e2                                      add sl, r7, #0x6c
0086a07c  03 00 52 e1                                      cmp r2, r3
0086a080  01 90 a0 e3                                      mov sb, #1
0086a084  13 00 00 0a                                      beq #0x86a0d8
0086a088  18 40 93 e5                                      ldr r4, [r3, #0x18]
0086a08c  05 10 a0 e1                                      mov r1, r5
0086a090  04 00 a0 e1                                      mov r0, r4
0086a094  5c ee ff eb                                      bl #0x865a0c
0086a098  00 00 50 e3                                      cmp r0, #0
0086a09c  3a 00 00 1a                                      bne #0x86a18c
0086a0a0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086a0a4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086a0a8  00 00 52 e3                                      cmp r2, #0
0086a0ac  01 00 00 1a                                      bne #0x86a0b8
0086a0b0  42 00 00 ea                                      b #0x86a1c0
0086a0b4  03 20 a0 e1                                      mov r2, r3
0086a0b8  08 30 92 e5                                      ldr r3, [r2, #8]
0086a0bc  00 00 53 e3                                      cmp r3, #0
0086a0c0  fb ff ff 1a                                      bne #0x86a0b4
0086a0c4  02 30 a0 e1                                      mov r3, r2
0086a0c8  0c 30 8d e5                                      str r3, [sp, #0xc]
0086a0cc  08 20 9d e5                                      ldr r2, [sp, #8]
0086a0d0  03 00 52 e1                                      cmp r2, r3
0086a0d4  eb ff ff 1a                                      bne #0x86a088
0086a0d8  08 00 a0 e1                                      mov r0, r8
0086a0dc  60 80 87 e2                                      add r8, r7, #0x60
0086a0e0  0d a5 00 eb                                      bl #0x89351c
0086a0e4  28 40 87 e2                                      add r4, r7, #0x28
0086a0e8  08 00 a0 e1                                      mov r0, r8
0086a0ec  15 a5 00 eb                                      bl #0x893548
0086a0f0  04 00 8d e2                                      add r0, sp, #4
0086a0f4  04 10 a0 e1                                      mov r1, r4
0086a0f8  45 e4 ff eb                                      bl #0x863214
0086a0fc  04 30 9d e5                                      ldr r3, [sp, #4]
0086a100  04 10 a0 e1                                      mov r1, r4
0086a104  0d 00 a0 e1                                      mov r0, sp
0086a108  0c 30 8d e5                                      str r3, [sp, #0xc]
0086a10c  43 e4 ff eb                                      bl #0x863220
0086a110  00 20 9d e5                                      ldr r2, [sp]
0086a114  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086a118  01 90 a0 e3                                      mov sb, #1
0086a11c  08 20 8d e5                                      str r2, [sp, #8]
0086a120  08 20 9d e5                                      ldr r2, [sp, #8]
0086a124  02 00 53 e1                                      cmp r3, r2
0086a128  13 00 00 0a                                      beq #0x86a17c
0086a12c  18 40 93 e5                                      ldr r4, [r3, #0x18]
0086a130  05 10 a0 e1                                      mov r1, r5
0086a134  04 00 a0 e1                                      mov r0, r4
0086a138  33 ee ff eb                                      bl #0x865a0c
0086a13c  00 00 50 e3                                      cmp r0, #0
0086a140  2c 00 00 1a                                      bne #0x86a1f8
0086a144  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086a148  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086a14c  00 00 52 e3                                      cmp r2, #0
0086a150  01 00 00 1a                                      bne #0x86a15c
0086a154  34 00 00 ea                                      b #0x86a22c
0086a158  03 20 a0 e1                                      mov r2, r3
0086a15c  08 30 92 e5                                      ldr r3, [r2, #8]
0086a160  00 00 53 e3                                      cmp r3, #0
0086a164  fb ff ff 1a                                      bne #0x86a158
0086a168  02 30 a0 e1                                      mov r3, r2
0086a16c  0c 30 8d e5                                      str r3, [sp, #0xc]
0086a170  08 20 9d e5                                      ldr r2, [sp, #8]
0086a174  02 00 53 e1                                      cmp r3, r2
0086a178  eb ff ff 1a                                      bne #0x86a12c
0086a17c  08 00 a0 e1                                      mov r0, r8
0086a180  e5 a4 00 eb                                      bl #0x89351c
0086a184  10 d0 8d e2                                      add sp, sp, #0x10
0086a188  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0086a18c  04 00 a0 e1                                      mov r0, r4
0086a190  55 ee ff eb                                      bl #0x865aec
0086a194  06 00 a0 e1                                      mov r0, r6
0086a198  b7 a4 00 eb                                      bl #0x89347c
0086a19c  4c 10 d4 e5                                      ldrb r1, [r4, #0x4c]
0086a1a0  00 00 51 e3                                      cmp r1, #0
0086a1a4  38 00 00 0a                                      beq #0x86a28c
0086a1a8  06 00 a0 e1                                      mov r0, r6
0086a1ac  b1 a4 00 eb                                      bl #0x893478
0086a1b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086a1b4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086a1b8  00 00 52 e3                                      cmp r2, #0
0086a1bc  bd ff ff 1a                                      bne #0x86a0b8
0086a1c0  04 10 93 e5                                      ldr r1, [r3, #4]
0086a1c4  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086a1c8  00 00 53 e1                                      cmp r3, r0
0086a1cc  05 00 00 1a                                      bne #0x86a1e8
0086a1d0  01 30 a0 e1                                      mov r3, r1
0086a1d4  04 10 91 e5                                      ldr r1, [r1, #4]
0086a1d8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086a1dc  03 00 52 e1                                      cmp r2, r3
0086a1e0  fa ff ff 0a                                      beq #0x86a1d0
0086a1e4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086a1e8  02 00 51 e1                                      cmp r1, r2
0086a1ec  01 30 a0 11                                      movne r3, r1
0086a1f0  0c 30 8d e5                                      str r3, [sp, #0xc]
0086a1f4  b4 ff ff ea                                      b #0x86a0cc
0086a1f8  04 00 a0 e1                                      mov r0, r4
0086a1fc  3a ee ff eb                                      bl #0x865aec
0086a200  06 00 a0 e1                                      mov r0, r6
0086a204  9c a4 00 eb                                      bl #0x89347c
0086a208  4c 10 d4 e5                                      ldrb r1, [r4, #0x4c]
0086a20c  00 00 51 e3                                      cmp r1, #0
0086a210  13 00 00 0a                                      beq #0x86a264
0086a214  06 00 a0 e1                                      mov r0, r6
0086a218  96 a4 00 eb                                      bl #0x893478
0086a21c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086a220  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086a224  00 00 52 e3                                      cmp r2, #0
0086a228  cb ff ff 1a                                      bne #0x86a15c
0086a22c  04 10 93 e5                                      ldr r1, [r3, #4]
0086a230  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086a234  00 00 53 e1                                      cmp r3, r0
0086a238  05 00 00 1a                                      bne #0x86a254
0086a23c  01 30 a0 e1                                      mov r3, r1
0086a240  04 10 91 e5                                      ldr r1, [r1, #4]
0086a244  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086a248  03 00 52 e1                                      cmp r2, r3
0086a24c  fa ff ff 0a                                      beq #0x86a23c
0086a250  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086a254  01 00 52 e1                                      cmp r2, r1
0086a258  01 30 a0 11                                      movne r3, r1
0086a25c  0c 30 8d e5                                      str r3, [sp, #0xc]
0086a260  c2 ff ff ea                                      b #0x86a170
0086a264  4c 90 c4 e5                                      strb sb, [r4, #0x4c]
0086a268  0c 00 a0 e3                                      mov r0, #0xc
0086a26c  f5 98 ea eb                                      bl #0x310648
0086a270  08 40 80 e5                                      str r4, [r0, #8]
0086a274  70 30 97 e5                                      ldr r3, [r7, #0x70]
0086a278  00 a0 80 e5                                      str sl, [r0]
0086a27c  04 30 80 e5                                      str r3, [r0, #4]
0086a280  00 00 83 e5                                      str r0, [r3]
0086a284  70 00 87 e5                                      str r0, [r7, #0x70]
0086a288  e1 ff ff ea                                      b #0x86a214
0086a28c  4c 90 c4 e5                                      strb sb, [r4, #0x4c]
0086a290  0c 00 a0 e3                                      mov r0, #0xc
0086a294  eb 98 ea eb                                      bl #0x310648
0086a298  08 40 80 e5                                      str r4, [r0, #8]
0086a29c  70 30 97 e5                                      ldr r3, [r7, #0x70]
0086a2a0  00 a0 80 e5                                      str sl, [r0]
0086a2a4  04 30 80 e5                                      str r3, [r0, #4]
0086a2a8  00 00 83 e5                                      str r0, [r3]
0086a2ac  70 00 87 e5                                      str r0, [r7, #0x70]
0086a2b0  bc ff ff ea                                      b #0x86a1a8

; FUNCTION 0x0086a5d0, declared_size=88, range_size=88, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal19DetachEmitterObjectEx
; demangled: vox::VoxEngineInternal::DetachEmitterObject(long long)
; decoder-mode: arm
0086a5d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086a5d4  00 40 a0 e1                                      mov r4, r0
0086a5d8  78 00 80 e2                                      add r0, r0, #0x78
0086a5dc  02 60 a0 e1                                      mov r6, r2
0086a5e0  03 70 a0 e1                                      mov r7, r3
0086a5e4  c6 ff ff eb                                      bl #0x86a504
0086a5e8  00 80 50 e2                                      subs r8, r0, #0
0086a5ec  01 00 00 0a                                      beq #0x86a5f8
0086a5f0  08 00 a0 e1                                      mov r0, r8
0086a5f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0086a5f8  d0 50 84 e2                                      add r5, r4, #0xd0
0086a5fc  05 00 a0 e1                                      mov r0, r5
0086a600  a9 a3 00 eb                                      bl #0x8934ac
0086a604  06 20 a0 e1                                      mov r2, r6
0086a608  07 30 a0 e1                                      mov r3, r7
0086a60c  98 00 84 e2                                      add r0, r4, #0x98
0086a610  bb ff ff eb                                      bl #0x86a504
0086a614  00 80 a0 e1                                      mov r8, r0
0086a618  05 00 a0 e1                                      mov r0, r5
0086a61c  97 a3 00 eb                                      bl #0x893480
0086a620  08 00 a0 e1                                      mov r0, r8
0086a624  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0086a628, declared_size=232, range_size=232, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal17ReleaseDatasourceEPNS_7DataObjE
; demangled: vox::VoxEngineInternal::ReleaseDatasource(vox::DataObj*)
; decoder-mode: arm
0086a628  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086a62c  00 60 51 e2                                      subs r6, r1, #0
0086a630  00 50 a0 e1                                      mov r5, r0
0086a634  34 00 00 0a                                      beq #0x86a70c
0086a638  14 30 96 e5                                      ldr r3, [r6, #0x14]
0086a63c  40 40 86 e2                                      add r4, r6, #0x40
0086a640  c4 70 80 e2                                      add r7, r0, #0xc4
0086a644  55 3f 83 e2                                      add r3, r3, #0x154
0086a648  03 21 90 e7                                      ldr r2, [r0, r3, lsl #2]
0086a64c  01 20 82 e2                                      add r2, r2, #1
0086a650  03 21 80 e7                                      str r2, [r0, r3, lsl #2]
0086a654  40 30 96 e5                                      ldr r3, [r6, #0x40]
0086a658  04 00 53 e1                                      cmp r3, r4
0086a65c  13 00 00 0a                                      beq #0x86a6b0
0086a660  00 30 93 e5                                      ldr r3, [r3]
0086a664  03 00 54 e1                                      cmp r4, r3
0086a668  fc ff ff 1a                                      bne #0x86a660
0086a66c  07 00 a0 e1                                      mov r0, r7
0086a670  8d a3 00 eb                                      bl #0x8934ac
0086a674  44 30 96 e5                                      ldr r3, [r6, #0x44]
0086a678  05 00 a0 e1                                      mov r0, r5
0086a67c  d8 20 c3 e1                                      ldrd r2, r3, [r3, #8]
0086a680  d2 ff ff eb                                      bl #0x86a5d0
0086a684  00 80 a0 e1                                      mov r8, r0
0086a688  07 00 a0 e1                                      mov r0, r7
0086a68c  7b a3 00 eb                                      bl #0x893480
0086a690  00 30 95 e5                                      ldr r3, [r5]
0086a694  08 10 a0 e1                                      mov r1, r8
0086a698  05 00 a0 e1                                      mov r0, r5
0086a69c  0f e0 a0 e1                                      mov lr, pc
0086a6a0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0086a6a4  40 30 96 e5                                      ldr r3, [r6, #0x40]
0086a6a8  04 00 53 e1                                      cmp r3, r4
0086a6ac  eb ff ff 1a                                      bne #0x86a660
0086a6b0  3c 40 96 e5                                      ldr r4, [r6, #0x3c]
0086a6b4  00 00 54 e3                                      cmp r4, #0
0086a6b8  05 00 00 0a                                      beq #0x86a6d4
0086a6bc  00 30 94 e5                                      ldr r3, [r4]
0086a6c0  04 00 a0 e1                                      mov r0, r4
0086a6c4  0f e0 a0 e1                                      mov lr, pc
0086a6c8  00 f0 93 e5                                      ldr pc, [r3]
0086a6cc  04 00 a0 e1                                      mov r0, r4
0086a6d0  5b 97 ea eb                                      bl #0x310444
0086a6d4  38 40 96 e5                                      ldr r4, [r6, #0x38]
0086a6d8  00 00 54 e3                                      cmp r4, #0
0086a6dc  03 00 00 0a                                      beq #0x86a6f0
0086a6e0  04 00 a0 e1                                      mov r0, r4
0086a6e4  e0 e3 ff eb                                      bl #0x86366c
0086a6e8  04 00 a0 e1                                      mov r0, r4
0086a6ec  54 97 ea eb                                      bl #0x310444
0086a6f0  00 30 96 e5                                      ldr r3, [r6]
0086a6f4  06 00 a0 e1                                      mov r0, r6
0086a6f8  0f e0 a0 e1                                      mov lr, pc
0086a6fc  00 f0 93 e5                                      ldr pc, [r3]
0086a700  06 00 a0 e1                                      mov r0, r6
0086a704  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0086a708  4d 97 ea ea                                      b #0x310444
0086a70c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0086a710, declared_size=460, range_size=460, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal21_ReleaseAllDatasourceEv
; demangled: vox::VoxEngineInternal::_ReleaseAllDatasource()
; decoder-mode: arm
0086a710  30 40 2d e9                                      push {r4, r5, lr}
0086a714  08 50 80 e2                                      add r5, r0, #8
0086a718  14 d0 4d e2                                      sub sp, sp, #0x14
0086a71c  05 10 a0 e1                                      mov r1, r5
0086a720  00 40 a0 e1                                      mov r4, r0
0086a724  0c 00 8d e2                                      add r0, sp, #0xc
0086a728  b9 e2 ff eb                                      bl #0x863214
0086a72c  08 00 8d e2                                      add r0, sp, #8
0086a730  05 10 a0 e1                                      mov r1, r5
0086a734  b9 e2 ff eb                                      bl #0x863220
0086a738  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086a73c  08 20 9d e5                                      ldr r2, [sp, #8]
0086a740  02 00 53 e1                                      cmp r3, r2
0086a744  10 00 00 0a                                      beq #0x86a78c
0086a748  18 10 93 e5                                      ldr r1, [r3, #0x18]
0086a74c  04 00 a0 e1                                      mov r0, r4
0086a750  b4 ff ff eb                                      bl #0x86a628
0086a754  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086a758  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086a75c  00 00 52 e3                                      cmp r2, #0
0086a760  01 00 00 1a                                      bne #0x86a76c
0086a764  40 00 00 ea                                      b #0x86a86c
0086a768  03 20 a0 e1                                      mov r2, r3
0086a76c  08 30 92 e5                                      ldr r3, [r2, #8]
0086a770  00 00 53 e3                                      cmp r3, #0
0086a774  fb ff ff 1a                                      bne #0x86a768
0086a778  02 30 a0 e1                                      mov r3, r2
0086a77c  0c 30 8d e5                                      str r3, [sp, #0xc]
0086a780  08 20 9d e5                                      ldr r2, [sp, #8]
0086a784  02 00 53 e1                                      cmp r3, r2
0086a788  ee ff ff 1a                                      bne #0x86a748
0086a78c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0086a790  00 00 53 e3                                      cmp r3, #0
0086a794  07 00 00 0a                                      beq #0x86a7b8
0086a798  05 00 a0 e1                                      mov r0, r5
0086a79c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0086a7a0  8c e4 ff eb                                      bl #0x8639d8
0086a7a4  00 30 a0 e3                                      mov r3, #0
0086a7a8  14 50 84 e5                                      str r5, [r4, #0x14]
0086a7ac  18 30 84 e5                                      str r3, [r4, #0x18]
0086a7b0  10 50 84 e5                                      str r5, [r4, #0x10]
0086a7b4  0c 30 84 e5                                      str r3, [r4, #0xc]
0086a7b8  28 50 84 e2                                      add r5, r4, #0x28
0086a7bc  04 00 8d e2                                      add r0, sp, #4
0086a7c0  05 10 a0 e1                                      mov r1, r5
0086a7c4  92 e2 ff eb                                      bl #0x863214
0086a7c8  04 30 9d e5                                      ldr r3, [sp, #4]
0086a7cc  0d 00 a0 e1                                      mov r0, sp
0086a7d0  05 10 a0 e1                                      mov r1, r5
0086a7d4  0c 30 8d e5                                      str r3, [sp, #0xc]
0086a7d8  90 e2 ff eb                                      bl #0x863220
0086a7dc  00 20 9d e5                                      ldr r2, [sp]
0086a7e0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086a7e4  08 20 8d e5                                      str r2, [sp, #8]
0086a7e8  08 20 9d e5                                      ldr r2, [sp, #8]
0086a7ec  02 00 53 e1                                      cmp r3, r2
0086a7f0  10 00 00 0a                                      beq #0x86a838
0086a7f4  18 10 93 e5                                      ldr r1, [r3, #0x18]
0086a7f8  04 00 a0 e1                                      mov r0, r4
0086a7fc  89 ff ff eb                                      bl #0x86a628
0086a800  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086a804  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086a808  00 00 52 e3                                      cmp r2, #0
0086a80c  01 00 00 1a                                      bne #0x86a818
0086a810  23 00 00 ea                                      b #0x86a8a4
0086a814  03 20 a0 e1                                      mov r2, r3
0086a818  08 30 92 e5                                      ldr r3, [r2, #8]
0086a81c  00 00 53 e3                                      cmp r3, #0
0086a820  fb ff ff 1a                                      bne #0x86a814
0086a824  02 30 a0 e1                                      mov r3, r2
0086a828  0c 30 8d e5                                      str r3, [sp, #0xc]
0086a82c  08 20 9d e5                                      ldr r2, [sp, #8]
0086a830  02 00 53 e1                                      cmp r3, r2
0086a834  ee ff ff 1a                                      bne #0x86a7f4
0086a838  38 30 94 e5                                      ldr r3, [r4, #0x38]
0086a83c  00 00 53 e3                                      cmp r3, #0
0086a840  07 00 00 0a                                      beq #0x86a864
0086a844  05 00 a0 e1                                      mov r0, r5
0086a848  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0086a84c  61 e4 ff eb                                      bl #0x8639d8
0086a850  00 30 a0 e3                                      mov r3, #0
0086a854  38 30 84 e5                                      str r3, [r4, #0x38]
0086a858  34 50 84 e5                                      str r5, [r4, #0x34]
0086a85c  30 50 84 e5                                      str r5, [r4, #0x30]
0086a860  2c 30 84 e5                                      str r3, [r4, #0x2c]
0086a864  14 d0 8d e2                                      add sp, sp, #0x14
0086a868  30 80 bd e8                                      pop {r4, r5, pc}
0086a86c  04 10 93 e5                                      ldr r1, [r3, #4]
0086a870  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086a874  00 00 53 e1                                      cmp r3, r0
0086a878  05 00 00 1a                                      bne #0x86a894
0086a87c  01 30 a0 e1                                      mov r3, r1
0086a880  04 10 91 e5                                      ldr r1, [r1, #4]
0086a884  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086a888  03 00 52 e1                                      cmp r2, r3
0086a88c  fa ff ff 0a                                      beq #0x86a87c
0086a890  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086a894  01 00 52 e1                                      cmp r2, r1
0086a898  01 30 a0 11                                      movne r3, r1
0086a89c  0c 30 8d e5                                      str r3, [sp, #0xc]
0086a8a0  b6 ff ff ea                                      b #0x86a780
0086a8a4  04 10 93 e5                                      ldr r1, [r3, #4]
0086a8a8  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086a8ac  00 00 53 e1                                      cmp r3, r0
0086a8b0  05 00 00 1a                                      bne #0x86a8cc
0086a8b4  01 30 a0 e1                                      mov r3, r1
0086a8b8  04 10 91 e5                                      ldr r1, [r1, #4]
0086a8bc  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086a8c0  03 00 52 e1                                      cmp r2, r3
0086a8c4  fa ff ff 0a                                      beq #0x86a8b4
0086a8c8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086a8cc  02 00 51 e1                                      cmp r1, r2
0086a8d0  01 30 a0 11                                      movne r3, r1
0086a8d4  0c 30 8d e5                                      str r3, [sp, #0xc]
0086a8d8  d3 ff ff ea                                      b #0x86a82c

; FUNCTION 0x0086a8dc, declared_size=100, range_size=100, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal11KillEmitterERNS_13EmitterHandleE
; demangled: vox::VoxEngineInternal::KillEmitter(vox::EmitterHandle&)
; decoder-mode: arm
0086a8dc  70 40 2d e9                                      push {r4, r5, r6, lr}
0086a8e0  c4 50 80 e2                                      add r5, r0, #0xc4
0086a8e4  01 60 a0 e1                                      mov r6, r1
0086a8e8  00 40 a0 e1                                      mov r4, r0
0086a8ec  05 00 a0 e1                                      mov r0, r5
0086a8f0  ed a2 00 eb                                      bl #0x8934ac
0086a8f4  00 30 96 e5                                      ldr r3, [r6]
0086a8f8  06 00 a0 e1                                      mov r0, r6
0086a8fc  0f e0 a0 e1                                      mov lr, pc
0086a900  08 f0 93 e5                                      ldr pc, [r3, #8]
0086a904  00 20 a0 e1                                      mov r2, r0
0086a908  01 30 a0 e1                                      mov r3, r1
0086a90c  04 00 a0 e1                                      mov r0, r4
0086a910  2e ff ff eb                                      bl #0x86a5d0
0086a914  00 60 a0 e1                                      mov r6, r0
0086a918  05 00 a0 e1                                      mov r0, r5
0086a91c  d7 a2 00 eb                                      bl #0x893480
0086a920  00 00 56 e3                                      cmp r6, #0
0086a924  04 00 00 0a                                      beq #0x86a93c
0086a928  04 00 a0 e1                                      mov r0, r4
0086a92c  06 10 a0 e1                                      mov r1, r6
0086a930  00 30 94 e5                                      ldr r3, [r4]
0086a934  0f e0 a0 e1                                      mov lr, pc
0086a938  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0086a93c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0086a940, declared_size=88, range_size=88, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal16DetachDataObjectEx
; demangled: vox::VoxEngineInternal::DetachDataObject(long long)
; decoder-mode: arm
0086a940  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086a944  00 40 a0 e1                                      mov r4, r0
0086a948  08 00 80 e2                                      add r0, r0, #8
0086a94c  02 60 a0 e1                                      mov r6, r2
0086a950  03 70 a0 e1                                      mov r7, r3
0086a954  ea fe ff eb                                      bl #0x86a504
0086a958  00 80 50 e2                                      subs r8, r0, #0
0086a95c  01 00 00 0a                                      beq #0x86a968
0086a960  08 00 a0 e1                                      mov r0, r8
0086a964  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0086a968  60 50 84 e2                                      add r5, r4, #0x60
0086a96c  05 00 a0 e1                                      mov r0, r5
0086a970  cd a2 00 eb                                      bl #0x8934ac
0086a974  06 20 a0 e1                                      mov r2, r6
0086a978  07 30 a0 e1                                      mov r3, r7
0086a97c  28 00 84 e2                                      add r0, r4, #0x28
0086a980  df fe ff eb                                      bl #0x86a504
0086a984  00 80 a0 e1                                      mov r8, r0
0086a988  05 00 a0 e1                                      mov r0, r5
0086a98c  bb a2 00 eb                                      bl #0x893480
0086a990  08 00 a0 e1                                      mov r0, r8
0086a994  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0086a998, declared_size=376, range_size=376, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal13UpdateSourcesEv
; demangled: vox::VoxEngineInternal::UpdateSources()
; decoder-mode: arm
0086a998  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086a99c  94 35 90 e5                                      ldr r3, [r0, #0x594]
0086a9a0  00 50 a0 e1                                      mov r5, r0
0086a9a4  00 00 53 e3                                      cmp r3, #0
0086a9a8  00 00 00 da                                      ble #0x86a9b0
0086a9ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0086a9b0  54 40 80 e2                                      add r4, r0, #0x54
0086a9b4  04 00 a0 e1                                      mov r0, r4
0086a9b8  60 60 85 e2                                      add r6, r5, #0x60
0086a9bc  ba a2 00 eb                                      bl #0x8934ac
0086a9c0  06 00 a0 e1                                      mov r0, r6
0086a9c4  b8 a2 00 eb                                      bl #0x8934ac
0086a9c8  38 30 95 e5                                      ldr r3, [r5, #0x38]
0086a9cc  00 00 53 e3                                      cmp r3, #0
0086a9d0  0e 00 00 da                                      ble #0x86aa10
0086a9d4  28 70 85 e2                                      add r7, r5, #0x28
0086a9d8  08 00 85 e2                                      add r0, r5, #8
0086a9dc  07 10 a0 e1                                      mov r1, r7
0086a9e0  f8 e7 ff eb                                      bl #0x8649c8
0086a9e4  38 30 95 e5                                      ldr r3, [r5, #0x38]
0086a9e8  00 00 53 e3                                      cmp r3, #0
0086a9ec  07 00 00 0a                                      beq #0x86aa10
0086a9f0  07 00 a0 e1                                      mov r0, r7
0086a9f4  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
0086a9f8  f6 e3 ff eb                                      bl #0x8639d8
0086a9fc  00 30 a0 e3                                      mov r3, #0
0086aa00  34 70 85 e5                                      str r7, [r5, #0x34]
0086aa04  38 30 85 e5                                      str r3, [r5, #0x38]
0086aa08  30 70 85 e5                                      str r7, [r5, #0x30]
0086aa0c  2c 30 85 e5                                      str r3, [r5, #0x2c]
0086aa10  06 00 a0 e1                                      mov r0, r6
0086aa14  99 a2 00 eb                                      bl #0x893480
0086aa18  74 80 85 e2                                      add r8, r5, #0x74
0086aa1c  04 00 a0 e1                                      mov r0, r4
0086aa20  96 a2 00 eb                                      bl #0x893480
0086aa24  08 00 a0 e1                                      mov r0, r8
0086aa28  93 a2 00 eb                                      bl #0x89347c
0086aa2c  05 20 a0 e1                                      mov r2, r5
0086aa30  6c 30 b2 e5                                      ldr r3, [r2, #0x6c]!
0086aa34  02 00 53 e1                                      cmp r3, r2
0086aa38  31 00 00 0a                                      beq #0x86ab04
0086aa3c  00 70 a0 e3                                      mov r7, #0
0086aa40  00 30 93 e5                                      ldr r3, [r3]
0086aa44  01 70 87 e2                                      add r7, r7, #1
0086aa48  03 00 52 e1                                      cmp r2, r3
0086aa4c  fb ff ff 1a                                      bne #0x86aa40
0086aa50  08 00 a0 e1                                      mov r0, r8
0086aa54  87 a2 00 eb                                      bl #0x893478
0086aa58  00 60 a0 e3                                      mov r6, #0
0086aa5c  0a 00 00 ea                                      b #0x86aa8c
0086aa60  d8 20 ca e1                                      ldrd r2, r3, [sl, #8]
0086aa64  05 00 a0 e1                                      mov r0, r5
0086aa68  b4 ff ff eb                                      bl #0x86a940
0086aa6c  04 00 a0 e1                                      mov r0, r4
0086aa70  82 a2 00 eb                                      bl #0x893480
0086aa74  01 60 86 e2                                      add r6, r6, #1
0086aa78  05 00 a0 e1                                      mov r0, r5
0086aa7c  0a 10 a0 e1                                      mov r1, sl
0086aa80  e8 fe ff eb                                      bl #0x86a628
0086aa84  07 00 56 e1                                      cmp r6, r7
0086aa88  1c 00 00 0a                                      beq #0x86ab00
0086aa8c  04 00 a0 e1                                      mov r0, r4
0086aa90  85 a2 00 eb                                      bl #0x8934ac
0086aa94  08 00 a0 e1                                      mov r0, r8
0086aa98  77 a2 00 eb                                      bl #0x89347c
0086aa9c  6c 30 95 e5                                      ldr r3, [r5, #0x6c]
0086aaa0  00 20 93 e5                                      ldr r2, [r3]
0086aaa4  02 04 93 e9                                      ldmib r3, {r1, sl}
0086aaa8  03 00 a0 e1                                      mov r0, r3
0086aaac  00 20 81 e5                                      str r2, [r1]
0086aab0  04 10 82 e5                                      str r1, [r2, #4]
0086aab4  62 96 ea eb                                      bl #0x310444
0086aab8  08 00 a0 e1                                      mov r0, r8
0086aabc  6d a2 00 eb                                      bl #0x893478
0086aac0  0a 00 a0 e1                                      mov r0, sl
0086aac4  e9 eb ff eb                                      bl #0x865a70
0086aac8  00 30 50 e2                                      subs r3, r0, #0
0086aacc  04 00 a0 e1                                      mov r0, r4
0086aad0  e2 ff ff 1a                                      bne #0x86aa60
0086aad4  4c 30 ca e5                                      strb r3, [sl, #0x4c]
0086aad8  68 a2 00 eb                                      bl #0x893480
0086aadc  04 00 a0 e1                                      mov r0, r4
0086aae0  98 a2 00 eb                                      bl #0x893548
0086aae4  0a 00 a0 e1                                      mov r0, sl
0086aae8  bf f0 ff eb                                      bl #0x866dec
0086aaec  01 60 86 e2                                      add r6, r6, #1
0086aaf0  04 00 a0 e1                                      mov r0, r4
0086aaf4  88 a2 00 eb                                      bl #0x89351c
0086aaf8  07 00 56 e1                                      cmp r6, r7
0086aafc  e2 ff ff 1a                                      bne #0x86aa8c
0086ab00  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0086ab04  08 00 a0 e1                                      mov r0, r8
0086ab08  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0086ab0c  59 a2 00 ea                                      b #0x893478

; FUNCTION 0x0086ab10, declared_size=144, range_size=144, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal26DecreaseDataObjectRefCountERNS_10DataHandleE
; demangled: vox::VoxEngineInternal::DecreaseDataObjectRefCount(vox::DataHandle&)
; decoder-mode: arm
0086ab10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086ab14  54 60 80 e2                                      add r6, r0, #0x54
0086ab18  01 50 a0 e1                                      mov r5, r1
0086ab1c  00 40 a0 e1                                      mov r4, r0
0086ab20  06 00 a0 e1                                      mov r0, r6
0086ab24  87 a2 00 eb                                      bl #0x893548
0086ab28  05 10 a0 e1                                      mov r1, r5
0086ab2c  04 00 a0 e1                                      mov r0, r4
0086ab30  e1 f6 ff eb                                      bl #0x8686bc
0086ab34  00 50 50 e2                                      subs r5, r0, #0
0086ab38  0a 00 00 0a                                      beq #0x86ab68
0086ab3c  00 30 95 e5                                      ldr r3, [r5]
0086ab40  74 70 84 e2                                      add r7, r4, #0x74
0086ab44  0f e0 a0 e1                                      mov lr, pc
0086ab48  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0086ab4c  07 00 a0 e1                                      mov r0, r7
0086ab50  49 a2 00 eb                                      bl #0x89347c
0086ab54  4c 10 d5 e5                                      ldrb r1, [r5, #0x4c]
0086ab58  00 00 51 e3                                      cmp r1, #0
0086ab5c  04 00 00 0a                                      beq #0x86ab74
0086ab60  07 00 a0 e1                                      mov r0, r7
0086ab64  43 a2 00 eb                                      bl #0x893478
0086ab68  06 00 a0 e1                                      mov r0, r6
0086ab6c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0086ab70  69 a2 00 ea                                      b #0x89351c
0086ab74  01 30 a0 e3                                      mov r3, #1
0086ab78  4c 30 c5 e5                                      strb r3, [r5, #0x4c]
0086ab7c  0c 00 a0 e3                                      mov r0, #0xc
0086ab80  b0 96 ea eb                                      bl #0x310648
0086ab84  08 50 80 e5                                      str r5, [r0, #8]
0086ab88  70 30 94 e5                                      ldr r3, [r4, #0x70]
0086ab8c  6c 20 84 e2                                      add r2, r4, #0x6c
0086ab90  0c 00 80 e8                                      stm r0, {r2, r3}
0086ab94  00 00 83 e5                                      str r0, [r3]
0086ab98  70 00 84 e5                                      str r0, [r4, #0x70]
0086ab9c  ef ff ff ea                                      b #0x86ab60

; FUNCTION 0x0086ac94, declared_size=596, range_size=596, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal17GetAllDataSourcesEPNS_10DataHandleEi
; demangled: vox::VoxEngineInternal::GetAllDataSources(vox::DataHandle*, int)
; decoder-mode: arm
0086ac94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086ac98  54 30 80 e2                                      add r3, r0, #0x54
0086ac9c  00 70 a0 e1                                      mov r7, r0
0086aca0  7c d0 4d e2                                      sub sp, sp, #0x7c
0086aca4  03 00 a0 e1                                      mov r0, r3
0086aca8  08 40 87 e2                                      add r4, r7, #8
0086acac  10 30 8d e5                                      str r3, [sp, #0x10]
0086acb0  02 60 a0 e1                                      mov r6, r2
0086acb4  14 10 8d e5                                      str r1, [sp, #0x14]
0086acb8  22 a2 00 eb                                      bl #0x893548
0086acbc  04 10 a0 e1                                      mov r1, r4
0086acc0  74 00 8d e2                                      add r0, sp, #0x74
0086acc4  52 e1 ff eb                                      bl #0x863214
0086acc8  04 10 a0 e1                                      mov r1, r4
0086accc  70 00 8d e2                                      add r0, sp, #0x70
0086acd0  52 e1 ff eb                                      bl #0x863220
0086acd4  04 92 9f e5                                      ldr sb, [pc, #0x204]
0086acd8  74 30 9d e5                                      ldr r3, [sp, #0x74]
0086acdc  14 50 9d e5                                      ldr r5, [sp, #0x14]
0086ace0  fc b1 9f e5                                      ldr fp, [pc, #0x1fc]
0086ace4  00 40 a0 e3                                      mov r4, #0
0086ace8  40 80 8d e2                                      add r8, sp, #0x40
0086acec  09 90 8f e0                                      add sb, pc, sb
0086acf0  70 20 9d e5                                      ldr r2, [sp, #0x70]
0086acf4  02 00 53 e1                                      cmp r3, r2
0086acf8  01 00 00 0a                                      beq #0x86ad04
0086acfc  06 00 54 e1                                      cmp r4, r6
0086ad00  20 00 00 ba                                      blt #0x86ad88
0086ad04  60 30 87 e2                                      add r3, r7, #0x60
0086ad08  10 00 9d e5                                      ldr r0, [sp, #0x10]
0086ad0c  28 50 87 e2                                      add r5, r7, #0x28
0086ad10  10 30 8d e5                                      str r3, [sp, #0x10]
0086ad14  00 a2 00 eb                                      bl #0x89351c
0086ad18  10 00 9d e5                                      ldr r0, [sp, #0x10]
0086ad1c  09 a2 00 eb                                      bl #0x893548
0086ad20  05 10 a0 e1                                      mov r1, r5
0086ad24  6c 00 8d e2                                      add r0, sp, #0x6c
0086ad28  39 e1 ff eb                                      bl #0x863214
0086ad2c  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
0086ad30  05 10 a0 e1                                      mov r1, r5
0086ad34  68 00 8d e2                                      add r0, sp, #0x68
0086ad38  74 30 8d e5                                      str r3, [sp, #0x74]
0086ad3c  37 e1 ff eb                                      bl #0x863220
0086ad40  14 30 9d e5                                      ldr r3, [sp, #0x14]
0086ad44  28 50 a0 e3                                      mov r5, #0x28
0086ad48  94 b1 9f e5                                      ldr fp, [pc, #0x194]
0086ad4c  95 34 25 e0                                      mla r5, r5, r4, r3
0086ad50  68 30 9d e5                                      ldr r3, [sp, #0x68]
0086ad54  18 80 8d e2                                      add r8, sp, #0x18
0086ad58  70 30 8d e5                                      str r3, [sp, #0x70]
0086ad5c  74 30 9d e5                                      ldr r3, [sp, #0x74]
0086ad60  70 20 9d e5                                      ldr r2, [sp, #0x70]
0086ad64  02 00 53 e1                                      cmp r3, r2
0086ad68  01 00 00 0a                                      beq #0x86ad74
0086ad6c  06 00 54 e1                                      cmp r4, r6
0086ad70  22 00 00 ba                                      blt #0x86ae00
0086ad74  10 00 9d e5                                      ldr r0, [sp, #0x10]
0086ad78  e7 a1 00 eb                                      bl #0x89351c
0086ad7c  04 00 a0 e1                                      mov r0, r4
0086ad80  7c d0 8d e2                                      add sp, sp, #0x7c
0086ad84  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086ad88  18 10 93 e5                                      ldr r1, [r3, #0x18]
0086ad8c  0b a0 99 e7                                      ldr sl, [sb, fp]
0086ad90  08 00 a0 e1                                      mov r0, r8
0086ad94  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0086ad98  d8 20 c1 e1                                      ldrd r2, r3, [r1, #8]
0086ad9c  55 ef 8c e2                                      add lr, ip, #0x154
0086ada0  0e e1 97 e7                                      ldr lr, [r7, lr, lsl #2]
0086ada4  0c c0 8d e5                                      str ip, [sp, #0xc]
0086ada8  02 40 8d e9                                      stmib sp, {r1, lr}
0086adac  00 a0 8d e5                                      str sl, [sp]
0086adb0  e7 f7 ff eb                                      bl #0x868d54
0086adb4  08 10 a0 e1                                      mov r1, r8
0086adb8  05 00 a0 e1                                      mov r0, r5
0086adbc  77 ff ff eb                                      bl #0x86aba0
0086adc0  08 00 a0 e1                                      mov r0, r8
0086adc4  97 ff ff eb                                      bl #0x86ac28
0086adc8  74 30 9d e5                                      ldr r3, [sp, #0x74]
0086adcc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086add0  00 00 52 e3                                      cmp r2, #0
0086add4  01 00 00 1a                                      bne #0x86ade0
0086add8  33 00 00 ea                                      b #0x86aeac
0086addc  03 20 a0 e1                                      mov r2, r3
0086ade0  08 30 92 e5                                      ldr r3, [r2, #8]
0086ade4  00 00 53 e3                                      cmp r3, #0
0086ade8  fb ff ff 1a                                      bne #0x86addc
0086adec  02 30 a0 e1                                      mov r3, r2
0086adf0  74 30 8d e5                                      str r3, [sp, #0x74]
0086adf4  01 40 84 e2                                      add r4, r4, #1
0086adf8  28 50 85 e2                                      add r5, r5, #0x28
0086adfc  bb ff ff ea                                      b #0x86acf0
0086ae00  18 10 93 e5                                      ldr r1, [r3, #0x18]
0086ae04  0b a0 99 e7                                      ldr sl, [sb, fp]
0086ae08  08 00 a0 e1                                      mov r0, r8
0086ae0c  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0086ae10  d8 20 c1 e1                                      ldrd r2, r3, [r1, #8]
0086ae14  55 ef 8c e2                                      add lr, ip, #0x154
0086ae18  0e e1 97 e7                                      ldr lr, [r7, lr, lsl #2]
0086ae1c  0c c0 8d e5                                      str ip, [sp, #0xc]
0086ae20  02 40 8d e9                                      stmib sp, {r1, lr}
0086ae24  00 a0 8d e5                                      str sl, [sp]
0086ae28  c9 f7 ff eb                                      bl #0x868d54
0086ae2c  08 10 a0 e1                                      mov r1, r8
0086ae30  05 00 a0 e1                                      mov r0, r5
0086ae34  59 ff ff eb                                      bl #0x86aba0
0086ae38  08 00 a0 e1                                      mov r0, r8
0086ae3c  79 ff ff eb                                      bl #0x86ac28
0086ae40  74 30 9d e5                                      ldr r3, [sp, #0x74]
0086ae44  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086ae48  00 00 52 e3                                      cmp r2, #0
0086ae4c  01 00 00 1a                                      bne #0x86ae58
0086ae50  08 00 00 ea                                      b #0x86ae78
0086ae54  03 20 a0 e1                                      mov r2, r3
0086ae58  08 30 92 e5                                      ldr r3, [r2, #8]
0086ae5c  00 00 53 e3                                      cmp r3, #0
0086ae60  fb ff ff 1a                                      bne #0x86ae54
0086ae64  02 30 a0 e1                                      mov r3, r2
0086ae68  74 30 8d e5                                      str r3, [sp, #0x74]
0086ae6c  01 40 84 e2                                      add r4, r4, #1
0086ae70  28 50 85 e2                                      add r5, r5, #0x28
0086ae74  b9 ff ff ea                                      b #0x86ad60
0086ae78  04 10 93 e5                                      ldr r1, [r3, #4]
0086ae7c  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086ae80  00 00 53 e1                                      cmp r3, r0
0086ae84  05 00 00 1a                                      bne #0x86aea0
0086ae88  01 30 a0 e1                                      mov r3, r1
0086ae8c  04 10 91 e5                                      ldr r1, [r1, #4]
0086ae90  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086ae94  03 00 52 e1                                      cmp r2, r3
0086ae98  fa ff ff 0a                                      beq #0x86ae88
0086ae9c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086aea0  01 00 52 e1                                      cmp r2, r1
0086aea4  01 30 a0 11                                      movne r3, r1
0086aea8  ee ff ff ea                                      b #0x86ae68
0086aeac  04 10 93 e5                                      ldr r1, [r3, #4]
0086aeb0  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086aeb4  00 00 53 e1                                      cmp r3, r0
0086aeb8  05 00 00 1a                                      bne #0x86aed4
0086aebc  01 30 a0 e1                                      mov r3, r1
0086aec0  04 10 91 e5                                      ldr r1, [r1, #4]
0086aec4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086aec8  03 00 52 e1                                      cmp r2, r3
0086aecc  fa ff ff 0a                                      beq #0x86aebc
0086aed0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086aed4  02 00 51 e1                                      cmp r1, r2
0086aed8  01 30 a0 11                                      movne r3, r1
0086aedc  c3 ff ff ea                                      b #0x86adf0
; mapping-symbol data/literal pool
0086aee0  a4 9d 12 00 98 38 00 00                          .byte 0xa4, 0x9d, 0x12, 0x00, 0x98, 0x38, 0x00, 0x00

; FUNCTION 0x0086aee8, declared_size=604, range_size=604, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal19LoadDataSourceAsyncEiPviS1_iNS_21VoxSourceLoadingFlagsE
; demangled: vox::VoxEngineInternal::LoadDataSourceAsync(int, void*, int, void*, int, vox::VoxSourceLoadingFlags)
; decoder-mode: arm
0086aee8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086aeec  40 72 9f e5                                      ldr r7, [pc, #0x240]
0086aef0  40 d0 4d e2                                      sub sp, sp, #0x40
0086aef4  00 00 52 e3                                      cmp r2, #0
0086aef8  07 70 8f e0                                      add r7, pc, r7
0086aefc  00 80 a0 e1                                      mov r8, r0
0086af00  01 50 a0 e1                                      mov r5, r1
0086af04  60 40 9d e5                                      ldr r4, [sp, #0x60]
0086af08  13 00 00 ba                                      blt #0x86af5c
0086af0c  c4 14 91 e5                                      ldr r1, [r1, #0x4c4]
0086af10  01 00 52 e1                                      cmp r2, r1
0086af14  10 00 00 aa                                      bge #0x86af5c
0086af18  02 21 85 e0                                      add r2, r5, r2, lsl #2
0086af1c  44 24 92 e5                                      ldr r2, [r2, #0x444]
0086af20  00 00 52 e3                                      cmp r2, #0
0086af24  0c 00 00 0a                                      beq #0x86af5c
0086af28  03 00 a0 e1                                      mov r0, r3
0086af2c  32 ff 2f e1                                      blx r2
0086af30  00 a0 50 e2                                      subs sl, r0, #0
0086af34  08 00 00 0a                                      beq #0x86af5c
0086af38  00 00 54 e3                                      cmp r4, #0
0086af3c  02 00 00 ba                                      blt #0x86af4c
0086af40  48 35 95 e5                                      ldr r3, [r5, #0x548]
0086af44  03 00 54 e1                                      cmp r4, r3
0086af48  0f 00 00 ba                                      blt #0x86af8c
0086af4c  0a 00 a0 e1                                      mov r0, sl
0086af50  c5 e1 ff eb                                      bl #0x86366c
0086af54  0a 00 a0 e1                                      mov r0, sl
0086af58  39 95 ea eb                                      bl #0x310444
0086af5c  00 10 a0 e3                                      mov r1, #0
0086af60  08 00 a0 e1                                      mov r0, r8
0086af64  00 20 e0 e3                                      mvn r2, #0
0086af68  00 30 e0 e3                                      mvn r3, #0
0086af6c  0c 10 8d e5                                      str r1, [sp, #0xc]
0086af70  00 10 8d e5                                      str r1, [sp]
0086af74  04 10 8d e5                                      str r1, [sp, #4]
0086af78  08 10 8d e5                                      str r1, [sp, #8]
0086af7c  74 f7 ff eb                                      bl #0x868d54
0086af80  08 00 a0 e1                                      mov r0, r8
0086af84  40 d0 8d e2                                      add sp, sp, #0x40
0086af88  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0086af8c  13 4e 84 e2                                      add r4, r4, #0x130
0086af90  02 40 84 e2                                      add r4, r4, #2
0086af94  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
0086af98  00 00 53 e3                                      cmp r3, #0
0086af9c  ea ff ff 0a                                      beq #0x86af4c
0086afa0  64 00 9d e5                                      ldr r0, [sp, #0x64]
0086afa4  33 ff 2f e1                                      blx r3
0086afa8  00 90 50 e2                                      subs sb, r0, #0
0086afac  e6 ff ff 0a                                      beq #0x86af4c
0086afb0  05 00 a0 e1                                      mov r0, r5
0086afb4  d6 f8 ff eb                                      bl #0x869314
0086afb8  00 20 a0 e1                                      mov r2, r0
0086afbc  01 30 a0 e1                                      mov r3, r1
0086afc0  60 00 a0 e3                                      mov r0, #0x60
0086afc4  00 10 a0 e3                                      mov r1, #0
0086afc8  14 20 8d e5                                      str r2, [sp, #0x14]
0086afcc  10 30 8d e5                                      str r3, [sp, #0x10]
0086afd0  9c 95 ea eb                                      bl #0x310648
0086afd4  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
0086afd8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0086afdc  10 30 9d e5                                      ldr r3, [sp, #0x10]
0086afe0  01 10 97 e7                                      ldr r1, [r7, r1]
0086afe4  00 40 a0 e1                                      mov r4, r0
0086afe8  00 60 a0 e3                                      mov r6, #0
0086afec  08 10 81 e2                                      add r1, r1, #8
0086aff0  f8 20 c0 e1                                      strd r2, r3, [r0, #8]
0086aff4  10 60 80 e5                                      str r6, [r0, #0x10]
0086aff8  00 10 84 e5                                      str r1, [r4]
0086affc  18 00 80 e2                                      add r0, r0, #0x18
0086b000  72 a1 00 eb                                      bl #0x8935d0
0086b004  30 31 9f e5                                      ldr r3, [pc, #0x130]
0086b008  bc 06 dd e1                                      ldrh r0, [sp, #0x6c]
0086b00c  40 20 84 e2                                      add r2, r4, #0x40
0086b010  03 30 97 e7                                      ldr r3, [r7, r3]
0086b014  00 10 e0 e3                                      mvn r1, #0
0086b018  08 30 83 e2                                      add r3, r3, #8
0086b01c  00 30 84 e5                                      str r3, [r4]
0086b020  68 30 9d e5                                      ldr r3, [sp, #0x68]
0086b024  38 a0 84 e5                                      str sl, [r4, #0x38]
0086b028  44 20 84 e5                                      str r2, [r4, #0x44]
0086b02c  1c 30 84 e5                                      str r3, [r4, #0x1c]
0086b030  03 30 a0 e3                                      mov r3, #3
0086b034  48 10 84 e5                                      str r1, [r4, #0x48]
0086b038  50 30 84 e5                                      str r3, [r4, #0x50]
0086b03c  54 00 84 e5                                      str r0, [r4, #0x54]
0086b040  24 10 84 e5                                      str r1, [r4, #0x24]
0086b044  40 20 84 e5                                      str r2, [r4, #0x40]
0086b048  3c 90 84 e5                                      str sb, [r4, #0x3c]
0086b04c  20 60 84 e5                                      str r6, [r4, #0x20]
0086b050  28 60 84 e5                                      str r6, [r4, #0x28]
0086b054  2c 60 84 e5                                      str r6, [r4, #0x2c]
0086b058  30 60 84 e5                                      str r6, [r4, #0x30]
0086b05c  34 60 84 e5                                      str r6, [r4, #0x34]
0086b060  4c 60 c4 e5                                      strb r6, [r4, #0x4c]
0086b064  4d 60 c4 e5                                      strb r6, [r4, #0x4d]
0086b068  58 00 84 e2                                      add r0, r4, #0x58
0086b06c  57 a1 00 eb                                      bl #0x8935d0
0086b070  d8 20 c4 e1                                      ldrd r2, r3, [r4, #8]
0086b074  90 15 95 e5                                      ldr r1, [r5, #0x590]
0086b078  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
0086b07c  18 a0 8d e2                                      add sl, sp, #0x18
0086b080  14 10 84 e5                                      str r1, [r4, #0x14]
0086b084  90 15 95 e5                                      ldr r1, [r5, #0x590]
0086b088  00 e0 97 e7                                      ldr lr, [r7, r0]
0086b08c  60 70 85 e2                                      add r7, r5, #0x60
0086b090  55 0f 81 e2                                      add r0, r1, #0x154
0086b094  00 c1 95 e7                                      ldr ip, [r5, r0, lsl #2]
0086b098  0a 00 a0 e1                                      mov r0, sl
0086b09c  00 e0 8d e5                                      str lr, [sp]
0086b0a0  08 c0 8d e5                                      str ip, [sp, #8]
0086b0a4  0c 10 8d e5                                      str r1, [sp, #0xc]
0086b0a8  04 40 8d e5                                      str r4, [sp, #4]
0086b0ac  28 f7 ff eb                                      bl #0x868d54
0086b0b0  90 35 95 e5                                      ldr r3, [r5, #0x590]
0086b0b4  07 00 a0 e1                                      mov r0, r7
0086b0b8  01 30 83 e2                                      add r3, r3, #1
0086b0bc  0f 30 03 e2                                      and r3, r3, #0xf
0086b0c0  90 35 85 e5                                      str r3, [r5, #0x590]
0086b0c4  f8 a0 00 eb                                      bl #0x8934ac
0086b0c8  04 10 a0 e1                                      mov r1, r4
0086b0cc  28 00 85 e2                                      add r0, r5, #0x28
0086b0d0  07 e6 ff eb                                      bl #0x8648f4
0086b0d4  07 00 a0 e1                                      mov r0, r7
0086b0d8  74 70 85 e2                                      add r7, r5, #0x74
0086b0dc  e7 a0 00 eb                                      bl #0x893480
0086b0e0  07 00 a0 e1                                      mov r0, r7
0086b0e4  e4 a0 00 eb                                      bl #0x89347c
0086b0e8  01 30 a0 e3                                      mov r3, #1
0086b0ec  06 10 a0 e1                                      mov r1, r6
0086b0f0  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
0086b0f4  0c 00 a0 e3                                      mov r0, #0xc
0086b0f8  52 95 ea eb                                      bl #0x310648
0086b0fc  08 40 80 e5                                      str r4, [r0, #8]
0086b100  70 30 95 e5                                      ldr r3, [r5, #0x70]
0086b104  6c 20 85 e2                                      add r2, r5, #0x6c
0086b108  0c 00 80 e8                                      stm r0, {r2, r3}
0086b10c  00 00 83 e5                                      str r0, [r3]
0086b110  70 00 85 e5                                      str r0, [r5, #0x70]
0086b114  07 00 a0 e1                                      mov r0, r7
0086b118  d6 a0 00 eb                                      bl #0x893478
0086b11c  08 00 a0 e1                                      mov r0, r8
0086b120  0a 10 a0 e1                                      mov r1, sl
0086b124  54 f7 ff eb                                      bl #0x868e7c
0086b128  0a 00 a0 e1                                      mov r0, sl
0086b12c  bd fe ff eb                                      bl #0x86ac28
0086b130  92 ff ff ea                                      b #0x86af80
; mapping-symbol data/literal pool
0086b134  98 9b 12 00 34 47 00 00 f0 17 00 00 98 38 00 00  .byte 0x98, 0x9b, 0x12, 0x00, 0x34, 0x47, 0x00, 0x00, 0xf0, 0x17, 0x00, 0x00, 0x98, 0x38, 0x00, 0x00

; FUNCTION 0x0086b144, declared_size=732, range_size=732, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal14LoadDataSourceEiPviS1_i
; demangled: vox::VoxEngineInternal::LoadDataSource(int, void*, int, void*, int)
; decoder-mode: arm
0086b144  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086b148  c0 62 9f e5                                      ldr r6, [pc, #0x2c0]
0086b14c  54 d0 4d e2                                      sub sp, sp, #0x54
0086b150  00 00 52 e3                                      cmp r2, #0
0086b154  06 60 8f e0                                      add r6, pc, r6
0086b158  00 70 a0 e1                                      mov r7, r0
0086b15c  01 40 a0 e1                                      mov r4, r1
0086b160  78 50 9d e5                                      ldr r5, [sp, #0x78]
0086b164  13 00 00 ba                                      blt #0x86b1b8
0086b168  c4 14 91 e5                                      ldr r1, [r1, #0x4c4]
0086b16c  01 00 52 e1                                      cmp r2, r1
0086b170  10 00 00 aa                                      bge #0x86b1b8
0086b174  02 21 84 e0                                      add r2, r4, r2, lsl #2
0086b178  44 24 92 e5                                      ldr r2, [r2, #0x444]
0086b17c  00 00 52 e3                                      cmp r2, #0
0086b180  0c 00 00 0a                                      beq #0x86b1b8
0086b184  03 00 a0 e1                                      mov r0, r3
0086b188  32 ff 2f e1                                      blx r2
0086b18c  00 80 50 e2                                      subs r8, r0, #0
0086b190  08 00 00 0a                                      beq #0x86b1b8
0086b194  00 00 55 e3                                      cmp r5, #0
0086b198  02 00 00 ba                                      blt #0x86b1a8
0086b19c  48 35 94 e5                                      ldr r3, [r4, #0x548]
0086b1a0  03 00 55 e1                                      cmp r5, r3
0086b1a4  0f 00 00 ba                                      blt #0x86b1e8
0086b1a8  08 00 a0 e1                                      mov r0, r8
0086b1ac  2e e1 ff eb                                      bl #0x86366c
0086b1b0  08 00 a0 e1                                      mov r0, r8
0086b1b4  a2 94 ea eb                                      bl #0x310444
0086b1b8  00 10 a0 e3                                      mov r1, #0
0086b1bc  07 00 a0 e1                                      mov r0, r7
0086b1c0  00 20 e0 e3                                      mvn r2, #0
0086b1c4  00 30 e0 e3                                      mvn r3, #0
0086b1c8  0c 10 8d e5                                      str r1, [sp, #0xc]
0086b1cc  00 10 8d e5                                      str r1, [sp]
0086b1d0  04 10 8d e5                                      str r1, [sp, #4]
0086b1d4  08 10 8d e5                                      str r1, [sp, #8]
0086b1d8  dd f6 ff eb                                      bl #0x868d54
0086b1dc  07 00 a0 e1                                      mov r0, r7
0086b1e0  54 d0 8d e2                                      add sp, sp, #0x54
0086b1e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086b1e8  13 5e 85 e2                                      add r5, r5, #0x130
0086b1ec  02 50 85 e2                                      add r5, r5, #2
0086b1f0  05 31 94 e7                                      ldr r3, [r4, r5, lsl #2]
0086b1f4  00 00 53 e3                                      cmp r3, #0
0086b1f8  ea ff ff 0a                                      beq #0x86b1a8
0086b1fc  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0086b200  33 ff 2f e1                                      blx r3
0086b204  00 a0 50 e2                                      subs sl, r0, #0
0086b208  e6 ff ff 0a                                      beq #0x86b1a8
0086b20c  00 30 98 e5                                      ldr r3, [r8]
0086b210  08 00 a0 e1                                      mov r0, r8
0086b214  0f e0 a0 e1                                      mov lr, pc
0086b218  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086b21c  00 90 50 e2                                      subs sb, r0, #0
0086b220  6f 00 00 0a                                      beq #0x86b3e4
0086b224  00 30 9a e5                                      ldr r3, [sl]
0086b228  0a 00 a0 e1                                      mov r0, sl
0086b22c  09 10 a0 e1                                      mov r1, sb
0086b230  0f e0 a0 e1                                      mov lr, pc
0086b234  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086b238  00 30 50 e2                                      subs r3, r0, #0
0086b23c  63 00 00 0a                                      beq #0x86b3d0
0086b240  10 c0 93 e5                                      ldr ip, [r3, #0x10]
0086b244  04 b0 93 e5                                      ldr fp, [r3, #4]
0086b248  00 20 9a e5                                      ldr r2, [sl]
0086b24c  14 c0 8d e5                                      str ip, [sp, #0x14]
0086b250  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0086b254  03 10 a0 e1                                      mov r1, r3
0086b258  0a 00 a0 e1                                      mov r0, sl
0086b25c  18 c0 8d e5                                      str ip, [sp, #0x18]
0086b260  08 30 93 e5                                      ldr r3, [r3, #8]
0086b264  1c 30 8d e5                                      str r3, [sp, #0x1c]
0086b268  0f e0 a0 e1                                      mov lr, pc
0086b26c  14 f0 92 e5                                      ldr pc, [r2, #0x14]
0086b270  00 00 5b e3                                      cmp fp, #0
0086b274  55 00 00 da                                      ble #0x86b3d0
0086b278  04 00 a0 e1                                      mov r0, r4
0086b27c  24 f8 ff eb                                      bl #0x869314
0086b280  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
0086b284  00 10 a0 e3                                      mov r1, #0
0086b288  60 00 a0 e3                                      mov r0, #0x60
0086b28c  ed 94 ea eb                                      bl #0x310648
0086b290  7c 21 9f e5                                      ldr r2, [pc, #0x17c]
0086b294  00 50 a0 e1                                      mov r5, r0
0086b298  00 30 a0 e3                                      mov r3, #0
0086b29c  02 20 96 e7                                      ldr r2, [r6, r2]
0086b2a0  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
0086b2a4  10 30 85 e5                                      str r3, [r5, #0x10]
0086b2a8  08 20 82 e2                                      add r2, r2, #8
0086b2ac  f8 00 c5 e1                                      strd r0, r1, [r5, #8]
0086b2b0  00 20 85 e5                                      str r2, [r5]
0086b2b4  18 00 85 e2                                      add r0, r5, #0x18
0086b2b8  10 30 8d e5                                      str r3, [sp, #0x10]
0086b2bc  c3 a0 00 eb                                      bl #0x8935d0
0086b2c0  80 c0 9d e5                                      ldr ip, [sp, #0x80]
0086b2c4  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
0086b2c8  40 10 85 e2                                      add r1, r5, #0x40
0086b2cc  1c c0 85 e5                                      str ip, [r5, #0x1c]
0086b2d0  02 20 96 e7                                      ldr r2, [r6, r2]
0086b2d4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0086b2d8  00 00 e0 e3                                      mvn r0, #0
0086b2dc  08 20 82 e2                                      add r2, r2, #8
0086b2e0  34 c0 85 e5                                      str ip, [r5, #0x34]
0086b2e4  00 20 85 e5                                      str r2, [r5]
0086b2e8  18 20 9d e5                                      ldr r2, [sp, #0x18]
0086b2ec  30 20 85 e5                                      str r2, [r5, #0x30]
0086b2f0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0086b2f4  44 10 85 e5                                      str r1, [r5, #0x44]
0086b2f8  48 00 85 e5                                      str r0, [r5, #0x48]
0086b2fc  2c c0 85 e5                                      str ip, [r5, #0x2c]
0086b300  28 b0 85 e5                                      str fp, [r5, #0x28]
0086b304  10 30 9d e5                                      ldr r3, [sp, #0x10]
0086b308  24 00 85 e5                                      str r0, [r5, #0x24]
0086b30c  40 10 85 e5                                      str r1, [r5, #0x40]
0086b310  50 30 85 e5                                      str r3, [r5, #0x50]
0086b314  20 30 85 e5                                      str r3, [r5, #0x20]
0086b318  4c 30 c5 e5                                      strb r3, [r5, #0x4c]
0086b31c  4d 30 c5 e5                                      strb r3, [r5, #0x4d]
0086b320  38 80 85 e5                                      str r8, [r5, #0x38]
0086b324  3c a0 85 e5                                      str sl, [r5, #0x3c]
0086b328  58 00 85 e2                                      add r0, r5, #0x58
0086b32c  a7 a0 00 eb                                      bl #0x8935d0
0086b330  09 10 a0 e1                                      mov r1, sb
0086b334  00 30 98 e5                                      ldr r3, [r8]
0086b338  08 00 a0 e1                                      mov r0, r8
0086b33c  0f e0 a0 e1                                      mov lr, pc
0086b340  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b344  00 00 55 e3                                      cmp r5, #0
0086b348  25 00 00 0a                                      beq #0x86b3e4
0086b34c  90 35 94 e5                                      ldr r3, [r4, #0x590]
0086b350  28 80 8d e2                                      add r8, sp, #0x28
0086b354  14 30 85 e5                                      str r3, [r5, #0x14]
0086b358  90 15 94 e5                                      ldr r1, [r4, #0x590]
0086b35c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0086b360  55 0f 81 e2                                      add r0, r1, #0x154
0086b364  00 c1 94 e7                                      ldr ip, [r4, r0, lsl #2]
0086b368  03 e0 96 e7                                      ldr lr, [r6, r3]
0086b36c  08 00 a0 e1                                      mov r0, r8
0086b370  d8 20 c5 e1                                      ldrd r2, r3, [r5, #8]
0086b374  00 e0 8d e5                                      str lr, [sp]
0086b378  08 c0 8d e5                                      str ip, [sp, #8]
0086b37c  0c 10 8d e5                                      str r1, [sp, #0xc]
0086b380  04 50 8d e5                                      str r5, [sp, #4]
0086b384  72 f6 ff eb                                      bl #0x868d54
0086b388  90 35 94 e5                                      ldr r3, [r4, #0x590]
0086b38c  60 60 84 e2                                      add r6, r4, #0x60
0086b390  06 00 a0 e1                                      mov r0, r6
0086b394  01 30 83 e2                                      add r3, r3, #1
0086b398  0f 30 03 e2                                      and r3, r3, #0xf
0086b39c  90 35 84 e5                                      str r3, [r4, #0x590]
0086b3a0  41 a0 00 eb                                      bl #0x8934ac
0086b3a4  05 10 a0 e1                                      mov r1, r5
0086b3a8  28 00 84 e2                                      add r0, r4, #0x28
0086b3ac  50 e5 ff eb                                      bl #0x8648f4
0086b3b0  06 00 a0 e1                                      mov r0, r6
0086b3b4  31 a0 00 eb                                      bl #0x893480
0086b3b8  07 00 a0 e1                                      mov r0, r7
0086b3bc  08 10 a0 e1                                      mov r1, r8
0086b3c0  ad f6 ff eb                                      bl #0x868e7c
0086b3c4  08 00 a0 e1                                      mov r0, r8
0086b3c8  16 fe ff eb                                      bl #0x86ac28
0086b3cc  82 ff ff ea                                      b #0x86b1dc
0086b3d0  09 10 a0 e1                                      mov r1, sb
0086b3d4  00 30 98 e5                                      ldr r3, [r8]
0086b3d8  08 00 a0 e1                                      mov r0, r8
0086b3dc  0f e0 a0 e1                                      mov lr, pc
0086b3e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b3e4  08 00 a0 e1                                      mov r0, r8
0086b3e8  9f e0 ff eb                                      bl #0x86366c
0086b3ec  08 00 a0 e1                                      mov r0, r8
0086b3f0  13 94 ea eb                                      bl #0x310444
0086b3f4  00 30 9a e5                                      ldr r3, [sl]
0086b3f8  0a 00 a0 e1                                      mov r0, sl
0086b3fc  0f e0 a0 e1                                      mov lr, pc
0086b400  00 f0 93 e5                                      ldr pc, [r3]
0086b404  0a 00 a0 e1                                      mov r0, sl
0086b408  0d 94 ea eb                                      bl #0x310444
0086b40c  69 ff ff ea                                      b #0x86b1b8
; mapping-symbol data/literal pool
0086b410  3c 99 12 00 34 47 00 00 f0 17 00 00 98 38 00 00  .byte 0x3c, 0x99, 0x12, 0x00, 0x34, 0x47, 0x00, 0x00, 0xf0, 0x17, 0x00, 0x00, 0x98, 0x38, 0x00, 0x00

; FUNCTION 0x0086b420, declared_size=628, range_size=628, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal24ConvertToRamBufferSourceERNS_10DataHandleE
; demangled: vox::VoxEngineInternal::ConvertToRamBufferSource(vox::DataHandle&)
; decoder-mode: arm
0086b420  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086b424  54 90 81 e2                                      add sb, r1, #0x54
0086b428  01 70 a0 e1                                      mov r7, r1
0086b42c  02 40 a0 e1                                      mov r4, r2
0086b430  7c d0 4d e2                                      sub sp, sp, #0x7c
0086b434  00 b0 a0 e1                                      mov fp, r0
0086b438  09 00 a0 e1                                      mov r0, sb
0086b43c  41 a0 00 eb                                      bl #0x893548
0086b440  07 00 a0 e1                                      mov r0, r7
0086b444  04 10 a0 e1                                      mov r1, r4
0086b448  9b f4 ff eb                                      bl #0x8686bc
0086b44c  38 32 9f e5                                      ldr r3, [pc, #0x238]
0086b450  00 50 50 e2                                      subs r5, r0, #0
0086b454  03 30 8f e0                                      add r3, pc, r3
0086b458  80 00 00 0a                                      beq #0x86b660
0086b45c  2c 22 9f e5                                      ldr r2, [pc, #0x22c]
0086b460  00 00 e0 e3                                      mvn r0, #0
0086b464  00 10 e0 e3                                      mvn r1, #0
0086b468  02 20 93 e7                                      ldr r2, [r3, r2]
0086b46c  f8 04 cd e1                                      strd r0, r1, [sp, #0x48]
0086b470  00 30 a0 e3                                      mov r3, #0
0086b474  08 20 82 e2                                      add r2, r2, #8
0086b478  60 30 8d e5                                      str r3, [sp, #0x60]
0086b47c  40 20 8d e5                                      str r2, [sp, #0x40]
0086b480  50 30 8d e5                                      str r3, [sp, #0x50]
0086b484  54 30 8d e5                                      str r3, [sp, #0x54]
0086b488  58 30 8d e5                                      str r3, [sp, #0x58]
0086b48c  5c 30 8d e5                                      str r3, [sp, #0x5c]
0086b490  50 40 95 e5                                      ldr r4, [r5, #0x50]
0086b494  03 00 54 e1                                      cmp r4, r3
0086b498  04 00 00 1a                                      bne #0x86b4b0
0086b49c  38 60 95 e5                                      ldr r6, [r5, #0x38]
0086b4a0  3c a0 95 e5                                      ldr sl, [r5, #0x3c]
0086b4a4  03 00 5a e1                                      cmp sl, r3
0086b4a8  03 00 56 11                                      cmpne r6, r3
0086b4ac  0a 00 00 1a                                      bne #0x86b4dc
0086b4b0  09 00 a0 e1                                      mov r0, sb
0086b4b4  18 a0 00 eb                                      bl #0x89351c
0086b4b8  40 40 8d e2                                      add r4, sp, #0x40
0086b4bc  0b 00 a0 e1                                      mov r0, fp
0086b4c0  04 10 a0 e1                                      mov r1, r4
0086b4c4  6c f6 ff eb                                      bl #0x868e7c
0086b4c8  04 00 a0 e1                                      mov r0, r4
0086b4cc  d5 fd ff eb                                      bl #0x86ac28
0086b4d0  0b 00 a0 e1                                      mov r0, fp
0086b4d4  7c d0 8d e2                                      add sp, sp, #0x7c
0086b4d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086b4dc  00 30 96 e5                                      ldr r3, [r6]
0086b4e0  06 00 a0 e1                                      mov r0, r6
0086b4e4  0f e0 a0 e1                                      mov lr, pc
0086b4e8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086b4ec  00 80 50 e2                                      subs r8, r0, #0
0086b4f0  ee ff ff 0a                                      beq #0x86b4b0
0086b4f4  00 30 96 e5                                      ldr r3, [r6]
0086b4f8  06 00 a0 e1                                      mov r0, r6
0086b4fc  0f e0 a0 e1                                      mov lr, pc
0086b500  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086b504  00 10 50 e2                                      subs r1, r0, #0
0086b508  10 10 8d e5                                      str r1, [sp, #0x10]
0086b50c  39 00 00 da                                      ble #0x86b5f8
0086b510  f8 93 ea eb                                      bl #0x3104f8
0086b514  00 00 50 e3                                      cmp r0, #0
0086b518  14 00 8d e5                                      str r0, [sp, #0x14]
0086b51c  46 00 00 0a                                      beq #0x86b63c
0086b520  04 10 a0 e1                                      mov r1, r4
0086b524  04 20 a0 e1                                      mov r2, r4
0086b528  00 30 98 e5                                      ldr r3, [r8]
0086b52c  08 00 a0 e1                                      mov r0, r8
0086b530  0f e0 a0 e1                                      mov lr, pc
0086b534  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086b538  10 20 9d e5                                      ldr r2, [sp, #0x10]
0086b53c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0086b540  00 30 98 e5                                      ldr r3, [r8]
0086b544  08 00 a0 e1                                      mov r0, r8
0086b548  0f e0 a0 e1                                      mov lr, pc
0086b54c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0086b550  08 10 a0 e1                                      mov r1, r8
0086b554  00 30 96 e5                                      ldr r3, [r6]
0086b558  06 00 a0 e1                                      mov r0, r6
0086b55c  0f e0 a0 e1                                      mov lr, pc
0086b560  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b564  09 00 a0 e1                                      mov r0, sb
0086b568  eb 9f 00 eb                                      bl #0x89351c
0086b56c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0086b570  10 00 9d e5                                      ldr r0, [sp, #0x10]
0086b574  74 40 cd e5                                      strb r4, [sp, #0x74]
0086b578  6c 30 8d e5                                      str r3, [sp, #0x6c]
0086b57c  01 30 a0 e3                                      mov r3, #1
0086b580  70 00 8d e5                                      str r0, [sp, #0x70]
0086b584  75 30 cd e5                                      strb r3, [sp, #0x75]
0086b588  00 30 9a e5                                      ldr r3, [sl]
0086b58c  0a 00 a0 e1                                      mov r0, sl
0086b590  0f e0 a0 e1                                      mov lr, pc
0086b594  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b598  00 30 9a e5                                      ldr r3, [sl]
0086b59c  00 80 a0 e1                                      mov r8, r0
0086b5a0  0a 00 a0 e1                                      mov r0, sl
0086b5a4  0f e0 a0 e1                                      mov lr, pc
0086b5a8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0086b5ac  00 60 a0 e1                                      mov r6, r0
0086b5b0  05 00 a0 e1                                      mov r0, r5
0086b5b4  23 e9 ff eb                                      bl #0x865a48
0086b5b8  18 50 8d e2                                      add r5, sp, #0x18
0086b5bc  04 20 a0 e1                                      mov r2, r4
0086b5c0  08 00 8d e5                                      str r0, [sp, #8]
0086b5c4  07 10 a0 e1                                      mov r1, r7
0086b5c8  05 00 a0 e1                                      mov r0, r5
0086b5cc  6c 30 8d e2                                      add r3, sp, #0x6c
0086b5d0  40 40 8d e2                                      add r4, sp, #0x40
0086b5d4  00 80 8d e5                                      str r8, [sp]
0086b5d8  04 60 8d e5                                      str r6, [sp, #4]
0086b5dc  d8 fe ff eb                                      bl #0x86b144
0086b5e0  04 00 a0 e1                                      mov r0, r4
0086b5e4  05 10 a0 e1                                      mov r1, r5
0086b5e8  6c fd ff eb                                      bl #0x86aba0
0086b5ec  05 00 a0 e1                                      mov r0, r5
0086b5f0  8c fd ff eb                                      bl #0x86ac28
0086b5f4  b0 ff ff ea                                      b #0x86b4bc
0086b5f8  00 30 96 e5                                      ldr r3, [r6]
0086b5fc  08 10 a0 e1                                      mov r1, r8
0086b600  06 00 a0 e1                                      mov r0, r6
0086b604  0f e0 a0 e1                                      mov lr, pc
0086b608  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b60c  09 00 a0 e1                                      mov r0, sb
0086b610  c1 9f 00 eb                                      bl #0x89351c
0086b614  00 20 e0 e3                                      mvn r2, #0
0086b618  00 30 e0 e3                                      mvn r3, #0
0086b61c  0b 00 a0 e1                                      mov r0, fp
0086b620  0c 40 8d e5                                      str r4, [sp, #0xc]
0086b624  00 40 8d e5                                      str r4, [sp]
0086b628  04 40 8d e5                                      str r4, [sp, #4]
0086b62c  08 40 8d e5                                      str r4, [sp, #8]
0086b630  40 40 8d e2                                      add r4, sp, #0x40
0086b634  c6 f5 ff eb                                      bl #0x868d54
0086b638  a2 ff ff ea                                      b #0x86b4c8
0086b63c  08 10 a0 e1                                      mov r1, r8
0086b640  06 00 a0 e1                                      mov r0, r6
0086b644  00 30 96 e5                                      ldr r3, [r6]
0086b648  0f e0 a0 e1                                      mov lr, pc
0086b64c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b650  09 00 a0 e1                                      mov r0, sb
0086b654  b0 9f 00 eb                                      bl #0x89351c
0086b658  40 40 8d e2                                      add r4, sp, #0x40
0086b65c  96 ff ff ea                                      b #0x86b4bc
0086b660  09 00 a0 e1                                      mov r0, sb
0086b664  ac 9f 00 eb                                      bl #0x89351c
0086b668  0b 00 a0 e1                                      mov r0, fp
0086b66c  00 20 e0 e3                                      mvn r2, #0
0086b670  00 30 e0 e3                                      mvn r3, #0
0086b674  0c 50 8d e5                                      str r5, [sp, #0xc]
0086b678  00 50 8d e5                                      str r5, [sp]
0086b67c  04 50 8d e5                                      str r5, [sp, #4]
0086b680  08 50 8d e5                                      str r5, [sp, #8]
0086b684  b2 f5 ff eb                                      bl #0x868d54
0086b688  90 ff ff ea                                      b #0x86b4d0
; mapping-symbol data/literal pool
0086b68c  3c 96 12 00 a4 19 00 00                          .byte 0x3c, 0x96, 0x12, 0x00, 0xa4, 0x19, 0x00, 0x00

; FUNCTION 0x0086b694, declared_size=724, range_size=724, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal18ConvertToRawSourceERNS_10DataHandleE
; demangled: vox::VoxEngineInternal::ConvertToRawSource(vox::DataHandle&)
; decoder-mode: arm
0086b694  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086b698  54 90 81 e2                                      add sb, r1, #0x54
0086b69c  94 d0 4d e2                                      sub sp, sp, #0x94
0086b6a0  01 a0 a0 e1                                      mov sl, r1
0086b6a4  02 40 a0 e1                                      mov r4, r2
0086b6a8  14 00 8d e5                                      str r0, [sp, #0x14]
0086b6ac  09 00 a0 e1                                      mov r0, sb
0086b6b0  a4 9f 00 eb                                      bl #0x893548
0086b6b4  0a 00 a0 e1                                      mov r0, sl
0086b6b8  04 10 a0 e1                                      mov r1, r4
0086b6bc  fe f3 ff eb                                      bl #0x8686bc
0086b6c0  98 32 9f e5                                      ldr r3, [pc, #0x298]
0086b6c4  00 50 50 e2                                      subs r5, r0, #0
0086b6c8  03 30 8f e0                                      add r3, pc, r3
0086b6cc  98 00 00 0a                                      beq #0x86b934
0086b6d0  8c 22 9f e5                                      ldr r2, [pc, #0x28c]
0086b6d4  00 00 e0 e3                                      mvn r0, #0
0086b6d8  00 10 e0 e3                                      mvn r1, #0
0086b6dc  02 20 93 e7                                      ldr r2, [r3, r2]
0086b6e0  f0 05 cd e1                                      strd r0, r1, [sp, #0x50]
0086b6e4  00 30 a0 e3                                      mov r3, #0
0086b6e8  08 20 82 e2                                      add r2, r2, #8
0086b6ec  68 30 8d e5                                      str r3, [sp, #0x68]
0086b6f0  48 20 8d e5                                      str r2, [sp, #0x48]
0086b6f4  58 30 8d e5                                      str r3, [sp, #0x58]
0086b6f8  5c 30 8d e5                                      str r3, [sp, #0x5c]
0086b6fc  60 30 8d e5                                      str r3, [sp, #0x60]
0086b700  64 30 8d e5                                      str r3, [sp, #0x64]
0086b704  50 40 95 e5                                      ldr r4, [r5, #0x50]
0086b708  03 00 54 e1                                      cmp r4, r3
0086b70c  7d 00 00 1a                                      bne #0x86b908
0086b710  38 80 95 e5                                      ldr r8, [r5, #0x38]
0086b714  3c 70 95 e5                                      ldr r7, [r5, #0x3c]
0086b718  03 00 58 e1                                      cmp r8, r3
0086b71c  79 00 00 0a                                      beq #0x86b908
0086b720  00 30 98 e5                                      ldr r3, [r8]
0086b724  08 00 a0 e1                                      mov r0, r8
0086b728  0f e0 a0 e1                                      mov lr, pc
0086b72c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086b730  00 00 50 e3                                      cmp r0, #0
0086b734  1c 00 8d e5                                      str r0, [sp, #0x1c]
0086b738  72 00 00 0a                                      beq #0x86b908
0086b73c  00 00 57 e3                                      cmp r7, #0
0086b740  74 00 00 0a                                      beq #0x86b918
0086b744  00 30 97 e5                                      ldr r3, [r7]
0086b748  07 00 a0 e1                                      mov r0, r7
0086b74c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0086b750  0f e0 a0 e1                                      mov lr, pc
0086b754  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086b758  00 60 50 e2                                      subs r6, r0, #0
0086b75c  6d 00 00 0a                                      beq #0x86b918
0086b760  0c b0 96 e5                                      ldr fp, [r6, #0xc]
0086b764  10 20 96 e5                                      ldr r2, [r6, #0x10]
0086b768  04 30 96 e5                                      ldr r3, [r6, #4]
0086b76c  cb b1 a0 e1                                      asr fp, fp, #3
0086b770  92 0b 0b e0                                      mul fp, r2, fp
0086b774  93 0b 0b e0                                      mul fp, r3, fp
0086b778  00 00 5b e3                                      cmp fp, #0
0086b77c  4b 00 00 da                                      ble #0x86b8b0
0086b780  0b 00 a0 e1                                      mov r0, fp
0086b784  5b 93 ea eb                                      bl #0x3104f8
0086b788  00 00 50 e3                                      cmp r0, #0
0086b78c  18 00 8d e5                                      str r0, [sp, #0x18]
0086b790  0a 00 00 0a                                      beq #0x86b7c0
0086b794  04 10 a0 e1                                      mov r1, r4
0086b798  00 30 96 e5                                      ldr r3, [r6]
0086b79c  06 00 a0 e1                                      mov r0, r6
0086b7a0  0f e0 a0 e1                                      mov lr, pc
0086b7a4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0086b7a8  0b 20 a0 e1                                      mov r2, fp
0086b7ac  00 30 96 e5                                      ldr r3, [r6]
0086b7b0  06 00 a0 e1                                      mov r0, r6
0086b7b4  18 10 9d e5                                      ldr r1, [sp, #0x18]
0086b7b8  0f e0 a0 e1                                      mov lr, pc
0086b7bc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086b7c0  00 40 a0 e3                                      mov r4, #0
0086b7c4  74 40 8d e5                                      str r4, [sp, #0x74]
0086b7c8  78 40 8d e5                                      str r4, [sp, #0x78]
0086b7cc  7c 40 8d e5                                      str r4, [sp, #0x7c]
0086b7d0  80 40 8d e5                                      str r4, [sp, #0x80]
0086b7d4  04 30 96 e5                                      ldr r3, [r6, #4]
0086b7d8  06 10 a0 e1                                      mov r1, r6
0086b7dc  00 b0 a0 e1                                      mov fp, r0
0086b7e0  74 30 8d e5                                      str r3, [sp, #0x74]
0086b7e4  08 30 96 e5                                      ldr r3, [r6, #8]
0086b7e8  07 00 a0 e1                                      mov r0, r7
0086b7ec  78 30 8d e5                                      str r3, [sp, #0x78]
0086b7f0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0086b7f4  7c 30 8d e5                                      str r3, [sp, #0x7c]
0086b7f8  10 30 96 e5                                      ldr r3, [r6, #0x10]
0086b7fc  80 30 8d e5                                      str r3, [sp, #0x80]
0086b800  00 30 97 e5                                      ldr r3, [r7]
0086b804  0f e0 a0 e1                                      mov lr, pc
0086b808  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086b80c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0086b810  08 00 a0 e1                                      mov r0, r8
0086b814  00 30 98 e5                                      ldr r3, [r8]
0086b818  0f e0 a0 e1                                      mov lr, pc
0086b81c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b820  09 00 a0 e1                                      mov r0, sb
0086b824  3c 9f 00 eb                                      bl #0x89351c
0086b828  18 10 9d e5                                      ldr r1, [sp, #0x18]
0086b82c  04 00 51 e1                                      cmp r1, r4
0086b830  36 00 00 0a                                      beq #0x86b910
0086b834  18 30 9d e5                                      ldr r3, [sp, #0x18]
0086b838  05 00 a0 e1                                      mov r0, r5
0086b83c  88 b0 8d e5                                      str fp, [sp, #0x88]
0086b840  84 30 8d e5                                      str r3, [sp, #0x84]
0086b844  01 30 a0 e3                                      mov r3, #1
0086b848  8d 30 cd e5                                      strb r3, [sp, #0x8d]
0086b84c  8c 40 cd e5                                      strb r4, [sp, #0x8c]
0086b850  7c e8 ff eb                                      bl #0x865a48
0086b854  20 50 8d e2                                      add r5, sp, #0x20
0086b858  74 c0 8d e2                                      add ip, sp, #0x74
0086b85c  08 00 8d e5                                      str r0, [sp, #8]
0086b860  0a 10 a0 e1                                      mov r1, sl
0086b864  04 20 a0 e1                                      mov r2, r4
0086b868  05 00 a0 e1                                      mov r0, r5
0086b86c  84 30 8d e2                                      add r3, sp, #0x84
0086b870  48 60 8d e2                                      add r6, sp, #0x48
0086b874  10 10 8d e8                                      stm sp, {r4, ip}
0086b878  31 fe ff eb                                      bl #0x86b144
0086b87c  06 00 a0 e1                                      mov r0, r6
0086b880  05 10 a0 e1                                      mov r1, r5
0086b884  c5 fc ff eb                                      bl #0x86aba0
0086b888  05 00 a0 e1                                      mov r0, r5
0086b88c  e5 fc ff eb                                      bl #0x86ac28
0086b890  14 00 9d e5                                      ldr r0, [sp, #0x14]
0086b894  06 10 a0 e1                                      mov r1, r6
0086b898  77 f5 ff eb                                      bl #0x868e7c
0086b89c  06 00 a0 e1                                      mov r0, r6
0086b8a0  e0 fc ff eb                                      bl #0x86ac28
0086b8a4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0086b8a8  94 d0 8d e2                                      add sp, sp, #0x94
0086b8ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086b8b0  07 00 a0 e1                                      mov r0, r7
0086b8b4  06 10 a0 e1                                      mov r1, r6
0086b8b8  00 30 97 e5                                      ldr r3, [r7]
0086b8bc  0f e0 a0 e1                                      mov lr, pc
0086b8c0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086b8c4  00 30 98 e5                                      ldr r3, [r8]
0086b8c8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0086b8cc  08 00 a0 e1                                      mov r0, r8
0086b8d0  0f e0 a0 e1                                      mov lr, pc
0086b8d4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b8d8  09 00 a0 e1                                      mov r0, sb
0086b8dc  0e 9f 00 eb                                      bl #0x89351c
0086b8e0  00 20 e0 e3                                      mvn r2, #0
0086b8e4  00 30 e0 e3                                      mvn r3, #0
0086b8e8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0086b8ec  0c 40 8d e5                                      str r4, [sp, #0xc]
0086b8f0  00 40 8d e5                                      str r4, [sp]
0086b8f4  04 40 8d e5                                      str r4, [sp, #4]
0086b8f8  08 40 8d e5                                      str r4, [sp, #8]
0086b8fc  48 60 8d e2                                      add r6, sp, #0x48
0086b900  13 f5 ff eb                                      bl #0x868d54
0086b904  e4 ff ff ea                                      b #0x86b89c
0086b908  09 00 a0 e1                                      mov r0, sb
0086b90c  02 9f 00 eb                                      bl #0x89351c
0086b910  48 60 8d e2                                      add r6, sp, #0x48
0086b914  dd ff ff ea                                      b #0x86b890
0086b918  08 00 a0 e1                                      mov r0, r8
0086b91c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0086b920  00 30 98 e5                                      ldr r3, [r8]
0086b924  0f e0 a0 e1                                      mov lr, pc
0086b928  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b92c  48 60 8d e2                                      add r6, sp, #0x48
0086b930  d6 ff ff ea                                      b #0x86b890
0086b934  09 00 a0 e1                                      mov r0, sb
0086b938  f7 9e 00 eb                                      bl #0x89351c
0086b93c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0086b940  00 20 e0 e3                                      mvn r2, #0
0086b944  00 30 e0 e3                                      mvn r3, #0
0086b948  0c 50 8d e5                                      str r5, [sp, #0xc]
0086b94c  00 50 8d e5                                      str r5, [sp]
0086b950  04 50 8d e5                                      str r5, [sp, #4]
0086b954  08 50 8d e5                                      str r5, [sp, #8]
0086b958  fd f4 ff eb                                      bl #0x868d54
0086b95c  d0 ff ff ea                                      b #0x86b8a4
; mapping-symbol data/literal pool
0086b960  c8 93 12 00 a4 19 00 00                          .byte 0xc8, 0x93, 0x12, 0x00, 0xa4, 0x19, 0x00, 0x00

; FUNCTION 0x0086b9b8, declared_size=364, range_size=364, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal12SetGroupGainEjff
; demangled: vox::VoxEngineInternal::SetGroupGain(unsigned int, float, float)
; decoder-mode: arm
0086b9b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086b9bc  00 90 a0 e1                                      mov sb, r0
0086b9c0  2c d0 4d e2                                      sub sp, sp, #0x2c
0086b9c4  01 60 a0 e1                                      mov r6, r1
0086b9c8  02 00 a0 e1                                      mov r0, r2
0086b9cc  00 10 a0 e3                                      mov r1, #0
0086b9d0  02 a0 a0 e1                                      mov sl, r2
0086b9d4  08 30 8d e5                                      str r3, [sp, #8]
0086b9d8  4b 8b ea eb                                      bl #0x30e70c
0086b9dc  00 00 50 e3                                      cmp r0, #0
0086b9e0  00 a0 a0 13                                      movne sl, #0
0086b9e4  04 00 00 1a                                      bne #0x86b9fc
0086b9e8  0a 00 a0 e1                                      mov r0, sl
0086b9ec  fe 15 a0 e3                                      mov r1, #0x3f800000
0086b9f0  40 8a ea eb                                      bl #0x30e2f8
0086b9f4  00 00 50 e3                                      cmp r0, #0
0086b9f8  fe a5 a0 13                                      movne sl, #0x3f800000
0086b9fc  fd 2f 89 e2                                      add r2, sb, #0x3f4
0086ba00  02 00 a0 e1                                      mov r0, r2
0086ba04  0c 20 8d e5                                      str r2, [sp, #0xc]
0086ba08  9b 9e 00 eb                                      bl #0x89347c
0086ba0c  00 00 56 e3                                      cmp r6, #0
0086ba10  3f 00 00 0a                                      beq #0x86bb14
0086ba14  14 30 8d e2                                      add r3, sp, #0x14
0086ba18  00 40 a0 e3                                      mov r4, #0
0086ba1c  09 50 a0 e1                                      mov r5, sb
0086ba20  01 70 a0 e3                                      mov r7, #1
0086ba24  04 30 8d e5                                      str r3, [sp, #4]
0086ba28  03 00 00 ea                                      b #0x86ba3c
0086ba2c  01 40 84 e2                                      add r4, r4, #1
0086ba30  20 00 54 e3                                      cmp r4, #0x20
0086ba34  14 50 85 e2                                      add r5, r5, #0x14
0086ba38  35 00 00 0a                                      beq #0x86bb14
0086ba3c  17 24 16 e0                                      ands r2, r6, r7, lsl r4
0086ba40  f9 ff ff 0a                                      beq #0x86ba2c
0086ba44  00 81 95 e5                                      ldr r8, [r5, #0x100]
0086ba48  fc b0 95 e5                                      ldr fp, [r5, #0xfc]
0086ba4c  08 10 a0 e1                                      mov r1, r8
0086ba50  0b 00 a0 e1                                      mov r0, fp
0086ba54  2c 8b ea eb                                      bl #0x30e70c
0086ba58  00 00 50 e3                                      cmp r0, #0
0086ba5c  00 10 a0 e3                                      mov r1, #0
0086ba60  08 00 a0 e1                                      mov r0, r8
0086ba64  f8 30 95 05                                      ldreq r3, [r5, #0xf8]
0086ba68  12 00 00 0a                                      beq #0x86bab8
0086ba6c  21 8a ea eb                                      bl #0x30e2f8
0086ba70  00 00 50 e3                                      cmp r0, #0
0086ba74  f4 30 95 05                                      ldreq r3, [r5, #0xf4]
0086ba78  0e 00 00 0a                                      beq #0x86bab8
0086ba7c  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
0086ba80  f8 00 95 e5                                      ldr r0, [r5, #0xf8]
0086ba84  03 10 a0 e1                                      mov r1, r3
0086ba88  00 30 8d e5                                      str r3, [sp]
0086ba8c  46 8a ea eb                                      bl #0x30e3ac
0086ba90  00 10 a0 e1                                      mov r1, r0
0086ba94  0b 00 a0 e1                                      mov r0, fp
0086ba98  b3 8c ea eb                                      bl #0x30ed6c
0086ba9c  08 10 a0 e1                                      mov r1, r8
0086baa0  7b 8c ea eb                                      bl #0x30ec94
0086baa4  00 30 9d e5                                      ldr r3, [sp]
0086baa8  00 10 a0 e1                                      mov r1, r0
0086baac  03 00 a0 e1                                      mov r0, r3
0086bab0  3b 8c ea eb                                      bl #0x30eba4
0086bab4  00 30 a0 e1                                      mov r3, r0
0086bab8  6f 12 01 e3                                      movw r1, #0x126f
0086babc  14 20 a0 e3                                      mov r2, #0x14
0086bac0  08 00 9d e5                                      ldr r0, [sp, #8]
0086bac4  83 1a 43 e3                                      movt r1, #0x3a83
0086bac8  14 30 8d e5                                      str r3, [sp, #0x14]
0086bacc  00 30 a0 e3                                      mov r3, #0
0086bad0  92 94 28 e0                                      mla r8, r2, r4, sb
0086bad4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0086bad8  18 a0 8d e5                                      str sl, [sp, #0x18]
0086badc  30 8c ea eb                                      bl #0x30eba4
0086bae0  04 c0 9d e5                                      ldr ip, [sp, #4]
0086bae4  20 00 8d e5                                      str r0, [sp, #0x20]
0086bae8  00 20 a0 e3                                      mov r2, #0
0086baec  f4 80 88 e2                                      add r8, r8, #0xf4
0086baf0  24 20 cd e5                                      strb r2, [sp, #0x24]
0086baf4  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0086baf8  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
0086bafc  00 20 9c e5                                      ldr r2, [ip]
0086bb00  01 40 84 e2                                      add r4, r4, #1
0086bb04  20 00 54 e3                                      cmp r4, #0x20
0086bb08  00 20 c8 e5                                      strb r2, [r8]
0086bb0c  14 50 85 e2                                      add r5, r5, #0x14
0086bb10  c9 ff ff 1a                                      bne #0x86ba3c
0086bb14  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0086bb18  56 9e 00 eb                                      bl #0x893478
0086bb1c  2c d0 8d e2                                      add sp, sp, #0x2c
0086bb20  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0086bbf4, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal7SetGainERNS_13EmitterHandleEff
; demangled: vox::VoxEngineInternal::SetGain(vox::EmitterHandle&, float, float)
; decoder-mode: arm
0086bbf4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086bbf8  c4 40 80 e2                                      add r4, r0, #0xc4
0086bbfc  00 50 a0 e1                                      mov r5, r0
0086bc00  01 60 a0 e1                                      mov r6, r1
0086bc04  04 00 a0 e1                                      mov r0, r4
0086bc08  02 70 a0 e1                                      mov r7, r2
0086bc0c  03 80 a0 e1                                      mov r8, r3
0086bc10  4c 9e 00 eb                                      bl #0x893548
0086bc14  05 00 a0 e1                                      mov r0, r5
0086bc18  06 10 a0 e1                                      mov r1, r6
0086bc1c  2a ee ff eb                                      bl #0x8674cc
0086bc20  00 00 50 e3                                      cmp r0, #0
0086bc24  02 00 00 0a                                      beq #0x86bc34
0086bc28  07 10 a0 e1                                      mov r1, r7
0086bc2c  08 20 a0 e1                                      mov r2, r8
0086bc30  bb ff ff eb                                      bl #0x86bb24
0086bc34  04 00 a0 e1                                      mov r0, r4
0086bc38  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0086bc3c  36 9e 00 ea                                      b #0x89351c

; FUNCTION 0x0086bd10, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal8SetPitchERNS_13EmitterHandleEff
; demangled: vox::VoxEngineInternal::SetPitch(vox::EmitterHandle&, float, float)
; decoder-mode: arm
0086bd10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086bd14  c4 40 80 e2                                      add r4, r0, #0xc4
0086bd18  00 50 a0 e1                                      mov r5, r0
0086bd1c  01 60 a0 e1                                      mov r6, r1
0086bd20  04 00 a0 e1                                      mov r0, r4
0086bd24  02 70 a0 e1                                      mov r7, r2
0086bd28  03 80 a0 e1                                      mov r8, r3
0086bd2c  05 9e 00 eb                                      bl #0x893548
0086bd30  05 00 a0 e1                                      mov r0, r5
0086bd34  06 10 a0 e1                                      mov r1, r6
0086bd38  e3 ed ff eb                                      bl #0x8674cc
0086bd3c  00 00 50 e3                                      cmp r0, #0
0086bd40  02 00 00 0a                                      beq #0x86bd50
0086bd44  07 10 a0 e1                                      mov r1, r7
0086bd48  08 20 a0 e1                                      mov r2, r8
0086bd4c  bb ff ff eb                                      bl #0x86bc40
0086bd50  04 00 a0 e1                                      mov r0, r4
0086bd54  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0086bd58  ef 9d 00 ea                                      b #0x89351c

; FUNCTION 0x0086bd5c, declared_size=268, range_size=268, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal13SetMasterGainEff
; demangled: vox::VoxEngineInternal::SetMasterGain(float, float)
; decoder-mode: arm
0086bd5c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086bd60  01 60 a0 e1                                      mov r6, r1
0086bd64  18 d0 4d e2                                      sub sp, sp, #0x18
0086bd68  00 50 a0 e1                                      mov r5, r0
0086bd6c  00 10 a0 e3                                      mov r1, #0
0086bd70  06 00 a0 e1                                      mov r0, r6
0086bd74  02 a0 a0 e1                                      mov sl, r2
0086bd78  63 8a ea eb                                      bl #0x30e70c
0086bd7c  00 00 50 e3                                      cmp r0, #0
0086bd80  00 60 a0 13                                      movne r6, #0
0086bd84  04 00 00 1a                                      bne #0x86bd9c
0086bd88  06 00 a0 e1                                      mov r0, r6
0086bd8c  fe 15 a0 e3                                      mov r1, #0x3f800000
0086bd90  58 89 ea eb                                      bl #0x30e2f8
0086bd94  00 00 50 e3                                      cmp r0, #0
0086bd98  fe 65 a0 13                                      movne r6, #0x3f800000
0086bd9c  fd 4f 85 e2                                      add r4, r5, #0x3f4
0086bda0  04 00 a0 e1                                      mov r0, r4
0086bda4  b4 9d 00 eb                                      bl #0x89347c
0086bda8  e8 80 95 e5                                      ldr r8, [r5, #0xe8]
0086bdac  ec 70 95 e5                                      ldr r7, [r5, #0xec]
0086bdb0  08 00 a0 e1                                      mov r0, r8
0086bdb4  07 10 a0 e1                                      mov r1, r7
0086bdb8  53 8a ea eb                                      bl #0x30e70c
0086bdbc  00 00 50 e3                                      cmp r0, #0
0086bdc0  e4 30 95 05                                      ldreq r3, [r5, #0xe4]
0086bdc4  12 00 00 0a                                      beq #0x86be14
0086bdc8  07 00 a0 e1                                      mov r0, r7
0086bdcc  00 10 a0 e3                                      mov r1, #0
0086bdd0  48 89 ea eb                                      bl #0x30e2f8
0086bdd4  00 00 50 e3                                      cmp r0, #0
0086bdd8  e0 30 95 05                                      ldreq r3, [r5, #0xe0]
0086bddc  0c 00 00 0a                                      beq #0x86be14
0086bde0  e0 90 95 e5                                      ldr sb, [r5, #0xe0]
0086bde4  e4 00 95 e5                                      ldr r0, [r5, #0xe4]
0086bde8  09 10 a0 e1                                      mov r1, sb
0086bdec  6e 89 ea eb                                      bl #0x30e3ac
0086bdf0  00 10 a0 e1                                      mov r1, r0
0086bdf4  08 00 a0 e1                                      mov r0, r8
0086bdf8  db 8b ea eb                                      bl #0x30ed6c
0086bdfc  07 10 a0 e1                                      mov r1, r7
0086be00  a3 8b ea eb                                      bl #0x30ec94
0086be04  00 10 a0 e1                                      mov r1, r0
0086be08  09 00 a0 e1                                      mov r0, sb
0086be0c  64 8b ea eb                                      bl #0x30eba4
0086be10  00 30 a0 e1                                      mov r3, r0
0086be14  6f 12 01 e3                                      movw r1, #0x126f
0086be18  04 30 8d e5                                      str r3, [sp, #4]
0086be1c  0a 00 a0 e1                                      mov r0, sl
0086be20  00 30 a0 e3                                      mov r3, #0
0086be24  83 1a 43 e3                                      movt r1, #0x3a83
0086be28  0c 30 8d e5                                      str r3, [sp, #0xc]
0086be2c  08 60 8d e5                                      str r6, [sp, #8]
0086be30  5b 8b ea eb                                      bl #0x30eba4
0086be34  e0 50 85 e2                                      add r5, r5, #0xe0
0086be38  10 00 8d e5                                      str r0, [sp, #0x10]
0086be3c  04 c0 8d e2                                      add ip, sp, #4
0086be40  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0086be44  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
0086be48  00 20 a0 e3                                      mov r2, #0
0086be4c  14 20 cd e5                                      strb r2, [sp, #0x14]
0086be50  00 20 9c e5                                      ldr r2, [ip]
0086be54  04 00 a0 e1                                      mov r0, r4
0086be58  00 20 c5 e5                                      strb r2, [r5]
0086be5c  85 9d 00 eb                                      bl #0x893478
0086be60  18 d0 8d e2                                      add sp, sp, #0x18
0086be64  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0086be68, declared_size=424, range_size=424, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternalD1Ev
; demangled: vox::VoxEngineInternal::~VoxEngineInternal()
; decoder-mode: arm
0086be68  70 40 2d e9                                      push {r4, r5, r6, lr}
0086be6c  90 41 9f e5                                      ldr r4, [pc, #0x190]
0086be70  90 31 9f e5                                      ldr r3, [pc, #0x190]
0086be74  00 50 a0 e1                                      mov r5, r0
0086be78  04 40 8f e0                                      add r4, pc, r4
0086be7c  03 30 94 e7                                      ldr r3, [r4, r3]
0086be80  08 30 83 e2                                      add r3, r3, #8
0086be84  00 30 80 e5                                      str r3, [r0]
0086be88  20 fa ff eb                                      bl #0x86a710
0086be8c  1c 64 00 eb                                      bl #0x884f04
0086be90  dc 00 95 e5                                      ldr r0, [r5, #0xdc]
0086be94  00 00 50 e3                                      cmp r0, #0
0086be98  02 00 00 0a                                      beq #0x86bea8
0086be9c  ba e0 ff eb                                      bl #0x86418c
0086bea0  dc 00 95 e5                                      ldr r0, [r5, #0xdc]
0086bea4  66 91 ea eb                                      bl #0x310444
0086bea8  4c 35 95 e5                                      ldr r3, [r5, #0x54c]
0086beac  00 00 53 e3                                      cmp r3, #0
0086beb0  05 00 00 0a                                      beq #0x86becc
0086beb4  03 00 a0 e1                                      mov r0, r3
0086beb8  00 30 93 e5                                      ldr r3, [r3]
0086bebc  0f e0 a0 e1                                      mov lr, pc
0086bec0  00 f0 93 e5                                      ldr pc, [r3]
0086bec4  4c 05 95 e5                                      ldr r0, [r5, #0x54c]
0086bec8  5d 91 ea eb                                      bl #0x310444
0086becc  9b a0 00 eb                                      bl #0x894140
0086bed0  98 05 95 e5                                      ldr r0, [r5, #0x598]
0086bed4  00 00 50 e3                                      cmp r0, #0
0086bed8  00 00 00 0a                                      beq #0x86bee0
0086bedc  58 91 ea eb                                      bl #0x310444
0086bee0  24 31 9f e5                                      ldr r3, [pc, #0x124]
0086bee4  00 20 a0 e3                                      mov r2, #0
0086bee8  43 6e 85 e2                                      add r6, r5, #0x430
0086beec  03 30 94 e7                                      ldr r3, [r4, r3]
0086bef0  0c 60 86 e2                                      add r6, r6, #0xc
0086bef4  00 20 83 e5                                      str r2, [r3]
0086bef8  3c 04 95 e5                                      ldr r0, [r5, #0x43c]
0086befc  06 00 50 e1                                      cmp r0, r6
0086bf00  01 00 00 1a                                      bne #0x86bf0c
0086bf04  05 00 00 ea                                      b #0x86bf20
0086bf08  04 00 a0 e1                                      mov r0, r4
0086bf0c  00 40 90 e5                                      ldr r4, [r0]
0086bf10  4b 91 ea eb                                      bl #0x310444
0086bf14  06 00 54 e1                                      cmp r4, r6
0086bf18  fa ff ff 1a                                      bne #0x86bf08
0086bf1c  06 00 a0 e1                                      mov r0, r6
0086bf20  3c 04 85 e5                                      str r0, [r5, #0x43c]
0086bf24  d8 40 85 e2                                      add r4, r5, #0xd8
0086bf28  04 00 86 e5                                      str r0, [r6, #4]
0086bf2c  fd 0f 85 e2                                      add r0, r5, #0x3f4
0086bf30  9c 9d 00 eb                                      bl #0x8935a8
0086bf34  04 00 a0 e1                                      mov r0, r4
0086bf38  4e 9d 00 eb                                      bl #0x893478
0086bf3c  04 00 a0 e1                                      mov r0, r4
0086bf40  cc 40 85 e2                                      add r4, r5, #0xcc
0086bf44  97 9d 00 eb                                      bl #0x8935a8
0086bf48  04 00 a0 e1                                      mov r0, r4
0086bf4c  49 9d 00 eb                                      bl #0x893478
0086bf50  04 00 a0 e1                                      mov r0, r4
0086bf54  93 9d 00 eb                                      bl #0x8935a8
0086bf58  b8 00 95 e5                                      ldr r0, [r5, #0xb8]
0086bf5c  00 00 50 e3                                      cmp r0, #0
0086bf60  00 00 00 0a                                      beq #0x86bf68
0086bf64  36 91 ea eb                                      bl #0x310444
0086bf68  98 00 85 e2                                      add r0, r5, #0x98
0086bf6c  d7 de ff eb                                      bl #0x863ad0
0086bf70  78 00 85 e2                                      add r0, r5, #0x78
0086bf74  d5 de ff eb                                      bl #0x863ad0
0086bf78  74 00 85 e2                                      add r0, r5, #0x74
0086bf7c  89 9d 00 eb                                      bl #0x8935a8
0086bf80  6c 00 95 e5                                      ldr r0, [r5, #0x6c]
0086bf84  6c 60 85 e2                                      add r6, r5, #0x6c
0086bf88  06 00 50 e1                                      cmp r0, r6
0086bf8c  01 00 00 1a                                      bne #0x86bf98
0086bf90  05 00 00 ea                                      b #0x86bfac
0086bf94  04 00 a0 e1                                      mov r0, r4
0086bf98  00 40 90 e5                                      ldr r4, [r0]
0086bf9c  28 91 ea eb                                      bl #0x310444
0086bfa0  06 00 54 e1                                      cmp r4, r6
0086bfa4  fa ff ff 1a                                      bne #0x86bf94
0086bfa8  06 00 a0 e1                                      mov r0, r6
0086bfac  68 40 85 e2                                      add r4, r5, #0x68
0086bfb0  6c 00 85 e5                                      str r0, [r5, #0x6c]
0086bfb4  04 00 86 e5                                      str r0, [r6, #4]
0086bfb8  04 00 a0 e1                                      mov r0, r4
0086bfbc  2d 9d 00 eb                                      bl #0x893478
0086bfc0  04 00 a0 e1                                      mov r0, r4
0086bfc4  5c 40 85 e2                                      add r4, r5, #0x5c
0086bfc8  76 9d 00 eb                                      bl #0x8935a8
0086bfcc  04 00 a0 e1                                      mov r0, r4
0086bfd0  28 9d 00 eb                                      bl #0x893478
0086bfd4  04 00 a0 e1                                      mov r0, r4
0086bfd8  72 9d 00 eb                                      bl #0x8935a8
0086bfdc  48 00 95 e5                                      ldr r0, [r5, #0x48]
0086bfe0  00 00 50 e3                                      cmp r0, #0
0086bfe4  00 00 00 0a                                      beq #0x86bfec
0086bfe8  15 91 ea eb                                      bl #0x310444
0086bfec  28 00 85 e2                                      add r0, r5, #0x28
0086bff0  b6 de ff eb                                      bl #0x863ad0
0086bff4  08 00 85 e2                                      add r0, r5, #8
0086bff8  b4 de ff eb                                      bl #0x863ad0
0086bffc  05 00 a0 e1                                      mov r0, r5
0086c000  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0086c004  18 8c 12 00 0c 17 00 00 98 38 00 00              .byte 0x18, 0x8c, 0x12, 0x00, 0x0c, 0x17, 0x00, 0x00, 0x98, 0x38, 0x00, 0x00

; FUNCTION 0x0086c010, declared_size=28, range_size=28, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternalD0Ev
; demangled: vox::VoxEngineInternal::~VoxEngineInternal()
; decoder-mode: arm
0086c010  10 40 2d e9                                      push {r4, lr}
0086c014  00 40 a0 e1                                      mov r4, r0
0086c018  92 ff ff eb                                      bl #0x86be68
0086c01c  04 00 a0 e1                                      mov r0, r4
0086c020  a2 88 ea eb                                      bl #0x30e2b0
0086c024  04 00 a0 e1                                      mov r0, r4
0086c028  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0086c02c, declared_size=424, range_size=424, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternalD2Ev
; demangled: vox::VoxEngineInternal::~VoxEngineInternal()
; decoder-mode: arm
0086c02c  70 40 2d e9                                      push {r4, r5, r6, lr}
0086c030  90 41 9f e5                                      ldr r4, [pc, #0x190]
0086c034  90 31 9f e5                                      ldr r3, [pc, #0x190]
0086c038  00 50 a0 e1                                      mov r5, r0
0086c03c  04 40 8f e0                                      add r4, pc, r4
0086c040  03 30 94 e7                                      ldr r3, [r4, r3]
0086c044  08 30 83 e2                                      add r3, r3, #8
0086c048  00 30 80 e5                                      str r3, [r0]
0086c04c  af f9 ff eb                                      bl #0x86a710
0086c050  ab 63 00 eb                                      bl #0x884f04
0086c054  dc 00 95 e5                                      ldr r0, [r5, #0xdc]
0086c058  00 00 50 e3                                      cmp r0, #0
0086c05c  02 00 00 0a                                      beq #0x86c06c
0086c060  49 e0 ff eb                                      bl #0x86418c
0086c064  dc 00 95 e5                                      ldr r0, [r5, #0xdc]
0086c068  f5 90 ea eb                                      bl #0x310444
0086c06c  4c 35 95 e5                                      ldr r3, [r5, #0x54c]
0086c070  00 00 53 e3                                      cmp r3, #0
0086c074  05 00 00 0a                                      beq #0x86c090
0086c078  03 00 a0 e1                                      mov r0, r3
0086c07c  00 30 93 e5                                      ldr r3, [r3]
0086c080  0f e0 a0 e1                                      mov lr, pc
0086c084  00 f0 93 e5                                      ldr pc, [r3]
0086c088  4c 05 95 e5                                      ldr r0, [r5, #0x54c]
0086c08c  ec 90 ea eb                                      bl #0x310444
0086c090  2a a0 00 eb                                      bl #0x894140
0086c094  98 05 95 e5                                      ldr r0, [r5, #0x598]
0086c098  00 00 50 e3                                      cmp r0, #0
0086c09c  00 00 00 0a                                      beq #0x86c0a4
0086c0a0  e7 90 ea eb                                      bl #0x310444
0086c0a4  24 31 9f e5                                      ldr r3, [pc, #0x124]
0086c0a8  00 20 a0 e3                                      mov r2, #0
0086c0ac  43 6e 85 e2                                      add r6, r5, #0x430
0086c0b0  03 30 94 e7                                      ldr r3, [r4, r3]
0086c0b4  0c 60 86 e2                                      add r6, r6, #0xc
0086c0b8  00 20 83 e5                                      str r2, [r3]
0086c0bc  3c 04 95 e5                                      ldr r0, [r5, #0x43c]
0086c0c0  06 00 50 e1                                      cmp r0, r6
0086c0c4  01 00 00 1a                                      bne #0x86c0d0
0086c0c8  05 00 00 ea                                      b #0x86c0e4
0086c0cc  04 00 a0 e1                                      mov r0, r4
0086c0d0  00 40 90 e5                                      ldr r4, [r0]
0086c0d4  da 90 ea eb                                      bl #0x310444
0086c0d8  06 00 54 e1                                      cmp r4, r6
0086c0dc  fa ff ff 1a                                      bne #0x86c0cc
0086c0e0  06 00 a0 e1                                      mov r0, r6
0086c0e4  3c 04 85 e5                                      str r0, [r5, #0x43c]
0086c0e8  d8 40 85 e2                                      add r4, r5, #0xd8
0086c0ec  04 00 86 e5                                      str r0, [r6, #4]
0086c0f0  fd 0f 85 e2                                      add r0, r5, #0x3f4
0086c0f4  2b 9d 00 eb                                      bl #0x8935a8
0086c0f8  04 00 a0 e1                                      mov r0, r4
0086c0fc  dd 9c 00 eb                                      bl #0x893478
0086c100  04 00 a0 e1                                      mov r0, r4
0086c104  cc 40 85 e2                                      add r4, r5, #0xcc
0086c108  26 9d 00 eb                                      bl #0x8935a8
0086c10c  04 00 a0 e1                                      mov r0, r4
0086c110  d8 9c 00 eb                                      bl #0x893478
0086c114  04 00 a0 e1                                      mov r0, r4
0086c118  22 9d 00 eb                                      bl #0x8935a8
0086c11c  b8 00 95 e5                                      ldr r0, [r5, #0xb8]
0086c120  00 00 50 e3                                      cmp r0, #0
0086c124  00 00 00 0a                                      beq #0x86c12c
0086c128  c5 90 ea eb                                      bl #0x310444
0086c12c  98 00 85 e2                                      add r0, r5, #0x98
0086c130  66 de ff eb                                      bl #0x863ad0
0086c134  78 00 85 e2                                      add r0, r5, #0x78
0086c138  64 de ff eb                                      bl #0x863ad0
0086c13c  74 00 85 e2                                      add r0, r5, #0x74
0086c140  18 9d 00 eb                                      bl #0x8935a8
0086c144  6c 00 95 e5                                      ldr r0, [r5, #0x6c]
0086c148  6c 60 85 e2                                      add r6, r5, #0x6c
0086c14c  06 00 50 e1                                      cmp r0, r6
0086c150  01 00 00 1a                                      bne #0x86c15c
0086c154  05 00 00 ea                                      b #0x86c170
0086c158  04 00 a0 e1                                      mov r0, r4
0086c15c  00 40 90 e5                                      ldr r4, [r0]
0086c160  b7 90 ea eb                                      bl #0x310444
0086c164  06 00 54 e1                                      cmp r4, r6
0086c168  fa ff ff 1a                                      bne #0x86c158
0086c16c  06 00 a0 e1                                      mov r0, r6
0086c170  68 40 85 e2                                      add r4, r5, #0x68
0086c174  6c 00 85 e5                                      str r0, [r5, #0x6c]
0086c178  04 00 86 e5                                      str r0, [r6, #4]
0086c17c  04 00 a0 e1                                      mov r0, r4
0086c180  bc 9c 00 eb                                      bl #0x893478
0086c184  04 00 a0 e1                                      mov r0, r4
0086c188  5c 40 85 e2                                      add r4, r5, #0x5c
0086c18c  05 9d 00 eb                                      bl #0x8935a8
0086c190  04 00 a0 e1                                      mov r0, r4
0086c194  b7 9c 00 eb                                      bl #0x893478
0086c198  04 00 a0 e1                                      mov r0, r4
0086c19c  01 9d 00 eb                                      bl #0x8935a8
0086c1a0  48 00 95 e5                                      ldr r0, [r5, #0x48]
0086c1a4  00 00 50 e3                                      cmp r0, #0
0086c1a8  00 00 00 0a                                      beq #0x86c1b0
0086c1ac  a4 90 ea eb                                      bl #0x310444
0086c1b0  28 00 85 e2                                      add r0, r5, #0x28
0086c1b4  45 de ff eb                                      bl #0x863ad0
0086c1b8  08 00 85 e2                                      add r0, r5, #8
0086c1bc  43 de ff eb                                      bl #0x863ad0
0086c1c0  05 00 a0 e1                                      mov r0, r5
0086c1c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0086c1c8  54 8a 12 00 0c 17 00 00 98 38 00 00              .byte 0x54, 0x8a, 0x12, 0x00, 0x0c, 0x17, 0x00, 0x00, 0x98, 0x38, 0x00, 0x00

; FUNCTION 0x0086c2cc, declared_size=16, range_size=16, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal6ResumeEPNS_10EmitterObjEf
; demangled: vox::VoxEngineInternal::Resume(vox::EmitterObj*, float)
; decoder-mode: arm
0086c2cc  00 00 51 e2                                      subs r0, r1, #0
0086c2d0  1e ff 2f 01                                      bxeq lr
0086c2d4  02 10 a0 e1                                      mov r1, r2
0086c2d8  bd ff ff ea                                      b #0x86c1d4

; FUNCTION 0x0086c2dc, declared_size=508, range_size=508, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal17ResumeAllEmittersEjf
; demangled: vox::VoxEngineInternal::ResumeAllEmitters(unsigned int, float)
; decoder-mode: arm
0086c2dc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0086c2e0  00 50 a0 e1                                      mov r5, r0
0086c2e4  c4 70 80 e2                                      add r7, r0, #0xc4
0086c2e8  14 d0 4d e2                                      sub sp, sp, #0x14
0086c2ec  07 00 a0 e1                                      mov r0, r7
0086c2f0  d0 80 85 e2                                      add r8, r5, #0xd0
0086c2f4  02 60 a0 e1                                      mov r6, r2
0086c2f8  01 40 a0 e1                                      mov r4, r1
0086c2fc  78 a0 85 e2                                      add sl, r5, #0x78
0086c300  90 9c 00 eb                                      bl #0x893548
0086c304  08 00 a0 e1                                      mov r0, r8
0086c308  8e 9c 00 eb                                      bl #0x893548
0086c30c  0c 00 8d e2                                      add r0, sp, #0xc
0086c310  0a 10 a0 e1                                      mov r1, sl
0086c314  be db ff eb                                      bl #0x863214
0086c318  0a 10 a0 e1                                      mov r1, sl
0086c31c  08 00 8d e2                                      add r0, sp, #8
0086c320  be db ff eb                                      bl #0x863220
0086c324  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086c328  08 20 9d e5                                      ldr r2, [sp, #8]
0086c32c  03 00 52 e1                                      cmp r2, r3
0086c330  13 00 00 0a                                      beq #0x86c384
0086c334  18 a0 93 e5                                      ldr sl, [r3, #0x18]
0086c338  04 10 a0 e1                                      mov r1, r4
0086c33c  0a 00 a0 e1                                      mov r0, sl
0086c340  ec e4 ff eb                                      bl #0x8656f8
0086c344  00 00 50 e3                                      cmp r0, #0
0086c348  36 00 00 1a                                      bne #0x86c428
0086c34c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086c350  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086c354  00 00 52 e3                                      cmp r2, #0
0086c358  01 00 00 1a                                      bne #0x86c364
0086c35c  39 00 00 ea                                      b #0x86c448
0086c360  03 20 a0 e1                                      mov r2, r3
0086c364  08 30 92 e5                                      ldr r3, [r2, #8]
0086c368  00 00 53 e3                                      cmp r3, #0
0086c36c  fb ff ff 1a                                      bne #0x86c360
0086c370  02 30 a0 e1                                      mov r3, r2
0086c374  0c 30 8d e5                                      str r3, [sp, #0xc]
0086c378  08 20 9d e5                                      ldr r2, [sp, #8]
0086c37c  03 00 52 e1                                      cmp r2, r3
0086c380  eb ff ff 1a                                      bne #0x86c334
0086c384  98 a0 85 e2                                      add sl, r5, #0x98
0086c388  04 00 8d e2                                      add r0, sp, #4
0086c38c  0a 10 a0 e1                                      mov r1, sl
0086c390  9f db ff eb                                      bl #0x863214
0086c394  04 30 9d e5                                      ldr r3, [sp, #4]
0086c398  0a 10 a0 e1                                      mov r1, sl
0086c39c  0d 00 a0 e1                                      mov r0, sp
0086c3a0  0c 30 8d e5                                      str r3, [sp, #0xc]
0086c3a4  9d db ff eb                                      bl #0x863220
0086c3a8  00 20 9d e5                                      ldr r2, [sp]
0086c3ac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086c3b0  08 20 8d e5                                      str r2, [sp, #8]
0086c3b4  08 20 9d e5                                      ldr r2, [sp, #8]
0086c3b8  02 00 53 e1                                      cmp r3, r2
0086c3bc  13 00 00 0a                                      beq #0x86c410
0086c3c0  18 a0 93 e5                                      ldr sl, [r3, #0x18]
0086c3c4  04 10 a0 e1                                      mov r1, r4
0086c3c8  0a 00 a0 e1                                      mov r0, sl
0086c3cc  c9 e4 ff eb                                      bl #0x8656f8
0086c3d0  00 00 50 e3                                      cmp r0, #0
0086c3d4  29 00 00 1a                                      bne #0x86c480
0086c3d8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086c3dc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086c3e0  00 00 52 e3                                      cmp r2, #0
0086c3e4  01 00 00 1a                                      bne #0x86c3f0
0086c3e8  2c 00 00 ea                                      b #0x86c4a0
0086c3ec  03 20 a0 e1                                      mov r2, r3
0086c3f0  08 30 92 e5                                      ldr r3, [r2, #8]
0086c3f4  00 00 53 e3                                      cmp r3, #0
0086c3f8  fb ff ff 1a                                      bne #0x86c3ec
0086c3fc  02 30 a0 e1                                      mov r3, r2
0086c400  0c 30 8d e5                                      str r3, [sp, #0xc]
0086c404  08 20 9d e5                                      ldr r2, [sp, #8]
0086c408  02 00 53 e1                                      cmp r3, r2
0086c40c  eb ff ff 1a                                      bne #0x86c3c0
0086c410  08 00 a0 e1                                      mov r0, r8
0086c414  40 9c 00 eb                                      bl #0x89351c
0086c418  07 00 a0 e1                                      mov r0, r7
0086c41c  3e 9c 00 eb                                      bl #0x89351c
0086c420  14 d0 8d e2                                      add sp, sp, #0x14
0086c424  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0086c428  06 20 a0 e1                                      mov r2, r6
0086c42c  0a 10 a0 e1                                      mov r1, sl
0086c430  05 00 a0 e1                                      mov r0, r5
0086c434  a4 ff ff eb                                      bl #0x86c2cc
0086c438  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086c43c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086c440  00 00 52 e3                                      cmp r2, #0
0086c444  c6 ff ff 1a                                      bne #0x86c364
0086c448  04 10 93 e5                                      ldr r1, [r3, #4]
0086c44c  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086c450  00 00 53 e1                                      cmp r3, r0
0086c454  05 00 00 1a                                      bne #0x86c470
0086c458  01 30 a0 e1                                      mov r3, r1
0086c45c  04 10 91 e5                                      ldr r1, [r1, #4]
0086c460  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086c464  03 00 52 e1                                      cmp r2, r3
0086c468  fa ff ff 0a                                      beq #0x86c458
0086c46c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086c470  02 00 51 e1                                      cmp r1, r2
0086c474  01 30 a0 11                                      movne r3, r1
0086c478  0c 30 8d e5                                      str r3, [sp, #0xc]
0086c47c  bd ff ff ea                                      b #0x86c378
0086c480  06 20 a0 e1                                      mov r2, r6
0086c484  0a 10 a0 e1                                      mov r1, sl
0086c488  05 00 a0 e1                                      mov r0, r5
0086c48c  8e ff ff eb                                      bl #0x86c2cc
0086c490  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086c494  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086c498  00 00 52 e3                                      cmp r2, #0
0086c49c  d3 ff ff 1a                                      bne #0x86c3f0
0086c4a0  04 10 93 e5                                      ldr r1, [r3, #4]
0086c4a4  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086c4a8  00 00 53 e1                                      cmp r3, r0
0086c4ac  05 00 00 1a                                      bne #0x86c4c8
0086c4b0  01 30 a0 e1                                      mov r3, r1
0086c4b4  04 10 91 e5                                      ldr r1, [r1, #4]
0086c4b8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086c4bc  03 00 52 e1                                      cmp r2, r3
0086c4c0  fa ff ff 0a                                      beq #0x86c4b0
0086c4c4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086c4c8  02 00 51 e1                                      cmp r1, r2
0086c4cc  01 30 a0 11                                      movne r3, r1
0086c4d0  0c 30 8d e5                                      str r3, [sp, #0xc]
0086c4d4  ca ff ff ea                                      b #0x86c404

; FUNCTION 0x0086c4d8, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal6ResumeERNS_13EmitterHandleEf
; demangled: vox::VoxEngineInternal::Resume(vox::EmitterHandle&, float)
; decoder-mode: arm
0086c4d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086c4dc  c4 50 80 e2                                      add r5, r0, #0xc4
0086c4e0  00 40 a0 e1                                      mov r4, r0
0086c4e4  01 70 a0 e1                                      mov r7, r1
0086c4e8  05 00 a0 e1                                      mov r0, r5
0086c4ec  02 60 a0 e1                                      mov r6, r2
0086c4f0  14 9c 00 eb                                      bl #0x893548
0086c4f4  07 10 a0 e1                                      mov r1, r7
0086c4f8  04 00 a0 e1                                      mov r0, r4
0086c4fc  f2 eb ff eb                                      bl #0x8674cc
0086c500  06 20 a0 e1                                      mov r2, r6
0086c504  00 10 a0 e1                                      mov r1, r0
0086c508  04 00 a0 e1                                      mov r0, r4
0086c50c  6e ff ff eb                                      bl #0x86c2cc
0086c510  05 00 a0 e1                                      mov r0, r5
0086c514  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0086c518  ff 9b 00 ea                                      b #0x89351c

; FUNCTION 0x0086ca08, declared_size=1044, range_size=1044, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal13CreateEmitterERNS_10DataHandleEiPv
; demangled: vox::VoxEngineInternal::CreateEmitter(vox::DataHandle&, int, void*)
; decoder-mode: arm
0086ca08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086ca0c  54 80 81 e2                                      add r8, r1, #0x54
0086ca10  02 50 a0 e1                                      mov r5, r2
0086ca14  7c d0 4d e2                                      sub sp, sp, #0x7c
0086ca18  01 40 a0 e1                                      mov r4, r1
0086ca1c  00 a0 a0 e1                                      mov sl, r0
0086ca20  08 00 a0 e1                                      mov r0, r8
0086ca24  2c 30 8d e5                                      str r3, [sp, #0x2c]
0086ca28  c6 9a 00 eb                                      bl #0x893548
0086ca2c  05 10 a0 e1                                      mov r1, r5
0086ca30  04 00 a0 e1                                      mov r0, r4
0086ca34  20 ef ff eb                                      bl #0x8686bc
0086ca38  d4 73 9f e5                                      ldr r7, [pc, #0x3d4]
0086ca3c  00 50 50 e2                                      subs r5, r0, #0
0086ca40  07 70 8f e0                                      add r7, pc, r7
0086ca44  c2 00 00 0a                                      beq #0x86cd54
0086ca48  9f e3 ff eb                                      bl #0x8658cc
0086ca4c  00 60 50 e2                                      subs r6, r0, #0
0086ca50  66 00 00 0a                                      beq #0x86cbf0
0086ca54  50 30 95 e5                                      ldr r3, [r5, #0x50]
0086ca58  00 00 53 e3                                      cmp r3, #0
0086ca5c  50 00 00 1a                                      bne #0x86cba4
0086ca60  38 b0 95 e5                                      ldr fp, [r5, #0x38]
0086ca64  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
0086ca68  00 00 5b e3                                      cmp fp, #0
0086ca6c  00 00 51 13                                      cmpne r1, #0
0086ca70  28 10 8d e5                                      str r1, [sp, #0x28]
0086ca74  4a 00 00 0a                                      beq #0x86cba4
0086ca78  00 30 9b e5                                      ldr r3, [fp]
0086ca7c  0b 00 a0 e1                                      mov r0, fp
0086ca80  0f e0 a0 e1                                      mov lr, pc
0086ca84  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086ca88  00 00 50 e3                                      cmp r0, #0
0086ca8c  30 00 8d e5                                      str r0, [sp, #0x30]
0086ca90  d3 00 00 0a                                      beq #0x86cde4
0086ca94  28 10 9d e5                                      ldr r1, [sp, #0x28]
0086ca98  00 30 91 e5                                      ldr r3, [r1]
0086ca9c  01 00 a0 e1                                      mov r0, r1
0086caa0  30 10 9d e5                                      ldr r1, [sp, #0x30]
0086caa4  0f e0 a0 e1                                      mov lr, pc
0086caa8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086caac  00 60 50 e2                                      subs r6, r0, #0
0086cab0  49 00 00 0a                                      beq #0x86cbdc
0086cab4  04 30 86 e2                                      add r3, r6, #4
0086cab8  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0086cabc  68 c0 8d e2                                      add ip, sp, #0x68
0086cac0  00 00 50 e3                                      cmp r0, #0
0086cac4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0086cac8  ba 00 00 da                                      ble #0x86cdb8
0086cacc  4c 35 94 e5                                      ldr r3, [r4, #0x54c]
0086cad0  00 00 53 e3                                      cmp r3, #0
0086cad4  b7 00 00 0a                                      beq #0x86cdb8
0086cad8  03 00 a0 e1                                      mov r0, r3
0086cadc  0c 10 a0 e1                                      mov r1, ip
0086cae0  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
0086cae4  00 c0 93 e5                                      ldr ip, [r3]
0086cae8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0086caec  0f e0 a0 e1                                      mov lr, pc
0086caf0  44 f0 9c e5                                      ldr pc, [ip, #0x44]
0086caf4  00 20 50 e2                                      subs r2, r0, #0
0086caf8  34 20 8d e5                                      str r2, [sp, #0x34]
0086cafc  ad 00 00 0a                                      beq #0x86cdb8
0086cb00  34 e0 9d e5                                      ldr lr, [sp, #0x34]
0086cb04  00 30 9e e5                                      ldr r3, [lr]
0086cb08  0f e0 a0 e1                                      mov lr, pc
0086cb0c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0086cb10  00 00 50 e3                                      cmp r0, #0
0086cb14  99 00 00 1a                                      bne #0x86cd80
0086cb18  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0086cb1c  09 00 96 e9                                      ldmib r6, {r0, r3}
0086cb20  96 10 a0 e3                                      mov r1, #0x96
0086cb24  90 02 00 e0                                      mul r0, r0, r2
0086cb28  91 03 01 e0                                      mul r1, r1, r3
0086cb2c  00 00 50 e3                                      cmp r0, #0
0086cb30  07 30 80 e2                                      add r3, r0, #7
0086cb34  03 00 a0 b1                                      movlt r0, r3
0086cb38  c0 31 a0 e1                                      asr r3, r0, #3
0086cb3c  93 01 01 e0                                      mul r1, r3, r1
0086cb40  d3 cd 04 e3                                      movw ip, #0x4dd3
0086cb44  62 c0 41 e3                                      movt ip, #0x1062
0086cb48  9c 31 cc e0                                      smull r3, ip, ip, r1
0086cb4c  c1 1f a0 e1                                      asr r1, r1, #0x1f
0086cb50  4c 33 61 e0                                      rsb r3, r1, ip, asr #6
0086cb54  00 00 53 e3                                      cmp r3, #0
0086cb58  2f 00 00 ca                                      bgt #0x86cc1c
0086cb5c  0b 00 a0 e1                                      mov r0, fp
0086cb60  30 10 9d e5                                      ldr r1, [sp, #0x30]
0086cb64  00 30 9b e5                                      ldr r3, [fp]
0086cb68  0f e0 a0 e1                                      mov lr, pc
0086cb6c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086cb70  28 00 9d e5                                      ldr r0, [sp, #0x28]
0086cb74  06 10 a0 e1                                      mov r1, r6
0086cb78  00 30 90 e5                                      ldr r3, [r0]
0086cb7c  0f e0 a0 e1                                      mov lr, pc
0086cb80  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086cb84  4c 35 94 e5                                      ldr r3, [r4, #0x54c]
0086cb88  00 00 53 e3                                      cmp r3, #0
0086cb8c  04 00 00 0a                                      beq #0x86cba4
0086cb90  03 00 a0 e1                                      mov r0, r3
0086cb94  34 10 9d e5                                      ldr r1, [sp, #0x34]
0086cb98  00 30 93 e5                                      ldr r3, [r3]
0086cb9c  0f e0 a0 e1                                      mov lr, pc
0086cba0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0086cba4  08 00 a0 e1                                      mov r0, r8
0086cba8  5b 9a 00 eb                                      bl #0x89351c
0086cbac  00 10 a0 e3                                      mov r1, #0
0086cbb0  0a 00 a0 e1                                      mov r0, sl
0086cbb4  00 20 e0 e3                                      mvn r2, #0
0086cbb8  00 30 e0 e3                                      mvn r3, #0
0086cbbc  0c 10 8d e5                                      str r1, [sp, #0xc]
0086cbc0  00 10 8d e5                                      str r1, [sp]
0086cbc4  04 10 8d e5                                      str r1, [sp, #4]
0086cbc8  08 10 8d e5                                      str r1, [sp, #8]
0086cbcc  31 ed ff eb                                      bl #0x868098
0086cbd0  0a 00 a0 e1                                      mov r0, sl
0086cbd4  7c d0 8d e2                                      add sp, sp, #0x7c
0086cbd8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086cbdc  30 10 9d e5                                      ldr r1, [sp, #0x30]
0086cbe0  0b 00 a0 e1                                      mov r0, fp
0086cbe4  00 30 9b e5                                      ldr r3, [fp]
0086cbe8  0f e0 a0 e1                                      mov lr, pc
0086cbec  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086cbf0  08 00 a0 e1                                      mov r0, r8
0086cbf4  48 9a 00 eb                                      bl #0x89351c
0086cbf8  0a 00 a0 e1                                      mov r0, sl
0086cbfc  00 20 e0 e3                                      mvn r2, #0
0086cc00  00 30 e0 e3                                      mvn r3, #0
0086cc04  0c 60 8d e5                                      str r6, [sp, #0xc]
0086cc08  00 60 8d e5                                      str r6, [sp]
0086cc0c  04 60 8d e5                                      str r6, [sp, #4]
0086cc10  08 60 8d e5                                      str r6, [sp, #8]
0086cc14  1f ed ff eb                                      bl #0x868098
0086cc18  ec ff ff ea                                      b #0x86cbd0
0086cc1c  04 10 96 e5                                      ldr r1, [r6, #4]
0086cc20  03 00 a0 e1                                      mov r0, r3
0086cc24  1c 30 8d e5                                      str r3, [sp, #0x1c]
0086cc28  91 02 02 e0                                      mul r2, r1, r2
0086cc2c  00 00 52 e3                                      cmp r2, #0
0086cc30  07 10 82 e2                                      add r1, r2, #7
0086cc34  01 20 a0 b1                                      movlt r2, r1
0086cc38  c2 11 a0 e1                                      asr r1, r2, #3
0086cc3c  30 87 ea eb                                      bl #0x30e904
0086cc40  04 00 a0 e1                                      mov r0, r4
0086cc44  20 10 8d e5                                      str r1, [sp, #0x20]
0086cc48  06 f1 ff eb                                      bl #0x869068
0086cc4c  f8 03 cd e1                                      strd r0, r1, [sp, #0x38]
0086cc50  20 c0 95 e5                                      ldr ip, [r5, #0x20]
0086cc54  00 10 a0 e3                                      mov r1, #0
0086cc58  5a 0f a0 e3                                      mov r0, #0x168
0086cc5c  24 c0 8d e5                                      str ip, [sp, #0x24]
0086cc60  78 8e ea eb                                      bl #0x310648
0086cc64  20 20 9d e5                                      ldr r2, [sp, #0x20]
0086cc68  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0086cc6c  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
0086cc70  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0086cc74  03 10 62 e0                                      rsb r1, r2, r3
0086cc78  08 10 8d e5                                      str r1, [sp, #8]
0086cc7c  34 10 9d e5                                      ldr r1, [sp, #0x34]
0086cc80  00 90 a0 e1                                      mov sb, r0
0086cc84  d8 23 cd e1                                      ldrd r2, r3, [sp, #0x38]
0086cc88  00 e0 8d e5                                      str lr, [sp]
0086cc8c  04 c0 8d e5                                      str ip, [sp, #4]
0086cc90  0c 10 8d e5                                      str r1, [sp, #0xc]
0086cc94  10 60 8d e5                                      str r6, [sp, #0x10]
0086cc98  14 50 8d e5                                      str r5, [sp, #0x14]
0086cc9c  52 fe ff eb                                      bl #0x86c5ec
0086cca0  00 00 59 e3                                      cmp sb, #0
0086cca4  ac ff ff 0a                                      beq #0x86cb5c
0086cca8  05 00 a0 e1                                      mov r0, r5
0086ccac  65 e3 ff eb                                      bl #0x865a48
0086ccb0  00 10 a0 e1                                      mov r1, r0
0086ccb4  09 00 a0 e1                                      mov r0, sb
0086ccb8  9d e2 ff eb                                      bl #0x865734
0086ccbc  d8 20 c9 e1                                      ldrd r2, r3, [sb, #8]
0086ccc0  05 00 a0 e1                                      mov r0, r5
0086ccc4  b7 e3 ff eb                                      bl #0x865ba8
0086ccc8  08 00 a0 e1                                      mov r0, r8
0086cccc  12 9a 00 eb                                      bl #0x89351c
0086ccd0  d8 20 c9 e1                                      ldrd r2, r3, [sb, #8]
0086ccd4  90 15 94 e5                                      ldr r1, [r4, #0x590]
0086ccd8  38 01 9f e5                                      ldr r0, [pc, #0x138]
0086ccdc  40 50 8d e2                                      add r5, sp, #0x40
0086cce0  14 10 89 e5                                      str r1, [sb, #0x14]
0086cce4  90 15 94 e5                                      ldr r1, [r4, #0x590]
0086cce8  00 e0 97 e7                                      ldr lr, [r7, r0]
0086ccec  d0 60 84 e2                                      add r6, r4, #0xd0
0086ccf0  55 0f 81 e2                                      add r0, r1, #0x154
0086ccf4  00 c1 94 e7                                      ldr ip, [r4, r0, lsl #2]
0086ccf8  05 00 a0 e1                                      mov r0, r5
0086ccfc  00 e0 8d e5                                      str lr, [sp]
0086cd00  08 c0 8d e5                                      str ip, [sp, #8]
0086cd04  0c 10 8d e5                                      str r1, [sp, #0xc]
0086cd08  04 90 8d e5                                      str sb, [sp, #4]
0086cd0c  e1 ec ff eb                                      bl #0x868098
0086cd10  90 35 94 e5                                      ldr r3, [r4, #0x590]
0086cd14  06 00 a0 e1                                      mov r0, r6
0086cd18  01 30 83 e2                                      add r3, r3, #1
0086cd1c  0f 30 03 e2                                      and r3, r3, #0xf
0086cd20  90 35 84 e5                                      str r3, [r4, #0x590]
0086cd24  e0 99 00 eb                                      bl #0x8934ac
0086cd28  09 10 a0 e1                                      mov r1, sb
0086cd2c  98 00 84 e2                                      add r0, r4, #0x98
0086cd30  ef de ff eb                                      bl #0x8648f4
0086cd34  06 00 a0 e1                                      mov r0, r6
0086cd38  d0 99 00 eb                                      bl #0x893480
0086cd3c  0a 00 a0 e1                                      mov r0, sl
0086cd40  05 10 a0 e1                                      mov r1, r5
0086cd44  1d ed ff eb                                      bl #0x8681c0
0086cd48  05 00 a0 e1                                      mov r0, r5
0086cd4c  96 ed ff eb                                      bl #0x8683ac
0086cd50  9e ff ff ea                                      b #0x86cbd0
0086cd54  08 00 a0 e1                                      mov r0, r8
0086cd58  ef 99 00 eb                                      bl #0x89351c
0086cd5c  0a 00 a0 e1                                      mov r0, sl
0086cd60  00 20 e0 e3                                      mvn r2, #0
0086cd64  00 30 e0 e3                                      mvn r3, #0
0086cd68  0c 50 8d e5                                      str r5, [sp, #0xc]
0086cd6c  00 50 8d e5                                      str r5, [sp]
0086cd70  04 50 8d e5                                      str r5, [sp, #4]
0086cd74  08 50 8d e5                                      str r5, [sp, #8]
0086cd78  c6 ec ff eb                                      bl #0x868098
0086cd7c  93 ff ff ea                                      b #0x86cbd0
0086cd80  00 30 96 e5                                      ldr r3, [r6]
0086cd84  06 00 a0 e1                                      mov r0, r6
0086cd88  0f e0 a0 e1                                      mov lr, pc
0086cd8c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0086cd90  00 00 50 e3                                      cmp r0, #0
0086cd94  5f ff ff 0a                                      beq #0x86cb18
0086cd98  10 30 96 e5                                      ldr r3, [r6, #0x10]
0086cd9c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0086cda0  92 03 03 e0                                      mul r3, r2, r3
0086cda4  07 10 83 e2                                      add r1, r3, #7
0086cda8  00 00 53 e3                                      cmp r3, #0
0086cdac  01 30 a0 b1                                      movlt r3, r1
0086cdb0  c3 31 a0 e1                                      asr r3, r3, #3
0086cdb4  66 ff ff ea                                      b #0x86cb54
0086cdb8  0b 00 a0 e1                                      mov r0, fp
0086cdbc  30 10 9d e5                                      ldr r1, [sp, #0x30]
0086cdc0  00 30 9b e5                                      ldr r3, [fp]
0086cdc4  0f e0 a0 e1                                      mov lr, pc
0086cdc8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086cdcc  28 00 9d e5                                      ldr r0, [sp, #0x28]
0086cdd0  06 10 a0 e1                                      mov r1, r6
0086cdd4  00 30 90 e5                                      ldr r3, [r0]
0086cdd8  0f e0 a0 e1                                      mov lr, pc
0086cddc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086cde0  6f ff ff ea                                      b #0x86cba4
0086cde4  08 00 a0 e1                                      mov r0, r8
0086cde8  cb 99 00 eb                                      bl #0x89351c
0086cdec  30 e0 9d e5                                      ldr lr, [sp, #0x30]
0086cdf0  0a 00 a0 e1                                      mov r0, sl
0086cdf4  00 20 e0 e3                                      mvn r2, #0
0086cdf8  00 30 e0 e3                                      mvn r3, #0
0086cdfc  0c e0 8d e5                                      str lr, [sp, #0xc]
0086ce00  00 e0 8d e5                                      str lr, [sp]
0086ce04  04 e0 8d e5                                      str lr, [sp, #4]
0086ce08  08 e0 8d e5                                      str lr, [sp, #8]
0086ce0c  a1 ec ff eb                                      bl #0x868098
0086ce10  6e ff ff ea                                      b #0x86cbd0
; mapping-symbol data/literal pool
0086ce14  50 80 12 00 98 38 00 00                          .byte 0x50, 0x80, 0x12, 0x00, 0x98, 0x38, 0x00, 0x00

; FUNCTION 0x0086db40, declared_size=1336, range_size=1336, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal14UpdateEmittersEf
; demangled: vox::VoxEngineInternal::UpdateEmitters(float)
; decoder-mode: arm
0086db40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086db44  fd 3f 80 e2                                      add r3, r0, #0x3f4
0086db48  1c d0 4d e2                                      sub sp, sp, #0x1c
0086db4c  00 40 a0 e1                                      mov r4, r0
0086db50  03 00 a0 e1                                      mov r0, r3
0086db54  04 30 8d e5                                      str r3, [sp, #4]
0086db58  01 b0 a0 e1                                      mov fp, r1
0086db5c  46 96 00 eb                                      bl #0x89347c
0086db60  94 35 94 e5                                      ldr r3, [r4, #0x594]
0086db64  00 00 53 e3                                      cmp r3, #0
0086db68  16 01 00 ca                                      bgt #0x86dfc8
0086db6c  0b 00 a0 e1                                      mov r0, fp
0086db70  00 10 a0 e3                                      mov r1, #0
0086db74  e4 82 ea eb                                      bl #0x30e70c
0086db78  00 00 50 e3                                      cmp r0, #0
0086db7c  00 b0 a0 13                                      movne fp, #0
0086db80  06 00 00 1a                                      bne #0x86dba0
0086db84  cd 1c 0c e3                                      movw r1, #0xcccd
0086db88  0b 00 a0 e1                                      mov r0, fp
0086db8c  cc 1d 43 e3                                      movt r1, #0x3dcc
0086db90  d8 81 ea eb                                      bl #0x30e2f8
0086db94  00 00 50 e3                                      cmp r0, #0
0086db98  cd bc 0c 13                                      movwne fp, #0xcccd
0086db9c  cc bd 43 13                                      movtne fp, #0x3dcc
0086dba0  04 00 a0 e1                                      mov r0, r4
0086dba4  c5 d4 ff eb                                      bl #0x862ec0
0086dba8  04 00 a0 e1                                      mov r0, r4
0086dbac  0b 10 a0 e1                                      mov r1, fp
0086dbb0  35 d5 ff eb                                      bl #0x86308c
0086dbb4  e8 50 94 e5                                      ldr r5, [r4, #0xe8]
0086dbb8  ec 10 94 e5                                      ldr r1, [r4, #0xec]
0086dbbc  05 00 a0 e1                                      mov r0, r5
0086dbc0  d1 82 ea eb                                      bl #0x30e70c
0086dbc4  00 00 50 e3                                      cmp r0, #0
0086dbc8  01 30 a0 03                                      moveq r3, #1
0086dbcc  f0 30 c4 05                                      strbeq r3, [r4, #0xf0]
0086dbd0  04 00 00 0a                                      beq #0x86dbe8
0086dbd4  05 10 a0 e1                                      mov r1, r5
0086dbd8  0b 00 a0 e1                                      mov r0, fp
0086dbdc  f0 83 ea eb                                      bl #0x30eba4
0086dbe0  00 50 a0 e1                                      mov r5, r0
0086dbe4  e8 00 84 e5                                      str r0, [r4, #0xe8]
0086dbe8  ec 60 94 e5                                      ldr r6, [r4, #0xec]
0086dbec  05 10 a0 e1                                      mov r1, r5
0086dbf0  06 00 a0 e1                                      mov r0, r6
0086dbf4  bf 81 ea eb                                      bl #0x30e2f8
0086dbf8  00 00 50 e3                                      cmp r0, #0
0086dbfc  e4 90 94 05                                      ldreq sb, [r4, #0xe4]
0086dc00  c3 00 00 1a                                      bne #0x86df14
0086dc04  04 80 a0 e1                                      mov r8, r4
0086dc08  04 50 a0 e1                                      mov r5, r4
0086dc0c  00 70 a0 e3                                      mov r7, #0
0086dc10  fc a0 95 e5                                      ldr sl, [r5, #0xfc]
0086dc14  00 11 95 e5                                      ldr r1, [r5, #0x100]
0086dc18  0a 00 a0 e1                                      mov r0, sl
0086dc1c  ba 82 ea eb                                      bl #0x30e70c
0086dc20  00 00 50 e3                                      cmp r0, #0
0086dc24  01 30 a0 03                                      moveq r3, #1
0086dc28  04 31 c5 05                                      strbeq r3, [r5, #0x104]
0086dc2c  04 00 00 0a                                      beq #0x86dc44
0086dc30  0a 10 a0 e1                                      mov r1, sl
0086dc34  0b 00 a0 e1                                      mov r0, fp
0086dc38  d9 83 ea eb                                      bl #0x30eba4
0086dc3c  00 a0 a0 e1                                      mov sl, r0
0086dc40  fc 00 85 e5                                      str r0, [r5, #0xfc]
0086dc44  00 61 95 e5                                      ldr r6, [r5, #0x100]
0086dc48  0a 00 a0 e1                                      mov r0, sl
0086dc4c  06 10 a0 e1                                      mov r1, r6
0086dc50  ad 82 ea eb                                      bl #0x30e70c
0086dc54  00 00 50 e3                                      cmp r0, #0
0086dc58  00 10 a0 e3                                      mov r1, #0
0086dc5c  06 00 a0 e1                                      mov r0, r6
0086dc60  f8 10 95 05                                      ldreq r1, [r5, #0xf8]
0086dc64  12 00 00 0a                                      beq #0x86dcb4
0086dc68  a2 81 ea eb                                      bl #0x30e2f8
0086dc6c  00 00 50 e3                                      cmp r0, #0
0086dc70  f4 10 95 05                                      ldreq r1, [r5, #0xf4]
0086dc74  0e 00 00 0a                                      beq #0x86dcb4
0086dc78  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
0086dc7c  f8 00 95 e5                                      ldr r0, [r5, #0xf8]
0086dc80  03 10 a0 e1                                      mov r1, r3
0086dc84  00 30 8d e5                                      str r3, [sp]
0086dc88  c7 81 ea eb                                      bl #0x30e3ac
0086dc8c  00 10 a0 e1                                      mov r1, r0
0086dc90  0a 00 a0 e1                                      mov r0, sl
0086dc94  34 84 ea eb                                      bl #0x30ed6c
0086dc98  06 10 a0 e1                                      mov r1, r6
0086dc9c  fc 83 ea eb                                      bl #0x30ec94
0086dca0  00 30 9d e5                                      ldr r3, [sp]
0086dca4  00 10 a0 e1                                      mov r1, r0
0086dca8  03 00 a0 e1                                      mov r0, r3
0086dcac  bc 83 ea eb                                      bl #0x30eba4
0086dcb0  00 10 a0 e1                                      mov r1, r0
0086dcb4  09 00 a0 e1                                      mov r0, sb
0086dcb8  2b 84 ea eb                                      bl #0x30ed6c
0086dcbc  01 70 87 e2                                      add r7, r7, #1
0086dcc0  20 00 57 e3                                      cmp r7, #0x20
0086dcc4  74 03 88 e5                                      str r0, [r8, #0x374]
0086dcc8  14 50 85 e2                                      add r5, r5, #0x14
0086dccc  04 80 88 e2                                      add r8, r8, #4
0086dcd0  ce ff ff 1a                                      bne #0x86dc10
0086dcd4  04 00 9d e5                                      ldr r0, [sp, #4]
0086dcd8  c4 60 84 e2                                      add r6, r4, #0xc4
0086dcdc  e5 95 00 eb                                      bl #0x893478
0086dce0  d0 70 84 e2                                      add r7, r4, #0xd0
0086dce4  06 00 a0 e1                                      mov r0, r6
0086dce8  ef 95 00 eb                                      bl #0x8934ac
0086dcec  07 00 a0 e1                                      mov r0, r7
0086dcf0  ed 95 00 eb                                      bl #0x8934ac
0086dcf4  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0086dcf8  00 00 53 e3                                      cmp r3, #0
0086dcfc  78 50 84 d2                                      addle r5, r4, #0x78
0086dd00  07 00 00 da                                      ble #0x86dd24
0086dd04  78 50 84 e2                                      add r5, r4, #0x78
0086dd08  98 80 84 e2                                      add r8, r4, #0x98
0086dd0c  05 00 a0 e1                                      mov r0, r5
0086dd10  08 10 a0 e1                                      mov r1, r8
0086dd14  2b db ff eb                                      bl #0x8649c8
0086dd18  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0086dd1c  00 00 53 e3                                      cmp r3, #0
0086dd20  c7 00 00 1a                                      bne #0x86e044
0086dd24  07 00 a0 e1                                      mov r0, r7
0086dd28  d4 95 00 eb                                      bl #0x893480
0086dd2c  06 00 a0 e1                                      mov r0, r6
0086dd30  d2 95 00 eb                                      bl #0x893480
0086dd34  06 00 a0 e1                                      mov r0, r6
0086dd38  02 96 00 eb                                      bl #0x893548
0086dd3c  14 00 8d e2                                      add r0, sp, #0x14
0086dd40  05 10 a0 e1                                      mov r1, r5
0086dd44  32 d5 ff eb                                      bl #0x863214
0086dd48  10 00 8d e2                                      add r0, sp, #0x10
0086dd4c  05 10 a0 e1                                      mov r1, r5
0086dd50  32 d5 ff eb                                      bl #0x863220
0086dd54  14 30 9d e5                                      ldr r3, [sp, #0x14]
0086dd58  10 20 9d e5                                      ldr r2, [sp, #0x10]
0086dd5c  03 00 52 e1                                      cmp r2, r3
0086dd60  18 00 00 0a                                      beq #0x86ddc8
0086dd64  18 70 93 e5                                      ldr r7, [r3, #0x18]
0086dd68  07 00 a0 e1                                      mov r0, r7
0086dd6c  7a de ff eb                                      bl #0x86575c
0086dd70  00 01 84 e0                                      add r0, r4, r0, lsl #2
0086dd74  74 13 90 e5                                      ldr r1, [r0, #0x374]
0086dd78  07 00 a0 e1                                      mov r0, r7
0086dd7c  e9 d5 ff eb                                      bl #0x863528
0086dd80  14 30 9d e5                                      ldr r3, [sp, #0x14]
0086dd84  0b 10 a0 e1                                      mov r1, fp
0086dd88  18 00 93 e5                                      ldr r0, [r3, #0x18]
0086dd8c  09 fe ff eb                                      bl #0x86d5b8
0086dd90  14 30 9d e5                                      ldr r3, [sp, #0x14]
0086dd94  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086dd98  00 00 52 e3                                      cmp r2, #0
0086dd9c  01 00 00 1a                                      bne #0x86dda8
0086dda0  3f 00 00 ea                                      b #0x86dea4
0086dda4  03 20 a0 e1                                      mov r2, r3
0086dda8  08 30 92 e5                                      ldr r3, [r2, #8]
0086ddac  00 00 53 e3                                      cmp r3, #0
0086ddb0  fb ff ff 1a                                      bne #0x86dda4
0086ddb4  02 30 a0 e1                                      mov r3, r2
0086ddb8  14 30 8d e5                                      str r3, [sp, #0x14]
0086ddbc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0086ddc0  03 00 52 e1                                      cmp r2, r3
0086ddc4  e6 ff ff 1a                                      bne #0x86dd64
0086ddc8  0c 00 8d e2                                      add r0, sp, #0xc
0086ddcc  05 10 a0 e1                                      mov r1, r5
0086ddd0  0f d5 ff eb                                      bl #0x863214
0086ddd4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086ddd8  08 00 8d e2                                      add r0, sp, #8
0086dddc  05 10 a0 e1                                      mov r1, r5
0086dde0  14 30 8d e5                                      str r3, [sp, #0x14]
0086dde4  0d d5 ff eb                                      bl #0x863220
0086dde8  08 20 9d e5                                      ldr r2, [sp, #8]
0086ddec  14 30 9d e5                                      ldr r3, [sp, #0x14]
0086ddf0  10 20 8d e5                                      str r2, [sp, #0x10]
0086ddf4  10 20 9d e5                                      ldr r2, [sp, #0x10]
0086ddf8  02 00 53 e1                                      cmp r3, r2
0086ddfc  1b 00 00 0a                                      beq #0x86de70
0086de00  18 00 93 e5                                      ldr r0, [r3, #0x18]
0086de04  5e de ff eb                                      bl #0x865784
0086de08  00 00 50 e3                                      cmp r0, #0
0086de0c  09 00 00 0a                                      beq #0x86de38
0086de10  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
0086de14  bc a0 94 e5                                      ldr sl, [r4, #0xbc]
0086de18  03 00 5a e1                                      cmp sl, r3
0086de1c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0086de20  18 70 93 e5                                      ldr r7, [r3, #0x18]
0086de24  6a 00 00 0a                                      beq #0x86dfd4
0086de28  00 70 8a e5                                      str r7, [sl]
0086de2c  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
0086de30  04 30 83 e2                                      add r3, r3, #4
0086de34  bc 30 84 e5                                      str r3, [r4, #0xbc]
0086de38  14 30 9d e5                                      ldr r3, [sp, #0x14]
0086de3c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086de40  00 00 52 e3                                      cmp r2, #0
0086de44  01 00 00 1a                                      bne #0x86de50
0086de48  23 00 00 ea                                      b #0x86dedc
0086de4c  03 20 a0 e1                                      mov r2, r3
0086de50  08 30 92 e5                                      ldr r3, [r2, #8]
0086de54  00 00 53 e3                                      cmp r3, #0
0086de58  fb ff ff 1a                                      bne #0x86de4c
0086de5c  02 30 a0 e1                                      mov r3, r2
0086de60  14 30 8d e5                                      str r3, [sp, #0x14]
0086de64  10 20 9d e5                                      ldr r2, [sp, #0x10]
0086de68  02 00 53 e1                                      cmp r3, r2
0086de6c  e3 ff ff 1a                                      bne #0x86de00
0086de70  dc 00 94 e5                                      ldr r0, [r4, #0xdc]
0086de74  00 00 50 e3                                      cmp r0, #0
0086de78  00 00 00 0a                                      beq #0x86de80
0086de7c  51 f1 ff eb                                      bl #0x86a3c8
0086de80  06 00 a0 e1                                      mov r0, r6
0086de84  a4 95 00 eb                                      bl #0x89351c
0086de88  bc 20 94 e5                                      ldr r2, [r4, #0xbc]
0086de8c  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
0086de90  02 30 63 e0                                      rsb r3, r3, r2
0086de94  23 31 b0 e1                                      lsrs r3, r3, #2
0086de98  30 00 00 1a                                      bne #0x86df60
0086de9c  1c d0 8d e2                                      add sp, sp, #0x1c
0086dea0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086dea4  04 10 93 e5                                      ldr r1, [r3, #4]
0086dea8  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086deac  00 00 53 e1                                      cmp r3, r0
0086deb0  05 00 00 1a                                      bne #0x86decc
0086deb4  01 30 a0 e1                                      mov r3, r1
0086deb8  04 10 91 e5                                      ldr r1, [r1, #4]
0086debc  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086dec0  02 00 53 e1                                      cmp r3, r2
0086dec4  fa ff ff 0a                                      beq #0x86deb4
0086dec8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086decc  02 00 51 e1                                      cmp r1, r2
0086ded0  01 30 a0 11                                      movne r3, r1
0086ded4  14 30 8d e5                                      str r3, [sp, #0x14]
0086ded8  b7 ff ff ea                                      b #0x86ddbc
0086dedc  04 10 93 e5                                      ldr r1, [r3, #4]
0086dee0  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086dee4  00 00 53 e1                                      cmp r3, r0
0086dee8  05 00 00 1a                                      bne #0x86df04
0086deec  01 30 a0 e1                                      mov r3, r1
0086def0  04 10 91 e5                                      ldr r1, [r1, #4]
0086def4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086def8  03 00 52 e1                                      cmp r2, r3
0086defc  fa ff ff 0a                                      beq #0x86deec
0086df00  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086df04  02 00 51 e1                                      cmp r1, r2
0086df08  01 30 a0 11                                      movne r3, r1
0086df0c  14 30 8d e5                                      str r3, [sp, #0x14]
0086df10  d3 ff ff ea                                      b #0x86de64
0086df14  06 00 a0 e1                                      mov r0, r6
0086df18  00 10 a0 e3                                      mov r1, #0
0086df1c  f5 80 ea eb                                      bl #0x30e2f8
0086df20  00 00 50 e3                                      cmp r0, #0
0086df24  e0 90 94 05                                      ldreq sb, [r4, #0xe0]
0086df28  35 ff ff 0a                                      beq #0x86dc04
0086df2c  e0 70 94 e5                                      ldr r7, [r4, #0xe0]
0086df30  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
0086df34  07 10 a0 e1                                      mov r1, r7
0086df38  1b 81 ea eb                                      bl #0x30e3ac
0086df3c  05 10 a0 e1                                      mov r1, r5
0086df40  89 83 ea eb                                      bl #0x30ed6c
0086df44  06 10 a0 e1                                      mov r1, r6
0086df48  51 83 ea eb                                      bl #0x30ec94
0086df4c  00 10 a0 e1                                      mov r1, r0
0086df50  07 00 a0 e1                                      mov r0, r7
0086df54  12 83 ea eb                                      bl #0x30eba4
0086df58  00 90 a0 e1                                      mov sb, r0
0086df5c  28 ff ff ea                                      b #0x86dc04
0086df60  06 00 a0 e1                                      mov r0, r6
0086df64  50 95 00 eb                                      bl #0x8934ac
0086df68  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
0086df6c  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
0086df70  03 20 62 e0                                      rsb r2, r2, r3
0086df74  22 21 b0 e1                                      lsrs r2, r2, #2
0086df78  0f 00 00 0a                                      beq #0x86dfbc
0086df7c  04 30 13 e5                                      ldr r3, [r3, #-4]
0086df80  00 10 94 e5                                      ldr r1, [r4]
0086df84  05 00 a0 e1                                      mov r0, r5
0086df88  d8 20 c3 e1                                      ldrd r2, r3, [r3, #8]
0086df8c  20 70 91 e5                                      ldr r7, [r1, #0x20]
0086df90  5b f1 ff eb                                      bl #0x86a504
0086df94  00 10 a0 e1                                      mov r1, r0
0086df98  04 00 a0 e1                                      mov r0, r4
0086df9c  37 ff 2f e1                                      blx r7
0086dfa0  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
0086dfa4  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
0086dfa8  04 30 43 e2                                      sub r3, r3, #4
0086dfac  03 20 62 e0                                      rsb r2, r2, r3
0086dfb0  22 21 b0 e1                                      lsrs r2, r2, #2
0086dfb4  bc 30 84 e5                                      str r3, [r4, #0xbc]
0086dfb8  ef ff ff 1a                                      bne #0x86df7c
0086dfbc  06 00 a0 e1                                      mov r0, r6
0086dfc0  2e 95 00 eb                                      bl #0x893480
0086dfc4  b4 ff ff ea                                      b #0x86de9c
0086dfc8  04 00 9d e5                                      ldr r0, [sp, #4]
0086dfcc  29 95 00 eb                                      bl #0x893478
0086dfd0  b1 ff ff ea                                      b #0x86de9c
0086dfd4  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
0086dfd8  0a 30 63 e0                                      rsb r3, r3, sl
0086dfdc  43 31 a0 e1                                      asr r3, r3, #2
0086dfe0  01 00 53 e3                                      cmp r3, #1
0086dfe4  03 90 83 20                                      addhs sb, r3, r3
0086dfe8  01 90 83 32                                      addlo sb, r3, #1
0086dfec  07 01 79 e3                                      cmn sb, #0xc0000001
0086dff0  1c 00 00 9a                                      bls #0x86e068
0086dff4  03 90 e0 e3                                      mvn sb, #3
0086dff8  00 10 a0 e3                                      mov r1, #0
0086dffc  09 00 a0 e1                                      mov r0, sb
0086e000  90 89 ea eb                                      bl #0x310648
0086e004  b8 10 94 e5                                      ldr r1, [r4, #0xb8]
0086e008  00 80 a0 e1                                      mov r8, r0
0086e00c  01 a0 5a e0                                      subs sl, sl, r1
0086e010  00 a0 a0 01                                      moveq sl, r0
0086e014  02 00 00 0a                                      beq #0x86e024
0086e018  0a 20 a0 e1                                      mov r2, sl
0086e01c  c5 7f ea eb                                      bl #0x30df38
0086e020  0a a0 80 e0                                      add sl, r0, sl
0086e024  04 70 8a e4                                      str r7, [sl], #4
0086e028  b8 00 94 e5                                      ldr r0, [r4, #0xb8]
0086e02c  09 90 88 e0                                      add sb, r8, sb
0086e030  03 89 ea eb                                      bl #0x310444
0086e034  bc a0 84 e5                                      str sl, [r4, #0xbc]
0086e038  c0 90 84 e5                                      str sb, [r4, #0xc0]
0086e03c  b8 80 84 e5                                      str r8, [r4, #0xb8]
0086e040  7c ff ff ea                                      b #0x86de38
0086e044  08 00 a0 e1                                      mov r0, r8
0086e048  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
0086e04c  61 d6 ff eb                                      bl #0x8639d8
0086e050  00 30 a0 e3                                      mov r3, #0
0086e054  a4 80 84 e5                                      str r8, [r4, #0xa4]
0086e058  a8 30 84 e5                                      str r3, [r4, #0xa8]
0086e05c  a0 80 84 e5                                      str r8, [r4, #0xa0]
0086e060  9c 30 84 e5                                      str r3, [r4, #0x9c]
0086e064  2e ff ff ea                                      b #0x86dd24
0086e068  09 00 53 e1                                      cmp r3, sb
0086e06c  09 91 a0 91                                      lslls sb, sb, #2
0086e070  e0 ff ff 9a                                      bls #0x86dff8
0086e074  de ff ff ea                                      b #0x86dff4

; FUNCTION 0x0086e160, declared_size=420, range_size=420, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal11KillEmitterEPNS_10EmitterObjE
; demangled: vox::VoxEngineInternal::KillEmitter(vox::EmitterObj*)
; decoder-mode: arm
0086e160  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086e164  00 40 51 e2                                      subs r4, r1, #0
0086e168  00 50 a0 e1                                      mov r5, r0
0086e16c  5d 00 00 0a                                      beq #0x86e2e8
0086e170  14 30 94 e5                                      ldr r3, [r4, #0x14]
0086e174  55 3f 83 e2                                      add r3, r3, #0x154
0086e178  03 21 90 e7                                      ldr r2, [r0, r3, lsl #2]
0086e17c  01 20 82 e2                                      add r2, r2, #1
0086e180  03 21 80 e7                                      str r2, [r0, r3, lsl #2]
0086e184  34 30 d4 e5                                      ldrb r3, [r4, #0x34]
0086e188  00 00 53 e3                                      cmp r3, #0
0086e18c  3e 00 00 1a                                      bne #0x86e28c
0086e190  10 11 94 e5                                      ldr r1, [r4, #0x110]
0086e194  00 00 51 e3                                      cmp r1, #0
0086e198  06 00 00 0a                                      beq #0x86e1b8
0086e19c  4c 35 95 e5                                      ldr r3, [r5, #0x54c]
0086e1a0  00 00 53 e3                                      cmp r3, #0
0086e1a4  03 00 00 0a                                      beq #0x86e1b8
0086e1a8  03 00 a0 e1                                      mov r0, r3
0086e1ac  00 30 93 e5                                      ldr r3, [r3]
0086e1b0  0f e0 a0 e1                                      mov lr, pc
0086e1b4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0086e1b8  04 00 a0 e1                                      mov r0, r4
0086e1bc  54 70 85 e2                                      add r7, r5, #0x54
0086e1c0  e3 d5 ff eb                                      bl #0x863954
0086e1c4  07 00 a0 e1                                      mov r0, r7
0086e1c8  de 94 00 eb                                      bl #0x893548
0086e1cc  18 61 94 e5                                      ldr r6, [r4, #0x118]
0086e1d0  00 00 56 e3                                      cmp r6, #0
0086e1d4  23 00 00 0a                                      beq #0x86e268
0086e1d8  14 81 94 e5                                      ldr r8, [r4, #0x114]
0086e1dc  00 00 58 e3                                      cmp r8, #0
0086e1e0  15 00 00 0a                                      beq #0x86e23c
0086e1e4  00 30 98 e5                                      ldr r3, [r8]
0086e1e8  08 00 a0 e1                                      mov r0, r8
0086e1ec  0f e0 a0 e1                                      mov lr, pc
0086e1f0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0086e1f4  00 a0 50 e2                                      subs sl, r0, #0
0086e1f8  07 00 00 0a                                      beq #0x86e21c
0086e1fc  38 30 96 e5                                      ldr r3, [r6, #0x38]
0086e200  00 00 53 e3                                      cmp r3, #0
0086e204  38 00 00 0a                                      beq #0x86e2ec
0086e208  03 00 a0 e1                                      mov r0, r3
0086e20c  0a 10 a0 e1                                      mov r1, sl
0086e210  00 30 93 e5                                      ldr r3, [r3]
0086e214  0f e0 a0 e1                                      mov lr, pc
0086e218  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086e21c  3c 30 96 e5                                      ldr r3, [r6, #0x3c]
0086e220  00 00 53 e3                                      cmp r3, #0
0086e224  28 00 00 0a                                      beq #0x86e2cc
0086e228  03 00 a0 e1                                      mov r0, r3
0086e22c  08 10 a0 e1                                      mov r1, r8
0086e230  00 30 93 e5                                      ldr r3, [r3]
0086e234  0f e0 a0 e1                                      mov lr, pc
0086e238  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086e23c  06 00 a0 e1                                      mov r0, r6
0086e240  d8 20 c4 e1                                      ldrd r2, r3, [r4, #8]
0086e244  74 80 85 e2                                      add r8, r5, #0x74
0086e248  38 de ff eb                                      bl #0x865b30
0086e24c  08 00 a0 e1                                      mov r0, r8
0086e250  89 94 00 eb                                      bl #0x89347c
0086e254  4c 10 d6 e5                                      ldrb r1, [r6, #0x4c]
0086e258  00 00 51 e3                                      cmp r1, #0
0086e25c  0f 00 00 0a                                      beq #0x86e2a0
0086e260  08 00 a0 e1                                      mov r0, r8
0086e264  83 94 00 eb                                      bl #0x893478
0086e268  07 00 a0 e1                                      mov r0, r7
0086e26c  aa 94 00 eb                                      bl #0x89351c
0086e270  00 30 94 e5                                      ldr r3, [r4]
0086e274  04 00 a0 e1                                      mov r0, r4
0086e278  0f e0 a0 e1                                      mov lr, pc
0086e27c  00 f0 93 e5                                      ldr pc, [r3]
0086e280  04 00 a0 e1                                      mov r0, r4
0086e284  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0086e288  6d 88 ea ea                                      b #0x310444
0086e28c  30 10 94 e5                                      ldr r1, [r4, #0x30]
0086e290  04 20 a0 e1                                      mov r2, r4
0086e294  dc 00 90 e5                                      ldr r0, [r0, #0xdc]
0086e298  76 ff ff eb                                      bl #0x86e078
0086e29c  bb ff ff ea                                      b #0x86e190
0086e2a0  01 30 a0 e3                                      mov r3, #1
0086e2a4  4c 30 c6 e5                                      strb r3, [r6, #0x4c]
0086e2a8  0c 00 a0 e3                                      mov r0, #0xc
0086e2ac  e5 88 ea eb                                      bl #0x310648
0086e2b0  08 60 80 e5                                      str r6, [r0, #8]
0086e2b4  70 30 95 e5                                      ldr r3, [r5, #0x70]
0086e2b8  6c 20 85 e2                                      add r2, r5, #0x6c
0086e2bc  0c 00 80 e8                                      stm r0, {r2, r3}
0086e2c0  00 00 83 e5                                      str r0, [r3]
0086e2c4  70 00 85 e5                                      str r0, [r5, #0x70]
0086e2c8  e4 ff ff ea                                      b #0x86e260
0086e2cc  00 30 98 e5                                      ldr r3, [r8]
0086e2d0  08 00 a0 e1                                      mov r0, r8
0086e2d4  0f e0 a0 e1                                      mov lr, pc
0086e2d8  00 f0 93 e5                                      ldr pc, [r3]
0086e2dc  08 00 a0 e1                                      mov r0, r8
0086e2e0  57 88 ea eb                                      bl #0x310444
0086e2e4  d4 ff ff ea                                      b #0x86e23c
0086e2e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0086e2ec  00 30 9a e5                                      ldr r3, [sl]
0086e2f0  0f e0 a0 e1                                      mov lr, pc
0086e2f4  00 f0 93 e5                                      ldr pc, [r3]
0086e2f8  0a 00 a0 e1                                      mov r0, sl
0086e2fc  50 88 ea eb                                      bl #0x310444
0086e300  c5 ff ff ea                                      b #0x86e21c

; FUNCTION 0x0086e618, declared_size=16, range_size=16, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal5PauseEPNS_10EmitterObjEf
; demangled: vox::VoxEngineInternal::Pause(vox::EmitterObj*, float)
; decoder-mode: arm
0086e618  00 00 51 e2                                      subs r0, r1, #0
0086e61c  1e ff 2f 01                                      bxeq lr
0086e620  02 10 a0 e1                                      mov r1, r2
0086e624  7f ff ff ea                                      b #0x86e428

; FUNCTION 0x0086e628, declared_size=508, range_size=508, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal16PauseAllEmittersEjf
; demangled: vox::VoxEngineInternal::PauseAllEmitters(unsigned int, float)
; decoder-mode: arm
0086e628  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0086e62c  00 50 a0 e1                                      mov r5, r0
0086e630  c4 70 80 e2                                      add r7, r0, #0xc4
0086e634  14 d0 4d e2                                      sub sp, sp, #0x14
0086e638  07 00 a0 e1                                      mov r0, r7
0086e63c  d0 80 85 e2                                      add r8, r5, #0xd0
0086e640  02 60 a0 e1                                      mov r6, r2
0086e644  01 40 a0 e1                                      mov r4, r1
0086e648  78 a0 85 e2                                      add sl, r5, #0x78
0086e64c  bd 93 00 eb                                      bl #0x893548
0086e650  08 00 a0 e1                                      mov r0, r8
0086e654  bb 93 00 eb                                      bl #0x893548
0086e658  0c 00 8d e2                                      add r0, sp, #0xc
0086e65c  0a 10 a0 e1                                      mov r1, sl
0086e660  eb d2 ff eb                                      bl #0x863214
0086e664  0a 10 a0 e1                                      mov r1, sl
0086e668  08 00 8d e2                                      add r0, sp, #8
0086e66c  eb d2 ff eb                                      bl #0x863220
0086e670  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086e674  08 20 9d e5                                      ldr r2, [sp, #8]
0086e678  03 00 52 e1                                      cmp r2, r3
0086e67c  13 00 00 0a                                      beq #0x86e6d0
0086e680  18 a0 93 e5                                      ldr sl, [r3, #0x18]
0086e684  04 10 a0 e1                                      mov r1, r4
0086e688  0a 00 a0 e1                                      mov r0, sl
0086e68c  19 dc ff eb                                      bl #0x8656f8
0086e690  00 00 50 e3                                      cmp r0, #0
0086e694  36 00 00 1a                                      bne #0x86e774
0086e698  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086e69c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086e6a0  00 00 52 e3                                      cmp r2, #0
0086e6a4  01 00 00 1a                                      bne #0x86e6b0
0086e6a8  39 00 00 ea                                      b #0x86e794
0086e6ac  03 20 a0 e1                                      mov r2, r3
0086e6b0  08 30 92 e5                                      ldr r3, [r2, #8]
0086e6b4  00 00 53 e3                                      cmp r3, #0
0086e6b8  fb ff ff 1a                                      bne #0x86e6ac
0086e6bc  02 30 a0 e1                                      mov r3, r2
0086e6c0  0c 30 8d e5                                      str r3, [sp, #0xc]
0086e6c4  08 20 9d e5                                      ldr r2, [sp, #8]
0086e6c8  03 00 52 e1                                      cmp r2, r3
0086e6cc  eb ff ff 1a                                      bne #0x86e680
0086e6d0  98 a0 85 e2                                      add sl, r5, #0x98
0086e6d4  04 00 8d e2                                      add r0, sp, #4
0086e6d8  0a 10 a0 e1                                      mov r1, sl
0086e6dc  cc d2 ff eb                                      bl #0x863214
0086e6e0  04 30 9d e5                                      ldr r3, [sp, #4]
0086e6e4  0a 10 a0 e1                                      mov r1, sl
0086e6e8  0d 00 a0 e1                                      mov r0, sp
0086e6ec  0c 30 8d e5                                      str r3, [sp, #0xc]
0086e6f0  ca d2 ff eb                                      bl #0x863220
0086e6f4  00 20 9d e5                                      ldr r2, [sp]
0086e6f8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086e6fc  08 20 8d e5                                      str r2, [sp, #8]
0086e700  08 20 9d e5                                      ldr r2, [sp, #8]
0086e704  02 00 53 e1                                      cmp r3, r2
0086e708  13 00 00 0a                                      beq #0x86e75c
0086e70c  18 a0 93 e5                                      ldr sl, [r3, #0x18]
0086e710  04 10 a0 e1                                      mov r1, r4
0086e714  0a 00 a0 e1                                      mov r0, sl
0086e718  f6 db ff eb                                      bl #0x8656f8
0086e71c  00 00 50 e3                                      cmp r0, #0
0086e720  29 00 00 1a                                      bne #0x86e7cc
0086e724  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086e728  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086e72c  00 00 52 e3                                      cmp r2, #0
0086e730  01 00 00 1a                                      bne #0x86e73c
0086e734  2c 00 00 ea                                      b #0x86e7ec
0086e738  03 20 a0 e1                                      mov r2, r3
0086e73c  08 30 92 e5                                      ldr r3, [r2, #8]
0086e740  00 00 53 e3                                      cmp r3, #0
0086e744  fb ff ff 1a                                      bne #0x86e738
0086e748  02 30 a0 e1                                      mov r3, r2
0086e74c  0c 30 8d e5                                      str r3, [sp, #0xc]
0086e750  08 20 9d e5                                      ldr r2, [sp, #8]
0086e754  02 00 53 e1                                      cmp r3, r2
0086e758  eb ff ff 1a                                      bne #0x86e70c
0086e75c  08 00 a0 e1                                      mov r0, r8
0086e760  6d 93 00 eb                                      bl #0x89351c
0086e764  07 00 a0 e1                                      mov r0, r7
0086e768  6b 93 00 eb                                      bl #0x89351c
0086e76c  14 d0 8d e2                                      add sp, sp, #0x14
0086e770  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0086e774  06 20 a0 e1                                      mov r2, r6
0086e778  0a 10 a0 e1                                      mov r1, sl
0086e77c  05 00 a0 e1                                      mov r0, r5
0086e780  a4 ff ff eb                                      bl #0x86e618
0086e784  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086e788  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086e78c  00 00 52 e3                                      cmp r2, #0
0086e790  c6 ff ff 1a                                      bne #0x86e6b0
0086e794  04 10 93 e5                                      ldr r1, [r3, #4]
0086e798  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086e79c  00 00 53 e1                                      cmp r3, r0
0086e7a0  05 00 00 1a                                      bne #0x86e7bc
0086e7a4  01 30 a0 e1                                      mov r3, r1
0086e7a8  04 10 91 e5                                      ldr r1, [r1, #4]
0086e7ac  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086e7b0  03 00 52 e1                                      cmp r2, r3
0086e7b4  fa ff ff 0a                                      beq #0x86e7a4
0086e7b8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086e7bc  02 00 51 e1                                      cmp r1, r2
0086e7c0  01 30 a0 11                                      movne r3, r1
0086e7c4  0c 30 8d e5                                      str r3, [sp, #0xc]
0086e7c8  bd ff ff ea                                      b #0x86e6c4
0086e7cc  06 20 a0 e1                                      mov r2, r6
0086e7d0  0a 10 a0 e1                                      mov r1, sl
0086e7d4  05 00 a0 e1                                      mov r0, r5
0086e7d8  8e ff ff eb                                      bl #0x86e618
0086e7dc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086e7e0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086e7e4  00 00 52 e3                                      cmp r2, #0
0086e7e8  d3 ff ff 1a                                      bne #0x86e73c
0086e7ec  04 10 93 e5                                      ldr r1, [r3, #4]
0086e7f0  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086e7f4  00 00 53 e1                                      cmp r3, r0
0086e7f8  05 00 00 1a                                      bne #0x86e814
0086e7fc  01 30 a0 e1                                      mov r3, r1
0086e800  04 10 91 e5                                      ldr r1, [r1, #4]
0086e804  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086e808  03 00 52 e1                                      cmp r2, r3
0086e80c  fa ff ff 0a                                      beq #0x86e7fc
0086e810  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086e814  02 00 51 e1                                      cmp r1, r2
0086e818  01 30 a0 11                                      movne r3, r1
0086e81c  0c 30 8d e5                                      str r3, [sp, #0xc]
0086e820  ca ff ff ea                                      b #0x86e750

; FUNCTION 0x0086e824, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal5PauseERNS_13EmitterHandleEf
; demangled: vox::VoxEngineInternal::Pause(vox::EmitterHandle&, float)
; decoder-mode: arm
0086e824  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086e828  c4 50 80 e2                                      add r5, r0, #0xc4
0086e82c  00 40 a0 e1                                      mov r4, r0
0086e830  01 70 a0 e1                                      mov r7, r1
0086e834  05 00 a0 e1                                      mov r0, r5
0086e838  02 60 a0 e1                                      mov r6, r2
0086e83c  41 93 00 eb                                      bl #0x893548
0086e840  07 10 a0 e1                                      mov r1, r7
0086e844  04 00 a0 e1                                      mov r0, r4
0086e848  1f e3 ff eb                                      bl #0x8674cc
0086e84c  06 20 a0 e1                                      mov r2, r6
0086e850  00 10 a0 e1                                      mov r1, r0
0086e854  04 00 a0 e1                                      mov r0, r4
0086e858  6e ff ff eb                                      bl #0x86e618
0086e85c  05 00 a0 e1                                      mov r0, r5
0086e860  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0086e864  2c 93 00 ea                                      b #0x89351c

; FUNCTION 0x0086ed00, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal4StopEPNS_10EmitterObjEf
; demangled: vox::VoxEngineInternal::Stop(vox::EmitterObj*, float)
; decoder-mode: arm
0086ed00  70 40 2d e9                                      push {r4, r5, r6, lr}
0086ed04  00 40 51 e2                                      subs r4, r1, #0
0086ed08  02 50 a0 e1                                      mov r5, r2
0086ed0c  0d 00 00 0a                                      beq #0x86ed48
0086ed10  34 30 d4 e5                                      ldrb r3, [r4, #0x34]
0086ed14  00 00 53 e3                                      cmp r3, #0
0086ed18  05 00 00 1a                                      bne #0x86ed34
0086ed1c  00 30 a0 e3                                      mov r3, #0
0086ed20  04 00 a0 e1                                      mov r0, r4
0086ed24  05 10 a0 e1                                      mov r1, r5
0086ed28  34 30 c4 e5                                      strb r3, [r4, #0x34]
0086ed2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0086ed30  cc fe ff ea                                      b #0x86e868
0086ed34  30 10 94 e5                                      ldr r1, [r4, #0x30]
0086ed38  04 20 a0 e1                                      mov r2, r4
0086ed3c  dc 00 90 e5                                      ldr r0, [r0, #0xdc]
0086ed40  cc fc ff eb                                      bl #0x86e078
0086ed44  f4 ff ff ea                                      b #0x86ed1c
0086ed48  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0086ed4c, declared_size=508, range_size=508, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal15StopAllEmittersEjf
; demangled: vox::VoxEngineInternal::StopAllEmitters(unsigned int, float)
; decoder-mode: arm
0086ed4c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0086ed50  00 50 a0 e1                                      mov r5, r0
0086ed54  c4 70 80 e2                                      add r7, r0, #0xc4
0086ed58  14 d0 4d e2                                      sub sp, sp, #0x14
0086ed5c  07 00 a0 e1                                      mov r0, r7
0086ed60  d0 80 85 e2                                      add r8, r5, #0xd0
0086ed64  02 60 a0 e1                                      mov r6, r2
0086ed68  01 40 a0 e1                                      mov r4, r1
0086ed6c  78 a0 85 e2                                      add sl, r5, #0x78
0086ed70  f4 91 00 eb                                      bl #0x893548
0086ed74  08 00 a0 e1                                      mov r0, r8
0086ed78  f2 91 00 eb                                      bl #0x893548
0086ed7c  0c 00 8d e2                                      add r0, sp, #0xc
0086ed80  0a 10 a0 e1                                      mov r1, sl
0086ed84  22 d1 ff eb                                      bl #0x863214
0086ed88  0a 10 a0 e1                                      mov r1, sl
0086ed8c  08 00 8d e2                                      add r0, sp, #8
0086ed90  22 d1 ff eb                                      bl #0x863220
0086ed94  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086ed98  08 20 9d e5                                      ldr r2, [sp, #8]
0086ed9c  03 00 52 e1                                      cmp r2, r3
0086eda0  13 00 00 0a                                      beq #0x86edf4
0086eda4  18 a0 93 e5                                      ldr sl, [r3, #0x18]
0086eda8  04 10 a0 e1                                      mov r1, r4
0086edac  0a 00 a0 e1                                      mov r0, sl
0086edb0  50 da ff eb                                      bl #0x8656f8
0086edb4  00 00 50 e3                                      cmp r0, #0
0086edb8  36 00 00 1a                                      bne #0x86ee98
0086edbc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086edc0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086edc4  00 00 52 e3                                      cmp r2, #0
0086edc8  01 00 00 1a                                      bne #0x86edd4
0086edcc  39 00 00 ea                                      b #0x86eeb8
0086edd0  03 20 a0 e1                                      mov r2, r3
0086edd4  08 30 92 e5                                      ldr r3, [r2, #8]
0086edd8  00 00 53 e3                                      cmp r3, #0
0086eddc  fb ff ff 1a                                      bne #0x86edd0
0086ede0  02 30 a0 e1                                      mov r3, r2
0086ede4  0c 30 8d e5                                      str r3, [sp, #0xc]
0086ede8  08 20 9d e5                                      ldr r2, [sp, #8]
0086edec  03 00 52 e1                                      cmp r2, r3
0086edf0  eb ff ff 1a                                      bne #0x86eda4
0086edf4  98 a0 85 e2                                      add sl, r5, #0x98
0086edf8  04 00 8d e2                                      add r0, sp, #4
0086edfc  0a 10 a0 e1                                      mov r1, sl
0086ee00  03 d1 ff eb                                      bl #0x863214
0086ee04  04 30 9d e5                                      ldr r3, [sp, #4]
0086ee08  0a 10 a0 e1                                      mov r1, sl
0086ee0c  0d 00 a0 e1                                      mov r0, sp
0086ee10  0c 30 8d e5                                      str r3, [sp, #0xc]
0086ee14  01 d1 ff eb                                      bl #0x863220
0086ee18  00 20 9d e5                                      ldr r2, [sp]
0086ee1c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086ee20  08 20 8d e5                                      str r2, [sp, #8]
0086ee24  08 20 9d e5                                      ldr r2, [sp, #8]
0086ee28  02 00 53 e1                                      cmp r3, r2
0086ee2c  13 00 00 0a                                      beq #0x86ee80
0086ee30  18 a0 93 e5                                      ldr sl, [r3, #0x18]
0086ee34  04 10 a0 e1                                      mov r1, r4
0086ee38  0a 00 a0 e1                                      mov r0, sl
0086ee3c  2d da ff eb                                      bl #0x8656f8
0086ee40  00 00 50 e3                                      cmp r0, #0
0086ee44  29 00 00 1a                                      bne #0x86eef0
0086ee48  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086ee4c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086ee50  00 00 52 e3                                      cmp r2, #0
0086ee54  01 00 00 1a                                      bne #0x86ee60
0086ee58  2c 00 00 ea                                      b #0x86ef10
0086ee5c  03 20 a0 e1                                      mov r2, r3
0086ee60  08 30 92 e5                                      ldr r3, [r2, #8]
0086ee64  00 00 53 e3                                      cmp r3, #0
0086ee68  fb ff ff 1a                                      bne #0x86ee5c
0086ee6c  02 30 a0 e1                                      mov r3, r2
0086ee70  0c 30 8d e5                                      str r3, [sp, #0xc]
0086ee74  08 20 9d e5                                      ldr r2, [sp, #8]
0086ee78  02 00 53 e1                                      cmp r3, r2
0086ee7c  eb ff ff 1a                                      bne #0x86ee30
0086ee80  08 00 a0 e1                                      mov r0, r8
0086ee84  a4 91 00 eb                                      bl #0x89351c
0086ee88  07 00 a0 e1                                      mov r0, r7
0086ee8c  a2 91 00 eb                                      bl #0x89351c
0086ee90  14 d0 8d e2                                      add sp, sp, #0x14
0086ee94  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0086ee98  06 20 a0 e1                                      mov r2, r6
0086ee9c  0a 10 a0 e1                                      mov r1, sl
0086eea0  05 00 a0 e1                                      mov r0, r5
0086eea4  95 ff ff eb                                      bl #0x86ed00
0086eea8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086eeac  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086eeb0  00 00 52 e3                                      cmp r2, #0
0086eeb4  c6 ff ff 1a                                      bne #0x86edd4
0086eeb8  04 10 93 e5                                      ldr r1, [r3, #4]
0086eebc  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086eec0  00 00 53 e1                                      cmp r3, r0
0086eec4  05 00 00 1a                                      bne #0x86eee0
0086eec8  01 30 a0 e1                                      mov r3, r1
0086eecc  04 10 91 e5                                      ldr r1, [r1, #4]
0086eed0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086eed4  03 00 52 e1                                      cmp r2, r3
0086eed8  fa ff ff 0a                                      beq #0x86eec8
0086eedc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086eee0  02 00 51 e1                                      cmp r1, r2
0086eee4  01 30 a0 11                                      movne r3, r1
0086eee8  0c 30 8d e5                                      str r3, [sp, #0xc]
0086eeec  bd ff ff ea                                      b #0x86ede8
0086eef0  06 20 a0 e1                                      mov r2, r6
0086eef4  0a 10 a0 e1                                      mov r1, sl
0086eef8  05 00 a0 e1                                      mov r0, r5
0086eefc  7f ff ff eb                                      bl #0x86ed00
0086ef00  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086ef04  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086ef08  00 00 52 e3                                      cmp r2, #0
0086ef0c  d3 ff ff 1a                                      bne #0x86ee60
0086ef10  04 10 93 e5                                      ldr r1, [r3, #4]
0086ef14  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086ef18  00 00 53 e1                                      cmp r3, r0
0086ef1c  05 00 00 1a                                      bne #0x86ef38
0086ef20  01 30 a0 e1                                      mov r3, r1
0086ef24  04 10 91 e5                                      ldr r1, [r1, #4]
0086ef28  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086ef2c  03 00 52 e1                                      cmp r2, r3
0086ef30  fa ff ff 0a                                      beq #0x86ef20
0086ef34  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086ef38  02 00 51 e1                                      cmp r1, r2
0086ef3c  01 30 a0 11                                      movne r3, r1
0086ef40  0c 30 8d e5                                      str r3, [sp, #0xc]
0086ef44  ca ff ff ea                                      b #0x86ee74

; FUNCTION 0x0086ef48, declared_size=68, range_size=68, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal4StopERNS_13EmitterHandleEf
; demangled: vox::VoxEngineInternal::Stop(vox::EmitterHandle&, float)
; decoder-mode: arm
0086ef48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086ef4c  c4 50 80 e2                                      add r5, r0, #0xc4
0086ef50  00 40 a0 e1                                      mov r4, r0
0086ef54  01 70 a0 e1                                      mov r7, r1
0086ef58  05 00 a0 e1                                      mov r0, r5
0086ef5c  02 60 a0 e1                                      mov r6, r2
0086ef60  78 91 00 eb                                      bl #0x893548
0086ef64  07 10 a0 e1                                      mov r1, r7
0086ef68  04 00 a0 e1                                      mov r0, r4
0086ef6c  56 e1 ff eb                                      bl #0x8674cc
0086ef70  06 20 a0 e1                                      mov r2, r6
0086ef74  00 10 a0 e1                                      mov r1, r0
0086ef78  04 00 a0 e1                                      mov r0, r4
0086ef7c  5f ff ff eb                                      bl #0x86ed00
0086ef80  05 00 a0 e1                                      mov r0, r5
0086ef84  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0086ef88  63 91 00 ea                                      b #0x89351c

; FUNCTION 0x0086ef8c, declared_size=180, range_size=180, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal4PlayEPNS_10EmitterObjEbf
; demangled: vox::VoxEngineInternal::Play(vox::EmitterObj*, bool, float)
; decoder-mode: arm
0086ef8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086ef90  00 40 51 e2                                      subs r4, r1, #0
0086ef94  00 50 a0 e1                                      mov r5, r0
0086ef98  02 60 a0 e1                                      mov r6, r2
0086ef9c  03 70 a0 e1                                      mov r7, r3
0086efa0  19 00 00 0a                                      beq #0x86f00c
0086efa4  34 30 d4 e5                                      ldrb r3, [r4, #0x34]
0086efa8  00 00 53 e3                                      cmp r3, #0
0086efac  1c 00 00 1a                                      bne #0x86f024
0086efb0  dc 00 95 e5                                      ldr r0, [r5, #0xdc]
0086efb4  00 00 50 e3                                      cmp r0, #0
0086efb8  13 00 00 0a                                      beq #0x86f00c
0086efbc  30 10 94 e5                                      ldr r1, [r4, #0x30]
0086efc0  04 20 a0 e1                                      mov r2, r4
0086efc4  a2 fe ff eb                                      bl #0x86ea54
0086efc8  00 00 50 e3                                      cmp r0, #0
0086efcc  0f 00 00 0a                                      beq #0x86f010
0086efd0  04 00 a0 e1                                      mov r0, r4
0086efd4  70 d9 ff eb                                      bl #0x86559c
0086efd8  00 00 50 e3                                      cmp r0, #0
0086efdc  01 00 00 0a                                      beq #0x86efe8
0086efe0  04 00 a0 e1                                      mov r0, r4
0086efe4  7d d9 ff eb                                      bl #0x8655e0
0086efe8  07 10 a0 e1                                      mov r1, r7
0086efec  04 00 a0 e1                                      mov r0, r4
0086eff0  c3 fc ff eb                                      bl #0x86e304
0086eff4  04 00 a0 e1                                      mov r0, r4
0086eff8  06 10 a0 e1                                      mov r1, r6
0086effc  81 d9 ff eb                                      bl #0x865608
0086f000  01 30 a0 e3                                      mov r3, #1
0086f004  34 30 c4 e5                                      strb r3, [r4, #0x34]
0086f008  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0086f00c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0086f010  34 00 c4 e5                                      strb r0, [r4, #0x34]
0086f014  00 10 a0 e3                                      mov r1, #0
0086f018  04 00 a0 e1                                      mov r0, r4
0086f01c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0086f020  10 fe ff ea                                      b #0x86e868
0086f024  dc 00 90 e5                                      ldr r0, [r0, #0xdc]
0086f028  30 10 94 e5                                      ldr r1, [r4, #0x30]
0086f02c  04 20 a0 e1                                      mov r2, r4
0086f030  10 fc ff eb                                      bl #0x86e078
0086f034  00 30 a0 e3                                      mov r3, #0
0086f038  34 30 c4 e5                                      strb r3, [r4, #0x34]
0086f03c  db ff ff ea                                      b #0x86efb0

; FUNCTION 0x0086f040, declared_size=532, range_size=532, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal15PlayAllEmittersEjf
; demangled: vox::VoxEngineInternal::PlayAllEmitters(unsigned int, float)
; decoder-mode: arm
0086f040  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0086f044  00 50 a0 e1                                      mov r5, r0
0086f048  c4 80 80 e2                                      add r8, r0, #0xc4
0086f04c  14 d0 4d e2                                      sub sp, sp, #0x14
0086f050  08 00 a0 e1                                      mov r0, r8
0086f054  d0 70 85 e2                                      add r7, r5, #0xd0
0086f058  02 60 a0 e1                                      mov r6, r2
0086f05c  01 40 a0 e1                                      mov r4, r1
0086f060  78 a0 85 e2                                      add sl, r5, #0x78
0086f064  37 91 00 eb                                      bl #0x893548
0086f068  07 00 a0 e1                                      mov r0, r7
0086f06c  35 91 00 eb                                      bl #0x893548
0086f070  0c 00 8d e2                                      add r0, sp, #0xc
0086f074  0a 10 a0 e1                                      mov r1, sl
0086f078  65 d0 ff eb                                      bl #0x863214
0086f07c  0a 10 a0 e1                                      mov r1, sl
0086f080  08 00 8d e2                                      add r0, sp, #8
0086f084  65 d0 ff eb                                      bl #0x863220
0086f088  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086f08c  08 20 9d e5                                      ldr r2, [sp, #8]
0086f090  03 00 52 e1                                      cmp r2, r3
0086f094  13 00 00 0a                                      beq #0x86f0e8
0086f098  18 a0 93 e5                                      ldr sl, [r3, #0x18]
0086f09c  04 10 a0 e1                                      mov r1, r4
0086f0a0  0a 00 a0 e1                                      mov r0, sl
0086f0a4  93 d9 ff eb                                      bl #0x8656f8
0086f0a8  00 00 50 e3                                      cmp r0, #0
0086f0ac  36 00 00 1a                                      bne #0x86f18c
0086f0b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086f0b4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086f0b8  00 00 52 e3                                      cmp r2, #0
0086f0bc  01 00 00 1a                                      bne #0x86f0c8
0086f0c0  3c 00 00 ea                                      b #0x86f1b8
0086f0c4  03 20 a0 e1                                      mov r2, r3
0086f0c8  08 30 92 e5                                      ldr r3, [r2, #8]
0086f0cc  00 00 53 e3                                      cmp r3, #0
0086f0d0  fb ff ff 1a                                      bne #0x86f0c4
0086f0d4  02 30 a0 e1                                      mov r3, r2
0086f0d8  0c 30 8d e5                                      str r3, [sp, #0xc]
0086f0dc  08 20 9d e5                                      ldr r2, [sp, #8]
0086f0e0  03 00 52 e1                                      cmp r2, r3
0086f0e4  eb ff ff 1a                                      bne #0x86f098
0086f0e8  98 a0 85 e2                                      add sl, r5, #0x98
0086f0ec  04 00 8d e2                                      add r0, sp, #4
0086f0f0  0a 10 a0 e1                                      mov r1, sl
0086f0f4  46 d0 ff eb                                      bl #0x863214
0086f0f8  04 30 9d e5                                      ldr r3, [sp, #4]
0086f0fc  0a 10 a0 e1                                      mov r1, sl
0086f100  0d 00 a0 e1                                      mov r0, sp
0086f104  0c 30 8d e5                                      str r3, [sp, #0xc]
0086f108  44 d0 ff eb                                      bl #0x863220
0086f10c  00 20 9d e5                                      ldr r2, [sp]
0086f110  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086f114  08 20 8d e5                                      str r2, [sp, #8]
0086f118  08 20 9d e5                                      ldr r2, [sp, #8]
0086f11c  02 00 53 e1                                      cmp r3, r2
0086f120  13 00 00 0a                                      beq #0x86f174
0086f124  18 a0 93 e5                                      ldr sl, [r3, #0x18]
0086f128  04 10 a0 e1                                      mov r1, r4
0086f12c  0a 00 a0 e1                                      mov r0, sl
0086f130  70 d9 ff eb                                      bl #0x8656f8
0086f134  00 00 50 e3                                      cmp r0, #0
0086f138  2c 00 00 1a                                      bne #0x86f1f0
0086f13c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086f140  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086f144  00 00 52 e3                                      cmp r2, #0
0086f148  01 00 00 1a                                      bne #0x86f154
0086f14c  32 00 00 ea                                      b #0x86f21c
0086f150  03 20 a0 e1                                      mov r2, r3
0086f154  08 30 92 e5                                      ldr r3, [r2, #8]
0086f158  00 00 53 e3                                      cmp r3, #0
0086f15c  fb ff ff 1a                                      bne #0x86f150
0086f160  02 30 a0 e1                                      mov r3, r2
0086f164  0c 30 8d e5                                      str r3, [sp, #0xc]
0086f168  08 20 9d e5                                      ldr r2, [sp, #8]
0086f16c  02 00 53 e1                                      cmp r3, r2
0086f170  eb ff ff 1a                                      bne #0x86f124
0086f174  07 00 a0 e1                                      mov r0, r7
0086f178  e7 90 00 eb                                      bl #0x89351c
0086f17c  08 00 a0 e1                                      mov r0, r8
0086f180  e5 90 00 eb                                      bl #0x89351c
0086f184  14 d0 8d e2                                      add sp, sp, #0x14
0086f188  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0086f18c  0a 00 a0 e1                                      mov r0, sl
0086f190  26 d9 ff eb                                      bl #0x865630
0086f194  06 30 a0 e1                                      mov r3, r6
0086f198  00 20 a0 e1                                      mov r2, r0
0086f19c  0a 10 a0 e1                                      mov r1, sl
0086f1a0  05 00 a0 e1                                      mov r0, r5
0086f1a4  78 ff ff eb                                      bl #0x86ef8c
0086f1a8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086f1ac  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086f1b0  00 00 52 e3                                      cmp r2, #0
0086f1b4  c3 ff ff 1a                                      bne #0x86f0c8
0086f1b8  04 10 93 e5                                      ldr r1, [r3, #4]
0086f1bc  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086f1c0  00 00 53 e1                                      cmp r3, r0
0086f1c4  05 00 00 1a                                      bne #0x86f1e0
0086f1c8  01 30 a0 e1                                      mov r3, r1
0086f1cc  04 10 91 e5                                      ldr r1, [r1, #4]
0086f1d0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086f1d4  03 00 52 e1                                      cmp r2, r3
0086f1d8  fa ff ff 0a                                      beq #0x86f1c8
0086f1dc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086f1e0  02 00 51 e1                                      cmp r1, r2
0086f1e4  01 30 a0 11                                      movne r3, r1
0086f1e8  0c 30 8d e5                                      str r3, [sp, #0xc]
0086f1ec  ba ff ff ea                                      b #0x86f0dc
0086f1f0  0a 00 a0 e1                                      mov r0, sl
0086f1f4  0d d9 ff eb                                      bl #0x865630
0086f1f8  06 30 a0 e1                                      mov r3, r6
0086f1fc  00 20 a0 e1                                      mov r2, r0
0086f200  0a 10 a0 e1                                      mov r1, sl
0086f204  05 00 a0 e1                                      mov r0, r5
0086f208  5f ff ff eb                                      bl #0x86ef8c
0086f20c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086f210  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086f214  00 00 52 e3                                      cmp r2, #0
0086f218  cd ff ff 1a                                      bne #0x86f154
0086f21c  04 10 93 e5                                      ldr r1, [r3, #4]
0086f220  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0086f224  00 00 53 e1                                      cmp r3, r0
0086f228  05 00 00 1a                                      bne #0x86f244
0086f22c  01 30 a0 e1                                      mov r3, r1
0086f230  04 10 91 e5                                      ldr r1, [r1, #4]
0086f234  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0086f238  03 00 52 e1                                      cmp r2, r3
0086f23c  fa ff ff 0a                                      beq #0x86f22c
0086f240  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0086f244  02 00 51 e1                                      cmp r1, r2
0086f248  01 30 a0 11                                      movne r3, r1
0086f24c  0c 30 8d e5                                      str r3, [sp, #0xc]
0086f250  c4 ff ff ea                                      b #0x86f168

; FUNCTION 0x0086f254, declared_size=76, range_size=76, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal4PlayERNS_13EmitterHandleEbf
; demangled: vox::VoxEngineInternal::Play(vox::EmitterHandle&, bool, float)
; decoder-mode: arm
0086f254  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086f258  c4 50 80 e2                                      add r5, r0, #0xc4
0086f25c  00 40 a0 e1                                      mov r4, r0
0086f260  01 80 a0 e1                                      mov r8, r1
0086f264  05 00 a0 e1                                      mov r0, r5
0086f268  02 70 a0 e1                                      mov r7, r2
0086f26c  03 60 a0 e1                                      mov r6, r3
0086f270  b4 90 00 eb                                      bl #0x893548
0086f274  08 10 a0 e1                                      mov r1, r8
0086f278  04 00 a0 e1                                      mov r0, r4
0086f27c  92 e0 ff eb                                      bl #0x8674cc
0086f280  07 20 a0 e1                                      mov r2, r7
0086f284  00 10 a0 e1                                      mov r1, r0
0086f288  06 30 a0 e1                                      mov r3, r6
0086f28c  04 00 a0 e1                                      mov r0, r4
0086f290  3d ff ff eb                                      bl #0x86ef8c
0086f294  05 00 a0 e1                                      mov r0, r5
0086f298  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0086f29c  9e 90 00 ea                                      b #0x89351c
