; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00874e54, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderStbVorbis
; alias: _ZN3vox16DecoderStbVorbis7GetTypeEv
; demangled: vox::DecoderStbVorbis::GetType()
; decoder-mode: arm
00874e54  02 00 a0 e3                                      mov r0, #2
00874e58  1e ff 2f e1                                      bx lr

; FUNCTION 0x00874e5c, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderStbVorbis
; alias: _ZN3vox16DecoderStbVorbis8GetParamEv
; demangled: vox::DecoderStbVorbis::GetParam()
; decoder-mode: arm
00874e5c  00 00 a0 e3                                      mov r0, #0
00874e60  1e ff 2f e1                                      bx lr

; FUNCTION 0x00875160, declared_size=64, range_size=64, mode=arm
; class-group: vox::DecoderStbVorbis
; alias: _ZN3vox16DecoderStbVorbisD1Ev
; demangled: vox::DecoderStbVorbis::~DecoderStbVorbis()
; decoder-mode: arm
00875160  10 40 2d e9                                      push {r4, lr}
00875164  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00875168  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0087516c  00 40 a0 e1                                      mov r4, r0
00875170  03 30 8f e0                                      add r3, pc, r3
00875174  04 00 90 e5                                      ldr r0, [r0, #4]
00875178  02 20 93 e7                                      ldr r2, [r3, r2]
0087517c  00 00 50 e3                                      cmp r0, #0
00875180  08 20 82 e2                                      add r2, r2, #8
00875184  00 20 84 e5                                      str r2, [r4]
00875188  00 00 00 0a                                      beq #0x875190
0087518c  0a 16 00 eb                                      bl #0x87a9bc
00875190  04 00 a0 e1                                      mov r0, r4
00875194  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00875198  20 f9 11 00 c4 07 00 00                          .byte 0x20, 0xf9, 0x11, 0x00, 0xc4, 0x07, 0x00, 0x00

; FUNCTION 0x008751a0, declared_size=28, range_size=28, mode=arm
; class-group: vox::DecoderStbVorbis
; alias: _ZN3vox16DecoderStbVorbisD0Ev
; demangled: vox::DecoderStbVorbis::~DecoderStbVorbis()
; decoder-mode: arm
008751a0  10 40 2d e9                                      push {r4, lr}
008751a4  00 40 a0 e1                                      mov r4, r0
008751a8  ec ff ff eb                                      bl #0x875160
008751ac  04 00 a0 e1                                      mov r0, r4
008751b0  3e 64 ea eb                                      bl #0x30e2b0
008751b4  04 00 a0 e1                                      mov r0, r4
008751b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008751bc, declared_size=64, range_size=64, mode=arm
; class-group: vox::DecoderStbVorbis
; alias: _ZN3vox16DecoderStbVorbisD2Ev
; demangled: vox::DecoderStbVorbis::~DecoderStbVorbis()
; decoder-mode: arm
008751bc  10 40 2d e9                                      push {r4, lr}
008751c0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008751c4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
008751c8  00 40 a0 e1                                      mov r4, r0
008751cc  03 30 8f e0                                      add r3, pc, r3
008751d0  04 00 90 e5                                      ldr r0, [r0, #4]
008751d4  02 20 93 e7                                      ldr r2, [r3, r2]
008751d8  00 00 50 e3                                      cmp r0, #0
008751dc  08 20 82 e2                                      add r2, r2, #8
008751e0  00 20 84 e5                                      str r2, [r4]
008751e4  00 00 00 0a                                      beq #0x8751ec
008751e8  f3 15 00 eb                                      bl #0x87a9bc
008751ec  04 00 a0 e1                                      mov r0, r4
008751f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008751f4  c4 f8 11 00 c4 07 00 00                          .byte 0xc4, 0xf8, 0x11, 0x00, 0xc4, 0x07, 0x00, 0x00

; FUNCTION 0x0087537c, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderStbVorbis
; alias: _ZN3vox16DecoderStbVorbis13DestroyCursorEPNS_22DecoderCursorInterfaceE
; demangled: vox::DecoderStbVorbis::DestroyCursor(vox::DecoderCursorInterface*)
; decoder-mode: arm
0087537c  10 40 2d e9                                      push {r4, lr}
00875380  00 40 51 e2                                      subs r4, r1, #0
00875384  06 00 00 0a                                      beq #0x8753a4
00875388  00 30 94 e5                                      ldr r3, [r4]
0087538c  04 00 a0 e1                                      mov r0, r4
00875390  0f e0 a0 e1                                      mov lr, pc
00875394  00 f0 93 e5                                      ldr pc, [r3]
00875398  04 00 a0 e1                                      mov r0, r4
0087539c  10 40 bd e8                                      pop {r4, lr}
008753a0  27 6c ea ea                                      b #0x310444
008753a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008753a8, declared_size=48, range_size=48, mode=arm
; class-group: vox::DecoderStbVorbis
; alias: _ZN3vox16DecoderStbVorbis15CreateNewCursorEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderStbVorbis::CreateNewCursor(vox::StreamCursorInterface*)
; decoder-mode: arm
008753a8  70 40 2d e9                                      push {r4, r5, r6, lr}
008753ac  00 60 a0 e1                                      mov r6, r0
008753b0  01 50 a0 e1                                      mov r5, r1
008753b4  28 00 a0 e3                                      mov r0, #0x28
008753b8  00 10 a0 e3                                      mov r1, #0
008753bc  a1 6c ea eb                                      bl #0x310648
008753c0  06 10 a0 e1                                      mov r1, r6
008753c4  00 40 a0 e1                                      mov r4, r0
008753c8  05 20 a0 e1                                      mov r2, r5
008753cc  8a ff ff eb                                      bl #0x8751fc
008753d0  04 00 a0 e1                                      mov r0, r4
008753d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
