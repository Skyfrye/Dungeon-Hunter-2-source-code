; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00875e24, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxMSWavSubDecoderPCM
; alias: _ZN3vox21VoxMSWavSubDecoderPCMD1Ev
; demangled: vox::VoxMSWavSubDecoderPCM::~VoxMSWavSubDecoderPCM()
; decoder-mode: arm
00875e24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00875e28, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxMSWavSubDecoderPCM
; alias: _ZN3vox21VoxMSWavSubDecoderPCM11GetDataSizeEv
; demangled: vox::VoxMSWavSubDecoderPCM::GetDataSize()
; decoder-mode: arm
00875e28  08 30 90 e5                                      ldr r3, [r0, #8]
00875e2c  38 00 93 e5                                      ldr r0, [r3, #0x38]
00875e30  00 00 50 e3                                      cmp r0, #0
00875e34  1e ff 2f 01                                      bxeq lr
00875e38  09 00 90 e9                                      ldmib r0, {r0, r3}
00875e3c  00 00 53 e3                                      cmp r3, #0
00875e40  1e ff 2f 01                                      bxeq lr
00875e44  0c 00 93 e9                                      ldmib r3, {r2, r3}
00875e48  02 00 80 e0                                      add r0, r0, r2
00875e4c  00 00 53 e3                                      cmp r3, #0
00875e50  fb ff ff 1a                                      bne #0x875e44
00875e54  1e ff 2f e1                                      bx lr

; FUNCTION 0x00875e58, declared_size=112, range_size=112, mode=arm
; class-group: vox::VoxMSWavSubDecoderPCM
; alias: _ZN3vox21VoxMSWavSubDecoderPCM7HasDataEv
; demangled: vox::VoxMSWavSubDecoderPCM::HasData()
; decoder-mode: arm
00875e58  10 40 2d e9                                      push {r4, lr}
00875e5c  04 30 90 e5                                      ldr r3, [r0, #4]
00875e60  00 40 a0 e1                                      mov r4, r0
00875e64  00 00 53 e3                                      cmp r3, #0
00875e68  14 00 00 0a                                      beq #0x875ec0
00875e6c  24 20 90 e5                                      ldr r2, [r0, #0x24]
00875e70  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00875e74  03 00 52 e1                                      cmp r2, r3
00875e78  02 00 00 3a                                      blo #0x875e88
00875e7c  28 10 d0 e5                                      ldrb r1, [r0, #0x28]
00875e80  00 00 51 e3                                      cmp r1, #0
00875e84  03 00 00 1a                                      bne #0x875e98
00875e88  03 00 52 e1                                      cmp r2, r3
00875e8c  00 00 a0 23                                      movhs r0, #0
00875e90  01 00 a0 33                                      movlo r0, #1
00875e94  10 80 bd e8                                      pop {r4, pc}
00875e98  00 30 90 e5                                      ldr r3, [r0]
00875e9c  00 10 a0 e3                                      mov r1, #0
00875ea0  0f e0 a0 e1                                      mov lr, pc
00875ea4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00875ea8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00875eac  24 20 94 e5                                      ldr r2, [r4, #0x24]
00875eb0  03 00 52 e1                                      cmp r2, r3
00875eb4  00 00 a0 23                                      movhs r0, #0
00875eb8  01 00 a0 33                                      movlo r0, #1
00875ebc  10 80 bd e8                                      pop {r4, pc}
00875ec0  03 00 a0 e1                                      mov r0, r3
00875ec4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00875ec8, declared_size=20, range_size=20, mode=arm
; class-group: vox::VoxMSWavSubDecoderPCM
; alias: _ZN3vox21VoxMSWavSubDecoderPCMD0Ev
; demangled: vox::VoxMSWavSubDecoderPCM::~VoxMSWavSubDecoderPCM()
; decoder-mode: arm
00875ec8  10 40 2d e9                                      push {r4, lr}
00875ecc  00 40 a0 e1                                      mov r4, r0
00875ed0  f6 60 ea eb                                      bl #0x30e2b0
00875ed4  04 00 a0 e1                                      mov r0, r4
00875ed8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00875edc, declared_size=244, range_size=244, mode=arm
; class-group: vox::VoxMSWavSubDecoderPCM
; alias: _ZN3vox21VoxMSWavSubDecoderPCM4SeekEj
; demangled: vox::VoxMSWavSubDecoderPCM::Seek(unsigned int)
; decoder-mode: arm
00875edc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00875ee0  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00875ee4  00 40 a0 e1                                      mov r4, r0
00875ee8  01 50 a0 e1                                      mov r5, r1
00875eec  01 00 53 e1                                      cmp r3, r1
00875ef0  01 00 00 2a                                      bhs #0x875efc
00875ef4  00 00 e0 e3                                      mvn r0, #0
00875ef8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00875efc  00 30 a0 e3                                      mov r3, #0
00875f00  24 30 80 e5                                      str r3, [r0, #0x24]
00875f04  0c 30 80 e5                                      str r3, [r0, #0xc]
00875f08  56 80 00 eb                                      bl #0x896068
00875f0c  00 00 55 e3                                      cmp r5, #0
00875f10  2c 00 00 0a                                      beq #0x875fc8
00875f14  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00875f18  00 00 53 e3                                      cmp r3, #0
00875f1c  29 00 00 0a                                      beq #0x875fc8
00875f20  08 60 94 e5                                      ldr r6, [r4, #8]
00875f24  28 80 96 e5                                      ldr r8, [r6, #0x28]
00875f28  b0 72 d6 e1                                      ldrh r7, [r6, #0x20]
00875f2c  08 00 a0 e1                                      mov r0, r8
00875f30  07 10 a0 e1                                      mov r1, r7
00875f34  44 63 ea eb                                      bl #0x30ec4c
00875f38  05 00 50 e1                                      cmp r0, r5
00875f3c  00 30 a0 e1                                      mov r3, r0
00875f40  10 00 00 9a                                      bls #0x875f88
00875f44  24 10 94 e5                                      ldr r1, [r4, #0x24]
00875f48  04 30 94 e5                                      ldr r3, [r4, #4]
00875f4c  01 20 a0 e3                                      mov r2, #1
00875f50  05 10 81 e0                                      add r1, r1, r5
00875f54  24 10 84 e5                                      str r1, [r4, #0x24]
00875f58  b0 12 d6 e1                                      ldrh r1, [r6, #0x20]
00875f5c  03 00 a0 e1                                      mov r0, r3
00875f60  00 30 93 e5                                      ldr r3, [r3]
00875f64  91 05 01 e0                                      mul r1, r1, r5
00875f68  0f e0 a0 e1                                      mov lr, pc
00875f6c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00875f70  08 30 94 e5                                      ldr r3, [r4, #8]
00875f74  00 00 a0 e3                                      mov r0, #0
00875f78  b0 32 d3 e1                                      ldrh r3, [r3, #0x20]
00875f7c  93 05 05 e0                                      mul r5, r3, r5
00875f80  20 50 84 e5                                      str r5, [r4, #0x20]
00875f84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00875f88  24 20 94 e5                                      ldr r2, [r4, #0x24]
00875f8c  04 00 a0 e1                                      mov r0, r4
00875f90  03 30 82 e0                                      add r3, r2, r3
00875f94  24 30 84 e5                                      str r3, [r4, #0x24]
00875f98  32 80 00 eb                                      bl #0x896068
00875f9c  08 60 94 e5                                      ldr r6, [r4, #8]
00875fa0  28 80 96 e5                                      ldr r8, [r6, #0x28]
00875fa4  b0 72 d6 e1                                      ldrh r7, [r6, #0x20]
00875fa8  08 00 a0 e1                                      mov r0, r8
00875fac  07 10 a0 e1                                      mov r1, r7
00875fb0  25 63 ea eb                                      bl #0x30ec4c
00875fb4  00 50 55 e0                                      subs r5, r5, r0
00875fb8  02 00 00 0a                                      beq #0x875fc8
00875fbc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00875fc0  00 00 53 e3                                      cmp r3, #0
00875fc4  d8 ff ff 1a                                      bne #0x875f2c
00875fc8  00 00 a0 e3                                      mov r0, #0
00875fcc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00875fd0, declared_size=408, range_size=408, mode=arm
; class-group: vox::VoxMSWavSubDecoderPCM
; alias: _ZN3vox21VoxMSWavSubDecoderPCM6DecodeEPvi
; demangled: vox::VoxMSWavSubDecoderPCM::Decode(void*, int)
; decoder-mode: arm
00875fd0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00875fd4  08 30 90 e5                                      ldr r3, [r0, #8]
00875fd8  20 c0 90 e5                                      ldr ip, [r0, #0x20]
00875fdc  00 40 a0 e1                                      mov r4, r0
00875fe0  28 60 93 e5                                      ldr r6, [r3, #0x28]
00875fe4  01 80 a0 e1                                      mov r8, r1
00875fe8  02 70 a0 e1                                      mov r7, r2
00875fec  06 00 5c e1                                      cmp ip, r6
00875ff0  55 00 00 2a                                      bhs #0x87614c
00875ff4  07 00 a0 e1                                      mov r0, r7
00875ff8  b0 12 d3 e1                                      ldrh r1, [r3, #0x20]
00875ffc  40 62 ea eb                                      bl #0x30e904
00876000  07 70 61 e0                                      rsb r7, r1, r7
00876004  00 00 57 e3                                      cmp r7, #0
00876008  00 50 a0 d3                                      movle r5, #0
0087600c  3c 00 00 da                                      ble #0x876104
00876010  00 50 a0 e3                                      mov r5, #0
00876014  24 00 00 ea                                      b #0x8760ac
00876018  04 30 94 e5                                      ldr r3, [r4, #4]
0087601c  05 10 88 e0                                      add r1, r8, r5
00876020  03 00 a0 e1                                      mov r0, r3
00876024  00 30 93 e5                                      ldr r3, [r3]
00876028  0f e0 a0 e1                                      mov lr, pc
0087602c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00876030  20 90 94 e5                                      ldr sb, [r4, #0x20]
00876034  00 a0 a0 e1                                      mov sl, r0
00876038  00 90 89 e0                                      add sb, sb, r0
0087603c  20 90 84 e5                                      str sb, [r4, #0x20]
00876040  18 30 94 e5                                      ldr r3, [r4, #0x18]
00876044  10 10 94 e5                                      ldr r1, [r4, #0x10]
00876048  0a 00 a0 e1                                      mov r0, sl
0087604c  c3 31 a0 e1                                      asr r3, r3, #3
00876050  91 03 01 e0                                      mul r1, r1, r3
00876054  92 60 ea eb                                      bl #0x30e2a4
00876058  24 30 94 e5                                      ldr r3, [r4, #0x24]
0087605c  06 00 59 e1                                      cmp sb, r6
00876060  0a 50 85 e0                                      add r5, r5, sl
00876064  03 30 80 e0                                      add r3, r0, r3
00876068  24 30 84 e5                                      str r3, [r4, #0x24]
0087606c  1f 00 00 3a                                      blo #0x8760f0
00876070  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00876074  02 00 53 e1                                      cmp r3, r2
00876078  23 00 00 3a                                      blo #0x87610c
0087607c  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
00876080  00 00 53 e3                                      cmp r3, #0
00876084  1e 00 00 0a                                      beq #0x876104
00876088  00 30 94 e5                                      ldr r3, [r4]
0087608c  04 00 a0 e1                                      mov r0, r4
00876090  00 10 a0 e3                                      mov r1, #0
00876094  0f e0 a0 e1                                      mov lr, pc
00876098  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0087609c  00 00 50 e3                                      cmp r0, #0
008760a0  17 00 00 1a                                      bne #0x876104
008760a4  05 00 57 e1                                      cmp r7, r5
008760a8  15 00 00 da                                      ble #0x876104
008760ac  20 10 94 e5                                      ldr r1, [r4, #0x20]
008760b0  07 20 65 e0                                      rsb r2, r5, r7
008760b4  01 30 82 e0                                      add r3, r2, r1
008760b8  06 00 53 e1                                      cmp r3, r6
008760bc  d5 ff ff 9a                                      bls #0x876018
008760c0  04 30 94 e5                                      ldr r3, [r4, #4]
008760c4  06 20 61 e0                                      rsb r2, r1, r6
008760c8  05 10 88 e0                                      add r1, r8, r5
008760cc  03 00 a0 e1                                      mov r0, r3
008760d0  00 30 93 e5                                      ldr r3, [r3]
008760d4  0f e0 a0 e1                                      mov lr, pc
008760d8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008760dc  08 30 94 e5                                      ldr r3, [r4, #8]
008760e0  00 a0 a0 e1                                      mov sl, r0
008760e4  28 90 93 e5                                      ldr sb, [r3, #0x28]
008760e8  20 90 84 e5                                      str sb, [r4, #0x20]
008760ec  d3 ff ff ea                                      b #0x876040
008760f0  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
008760f4  02 00 53 e1                                      cmp r3, r2
008760f8  df ff ff 2a                                      bhs #0x87607c
008760fc  00 00 5a e3                                      cmp sl, #0
00876100  e7 ff ff 1a                                      bne #0x8760a4
00876104  05 00 a0 e1                                      mov r0, r5
00876108  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0087610c  04 00 a0 e1                                      mov r0, r4
00876110  d4 7f 00 eb                                      bl #0x896068
00876114  08 30 94 e5                                      ldr r3, [r4, #8]
00876118  28 10 93 e5                                      ldr r1, [r3, #0x28]
0087611c  00 00 51 e3                                      cmp r1, #0
00876120  df ff ff 1a                                      bne #0x8760a4
00876124  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
00876128  00 00 53 e3                                      cmp r3, #0
0087612c  0a 00 00 0a                                      beq #0x87615c
00876130  00 30 94 e5                                      ldr r3, [r4]
00876134  04 00 a0 e1                                      mov r0, r4
00876138  0f e0 a0 e1                                      mov lr, pc
0087613c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00876140  00 00 50 e3                                      cmp r0, #0
00876144  d6 ff ff 0a                                      beq #0x8760a4
00876148  ed ff ff ea                                      b #0x876104
0087614c  c5 7f 00 eb                                      bl #0x896068
00876150  08 30 94 e5                                      ldr r3, [r4, #8]
00876154  28 60 93 e5                                      ldr r6, [r3, #0x28]
00876158  a5 ff ff ea                                      b #0x875ff4
0087615c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00876160  24 30 84 e5                                      str r3, [r4, #0x24]
00876164  e6 ff ff ea                                      b #0x876104

; FUNCTION 0x00876168, declared_size=152, range_size=152, mode=arm
; class-group: vox::VoxMSWavSubDecoderPCM
; alias: _ZN3vox21VoxMSWavSubDecoderPCMC1EPNS_21StreamCursorInterfaceEPNS_9WaveChunkE
; demangled: vox::VoxMSWavSubDecoderPCM::VoxMSWavSubDecoderPCM(vox::StreamCursorInterface*, vox::WaveChunk*)
; decoder-mode: arm
00876168  88 30 9f e5                                      ldr r3, [pc, #0x88]
0087616c  88 c0 9f e5                                      ldr ip, [pc, #0x88]
00876170  10 40 2d e9                                      push {r4, lr}
00876174  03 30 8f e0                                      add r3, pc, r3
00876178  0c c0 93 e7                                      ldr ip, [r3, ip]
0087617c  00 e0 a0 e3                                      mov lr, #0
00876180  10 e0 80 e5                                      str lr, [r0, #0x10]
00876184  08 c0 8c e2                                      add ip, ip, #8
00876188  14 e0 80 e5                                      str lr, [r0, #0x14]
0087618c  18 e0 80 e5                                      str lr, [r0, #0x18]
00876190  28 e0 c0 e5                                      strb lr, [r0, #0x28]
00876194  00 c0 80 e5                                      str ip, [r0]
00876198  08 20 80 e5                                      str r2, [r0, #8]
0087619c  0c e0 80 e5                                      str lr, [r0, #0xc]
008761a0  1c e0 80 e5                                      str lr, [r0, #0x1c]
008761a4  20 e0 80 e5                                      str lr, [r0, #0x20]
008761a8  24 e0 80 e5                                      str lr, [r0, #0x24]
008761ac  04 10 80 e5                                      str r1, [r0, #4]
008761b0  b2 12 d2 e1                                      ldrh r1, [r2, #0x22]
008761b4  00 40 a0 e1                                      mov r4, r0
008761b8  18 10 80 e5                                      str r1, [r0, #0x18]
008761bc  b6 31 d2 e1                                      ldrh r3, [r2, #0x16]
008761c0  10 30 80 e5                                      str r3, [r0, #0x10]
008761c4  18 30 92 e5                                      ldr r3, [r2, #0x18]
008761c8  14 30 80 e5                                      str r3, [r0, #0x14]
008761cc  15 ff ff eb                                      bl #0x875e28
008761d0  18 30 94 e5                                      ldr r3, [r4, #0x18]
008761d4  10 10 94 e5                                      ldr r1, [r4, #0x10]
008761d8  c3 31 a0 e1                                      asr r3, r3, #3
008761dc  91 03 01 e0                                      mul r1, r1, r3
008761e0  2f 60 ea eb                                      bl #0x30e2a4
008761e4  1c 00 84 e5                                      str r0, [r4, #0x1c]
008761e8  04 00 a0 e1                                      mov r0, r4
008761ec  9d 7f 00 eb                                      bl #0x896068
008761f0  04 00 a0 e1                                      mov r0, r4
008761f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008761f8  1c e9 11 00 b4 1b 00 00                          .byte 0x1c, 0xe9, 0x11, 0x00, 0xb4, 0x1b, 0x00, 0x00

; FUNCTION 0x00876200, declared_size=152, range_size=152, mode=arm
; class-group: vox::VoxMSWavSubDecoderPCM
; alias: _ZN3vox21VoxMSWavSubDecoderPCMC2EPNS_21StreamCursorInterfaceEPNS_9WaveChunkE
; demangled: vox::VoxMSWavSubDecoderPCM::VoxMSWavSubDecoderPCM(vox::StreamCursorInterface*, vox::WaveChunk*)
; decoder-mode: arm
00876200  88 30 9f e5                                      ldr r3, [pc, #0x88]
00876204  88 c0 9f e5                                      ldr ip, [pc, #0x88]
00876208  10 40 2d e9                                      push {r4, lr}
0087620c  03 30 8f e0                                      add r3, pc, r3
00876210  0c c0 93 e7                                      ldr ip, [r3, ip]
00876214  00 e0 a0 e3                                      mov lr, #0
00876218  10 e0 80 e5                                      str lr, [r0, #0x10]
0087621c  08 c0 8c e2                                      add ip, ip, #8
00876220  14 e0 80 e5                                      str lr, [r0, #0x14]
00876224  18 e0 80 e5                                      str lr, [r0, #0x18]
00876228  28 e0 c0 e5                                      strb lr, [r0, #0x28]
0087622c  00 c0 80 e5                                      str ip, [r0]
00876230  08 20 80 e5                                      str r2, [r0, #8]
00876234  0c e0 80 e5                                      str lr, [r0, #0xc]
00876238  1c e0 80 e5                                      str lr, [r0, #0x1c]
0087623c  20 e0 80 e5                                      str lr, [r0, #0x20]
00876240  24 e0 80 e5                                      str lr, [r0, #0x24]
00876244  04 10 80 e5                                      str r1, [r0, #4]
00876248  b2 12 d2 e1                                      ldrh r1, [r2, #0x22]
0087624c  00 40 a0 e1                                      mov r4, r0
00876250  18 10 80 e5                                      str r1, [r0, #0x18]
00876254  b6 31 d2 e1                                      ldrh r3, [r2, #0x16]
00876258  10 30 80 e5                                      str r3, [r0, #0x10]
0087625c  18 30 92 e5                                      ldr r3, [r2, #0x18]
00876260  14 30 80 e5                                      str r3, [r0, #0x14]
00876264  ef fe ff eb                                      bl #0x875e28
00876268  18 30 94 e5                                      ldr r3, [r4, #0x18]
0087626c  10 10 94 e5                                      ldr r1, [r4, #0x10]
00876270  c3 31 a0 e1                                      asr r3, r3, #3
00876274  91 03 01 e0                                      mul r1, r1, r3
00876278  09 60 ea eb                                      bl #0x30e2a4
0087627c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00876280  04 00 a0 e1                                      mov r0, r4
00876284  77 7f 00 eb                                      bl #0x896068
00876288  04 00 a0 e1                                      mov r0, r4
0087628c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00876290  84 e8 11 00 b4 1b 00 00                          .byte 0x84, 0xe8, 0x11, 0x00, 0xb4, 0x1b, 0x00, 0x00
