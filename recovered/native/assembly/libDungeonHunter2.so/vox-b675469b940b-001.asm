; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008704dc, declared_size=40, range_size=40, mode=arm
; class-group: vox
; alias: _ZN3vox18DecoderMPC8FactoryEPv
; demangled: vox::DecoderMPC8Factory(void*)
; decoder-mode: arm
008704dc  70 40 2d e9                                      push {r4, r5, r6, lr}
008704e0  00 10 a0 e3                                      mov r1, #0
008704e4  00 50 a0 e1                                      mov r5, r0
008704e8  08 00 a0 e3                                      mov r0, #8
008704ec  55 80 ea eb                                      bl #0x310648
008704f0  05 10 a0 e1                                      mov r1, r5
008704f4  00 40 a0 e1                                      mov r4, r0
008704f8  ec fd ff eb                                      bl #0x86fcb0
008704fc  04 00 a0 e1                                      mov r0, r4
00870500  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008709b8, declared_size=32, range_size=32, mode=arm
; class-group: vox
; alias: _ZN3vox19DecoderMSWavFactoryEPv
; demangled: vox::DecoderMSWavFactory(void*)
; decoder-mode: arm
008709b8  10 40 2d e9                                      push {r4, lr}
008709bc  00 10 a0 e3                                      mov r1, #0
008709c0  44 00 a0 e3                                      mov r0, #0x44
008709c4  1f 7f ea eb                                      bl #0x310648
008709c8  00 40 a0 e1                                      mov r4, r0
008709cc  dd fe ff eb                                      bl #0x870548
008709d0  04 00 a0 e1                                      mov r0, r4
008709d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00872b78, declared_size=32, range_size=32, mode=arm
; class-group: vox
; alias: _ZN3vox20DecoderNativeFactoryEPv
; demangled: vox::DecoderNativeFactory(void*)
; decoder-mode: arm
00872b78  10 40 2d e9                                      push {r4, lr}
00872b7c  00 10 a0 e3                                      mov r1, #0
00872b80  8c 00 a0 e3                                      mov r0, #0x8c
00872b84  af 76 ea eb                                      bl #0x310648
00872b88  00 40 a0 e1                                      mov r4, r0
00872b8c  cf ff ff eb                                      bl #0x872ad0
00872b90  04 00 a0 e1                                      mov r0, r4
00872b94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00874e2c, declared_size=40, range_size=40, mode=arm
; class-group: vox
; alias: _ZN3vox17DecoderRawFactoryEPv
; demangled: vox::DecoderRawFactory(void*)
; decoder-mode: arm
00874e2c  70 40 2d e9                                      push {r4, r5, r6, lr}
00874e30  00 10 a0 e3                                      mov r1, #0
00874e34  00 50 a0 e1                                      mov r5, r0
00874e38  14 00 a0 e3                                      mov r0, #0x14
00874e3c  01 6e ea eb                                      bl #0x310648
00874e40  05 10 a0 e1                                      mov r1, r5
00874e44  00 40 a0 e1                                      mov r4, r0
00874e48  05 ff ff eb                                      bl #0x874a64
00874e4c  04 00 a0 e1                                      mov r0, r4
00874e50  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008753d8, declared_size=60, range_size=60, mode=arm
; class-group: vox
; alias: _ZN3vox23DecoderStbVorbisFactoryEPv
; demangled: vox::DecoderStbVorbisFactory(void*)
; decoder-mode: arm
008753d8  10 40 2d e9                                      push {r4, lr}
008753dc  00 10 a0 e3                                      mov r1, #0
008753e0  0c 00 a0 e3                                      mov r0, #0xc
008753e4  97 6c ea eb                                      bl #0x310648
008753e8  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
008753ec  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
008753f0  00 10 a0 e3                                      mov r1, #0
008753f4  04 40 8f e0                                      add r4, pc, r4
008753f8  03 30 94 e7                                      ldr r3, [r4, r3]
008753fc  04 10 80 e5                                      str r1, [r0, #4]
00875400  08 30 83 e2                                      add r3, r3, #8
00875404  00 30 80 e5                                      str r3, [r0]
00875408  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0087540c  9c f6 11 00 c4 07 00 00                          .byte 0x9c, 0xf6, 0x11, 0x00, 0xc4, 0x07, 0x00, 0x00

; FUNCTION 0x00888f98, declared_size=40, range_size=40, mode=arm
; class-group: vox
; alias: _ZN3vox18StreamCFileFactoryEPv
; demangled: vox::StreamCFileFactory(void*)
; decoder-mode: arm
00888f98  70 40 2d e9                                      push {r4, r5, r6, lr}
00888f9c  00 10 a0 e3                                      mov r1, #0
00888fa0  00 50 a0 e1                                      mov r5, r0
00888fa4  24 00 a0 e3                                      mov r0, #0x24
00888fa8  a6 1d ea eb                                      bl #0x310648
00888fac  05 10 a0 e1                                      mov r1, r5
00888fb0  00 40 a0 e1                                      mov r4, r0
00888fb4  d7 ff ff eb                                      bl #0x888f18
00888fb8  04 00 a0 e1                                      mov r0, r4
00888fbc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008891dc, declared_size=40, range_size=40, mode=arm
; class-group: vox
; alias: _ZN3vox25StreamMemoryBufferFactoryEPv
; demangled: vox::StreamMemoryBufferFactory(void*)
; decoder-mode: arm
008891dc  70 40 2d e9                                      push {r4, r5, r6, lr}
008891e0  00 10 a0 e3                                      mov r1, #0
008891e4  00 50 a0 e1                                      mov r5, r0
008891e8  10 00 a0 e3                                      mov r0, #0x10
008891ec  15 1d ea eb                                      bl #0x310648
008891f0  05 10 a0 e1                                      mov r1, r5
008891f4  00 40 a0 e1                                      mov r4, r0
008891f8  cb ff ff eb                                      bl #0x88912c
008891fc  04 00 a0 e1                                      mov r0, r4
00889200  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088fac4, declared_size=32, range_size=32, mode=arm
; class-group: vox
; alias: _ZN3vox12CreateDriverEv
; demangled: vox::CreateDriver()
; decoder-mode: arm
0088fac4  10 40 2d e9                                      push {r4, lr}
0088fac8  00 10 a0 e3                                      mov r1, #0
0088facc  6c 00 a0 e3                                      mov r0, #0x6c
0088fad0  dc 02 ea eb                                      bl #0x310648
0088fad4  00 40 a0 e1                                      mov r4, r0
0088fad8  e8 ff ff eb                                      bl #0x88fa80
0088fadc  04 00 a0 e1                                      mov r0, r4
0088fae0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00893710, declared_size=4, range_size=4, mode=arm
; class-group: vox
; alias: _ZN3vox10funcUpdateEPv
; demangled: vox::funcUpdate(void*)
; decoder-mode: arm
00893710  fa ff ff ea                                      b #0x893700

; FUNCTION 0x008947b0, declared_size=32, range_size=32, mode=arm
; class-group: vox
; alias: _ZN3vox16VoxNewFileSystemEv
; demangled: vox::VoxNewFileSystem()
; decoder-mode: arm
008947b0  10 40 2d e9                                      push {r4, lr}
008947b4  00 10 a0 e3                                      mov r1, #0
008947b8  14 00 a0 e3                                      mov r0, #0x14
008947bc  a1 ef e9 eb                                      bl #0x310648
008947c0  00 40 a0 e1                                      mov r4, r0
008947c4  ae ff ff eb                                      bl #0x894684
008947c8  04 00 a0 e1                                      mov r0, r4
008947cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008947d0, declared_size=4, range_size=4, mode=arm
; class-group: vox
; alias: _ZN3vox10closeStdIOEPv
; demangled: vox::closeStdIO(void*)
; decoder-mode: arm
008947d0  cf e8 e9 ea                                      b #0x30eb14

; FUNCTION 0x008947d4, declared_size=260, range_size=260, mode=arm
; class-group: vox
; alias: _ZN3vox9openStdIOEPKcNS_17VoxFileAccessModeE
; demangled: vox::openStdIO(char const*, vox::VoxFileAccessMode)
; decoder-mode: arm
008947d4  0b 00 51 e3                                      cmp r1, #0xb
008947d8  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
008947dc  0e 00 00 ea                                      b #0x89481c
008947e0  0f 00 00 ea                                      b #0x894824
008947e4  11 00 00 ea                                      b #0x894830
008947e8  13 00 00 ea                                      b #0x89483c
008947ec  15 00 00 ea                                      b #0x894848
008947f0  17 00 00 ea                                      b #0x894854
008947f4  19 00 00 ea                                      b #0x894860
008947f8  1b 00 00 ea                                      b #0x89486c
008947fc  1d 00 00 ea                                      b #0x894878
00894800  1f 00 00 ea                                      b #0x894884
00894804  21 00 00 ea                                      b #0x894890
00894808  23 00 00 ea                                      b #0x89489c
0089480c  ff ff ff ea                                      b #0x894810
00894810  90 10 9f e5                                      ldr r1, [pc, #0x90]
00894814  01 10 8f e0                                      add r1, pc, r1
00894818  3a e7 e9 ea                                      b #0x30e508
0089481c  00 00 a0 e3                                      mov r0, #0
00894820  1e ff 2f e1                                      bx lr
00894824  80 10 9f e5                                      ldr r1, [pc, #0x80]
00894828  01 10 8f e0                                      add r1, pc, r1
0089482c  35 e7 e9 ea                                      b #0x30e508
00894830  78 10 9f e5                                      ldr r1, [pc, #0x78]
00894834  01 10 8f e0                                      add r1, pc, r1
00894838  32 e7 e9 ea                                      b #0x30e508
0089483c  70 10 9f e5                                      ldr r1, [pc, #0x70]
00894840  01 10 8f e0                                      add r1, pc, r1
00894844  2f e7 e9 ea                                      b #0x30e508
00894848  68 10 9f e5                                      ldr r1, [pc, #0x68]
0089484c  01 10 8f e0                                      add r1, pc, r1
00894850  2c e7 e9 ea                                      b #0x30e508
00894854  60 10 9f e5                                      ldr r1, [pc, #0x60]
00894858  01 10 8f e0                                      add r1, pc, r1
0089485c  29 e7 e9 ea                                      b #0x30e508
00894860  58 10 9f e5                                      ldr r1, [pc, #0x58]
00894864  01 10 8f e0                                      add r1, pc, r1
00894868  26 e7 e9 ea                                      b #0x30e508
0089486c  50 10 9f e5                                      ldr r1, [pc, #0x50]
00894870  01 10 8f e0                                      add r1, pc, r1
00894874  23 e7 e9 ea                                      b #0x30e508
00894878  48 10 9f e5                                      ldr r1, [pc, #0x48]
0089487c  01 10 8f e0                                      add r1, pc, r1
00894880  20 e7 e9 ea                                      b #0x30e508
00894884  40 10 9f e5                                      ldr r1, [pc, #0x40]
00894888  01 10 8f e0                                      add r1, pc, r1
0089488c  1d e7 e9 ea                                      b #0x30e508
00894890  38 10 9f e5                                      ldr r1, [pc, #0x38]
00894894  01 10 8f e0                                      add r1, pc, r1
00894898  1a e7 e9 ea                                      b #0x30e508
0089489c  30 10 9f e5                                      ldr r1, [pc, #0x30]
008948a0  01 10 8f e0                                      add r1, pc, r1
008948a4  17 e7 e9 ea                                      b #0x30e508
; mapping-symbol data/literal pool
008948a8  7c bf 02 00 00 9f 04 00 7c a7 02 00 e0 d5 02 00  .byte 0x7c, 0xbf, 0x02, 0x00, 0x00, 0x9f, 0x04, 0x00, 0x7c, 0xa7, 0x02, 0x00, 0xe0, 0xd5, 0x02, 0x00
008948b8  a4 d1 07 00 a0 d1 07 00 9c d1 07 00 30 bf 02 00  .byte 0xa4, 0xd1, 0x07, 0x00, 0xa0, 0xd1, 0x07, 0x00, 0x9c, 0xd1, 0x07, 0x00, 0x30, 0xbf, 0x02, 0x00
008948c8  1c a7 04 00 18 a7 04 00 74 d1 07 00 f8 be 02 00  .byte 0x1c, 0xa7, 0x04, 0x00, 0x18, 0xa7, 0x04, 0x00, 0x74, 0xd1, 0x07, 0x00, 0xf8, 0xbe, 0x02, 0x00

; FUNCTION 0x008948d8, declared_size=4, range_size=4, mode=arm
; class-group: vox
; alias: _ZN3vox9tellStdIOEPv
; demangled: vox::tellStdIO(void*)
; decoder-mode: arm
008948d8  57 e5 e9 ea                                      b #0x30de3c

; FUNCTION 0x008948dc, declared_size=24, range_size=24, mode=arm
; class-group: vox
; alias: _ZN3vox9seekStdIOEPviNS_17VoxFileSeekOriginE
; demangled: vox::seekStdIO(void*, int, vox::VoxFileSeekOrigin)
; decoder-mode: arm
008948dc  02 00 52 e3                                      cmp r2, #2
008948e0  02 00 00 0a                                      beq #0x8948f0
008948e4  01 00 52 e3                                      cmp r2, #1
008948e8  00 20 a0 13                                      movne r2, #0
008948ec  01 20 a0 03                                      moveq r2, #1
008948f0  3d e7 e9 ea                                      b #0x30e5ec

; FUNCTION 0x008948f4, declared_size=4, range_size=4, mode=arm
; class-group: vox
; alias: _ZN3vox10writeStdIOEPKviiPv
; demangled: vox::writeStdIO(void const*, int, int, void*)
; decoder-mode: arm
008948f4  27 e7 e9 ea                                      b #0x30e598

; FUNCTION 0x008948f8, declared_size=4, range_size=4, mode=arm
; class-group: vox
; alias: _ZN3vox9readStdIOEPviiS0_
; demangled: vox::readStdIO(void*, int, int, void*)
; decoder-mode: arm
008948f8  7b e6 e9 ea                                      b #0x30e2ec
