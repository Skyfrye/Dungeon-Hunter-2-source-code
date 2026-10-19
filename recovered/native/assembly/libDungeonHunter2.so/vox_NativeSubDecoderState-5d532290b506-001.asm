; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088547c, declared_size=80, range_size=80, mode=arm
; class-group: vox::NativeSubDecoderState
; alias: _ZN3vox21NativeSubDecoderStateD1Ev
; demangled: vox::NativeSubDecoderState::~NativeSubDecoderState()
; decoder-mode: arm
0088547c  10 40 2d e9                                      push {r4, lr}
00885480  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00885484  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00885488  00 40 a0 e1                                      mov r4, r0
0088548c  03 30 8f e0                                      add r3, pc, r3
00885490  04 00 90 e5                                      ldr r0, [r0, #4]
00885494  02 20 93 e7                                      ldr r2, [r3, r2]
00885498  00 00 50 e3                                      cmp r0, #0
0088549c  08 20 82 e2                                      add r2, r2, #8
008854a0  00 20 84 e5                                      str r2, [r4]
008854a4  04 00 00 0a                                      beq #0x8854bc
008854a8  81 f4 ff eb                                      bl #0x8826b4
008854ac  04 00 94 e5                                      ldr r0, [r4, #4]
008854b0  e3 2b ea eb                                      bl #0x310444
008854b4  00 30 a0 e3                                      mov r3, #0
008854b8  04 30 84 e5                                      str r3, [r4, #4]
008854bc  04 00 a0 e1                                      mov r0, r4
008854c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008854c4  04 f6 10 00 e4 07 00 00                          .byte 0x04, 0xf6, 0x10, 0x00, 0xe4, 0x07, 0x00, 0x00

; FUNCTION 0x008854cc, declared_size=28, range_size=28, mode=arm
; class-group: vox::NativeSubDecoderState
; alias: _ZN3vox21NativeSubDecoderStateD0Ev
; demangled: vox::NativeSubDecoderState::~NativeSubDecoderState()
; decoder-mode: arm
008854cc  10 40 2d e9                                      push {r4, lr}
008854d0  00 40 a0 e1                                      mov r4, r0
008854d4  e8 ff ff eb                                      bl #0x88547c
008854d8  04 00 a0 e1                                      mov r0, r4
008854dc  73 23 ea eb                                      bl #0x30e2b0
008854e0  04 00 a0 e1                                      mov r0, r4
008854e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008854e8, declared_size=80, range_size=80, mode=arm
; class-group: vox::NativeSubDecoderState
; alias: _ZN3vox21NativeSubDecoderStateD2Ev
; demangled: vox::NativeSubDecoderState::~NativeSubDecoderState()
; decoder-mode: arm
008854e8  10 40 2d e9                                      push {r4, lr}
008854ec  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
008854f0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
008854f4  00 40 a0 e1                                      mov r4, r0
008854f8  03 30 8f e0                                      add r3, pc, r3
008854fc  04 00 90 e5                                      ldr r0, [r0, #4]
00885500  02 20 93 e7                                      ldr r2, [r3, r2]
00885504  00 00 50 e3                                      cmp r0, #0
00885508  08 20 82 e2                                      add r2, r2, #8
0088550c  00 20 84 e5                                      str r2, [r4]
00885510  04 00 00 0a                                      beq #0x885528
00885514  66 f4 ff eb                                      bl #0x8826b4
00885518  04 00 94 e5                                      ldr r0, [r4, #4]
0088551c  c8 2b ea eb                                      bl #0x310444
00885520  00 30 a0 e3                                      mov r3, #0
00885524  04 30 84 e5                                      str r3, [r4, #4]
00885528  04 00 a0 e1                                      mov r0, r4
0088552c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00885530  98 f5 10 00 e4 07 00 00                          .byte 0x98, 0xf5, 0x10, 0x00, 0xe4, 0x07, 0x00, 0x00

; FUNCTION 0x008860dc, declared_size=320, range_size=320, mode=arm
; class-group: vox::NativeSubDecoderState
; alias: _ZN3vox21NativeSubDecoderStateC1EPNS_22NativePlaylistsManagerE
; demangled: vox::NativeSubDecoderState::NativeSubDecoderState(vox::NativePlaylistsManager*)
; decoder-mode: arm
008860dc  30 31 9f e5                                      ldr r3, [pc, #0x130]
008860e0  30 21 9f e5                                      ldr r2, [pc, #0x130]
008860e4  70 40 2d e9                                      push {r4, r5, r6, lr}
008860e8  03 30 8f e0                                      add r3, pc, r3
008860ec  02 20 93 e7                                      ldr r2, [r3, r2]
008860f0  00 40 a0 e1                                      mov r4, r0
008860f4  01 60 a0 e1                                      mov r6, r1
008860f8  08 20 82 e2                                      add r2, r2, #8
008860fc  24 20 80 e4                                      str r2, [r0], #0x24
00886100  cb ed ff eb                                      bl #0x881834
00886104  38 00 84 e2                                      add r0, r4, #0x38
00886108  c9 ed ff eb                                      bl #0x881834
0088610c  4c 00 84 e2                                      add r0, r4, #0x4c
00886110  c7 ed ff eb                                      bl #0x881834
00886114  00 30 a0 e3                                      mov r3, #0
00886118  01 20 a0 e3                                      mov r2, #1
0088611c  00 00 e0 e3                                      mvn r0, #0
00886120  02 c0 a0 e3                                      mov ip, #2
00886124  84 20 84 e5                                      str r2, [r4, #0x84]
00886128  88 20 84 e5                                      str r2, [r4, #0x88]
0088612c  90 c0 84 e5                                      str ip, [r4, #0x90]
00886130  c8 20 84 e5                                      str r2, [r4, #0xc8]
00886134  cc 20 84 e5                                      str r2, [r4, #0xcc]
00886138  d4 c0 84 e5                                      str ip, [r4, #0xd4]
0088613c  6c 00 84 e5                                      str r0, [r4, #0x6c]
00886140  70 30 84 e5                                      str r3, [r4, #0x70]
00886144  74 30 84 e5                                      str r3, [r4, #0x74]
00886148  78 30 84 e5                                      str r3, [r4, #0x78]
0088614c  7c 30 84 e5                                      str r3, [r4, #0x7c]
00886150  80 30 84 e5                                      str r3, [r4, #0x80]
00886154  8c 30 84 e5                                      str r3, [r4, #0x8c]
00886158  94 30 84 e5                                      str r3, [r4, #0x94]
0088615c  98 30 84 e5                                      str r3, [r4, #0x98]
00886160  9c 30 84 e5                                      str r3, [r4, #0x9c]
00886164  a0 30 84 e5                                      str r3, [r4, #0xa0]
00886168  a4 30 84 e5                                      str r3, [r4, #0xa4]
0088616c  a8 00 84 e5                                      str r0, [r4, #0xa8]
00886170  ac 30 c4 e5                                      strb r3, [r4, #0xac]
00886174  b0 00 84 e5                                      str r0, [r4, #0xb0]
00886178  b4 30 84 e5                                      str r3, [r4, #0xb4]
0088617c  b8 30 84 e5                                      str r3, [r4, #0xb8]
00886180  bc 30 84 e5                                      str r3, [r4, #0xbc]
00886184  c0 30 84 e5                                      str r3, [r4, #0xc0]
00886188  c4 30 84 e5                                      str r3, [r4, #0xc4]
0088618c  d0 30 84 e5                                      str r3, [r4, #0xd0]
00886190  d8 30 84 e5                                      str r3, [r4, #0xd8]
00886194  dc 30 84 e5                                      str r3, [r4, #0xdc]
00886198  e0 30 84 e5                                      str r3, [r4, #0xe0]
0088619c  e4 30 84 e5                                      str r3, [r4, #0xe4]
008861a0  e8 30 84 e5                                      str r3, [r4, #0xe8]
008861a4  ec 00 84 e5                                      str r0, [r4, #0xec]
008861a8  03 10 a0 e1                                      mov r1, r3
008861ac  f0 30 c4 e5                                      strb r3, [r4, #0xf0]
008861b0  10 21 84 e5                                      str r2, [r4, #0x110]
008861b4  18 c1 84 e5                                      str ip, [r4, #0x118]
008861b8  30 01 84 e5                                      str r0, [r4, #0x130]
008861bc  f4 00 84 e5                                      str r0, [r4, #0xf4]
008861c0  0c 21 84 e5                                      str r2, [r4, #0x10c]
008861c4  f8 30 84 e5                                      str r3, [r4, #0xf8]
008861c8  fc 30 84 e5                                      str r3, [r4, #0xfc]
008861cc  00 31 84 e5                                      str r3, [r4, #0x100]
008861d0  04 31 84 e5                                      str r3, [r4, #0x104]
008861d4  08 31 84 e5                                      str r3, [r4, #0x108]
008861d8  14 31 84 e5                                      str r3, [r4, #0x114]
008861dc  1c 31 84 e5                                      str r3, [r4, #0x11c]
008861e0  20 31 84 e5                                      str r3, [r4, #0x120]
008861e4  24 31 84 e5                                      str r3, [r4, #0x124]
008861e8  28 31 84 e5                                      str r3, [r4, #0x128]
008861ec  2c 31 84 e5                                      str r3, [r4, #0x12c]
008861f0  34 31 c4 e5                                      strb r3, [r4, #0x134]
008861f4  10 00 a0 e3                                      mov r0, #0x10
008861f8  12 29 ea eb                                      bl #0x310648
008861fc  06 10 a0 e1                                      mov r1, r6
00886200  00 50 a0 e1                                      mov r5, r0
00886204  28 f7 ff eb                                      bl #0x883eac
00886208  04 50 84 e5                                      str r5, [r4, #4]
0088620c  04 00 a0 e1                                      mov r0, r4
00886210  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00886214  a8 e9 10 00 e4 07 00 00                          .byte 0xa8, 0xe9, 0x10, 0x00, 0xe4, 0x07, 0x00, 0x00

; FUNCTION 0x0088621c, declared_size=320, range_size=320, mode=arm
; class-group: vox::NativeSubDecoderState
; alias: _ZN3vox21NativeSubDecoderStateC2EPNS_22NativePlaylistsManagerE
; demangled: vox::NativeSubDecoderState::NativeSubDecoderState(vox::NativePlaylistsManager*)
; decoder-mode: arm
0088621c  30 31 9f e5                                      ldr r3, [pc, #0x130]
00886220  30 21 9f e5                                      ldr r2, [pc, #0x130]
00886224  70 40 2d e9                                      push {r4, r5, r6, lr}
00886228  03 30 8f e0                                      add r3, pc, r3
0088622c  02 20 93 e7                                      ldr r2, [r3, r2]
00886230  00 40 a0 e1                                      mov r4, r0
00886234  01 60 a0 e1                                      mov r6, r1
00886238  08 20 82 e2                                      add r2, r2, #8
0088623c  24 20 80 e4                                      str r2, [r0], #0x24
00886240  7b ed ff eb                                      bl #0x881834
00886244  38 00 84 e2                                      add r0, r4, #0x38
00886248  79 ed ff eb                                      bl #0x881834
0088624c  4c 00 84 e2                                      add r0, r4, #0x4c
00886250  77 ed ff eb                                      bl #0x881834
00886254  00 30 a0 e3                                      mov r3, #0
00886258  01 20 a0 e3                                      mov r2, #1
0088625c  00 00 e0 e3                                      mvn r0, #0
00886260  02 c0 a0 e3                                      mov ip, #2
00886264  84 20 84 e5                                      str r2, [r4, #0x84]
00886268  88 20 84 e5                                      str r2, [r4, #0x88]
0088626c  90 c0 84 e5                                      str ip, [r4, #0x90]
00886270  c8 20 84 e5                                      str r2, [r4, #0xc8]
00886274  cc 20 84 e5                                      str r2, [r4, #0xcc]
00886278  d4 c0 84 e5                                      str ip, [r4, #0xd4]
0088627c  6c 00 84 e5                                      str r0, [r4, #0x6c]
00886280  70 30 84 e5                                      str r3, [r4, #0x70]
00886284  74 30 84 e5                                      str r3, [r4, #0x74]
00886288  78 30 84 e5                                      str r3, [r4, #0x78]
0088628c  7c 30 84 e5                                      str r3, [r4, #0x7c]
00886290  80 30 84 e5                                      str r3, [r4, #0x80]
00886294  8c 30 84 e5                                      str r3, [r4, #0x8c]
00886298  94 30 84 e5                                      str r3, [r4, #0x94]
0088629c  98 30 84 e5                                      str r3, [r4, #0x98]
008862a0  9c 30 84 e5                                      str r3, [r4, #0x9c]
008862a4  a0 30 84 e5                                      str r3, [r4, #0xa0]
008862a8  a4 30 84 e5                                      str r3, [r4, #0xa4]
008862ac  a8 00 84 e5                                      str r0, [r4, #0xa8]
008862b0  ac 30 c4 e5                                      strb r3, [r4, #0xac]
008862b4  b0 00 84 e5                                      str r0, [r4, #0xb0]
008862b8  b4 30 84 e5                                      str r3, [r4, #0xb4]
008862bc  b8 30 84 e5                                      str r3, [r4, #0xb8]
008862c0  bc 30 84 e5                                      str r3, [r4, #0xbc]
008862c4  c0 30 84 e5                                      str r3, [r4, #0xc0]
008862c8  c4 30 84 e5                                      str r3, [r4, #0xc4]
008862cc  d0 30 84 e5                                      str r3, [r4, #0xd0]
008862d0  d8 30 84 e5                                      str r3, [r4, #0xd8]
008862d4  dc 30 84 e5                                      str r3, [r4, #0xdc]
008862d8  e0 30 84 e5                                      str r3, [r4, #0xe0]
008862dc  e4 30 84 e5                                      str r3, [r4, #0xe4]
008862e0  e8 30 84 e5                                      str r3, [r4, #0xe8]
008862e4  ec 00 84 e5                                      str r0, [r4, #0xec]
008862e8  03 10 a0 e1                                      mov r1, r3
008862ec  f0 30 c4 e5                                      strb r3, [r4, #0xf0]
008862f0  10 21 84 e5                                      str r2, [r4, #0x110]
008862f4  18 c1 84 e5                                      str ip, [r4, #0x118]
008862f8  30 01 84 e5                                      str r0, [r4, #0x130]
008862fc  f4 00 84 e5                                      str r0, [r4, #0xf4]
00886300  0c 21 84 e5                                      str r2, [r4, #0x10c]
00886304  f8 30 84 e5                                      str r3, [r4, #0xf8]
00886308  fc 30 84 e5                                      str r3, [r4, #0xfc]
0088630c  00 31 84 e5                                      str r3, [r4, #0x100]
00886310  04 31 84 e5                                      str r3, [r4, #0x104]
00886314  08 31 84 e5                                      str r3, [r4, #0x108]
00886318  14 31 84 e5                                      str r3, [r4, #0x114]
0088631c  1c 31 84 e5                                      str r3, [r4, #0x11c]
00886320  20 31 84 e5                                      str r3, [r4, #0x120]
00886324  24 31 84 e5                                      str r3, [r4, #0x124]
00886328  28 31 84 e5                                      str r3, [r4, #0x128]
0088632c  2c 31 84 e5                                      str r3, [r4, #0x12c]
00886330  34 31 c4 e5                                      strb r3, [r4, #0x134]
00886334  10 00 a0 e3                                      mov r0, #0x10
00886338  c2 28 ea eb                                      bl #0x310648
0088633c  06 10 a0 e1                                      mov r1, r6
00886340  00 50 a0 e1                                      mov r5, r0
00886344  d8 f6 ff eb                                      bl #0x883eac
00886348  04 50 84 e5                                      str r5, [r4, #4]
0088634c  04 00 a0 e1                                      mov r0, r4
00886350  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00886354  68 e8 10 00 e4 07 00 00                          .byte 0x68, 0xe8, 0x10, 0x00, 0xe4, 0x07, 0x00, 0x00
