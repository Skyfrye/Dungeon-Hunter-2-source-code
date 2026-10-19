; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00875414, declared_size=4, range_size=4, mode=arm
; class-group: vox::VoxMSWavSubDecoder
; alias: _ZN3vox18VoxMSWavSubDecoderD1Ev
; demangled: vox::VoxMSWavSubDecoder::~VoxMSWavSubDecoder()
; decoder-mode: arm
00875414  1e ff 2f e1                                      bx lr

; FUNCTION 0x008754c8, declared_size=20, range_size=20, mode=arm
; class-group: vox::VoxMSWavSubDecoder
; alias: _ZN3vox18VoxMSWavSubDecoderD0Ev
; demangled: vox::VoxMSWavSubDecoder::~VoxMSWavSubDecoder()
; decoder-mode: arm
008754c8  10 40 2d e9                                      push {r4, lr}
008754cc  00 40 a0 e1                                      mov r4, r0
008754d0  76 63 ea eb                                      bl #0x30e2b0
008754d4  04 00 a0 e1                                      mov r0, r4
008754d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00896068, declared_size=140, range_size=140, mode=arm
; class-group: vox::VoxMSWavSubDecoder
; alias: _ZN3vox18VoxMSWavSubDecoder17GoToNextDataChunkEv
; demangled: vox::VoxMSWavSubDecoder::GoToNextDataChunk()
; decoder-mode: arm
00896068  10 40 2d e9                                      push {r4, lr}
0089606c  08 10 90 e5                                      ldr r1, [r0, #8]
00896070  00 40 a0 e1                                      mov r4, r0
00896074  00 00 51 e3                                      cmp r1, #0
00896078  16 00 00 0a                                      beq #0x8960d8
0089607c  04 30 90 e5                                      ldr r3, [r0, #4]
00896080  00 00 53 e3                                      cmp r3, #0
00896084  13 00 00 0a                                      beq #0x8960d8
00896088  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0089608c  00 00 52 e3                                      cmp r2, #0
00896090  11 00 00 0a                                      beq #0x8960dc
00896094  08 20 92 e5                                      ldr r2, [r2, #8]
00896098  00 00 52 e3                                      cmp r2, #0
0089609c  0c 20 80 15                                      strne r2, [r0, #0xc]
008960a0  10 00 00 0a                                      beq #0x8960e8
008960a4  00 10 92 e5                                      ldr r1, [r2]
008960a8  03 00 a0 e1                                      mov r0, r3
008960ac  00 20 a0 e3                                      mov r2, #0
008960b0  00 30 93 e5                                      ldr r3, [r3]
008960b4  08 10 81 e2                                      add r1, r1, #8
008960b8  0f e0 a0 e1                                      mov lr, pc
008960bc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008960c0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
008960c4  08 30 94 e5                                      ldr r3, [r4, #8]
008960c8  04 20 92 e5                                      ldr r2, [r2, #4]
008960cc  28 20 83 e5                                      str r2, [r3, #0x28]
008960d0  00 30 a0 e3                                      mov r3, #0
008960d4  20 30 84 e5                                      str r3, [r4, #0x20]
008960d8  10 80 bd e8                                      pop {r4, pc}
008960dc  38 20 91 e5                                      ldr r2, [r1, #0x38]
008960e0  0c 20 80 e5                                      str r2, [r0, #0xc]
008960e4  ee ff ff ea                                      b #0x8960a4
008960e8  0c 20 80 e5                                      str r2, [r0, #0xc]
008960ec  28 20 81 e5                                      str r2, [r1, #0x28]
008960f0  10 80 bd e8                                      pop {r4, pc}
