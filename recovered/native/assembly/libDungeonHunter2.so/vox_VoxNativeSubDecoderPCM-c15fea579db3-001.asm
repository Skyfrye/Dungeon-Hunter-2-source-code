; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00887b0c, declared_size=8, range_size=8, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM4SeekEj
; demangled: vox::VoxNativeSubDecoderPCM::Seek(unsigned int)
; decoder-mode: arm
00887b0c  00 00 a0 e3                                      mov r0, #0
00887b10  1e ff 2f e1                                      bx lr

; FUNCTION 0x00887b14, declared_size=8, range_size=8, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM17GetDecodingBufferEv
; demangled: vox::VoxNativeSubDecoderPCM::GetDecodingBuffer()
; decoder-mode: arm
00887b14  00 00 e0 e3                                      mvn r0, #0
00887b18  1e ff 2f e1                                      bx lr

; FUNCTION 0x00887b1c, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM21ReleaseDecodingBufferEi
; demangled: vox::VoxNativeSubDecoderPCM::ReleaseDecodingBuffer(int)
; decoder-mode: arm
00887b1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00887b20, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM34SetDecodingBufferToSegmentPositionEPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderPCM::SetDecodingBufferToSegmentPosition(vox::SegmentState*)
; decoder-mode: arm
00887b20  1e ff 2f e1                                      bx lr

; FUNCTION 0x00887b24, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCMD2Ev
; demangled: vox::VoxNativeSubDecoderPCM::~VoxNativeSubDecoderPCM()
; decoder-mode: arm
00887b24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00887b28, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCMD1Ev
; demangled: vox::VoxNativeSubDecoderPCM::~VoxNativeSubDecoderPCM()
; decoder-mode: arm
00887b28  1e ff 2f e1                                      bx lr

