; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00863c24, declared_size=136, range_size=136, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObjD1Ev
; demangled: vox::DataObj::~DataObj()
; decoder-mode: arm
00863c24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00863c28  70 70 9f e5                                      ldr r7, [pc, #0x70]
00863c2c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00863c30  00 60 a0 e1                                      mov r6, r0
00863c34  07 70 8f e0                                      add r7, pc, r7
00863c38  03 30 97 e7                                      ldr r3, [r7, r3]
00863c3c  40 50 86 e2                                      add r5, r6, #0x40
00863c40  08 30 83 e2                                      add r3, r3, #8
00863c44  58 30 80 e4                                      str r3, [r0], #0x58
00863c48  56 be 00 eb                                      bl #0x8935a8
00863c4c  40 30 96 e5                                      ldr r3, [r6, #0x40]
00863c50  05 00 53 e1                                      cmp r3, r5
00863c54  07 00 00 0a                                      beq #0x863c78
00863c58  03 00 a0 e1                                      mov r0, r3
00863c5c  00 00 00 ea                                      b #0x863c64
00863c60  04 00 a0 e1                                      mov r0, r4
00863c64  00 40 90 e5                                      ldr r4, [r0]
00863c68  f5 b1 ea eb                                      bl #0x310444
00863c6c  05 00 54 e1                                      cmp r4, r5
00863c70  fa ff ff 1a                                      bne #0x863c60
00863c74  05 30 a0 e1                                      mov r3, r5
00863c78  28 20 9f e5                                      ldr r2, [pc, #0x28]
00863c7c  06 00 a0 e1                                      mov r0, r6
00863c80  40 30 86 e5                                      str r3, [r6, #0x40]
00863c84  02 20 97 e7                                      ldr r2, [r7, r2]
00863c88  04 30 85 e5                                      str r3, [r5, #4]
00863c8c  08 20 82 e2                                      add r2, r2, #8
00863c90  18 20 80 e4                                      str r2, [r0], #0x18
00863c94  43 be 00 eb                                      bl #0x8935a8
00863c98  06 00 a0 e1                                      mov r0, r6
00863c9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00863ca0  5c 0e 13 00 f0 17 00 00 34 47 00 00              .byte 0x5c, 0x0e, 0x13, 0x00, 0xf0, 0x17, 0x00, 0x00, 0x34, 0x47, 0x00, 0x00

; FUNCTION 0x00863cac, declared_size=28, range_size=28, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObjD0Ev
; demangled: vox::DataObj::~DataObj()
; decoder-mode: arm
00863cac  10 40 2d e9                                      push {r4, lr}
00863cb0  00 40 a0 e1                                      mov r4, r0
00863cb4  da ff ff eb                                      bl #0x863c24
00863cb8  04 00 a0 e1                                      mov r0, r4
00863cbc  7b a9 ea eb                                      bl #0x30e2b0
00863cc0  04 00 a0 e1                                      mov r0, r4
00863cc4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00865878, declared_size=40, range_size=40, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj11GetUserDataEv
; demangled: vox::DataObj::GetUserData()
; decoder-mode: arm
00865878  70 40 2d e9                                      push {r4, r5, r6, lr}
0086587c  18 40 80 e2                                      add r4, r0, #0x18
00865880  00 50 a0 e1                                      mov r5, r0
00865884  04 00 a0 e1                                      mov r0, r4
00865888  fb b6 00 eb                                      bl #0x89347c
0086588c  48 50 95 e5                                      ldr r5, [r5, #0x48]
00865890  04 00 a0 e1                                      mov r0, r4
00865894  f7 b6 00 eb                                      bl #0x893478
00865898  05 00 a0 e1                                      mov r0, r5
0086589c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008658a0, declared_size=44, range_size=44, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj11SetUserDataERNS_18DataHandleUserDataE
; demangled: vox::DataObj::SetUserData(vox::DataHandleUserData&)
; decoder-mode: arm
008658a0  70 40 2d e9                                      push {r4, r5, r6, lr}
008658a4  18 50 80 e2                                      add r5, r0, #0x18
008658a8  00 40 a0 e1                                      mov r4, r0
008658ac  05 00 a0 e1                                      mov r0, r5
008658b0  01 60 a0 e1                                      mov r6, r1
008658b4  f0 b6 00 eb                                      bl #0x89347c
008658b8  00 30 96 e5                                      ldr r3, [r6]
008658bc  05 00 a0 e1                                      mov r0, r5
008658c0  48 30 84 e5                                      str r3, [r4, #0x48]
008658c4  70 40 bd e8                                      pop {r4, r5, r6, lr}
008658c8  ea b6 00 ea                                      b #0x893478

; FUNCTION 0x008658cc, declared_size=48, range_size=48, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj7IsReadyEv
; demangled: vox::DataObj::IsReady()
; decoder-mode: arm
008658cc  70 40 2d e9                                      push {r4, r5, r6, lr}
008658d0  58 40 80 e2                                      add r4, r0, #0x58
008658d4  00 50 a0 e1                                      mov r5, r0
008658d8  04 00 a0 e1                                      mov r0, r4
008658dc  e6 b6 00 eb                                      bl #0x89347c
008658e0  50 30 95 e5                                      ldr r3, [r5, #0x50]
008658e4  04 00 a0 e1                                      mov r0, r4
008658e8  01 40 73 e2                                      rsbs r4, r3, #1
008658ec  00 40 a0 33                                      movlo r4, #0
008658f0  e0 b6 00 eb                                      bl #0x893478
008658f4  04 00 a0 e1                                      mov r0, r4
008658f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008658fc, declared_size=88, range_size=88, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj11GetDurationEv
; demangled: vox::DataObj::GetDuration()
; decoder-mode: arm
008658fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00865900  00 50 a0 e1                                      mov r5, r0
00865904  f0 ff ff eb                                      bl #0x8658cc
00865908  00 00 50 e3                                      cmp r0, #0
0086590c  00 50 a0 03                                      moveq r5, #0
00865910  0d 00 00 0a                                      beq #0x86594c
00865914  18 40 85 e2                                      add r4, r5, #0x18
00865918  04 00 a0 e1                                      mov r0, r4
0086591c  d6 b6 00 eb                                      bl #0x89347c
00865920  34 00 95 e5                                      ldr r0, [r5, #0x34]
00865924  6d a2 ea eb                                      bl #0x30e2e0
00865928  00 60 a0 e1                                      mov r6, r0
0086592c  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00865930  0b a4 ea eb                                      bl #0x30e964
00865934  00 10 a0 e1                                      mov r1, r0
00865938  06 00 a0 e1                                      mov r0, r6
0086593c  d4 a4 ea eb                                      bl #0x30ec94
00865940  00 50 a0 e1                                      mov r5, r0
00865944  04 00 a0 e1                                      mov r0, r4
00865948  ca b6 00 eb                                      bl #0x893478
0086594c  05 00 a0 e1                                      mov r0, r5
00865950  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00865954, declared_size=152, range_size=152, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj12GetDebugInfoERNS_21DebugChunk_dataSourceE
; demangled: vox::DataObj::GetDebugInfo(vox::DebugChunk_dataSource&)
; decoder-mode: arm
00865954  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865958  01 60 a0 e1                                      mov r6, r1
0086595c  00 40 a0 e1                                      mov r4, r0
00865960  18 50 80 e2                                      add r5, r0, #0x18
00865964  e4 ff ff eb                                      bl #0x8658fc
00865968  00 70 a0 e1                                      mov r7, r0
0086596c  05 00 a0 e1                                      mov r0, r5
00865970  c1 b6 00 eb                                      bl #0x89347c
00865974  20 30 94 e5                                      ldr r3, [r4, #0x20]
00865978  10 30 86 e5                                      str r3, [r6, #0x10]
0086597c  d8 20 c4 e1                                      ldrd r2, r3, [r4, #8]
00865980  f0 20 c6 e1                                      strd r2, r3, [r6]
00865984  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00865988  03 00 a0 e1                                      mov r0, r3
0086598c  00 30 93 e5                                      ldr r3, [r3]
00865990  0f e0 a0 e1                                      mov lr, pc
00865994  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00865998  0c 00 86 e5                                      str r0, [r6, #0xc]
0086599c  38 30 94 e5                                      ldr r3, [r4, #0x38]
008659a0  03 00 a0 e1                                      mov r0, r3
008659a4  00 30 93 e5                                      ldr r3, [r3]
008659a8  0f e0 a0 e1                                      mov lr, pc
008659ac  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008659b0  08 00 86 e5                                      str r0, [r6, #8]
008659b4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
008659b8  05 00 a0 e1                                      mov r0, r5
008659bc  14 30 86 e5                                      str r3, [r6, #0x14]
008659c0  28 30 94 e5                                      ldr r3, [r4, #0x28]
008659c4  18 30 86 e5                                      str r3, [r6, #0x18]
008659c8  30 30 94 e5                                      ldr r3, [r4, #0x30]
008659cc  20 70 86 e5                                      str r7, [r6, #0x20]
008659d0  1c 30 86 e5                                      str r3, [r6, #0x1c]
008659d4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
008659d8  24 30 86 e5                                      str r3, [r6, #0x24]
008659dc  10 30 94 e5                                      ldr r3, [r4, #0x10]
008659e0  28 30 86 e5                                      str r3, [r6, #0x28]
008659e4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008659e8  a2 b6 00 ea                                      b #0x893478

; FUNCTION 0x008659ec, declared_size=32, range_size=32, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj10PrintDebugEv
; demangled: vox::DataObj::PrintDebug()
; decoder-mode: arm
008659ec  10 40 2d e9                                      push {r4, lr}
008659f0  18 40 80 e2                                      add r4, r0, #0x18
008659f4  c0 ff ff eb                                      bl #0x8658fc
008659f8  04 00 a0 e1                                      mov r0, r4
008659fc  9e b6 00 eb                                      bl #0x89347c
00865a00  04 00 a0 e1                                      mov r0, r4
00865a04  10 40 bd e8                                      pop {r4, lr}
00865a08  9a b6 00 ea                                      b #0x893478

; FUNCTION 0x00865a0c, declared_size=60, range_size=60, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj7IsGroupEj
; demangled: vox::DataObj::IsGroup(unsigned int)
; decoder-mode: arm
00865a0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00865a10  18 40 80 e2                                      add r4, r0, #0x18
00865a14  00 50 a0 e1                                      mov r5, r0
00865a18  04 00 a0 e1                                      mov r0, r4
00865a1c  01 60 a0 e1                                      mov r6, r1
00865a20  95 b6 00 eb                                      bl #0x89347c
00865a24  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00865a28  01 20 a0 e3                                      mov r2, #1
00865a2c  04 00 a0 e1                                      mov r0, r4
00865a30  12 33 16 e0                                      ands r3, r6, r2, lsl r3
00865a34  00 40 a0 03                                      moveq r4, #0
00865a38  01 40 a0 13                                      movne r4, #1
00865a3c  8d b6 00 eb                                      bl #0x893478
00865a40  04 00 a0 e1                                      mov r0, r4
00865a44  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00865a48, declared_size=40, range_size=40, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj8GetGroupEv
; demangled: vox::DataObj::GetGroup()
; decoder-mode: arm
00865a48  70 40 2d e9                                      push {r4, r5, r6, lr}
00865a4c  18 40 80 e2                                      add r4, r0, #0x18
00865a50  00 50 a0 e1                                      mov r5, r0
00865a54  04 00 a0 e1                                      mov r0, r4
00865a58  87 b6 00 eb                                      bl #0x89347c
00865a5c  1c 50 95 e5                                      ldr r5, [r5, #0x1c]
00865a60  04 00 a0 e1                                      mov r0, r4
00865a64  83 b6 00 eb                                      bl #0x893478
00865a68  05 00 a0 e1                                      mov r0, r5
00865a6c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00865a70, declared_size=124, range_size=124, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj9ShouldDieEv
; demangled: vox::DataObj::ShouldDie()
; decoder-mode: arm
00865a70  70 40 2d e9                                      push {r4, r5, r6, lr}
00865a74  18 50 80 e2                                      add r5, r0, #0x18
00865a78  00 40 a0 e1                                      mov r4, r0
00865a7c  05 00 a0 e1                                      mov r0, r5
00865a80  7d b6 00 eb                                      bl #0x89347c
00865a84  04 20 a0 e1                                      mov r2, r4
00865a88  40 30 b2 e5                                      ldr r3, [r2, #0x40]!
00865a8c  02 00 53 e1                                      cmp r3, r2
00865a90  0d 00 00 0a                                      beq #0x865acc
00865a94  00 30 93 e5                                      ldr r3, [r3]
00865a98  03 00 52 e1                                      cmp r2, r3
00865a9c  fc ff ff 1a                                      bne #0x865a94
00865aa0  4d 30 d4 e5                                      ldrb r3, [r4, #0x4d]
00865aa4  00 00 53 e3                                      cmp r3, #0
00865aa8  0a 00 00 1a                                      bne #0x865ad8
00865aac  50 40 94 e5                                      ldr r4, [r4, #0x50]
00865ab0  05 00 a0 e1                                      mov r0, r5
00865ab4  6f b6 00 eb                                      bl #0x893478
00865ab8  01 00 74 e3                                      cmn r4, #1
00865abc  00 40 a0 13                                      movne r4, #0
00865ac0  01 40 a0 03                                      moveq r4, #1
00865ac4  04 00 a0 e1                                      mov r0, r4
00865ac8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00865acc  10 30 94 e5                                      ldr r3, [r4, #0x10]
00865ad0  00 00 53 e3                                      cmp r3, #0
00865ad4  f1 ff ff 1a                                      bne #0x865aa0
00865ad8  05 00 a0 e1                                      mov r0, r5
00865adc  01 40 a0 e3                                      mov r4, #1
00865ae0  64 b6 00 eb                                      bl #0x893478
00865ae4  04 00 a0 e1                                      mov r0, r4
00865ae8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00865aec, declared_size=68, range_size=68, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj9NeedToDieEv
; demangled: vox::DataObj::NeedToDie()
; decoder-mode: arm
00865aec  70 40 2d e9                                      push {r4, r5, r6, lr}
00865af0  18 50 80 e2                                      add r5, r0, #0x18
00865af4  00 40 a0 e1                                      mov r4, r0
00865af8  05 00 a0 e1                                      mov r0, r5
00865afc  5e b6 00 eb                                      bl #0x89347c
00865b00  01 30 a0 e3                                      mov r3, #1
00865b04  4d 30 c4 e5                                      strb r3, [r4, #0x4d]
00865b08  05 00 a0 e1                                      mov r0, r5
00865b0c  58 50 84 e2                                      add r5, r4, #0x58
00865b10  58 b6 00 eb                                      bl #0x893478
00865b14  05 00 a0 e1                                      mov r0, r5
00865b18  57 b6 00 eb                                      bl #0x89347c
00865b1c  04 30 a0 e3                                      mov r3, #4
00865b20  05 00 a0 e1                                      mov r0, r5
00865b24  50 30 84 e5                                      str r3, [r4, #0x50]
00865b28  70 40 bd e8                                      pop {r4, r5, r6, lr}
00865b2c  51 b6 00 ea                                      b #0x893478

; FUNCTION 0x00865b30, declared_size=120, range_size=120, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj17UnregisterEmitterEx
; demangled: vox::DataObj::UnregisterEmitter(long long)
; decoder-mode: arm
00865b30  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865b34  18 40 80 e2                                      add r4, r0, #0x18
00865b38  00 50 a0 e1                                      mov r5, r0
00865b3c  04 00 a0 e1                                      mov r0, r4
00865b40  02 60 a0 e1                                      mov r6, r2
00865b44  03 70 a0 e1                                      mov r7, r3
00865b48  4b b6 00 eb                                      bl #0x89347c
00865b4c  40 00 b5 e5                                      ldr r0, [r5, #0x40]!
00865b50  00 00 55 e1                                      cmp r5, r0
00865b54  05 00 00 0a                                      beq #0x865b70
00865b58  08 30 90 e5                                      ldr r3, [r0, #8]
00865b5c  06 00 53 e1                                      cmp r3, r6
00865b60  05 00 00 0a                                      beq #0x865b7c
00865b64  00 00 90 e5                                      ldr r0, [r0]
00865b68  00 00 55 e1                                      cmp r5, r0
00865b6c  f9 ff ff 1a                                      bne #0x865b58
00865b70  04 00 a0 e1                                      mov r0, r4
00865b74  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00865b78  3e b6 00 ea                                      b #0x893478
00865b7c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00865b80  07 00 53 e1                                      cmp r3, r7
00865b84  f6 ff ff 1a                                      bne #0x865b64
00865b88  00 30 90 e5                                      ldr r3, [r0]
00865b8c  04 20 90 e5                                      ldr r2, [r0, #4]
00865b90  00 30 82 e5                                      str r3, [r2]
00865b94  04 20 83 e5                                      str r2, [r3, #4]
00865b98  29 aa ea eb                                      bl #0x310444
00865b9c  04 00 a0 e1                                      mov r0, r4
00865ba0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00865ba4  33 b6 00 ea                                      b #0x893478

; FUNCTION 0x00865ba8, declared_size=76, range_size=76, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj15RegisterEmitterEx
; demangled: vox::DataObj::RegisterEmitter(long long)
; decoder-mode: arm
00865ba8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865bac  18 50 80 e2                                      add r5, r0, #0x18
00865bb0  00 40 a0 e1                                      mov r4, r0
00865bb4  05 00 a0 e1                                      mov r0, r5
00865bb8  02 60 a0 e1                                      mov r6, r2
00865bbc  03 70 a0 e1                                      mov r7, r3
00865bc0  2d b6 00 eb                                      bl #0x89347c
00865bc4  00 10 a0 e3                                      mov r1, #0
00865bc8  10 00 a0 e3                                      mov r0, #0x10
00865bcc  9d aa ea eb                                      bl #0x310648
00865bd0  f8 60 c0 e1                                      strd r6, r7, [r0, #8]
00865bd4  44 30 94 e5                                      ldr r3, [r4, #0x44]
00865bd8  40 20 84 e2                                      add r2, r4, #0x40
00865bdc  0c 00 80 e8                                      stm r0, {r2, r3}
00865be0  00 00 83 e5                                      str r0, [r3]
00865be4  44 00 84 e5                                      str r0, [r4, #0x44]
00865be8  05 00 a0 e1                                      mov r0, r5
00865bec  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00865bf0  20 b6 00 ea                                      b #0x893478

; FUNCTION 0x00866dec, declared_size=1140, range_size=1140, mode=arm
; class-group: vox::DataObj
; alias: _ZN3vox7DataObj6UpdateEv
; demangled: vox::DataObj::Update()
; decoder-mode: arm
00866dec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00866df0  50 30 90 e5                                      ldr r3, [r0, #0x50]
00866df4  14 d0 4d e2                                      sub sp, sp, #0x14
00866df8  00 40 a0 e1                                      mov r4, r0
00866dfc  00 00 53 e3                                      cmp r3, #0
00866e00  01 00 00 1a                                      bne #0x866e0c
00866e04  14 d0 8d e2                                      add sp, sp, #0x14
00866e08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00866e0c  18 50 80 e2                                      add r5, r0, #0x18
00866e10  05 00 a0 e1                                      mov r0, r5
00866e14  98 b1 00 eb                                      bl #0x89347c
00866e18  50 30 94 e5                                      ldr r3, [r4, #0x50]
00866e1c  03 00 53 e3                                      cmp r3, #3
00866e20  02 00 00 0a                                      beq #0x866e30
00866e24  05 00 a0 e1                                      mov r0, r5
00866e28  92 b1 00 eb                                      bl #0x893478
00866e2c  f4 ff ff ea                                      b #0x866e04
00866e30  54 60 94 e5                                      ldr r6, [r4, #0x54]
00866e34  01 00 56 e3                                      cmp r6, #1
00866e38  8d 00 00 0a                                      beq #0x867074
00866e3c  24 00 00 2a                                      bhs #0x866ed4
00866e40  38 30 94 e5                                      ldr r3, [r4, #0x38]
00866e44  03 00 a0 e1                                      mov r0, r3
00866e48  00 30 93 e5                                      ldr r3, [r3]
00866e4c  0f e0 a0 e1                                      mov lr, pc
00866e50  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00866e54  00 60 50 e2                                      subs r6, r0, #0
00866e58  17 00 00 0a                                      beq #0x866ebc
00866e5c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00866e60  06 10 a0 e1                                      mov r1, r6
00866e64  03 00 a0 e1                                      mov r0, r3
00866e68  00 30 93 e5                                      ldr r3, [r3]
00866e6c  0f e0 a0 e1                                      mov lr, pc
00866e70  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00866e74  00 e0 50 e2                                      subs lr, r0, #0
00866e78  09 00 00 0a                                      beq #0x866ea4
00866e7c  28 c0 84 e2                                      add ip, r4, #0x28
00866e80  04 30 8e e2                                      add r3, lr, #4
00866e84  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00866e88  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00866e8c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00866e90  0e 10 a0 e1                                      mov r1, lr
00866e94  03 00 a0 e1                                      mov r0, r3
00866e98  00 30 93 e5                                      ldr r3, [r3]
00866e9c  0f e0 a0 e1                                      mov lr, pc
00866ea0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00866ea4  38 30 94 e5                                      ldr r3, [r4, #0x38]
00866ea8  06 10 a0 e1                                      mov r1, r6
00866eac  03 00 a0 e1                                      mov r0, r3
00866eb0  00 30 93 e5                                      ldr r3, [r3]
00866eb4  0f e0 a0 e1                                      mov lr, pc
00866eb8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00866ebc  28 30 94 e5                                      ldr r3, [r4, #0x28]
00866ec0  00 00 53 e3                                      cmp r3, #0
00866ec4  04 00 00 ca                                      bgt #0x866edc
00866ec8  00 30 e0 e3                                      mvn r3, #0
00866ecc  50 30 84 e5                                      str r3, [r4, #0x50]
00866ed0  d3 ff ff ea                                      b #0x866e24
00866ed4  02 00 56 e3                                      cmp r6, #2
00866ed8  02 00 00 0a                                      beq #0x866ee8
00866edc  00 30 a0 e3                                      mov r3, #0
00866ee0  50 30 84 e5                                      str r3, [r4, #0x50]
00866ee4  ce ff ff ea                                      b #0x866e24
00866ee8  38 30 94 e5                                      ldr r3, [r4, #0x38]
00866eec  00 00 53 e3                                      cmp r3, #0
00866ef0  f4 ff ff 0a                                      beq #0x866ec8
00866ef4  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00866ef8  00 00 52 e3                                      cmp r2, #0
00866efc  f1 ff ff 0a                                      beq #0x866ec8
00866f00  03 00 a0 e1                                      mov r0, r3
00866f04  00 30 93 e5                                      ldr r3, [r3]
00866f08  0f e0 a0 e1                                      mov lr, pc
00866f0c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00866f10  00 70 50 e2                                      subs r7, r0, #0
00866f14  eb ff ff 0a                                      beq #0x866ec8
00866f18  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00866f1c  07 10 a0 e1                                      mov r1, r7
00866f20  03 00 a0 e1                                      mov r0, r3
00866f24  00 30 93 e5                                      ldr r3, [r3]
00866f28  0f e0 a0 e1                                      mov lr, pc
00866f2c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00866f30  00 60 50 e2                                      subs r6, r0, #0
00866f34  bd 00 00 0a                                      beq #0x867230
00866f38  28 a0 84 e2                                      add sl, r4, #0x28
00866f3c  04 30 86 e2                                      add r3, r6, #4
00866f40  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00866f44  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
00866f48  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00866f4c  10 20 96 e5                                      ldr r2, [r6, #0x10]
00866f50  04 80 96 e5                                      ldr r8, [r6, #4]
00866f54  c3 31 a0 e1                                      asr r3, r3, #3
00866f58  92 03 03 e0                                      mul r3, r2, r3
00866f5c  98 03 08 e0                                      mul r8, r8, r3
00866f60  00 00 58 e3                                      cmp r8, #0
00866f64  6b 00 00 da                                      ble #0x867118
00866f68  08 00 a0 e1                                      mov r0, r8
00866f6c  61 a5 ea eb                                      bl #0x3104f8
00866f70  00 90 50 e2                                      subs sb, r0, #0
00866f74  67 00 00 0a                                      beq #0x867118
00866f78  08 20 a0 e1                                      mov r2, r8
00866f7c  09 10 a0 e1                                      mov r1, sb
00866f80  00 30 96 e5                                      ldr r3, [r6]
00866f84  06 00 a0 e1                                      mov r0, r6
00866f88  0f e0 a0 e1                                      mov lr, pc
00866f8c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00866f90  38 30 94 e5                                      ldr r3, [r4, #0x38]
00866f94  00 b0 a0 e1                                      mov fp, r0
00866f98  07 10 a0 e1                                      mov r1, r7
00866f9c  03 00 a0 e1                                      mov r0, r3
00866fa0  00 30 93 e5                                      ldr r3, [r3]
00866fa4  0f e0 a0 e1                                      mov lr, pc
00866fa8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00866fac  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00866fb0  06 10 a0 e1                                      mov r1, r6
00866fb4  03 00 a0 e1                                      mov r0, r3
00866fb8  00 30 93 e5                                      ldr r3, [r3]
00866fbc  0f e0 a0 e1                                      mov lr, pc
00866fc0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00866fc4  00 00 5b e3                                      cmp fp, #0
00866fc8  9f 00 00 da                                      ble #0x86724c
00866fcc  00 30 a0 e3                                      mov r3, #0
00866fd0  03 10 a0 e1                                      mov r1, r3
00866fd4  01 20 a0 e3                                      mov r2, #1
00866fd8  10 00 a0 e3                                      mov r0, #0x10
00866fdc  0d 20 cd e5                                      strb r2, [sp, #0xd]
00866fe0  0c 30 cd e5                                      strb r3, [sp, #0xc]
00866fe4  04 90 8d e5                                      str sb, [sp, #4]
00866fe8  08 80 8d e5                                      str r8, [sp, #8]
00866fec  95 a5 ea eb                                      bl #0x310648
00866ff0  04 10 8d e2                                      add r1, sp, #4
00866ff4  00 60 a0 e1                                      mov r6, r0
00866ff8  4b 88 00 eb                                      bl #0x88912c
00866ffc  00 00 56 e3                                      cmp r6, #0
00867000  b0 ff ff 0a                                      beq #0x866ec8
00867004  38 00 94 e5                                      ldr r0, [r4, #0x38]
00867008  00 00 50 e3                                      cmp r0, #0
0086700c  02 00 00 0a                                      beq #0x86701c
00867010  95 f1 ff eb                                      bl #0x86366c
00867014  38 00 94 e5                                      ldr r0, [r4, #0x38]
00867018  09 a5 ea eb                                      bl #0x310444
0086701c  38 60 84 e5                                      str r6, [r4, #0x38]
00867020  00 10 a0 e3                                      mov r1, #0
00867024  14 00 a0 e3                                      mov r0, #0x14
00867028  86 a5 ea eb                                      bl #0x310648
0086702c  0a 10 a0 e1                                      mov r1, sl
00867030  00 60 a0 e1                                      mov r6, r0
00867034  8a 36 00 eb                                      bl #0x874a64
00867038  00 00 56 e3                                      cmp r6, #0
0086703c  a1 ff ff 0a                                      beq #0x866ec8
00867040  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00867044  00 00 53 e3                                      cmp r3, #0
00867048  05 00 00 0a                                      beq #0x867064
0086704c  03 00 a0 e1                                      mov r0, r3
00867050  00 30 93 e5                                      ldr r3, [r3]
00867054  0f e0 a0 e1                                      mov lr, pc
00867058  00 f0 93 e5                                      ldr pc, [r3]
0086705c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00867060  f7 a4 ea eb                                      bl #0x310444
00867064  00 30 a0 e3                                      mov r3, #0
00867068  50 30 84 e5                                      str r3, [r4, #0x50]
0086706c  3c 60 84 e5                                      str r6, [r4, #0x3c]
00867070  6b ff ff ea                                      b #0x866e24
00867074  38 30 94 e5                                      ldr r3, [r4, #0x38]
00867078  00 00 53 e3                                      cmp r3, #0
0086707c  91 ff ff 0a                                      beq #0x866ec8
00867080  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00867084  00 00 52 e3                                      cmp r2, #0
00867088  8e ff ff 0a                                      beq #0x866ec8
0086708c  03 00 a0 e1                                      mov r0, r3
00867090  00 30 93 e5                                      ldr r3, [r3]
00867094  0f e0 a0 e1                                      mov lr, pc
00867098  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086709c  00 70 50 e2                                      subs r7, r0, #0
008670a0  88 ff ff da                                      ble #0x866ec8
008670a4  13 a5 ea eb                                      bl #0x3104f8
008670a8  00 a0 50 e2                                      subs sl, r0, #0
008670ac  85 ff ff 0a                                      beq #0x866ec8
008670b0  38 30 94 e5                                      ldr r3, [r4, #0x38]
008670b4  03 00 a0 e1                                      mov r0, r3
008670b8  00 30 93 e5                                      ldr r3, [r3]
008670bc  0f e0 a0 e1                                      mov lr, pc
008670c0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008670c4  00 80 50 e2                                      subs r8, r0, #0
008670c8  7e ff ff 0a                                      beq #0x866ec8
008670cc  0a 10 a0 e1                                      mov r1, sl
008670d0  07 20 a0 e1                                      mov r2, r7
008670d4  00 30 98 e5                                      ldr r3, [r8]
008670d8  0f e0 a0 e1                                      mov lr, pc
008670dc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008670e0  38 30 94 e5                                      ldr r3, [r4, #0x38]
008670e4  00 90 a0 e1                                      mov sb, r0
008670e8  08 10 a0 e1                                      mov r1, r8
008670ec  03 00 a0 e1                                      mov r0, r3
008670f0  00 30 93 e5                                      ldr r3, [r3]
008670f4  0f e0 a0 e1                                      mov lr, pc
008670f8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008670fc  09 00 57 e1                                      cmp r7, sb
00867100  13 00 00 0a                                      beq #0x867154
00867104  0a 00 a0 e1                                      mov r0, sl
00867108  cd a4 ea eb                                      bl #0x310444
0086710c  00 30 e0 e3                                      mvn r3, #0
00867110  50 30 84 e5                                      str r3, [r4, #0x50]
00867114  42 ff ff ea                                      b #0x866e24
00867118  38 30 94 e5                                      ldr r3, [r4, #0x38]
0086711c  07 10 a0 e1                                      mov r1, r7
00867120  03 00 a0 e1                                      mov r0, r3
00867124  00 30 93 e5                                      ldr r3, [r3]
00867128  0f e0 a0 e1                                      mov lr, pc
0086712c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00867130  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00867134  06 10 a0 e1                                      mov r1, r6
00867138  03 00 a0 e1                                      mov r0, r3
0086713c  00 30 93 e5                                      ldr r3, [r3]
00867140  0f e0 a0 e1                                      mov lr, pc
00867144  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00867148  00 30 e0 e3                                      mvn r3, #0
0086714c  50 30 84 e5                                      str r3, [r4, #0x50]
00867150  33 ff ff ea                                      b #0x866e24
00867154  00 30 a0 e3                                      mov r3, #0
00867158  03 10 a0 e1                                      mov r1, r3
0086715c  10 00 a0 e3                                      mov r0, #0x10
00867160  0d 60 cd e5                                      strb r6, [sp, #0xd]
00867164  0c 30 cd e5                                      strb r3, [sp, #0xc]
00867168  04 a0 8d e5                                      str sl, [sp, #4]
0086716c  08 70 8d e5                                      str r7, [sp, #8]
00867170  34 a5 ea eb                                      bl #0x310648
00867174  04 10 8d e2                                      add r1, sp, #4
00867178  00 60 a0 e1                                      mov r6, r0
0086717c  ea 87 00 eb                                      bl #0x88912c
00867180  00 00 56 e3                                      cmp r6, #0
00867184  4f ff ff 0a                                      beq #0x866ec8
00867188  38 00 94 e5                                      ldr r0, [r4, #0x38]
0086718c  00 00 50 e3                                      cmp r0, #0
00867190  02 00 00 0a                                      beq #0x8671a0
00867194  34 f1 ff eb                                      bl #0x86366c
00867198  38 00 94 e5                                      ldr r0, [r4, #0x38]
0086719c  a8 a4 ea eb                                      bl #0x310444
008671a0  38 60 84 e5                                      str r6, [r4, #0x38]
008671a4  06 00 a0 e1                                      mov r0, r6
008671a8  00 30 96 e5                                      ldr r3, [r6]
008671ac  0f e0 a0 e1                                      mov lr, pc
008671b0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008671b4  00 60 50 e2                                      subs r6, r0, #0
008671b8  42 ff ff 0a                                      beq #0x866ec8
008671bc  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
008671c0  06 10 a0 e1                                      mov r1, r6
008671c4  03 00 a0 e1                                      mov r0, r3
008671c8  00 30 93 e5                                      ldr r3, [r3]
008671cc  0f e0 a0 e1                                      mov lr, pc
008671d0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008671d4  00 e0 50 e2                                      subs lr, r0, #0
008671d8  38 30 94 05                                      ldreq r3, [r4, #0x38]
008671dc  06 10 a0 01                                      moveq r1, r6
008671e0  14 00 00 0a                                      beq #0x867238
008671e4  04 30 8e e2                                      add r3, lr, #4
008671e8  28 c0 84 e2                                      add ip, r4, #0x28
008671ec  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
008671f0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
008671f4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
008671f8  0e 10 a0 e1                                      mov r1, lr
008671fc  03 00 a0 e1                                      mov r0, r3
00867200  00 30 93 e5                                      ldr r3, [r3]
00867204  0f e0 a0 e1                                      mov lr, pc
00867208  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086720c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00867210  06 10 a0 e1                                      mov r1, r6
00867214  03 00 a0 e1                                      mov r0, r3
00867218  00 30 93 e5                                      ldr r3, [r3]
0086721c  0f e0 a0 e1                                      mov lr, pc
00867220  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00867224  00 30 a0 e3                                      mov r3, #0
00867228  50 30 84 e5                                      str r3, [r4, #0x50]
0086722c  fc fe ff ea                                      b #0x866e24
00867230  38 30 94 e5                                      ldr r3, [r4, #0x38]
00867234  07 10 a0 e1                                      mov r1, r7
00867238  03 00 a0 e1                                      mov r0, r3
0086723c  00 30 93 e5                                      ldr r3, [r3]
00867240  0f e0 a0 e1                                      mov lr, pc
00867244  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00867248  1e ff ff ea                                      b #0x866ec8
0086724c  09 00 a0 e1                                      mov r0, sb
00867250  7b a4 ea eb                                      bl #0x310444
00867254  00 30 e0 e3                                      mvn r3, #0
00867258  50 30 84 e5                                      str r3, [r4, #0x50]
0086725c  f0 fe ff ea                                      b #0x866e24
