; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00871098, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNative7GetTypeEv
; demangled: vox::DecoderNative::GetType()
; decoder-mode: arm
00871098  04 00 a0 e3                                      mov r0, #4
0087109c  1e ff 2f e1                                      bx lr

; FUNCTION 0x008710a0, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNative8GetParamEv
; demangled: vox::DecoderNative::GetParam()
; decoder-mode: arm
008710a0  00 00 a0 e3                                      mov r0, #0
008710a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00871a50, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNative13DestroyCursorEPNS_22DecoderCursorInterfaceE
; demangled: vox::DecoderNative::DestroyCursor(vox::DecoderCursorInterface*)
; decoder-mode: arm
00871a50  10 40 2d e9                                      push {r4, lr}
00871a54  00 40 51 e2                                      subs r4, r1, #0
00871a58  06 00 00 0a                                      beq #0x871a78
00871a5c  00 30 94 e5                                      ldr r3, [r4]
00871a60  04 00 a0 e1                                      mov r0, r4
00871a64  0f e0 a0 e1                                      mov lr, pc
00871a68  00 f0 93 e5                                      ldr pc, [r3]
00871a6c  04 00 a0 e1                                      mov r0, r4
00871a70  10 40 bd e8                                      pop {r4, lr}
00871a74  72 7a ea ea                                      b #0x310444
00871a78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0087215c, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNative30CreateTransitionRulesContainerEii
; demangled: vox::DecoderNative::CreateTransitionRulesContainer(int, int)
; decoder-mode: arm
0087215c  24 30 a0 e3                                      mov r3, #0x24
00872160  93 21 23 e0                                      mla r3, r3, r1, r2
00872164  70 40 2d e9                                      push {r4, r5, r6, lr}
00872168  00 50 a0 e1                                      mov r5, r0
0087216c  24 00 43 e2                                      sub r0, r3, #0x24
00872170  01 40 a0 e1                                      mov r4, r1
00872174  df 78 ea eb                                      bl #0x3104f8
00872178  00 00 50 e3                                      cmp r0, #0
0087217c  54 00 85 e5                                      str r0, [r5, #0x54]
00872180  50 40 85 15                                      strne r4, [r5, #0x50]
00872184  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00872188, declared_size=36, range_size=36, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNative21CreateStatesContainerEi
; demangled: vox::DecoderNative::CreateStatesContainer(int)
; decoder-mode: arm
00872188  70 40 2d e9                                      push {r4, r5, r6, lr}
0087218c  00 40 a0 e1                                      mov r4, r0
00872190  01 01 a0 e1                                      lsl r0, r1, #2
00872194  01 50 a0 e1                                      mov r5, r1
00872198  d6 78 ea eb                                      bl #0x3104f8
0087219c  00 00 50 e3                                      cmp r0, #0
008721a0  4c 00 84 e5                                      str r0, [r4, #0x4c]
008721a4  48 50 84 15                                      strne r5, [r4, #0x48]
008721a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008721ac, declared_size=108, range_size=108, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNative28CreateSegmentsInfoContainersEii
; demangled: vox::DecoderNative::CreateSegmentsInfoContainers(int, int)
; decoder-mode: arm
008721ac  70 40 2d e9                                      push {r4, r5, r6, lr}
008721b0  18 30 a0 e3                                      mov r3, #0x18
008721b4  93 21 23 e0                                      mla r3, r3, r1, r2
008721b8  00 50 a0 e1                                      mov r5, r0
008721bc  10 d0 4d e2                                      sub sp, sp, #0x10
008721c0  18 00 43 e2                                      sub r0, r3, #0x18
008721c4  01 40 a0 e1                                      mov r4, r1
008721c8  ca 78 ea eb                                      bl #0x3104f8
008721cc  00 00 50 e3                                      cmp r0, #0
008721d0  34 00 85 e5                                      str r0, [r5, #0x34]
008721d4  0d 00 00 0a                                      beq #0x872210
008721d8  58 60 85 e2                                      add r6, r5, #0x58
008721dc  30 40 85 e5                                      str r4, [r5, #0x30]
008721e0  06 00 a0 e1                                      mov r0, r6
008721e4  04 50 8d e2                                      add r5, sp, #4
008721e8  04 10 a0 e1                                      mov r1, r4
008721ec  91 fe ff eb                                      bl #0x871c38
008721f0  04 10 a0 e1                                      mov r1, r4
008721f4  05 00 a0 e1                                      mov r0, r5
008721f8  95 fd ff eb                                      bl #0x871854
008721fc  06 00 a0 e1                                      mov r0, r6
00872200  05 10 a0 e1                                      mov r1, r5
00872204  2b ff ff eb                                      bl #0x871eb8
00872208  05 00 a0 e1                                      mov r0, r5
0087220c  c3 fe ff eb                                      bl #0x871d20
00872210  10 d0 8d e2                                      add sp, sp, #0x10
00872214  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00872550, declared_size=204, range_size=204, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNativeD1Ev
; demangled: vox::DecoderNative::~DecoderNative()
; decoder-mode: arm
00872550  70 40 2d e9                                      push {r4, r5, r6, lr}
00872554  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00872558  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0087255c  00 40 a0 e1                                      mov r4, r0
00872560  03 30 8f e0                                      add r3, pc, r3
00872564  34 00 90 e5                                      ldr r0, [r0, #0x34]
00872568  02 20 93 e7                                      ldr r2, [r3, r2]
0087256c  00 00 50 e3                                      cmp r0, #0
00872570  08 20 82 e2                                      add r2, r2, #8
00872574  00 20 84 e5                                      str r2, [r4]
00872578  03 00 00 0a                                      beq #0x87258c
0087257c  b0 77 ea eb                                      bl #0x310444
00872580  00 30 a0 e3                                      mov r3, #0
00872584  30 30 84 e5                                      str r3, [r4, #0x30]
00872588  34 30 84 e5                                      str r3, [r4, #0x34]
0087258c  54 00 94 e5                                      ldr r0, [r4, #0x54]
00872590  00 00 50 e3                                      cmp r0, #0
00872594  03 00 00 0a                                      beq #0x8725a8
00872598  a9 77 ea eb                                      bl #0x310444
0087259c  00 30 a0 e3                                      mov r3, #0
008725a0  50 30 84 e5                                      str r3, [r4, #0x50]
008725a4  54 30 84 e5                                      str r3, [r4, #0x54]
008725a8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
008725ac  00 00 50 e3                                      cmp r0, #0
008725b0  03 00 00 0a                                      beq #0x8725c4
008725b4  a2 77 ea eb                                      bl #0x310444
008725b8  00 30 a0 e3                                      mov r3, #0
008725bc  48 30 84 e5                                      str r3, [r4, #0x48]
008725c0  4c 30 84 e5                                      str r3, [r4, #0x4c]
008725c4  80 30 94 e5                                      ldr r3, [r4, #0x80]
008725c8  00 00 53 e3                                      cmp r3, #0
008725cc  08 00 00 0a                                      beq #0x8725f4
008725d0  70 50 84 e2                                      add r5, r4, #0x70
008725d4  05 00 a0 e1                                      mov r0, r5
008725d8  74 10 94 e5                                      ldr r1, [r4, #0x74]
008725dc  e2 fd ff eb                                      bl #0x871d6c
008725e0  00 30 a0 e3                                      mov r3, #0
008725e4  7c 50 84 e5                                      str r5, [r4, #0x7c]
008725e8  80 30 84 e5                                      str r3, [r4, #0x80]
008725ec  78 50 84 e5                                      str r5, [r4, #0x78]
008725f0  74 30 84 e5                                      str r3, [r4, #0x74]
008725f4  64 00 84 e2                                      add r0, r4, #0x64
008725f8  6a fd ff eb                                      bl #0x871ba8
008725fc  58 00 84 e2                                      add r0, r4, #0x58
00872600  c6 fd ff eb                                      bl #0x871d20
00872604  38 00 84 e2                                      add r0, r4, #0x38
00872608  29 40 00 eb                                      bl #0x8826b4
0087260c  04 00 a0 e1                                      mov r0, r4
00872610  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00872614  30 25 12 00 f4 32 00 00                          .byte 0x30, 0x25, 0x12, 0x00, 0xf4, 0x32, 0x00, 0x00

; FUNCTION 0x0087261c, declared_size=28, range_size=28, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNativeD0Ev
; demangled: vox::DecoderNative::~DecoderNative()
; decoder-mode: arm
0087261c  10 40 2d e9                                      push {r4, lr}
00872620  00 40 a0 e1                                      mov r4, r0
00872624  c9 ff ff eb                                      bl #0x872550
00872628  04 00 a0 e1                                      mov r0, r4
0087262c  1f 6f ea eb                                      bl #0x30e2b0
00872630  04 00 a0 e1                                      mov r0, r4
00872634  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00872638, declared_size=204, range_size=204, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNativeD2Ev
; demangled: vox::DecoderNative::~DecoderNative()
; decoder-mode: arm
00872638  70 40 2d e9                                      push {r4, r5, r6, lr}
0087263c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00872640  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
00872644  00 40 a0 e1                                      mov r4, r0
00872648  03 30 8f e0                                      add r3, pc, r3
0087264c  34 00 90 e5                                      ldr r0, [r0, #0x34]
00872650  02 20 93 e7                                      ldr r2, [r3, r2]
00872654  00 00 50 e3                                      cmp r0, #0
00872658  08 20 82 e2                                      add r2, r2, #8
0087265c  00 20 84 e5                                      str r2, [r4]
00872660  03 00 00 0a                                      beq #0x872674
00872664  76 77 ea eb                                      bl #0x310444
00872668  00 30 a0 e3                                      mov r3, #0
0087266c  30 30 84 e5                                      str r3, [r4, #0x30]
00872670  34 30 84 e5                                      str r3, [r4, #0x34]
00872674  54 00 94 e5                                      ldr r0, [r4, #0x54]
00872678  00 00 50 e3                                      cmp r0, #0
0087267c  03 00 00 0a                                      beq #0x872690
00872680  6f 77 ea eb                                      bl #0x310444
00872684  00 30 a0 e3                                      mov r3, #0
00872688  50 30 84 e5                                      str r3, [r4, #0x50]
0087268c  54 30 84 e5                                      str r3, [r4, #0x54]
00872690  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
00872694  00 00 50 e3                                      cmp r0, #0
00872698  03 00 00 0a                                      beq #0x8726ac
0087269c  68 77 ea eb                                      bl #0x310444
008726a0  00 30 a0 e3                                      mov r3, #0
008726a4  48 30 84 e5                                      str r3, [r4, #0x48]
008726a8  4c 30 84 e5                                      str r3, [r4, #0x4c]
008726ac  80 30 94 e5                                      ldr r3, [r4, #0x80]
008726b0  00 00 53 e3                                      cmp r3, #0
008726b4  08 00 00 0a                                      beq #0x8726dc
008726b8  70 50 84 e2                                      add r5, r4, #0x70
008726bc  05 00 a0 e1                                      mov r0, r5
008726c0  74 10 94 e5                                      ldr r1, [r4, #0x74]
008726c4  a8 fd ff eb                                      bl #0x871d6c
008726c8  00 30 a0 e3                                      mov r3, #0
008726cc  7c 50 84 e5                                      str r5, [r4, #0x7c]
008726d0  80 30 84 e5                                      str r3, [r4, #0x80]
008726d4  78 50 84 e5                                      str r5, [r4, #0x78]
008726d8  74 30 84 e5                                      str r3, [r4, #0x74]
008726dc  64 00 84 e2                                      add r0, r4, #0x64
008726e0  30 fd ff eb                                      bl #0x871ba8
008726e4  58 00 84 e2                                      add r0, r4, #0x58
008726e8  8c fd ff eb                                      bl #0x871d20
008726ec  38 00 84 e2                                      add r0, r4, #0x38
008726f0  ef 3f 00 eb                                      bl #0x8826b4
008726f4  04 00 a0 e1                                      mov r0, r4
008726f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008726fc  48 24 12 00 f4 32 00 00                          .byte 0x48, 0x24, 0x12, 0x00, 0xf4, 0x32, 0x00, 0x00

; FUNCTION 0x00872a84, declared_size=68, range_size=68, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNative26CreateTransitionsContainerEi
; demangled: vox::DecoderNative::CreateTransitionsContainer(int)
; decoder-mode: arm
00872a84  70 40 2d e9                                      push {r4, r5, r6, lr}
00872a88  64 50 80 e2                                      add r5, r0, #0x64
00872a8c  10 d0 4d e2                                      sub sp, sp, #0x10
00872a90  04 40 8d e2                                      add r4, sp, #4
00872a94  01 60 a0 e1                                      mov r6, r1
00872a98  05 00 a0 e1                                      mov r0, r5
00872a9c  07 fc ff eb                                      bl #0x871ac0
00872aa0  06 10 a0 e1                                      mov r1, r6
00872aa4  04 00 a0 e1                                      mov r0, r4
00872aa8  c4 fb ff eb                                      bl #0x8719c0
00872aac  05 00 a0 e1                                      mov r0, r5
00872ab0  04 10 a0 e1                                      mov r1, r4
00872ab4  74 ff ff eb                                      bl #0x87288c
00872ab8  04 00 a0 e1                                      mov r0, r4
00872abc  39 fc ff eb                                      bl #0x871ba8
00872ac0  10 d0 8d e2                                      add sp, sp, #0x10
00872ac4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00872ac8, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNative24CreatePlaylistsContainerEi
; demangled: vox::DecoderNative::CreatePlaylistsContainer(int)
; decoder-mode: arm
00872ac8  38 00 80 e2                                      add r0, r0, #0x38
00872acc  9d 3e 00 ea                                      b #0x882548

; FUNCTION 0x00872ad0, declared_size=168, range_size=168, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNativeC1Ev
; demangled: vox::DecoderNative::DecoderNative()
; decoder-mode: arm
00872ad0  98 30 9f e5                                      ldr r3, [pc, #0x98]
00872ad4  98 20 9f e5                                      ldr r2, [pc, #0x98]
00872ad8  70 40 2d e9                                      push {r4, r5, r6, lr}
00872adc  03 30 8f e0                                      add r3, pc, r3
00872ae0  02 20 93 e7                                      ldr r2, [r3, r2]
00872ae4  00 50 a0 e3                                      mov r5, #0
00872ae8  00 40 a0 e1                                      mov r4, r0
00872aec  08 20 82 e2                                      add r2, r2, #8
00872af0  18 50 80 e5                                      str r5, [r0, #0x18]
00872af4  00 20 80 e5                                      str r2, [r0]
00872af8  b4 52 c0 e1                                      strh r5, [r0, #0x24]
00872afc  b6 52 c0 e1                                      strh r5, [r0, #0x26]
00872b00  28 50 80 e5                                      str r5, [r0, #0x28]
00872b04  bc 52 c0 e1                                      strh r5, [r0, #0x2c]
00872b08  be 52 c0 e1                                      strh r5, [r0, #0x2e]
00872b0c  30 50 80 e5                                      str r5, [r0, #0x30]
00872b10  34 50 80 e5                                      str r5, [r0, #0x34]
00872b14  38 00 80 e2                                      add r0, r0, #0x38
00872b18  51 3e 00 eb                                      bl #0x882464
00872b1c  04 30 a0 e1                                      mov r3, r4
00872b20  48 50 84 e5                                      str r5, [r4, #0x48]
00872b24  4c 50 84 e5                                      str r5, [r4, #0x4c]
00872b28  50 50 84 e5                                      str r5, [r4, #0x50]
00872b2c  54 50 84 e5                                      str r5, [r4, #0x54]
00872b30  58 50 84 e5                                      str r5, [r4, #0x58]
00872b34  5c 50 84 e5                                      str r5, [r4, #0x5c]
00872b38  60 50 84 e5                                      str r5, [r4, #0x60]
00872b3c  64 50 84 e5                                      str r5, [r4, #0x64]
00872b40  68 50 84 e5                                      str r5, [r4, #0x68]
00872b44  6c 50 84 e5                                      str r5, [r4, #0x6c]
00872b48  74 50 84 e5                                      str r5, [r4, #0x74]
00872b4c  01 20 a0 e3                                      mov r2, #1
00872b50  70 50 e3 e5                                      strb r5, [r3, #0x70]!
00872b54  05 60 a0 e1                                      mov r6, r5
00872b58  7c 30 84 e5                                      str r3, [r4, #0x7c]
00872b5c  80 50 84 e5                                      str r5, [r4, #0x80]
00872b60  88 20 c4 e5                                      strb r2, [r4, #0x88]
00872b64  78 30 84 e5                                      str r3, [r4, #0x78]
00872b68  04 00 a0 e1                                      mov r0, r4
00872b6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00872b70  b4 1f 12 00 f4 32 00 00                          .byte 0xb4, 0x1f, 0x12, 0x00, 0xf4, 0x32, 0x00, 0x00

; FUNCTION 0x00872b98, declared_size=168, range_size=168, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNativeC2Ev
; demangled: vox::DecoderNative::DecoderNative()
; decoder-mode: arm
00872b98  98 30 9f e5                                      ldr r3, [pc, #0x98]
00872b9c  98 20 9f e5                                      ldr r2, [pc, #0x98]
00872ba0  70 40 2d e9                                      push {r4, r5, r6, lr}
00872ba4  03 30 8f e0                                      add r3, pc, r3
00872ba8  02 20 93 e7                                      ldr r2, [r3, r2]
00872bac  00 50 a0 e3                                      mov r5, #0
00872bb0  00 40 a0 e1                                      mov r4, r0
00872bb4  08 20 82 e2                                      add r2, r2, #8
00872bb8  18 50 80 e5                                      str r5, [r0, #0x18]
00872bbc  00 20 80 e5                                      str r2, [r0]
00872bc0  b4 52 c0 e1                                      strh r5, [r0, #0x24]
00872bc4  b6 52 c0 e1                                      strh r5, [r0, #0x26]
00872bc8  28 50 80 e5                                      str r5, [r0, #0x28]
00872bcc  bc 52 c0 e1                                      strh r5, [r0, #0x2c]
00872bd0  be 52 c0 e1                                      strh r5, [r0, #0x2e]
00872bd4  30 50 80 e5                                      str r5, [r0, #0x30]
00872bd8  34 50 80 e5                                      str r5, [r0, #0x34]
00872bdc  38 00 80 e2                                      add r0, r0, #0x38
00872be0  1f 3e 00 eb                                      bl #0x882464
00872be4  04 30 a0 e1                                      mov r3, r4
00872be8  48 50 84 e5                                      str r5, [r4, #0x48]
00872bec  4c 50 84 e5                                      str r5, [r4, #0x4c]
00872bf0  50 50 84 e5                                      str r5, [r4, #0x50]
00872bf4  54 50 84 e5                                      str r5, [r4, #0x54]
00872bf8  58 50 84 e5                                      str r5, [r4, #0x58]
00872bfc  5c 50 84 e5                                      str r5, [r4, #0x5c]
00872c00  60 50 84 e5                                      str r5, [r4, #0x60]
00872c04  64 50 84 e5                                      str r5, [r4, #0x64]
00872c08  68 50 84 e5                                      str r5, [r4, #0x68]
00872c0c  6c 50 84 e5                                      str r5, [r4, #0x6c]
00872c10  74 50 84 e5                                      str r5, [r4, #0x74]
00872c14  01 20 a0 e3                                      mov r2, #1
00872c18  70 50 e3 e5                                      strb r5, [r3, #0x70]!
00872c1c  05 60 a0 e1                                      mov r6, r5
00872c20  7c 30 84 e5                                      str r3, [r4, #0x7c]
00872c24  80 50 84 e5                                      str r5, [r4, #0x80]
00872c28  88 20 c4 e5                                      strb r2, [r4, #0x88]
00872c2c  78 30 84 e5                                      str r3, [r4, #0x78]
00872c30  04 00 a0 e1                                      mov r0, r4
00872c34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00872c38  ec 1e 12 00 f4 32 00 00                          .byte 0xec, 0x1e, 0x12, 0x00, 0xf4, 0x32, 0x00, 0x00

; FUNCTION 0x00874648, declared_size=48, range_size=48, mode=arm
; class-group: vox::DecoderNative
; alias: _ZN3vox13DecoderNative15CreateNewCursorEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderNative::CreateNewCursor(vox::StreamCursorInterface*)
; decoder-mode: arm
00874648  70 40 2d e9                                      push {r4, r5, r6, lr}
0087464c  00 60 a0 e1                                      mov r6, r0
00874650  01 50 a0 e1                                      mov r5, r1
00874654  6c 00 a0 e3                                      mov r0, #0x6c
00874658  00 10 a0 e3                                      mov r1, #0
0087465c  f9 6f ea eb                                      bl #0x310648
00874660  06 10 a0 e1                                      mov r1, r6
00874664  00 40 a0 e1                                      mov r4, r0
00874668  05 20 a0 e1                                      mov r2, r5
0087466c  20 ff ff eb                                      bl #0x8742f4
00874670  04 00 a0 e1                                      mov r0, r4
00874674  70 80 bd e8                                      pop {r4, r5, r6, pc}