; FUNCTION 0x00887b2c, declared_size=12, range_size=12, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM31GetBytePositionFromSampleOffsetEj
; demangled: vox::VoxNativeSubDecoderPCM::GetBytePositionFromSampleOffset(unsigned int)
; decoder-mode: arm
00887b2c  f0 01 d0 e1                                      ldrsh r0, [r0, #0x10]
00887b30  90 01 00 e0                                      mul r0, r0, r1
00887b34  1e ff 2f e1                                      bx lr

; FUNCTION 0x00887b38, declared_size=128, range_size=128, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM4SeekEiPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderPCM::Seek(int, vox::SegmentState*)
; decoder-mode: arm
00887b38  70 40 2d e9                                      push {r4, r5, r6, lr}
00887b3c  00 40 51 e2                                      subs r4, r1, #0
00887b40  02 50 a0 e1                                      mov r5, r2
00887b44  10 40 92 b5                                      ldrlt r4, [r2, #0x10]
00887b48  00 30 95 e5                                      ldr r3, [r5]
00887b4c  18 20 90 e5                                      ldr r2, [r0, #0x18]
00887b50  18 10 a0 e3                                      mov r1, #0x18
00887b54  91 03 03 e0                                      mul r3, r1, r3
00887b58  04 20 92 e5                                      ldr r2, [r2, #4]
00887b5c  b0 61 d0 e1                                      ldrh r6, [r0, #0x10]
00887b60  03 10 82 e0                                      add r1, r2, r3
00887b64  08 10 91 e5                                      ldr r1, [r1, #8]
00887b68  01 00 54 e1                                      cmp r4, r1
00887b6c  01 00 00 da                                      ble #0x887b78
00887b70  00 00 e0 e3                                      mvn r0, #0
00887b74  70 80 bd e8                                      pop {r4, r5, r6, pc}
00887b78  03 20 92 e7                                      ldr r2, [r2, r3]
00887b7c  14 10 90 e5                                      ldr r1, [r0, #0x14]
00887b80  76 60 bf e6                                      sxth r6, r6
00887b84  96 04 06 e0                                      mul r6, r6, r4
00887b88  04 30 90 e5                                      ldr r3, [r0, #4]
00887b8c  02 10 81 e0                                      add r1, r1, r2
00887b90  06 10 81 e0                                      add r1, r1, r6
00887b94  03 00 a0 e1                                      mov r0, r3
00887b98  00 20 a0 e3                                      mov r2, #0
00887b9c  00 30 93 e5                                      ldr r3, [r3]
00887ba0  0f e0 a0 e1                                      mov lr, pc
00887ba4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00887ba8  00 00 50 e3                                      cmp r0, #0
00887bac  0c 40 85 05                                      streq r4, [r5, #0xc]
00887bb0  08 60 85 05                                      streq r6, [r5, #8]
00887bb4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00887bb8, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM5ResetEv
; demangled: vox::VoxNativeSubDecoderPCM::Reset()
; decoder-mode: arm
00887bb8  77 f5 ff ea                                      b #0x88519c

; FUNCTION 0x00887bbc, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM8SetStateEPNS_24NativeSubDecoderPCMStateE
; demangled: vox::VoxNativeSubDecoderPCM::SetState(vox::NativeSubDecoderPCMState*)
; decoder-mode: arm
00887bbc  de f4 ff ea                                      b #0x884f3c

; FUNCTION 0x00887bc0, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM8GetStateEPNS_24NativeSubDecoderPCMStateE
; demangled: vox::VoxNativeSubDecoderPCM::GetState(vox::NativeSubDecoderPCMState*)
; decoder-mode: arm
00887bc0  29 f5 ff ea                                      b #0x88506c

; FUNCTION 0x00887bc4, declared_size=600, range_size=600, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM20EmulateDecodeSegmentEiPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderPCM::EmulateDecodeSegment(int, vox::SegmentState*)
; decoder-mode: arm
00887bc4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00887bc8  02 40 a0 e1                                      mov r4, r2
00887bcc  18 20 90 e5                                      ldr r2, [r0, #0x18]
00887bd0  00 30 94 e5                                      ldr r3, [r4]
00887bd4  00 80 a0 e1                                      mov r8, r0
00887bd8  04 00 92 e5                                      ldr r0, [r2, #4]
00887bdc  18 20 a0 e3                                      mov r2, #0x18
00887be0  92 03 02 e0                                      mul r2, r2, r3
00887be4  08 50 94 e5                                      ldr r5, [r4, #8]
00887be8  02 c0 90 e7                                      ldr ip, [r0, r2]
00887bec  04 30 98 e5                                      ldr r3, [r8, #4]
00887bf0  14 20 98 e5                                      ldr r2, [r8, #0x14]
00887bf4  0c 50 85 e0                                      add r5, r5, ip
00887bf8  03 00 a0 e1                                      mov r0, r3
00887bfc  00 30 93 e5                                      ldr r3, [r3]
00887c00  02 50 85 e0                                      add r5, r5, r2
00887c04  01 a0 a0 e1                                      mov sl, r1
00887c08  b0 91 d8 e1                                      ldrh sb, [r8, #0x10]
00887c0c  14 70 94 e5                                      ldr r7, [r4, #0x14]
00887c10  0f e0 a0 e1                                      mov lr, pc
00887c14  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00887c18  00 00 55 e1                                      cmp r5, r0
00887c1c  06 00 00 0a                                      beq #0x887c3c
00887c20  04 30 98 e5                                      ldr r3, [r8, #4]
00887c24  05 10 a0 e1                                      mov r1, r5
00887c28  00 20 a0 e3                                      mov r2, #0
00887c2c  03 00 a0 e1                                      mov r0, r3
00887c30  00 30 93 e5                                      ldr r3, [r3]
00887c34  0f e0 a0 e1                                      mov lr, pc
00887c38  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00887c3c  00 00 5a e3                                      cmp sl, #0
00887c40  00 60 a0 d3                                      movle r6, #0
00887c44  42 00 00 da                                      ble #0x887d54
00887c48  79 90 bf e6                                      sxth sb, sb
00887c4c  97 99 27 e0                                      mla r7, r7, sb, sb
00887c50  00 60 a0 e3                                      mov r6, #0
00887c54  0c b0 a0 e3                                      mov fp, #0xc
00887c58  2b 00 00 ea                                      b #0x887d0c
00887c5c  04 30 98 e5                                      ldr r3, [r8, #4]
00887c60  05 10 a0 e1                                      mov r1, r5
00887c64  01 20 a0 e3                                      mov r2, #1
00887c68  03 00 a0 e1                                      mov r0, r3
00887c6c  00 30 93 e5                                      ldr r3, [r3]
00887c70  0f e0 a0 e1                                      mov lr, pc
00887c74  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00887c78  08 30 94 e5                                      ldr r3, [r4, #8]
00887c7c  00 00 55 e3                                      cmp r5, #0
00887c80  05 30 83 e0                                      add r3, r3, r5
00887c84  08 30 84 e5                                      str r3, [r4, #8]
00887c88  2f 00 00 0a                                      beq #0x887d4c
00887c8c  08 00 94 e5                                      ldr r0, [r4, #8]
00887c90  09 10 a0 e1                                      mov r1, sb
00887c94  ec 1b ea eb                                      bl #0x30ec4c
00887c98  14 30 94 e5                                      ldr r3, [r4, #0x14]
00887c9c  05 60 86 e0                                      add r6, r6, r5
00887ca0  0c 00 84 e5                                      str r0, [r4, #0xc]
00887ca4  03 00 50 e1                                      cmp r0, r3
00887ca8  15 00 00 9a                                      bls #0x887d04
00887cac  18 20 94 e5                                      ldr r2, [r4, #0x18]
00887cb0  a2 30 b0 e1                                      lsrs r3, r2, #1
00887cb4  1c 30 94 05                                      ldreq r3, [r4, #0x1c]
00887cb8  02 00 00 0a                                      beq #0x887cc8
00887cbc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00887cc0  03 00 52 e1                                      cmp r2, r3
00887cc4  37 00 00 0a                                      beq #0x887da8
00887cc8  01 30 43 e2                                      sub r3, r3, #1
00887ccc  00 00 53 e3                                      cmp r3, #0
00887cd0  1c 30 84 e5                                      str r3, [r4, #0x1c]
00887cd4  05 00 00 1a                                      bne #0x887cf0
00887cd8  20 30 94 e5                                      ldr r3, [r4, #0x20]
00887cdc  01 00 53 e3                                      cmp r3, #1
00887ce0  38 00 00 0a                                      beq #0x887dc8
00887ce4  04 30 94 e5                                      ldr r3, [r4, #4]
00887ce8  01 00 53 e3                                      cmp r3, #1
00887cec  45 00 00 0a                                      beq #0x887e08
00887cf0  24 30 94 e5                                      ldr r3, [r4, #0x24]
00887cf4  03 00 53 e3                                      cmp r3, #3
00887cf8  1b 00 00 0a                                      beq #0x887d6c
00887cfc  04 00 53 e3                                      cmp r3, #4
00887d00  23 00 00 0a                                      beq #0x887d94
00887d04  06 00 5a e1                                      cmp sl, r6
00887d08  11 00 00 da                                      ble #0x887d54
00887d0c  08 20 94 e5                                      ldr r2, [r4, #8]
00887d10  0a 50 66 e0                                      rsb r5, r6, sl
00887d14  02 30 85 e0                                      add r3, r5, r2
00887d18  07 00 53 e1                                      cmp r3, r7
00887d1c  ce ff ff 9a                                      bls #0x887c5c
00887d20  04 30 98 e5                                      ldr r3, [r8, #4]
00887d24  07 50 62 e0                                      rsb r5, r2, r7
00887d28  05 10 a0 e1                                      mov r1, r5
00887d2c  03 00 a0 e1                                      mov r0, r3
00887d30  01 20 a0 e3                                      mov r2, #1
00887d34  00 30 93 e5                                      ldr r3, [r3]
00887d38  0f e0 a0 e1                                      mov lr, pc
00887d3c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00887d40  00 00 55 e3                                      cmp r5, #0
00887d44  08 70 84 e5                                      str r7, [r4, #8]
00887d48  cf ff ff 1a                                      bne #0x887c8c
00887d4c  01 30 a0 e3                                      mov r3, #1
00887d50  24 30 84 e5                                      str r3, [r4, #0x24]
00887d54  04 30 94 e5                                      ldr r3, [r4, #4]
00887d58  06 00 a0 e1                                      mov r0, r6
00887d5c  03 00 53 e3                                      cmp r3, #3
00887d60  01 30 a0 03                                      moveq r3, #1
00887d64  24 30 84 05                                      streq r3, [r4, #0x24]
00887d68  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00887d6c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00887d70  00 00 53 e3                                      cmp r3, #0
00887d74  e2 ff ff 0a                                      beq #0x887d04
00887d78  00 30 98 e5                                      ldr r3, [r8]
00887d7c  08 00 a0 e1                                      mov r0, r8
00887d80  00 10 e0 e3                                      mvn r1, #0
00887d84  04 20 a0 e1                                      mov r2, r4
00887d88  0f e0 a0 e1                                      mov lr, pc
00887d8c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00887d90  db ff ff ea                                      b #0x887d04
00887d94  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00887d98  14 30 94 e5                                      ldr r3, [r4, #0x14]
00887d9c  03 00 52 e1                                      cmp r2, r3
00887da0  d7 ff ff 9a                                      bls #0x887d04
00887da4  e8 ff ff ea                                      b #0x887d4c
00887da8  2c 10 98 e5                                      ldr r1, [r8, #0x2c]
00887dac  00 20 94 e5                                      ldr r2, [r4]
00887db0  00 10 91 e5                                      ldr r1, [r1]
00887db4  9b 02 02 e0                                      mul r2, fp, r2
00887db8  02 20 91 e7                                      ldr r2, [r1, r2]
00887dbc  04 20 92 e5                                      ldr r2, [r2, #4]
00887dc0  10 20 84 e5                                      str r2, [r4, #0x10]
00887dc4  bf ff ff ea                                      b #0x887cc8
00887dc8  2c 20 98 e5                                      ldr r2, [r8, #0x2c]
00887dcc  00 30 94 e5                                      ldr r3, [r4]
00887dd0  00 20 92 e5                                      ldr r2, [r2]
00887dd4  9b 03 03 e0                                      mul r3, fp, r3
00887dd8  03 10 82 e0                                      add r1, r2, r3
00887ddc  03 30 92 e7                                      ldr r3, [r2, r3]
00887de0  04 20 91 e5                                      ldr r2, [r1, #4]
00887de4  02 20 63 e0                                      rsb r2, r3, r2
00887de8  42 21 a0 e1                                      asr r2, r2, #2
00887dec  01 20 42 e2                                      sub r2, r2, #1
00887df0  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00887df4  93 99 27 e0                                      mla r7, r3, sb, sb
00887df8  14 30 84 e5                                      str r3, [r4, #0x14]
00887dfc  04 30 94 e5                                      ldr r3, [r4, #4]
00887e00  01 00 53 e3                                      cmp r3, #1
00887e04  b9 ff ff 1a                                      bne #0x887cf0
00887e08  08 00 a0 e1                                      mov r0, r8
00887e0c  4b f6 ff eb                                      bl #0x885740
00887e10  14 70 94 e5                                      ldr r7, [r4, #0x14]
00887e14  97 99 27 e0                                      mla r7, r7, sb, sb
00887e18  b4 ff ff ea                                      b #0x887cf0

; FUNCTION 0x00887e1c, declared_size=564, range_size=564, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM37EmulateDecodeCurrentSegmentWithOffsetEi
; demangled: vox::VoxNativeSubDecoderPCM::EmulateDecodeCurrentSegmentWithOffset(int)
; decoder-mode: arm
00887e1c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00887e20  18 20 90 e5                                      ldr r2, [r0, #0x18]
00887e24  20 31 90 e5                                      ldr r3, [r0, #0x120]
00887e28  00 40 a0 e1                                      mov r4, r0
00887e2c  68 61 90 e5                                      ldr r6, [r0, #0x168]
00887e30  18 00 a0 e3                                      mov r0, #0x18
00887e34  90 03 03 e0                                      mul r3, r0, r3
00887e38  04 20 92 e5                                      ldr r2, [r2, #4]
00887e3c  00 00 56 e3                                      cmp r6, #0
00887e40  01 80 a0 e1                                      mov r8, r1
00887e44  03 50 92 e7                                      ldr r5, [r2, r3]
00887e48  00 30 a0 c3                                      movgt r3, #0
00887e4c  68 31 84 c5                                      strgt r3, [r4, #0x168]
00887e50  28 11 94 e5                                      ldr r1, [r4, #0x128]
00887e54  04 30 94 e5                                      ldr r3, [r4, #4]
00887e58  f0 a1 d4 e1                                      ldrsh sl, [r4, #0x10]
00887e5c  14 20 94 e5                                      ldr r2, [r4, #0x14]
00887e60  03 00 a0 e1                                      mov r0, r3
00887e64  01 50 85 e0                                      add r5, r5, r1
00887e68  00 30 93 e5                                      ldr r3, [r3]
00887e6c  00 60 a0 d3                                      movle r6, #0
00887e70  96 0a 06 c0                                      mulgt r6, r6, sl
00887e74  02 50 85 e0                                      add r5, r5, r2
00887e78  34 71 94 e5                                      ldr r7, [r4, #0x134]
00887e7c  0f e0 a0 e1                                      mov lr, pc
00887e80  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00887e84  00 00 55 e1                                      cmp r5, r0
00887e88  06 00 00 0a                                      beq #0x887ea8
00887e8c  04 30 94 e5                                      ldr r3, [r4, #4]
00887e90  05 10 a0 e1                                      mov r1, r5
00887e94  00 20 a0 e3                                      mov r2, #0
00887e98  03 00 a0 e1                                      mov r0, r3
00887e9c  00 30 93 e5                                      ldr r3, [r3]
00887ea0  0f e0 a0 e1                                      mov lr, pc
00887ea4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00887ea8  08 00 56 e1                                      cmp r6, r8
00887eac  42 00 00 aa                                      bge #0x887fbc
00887eb0  97 aa 27 e0                                      mla r7, r7, sl, sl
00887eb4  12 be 84 e2                                      add fp, r4, #0x120
00887eb8  0c 90 a0 e3                                      mov sb, #0xc
00887ebc  2c 00 00 ea                                      b #0x887f74
00887ec0  04 30 94 e5                                      ldr r3, [r4, #4]
00887ec4  05 10 a0 e1                                      mov r1, r5
00887ec8  01 20 a0 e3                                      mov r2, #1
00887ecc  03 00 a0 e1                                      mov r0, r3
00887ed0  00 30 93 e5                                      ldr r3, [r3]
00887ed4  0f e0 a0 e1                                      mov lr, pc
00887ed8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00887edc  28 31 94 e5                                      ldr r3, [r4, #0x128]
00887ee0  00 00 55 e3                                      cmp r5, #0
00887ee4  05 30 83 e0                                      add r3, r3, r5
00887ee8  28 31 84 e5                                      str r3, [r4, #0x128]
00887eec  30 00 00 0a                                      beq #0x887fb4
00887ef0  28 01 94 e5                                      ldr r0, [r4, #0x128]
00887ef4  0a 10 a0 e1                                      mov r1, sl
00887ef8  53 1b ea eb                                      bl #0x30ec4c
00887efc  34 31 94 e5                                      ldr r3, [r4, #0x134]
00887f00  05 60 86 e0                                      add r6, r6, r5
00887f04  2c 01 84 e5                                      str r0, [r4, #0x12c]
00887f08  03 00 50 e1                                      cmp r0, r3
00887f0c  16 00 00 9a                                      bls #0x887f6c
00887f10  38 11 94 e5                                      ldr r1, [r4, #0x138]
00887f14  a1 20 b0 e1                                      lsrs r2, r1, #1
00887f18  3c 21 94 05                                      ldreq r2, [r4, #0x13c]
00887f1c  02 00 00 0a                                      beq #0x887f2c
00887f20  3c 21 94 e5                                      ldr r2, [r4, #0x13c]
00887f24  02 00 51 e1                                      cmp r1, r2
00887f28  40 00 00 0a                                      beq #0x888030
00887f2c  01 20 42 e2                                      sub r2, r2, #1
00887f30  00 00 52 e3                                      cmp r2, #0
00887f34  3c 21 84 e5                                      str r2, [r4, #0x13c]
00887f38  06 00 00 1a                                      bne #0x887f58
00887f3c  40 31 94 e5                                      ldr r3, [r4, #0x140]
00887f40  01 00 53 e3                                      cmp r3, #1
00887f44  2c 00 00 0a                                      beq #0x887ffc
00887f48  04 00 a0 e1                                      mov r0, r4
00887f4c  fb f5 ff eb                                      bl #0x885740
00887f50  34 31 94 e5                                      ldr r3, [r4, #0x134]
00887f54  93 aa 27 e0                                      mla r7, r3, sl, sl
00887f58  44 21 94 e5                                      ldr r2, [r4, #0x144]
00887f5c  03 00 52 e3                                      cmp r2, #3
00887f60  17 00 00 0a                                      beq #0x887fc4
00887f64  04 00 52 e3                                      cmp r2, #4
00887f68  1f 00 00 0a                                      beq #0x887fec
00887f6c  06 00 58 e1                                      cmp r8, r6
00887f70  11 00 00 da                                      ble #0x887fbc
00887f74  28 21 94 e5                                      ldr r2, [r4, #0x128]
00887f78  08 50 66 e0                                      rsb r5, r6, r8
00887f7c  02 30 85 e0                                      add r3, r5, r2
00887f80  07 00 53 e1                                      cmp r3, r7
00887f84  cd ff ff 9a                                      bls #0x887ec0
00887f88  04 30 94 e5                                      ldr r3, [r4, #4]
00887f8c  07 50 62 e0                                      rsb r5, r2, r7
00887f90  05 10 a0 e1                                      mov r1, r5
00887f94  03 00 a0 e1                                      mov r0, r3
00887f98  01 20 a0 e3                                      mov r2, #1
00887f9c  00 30 93 e5                                      ldr r3, [r3]
00887fa0  0f e0 a0 e1                                      mov lr, pc
00887fa4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00887fa8  00 00 55 e3                                      cmp r5, #0
00887fac  28 71 84 e5                                      str r7, [r4, #0x128]
00887fb0  ce ff ff 1a                                      bne #0x887ef0
00887fb4  01 30 a0 e3                                      mov r3, #1
00887fb8  44 31 84 e5                                      str r3, [r4, #0x144]
00887fbc  06 00 a0 e1                                      mov r0, r6
00887fc0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00887fc4  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00887fc8  00 00 53 e3                                      cmp r3, #0
00887fcc  e6 ff ff 0a                                      beq #0x887f6c
00887fd0  00 30 94 e5                                      ldr r3, [r4]
00887fd4  04 00 a0 e1                                      mov r0, r4
00887fd8  00 10 e0 e3                                      mvn r1, #0
00887fdc  0b 20 a0 e1                                      mov r2, fp
00887fe0  0f e0 a0 e1                                      mov lr, pc
00887fe4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00887fe8  df ff ff ea                                      b #0x887f6c
00887fec  2c 21 94 e5                                      ldr r2, [r4, #0x12c]
00887ff0  03 00 52 e1                                      cmp r2, r3
00887ff4  dc ff ff 9a                                      bls #0x887f6c
00887ff8  ed ff ff ea                                      b #0x887fb4
00887ffc  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00888000  20 31 94 e5                                      ldr r3, [r4, #0x120]
00888004  00 20 92 e5                                      ldr r2, [r2]
00888008  99 03 03 e0                                      mul r3, sb, r3
0088800c  03 10 82 e0                                      add r1, r2, r3
00888010  03 30 92 e7                                      ldr r3, [r2, r3]
00888014  04 20 91 e5                                      ldr r2, [r1, #4]
00888018  02 20 63 e0                                      rsb r2, r3, r2
0088801c  42 21 a0 e1                                      asr r2, r2, #2
00888020  01 20 42 e2                                      sub r2, r2, #1
00888024  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00888028  34 31 84 e5                                      str r3, [r4, #0x134]
0088802c  c5 ff ff ea                                      b #0x887f48
00888030  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00888034  20 11 94 e5                                      ldr r1, [r4, #0x120]
00888038  00 00 90 e5                                      ldr r0, [r0]
0088803c  99 01 01 e0                                      mul r1, sb, r1
00888040  01 10 90 e7                                      ldr r1, [r0, r1]
00888044  04 10 91 e5                                      ldr r1, [r1, #4]
00888048  30 11 84 e5                                      str r1, [r4, #0x130]
0088804c  b6 ff ff ea                                      b #0x887f2c

; FUNCTION 0x00888050, declared_size=604, range_size=604, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE
; demangled: vox::VoxNativeSubDecoderPCM::DecodeSegment(void*, int, vox::SegmentState*)
; decoder-mode: arm
00888050  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00888054  00 40 a0 e1                                      mov r4, r0
00888058  18 00 90 e5                                      ldr r0, [r0, #0x18]
0088805c  03 50 a0 e1                                      mov r5, r3
00888060  00 30 93 e5                                      ldr r3, [r3]
00888064  04 c0 90 e5                                      ldr ip, [r0, #4]
00888068  18 00 a0 e3                                      mov r0, #0x18
0088806c  90 03 00 e0                                      mul r0, r0, r3
00888070  08 60 95 e5                                      ldr r6, [r5, #8]
00888074  00 e0 9c e7                                      ldr lr, [ip, r0]
00888078  04 30 94 e5                                      ldr r3, [r4, #4]
0088807c  14 c0 94 e5                                      ldr ip, [r4, #0x14]
00888080  0e 60 86 e0                                      add r6, r6, lr
00888084  03 00 a0 e1                                      mov r0, r3
00888088  00 30 93 e5                                      ldr r3, [r3]
0088808c  0c 60 86 e0                                      add r6, r6, ip
00888090  01 90 a0 e1                                      mov sb, r1
00888094  02 80 a0 e1                                      mov r8, r2
00888098  b0 a1 d4 e1                                      ldrh sl, [r4, #0x10]
0088809c  14 70 95 e5                                      ldr r7, [r5, #0x14]
008880a0  0f e0 a0 e1                                      mov lr, pc
008880a4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008880a8  00 00 56 e1                                      cmp r6, r0
008880ac  06 00 00 0a                                      beq #0x8880cc
008880b0  04 30 94 e5                                      ldr r3, [r4, #4]
008880b4  06 10 a0 e1                                      mov r1, r6
008880b8  00 20 a0 e3                                      mov r2, #0
008880bc  03 00 a0 e1                                      mov r0, r3
008880c0  00 30 93 e5                                      ldr r3, [r3]
008880c4  0f e0 a0 e1                                      mov lr, pc
008880c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008880cc  00 00 58 e3                                      cmp r8, #0
008880d0  00 60 a0 d3                                      movle r6, #0
008880d4  42 00 00 da                                      ble #0x8881e4
008880d8  7a a0 bf e6                                      sxth sl, sl
008880dc  97 aa 27 e0                                      mla r7, r7, sl, sl
008880e0  00 60 a0 e3                                      mov r6, #0
008880e4  0c b0 a0 e3                                      mov fp, #0xc
008880e8  2b 00 00 ea                                      b #0x88819c
008880ec  04 30 94 e5                                      ldr r3, [r4, #4]
008880f0  06 10 89 e0                                      add r1, sb, r6
008880f4  03 00 a0 e1                                      mov r0, r3
008880f8  00 30 93 e5                                      ldr r3, [r3]
008880fc  0f e0 a0 e1                                      mov lr, pc
00888100  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00888104  08 20 95 e5                                      ldr r2, [r5, #8]
00888108  00 30 a0 e1                                      mov r3, r0
0088810c  00 00 53 e3                                      cmp r3, #0
00888110  00 20 82 e0                                      add r2, r2, r0
00888114  08 20 85 e5                                      str r2, [r5, #8]
00888118  2f 00 00 0a                                      beq #0x8881dc
0088811c  08 00 95 e5                                      ldr r0, [r5, #8]
00888120  0a 10 a0 e1                                      mov r1, sl
00888124  03 60 86 e0                                      add r6, r6, r3
00888128  c7 1a ea eb                                      bl #0x30ec4c
0088812c  14 30 95 e5                                      ldr r3, [r5, #0x14]
00888130  0c 00 85 e5                                      str r0, [r5, #0xc]
00888134  03 00 50 e1                                      cmp r0, r3
00888138  15 00 00 9a                                      bls #0x888194
0088813c  18 20 95 e5                                      ldr r2, [r5, #0x18]
00888140  a2 30 b0 e1                                      lsrs r3, r2, #1
00888144  1c 30 95 05                                      ldreq r3, [r5, #0x1c]
00888148  02 00 00 0a                                      beq #0x888158
0088814c  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00888150  03 00 52 e1                                      cmp r2, r3
00888154  37 00 00 0a                                      beq #0x888238
00888158  01 30 43 e2                                      sub r3, r3, #1
0088815c  00 00 53 e3                                      cmp r3, #0
00888160  1c 30 85 e5                                      str r3, [r5, #0x1c]
00888164  05 00 00 1a                                      bne #0x888180
00888168  20 30 95 e5                                      ldr r3, [r5, #0x20]
0088816c  01 00 53 e3                                      cmp r3, #1
00888170  38 00 00 0a                                      beq #0x888258
00888174  04 30 95 e5                                      ldr r3, [r5, #4]
00888178  01 00 53 e3                                      cmp r3, #1
0088817c  45 00 00 0a                                      beq #0x888298
00888180  24 30 95 e5                                      ldr r3, [r5, #0x24]
00888184  03 00 53 e3                                      cmp r3, #3
00888188  1b 00 00 0a                                      beq #0x8881fc
0088818c  04 00 53 e3                                      cmp r3, #4
00888190  23 00 00 0a                                      beq #0x888224
00888194  06 00 58 e1                                      cmp r8, r6
00888198  11 00 00 da                                      ble #0x8881e4
0088819c  08 10 95 e5                                      ldr r1, [r5, #8]
008881a0  08 20 66 e0                                      rsb r2, r6, r8
008881a4  01 30 82 e0                                      add r3, r2, r1
008881a8  07 00 53 e1                                      cmp r3, r7
008881ac  ce ff ff 9a                                      bls #0x8880ec
008881b0  04 30 94 e5                                      ldr r3, [r4, #4]
008881b4  07 20 61 e0                                      rsb r2, r1, r7
008881b8  06 10 89 e0                                      add r1, sb, r6
008881bc  03 00 a0 e1                                      mov r0, r3
008881c0  00 30 93 e5                                      ldr r3, [r3]
008881c4  0f e0 a0 e1                                      mov lr, pc
008881c8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008881cc  00 30 a0 e1                                      mov r3, r0
008881d0  00 00 53 e3                                      cmp r3, #0
008881d4  08 70 85 e5                                      str r7, [r5, #8]
008881d8  cf ff ff 1a                                      bne #0x88811c
008881dc  01 30 a0 e3                                      mov r3, #1
008881e0  24 30 85 e5                                      str r3, [r5, #0x24]
008881e4  04 30 95 e5                                      ldr r3, [r5, #4]
008881e8  06 00 a0 e1                                      mov r0, r6
008881ec  03 00 53 e3                                      cmp r3, #3
008881f0  01 30 a0 03                                      moveq r3, #1
008881f4  24 30 85 05                                      streq r3, [r5, #0x24]
008881f8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
008881fc  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00888200  00 00 53 e3                                      cmp r3, #0
00888204  e2 ff ff 0a                                      beq #0x888194
00888208  00 30 94 e5                                      ldr r3, [r4]
0088820c  04 00 a0 e1                                      mov r0, r4
00888210  00 10 e0 e3                                      mvn r1, #0
00888214  05 20 a0 e1                                      mov r2, r5
00888218  0f e0 a0 e1                                      mov lr, pc
0088821c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00888220  db ff ff ea                                      b #0x888194
00888224  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00888228  14 30 95 e5                                      ldr r3, [r5, #0x14]
0088822c  03 00 52 e1                                      cmp r2, r3
00888230  d7 ff ff 9a                                      bls #0x888194
00888234  e8 ff ff ea                                      b #0x8881dc
00888238  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0088823c  00 20 95 e5                                      ldr r2, [r5]
00888240  00 10 91 e5                                      ldr r1, [r1]
00888244  9b 02 02 e0                                      mul r2, fp, r2
00888248  02 20 91 e7                                      ldr r2, [r1, r2]
0088824c  04 20 92 e5                                      ldr r2, [r2, #4]
00888250  10 20 85 e5                                      str r2, [r5, #0x10]
00888254  bf ff ff ea                                      b #0x888158
00888258  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0088825c  00 30 95 e5                                      ldr r3, [r5]
00888260  00 20 92 e5                                      ldr r2, [r2]
00888264  9b 03 03 e0                                      mul r3, fp, r3
00888268  03 10 82 e0                                      add r1, r2, r3
0088826c  03 30 92 e7                                      ldr r3, [r2, r3]
00888270  04 20 91 e5                                      ldr r2, [r1, #4]
00888274  02 20 63 e0                                      rsb r2, r3, r2
00888278  42 21 a0 e1                                      asr r2, r2, #2
0088827c  01 20 42 e2                                      sub r2, r2, #1
00888280  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00888284  93 aa 27 e0                                      mla r7, r3, sl, sl
00888288  14 30 85 e5                                      str r3, [r5, #0x14]
0088828c  04 30 95 e5                                      ldr r3, [r5, #4]
00888290  01 00 53 e3                                      cmp r3, #1
00888294  b9 ff ff 1a                                      bne #0x888180
00888298  04 00 a0 e1                                      mov r0, r4
0088829c  27 f5 ff eb                                      bl #0x885740
008882a0  14 70 95 e5                                      ldr r7, [r5, #0x14]
008882a4  97 aa 27 e0                                      mla r7, r7, sl, sl
008882a8  b4 ff ff ea                                      b #0x888180

; FUNCTION 0x008882ac, declared_size=588, range_size=588, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCM30DecodeCurrentSegmentWithOffsetEPvi
; demangled: vox::VoxNativeSubDecoderPCM::DecodeCurrentSegmentWithOffset(void*, int)
; decoder-mode: arm
008882ac  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
008882b0  00 40 a0 e1                                      mov r4, r0
008882b4  20 31 94 e5                                      ldr r3, [r4, #0x120]
008882b8  18 00 90 e5                                      ldr r0, [r0, #0x18]
008882bc  68 51 94 e5                                      ldr r5, [r4, #0x168]
008882c0  18 c0 a0 e3                                      mov ip, #0x18
008882c4  9c 03 03 e0                                      mul r3, ip, r3
008882c8  04 00 90 e5                                      ldr r0, [r0, #4]
008882cc  00 00 55 e3                                      cmp r5, #0
008882d0  01 a0 a0 e1                                      mov sl, r1
008882d4  03 60 90 e7                                      ldr r6, [r0, r3]
008882d8  02 70 a0 e1                                      mov r7, r2
008882dc  f0 81 d4 e1                                      ldrsh r8, [r4, #0x10]
008882e0  34 b1 94 e5                                      ldr fp, [r4, #0x134]
008882e4  14 90 94 e5                                      ldr sb, [r4, #0x14]
008882e8  00 50 a0 d3                                      movle r5, #0
008882ec  06 00 00 da                                      ble #0x88830c
008882f0  95 08 05 e0                                      mul r5, r5, r8
008882f4  01 00 a0 e1                                      mov r0, r1
008882f8  05 20 a0 e1                                      mov r2, r5
008882fc  00 10 a0 e3                                      mov r1, #0
00888300  56 18 ea eb                                      bl #0x30e460
00888304  00 30 a0 e3                                      mov r3, #0
00888308  68 31 84 e5                                      str r3, [r4, #0x168]
0088830c  04 30 94 e5                                      ldr r3, [r4, #4]
00888310  28 21 94 e5                                      ldr r2, [r4, #0x128]
00888314  03 00 a0 e1                                      mov r0, r3
00888318  00 30 93 e5                                      ldr r3, [r3]
0088831c  02 60 86 e0                                      add r6, r6, r2
00888320  0f e0 a0 e1                                      mov lr, pc
00888324  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00888328  09 90 86 e0                                      add sb, r6, sb
0088832c  00 00 59 e1                                      cmp sb, r0
00888330  06 00 00 0a                                      beq #0x888350
00888334  04 30 94 e5                                      ldr r3, [r4, #4]
00888338  09 10 a0 e1                                      mov r1, sb
0088833c  00 20 a0 e3                                      mov r2, #0
00888340  03 00 a0 e1                                      mov r0, r3
00888344  00 30 93 e5                                      ldr r3, [r3]
00888348  0f e0 a0 e1                                      mov lr, pc
0088834c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00888350  07 00 55 e1                                      cmp r5, r7
00888354  42 00 00 aa                                      bge #0x888464
00888358  9b 88 26 e0                                      mla r6, fp, r8, r8
0088835c  0c 90 a0 e3                                      mov sb, #0xc
00888360  12 be 84 e2                                      add fp, r4, #0x120
00888364  2c 00 00 ea                                      b #0x88841c
00888368  04 30 94 e5                                      ldr r3, [r4, #4]
0088836c  05 10 8a e0                                      add r1, sl, r5
00888370  03 00 a0 e1                                      mov r0, r3
00888374  00 30 93 e5                                      ldr r3, [r3]
00888378  0f e0 a0 e1                                      mov lr, pc
0088837c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00888380  28 21 94 e5                                      ldr r2, [r4, #0x128]
00888384  00 30 a0 e1                                      mov r3, r0
00888388  00 00 53 e3                                      cmp r3, #0
0088838c  00 20 82 e0                                      add r2, r2, r0
00888390  28 21 84 e5                                      str r2, [r4, #0x128]
00888394  30 00 00 0a                                      beq #0x88845c
00888398  28 01 94 e5                                      ldr r0, [r4, #0x128]
0088839c  08 10 a0 e1                                      mov r1, r8
008883a0  03 50 85 e0                                      add r5, r5, r3
008883a4  28 1a ea eb                                      bl #0x30ec4c
008883a8  34 31 94 e5                                      ldr r3, [r4, #0x134]
008883ac  2c 01 84 e5                                      str r0, [r4, #0x12c]
008883b0  03 00 50 e1                                      cmp r0, r3
008883b4  16 00 00 9a                                      bls #0x888414
008883b8  38 11 94 e5                                      ldr r1, [r4, #0x138]
008883bc  a1 20 b0 e1                                      lsrs r2, r1, #1
008883c0  3c 21 94 05                                      ldreq r2, [r4, #0x13c]
008883c4  02 00 00 0a                                      beq #0x8883d4
008883c8  3c 21 94 e5                                      ldr r2, [r4, #0x13c]
008883cc  02 00 51 e1                                      cmp r1, r2
008883d0  40 00 00 0a                                      beq #0x8884d8
008883d4  01 20 42 e2                                      sub r2, r2, #1
008883d8  00 00 52 e3                                      cmp r2, #0
008883dc  3c 21 84 e5                                      str r2, [r4, #0x13c]
008883e0  06 00 00 1a                                      bne #0x888400
008883e4  40 31 94 e5                                      ldr r3, [r4, #0x140]
008883e8  01 00 53 e3                                      cmp r3, #1
008883ec  2c 00 00 0a                                      beq #0x8884a4
008883f0  04 00 a0 e1                                      mov r0, r4
008883f4  d1 f4 ff eb                                      bl #0x885740
008883f8  34 31 94 e5                                      ldr r3, [r4, #0x134]
008883fc  93 88 26 e0                                      mla r6, r3, r8, r8
00888400  44 21 94 e5                                      ldr r2, [r4, #0x144]
00888404  03 00 52 e3                                      cmp r2, #3
00888408  17 00 00 0a                                      beq #0x88846c
0088840c  04 00 52 e3                                      cmp r2, #4
00888410  1f 00 00 0a                                      beq #0x888494
00888414  05 00 57 e1                                      cmp r7, r5
00888418  11 00 00 da                                      ble #0x888464
0088841c  28 11 94 e5                                      ldr r1, [r4, #0x128]
00888420  07 20 65 e0                                      rsb r2, r5, r7
00888424  01 30 82 e0                                      add r3, r2, r1
00888428  06 00 53 e1                                      cmp r3, r6
0088842c  cd ff ff 9a                                      bls #0x888368
00888430  04 30 94 e5                                      ldr r3, [r4, #4]
00888434  06 20 61 e0                                      rsb r2, r1, r6
00888438  05 10 8a e0                                      add r1, sl, r5
0088843c  03 00 a0 e1                                      mov r0, r3
00888440  00 30 93 e5                                      ldr r3, [r3]
00888444  0f e0 a0 e1                                      mov lr, pc
00888448  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0088844c  00 30 a0 e1                                      mov r3, r0
00888450  00 00 53 e3                                      cmp r3, #0
00888454  28 61 84 e5                                      str r6, [r4, #0x128]
00888458  ce ff ff 1a                                      bne #0x888398
0088845c  01 30 a0 e3                                      mov r3, #1
00888460  44 31 84 e5                                      str r3, [r4, #0x144]
00888464  05 00 a0 e1                                      mov r0, r5
00888468  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088846c  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00888470  00 00 53 e3                                      cmp r3, #0
00888474  e6 ff ff 0a                                      beq #0x888414
00888478  00 30 94 e5                                      ldr r3, [r4]
0088847c  04 00 a0 e1                                      mov r0, r4
00888480  00 10 e0 e3                                      mvn r1, #0
00888484  0b 20 a0 e1                                      mov r2, fp
00888488  0f e0 a0 e1                                      mov lr, pc
0088848c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00888490  df ff ff ea                                      b #0x888414
00888494  2c 21 94 e5                                      ldr r2, [r4, #0x12c]
00888498  03 00 52 e1                                      cmp r2, r3
0088849c  dc ff ff 9a                                      bls #0x888414
008884a0  ed ff ff ea                                      b #0x88845c
008884a4  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
008884a8  20 31 94 e5                                      ldr r3, [r4, #0x120]
008884ac  00 20 92 e5                                      ldr r2, [r2]
008884b0  99 03 03 e0                                      mul r3, sb, r3
008884b4  03 10 82 e0                                      add r1, r2, r3
008884b8  03 30 92 e7                                      ldr r3, [r2, r3]
008884bc  04 20 91 e5                                      ldr r2, [r1, #4]
008884c0  02 20 63 e0                                      rsb r2, r3, r2
008884c4  42 21 a0 e1                                      asr r2, r2, #2
008884c8  01 20 42 e2                                      sub r2, r2, #1
008884cc  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
008884d0  34 31 84 e5                                      str r3, [r4, #0x134]
008884d4  c5 ff ff ea                                      b #0x8883f0
008884d8  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
008884dc  20 11 94 e5                                      ldr r1, [r4, #0x120]
008884e0  00 00 90 e5                                      ldr r0, [r0]
008884e4  99 01 01 e0                                      mul r1, sb, r1
008884e8  01 10 90 e7                                      ldr r1, [r0, r1]
008884ec  04 10 91 e5                                      ldr r1, [r1, #4]
008884f0  30 11 84 e5                                      str r1, [r4, #0x130]
008884f4  b6 ff ff ea                                      b #0x8883d4

; FUNCTION 0x008884f8, declared_size=28, range_size=28, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCMD0Ev
; demangled: vox::VoxNativeSubDecoderPCM::~VoxNativeSubDecoderPCM()
; decoder-mode: arm
008884f8  10 40 2d e9                                      push {r4, lr}
008884fc  00 40 a0 e1                                      mov r4, r0
00888500  88 fd ff eb                                      bl #0x887b28
00888504  04 00 a0 e1                                      mov r0, r4
00888508  68 17 ea eb                                      bl #0x30e2b0
0088850c  04 00 a0 e1                                      mov r0, r4
00888510  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00888514, declared_size=108, range_size=108, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCMC1EPNS_21StreamCursorInterfaceEPNS_12NativeChunksEPNS_6StatesEPNS_13AudioSegmentsEPSt6vectorIS9_IiNS_10SAllocatorIiLNS_10VoxMemHintE0EEEENSA_ISD_LSB_0EEEEPNS_15TransitionRulesEPS9_IS9_INS_16TransitionParamsENSA_ISJ_LSB_0EEEENSA_ISL_LSB_0EEEEPSt3mapISbIcSt11char_traitsIcENSA_IcLSB_0EEEEiNS_13StringCompareENSA_ISt4pairIKST_iELSB_0EEEEPNS_22NativePlaylistsManagerE
; demangled: vox::VoxNativeSubDecoderPCM::VoxNativeSubDecoderPCM(vox::StreamCursorInterface*, vox::NativeChunks*, vox::States*, vox::AudioSegments*, std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, vox::TransitionRules*, std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::StringCompare, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >*, vox::NativePlaylistsManager*)
; decoder-mode: arm
00888514  30 40 2d e9                                      push {r4, r5, lr}
00888518  1c d0 4d e2                                      sub sp, sp, #0x1c
0088851c  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00888520  50 40 9f e5                                      ldr r4, [pc, #0x50]
00888524  00 50 a0 e1                                      mov r5, r0
00888528  00 c0 8d e5                                      str ip, [sp]
0088852c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00888530  04 40 8f e0                                      add r4, pc, r4
00888534  04 c0 8d e5                                      str ip, [sp, #4]
00888538  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0088853c  08 c0 8d e5                                      str ip, [sp, #8]
00888540  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00888544  0c c0 8d e5                                      str ip, [sp, #0xc]
00888548  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0088854c  10 c0 8d e5                                      str ip, [sp, #0x10]
00888550  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00888554  14 c0 8d e5                                      str ip, [sp, #0x14]
00888558  6c f6 ff eb                                      bl #0x885f10
0088855c  18 30 9f e5                                      ldr r3, [pc, #0x18]
00888560  05 00 a0 e1                                      mov r0, r5
00888564  03 30 94 e7                                      ldr r3, [r4, r3]
00888568  08 30 83 e2                                      add r3, r3, #8
0088856c  00 30 85 e5                                      str r3, [r5]
00888570  1c d0 8d e2                                      add sp, sp, #0x1c
00888574  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00888578  60 c5 10 00 14 0a 00 00                          .byte 0x60, 0xc5, 0x10, 0x00, 0x14, 0x0a, 0x00, 0x00

; FUNCTION 0x00888580, declared_size=108, range_size=108, mode=arm
; class-group: vox::VoxNativeSubDecoderPCM
; alias: _ZN3vox22VoxNativeSubDecoderPCMC2EPNS_21StreamCursorInterfaceEPNS_12NativeChunksEPNS_6StatesEPNS_13AudioSegmentsEPSt6vectorIS9_IiNS_10SAllocatorIiLNS_10VoxMemHintE0EEEENSA_ISD_LSB_0EEEEPNS_15TransitionRulesEPS9_IS9_INS_16TransitionParamsENSA_ISJ_LSB_0EEEENSA_ISL_LSB_0EEEEPSt3mapISbIcSt11char_traitsIcENSA_IcLSB_0EEEEiNS_13StringCompareENSA_ISt4pairIKST_iELSB_0EEEEPNS_22NativePlaylistsManagerE
; demangled: vox::VoxNativeSubDecoderPCM::VoxNativeSubDecoderPCM(vox::StreamCursorInterface*, vox::NativeChunks*, vox::States*, vox::AudioSegments*, std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, vox::TransitionRules*, std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >*, std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::StringCompare, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >*, vox::NativePlaylistsManager*)
; decoder-mode: arm
00888580  30 40 2d e9                                      push {r4, r5, lr}
00888584  1c d0 4d e2                                      sub sp, sp, #0x1c
00888588  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0088858c  50 40 9f e5                                      ldr r4, [pc, #0x50]
00888590  00 50 a0 e1                                      mov r5, r0
00888594  00 c0 8d e5                                      str ip, [sp]
00888598  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0088859c  04 40 8f e0                                      add r4, pc, r4
008885a0  04 c0 8d e5                                      str ip, [sp, #4]
008885a4  30 c0 9d e5                                      ldr ip, [sp, #0x30]
008885a8  08 c0 8d e5                                      str ip, [sp, #8]
008885ac  34 c0 9d e5                                      ldr ip, [sp, #0x34]
008885b0  0c c0 8d e5                                      str ip, [sp, #0xc]
008885b4  38 c0 9d e5                                      ldr ip, [sp, #0x38]
008885b8  10 c0 8d e5                                      str ip, [sp, #0x10]
008885bc  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
008885c0  14 c0 8d e5                                      str ip, [sp, #0x14]
008885c4  51 f6 ff eb                                      bl #0x885f10
008885c8  18 30 9f e5                                      ldr r3, [pc, #0x18]
008885cc  05 00 a0 e1                                      mov r0, r5
008885d0  03 30 94 e7                                      ldr r3, [r4, r3]
008885d4  08 30 83 e2                                      add r3, r3, #8
008885d8  00 30 85 e5                                      str r3, [r5]
008885dc  1c d0 8d e2                                      add sp, sp, #0x1c
008885e0  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
008885e4  f4 c4 10 00 14 0a 00 00                          .byte 0xf4, 0xc4, 0x10, 0x00, 0x14, 0x0a, 0x00, 0x00
