; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00881ad0, declared_size=112, range_size=112, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroupC2EPNS_10GroupInfosEi
; demangled: vox::RandomGroup::RandomGroup(vox::GroupInfos*, int)
; decoder-mode: arm
00881ad0  70 40 2d e9                                      push {r4, r5, r6, lr}
00881ad4  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00881ad8  00 40 a0 e1                                      mov r4, r0
00881adc  01 60 a0 e1                                      mov r6, r1
00881ae0  7b ff ff eb                                      bl #0x8818d4
00881ae4  50 20 9f e5                                      ldr r2, [pc, #0x50]
00881ae8  05 50 8f e0                                      add r5, pc, r5
00881aec  00 30 a0 e3                                      mov r3, #0
00881af0  02 20 95 e7                                      ldr r2, [r5, r2]
00881af4  30 10 84 e2                                      add r1, r4, #0x30
00881af8  24 30 84 e5                                      str r3, [r4, #0x24]
00881afc  08 20 82 e2                                      add r2, r2, #8
00881b00  28 30 84 e5                                      str r3, [r4, #0x28]
00881b04  2c 30 84 e5                                      str r3, [r4, #0x2c]
00881b08  34 10 84 e5                                      str r1, [r4, #0x34]
00881b0c  00 20 84 e5                                      str r2, [r4]
00881b10  30 10 84 e5                                      str r1, [r4, #0x30]
00881b14  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00881b18  58 30 84 e5                                      str r3, [r4, #0x58]
00881b1c  48 30 84 e5                                      str r3, [r4, #0x48]
00881b20  01 00 72 e3                                      cmn r2, #1
00881b24  02 30 a0 11                                      movne r3, r2
00881b28  3c 30 84 e5                                      str r3, [r4, #0x3c]
00881b2c  40 20 84 e5                                      str r2, [r4, #0x40]
00881b30  04 00 a0 e1                                      mov r0, r4
00881b34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00881b38  a8 2f 11 00 70 18 00 00                          .byte 0xa8, 0x2f, 0x11, 0x00, 0x70, 0x18, 0x00, 0x00

; FUNCTION 0x00881b40, declared_size=112, range_size=112, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroupC1EPNS_10GroupInfosEi
; demangled: vox::RandomGroup::RandomGroup(vox::GroupInfos*, int)
; decoder-mode: arm
00881b40  70 40 2d e9                                      push {r4, r5, r6, lr}
00881b44  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00881b48  00 40 a0 e1                                      mov r4, r0
00881b4c  01 60 a0 e1                                      mov r6, r1
00881b50  5f ff ff eb                                      bl #0x8818d4
00881b54  50 20 9f e5                                      ldr r2, [pc, #0x50]
00881b58  05 50 8f e0                                      add r5, pc, r5
00881b5c  00 30 a0 e3                                      mov r3, #0
00881b60  02 20 95 e7                                      ldr r2, [r5, r2]
00881b64  30 10 84 e2                                      add r1, r4, #0x30
00881b68  24 30 84 e5                                      str r3, [r4, #0x24]
00881b6c  08 20 82 e2                                      add r2, r2, #8
00881b70  28 30 84 e5                                      str r3, [r4, #0x28]
00881b74  2c 30 84 e5                                      str r3, [r4, #0x2c]
00881b78  34 10 84 e5                                      str r1, [r4, #0x34]
00881b7c  00 20 84 e5                                      str r2, [r4]
00881b80  30 10 84 e5                                      str r1, [r4, #0x30]
00881b84  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00881b88  58 30 84 e5                                      str r3, [r4, #0x58]
00881b8c  48 30 84 e5                                      str r3, [r4, #0x48]
00881b90  01 00 72 e3                                      cmn r2, #1
00881b94  02 30 a0 11                                      movne r3, r2
00881b98  3c 30 84 e5                                      str r3, [r4, #0x3c]
00881b9c  40 20 84 e5                                      str r2, [r4, #0x40]
00881ba0  04 00 a0 e1                                      mov r0, r4
00881ba4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00881ba8  38 2f 11 00 70 18 00 00                          .byte 0x38, 0x2f, 0x11, 0x00, 0x70, 0x18, 0x00, 0x00

; FUNCTION 0x00881bb0, declared_size=92, range_size=92, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroup8GetStateEPNS_16RandomGroupStateE
; demangled: vox::RandomGroup::GetState(vox::RandomGroupState*)
; decoder-mode: arm
00881bb0  14 30 90 e5                                      ldr r3, [r0, #0x14]
00881bb4  24 c0 80 e2                                      add ip, r0, #0x24
00881bb8  30 20 80 e2                                      add r2, r0, #0x30
00881bbc  00 30 81 e5                                      str r3, [r1]
00881bc0  18 30 90 e5                                      ldr r3, [r0, #0x18]
00881bc4  04 30 81 e5                                      str r3, [r1, #4]
00881bc8  44 30 90 e5                                      ldr r3, [r0, #0x44]
00881bcc  08 30 81 e5                                      str r3, [r1, #8]
00881bd0  48 30 90 e5                                      ldr r3, [r0, #0x48]
00881bd4  0c 30 81 e5                                      str r3, [r1, #0xc]
00881bd8  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00881bdc  24 c0 81 e5                                      str ip, [r1, #0x24]
00881be0  28 20 81 e5                                      str r2, [r1, #0x28]
00881be4  10 30 81 e5                                      str r3, [r1, #0x10]
00881be8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00881bec  14 30 81 e5                                      str r3, [r1, #0x14]
00881bf0  20 30 90 e5                                      ldr r3, [r0, #0x20]
00881bf4  18 30 81 e5                                      str r3, [r1, #0x18]
00881bf8  50 30 90 e5                                      ldr r3, [r0, #0x50]
00881bfc  1c 30 81 e5                                      str r3, [r1, #0x1c]
00881c00  54 30 90 e5                                      ldr r3, [r0, #0x54]
00881c04  20 30 81 e5                                      str r3, [r1, #0x20]
00881c08  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881c0c, declared_size=28, range_size=28, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroup22PeekAtNextGroupElementENS_13GroupPeekModeE
; demangled: vox::RandomGroup::PeekAtNextGroupElement(vox::GroupPeekMode)
; decoder-mode: arm
00881c0c  44 30 90 e5                                      ldr r3, [r0, #0x44]
00881c10  00 00 53 e3                                      cmp r3, #0
00881c14  24 20 90 a5                                      ldrge r2, [r0, #0x24]
00881c18  00 00 e0 b3                                      mvnlt r0, #0
00881c1c  03 31 92 a7                                      ldrge r3, [r2, r3, lsl #2]
00881c20  00 00 93 a5                                      ldrge r0, [r3]
00881c24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00882918, declared_size=228, range_size=228, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroupD1Ev
; demangled: vox::RandomGroup::~RandomGroup()
; decoder-mode: arm
00882918  70 40 2d e9                                      push {r4, r5, r6, lr}
0088291c  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
00882920  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
00882924  24 20 90 e5                                      ldr r2, [r0, #0x24]
00882928  28 50 90 e5                                      ldr r5, [r0, #0x28]
0088292c  03 30 8f e0                                      add r3, pc, r3
00882930  01 10 93 e7                                      ldr r1, [r3, r1]
00882934  05 50 62 e0                                      rsb r5, r2, r5
00882938  45 51 a0 e1                                      asr r5, r5, #2
0088293c  08 10 81 e2                                      add r1, r1, #8
00882940  00 00 55 e3                                      cmp r5, #0
00882944  00 10 80 e5                                      str r1, [r0]
00882948  00 60 a0 e1                                      mov r6, r0
0088294c  09 00 00 da                                      ble #0x882978
00882950  00 40 a0 e3                                      mov r4, #0
00882954  00 00 00 ea                                      b #0x88295c
00882958  24 20 96 e5                                      ldr r2, [r6, #0x24]
0088295c  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
00882960  01 40 84 e2                                      add r4, r4, #1
00882964  00 00 50 e3                                      cmp r0, #0
00882968  00 00 00 0a                                      beq #0x882970
0088296c  b4 36 ea eb                                      bl #0x310444
00882970  05 00 54 e1                                      cmp r4, r5
00882974  f7 ff ff 1a                                      bne #0x882958
00882978  06 50 a0 e1                                      mov r5, r6
0088297c  30 40 b5 e5                                      ldr r4, [r5, #0x30]!
00882980  04 00 55 e1                                      cmp r5, r4
00882984  06 00 00 0a                                      beq #0x8829a4
00882988  08 00 94 e5                                      ldr r0, [r4, #8]
0088298c  00 00 50 e3                                      cmp r0, #0
00882990  00 00 00 0a                                      beq #0x882998
00882994  aa 36 ea eb                                      bl #0x310444
00882998  00 40 94 e5                                      ldr r4, [r4]
0088299c  04 00 55 e1                                      cmp r5, r4
008829a0  f8 ff ff 1a                                      bne #0x882988
008829a4  30 00 96 e5                                      ldr r0, [r6, #0x30]
008829a8  05 00 50 e1                                      cmp r0, r5
008829ac  01 00 00 1a                                      bne #0x8829b8
008829b0  05 00 00 ea                                      b #0x8829cc
008829b4  04 00 a0 e1                                      mov r0, r4
008829b8  00 40 90 e5                                      ldr r4, [r0]
008829bc  a0 36 ea eb                                      bl #0x310444
008829c0  05 00 54 e1                                      cmp r4, r5
008829c4  fa ff ff 1a                                      bne #0x8829b4
008829c8  05 00 a0 e1                                      mov r0, r5
008829cc  30 00 86 e5                                      str r0, [r6, #0x30]
008829d0  04 00 85 e5                                      str r0, [r5, #4]
008829d4  24 00 96 e5                                      ldr r0, [r6, #0x24]
008829d8  00 00 50 e3                                      cmp r0, #0
008829dc  00 00 00 0a                                      beq #0x8829e4
008829e0  97 36 ea eb                                      bl #0x310444
008829e4  06 00 a0 e1                                      mov r0, r6
008829e8  21 fc ff eb                                      bl #0x881a74
008829ec  06 00 a0 e1                                      mov r0, r6
008829f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008829f4  64 21 11 00 70 18 00 00                          .byte 0x64, 0x21, 0x11, 0x00, 0x70, 0x18, 0x00, 0x00

; FUNCTION 0x008829fc, declared_size=228, range_size=228, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroupD2Ev
; demangled: vox::RandomGroup::~RandomGroup()
; decoder-mode: arm
008829fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00882a00  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
00882a04  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
00882a08  24 20 90 e5                                      ldr r2, [r0, #0x24]
00882a0c  28 50 90 e5                                      ldr r5, [r0, #0x28]
00882a10  03 30 8f e0                                      add r3, pc, r3
00882a14  01 10 93 e7                                      ldr r1, [r3, r1]
00882a18  05 50 62 e0                                      rsb r5, r2, r5
00882a1c  45 51 a0 e1                                      asr r5, r5, #2
00882a20  08 10 81 e2                                      add r1, r1, #8
00882a24  00 00 55 e3                                      cmp r5, #0
00882a28  00 10 80 e5                                      str r1, [r0]
00882a2c  00 60 a0 e1                                      mov r6, r0
00882a30  09 00 00 da                                      ble #0x882a5c
00882a34  00 40 a0 e3                                      mov r4, #0
00882a38  00 00 00 ea                                      b #0x882a40
00882a3c  24 20 96 e5                                      ldr r2, [r6, #0x24]
00882a40  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
00882a44  01 40 84 e2                                      add r4, r4, #1
00882a48  00 00 50 e3                                      cmp r0, #0
00882a4c  00 00 00 0a                                      beq #0x882a54
00882a50  7b 36 ea eb                                      bl #0x310444
00882a54  05 00 54 e1                                      cmp r4, r5
00882a58  f7 ff ff 1a                                      bne #0x882a3c
00882a5c  06 50 a0 e1                                      mov r5, r6
00882a60  30 40 b5 e5                                      ldr r4, [r5, #0x30]!
00882a64  04 00 55 e1                                      cmp r5, r4
00882a68  06 00 00 0a                                      beq #0x882a88
00882a6c  08 00 94 e5                                      ldr r0, [r4, #8]
00882a70  00 00 50 e3                                      cmp r0, #0
00882a74  00 00 00 0a                                      beq #0x882a7c
00882a78  71 36 ea eb                                      bl #0x310444
00882a7c  00 40 94 e5                                      ldr r4, [r4]
00882a80  04 00 55 e1                                      cmp r5, r4
00882a84  f8 ff ff 1a                                      bne #0x882a6c
00882a88  30 00 96 e5                                      ldr r0, [r6, #0x30]
00882a8c  05 00 50 e1                                      cmp r0, r5
00882a90  01 00 00 1a                                      bne #0x882a9c
00882a94  05 00 00 ea                                      b #0x882ab0
00882a98  04 00 a0 e1                                      mov r0, r4
00882a9c  00 40 90 e5                                      ldr r4, [r0]
00882aa0  67 36 ea eb                                      bl #0x310444
00882aa4  05 00 54 e1                                      cmp r4, r5
00882aa8  fa ff ff 1a                                      bne #0x882a98
00882aac  05 00 a0 e1                                      mov r0, r5
00882ab0  30 00 86 e5                                      str r0, [r6, #0x30]
00882ab4  04 00 85 e5                                      str r0, [r5, #4]
00882ab8  24 00 96 e5                                      ldr r0, [r6, #0x24]
00882abc  00 00 50 e3                                      cmp r0, #0
00882ac0  00 00 00 0a                                      beq #0x882ac8
00882ac4  5e 36 ea eb                                      bl #0x310444
00882ac8  06 00 a0 e1                                      mov r0, r6
00882acc  e8 fb ff eb                                      bl #0x881a74
00882ad0  06 00 a0 e1                                      mov r0, r6
00882ad4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00882ad8  80 20 11 00 70 18 00 00                          .byte 0x80, 0x20, 0x11, 0x00, 0x70, 0x18, 0x00, 0x00

; FUNCTION 0x00882c84, declared_size=28, range_size=28, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroupD0Ev
; demangled: vox::RandomGroup::~RandomGroup()
; decoder-mode: arm
00882c84  10 40 2d e9                                      push {r4, lr}
00882c88  00 40 a0 e1                                      mov r4, r0
00882c8c  21 ff ff eb                                      bl #0x882918
00882c90  04 00 a0 e1                                      mov r0, r4
00882c94  85 2d ea eb                                      bl #0x30e2b0
00882c98  04 00 a0 e1                                      mov r0, r4
00882c9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00882ca0, declared_size=100, range_size=100, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroup21GetActiveElementIndexEv
; demangled: vox::RandomGroup::GetActiveElementIndex()
; decoder-mode: arm
00882ca0  70 40 2d e9                                      push {r4, r5, r6, lr}
00882ca4  28 40 90 e5                                      ldr r4, [r0, #0x28]
00882ca8  24 30 90 e5                                      ldr r3, [r0, #0x24]
00882cac  00 50 a0 e1                                      mov r5, r0
00882cb0  04 40 63 e0                                      rsb r4, r3, r4
00882cb4  44 41 a0 e1                                      asr r4, r4, #2
00882cb8  00 00 54 e3                                      cmp r4, #0
00882cbc  0e 00 00 da                                      ble #0x882cfc
00882cc0  38 30 ea eb                                      bl #0x30eda8
00882cc4  48 10 95 e5                                      ldr r1, [r5, #0x48]
00882cc8  0d 2f ea eb                                      bl #0x30e904
00882ccc  24 c0 95 e5                                      ldr ip, [r5, #0x24]
00882cd0  00 30 a0 e3                                      mov r3, #0
00882cd4  03 00 a0 e1                                      mov r0, r3
00882cd8  00 21 9c e7                                      ldr r2, [ip, r0, lsl #2]
00882cdc  04 20 92 e5                                      ldr r2, [r2, #4]
00882ce0  02 30 83 e0                                      add r3, r3, r2
00882ce4  03 00 51 e1                                      cmp r1, r3
00882ce8  02 00 00 ba                                      blt #0x882cf8
00882cec  01 00 80 e2                                      add r0, r0, #1
00882cf0  04 00 50 e1                                      cmp r0, r4
00882cf4  f7 ff ff 1a                                      bne #0x882cd8
00882cf8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00882cfc  00 00 e0 e3                                      mvn r0, #0
00882d00  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00882d94, declared_size=436, range_size=436, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroup23GetGroupElementPositionEv
; demangled: vox::RandomGroup::GetGroupElementPosition()
; decoder-mode: arm
00882d94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00882d98  18 30 90 e5                                      ldr r3, [r0, #0x18]
00882d9c  00 40 a0 e1                                      mov r4, r0
00882da0  00 00 53 e3                                      cmp r3, #0
00882da4  02 00 00 1a                                      bne #0x882db4
00882da8  00 50 e0 e3                                      mvn r5, #0
00882dac  05 00 a0 e1                                      mov r0, r5
00882db0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00882db4  14 20 90 e5                                      ldr r2, [r0, #0x14]
00882db8  00 00 52 e3                                      cmp r2, #0
00882dbc  f9 ff ff 0a                                      beq #0x882da8
00882dc0  44 60 90 e5                                      ldr r6, [r0, #0x44]
00882dc4  00 00 56 e3                                      cmp r6, #0
00882dc8  f6 ff ff ba                                      blt #0x882da8
00882dcc  24 70 90 e5                                      ldr r7, [r0, #0x24]
00882dd0  3c 10 90 e5                                      ldr r1, [r0, #0x3c]
00882dd4  06 21 97 e7                                      ldr r2, [r7, r6, lsl #2]
00882dd8  00 00 51 e3                                      cmp r1, #0
00882ddc  00 50 92 e5                                      ldr r5, [r2]
00882de0  2b 00 00 da                                      ble #0x882e94
00882de4  00 10 a0 e3                                      mov r1, #0
00882de8  0c 00 a0 e3                                      mov r0, #0xc
00882dec  15 36 ea eb                                      bl #0x310648
00882df0  06 31 97 e7                                      ldr r3, [r7, r6, lsl #2]
00882df4  30 c0 84 e2                                      add ip, r4, #0x30
00882df8  08 30 80 e5                                      str r3, [r0, #8]
00882dfc  34 30 94 e5                                      ldr r3, [r4, #0x34]
00882e00  00 c0 80 e5                                      str ip, [r0]
00882e04  04 30 80 e5                                      str r3, [r0, #4]
00882e08  00 00 83 e5                                      str r0, [r3]
00882e0c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00882e10  44 20 94 e5                                      ldr r2, [r4, #0x44]
00882e14  34 00 84 e5                                      str r0, [r4, #0x34]
00882e18  28 10 94 e5                                      ldr r1, [r4, #0x28]
00882e1c  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00882e20  48 e0 94 e5                                      ldr lr, [r4, #0x48]
00882e24  01 10 63 e0                                      rsb r1, r3, r1
00882e28  04 00 90 e5                                      ldr r0, [r0, #4]
00882e2c  41 11 a0 e1                                      asr r1, r1, #2
00882e30  01 10 41 e2                                      sub r1, r1, #1
00882e34  0e 00 60 e0                                      rsb r0, r0, lr
00882e38  48 00 84 e5                                      str r0, [r4, #0x48]
00882e3c  01 11 93 e7                                      ldr r1, [r3, r1, lsl #2]
00882e40  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
00882e44  28 e0 94 e5                                      ldr lr, [r4, #0x28]
00882e48  30 20 94 e5                                      ldr r2, [r4, #0x30]
00882e4c  04 10 4e e2                                      sub r1, lr, #4
00882e50  02 00 5c e1                                      cmp ip, r2
00882e54  28 10 84 e5                                      str r1, [r4, #0x28]
00882e58  00 00 a0 03                                      moveq r0, #0
00882e5c  05 00 00 0a                                      beq #0x882e78
00882e60  02 30 a0 e1                                      mov r3, r2
00882e64  00 00 a0 e3                                      mov r0, #0
00882e68  00 30 93 e5                                      ldr r3, [r3]
00882e6c  01 00 80 e2                                      add r0, r0, #1
00882e70  03 00 5c e1                                      cmp ip, r3
00882e74  fb ff ff 1a                                      bne #0x882e68
00882e78  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00882e7c  00 00 53 e1                                      cmp r3, r0
00882e80  14 00 00 ba                                      blt #0x882ed8
00882e84  18 30 94 e5                                      ldr r3, [r4, #0x18]
00882e88  44 60 94 e5                                      ldr r6, [r4, #0x44]
00882e8c  00 20 a0 e3                                      mov r2, #0
00882e90  58 20 84 e5                                      str r2, [r4, #0x58]
00882e94  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00882e98  01 20 43 e2                                      sub r2, r3, #1
00882e9c  18 20 84 e5                                      str r2, [r4, #0x18]
00882ea0  01 20 41 e2                                      sub r2, r1, #1
00882ea4  00 00 52 e3                                      cmp r2, #0
00882ea8  20 30 84 e5                                      str r3, [r4, #0x20]
00882eac  14 30 94 05                                      ldreq r3, [r4, #0x14]
00882eb0  4c 20 84 e5                                      str r2, [r4, #0x4c]
00882eb4  54 10 84 e5                                      str r1, [r4, #0x54]
00882eb8  01 20 43 02                                      subeq r2, r3, #1
00882ebc  14 20 84 05                                      streq r2, [r4, #0x14]
00882ec0  1c 30 84 05                                      streq r3, [r4, #0x1c]
00882ec4  50 60 84 e5                                      str r6, [r4, #0x50]
00882ec8  04 00 a0 e1                                      mov r0, r4
00882ecc  73 ff ff eb                                      bl #0x882ca0
00882ed0  44 00 84 e5                                      str r0, [r4, #0x44]
00882ed4  b4 ff ff ea                                      b #0x882dac
00882ed8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00882edc  03 00 51 e1                                      cmp r1, r3
00882ee0  14 00 00 0a                                      beq #0x882f38
00882ee4  08 30 92 e5                                      ldr r3, [r2, #8]
00882ee8  04 30 0e e5                                      str r3, [lr, #-4]
00882eec  28 30 94 e5                                      ldr r3, [r4, #0x28]
00882ef0  04 30 83 e2                                      add r3, r3, #4
00882ef4  28 30 84 e5                                      str r3, [r4, #0x28]
00882ef8  30 30 94 e5                                      ldr r3, [r4, #0x30]
00882efc  48 10 94 e5                                      ldr r1, [r4, #0x48]
00882f00  08 20 93 e5                                      ldr r2, [r3, #8]
00882f04  03 00 a0 e1                                      mov r0, r3
00882f08  04 20 92 e5                                      ldr r2, [r2, #4]
00882f0c  02 20 81 e0                                      add r2, r1, r2
00882f10  48 20 84 e5                                      str r2, [r4, #0x48]
00882f14  0c 00 93 e8                                      ldm r3, {r2, r3}
00882f18  00 20 83 e5                                      str r2, [r3]
00882f1c  04 30 82 e5                                      str r3, [r2, #4]
00882f20  47 35 ea eb                                      bl #0x310444
00882f24  01 30 a0 e3                                      mov r3, #1
00882f28  58 30 84 e5                                      str r3, [r4, #0x58]
00882f2c  44 60 94 e5                                      ldr r6, [r4, #0x44]
00882f30  18 30 94 e5                                      ldr r3, [r4, #0x18]
00882f34  d6 ff ff ea                                      b #0x882e94
00882f38  08 20 82 e2                                      add r2, r2, #8
00882f3c  24 00 84 e2                                      add r0, r4, #0x24
00882f40  6f ff ff eb                                      bl #0x882d04
00882f44  eb ff ff ea                                      b #0x882ef8

; FUNCTION 0x00882f48, declared_size=320, range_size=320, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroup8SetStateEPNS_16RandomGroupStateE
; demangled: vox::RandomGroup::SetState(vox::RandomGroupState*)
; decoder-mode: arm
00882f48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00882f4c  00 30 91 e5                                      ldr r3, [r1]
00882f50  01 70 a0 e1                                      mov r7, r1
00882f54  24 20 90 e5                                      ldr r2, [r0, #0x24]
00882f58  14 30 80 e5                                      str r3, [r0, #0x14]
00882f5c  04 30 91 e5                                      ldr r3, [r1, #4]
00882f60  28 10 90 e5                                      ldr r1, [r0, #0x28]
00882f64  00 40 a0 e1                                      mov r4, r0
00882f68  18 30 80 e5                                      str r3, [r0, #0x18]
00882f6c  08 30 97 e5                                      ldr r3, [r7, #8]
00882f70  01 00 52 e1                                      cmp r2, r1
00882f74  44 30 80 e5                                      str r3, [r0, #0x44]
00882f78  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00882f7c  48 30 80 e5                                      str r3, [r0, #0x48]
00882f80  10 30 97 e5                                      ldr r3, [r7, #0x10]
00882f84  4c 30 80 e5                                      str r3, [r0, #0x4c]
00882f88  14 30 97 e5                                      ldr r3, [r7, #0x14]
00882f8c  1c 30 80 e5                                      str r3, [r0, #0x1c]
00882f90  18 30 97 e5                                      ldr r3, [r7, #0x18]
00882f94  20 30 80 e5                                      str r3, [r0, #0x20]
00882f98  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
00882f9c  50 30 80 e5                                      str r3, [r0, #0x50]
00882fa0  20 30 97 e5                                      ldr r3, [r7, #0x20]
00882fa4  28 20 80 15                                      strne r2, [r0, #0x28]
00882fa8  54 30 80 e5                                      str r3, [r0, #0x54]
00882fac  24 30 97 e5                                      ldr r3, [r7, #0x24]
00882fb0  60 00 93 e8                                      ldm r3, {r5, r6}
00882fb4  06 00 55 e1                                      cmp r5, r6
00882fb8  13 00 00 0a                                      beq #0x88300c
00882fbc  24 80 80 e2                                      add r8, r0, #0x24
00882fc0  07 00 00 ea                                      b #0x882fe4
00882fc4  00 30 95 e5                                      ldr r3, [r5]
00882fc8  04 50 85 e2                                      add r5, r5, #4
00882fcc  06 00 55 e1                                      cmp r5, r6
00882fd0  00 30 81 e5                                      str r3, [r1]
00882fd4  28 30 94 e5                                      ldr r3, [r4, #0x28]
00882fd8  04 30 83 e2                                      add r3, r3, #4
00882fdc  28 30 84 e5                                      str r3, [r4, #0x28]
00882fe0  09 00 00 0a                                      beq #0x88300c
00882fe4  28 10 94 e5                                      ldr r1, [r4, #0x28]
00882fe8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00882fec  03 00 51 e1                                      cmp r1, r3
00882ff0  f3 ff ff 1a                                      bne #0x882fc4
00882ff4  05 20 a0 e1                                      mov r2, r5
00882ff8  08 00 a0 e1                                      mov r0, r8
00882ffc  04 50 85 e2                                      add r5, r5, #4
00883000  3f ff ff eb                                      bl #0x882d04
00883004  06 00 55 e1                                      cmp r5, r6
00883008  f5 ff ff 1a                                      bne #0x882fe4
0088300c  04 80 a0 e1                                      mov r8, r4
00883010  30 60 b8 e5                                      ldr r6, [r8, #0x30]!
00883014  08 00 56 e1                                      cmp r6, r8
00883018  07 00 00 0a                                      beq #0x88303c
0088301c  06 00 a0 e1                                      mov r0, r6
00883020  00 00 00 ea                                      b #0x883028
00883024  05 00 a0 e1                                      mov r0, r5
00883028  00 50 90 e5                                      ldr r5, [r0]
0088302c  04 35 ea eb                                      bl #0x310444
00883030  08 00 55 e1                                      cmp r5, r8
00883034  fa ff ff 1a                                      bne #0x883024
00883038  08 60 a0 e1                                      mov r6, r8
0088303c  30 60 84 e5                                      str r6, [r4, #0x30]
00883040  34 60 84 e5                                      str r6, [r4, #0x34]
00883044  28 70 97 e5                                      ldr r7, [r7, #0x28]
00883048  00 50 97 e5                                      ldr r5, [r7]
0088304c  0a 00 00 ea                                      b #0x88307c
00883050  0c 00 a0 e3                                      mov r0, #0xc
00883054  00 10 a0 e3                                      mov r1, #0
00883058  7a 35 ea eb                                      bl #0x310648
0088305c  08 30 95 e5                                      ldr r3, [r5, #8]
00883060  08 30 80 e5                                      str r3, [r0, #8]
00883064  34 30 94 e5                                      ldr r3, [r4, #0x34]
00883068  00 60 80 e5                                      str r6, [r0]
0088306c  04 30 80 e5                                      str r3, [r0, #4]
00883070  00 00 83 e5                                      str r0, [r3]
00883074  34 00 84 e5                                      str r0, [r4, #0x34]
00883078  00 50 95 e5                                      ldr r5, [r5]
0088307c  05 00 57 e1                                      cmp r7, r5
00883080  f2 ff ff 1a                                      bne #0x883050
00883084  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00883088, declared_size=244, range_size=244, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroup5ResetEi
; demangled: vox::RandomGroup::Reset(int)
; decoder-mode: arm
00883088  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088308c  00 50 a0 e1                                      mov r5, r0
00883090  30 20 95 e5                                      ldr r2, [r5, #0x30]
00883094  30 40 80 e2                                      add r4, r0, #0x30
00883098  08 d0 4d e2                                      sub sp, sp, #8
0088309c  04 00 52 e1                                      cmp r2, r4
008830a0  01 60 a0 e1                                      mov r6, r1
008830a4  24 80 80 e2                                      add r8, r0, #0x24
008830a8  04 70 8d e2                                      add r7, sp, #4
008830ac  1a 00 00 0a                                      beq #0x88311c
008830b0  02 30 a0 e1                                      mov r3, r2
008830b4  00 30 93 e5                                      ldr r3, [r3]
008830b8  03 00 54 e1                                      cmp r4, r3
008830bc  fc ff ff 1a                                      bne #0x8830b4
008830c0  08 30 92 e5                                      ldr r3, [r2, #8]
008830c4  48 c0 95 e5                                      ldr ip, [r5, #0x48]
008830c8  28 10 95 e5                                      ldr r1, [r5, #0x28]
008830cc  04 30 8d e5                                      str r3, [sp, #4]
008830d0  04 20 93 e5                                      ldr r2, [r3, #4]
008830d4  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
008830d8  02 20 8c e0                                      add r2, ip, r2
008830dc  00 00 51 e1                                      cmp r1, r0
008830e0  48 20 85 e5                                      str r2, [r5, #0x48]
008830e4  20 00 00 0a                                      beq #0x88316c
008830e8  00 30 81 e5                                      str r3, [r1]
008830ec  28 30 95 e5                                      ldr r3, [r5, #0x28]
008830f0  04 30 83 e2                                      add r3, r3, #4
008830f4  28 30 85 e5                                      str r3, [r5, #0x28]
008830f8  30 00 95 e5                                      ldr r0, [r5, #0x30]
008830fc  04 20 90 e5                                      ldr r2, [r0, #4]
00883100  00 30 90 e5                                      ldr r3, [r0]
00883104  00 30 82 e5                                      str r3, [r2]
00883108  04 20 83 e5                                      str r2, [r3, #4]
0088310c  cc 34 ea eb                                      bl #0x310444
00883110  30 20 95 e5                                      ldr r2, [r5, #0x30]
00883114  04 00 52 e1                                      cmp r2, r4
00883118  e4 ff ff 1a                                      bne #0x8830b0
0088311c  38 20 95 e5                                      ldr r2, [r5, #0x38]
00883120  44 30 95 e5                                      ldr r3, [r5, #0x44]
00883124  14 c0 95 e5                                      ldr ip, [r5, #0x14]
00883128  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
0088312c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00883130  4c 20 85 e5                                      str r2, [r5, #0x4c]
00883134  50 30 85 e5                                      str r3, [r5, #0x50]
00883138  14 00 85 e5                                      str r0, [r5, #0x14]
0088313c  1c c0 85 e5                                      str ip, [r5, #0x1c]
00883140  54 10 85 e5                                      str r1, [r5, #0x54]
00883144  05 00 a0 e1                                      mov r0, r5
00883148  d4 fe ff eb                                      bl #0x882ca0
0088314c  00 00 56 e3                                      cmp r6, #0
00883150  18 20 95 05                                      ldreq r2, [r5, #0x18]
00883154  10 30 95 05                                      ldreq r3, [r5, #0x10]
00883158  44 00 85 e5                                      str r0, [r5, #0x44]
0088315c  20 20 85 05                                      streq r2, [r5, #0x20]
00883160  18 30 85 05                                      streq r3, [r5, #0x18]
00883164  08 d0 8d e2                                      add sp, sp, #8
00883168  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0088316c  08 00 a0 e1                                      mov r0, r8
00883170  07 20 a0 e1                                      mov r2, r7
00883174  e2 fe ff eb                                      bl #0x882d04
00883178  de ff ff ea                                      b #0x8830f8

; FUNCTION 0x0088317c, declared_size=324, range_size=324, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroupC1ERS0_
; demangled: vox::RandomGroup::RandomGroup(vox::RandomGroup&)
; decoder-mode: arm
0088317c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00883180  30 a1 9f e5                                      ldr sl, [pc, #0x130]
00883184  08 d0 4d e2                                      sub sp, sp, #8
00883188  00 40 a0 e1                                      mov r4, r0
0088318c  01 80 a0 e1                                      mov r8, r1
00883190  01 fa ff eb                                      bl #0x88199c
00883194  20 31 9f e5                                      ldr r3, [pc, #0x120]
00883198  0a a0 8f e0                                      add sl, pc, sl
0088319c  00 60 a0 e3                                      mov r6, #0
008831a0  03 30 9a e7                                      ldr r3, [sl, r3]
008831a4  30 20 84 e2                                      add r2, r4, #0x30
008831a8  34 20 84 e5                                      str r2, [r4, #0x34]
008831ac  08 30 83 e2                                      add r3, r3, #8
008831b0  00 30 84 e5                                      str r3, [r4]
008831b4  24 60 84 e5                                      str r6, [r4, #0x24]
008831b8  28 60 84 e5                                      str r6, [r4, #0x28]
008831bc  2c 60 84 e5                                      str r6, [r4, #0x2c]
008831c0  30 20 84 e5                                      str r2, [r4, #0x30]
008831c4  24 50 98 e5                                      ldr r5, [r8, #0x24]
008831c8  28 70 98 e5                                      ldr r7, [r8, #0x28]
008831cc  07 00 55 e1                                      cmp r5, r7
008831d0  25 00 00 0a                                      beq #0x88326c
008831d4  24 a0 84 e2                                      add sl, r4, #0x24
008831d8  04 90 8d e2                                      add sb, sp, #4
008831dc  0a 00 00 ea                                      b #0x88320c
008831e0  04 30 9d e5                                      ldr r3, [sp, #4]
008831e4  04 50 85 e2                                      add r5, r5, #4
008831e8  07 00 55 e1                                      cmp r5, r7
008831ec  00 30 81 e5                                      str r3, [r1]
008831f0  28 30 94 e5                                      ldr r3, [r4, #0x28]
008831f4  04 30 83 e2                                      add r3, r3, #4
008831f8  28 30 84 e5                                      str r3, [r4, #0x28]
008831fc  38 30 94 e5                                      ldr r3, [r4, #0x38]
00883200  01 30 83 e2                                      add r3, r3, #1
00883204  38 30 84 e5                                      str r3, [r4, #0x38]
00883208  17 00 00 0a                                      beq #0x88326c
0088320c  00 10 a0 e3                                      mov r1, #0
00883210  08 00 a0 e3                                      mov r0, #8
00883214  0b 35 ea eb                                      bl #0x310648
00883218  00 60 80 e5                                      str r6, [r0]
0088321c  04 60 80 e5                                      str r6, [r0, #4]
00883220  04 00 8d e5                                      str r0, [sp, #4]
00883224  00 30 95 e5                                      ldr r3, [r5]
00883228  00 20 93 e5                                      ldr r2, [r3]
0088322c  00 20 80 e5                                      str r2, [r0]
00883230  04 30 93 e5                                      ldr r3, [r3, #4]
00883234  04 30 80 e5                                      str r3, [r0, #4]
00883238  28 10 94 e5                                      ldr r1, [r4, #0x28]
0088323c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00883240  03 00 51 e1                                      cmp r1, r3
00883244  e5 ff ff 1a                                      bne #0x8831e0
00883248  0a 00 a0 e1                                      mov r0, sl
0088324c  09 20 a0 e1                                      mov r2, sb
00883250  ab fe ff eb                                      bl #0x882d04
00883254  38 30 94 e5                                      ldr r3, [r4, #0x38]
00883258  04 50 85 e2                                      add r5, r5, #4
0088325c  07 00 55 e1                                      cmp r5, r7
00883260  01 30 83 e2                                      add r3, r3, #1
00883264  38 30 84 e5                                      str r3, [r4, #0x38]
00883268  e7 ff ff 1a                                      bne #0x88320c
0088326c  40 20 98 e5                                      ldr r2, [r8, #0x40]
00883270  38 30 94 e5                                      ldr r3, [r4, #0x38]
00883274  04 00 a0 e1                                      mov r0, r4
00883278  40 20 84 e5                                      str r2, [r4, #0x40]
0088327c  3c 20 98 e5                                      ldr r2, [r8, #0x3c]
00883280  3c 20 84 e5                                      str r2, [r4, #0x3c]
00883284  48 20 98 e5                                      ldr r2, [r8, #0x48]
00883288  54 30 84 e5                                      str r3, [r4, #0x54]
0088328c  4c 30 84 e5                                      str r3, [r4, #0x4c]
00883290  48 20 84 e5                                      str r2, [r4, #0x48]
00883294  81 fe ff eb                                      bl #0x882ca0
00883298  00 30 e0 e3                                      mvn r3, #0
0088329c  44 00 84 e5                                      str r0, [r4, #0x44]
008832a0  50 30 84 e5                                      str r3, [r4, #0x50]
008832a4  58 30 98 e5                                      ldr r3, [r8, #0x58]
008832a8  04 00 a0 e1                                      mov r0, r4
008832ac  58 30 84 e5                                      str r3, [r4, #0x58]
008832b0  08 d0 8d e2                                      add sp, sp, #8
008832b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
008832b8  f8 18 11 00 70 18 00 00                          .byte 0xf8, 0x18, 0x11, 0x00, 0x70, 0x18, 0x00, 0x00

; FUNCTION 0x008832c0, declared_size=324, range_size=324, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroupC2ERS0_
; demangled: vox::RandomGroup::RandomGroup(vox::RandomGroup&)
; decoder-mode: arm
008832c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008832c4  30 a1 9f e5                                      ldr sl, [pc, #0x130]
008832c8  08 d0 4d e2                                      sub sp, sp, #8
008832cc  00 40 a0 e1                                      mov r4, r0
008832d0  01 80 a0 e1                                      mov r8, r1
008832d4  b0 f9 ff eb                                      bl #0x88199c
008832d8  20 31 9f e5                                      ldr r3, [pc, #0x120]
008832dc  0a a0 8f e0                                      add sl, pc, sl
008832e0  00 60 a0 e3                                      mov r6, #0
008832e4  03 30 9a e7                                      ldr r3, [sl, r3]
008832e8  30 20 84 e2                                      add r2, r4, #0x30
008832ec  34 20 84 e5                                      str r2, [r4, #0x34]
008832f0  08 30 83 e2                                      add r3, r3, #8
008832f4  00 30 84 e5                                      str r3, [r4]
008832f8  24 60 84 e5                                      str r6, [r4, #0x24]
008832fc  28 60 84 e5                                      str r6, [r4, #0x28]
00883300  2c 60 84 e5                                      str r6, [r4, #0x2c]
00883304  30 20 84 e5                                      str r2, [r4, #0x30]
00883308  24 50 98 e5                                      ldr r5, [r8, #0x24]
0088330c  28 70 98 e5                                      ldr r7, [r8, #0x28]
00883310  07 00 55 e1                                      cmp r5, r7
00883314  25 00 00 0a                                      beq #0x8833b0
00883318  24 a0 84 e2                                      add sl, r4, #0x24
0088331c  04 90 8d e2                                      add sb, sp, #4
00883320  0a 00 00 ea                                      b #0x883350
00883324  04 30 9d e5                                      ldr r3, [sp, #4]
00883328  04 50 85 e2                                      add r5, r5, #4
0088332c  07 00 55 e1                                      cmp r5, r7
00883330  00 30 81 e5                                      str r3, [r1]
00883334  28 30 94 e5                                      ldr r3, [r4, #0x28]
00883338  04 30 83 e2                                      add r3, r3, #4
0088333c  28 30 84 e5                                      str r3, [r4, #0x28]
00883340  38 30 94 e5                                      ldr r3, [r4, #0x38]
00883344  01 30 83 e2                                      add r3, r3, #1
00883348  38 30 84 e5                                      str r3, [r4, #0x38]
0088334c  17 00 00 0a                                      beq #0x8833b0
00883350  00 10 a0 e3                                      mov r1, #0
00883354  08 00 a0 e3                                      mov r0, #8
00883358  ba 34 ea eb                                      bl #0x310648
0088335c  00 60 80 e5                                      str r6, [r0]
00883360  04 60 80 e5                                      str r6, [r0, #4]
00883364  04 00 8d e5                                      str r0, [sp, #4]
00883368  00 30 95 e5                                      ldr r3, [r5]
0088336c  00 20 93 e5                                      ldr r2, [r3]
00883370  00 20 80 e5                                      str r2, [r0]
00883374  04 30 93 e5                                      ldr r3, [r3, #4]
00883378  04 30 80 e5                                      str r3, [r0, #4]
0088337c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00883380  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00883384  03 00 51 e1                                      cmp r1, r3
00883388  e5 ff ff 1a                                      bne #0x883324
0088338c  0a 00 a0 e1                                      mov r0, sl
00883390  09 20 a0 e1                                      mov r2, sb
00883394  5a fe ff eb                                      bl #0x882d04
00883398  38 30 94 e5                                      ldr r3, [r4, #0x38]
0088339c  04 50 85 e2                                      add r5, r5, #4
008833a0  07 00 55 e1                                      cmp r5, r7
008833a4  01 30 83 e2                                      add r3, r3, #1
008833a8  38 30 84 e5                                      str r3, [r4, #0x38]
008833ac  e7 ff ff 1a                                      bne #0x883350
008833b0  40 20 98 e5                                      ldr r2, [r8, #0x40]
008833b4  38 30 94 e5                                      ldr r3, [r4, #0x38]
008833b8  04 00 a0 e1                                      mov r0, r4
008833bc  40 20 84 e5                                      str r2, [r4, #0x40]
008833c0  3c 20 98 e5                                      ldr r2, [r8, #0x3c]
008833c4  3c 20 84 e5                                      str r2, [r4, #0x3c]
008833c8  48 20 98 e5                                      ldr r2, [r8, #0x48]
008833cc  54 30 84 e5                                      str r3, [r4, #0x54]
008833d0  4c 30 84 e5                                      str r3, [r4, #0x4c]
008833d4  48 20 84 e5                                      str r2, [r4, #0x48]
008833d8  30 fe ff eb                                      bl #0x882ca0
008833dc  00 30 e0 e3                                      mvn r3, #0
008833e0  44 00 84 e5                                      str r0, [r4, #0x44]
008833e4  50 30 84 e5                                      str r3, [r4, #0x50]
008833e8  58 30 98 e5                                      ldr r3, [r8, #0x58]
008833ec  04 00 a0 e1                                      mov r0, r4
008833f0  58 30 84 e5                                      str r3, [r4, #0x58]
008833f4  08 d0 8d e2                                      add sp, sp, #8
008833f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
008833fc  b4 17 11 00 70 18 00 00                          .byte 0xb4, 0x17, 0x11, 0x00, 0x70, 0x18, 0x00, 0x00

; FUNCTION 0x00883404, declared_size=236, range_size=236, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroup18SetToPreviousStateEv
; demangled: vox::RandomGroup::SetToPreviousState()
; decoder-mode: arm
00883404  70 40 2d e9                                      push {r4, r5, r6, lr}
00883408  00 40 a0 e1                                      mov r4, r0
0088340c  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
00883410  20 10 94 e5                                      ldr r1, [r4, #0x20]
00883414  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00883418  50 20 94 e5                                      ldr r2, [r4, #0x50]
0088341c  54 30 94 e5                                      ldr r3, [r4, #0x54]
00883420  00 00 5c e3                                      cmp ip, #0
00883424  14 00 84 e5                                      str r0, [r4, #0x14]
00883428  18 10 84 e5                                      str r1, [r4, #0x18]
0088342c  44 20 84 e5                                      str r2, [r4, #0x44]
00883430  4c 30 84 e5                                      str r3, [r4, #0x4c]
00883434  28 00 00 da                                      ble #0x8834dc
00883438  58 50 94 e5                                      ldr r5, [r4, #0x58]
0088343c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00883440  00 00 55 e3                                      cmp r5, #0
00883444  04 50 11 15                                      ldrne r5, [r1, #-4]
00883448  04 10 41 12                                      subne r1, r1, #4
0088344c  28 10 84 15                                      strne r1, [r4, #0x28]
00883450  48 20 94 15                                      ldrne r2, [r4, #0x48]
00883454  04 30 95 15                                      ldrne r3, [r5, #4]
00883458  02 30 63 10                                      rsbne r3, r3, r2
0088345c  48 30 84 15                                      strne r3, [r4, #0x48]
00883460  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00883464  34 20 94 e5                                      ldr r2, [r4, #0x34]
00883468  01 00 53 e1                                      cmp r3, r1
0088346c  1b 00 00 0a                                      beq #0x8834e0
00883470  08 30 92 e5                                      ldr r3, [r2, #8]
00883474  00 30 81 e5                                      str r3, [r1]
00883478  28 30 94 e5                                      ldr r3, [r4, #0x28]
0088347c  04 30 83 e2                                      add r3, r3, #4
00883480  28 30 84 e5                                      str r3, [r4, #0x28]
00883484  34 30 94 e5                                      ldr r3, [r4, #0x34]
00883488  48 10 94 e5                                      ldr r1, [r4, #0x48]
0088348c  08 20 93 e5                                      ldr r2, [r3, #8]
00883490  03 00 a0 e1                                      mov r0, r3
00883494  04 20 92 e5                                      ldr r2, [r2, #4]
00883498  02 20 81 e0                                      add r2, r1, r2
0088349c  48 20 84 e5                                      str r2, [r4, #0x48]
008834a0  0c 00 93 e8                                      ldm r3, {r2, r3}
008834a4  00 20 83 e5                                      str r2, [r3]
008834a8  04 30 82 e5                                      str r3, [r2, #4]
008834ac  e4 33 ea eb                                      bl #0x310444
008834b0  00 00 55 e3                                      cmp r5, #0
008834b4  08 00 00 0a                                      beq #0x8834dc
008834b8  0c 00 a0 e3                                      mov r0, #0xc
008834bc  00 10 a0 e3                                      mov r1, #0
008834c0  60 34 ea eb                                      bl #0x310648
008834c4  08 50 80 e5                                      str r5, [r0, #8]
008834c8  34 30 94 e5                                      ldr r3, [r4, #0x34]
008834cc  30 20 84 e2                                      add r2, r4, #0x30
008834d0  0c 00 80 e8                                      stm r0, {r2, r3}
008834d4  00 00 83 e5                                      str r0, [r3]
008834d8  34 00 84 e5                                      str r0, [r4, #0x34]
008834dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
008834e0  08 20 82 e2                                      add r2, r2, #8
008834e4  24 00 84 e2                                      add r0, r4, #0x24
008834e8  05 fe ff eb                                      bl #0x882d04
008834ec  e4 ff ff ea                                      b #0x883484

; FUNCTION 0x008834f0, declared_size=448, range_size=448, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroup8SetStateERS0_
; demangled: vox::RandomGroup::SetState(vox::RandomGroup&)
; decoder-mode: arm
008834f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008834f4  01 60 a0 e1                                      mov r6, r1
008834f8  00 40 a0 e1                                      mov r4, r0
008834fc  62 f9 ff eb                                      bl #0x881a8c
00883500  28 70 96 e5                                      ldr r7, [r6, #0x28]
00883504  24 30 96 e5                                      ldr r3, [r6, #0x24]
00883508  28 10 94 e5                                      ldr r1, [r4, #0x28]
0088350c  24 80 94 e5                                      ldr r8, [r4, #0x24]
00883510  07 70 63 e0                                      rsb r7, r3, r7
00883514  47 71 a0 e1                                      asr r7, r7, #2
00883518  01 80 68 e0                                      rsb r8, r8, r1
0088351c  48 81 47 e0                                      sub r8, r7, r8, asr #2
00883520  00 00 58 e3                                      cmp r8, #0
00883524  3d 00 00 da                                      ble #0x883620
00883528  24 a0 84 e2                                      add sl, r4, #0x24
0088352c  00 50 a0 e3                                      mov r5, #0
00883530  08 00 00 ea                                      b #0x883558
00883534  08 30 92 e5                                      ldr r3, [r2, #8]
00883538  01 50 85 e2                                      add r5, r5, #1
0088353c  08 00 55 e1                                      cmp r5, r8
00883540  00 30 81 e5                                      str r3, [r1]
00883544  28 30 94 e5                                      ldr r3, [r4, #0x28]
00883548  04 30 83 e2                                      add r3, r3, #4
0088354c  28 30 84 e5                                      str r3, [r4, #0x28]
00883550  0a 00 00 0a                                      beq #0x883580
00883554  28 10 94 e5                                      ldr r1, [r4, #0x28]
00883558  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0088355c  30 20 94 e5                                      ldr r2, [r4, #0x30]
00883560  03 00 51 e1                                      cmp r1, r3
00883564  f2 ff ff 1a                                      bne #0x883534
00883568  08 20 82 e2                                      add r2, r2, #8
0088356c  0a 00 a0 e1                                      mov r0, sl
00883570  01 50 85 e2                                      add r5, r5, #1
00883574  e2 fd ff eb                                      bl #0x882d04
00883578  08 00 55 e1                                      cmp r5, r8
0088357c  f4 ff ff 1a                                      bne #0x883554
00883580  00 00 57 e3                                      cmp r7, #0
00883584  07 00 00 da                                      ble #0x8835a8
00883588  00 30 a0 e3                                      mov r3, #0
0088358c  24 10 96 e5                                      ldr r1, [r6, #0x24]
00883590  24 20 94 e5                                      ldr r2, [r4, #0x24]
00883594  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
00883598  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
0088359c  01 30 83 e2                                      add r3, r3, #1
008835a0  07 00 53 e1                                      cmp r3, r7
008835a4  f8 ff ff 1a                                      bne #0x88358c
008835a8  06 10 a0 e1                                      mov r1, r6
008835ac  30 30 b1 e5                                      ldr r3, [r1, #0x30]!
008835b0  01 00 53 e1                                      cmp r3, r1
008835b4  08 00 00 0a                                      beq #0x8835dc
008835b8  00 20 a0 e3                                      mov r2, #0
008835bc  00 30 93 e5                                      ldr r3, [r3]
008835c0  01 20 82 e2                                      add r2, r2, #1
008835c4  03 00 51 e1                                      cmp r1, r3
008835c8  fb ff ff 1a                                      bne #0x8835bc
008835cc  00 30 a0 e3                                      mov r3, #0
008835d0  01 30 83 e2                                      add r3, r3, #1
008835d4  02 00 53 e1                                      cmp r3, r2
008835d8  fc ff ff 1a                                      bne #0x8835d0
008835dc  40 30 96 e5                                      ldr r3, [r6, #0x40]
008835e0  40 30 84 e5                                      str r3, [r4, #0x40]
008835e4  3c 30 96 e5                                      ldr r3, [r6, #0x3c]
008835e8  3c 30 84 e5                                      str r3, [r4, #0x3c]
008835ec  48 30 96 e5                                      ldr r3, [r6, #0x48]
008835f0  48 30 84 e5                                      str r3, [r4, #0x48]
008835f4  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
008835f8  4c 30 84 e5                                      str r3, [r4, #0x4c]
008835fc  54 30 96 e5                                      ldr r3, [r6, #0x54]
00883600  54 30 84 e5                                      str r3, [r4, #0x54]
00883604  44 30 96 e5                                      ldr r3, [r6, #0x44]
00883608  44 30 84 e5                                      str r3, [r4, #0x44]
0088360c  50 30 96 e5                                      ldr r3, [r6, #0x50]
00883610  50 30 84 e5                                      str r3, [r4, #0x50]
00883614  58 30 96 e5                                      ldr r3, [r6, #0x58]
00883618  58 30 84 e5                                      str r3, [r4, #0x58]
0088361c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00883620  d6 ff ff 0a                                      beq #0x883580
00883624  00 80 68 e2                                      rsb r8, r8, #0
00883628  24 a0 84 e2                                      add sl, r4, #0x24
0088362c  00 50 a0 e3                                      mov r5, #0
00883630  08 00 00 ea                                      b #0x883658
00883634  08 30 92 e5                                      ldr r3, [r2, #8]
00883638  00 30 81 e5                                      str r3, [r1]
0088363c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00883640  04 90 81 e2                                      add sb, r1, #4
00883644  28 90 84 e5                                      str sb, [r4, #0x28]
00883648  09 10 a0 e1                                      mov r1, sb
0088364c  01 50 85 e2                                      add r5, r5, #1
00883650  05 00 58 e1                                      cmp r8, r5
00883654  09 00 00 da                                      ble #0x883680
00883658  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0088365c  30 20 94 e5                                      ldr r2, [r4, #0x30]
00883660  01 00 53 e1                                      cmp r3, r1
00883664  f2 ff ff 1a                                      bne #0x883634
00883668  08 20 82 e2                                      add r2, r2, #8
0088366c  0a 00 a0 e1                                      mov r0, sl
00883670  a3 fd ff eb                                      bl #0x882d04
00883674  28 10 94 e5                                      ldr r1, [r4, #0x28]
00883678  01 90 a0 e1                                      mov sb, r1
0088367c  f2 ff ff ea                                      b #0x88364c
00883680  0c 00 a0 e3                                      mov r0, #0xc
00883684  00 10 a0 e3                                      mov r1, #0
00883688  30 50 94 e5                                      ldr r5, [r4, #0x30]
0088368c  ed 33 ea eb                                      bl #0x310648
00883690  04 30 19 e5                                      ldr r3, [sb, #-4]
00883694  08 30 80 e5                                      str r3, [r0, #8]
00883698  04 30 95 e5                                      ldr r3, [r5, #4]
0088369c  00 50 80 e5                                      str r5, [r0]
008836a0  04 30 80 e5                                      str r3, [r0, #4]
008836a4  00 00 83 e5                                      str r0, [r3]
008836a8  04 00 85 e5                                      str r0, [r5, #4]
008836ac  b3 ff ff ea                                      b #0x883580

; FUNCTION 0x008836b0, declared_size=172, range_size=172, mode=arm
; class-group: vox::RandomGroup
; alias: _ZN3vox11RandomGroup10AddElementEPNS_18RandomGroupElementE
; demangled: vox::RandomGroup::AddElement(vox::RandomGroupElement*)
; decoder-mode: arm
008836b0  30 40 2d e9                                      push {r4, r5, lr}
008836b4  00 40 a0 e1                                      mov r4, r0
008836b8  01 50 a0 e1                                      mov r5, r1
008836bc  0c d0 4d e2                                      sub sp, sp, #0xc
008836c0  00 10 a0 e3                                      mov r1, #0
008836c4  08 00 a0 e3                                      mov r0, #8
008836c8  de 33 ea eb                                      bl #0x310648
008836cc  00 30 a0 e3                                      mov r3, #0
008836d0  04 30 80 e5                                      str r3, [r0, #4]
008836d4  00 30 80 e5                                      str r3, [r0]
008836d8  00 30 95 e5                                      ldr r3, [r5]
008836dc  04 00 8d e5                                      str r0, [sp, #4]
008836e0  00 30 80 e5                                      str r3, [r0]
008836e4  04 30 95 e5                                      ldr r3, [r5, #4]
008836e8  04 30 80 e5                                      str r3, [r0, #4]
008836ec  28 10 94 e5                                      ldr r1, [r4, #0x28]
008836f0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
008836f4  03 00 51 e1                                      cmp r1, r3
008836f8  13 00 00 0a                                      beq #0x88374c
008836fc  04 30 9d e5                                      ldr r3, [sp, #4]
00883700  00 30 81 e5                                      str r3, [r1]
00883704  28 30 94 e5                                      ldr r3, [r4, #0x28]
00883708  04 30 83 e2                                      add r3, r3, #4
0088370c  28 30 84 e5                                      str r3, [r4, #0x28]
00883710  38 30 94 e5                                      ldr r3, [r4, #0x38]
00883714  40 10 94 e5                                      ldr r1, [r4, #0x40]
00883718  04 20 9d e5                                      ldr r2, [sp, #4]
0088371c  01 30 83 e2                                      add r3, r3, #1
00883720  01 00 71 e3                                      cmn r1, #1
00883724  04 20 92 e5                                      ldr r2, [r2, #4]
00883728  48 00 94 e5                                      ldr r0, [r4, #0x48]
0088372c  38 30 84 e5                                      str r3, [r4, #0x38]
00883730  3c 30 94 05                                      ldreq r3, [r4, #0x3c]
00883734  02 20 80 e0                                      add r2, r0, r2
00883738  48 20 84 e5                                      str r2, [r4, #0x48]
0088373c  01 30 83 02                                      addeq r3, r3, #1
00883740  3c 30 84 05                                      streq r3, [r4, #0x3c]
00883744  0c d0 8d e2                                      add sp, sp, #0xc
00883748  30 80 bd e8                                      pop {r4, r5, pc}
0088374c  24 00 84 e2                                      add r0, r4, #0x24
00883750  04 20 8d e2                                      add r2, sp, #4
00883754  6a fd ff eb                                      bl #0x882d04
00883758  ec ff ff ea                                      b #0x883710
