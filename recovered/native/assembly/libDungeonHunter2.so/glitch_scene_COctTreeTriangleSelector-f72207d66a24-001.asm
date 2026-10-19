; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00586620, declared_size=112, range_size=112, mode=arm
; class-group: glitch::scene::COctTreeTriangleSelector
; alias: _ZN6glitch5scene24COctTreeTriangleSelectorD1Ev
; demangled: glitch::scene::COctTreeTriangleSelector::~COctTreeTriangleSelector()
; decoder-mode: arm
00586620  70 40 2d e9                                      push {r4, r5, r6, lr}
00586624  58 50 9f e5                                      ldr r5, [pc, #0x58]
00586628  58 30 9f e5                                      ldr r3, [pc, #0x58]
0058662c  ac 60 90 e5                                      ldr r6, [r0, #0xac]
00586630  05 50 8f e0                                      add r5, pc, r5
00586634  03 30 95 e7                                      ldr r3, [r5, r3]
00586638  00 00 56 e3                                      cmp r6, #0
0058663c  00 40 a0 e1                                      mov r4, r0
00586640  08 30 83 e2                                      add r3, r3, #8
00586644  00 30 80 e5                                      str r3, [r0]
00586648  03 00 00 0a                                      beq #0x58665c
0058664c  06 00 a0 e1                                      mov r0, r6
00586650  de ff ff eb                                      bl #0x5865d0
00586654  06 00 a0 e1                                      mov r0, r6
00586658  14 1f f6 eb                                      bl #0x30e2b0
0058665c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00586660  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00586664  03 30 95 e7                                      ldr r3, [r5, r3]
00586668  00 00 50 e3                                      cmp r0, #0
0058666c  08 30 83 e2                                      add r3, r3, #8
00586670  00 30 84 e5                                      str r3, [r4]
00586674  00 00 00 0a                                      beq #0x58667c
00586678  74 27 f6 eb                                      bl #0x310450
0058667c  04 00 a0 e1                                      mov r0, r4
00586680  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00586684  60 e4 40 00 1c 15 00 00 c0 05 00 00              .byte 0x60, 0xe4, 0x40, 0x00, 0x1c, 0x15, 0x00, 0x00, 0xc0, 0x05, 0x00, 0x00

; FUNCTION 0x00586690, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::COctTreeTriangleSelector
; alias: _ZN6glitch5scene24COctTreeTriangleSelectorD0Ev
; demangled: glitch::scene::COctTreeTriangleSelector::~COctTreeTriangleSelector()
; decoder-mode: arm
00586690  10 40 2d e9                                      push {r4, lr}
00586694  00 40 a0 e1                                      mov r4, r0
00586698  e0 ff ff eb                                      bl #0x586620
0058669c  04 00 a0 e1                                      mov r0, r4
005866a0  02 1f f6 eb                                      bl #0x30e2b0
005866a4  04 00 a0 e1                                      mov r0, r4
005866a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005866ac, declared_size=112, range_size=112, mode=arm
; class-group: glitch::scene::COctTreeTriangleSelector
; alias: _ZN6glitch5scene24COctTreeTriangleSelectorD2Ev
; demangled: glitch::scene::COctTreeTriangleSelector::~COctTreeTriangleSelector()
; decoder-mode: arm
005866ac  70 40 2d e9                                      push {r4, r5, r6, lr}
005866b0  58 50 9f e5                                      ldr r5, [pc, #0x58]
005866b4  58 30 9f e5                                      ldr r3, [pc, #0x58]
005866b8  ac 60 90 e5                                      ldr r6, [r0, #0xac]
005866bc  05 50 8f e0                                      add r5, pc, r5
005866c0  03 30 95 e7                                      ldr r3, [r5, r3]
005866c4  00 00 56 e3                                      cmp r6, #0
005866c8  00 40 a0 e1                                      mov r4, r0
005866cc  08 30 83 e2                                      add r3, r3, #8
005866d0  00 30 80 e5                                      str r3, [r0]
005866d4  03 00 00 0a                                      beq #0x5866e8
005866d8  06 00 a0 e1                                      mov r0, r6
005866dc  bb ff ff eb                                      bl #0x5865d0
005866e0  06 00 a0 e1                                      mov r0, r6
005866e4  f1 1e f6 eb                                      bl #0x30e2b0
005866e8  28 30 9f e5                                      ldr r3, [pc, #0x28]
005866ec  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005866f0  03 30 95 e7                                      ldr r3, [r5, r3]
005866f4  00 00 50 e3                                      cmp r0, #0
005866f8  08 30 83 e2                                      add r3, r3, #8
005866fc  00 30 84 e5                                      str r3, [r4]
00586700  00 00 00 0a                                      beq #0x586708
00586704  51 27 f6 eb                                      bl #0x310450
00586708  04 00 a0 e1                                      mov r0, r4
0058670c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00586710  d4 e3 40 00 1c 15 00 00 c0 05 00 00              .byte 0xd4, 0xe3, 0x40, 0x00, 0x1c, 0x15, 0x00, 0x00, 0xc0, 0x05, 0x00, 0x00

; FUNCTION 0x005870fc, declared_size=204, range_size=204, mode=arm
; class-group: glitch::scene::COctTreeTriangleSelector
; alias: _ZNK6glitch5scene24COctTreeTriangleSelector26getTrianglesFromOctTreeBoxEPNS1_12SOctTreeNodeE
; demangled: glitch::scene::COctTreeTriangleSelector::getTrianglesFromOctTreeBox(glitch::scene::COctTreeTriangleSelector::SOctTreeNode*) const
; decoder-mode: arm
005870fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00587100  00 60 a0 e1                                      mov r6, r0
00587104  01 50 a0 e1                                      mov r5, r1
00587108  2c 00 91 e5                                      ldr r0, [r1, #0x2c]
0058710c  50 10 96 e5                                      ldr r1, [r6, #0x50]
00587110  25 1e f6 eb                                      bl #0x30e9ac
00587114  00 00 50 e3                                      cmp r0, #0
00587118  29 00 00 0a                                      beq #0x5871c4
0058711c  30 00 95 e5                                      ldr r0, [r5, #0x30]
00587120  54 10 96 e5                                      ldr r1, [r6, #0x54]
00587124  20 1e f6 eb                                      bl #0x30e9ac
00587128  00 00 50 e3                                      cmp r0, #0
0058712c  24 00 00 0a                                      beq #0x5871c4
00587130  34 00 95 e5                                      ldr r0, [r5, #0x34]
00587134  58 10 96 e5                                      ldr r1, [r6, #0x58]
00587138  1b 1e f6 eb                                      bl #0x30e9ac
0058713c  00 00 50 e3                                      cmp r0, #0
00587140  1f 00 00 0a                                      beq #0x5871c4
00587144  38 00 95 e5                                      ldr r0, [r5, #0x38]
00587148  44 10 96 e5                                      ldr r1, [r6, #0x44]
0058714c  d8 1c f6 eb                                      bl #0x30e4b4
00587150  00 00 50 e3                                      cmp r0, #0
00587154  1a 00 00 0a                                      beq #0x5871c4
00587158  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
0058715c  48 10 96 e5                                      ldr r1, [r6, #0x48]
00587160  d3 1c f6 eb                                      bl #0x30e4b4
00587164  00 00 50 e3                                      cmp r0, #0
00587168  15 00 00 0a                                      beq #0x5871c4
0058716c  40 00 95 e5                                      ldr r0, [r5, #0x40]
00587170  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
00587174  ce 1c f6 eb                                      bl #0x30e4b4
00587178  00 00 50 e3                                      cmp r0, #0
0058717c  10 00 00 0a                                      beq #0x5871c4
00587180  06 00 a0 e1                                      mov r0, r6
00587184  05 10 a0 e1                                      mov r1, r5
00587188  4e ff ff eb                                      bl #0x586ec8
0058718c  a8 20 96 e5                                      ldr r2, [r6, #0xa8]
00587190  a4 30 96 e5                                      ldr r3, [r6, #0xa4]
00587194  03 00 52 e1                                      cmp r2, r3
00587198  09 00 00 0a                                      beq #0x5871c4
0058719c  00 40 a0 e3                                      mov r4, #0
005871a0  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005871a4  01 40 84 e2                                      add r4, r4, #1
005871a8  06 00 a0 e1                                      mov r0, r6
005871ac  00 00 51 e3                                      cmp r1, #0
005871b0  00 00 00 0a                                      beq #0x5871b8
005871b4  d0 ff ff eb                                      bl #0x5870fc
005871b8  08 00 54 e3                                      cmp r4, #8
005871bc  04 50 85 e2                                      add r5, r5, #4
005871c0  f6 ff ff 1a                                      bne #0x5871a0
005871c4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005872a4, declared_size=244, range_size=244, mode=arm
; class-group: glitch::scene::COctTreeTriangleSelector
; alias: _ZNK6glitch5scene24COctTreeTriangleSelector27getTrianglesFromOctTreeLineEPNS1_12SOctTreeNodeE
; demangled: glitch::scene::COctTreeTriangleSelector::getTrianglesFromOctTreeLine(glitch::scene::COctTreeTriangleSelector::SOctTreeNode*) const
; decoder-mode: arm
005872a4  70 40 2d e9                                      push {r4, r5, r6, lr}
005872a8  00 40 a0 e1                                      mov r4, r0
005872ac  08 d0 4d e2                                      sub sp, sp, #8
005872b0  2c 00 91 e5                                      ldr r0, [r1, #0x2c]
005872b4  01 50 a0 e1                                      mov r5, r1
005872b8  50 10 94 e5                                      ldr r1, [r4, #0x50]
005872bc  ba 1d f6 eb                                      bl #0x30e9ac
005872c0  00 00 50 e3                                      cmp r0, #0
005872c4  1f 00 00 0a                                      beq #0x587348
005872c8  30 00 95 e5                                      ldr r0, [r5, #0x30]
005872cc  54 10 94 e5                                      ldr r1, [r4, #0x54]
005872d0  b5 1d f6 eb                                      bl #0x30e9ac
005872d4  00 00 50 e3                                      cmp r0, #0
005872d8  1a 00 00 0a                                      beq #0x587348
005872dc  34 00 95 e5                                      ldr r0, [r5, #0x34]
005872e0  58 10 94 e5                                      ldr r1, [r4, #0x58]
005872e4  b0 1d f6 eb                                      bl #0x30e9ac
005872e8  00 00 50 e3                                      cmp r0, #0
005872ec  15 00 00 0a                                      beq #0x587348
005872f0  38 00 95 e5                                      ldr r0, [r5, #0x38]
005872f4  44 10 94 e5                                      ldr r1, [r4, #0x44]
005872f8  6d 1c f6 eb                                      bl #0x30e4b4
005872fc  00 00 50 e3                                      cmp r0, #0
00587300  10 00 00 0a                                      beq #0x587348
00587304  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
00587308  48 10 94 e5                                      ldr r1, [r4, #0x48]
0058730c  68 1c f6 eb                                      bl #0x30e4b4
00587310  00 00 50 e3                                      cmp r0, #0
00587314  0b 00 00 0a                                      beq #0x587348
00587318  40 00 95 e5                                      ldr r0, [r5, #0x40]
0058731c  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00587320  63 1c f6 eb                                      bl #0x30e4b4
00587324  00 00 50 e3                                      cmp r0, #0
00587328  06 00 00 0a                                      beq #0x587348
0058732c  2c 00 85 e2                                      add r0, r5, #0x2c
00587330  1c 10 84 e2                                      add r1, r4, #0x1c
00587334  04 20 8d e2                                      add r2, sp, #4
00587338  0d 30 a0 e1                                      mov r3, sp
0058733c  f1 f9 ff eb                                      bl #0x585b08
00587340  00 00 50 e3                                      cmp r0, #0
00587344  01 00 00 1a                                      bne #0x587350
00587348  08 d0 8d e2                                      add sp, sp, #8
0058734c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00587350  04 00 a0 e1                                      mov r0, r4
00587354  05 10 a0 e1                                      mov r1, r5
00587358  9a ff ff eb                                      bl #0x5871c8
0058735c  a8 20 94 e5                                      ldr r2, [r4, #0xa8]
00587360  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
00587364  03 00 52 e1                                      cmp r2, r3
00587368  f6 ff ff 0a                                      beq #0x587348
0058736c  00 60 a0 e3                                      mov r6, #0
00587370  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00587374  01 60 86 e2                                      add r6, r6, #1
00587378  04 00 a0 e1                                      mov r0, r4
0058737c  00 00 51 e3                                      cmp r1, #0
00587380  00 00 00 0a                                      beq #0x587388
00587384  c6 ff ff eb                                      bl #0x5872a4
00587388  08 00 56 e3                                      cmp r6, #8
0058738c  04 50 85 e2                                      add r5, r5, #4
00587390  f6 ff ff 1a                                      bne #0x587370
00587394  eb ff ff ea                                      b #0x587348

; FUNCTION 0x00587694, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::COctTreeTriangleSelector
; alias: _ZNK6glitch5scene24COctTreeTriangleSelector12getTrianglesEPNS_4core10triangle3dIfEEiRiRKNS2_8aabbox3dIfEEPKNS2_8CMatrix4IfEE
; demangled: glitch::scene::COctTreeTriangleSelector::getTriangles(glitch::core::triangle3d<float>*, int, int&, glitch::core::aabbox3d<float> const&, glitch::core::CMatrix4<float> const*) const
; decoder-mode: arm
00587694  70 40 2d e9                                      push {r4, r5, r6, lr}
00587698  a4 20 80 e5                                      str r2, [r0, #0xa4]
0058769c  00 20 a0 e3                                      mov r2, #0
005876a0  a8 20 80 e5                                      str r2, [r0, #0xa8]
005876a4  a0 10 80 e5                                      str r1, [r0, #0xa0]
005876a8  00 40 a0 e1                                      mov r4, r0
005876ac  14 10 9d e5                                      ldr r1, [sp, #0x14]
005876b0  03 50 a0 e1                                      mov r5, r3
005876b4  de fc ff eb                                      bl #0x586a34
005876b8  10 10 9d e5                                      ldr r1, [sp, #0x10]
005876bc  04 00 a0 e1                                      mov r0, r4
005876c0  cf ff ff eb                                      bl #0x587604
005876c4  ac 10 94 e5                                      ldr r1, [r4, #0xac]
005876c8  00 00 51 e3                                      cmp r1, #0
005876cc  01 00 00 0a                                      beq #0x5876d8
005876d0  04 00 a0 e1                                      mov r0, r4
005876d4  88 fe ff eb                                      bl #0x5870fc
005876d8  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
005876dc  00 30 85 e5                                      str r3, [r5]
005876e0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00587e60, declared_size=2036, range_size=2036, mode=arm
; class-group: glitch::scene::COctTreeTriangleSelector
; alias: _ZN6glitch5scene24COctTreeTriangleSelector16constructOctTreeEPNS1_12SOctTreeNodeE
; demangled: glitch::scene::COctTreeTriangleSelector::constructOctTree(glitch::scene::COctTreeTriangleSelector::SOctTreeNode*)
; decoder-mode: arm
00587e60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00587e64  43 df 4d e2                                      sub sp, sp, #0x10c
00587e68  14 00 8d e5                                      str r0, [sp, #0x14]
00587e6c  b0 30 90 e5                                      ldr r3, [r0, #0xb0]
00587e70  01 40 a0 e1                                      mov r4, r1
00587e74  01 30 83 e2                                      add r3, r3, #1
00587e78  b0 30 80 e5                                      str r3, [r0, #0xb0]
00587e7c  00 90 91 e5                                      ldr sb, [r1]
00587e80  04 30 91 e5                                      ldr r3, [r1, #4]
00587e84  00 10 99 e5                                      ldr r1, [sb]
00587e88  03 30 69 e0                                      rsb r3, sb, r3
00587e8c  43 31 a0 e1                                      asr r3, r3, #2
00587e90  38 10 84 e5                                      str r1, [r4, #0x38]
00587e94  04 70 99 e5                                      ldr r7, [sb, #4]
00587e98  83 21 a0 e1                                      lsl r2, r3, #3
00587e9c  02 20 63 e0                                      rsb r2, r3, r2
00587ea0  3c 70 84 e5                                      str r7, [r4, #0x3c]
00587ea4  08 50 99 e5                                      ldr r5, [sb, #8]
00587ea8  02 23 82 e0                                      add r2, r2, r2, lsl #6
00587eac  40 50 84 e5                                      str r5, [r4, #0x40]
00587eb0  00 00 99 e5                                      ldr r0, [sb]
00587eb4  82 21 83 e0                                      add r2, r3, r2, lsl #3
00587eb8  2c 00 84 e5                                      str r0, [r4, #0x2c]
00587ebc  04 80 99 e5                                      ldr r8, [sb, #4]
00587ec0  82 c7 a0 e1                                      lsl ip, r2, #0xf
00587ec4  0c 20 62 e0                                      rsb r2, r2, ip
00587ec8  30 80 84 e5                                      str r8, [r4, #0x30]
00587ecc  08 60 99 e5                                      ldr r6, [sb, #8]
00587ed0  82 21 93 e0                                      adds r2, r3, r2, lsl #3
00587ed4  0c 20 8d e5                                      str r2, [sp, #0xc]
00587ed8  34 60 84 e5                                      str r6, [r4, #0x34]
00587edc  72 00 00 0a                                      beq #0x5880ac
00587ee0  00 60 a0 e3                                      mov r6, #0
00587ee4  06 b0 a0 e1                                      mov fp, r6
00587ee8  00 00 00 ea                                      b #0x587ef0
00587eec  38 10 94 e5                                      ldr r1, [r4, #0x38]
00587ef0  06 80 99 e7                                      ldr r8, [sb, r6]
00587ef4  06 30 89 e0                                      add r3, sb, r6
00587ef8  08 50 93 e5                                      ldr r5, [r3, #8]
00587efc  08 00 a0 e1                                      mov r0, r8
00587f00  04 70 93 e5                                      ldr r7, [r3, #4]
00587f04  fb 18 f6 eb                                      bl #0x30e2f8
00587f08  00 00 50 e3                                      cmp r0, #0
00587f0c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00587f10  38 80 84 15                                      strne r8, [r4, #0x38]
00587f14  07 00 a0 e1                                      mov r0, r7
00587f18  f6 18 f6 eb                                      bl #0x30e2f8
00587f1c  00 00 50 e3                                      cmp r0, #0
00587f20  40 10 94 e5                                      ldr r1, [r4, #0x40]
00587f24  3c 70 84 15                                      strne r7, [r4, #0x3c]
00587f28  05 00 a0 e1                                      mov r0, r5
00587f2c  f1 18 f6 eb                                      bl #0x30e2f8
00587f30  00 00 50 e3                                      cmp r0, #0
00587f34  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00587f38  40 50 84 15                                      strne r5, [r4, #0x40]
00587f3c  08 00 a0 e1                                      mov r0, r8
00587f40  f1 19 f6 eb                                      bl #0x30e70c
00587f44  00 00 50 e3                                      cmp r0, #0
00587f48  30 10 94 e5                                      ldr r1, [r4, #0x30]
00587f4c  2c 80 84 15                                      strne r8, [r4, #0x2c]
00587f50  07 00 a0 e1                                      mov r0, r7
00587f54  ec 19 f6 eb                                      bl #0x30e70c
00587f58  00 00 50 e3                                      cmp r0, #0
00587f5c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00587f60  30 70 84 15                                      strne r7, [r4, #0x30]
00587f64  05 00 a0 e1                                      mov r0, r5
00587f68  e7 19 f6 eb                                      bl #0x30e70c
00587f6c  00 00 50 e3                                      cmp r0, #0
00587f70  34 50 84 15                                      strne r5, [r4, #0x34]
00587f74  06 50 89 e0                                      add r5, sb, r6
00587f78  0c a0 95 e5                                      ldr sl, [r5, #0xc]
00587f7c  38 10 94 e5                                      ldr r1, [r4, #0x38]
00587f80  10 80 95 e5                                      ldr r8, [r5, #0x10]
00587f84  0a 00 a0 e1                                      mov r0, sl
00587f88  da 18 f6 eb                                      bl #0x30e2f8
00587f8c  00 00 50 e3                                      cmp r0, #0
00587f90  14 70 95 e5                                      ldr r7, [r5, #0x14]
00587f94  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00587f98  38 a0 84 15                                      strne sl, [r4, #0x38]
00587f9c  08 00 a0 e1                                      mov r0, r8
00587fa0  d4 18 f6 eb                                      bl #0x30e2f8
00587fa4  00 00 50 e3                                      cmp r0, #0
00587fa8  40 10 94 e5                                      ldr r1, [r4, #0x40]
00587fac  3c 80 84 15                                      strne r8, [r4, #0x3c]
00587fb0  07 00 a0 e1                                      mov r0, r7
00587fb4  cf 18 f6 eb                                      bl #0x30e2f8
00587fb8  00 00 50 e3                                      cmp r0, #0
00587fbc  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00587fc0  40 70 84 15                                      strne r7, [r4, #0x40]
00587fc4  0a 00 a0 e1                                      mov r0, sl
00587fc8  cf 19 f6 eb                                      bl #0x30e70c
00587fcc  00 00 50 e3                                      cmp r0, #0
00587fd0  30 10 94 e5                                      ldr r1, [r4, #0x30]
00587fd4  2c a0 84 15                                      strne sl, [r4, #0x2c]
00587fd8  08 00 a0 e1                                      mov r0, r8
00587fdc  ca 19 f6 eb                                      bl #0x30e70c
00587fe0  00 00 50 e3                                      cmp r0, #0
00587fe4  34 10 94 e5                                      ldr r1, [r4, #0x34]
00587fe8  30 80 84 15                                      strne r8, [r4, #0x30]
00587fec  07 00 a0 e1                                      mov r0, r7
00587ff0  c5 19 f6 eb                                      bl #0x30e70c
00587ff4  00 00 50 e3                                      cmp r0, #0
00587ff8  34 70 84 15                                      strne r7, [r4, #0x34]
00587ffc  18 80 95 e5                                      ldr r8, [r5, #0x18]
00588000  38 10 94 e5                                      ldr r1, [r4, #0x38]
00588004  20 70 95 e5                                      ldr r7, [r5, #0x20]
00588008  08 00 a0 e1                                      mov r0, r8
0058800c  b9 18 f6 eb                                      bl #0x30e2f8
00588010  1c 50 95 e5                                      ldr r5, [r5, #0x1c]
00588014  00 00 50 e3                                      cmp r0, #0
00588018  38 80 84 15                                      strne r8, [r4, #0x38]
0058801c  05 00 a0 e1                                      mov r0, r5
00588020  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00588024  b3 18 f6 eb                                      bl #0x30e2f8
00588028  00 00 50 e3                                      cmp r0, #0
0058802c  40 10 94 e5                                      ldr r1, [r4, #0x40]
00588030  3c 50 84 15                                      strne r5, [r4, #0x3c]
00588034  07 00 a0 e1                                      mov r0, r7
00588038  ae 18 f6 eb                                      bl #0x30e2f8
0058803c  00 00 50 e3                                      cmp r0, #0
00588040  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00588044  40 70 84 15                                      strne r7, [r4, #0x40]
00588048  08 00 a0 e1                                      mov r0, r8
0058804c  ae 19 f6 eb                                      bl #0x30e70c
00588050  00 00 50 e3                                      cmp r0, #0
00588054  30 10 94 e5                                      ldr r1, [r4, #0x30]
00588058  2c 80 84 15                                      strne r8, [r4, #0x2c]
0058805c  05 00 a0 e1                                      mov r0, r5
00588060  a9 19 f6 eb                                      bl #0x30e70c
00588064  00 00 50 e3                                      cmp r0, #0
00588068  30 50 84 15                                      strne r5, [r4, #0x30]
0058806c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00588070  07 00 a0 e1                                      mov r0, r7
00588074  a4 19 f6 eb                                      bl #0x30e70c
00588078  00 00 50 e3                                      cmp r0, #0
0058807c  34 70 84 15                                      strne r7, [r4, #0x34]
00588080  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00588084  01 b0 8b e2                                      add fp, fp, #1
00588088  24 60 86 e2                                      add r6, r6, #0x24
0058808c  00 00 5b e1                                      cmp fp, r0
00588090  95 ff ff 1a                                      bne #0x587eec
00588094  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00588098  38 10 94 e5                                      ldr r1, [r4, #0x38]
0058809c  30 80 94 e5                                      ldr r8, [r4, #0x30]
005880a0  3c 70 94 e5                                      ldr r7, [r4, #0x3c]
005880a4  34 60 94 e5                                      ldr r6, [r4, #0x34]
005880a8  40 50 94 e5                                      ldr r5, [r4, #0x40]
005880ac  bc 1a f6 eb                                      bl #0x30eba4
005880b0  3f 14 a0 e3                                      mov r1, #0x3f000000
005880b4  2c 1b f6 eb                                      bl #0x30ed6c
005880b8  07 10 a0 e1                                      mov r1, r7
005880bc  00 b0 a0 e1                                      mov fp, r0
005880c0  08 00 a0 e1                                      mov r0, r8
005880c4  b6 1a f6 eb                                      bl #0x30eba4
005880c8  3f 14 a0 e3                                      mov r1, #0x3f000000
005880cc  26 1b f6 eb                                      bl #0x30ed6c
005880d0  05 10 a0 e1                                      mov r1, r5
005880d4  0c 00 8d e5                                      str r0, [sp, #0xc]
005880d8  06 00 a0 e1                                      mov r0, r6
005880dc  b0 1a f6 eb                                      bl #0x30eba4
005880e0  3f 14 a0 e3                                      mov r1, #0x3f000000
005880e4  20 1b f6 eb                                      bl #0x30ed6c
005880e8  34 90 8d e2                                      add sb, sp, #0x34
005880ec  10 00 8d e5                                      str r0, [sp, #0x10]
005880f0  00 20 a0 e3                                      mov r2, #0
005880f4  0c 30 89 e2                                      add r3, sb, #0xc
005880f8  6c 10 89 e2                                      add r1, sb, #0x6c
005880fc  0c 20 03 e5                                      str r2, [r3, #-0xc]
00588100  08 20 03 e5                                      str r2, [r3, #-8]
00588104  04 20 03 e5                                      str r2, [r3, #-4]
00588108  0c 30 83 e2                                      add r3, r3, #0xc
0058810c  01 00 53 e1                                      cmp r3, r1
00588110  f9 ff ff 1a                                      bne #0x5880fc
00588114  2c 00 84 e2                                      add r0, r4, #0x2c
00588118  09 10 a0 e1                                      mov r1, sb
0058811c  45 f5 ff eb                                      bl #0x585638
00588120  2c 60 94 e5                                      ldr r6, [r4, #0x2c]
00588124  bd 17 03 e3                                      movw r1, #0x37bd
00588128  00 30 a0 e3                                      mov r3, #0
0058812c  86 15 43 e3                                      movt r1, #0x3586
00588130  06 00 a0 e1                                      mov r0, r6
00588134  38 50 94 e5                                      ldr r5, [r4, #0x38]
00588138  fc 30 8d e5                                      str r3, [sp, #0xfc]
0058813c  f4 30 8d e5                                      str r3, [sp, #0xf4]
00588140  f8 30 8d e5                                      str r3, [sp, #0xf8]
00588144  96 1a f6 eb                                      bl #0x30eba4
00588148  00 10 a0 e1                                      mov r1, r0
0058814c  05 00 a0 e1                                      mov r0, r5
00588150  15 1a f6 eb                                      bl #0x30e9ac
00588154  00 00 50 e3                                      cmp r0, #0
00588158  32 00 00 0a                                      beq #0x588228
0058815c  bd 17 03 e3                                      movw r1, #0x37bd
00588160  86 15 43 e3                                      movt r1, #0x3586
00588164  06 00 a0 e1                                      mov r0, r6
00588168  8f 18 f6 eb                                      bl #0x30e3ac
0058816c  00 10 a0 e1                                      mov r1, r0
00588170  05 00 a0 e1                                      mov r0, r5
00588174  ce 18 f6 eb                                      bl #0x30e4b4
00588178  00 00 50 e3                                      cmp r0, #0
0058817c  29 00 00 0a                                      beq #0x588228
00588180  30 60 94 e5                                      ldr r6, [r4, #0x30]
00588184  bd 17 03 e3                                      movw r1, #0x37bd
00588188  86 15 43 e3                                      movt r1, #0x3586
0058818c  06 00 a0 e1                                      mov r0, r6
00588190  83 1a f6 eb                                      bl #0x30eba4
00588194  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
00588198  00 10 a0 e1                                      mov r1, r0
0058819c  05 00 a0 e1                                      mov r0, r5
005881a0  01 1a f6 eb                                      bl #0x30e9ac
005881a4  00 00 50 e3                                      cmp r0, #0
005881a8  1e 00 00 0a                                      beq #0x588228
005881ac  bd 17 03 e3                                      movw r1, #0x37bd
005881b0  86 15 43 e3                                      movt r1, #0x3586
005881b4  06 00 a0 e1                                      mov r0, r6
005881b8  7b 18 f6 eb                                      bl #0x30e3ac
005881bc  00 10 a0 e1                                      mov r1, r0
005881c0  05 00 a0 e1                                      mov r0, r5
005881c4  ba 18 f6 eb                                      bl #0x30e4b4
005881c8  00 00 50 e3                                      cmp r0, #0
005881cc  15 00 00 0a                                      beq #0x588228
005881d0  34 60 94 e5                                      ldr r6, [r4, #0x34]
005881d4  bd 17 03 e3                                      movw r1, #0x37bd
005881d8  86 15 43 e3                                      movt r1, #0x3586
005881dc  06 00 a0 e1                                      mov r0, r6
005881e0  6f 1a f6 eb                                      bl #0x30eba4
005881e4  40 50 94 e5                                      ldr r5, [r4, #0x40]
005881e8  00 10 a0 e1                                      mov r1, r0
005881ec  05 00 a0 e1                                      mov r0, r5
005881f0  ed 19 f6 eb                                      bl #0x30e9ac
005881f4  00 00 50 e3                                      cmp r0, #0
005881f8  0a 00 00 0a                                      beq #0x588228
005881fc  bd 17 03 e3                                      movw r1, #0x37bd
00588200  86 15 43 e3                                      movt r1, #0x3586
00588204  06 00 a0 e1                                      mov r0, r6
00588208  67 18 f6 eb                                      bl #0x30e3ac
0058820c  00 10 a0 e1                                      mov r1, r0
00588210  05 00 a0 e1                                      mov r0, r5
00588214  a6 18 f6 eb                                      bl #0x30e4b4
00588218  00 00 50 e3                                      cmp r0, #0
0058821c  01 00 00 0a                                      beq #0x588228
00588220  43 df 8d e2                                      add sp, sp, #0x10c
00588224  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00588228  04 20 94 e5                                      ldr r2, [r4, #4]
0058822c  00 30 94 e5                                      ldr r3, [r4]
00588230  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00588234  02 30 63 e0                                      rsb r3, r3, r2
00588238  43 31 a0 e1                                      asr r3, r3, #2
0058823c  b4 10 9c e5                                      ldr r1, [ip, #0xb4]
00588240  83 21 a0 e1                                      lsl r2, r3, #3
00588244  02 20 63 e0                                      rsb r2, r3, r2
00588248  02 23 82 e0                                      add r2, r2, r2, lsl #6
0058824c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00588250  82 07 a0 e1                                      lsl r0, r2, #0xf
00588254  00 20 62 e0                                      rsb r2, r2, r0
00588258  82 31 83 e0                                      add r3, r3, r2, lsl #3
0058825c  03 00 51 e1                                      cmp r1, r3
00588260  ee ff ff aa                                      bge #0x588220
00588264  68 00 89 e2                                      add r0, sb, #0x68
00588268  f4 20 8d e2                                      add r2, sp, #0xf4
0058826c  1c 00 8d e5                                      str r0, [sp, #0x1c]
00588270  18 20 8d e5                                      str r2, [sp, #0x18]
00588274  b8 30 8d e2                                      add r3, sp, #0xb8
00588278  94 c0 8d e2                                      add ip, sp, #0x94
0058827c  01 0c 8d e2                                      add r0, sp, #0x100
00588280  41 2f 8d e2                                      add r2, sp, #0x104
00588284  08 90 89 e2                                      add sb, sb, #8
00588288  04 a0 a0 e1                                      mov sl, r4
0058828c  24 30 8d e5                                      str r3, [sp, #0x24]
00588290  20 c0 8d e5                                      str ip, [sp, #0x20]
00588294  28 00 8d e5                                      str r0, [sp, #0x28]
00588298  2c 20 8d e5                                      str r2, [sp, #0x2c]
0058829c  00 70 a0 e3                                      mov r7, #0
005882a0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005882a4  10 30 9d e5                                      ldr r3, [sp, #0x10]
005882a8  e8 b0 8d e5                                      str fp, [sp, #0xe8]
005882ac  ec 20 8d e5                                      str r2, [sp, #0xec]
005882b0  f0 30 8d e5                                      str r3, [sp, #0xf0]
005882b4  e0 20 8d e5                                      str r2, [sp, #0xe0]
005882b8  e4 30 8d e5                                      str r3, [sp, #0xe4]
005882bc  dc b0 8d e5                                      str fp, [sp, #0xdc]
005882c0  08 80 19 e5                                      ldr r8, [sb, #-8]
005882c4  0b 00 a0 e1                                      mov r0, fp
005882c8  04 60 19 e5                                      ldr r6, [sb, #-4]
005882cc  08 10 a0 e1                                      mov r1, r8
005882d0  0d 19 f6 eb                                      bl #0x30e70c
005882d4  06 10 a0 e1                                      mov r1, r6
005882d8  00 00 50 e3                                      cmp r0, #0
005882dc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005882e0  00 50 99 e5                                      ldr r5, [sb]
005882e4  e8 80 8d 15                                      strne r8, [sp, #0xe8]
005882e8  07 19 f6 eb                                      bl #0x30e70c
005882ec  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
005882f0  00 00 50 e3                                      cmp r0, #0
005882f4  05 00 a0 e1                                      mov r0, r5
005882f8  ec 60 8d 15                                      strne r6, [sp, #0xec]
005882fc  fd 17 f6 eb                                      bl #0x30e2f8
00588300  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
00588304  00 00 50 e3                                      cmp r0, #0
00588308  08 00 a0 e1                                      mov r0, r8
0058830c  f0 50 8d 15                                      strne r5, [sp, #0xf0]
00588310  fd 18 f6 eb                                      bl #0x30e70c
00588314  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
00588318  00 00 50 e3                                      cmp r0, #0
0058831c  06 00 a0 e1                                      mov r0, r6
00588320  dc 80 8d 15                                      strne r8, [sp, #0xdc]
00588324  f8 18 f6 eb                                      bl #0x30e70c
00588328  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
0058832c  00 00 50 e3                                      cmp r0, #0
00588330  05 00 a0 e1                                      mov r0, r5
00588334  e0 60 8d 15                                      strne r6, [sp, #0xe0]
00588338  f3 18 f6 eb                                      bl #0x30e70c
0058833c  00 10 a0 e3                                      mov r1, #0
00588340  00 00 50 e3                                      cmp r0, #0
00588344  44 00 a0 e3                                      mov r0, #0x44
00588348  e4 50 8d 15                                      strne r5, [sp, #0xe4]
0058834c  96 af fe eb                                      bl #0x5341ac
00588350  00 20 a0 e3                                      mov r2, #0
00588354  bf c4 a0 e3                                      mov ip, #0xbf000000
00588358  02 c5 8c e2                                      add ip, ip, #0x800000
0058835c  02 30 a0 e1                                      mov r3, r2
00588360  00 20 80 e5                                      str r2, [r0]
00588364  04 20 80 e5                                      str r2, [r0, #4]
00588368  08 20 80 e5                                      str r2, [r0, #8]
0058836c  fe 25 a0 e3                                      mov r2, #0x3f800000
00588370  38 20 80 e5                                      str r2, [r0, #0x38]
00588374  3c 20 80 e5                                      str r2, [r0, #0x3c]
00588378  40 20 80 e5                                      str r2, [r0, #0x40]
0058837c  2c c0 80 e5                                      str ip, [r0, #0x2c]
00588380  30 c0 80 e5                                      str ip, [r0, #0x30]
00588384  34 c0 80 e5                                      str ip, [r0, #0x34]
00588388  00 20 a0 e1                                      mov r2, r0
0058838c  03 50 a0 e1                                      mov r5, r3
00588390  01 30 83 e2                                      add r3, r3, #1
00588394  08 00 53 e3                                      cmp r3, #8
00588398  0c 50 82 e5                                      str r5, [r2, #0xc]
0058839c  04 20 82 e2                                      add r2, r2, #4
005883a0  fa ff ff 1a                                      bne #0x588390
005883a4  0c 00 8a e5                                      str r0, [sl, #0xc]
005883a8  09 00 94 e8                                      ldm r4, {r0, r3}
005883ac  03 30 60 e0                                      rsb r3, r0, r3
005883b0  23 00 53 e3                                      cmp r3, #0x23
005883b4  4c 00 00 da                                      ble #0x5884ec
005883b8  05 60 a0 e1                                      mov r6, r5
005883bc  dc 80 8d e2                                      add r8, sp, #0xdc
005883c0  28 00 00 ea                                      b #0x588468
005883c4  0c 00 9a e5                                      ldr r0, [sl, #0xc]
005883c8  00 30 94 e5                                      ldr r3, [r4]
005883cc  02 10 90 e9                                      ldmib r0, {r1, ip}
005883d0  05 20 83 e0                                      add r2, r3, r5
005883d4  0c 00 51 e1                                      cmp r1, ip
005883d8  7a 00 00 0a                                      beq #0x5885c8
005883dc  05 30 93 e7                                      ldr r3, [r3, r5]
005883e0  00 30 81 e5                                      str r3, [r1]
005883e4  04 30 92 e5                                      ldr r3, [r2, #4]
005883e8  04 30 81 e5                                      str r3, [r1, #4]
005883ec  08 30 92 e5                                      ldr r3, [r2, #8]
005883f0  08 30 81 e5                                      str r3, [r1, #8]
005883f4  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005883f8  0c 30 81 e5                                      str r3, [r1, #0xc]
005883fc  10 30 92 e5                                      ldr r3, [r2, #0x10]
00588400  10 30 81 e5                                      str r3, [r1, #0x10]
00588404  14 30 92 e5                                      ldr r3, [r2, #0x14]
00588408  14 30 81 e5                                      str r3, [r1, #0x14]
0058840c  18 30 92 e5                                      ldr r3, [r2, #0x18]
00588410  18 30 81 e5                                      str r3, [r1, #0x18]
00588414  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
00588418  1c 30 81 e5                                      str r3, [r1, #0x1c]
0058841c  20 30 92 e5                                      ldr r3, [r2, #0x20]
00588420  20 30 81 e5                                      str r3, [r1, #0x20]
00588424  04 30 90 e5                                      ldr r3, [r0, #4]
00588428  24 30 83 e2                                      add r3, r3, #0x24
0058842c  04 30 80 e5                                      str r3, [r0, #4]
00588430  09 00 94 e8                                      ldm r4, {r0, r3}
00588434  01 60 86 e2                                      add r6, r6, #1
00588438  24 50 85 e2                                      add r5, r5, #0x24
0058843c  03 30 60 e0                                      rsb r3, r0, r3
00588440  43 31 a0 e1                                      asr r3, r3, #2
00588444  83 21 a0 e1                                      lsl r2, r3, #3
00588448  02 20 63 e0                                      rsb r2, r3, r2
0058844c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00588450  82 21 83 e0                                      add r2, r3, r2, lsl #3
00588454  82 17 a0 e1                                      lsl r1, r2, #0xf
00588458  01 20 62 e0                                      rsb r2, r2, r1
0058845c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00588460  02 00 56 e1                                      cmp r6, r2
00588464  20 00 00 aa                                      bge #0x5884ec
00588468  05 00 80 e0                                      add r0, r0, r5
0058846c  08 10 a0 e1                                      mov r1, r8
00588470  cd f4 ff eb                                      bl #0x5857ac
00588474  00 00 50 e3                                      cmp r0, #0
00588478  d1 ff ff 1a                                      bne #0x5883c4
0058847c  fc 20 9d e5                                      ldr r2, [sp, #0xfc]
00588480  f8 10 9d e5                                      ldr r1, [sp, #0xf8]
00588484  00 30 94 e5                                      ldr r3, [r4]
00588488  02 00 51 e1                                      cmp r1, r2
0058848c  05 20 83 e0                                      add r2, r3, r5
00588490  52 00 00 0a                                      beq #0x5885e0
00588494  05 30 93 e7                                      ldr r3, [r3, r5]
00588498  00 30 81 e5                                      str r3, [r1]
0058849c  04 30 92 e5                                      ldr r3, [r2, #4]
005884a0  04 30 81 e5                                      str r3, [r1, #4]
005884a4  08 30 92 e5                                      ldr r3, [r2, #8]
005884a8  08 30 81 e5                                      str r3, [r1, #8]
005884ac  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005884b0  0c 30 81 e5                                      str r3, [r1, #0xc]
005884b4  10 30 92 e5                                      ldr r3, [r2, #0x10]
005884b8  10 30 81 e5                                      str r3, [r1, #0x10]
005884bc  14 30 92 e5                                      ldr r3, [r2, #0x14]
005884c0  14 30 81 e5                                      str r3, [r1, #0x14]
005884c4  18 30 92 e5                                      ldr r3, [r2, #0x18]
005884c8  18 30 81 e5                                      str r3, [r1, #0x18]
005884cc  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
005884d0  1c 30 81 e5                                      str r3, [r1, #0x1c]
005884d4  20 30 92 e5                                      ldr r3, [r2, #0x20]
005884d8  20 30 81 e5                                      str r3, [r1, #0x20]
005884dc  f8 30 9d e5                                      ldr r3, [sp, #0xf8]
005884e0  24 30 83 e2                                      add r3, r3, #0x24
005884e4  f8 30 8d e5                                      str r3, [sp, #0xf8]
005884e8  d0 ff ff ea                                      b #0x588430
005884ec  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
005884f0  f8 30 9d e5                                      ldr r3, [sp, #0xf8]
005884f4  03 30 61 e0                                      rsb r3, r1, r3
005884f8  43 31 a0 e1                                      asr r3, r3, #2
005884fc  83 21 a0 e1                                      lsl r2, r3, #3
00588500  02 20 63 e0                                      rsb r2, r3, r2
00588504  02 23 82 e0                                      add r2, r2, r2, lsl #6
00588508  82 21 83 e0                                      add r2, r3, r2, lsl #3
0058850c  82 c7 a0 e1                                      lsl ip, r2, #0xf
00588510  0c 20 62 e0                                      rsb r2, r2, ip
00588514  82 21 93 e0                                      adds r2, r3, r2, lsl #3
00588518  02 10 a0 01                                      moveq r1, r2
0058851c  36 00 00 1a                                      bne #0x5885fc
00588520  04 00 a0 e1                                      mov r0, r4
00588524  24 20 9d e5                                      ldr r2, [sp, #0x24]
00588528  b8 70 8d e5                                      str r7, [sp, #0xb8]
0058852c  bc 70 8d e5                                      str r7, [sp, #0xbc]
00588530  c0 70 8d e5                                      str r7, [sp, #0xc0]
00588534  c4 70 8d e5                                      str r7, [sp, #0xc4]
00588538  c8 70 8d e5                                      str r7, [sp, #0xc8]
0058853c  cc 70 8d e5                                      str r7, [sp, #0xcc]
00588540  d0 70 8d e5                                      str r7, [sp, #0xd0]
00588544  d4 70 8d e5                                      str r7, [sp, #0xd4]
00588548  d8 70 8d e5                                      str r7, [sp, #0xd8]
0058854c  2a fe ff eb                                      bl #0x587dfc
00588550  20 20 9d e5                                      ldr r2, [sp, #0x20]
00588554  18 00 9d e5                                      ldr r0, [sp, #0x18]
00588558  00 10 a0 e3                                      mov r1, #0
0058855c  94 70 8d e5                                      str r7, [sp, #0x94]
00588560  98 70 8d e5                                      str r7, [sp, #0x98]
00588564  9c 70 8d e5                                      str r7, [sp, #0x9c]
00588568  a0 70 8d e5                                      str r7, [sp, #0xa0]
0058856c  a4 70 8d e5                                      str r7, [sp, #0xa4]
00588570  a8 70 8d e5                                      str r7, [sp, #0xa8]
00588574  ac 70 8d e5                                      str r7, [sp, #0xac]
00588578  b0 70 8d e5                                      str r7, [sp, #0xb0]
0058857c  b4 70 8d e5                                      str r7, [sp, #0xb4]
00588580  1d fe ff eb                                      bl #0x587dfc
00588584  0c 50 9a e5                                      ldr r5, [sl, #0xc]
00588588  0c 00 95 e8                                      ldm r5, {r2, r3}
0058858c  03 00 52 e1                                      cmp r2, r3
00588590  28 00 00 0a                                      beq #0x588638
00588594  05 10 a0 e1                                      mov r1, r5
00588598  14 00 9d e5                                      ldr r0, [sp, #0x14]
0058859c  2f fe ff eb                                      bl #0x587e60
005885a0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005885a4  0c 90 89 e2                                      add sb, sb, #0xc
005885a8  04 a0 8a e2                                      add sl, sl, #4
005885ac  00 00 59 e1                                      cmp sb, r0
005885b0  3a ff ff 1a                                      bne #0x5882a0
005885b4  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
005885b8  00 00 50 e3                                      cmp r0, #0
005885bc  17 ff ff 0a                                      beq #0x588220
005885c0  a2 1f f6 eb                                      bl #0x310450
005885c4  15 ff ff ea                                      b #0x588220
005885c8  01 c0 a0 e3                                      mov ip, #1
005885cc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005885d0  00 c0 8d e5                                      str ip, [sp]
005885d4  04 c0 8d e5                                      str ip, [sp, #4]
005885d8  39 fd ff eb                                      bl #0x587ac4
005885dc  93 ff ff ea                                      b #0x588430
005885e0  01 c0 a0 e3                                      mov ip, #1
005885e4  18 00 9d e5                                      ldr r0, [sp, #0x18]
005885e8  28 30 9d e5                                      ldr r3, [sp, #0x28]
005885ec  00 c0 8d e5                                      str ip, [sp]
005885f0  04 c0 8d e5                                      str ip, [sp, #4]
005885f4  32 fd ff eb                                      bl #0x587ac4
005885f8  8c ff ff ea                                      b #0x588430
005885fc  24 30 a0 e3                                      mov r3, #0x24
00588600  93 02 02 e0                                      mul r2, r3, r2
00588604  97 18 f6 eb                                      bl #0x30e868
00588608  f8 20 9d e5                                      ldr r2, [sp, #0xf8]
0058860c  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
00588610  02 30 63 e0                                      rsb r3, r3, r2
00588614  43 31 a0 e1                                      asr r3, r3, #2
00588618  83 21 a0 e1                                      lsl r2, r3, #3
0058861c  02 20 63 e0                                      rsb r2, r3, r2
00588620  02 23 82 e0                                      add r2, r2, r2, lsl #6
00588624  82 21 83 e0                                      add r2, r3, r2, lsl #3
00588628  82 17 a0 e1                                      lsl r1, r2, #0xf
0058862c  01 20 62 e0                                      rsb r2, r2, r1
00588630  82 11 83 e0                                      add r1, r3, r2, lsl #3
00588634  b9 ff ff ea                                      b #0x588520
00588638  05 00 a0 e1                                      mov r0, r5
0058863c  e3 f7 ff eb                                      bl #0x5865d0
00588640  05 00 a0 e1                                      mov r0, r5
00588644  19 17 f6 eb                                      bl #0x30e2b0
00588648  00 30 a0 e3                                      mov r3, #0
0058864c  0c 30 8a e5                                      str r3, [sl, #0xc]
00588650  d2 ff ff ea                                      b #0x5885a0

; FUNCTION 0x00588654, declared_size=408, range_size=408, mode=arm
; class-group: glitch::scene::COctTreeTriangleSelector
; alias: _ZN6glitch5scene24COctTreeTriangleSelectorC1EPKNS0_5IMeshEPKNS0_10ISceneNodeEib
; demangled: glitch::scene::COctTreeTriangleSelector::COctTreeTriangleSelector(glitch::scene::IMesh const*, glitch::scene::ISceneNode const*, int, bool)
; decoder-mode: arm
00588654  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00588658  7c 51 9f e5                                      ldr r5, [pc, #0x17c]
0058865c  7c 61 9f e5                                      ldr r6, [pc, #0x17c]
00588660  00 40 a0 e1                                      mov r4, r0
00588664  05 50 8f e0                                      add r5, pc, r5
00588668  06 c0 95 e7                                      ldr ip, [r5, r6]
0058866c  11 de 4d e2                                      sub sp, sp, #0x110
00588670  00 00 51 e3                                      cmp r1, #0
00588674  00 00 9c e5                                      ldr r0, [ip]
00588678  08 10 8d e5                                      str r1, [sp, #8]
0058867c  03 70 a0 e1                                      mov r7, r3
00588680  0c 01 8d e5                                      str r0, [sp, #0x10c]
00588684  04 00 91 15                                      ldrne r0, [r1, #4]
00588688  28 31 dd e5                                      ldrb r3, [sp, #0x128]
0058868c  01 00 80 12                                      addne r0, r0, #1
00588690  04 00 81 15                                      strne r0, [r1, #4]
00588694  04 00 a0 e1                                      mov r0, r4
00588698  08 10 8d e2                                      add r1, sp, #8
0058869c  bd 37 00 eb                                      bl #0x596598
005886a0  08 00 9d e5                                      ldr r0, [sp, #8]
005886a4  00 00 50 e3                                      cmp r0, #0
005886a8  00 00 00 0a                                      beq #0x5886b0
005886ac  b4 53 f6 eb                                      bl #0x31d584
005886b0  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
005886b4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005886b8  10 20 94 e5                                      ldr r2, [r4, #0x10]
005886bc  03 30 95 e7                                      ldr r3, [r5, r3]
005886c0  00 80 a0 e3                                      mov r8, #0
005886c4  02 00 51 e1                                      cmp r1, r2
005886c8  08 30 83 e2                                      add r3, r3, #8
005886cc  00 30 84 e5                                      str r3, [r4]
005886d0  b4 70 84 e5                                      str r7, [r4, #0xb4]
005886d4  ac 80 84 e5                                      str r8, [r4, #0xac]
005886d8  b0 80 84 e5                                      str r8, [r4, #0xb0]
005886dc  35 00 00 0a                                      beq #0x5887b8
005886e0  79 0a 02 eb                                      bl #0x60b0cc
005886e4  08 10 a0 e1                                      mov r1, r8
005886e8  00 70 a0 e1                                      mov r7, r0
005886ec  44 00 a0 e3                                      mov r0, #0x44
005886f0  ad ae fe eb                                      bl #0x5341ac
005886f4  bf 14 a0 e3                                      mov r1, #0xbf000000
005886f8  02 15 81 e2                                      add r1, r1, #0x800000
005886fc  fe 25 a0 e3                                      mov r2, #0x3f800000
00588700  34 10 80 e5                                      str r1, [r0, #0x34]
00588704  40 20 80 e5                                      str r2, [r0, #0x40]
00588708  2c 10 80 e5                                      str r1, [r0, #0x2c]
0058870c  30 10 80 e5                                      str r1, [r0, #0x30]
00588710  38 20 80 e5                                      str r2, [r0, #0x38]
00588714  3c 20 80 e5                                      str r2, [r0, #0x3c]
00588718  08 30 a0 e1                                      mov r3, r8
0058871c  00 80 80 e5                                      str r8, [r0]
00588720  04 80 80 e5                                      str r8, [r0, #4]
00588724  08 80 80 e5                                      str r8, [r0, #8]
00588728  00 20 a0 e1                                      mov r2, r0
0058872c  08 10 a0 e1                                      mov r1, r8
00588730  01 30 83 e2                                      add r3, r3, #1
00588734  08 00 53 e3                                      cmp r3, #8
00588738  0c 10 82 e5                                      str r1, [r2, #0xc]
0058873c  04 20 82 e2                                      add r2, r2, #4
00588740  fa ff ff 1a                                      bne #0x588730
00588744  0c 10 84 e2                                      add r1, r4, #0xc
00588748  ac 00 84 e5                                      str r0, [r4, #0xac]
0058874c  f2 f7 ff eb                                      bl #0x58671c
00588750  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00588754  04 00 a0 e1                                      mov r0, r4
00588758  c0 fd ff eb                                      bl #0x587e60
0058875c  5a 0a 02 eb                                      bl #0x60b0cc
00588760  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00588764  10 e0 94 e5                                      ldr lr, [r4, #0x10]
00588768  78 10 9f e5                                      ldr r1, [pc, #0x78]
0058876c  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
00588770  0e e0 62 e0                                      rsb lr, r2, lr
00588774  4e e1 a0 e1                                      asr lr, lr, #2
00588778  00 20 67 e0                                      rsb r2, r7, r0
0058877c  8e c1 a0 e1                                      lsl ip, lr, #3
00588780  0c c0 6e e0                                      rsb ip, lr, ip
00588784  0c c3 8c e0                                      add ip, ip, ip, lsl #6
00588788  0c 70 8d e2                                      add r7, sp, #0xc
0058878c  8c c1 8e e0                                      add ip, lr, ip, lsl #3
00588790  01 10 8f e0                                      add r1, pc, r1
00588794  8c 07 a0 e1                                      lsl r0, ip, #0xf
00588798  00 c0 6c e0                                      rsb ip, ip, r0
0058879c  8c c1 8e e0                                      add ip, lr, ip, lsl #3
005887a0  07 00 a0 e1                                      mov r0, r7
005887a4  00 c0 8d e5                                      str ip, [sp]
005887a8  cd 18 f6 eb                                      bl #0x30eae4
005887ac  07 00 a0 e1                                      mov r0, r7
005887b0  01 10 a0 e3                                      mov r1, #1
005887b4  39 09 02 eb                                      bl #0x60aca0
005887b8  06 30 95 e7                                      ldr r3, [r5, r6]
005887bc  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
005887c0  04 00 a0 e1                                      mov r0, r4
005887c4  00 30 93 e5                                      ldr r3, [r3]
005887c8  03 00 52 e1                                      cmp r2, r3
005887cc  01 00 00 1a                                      bne #0x5887d8
005887d0  11 de 8d e2                                      add sp, sp, #0x110
005887d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005887d8  cc 16 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005887dc  2c c4 40 00 ac 40 00 00 1c 15 00 00 00 6c 35 00  .byte 0x2c, 0xc4, 0x40, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0x15, 0x00, 0x00, 0x00, 0x6c, 0x35, 0x00

; FUNCTION 0x005887ec, declared_size=408, range_size=408, mode=arm
; class-group: glitch::scene::COctTreeTriangleSelector
; alias: _ZN6glitch5scene24COctTreeTriangleSelectorC2EPKNS0_5IMeshEPKNS0_10ISceneNodeEib
; demangled: glitch::scene::COctTreeTriangleSelector::COctTreeTriangleSelector(glitch::scene::IMesh const*, glitch::scene::ISceneNode const*, int, bool)
; decoder-mode: arm
005887ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005887f0  7c 51 9f e5                                      ldr r5, [pc, #0x17c]
005887f4  7c 61 9f e5                                      ldr r6, [pc, #0x17c]
005887f8  00 40 a0 e1                                      mov r4, r0
005887fc  05 50 8f e0                                      add r5, pc, r5
00588800  06 c0 95 e7                                      ldr ip, [r5, r6]
00588804  11 de 4d e2                                      sub sp, sp, #0x110
00588808  00 00 51 e3                                      cmp r1, #0
0058880c  00 00 9c e5                                      ldr r0, [ip]
00588810  08 10 8d e5                                      str r1, [sp, #8]
00588814  03 70 a0 e1                                      mov r7, r3
00588818  0c 01 8d e5                                      str r0, [sp, #0x10c]
0058881c  04 00 91 15                                      ldrne r0, [r1, #4]
00588820  28 31 dd e5                                      ldrb r3, [sp, #0x128]
00588824  01 00 80 12                                      addne r0, r0, #1
00588828  04 00 81 15                                      strne r0, [r1, #4]
0058882c  04 00 a0 e1                                      mov r0, r4
00588830  08 10 8d e2                                      add r1, sp, #8
00588834  57 37 00 eb                                      bl #0x596598
00588838  08 00 9d e5                                      ldr r0, [sp, #8]
0058883c  00 00 50 e3                                      cmp r0, #0
00588840  00 00 00 0a                                      beq #0x588848
00588844  4e 53 f6 eb                                      bl #0x31d584
00588848  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
0058884c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00588850  10 20 94 e5                                      ldr r2, [r4, #0x10]
00588854  03 30 95 e7                                      ldr r3, [r5, r3]
00588858  00 80 a0 e3                                      mov r8, #0
0058885c  02 00 51 e1                                      cmp r1, r2
00588860  08 30 83 e2                                      add r3, r3, #8
00588864  00 30 84 e5                                      str r3, [r4]
00588868  b4 70 84 e5                                      str r7, [r4, #0xb4]
0058886c  ac 80 84 e5                                      str r8, [r4, #0xac]
00588870  b0 80 84 e5                                      str r8, [r4, #0xb0]
00588874  35 00 00 0a                                      beq #0x588950
00588878  13 0a 02 eb                                      bl #0x60b0cc
0058887c  08 10 a0 e1                                      mov r1, r8
00588880  00 70 a0 e1                                      mov r7, r0
00588884  44 00 a0 e3                                      mov r0, #0x44
00588888  47 ae fe eb                                      bl #0x5341ac
0058888c  bf 14 a0 e3                                      mov r1, #0xbf000000
00588890  02 15 81 e2                                      add r1, r1, #0x800000
00588894  fe 25 a0 e3                                      mov r2, #0x3f800000
00588898  34 10 80 e5                                      str r1, [r0, #0x34]
0058889c  40 20 80 e5                                      str r2, [r0, #0x40]
005888a0  2c 10 80 e5                                      str r1, [r0, #0x2c]
005888a4  30 10 80 e5                                      str r1, [r0, #0x30]
005888a8  38 20 80 e5                                      str r2, [r0, #0x38]
005888ac  3c 20 80 e5                                      str r2, [r0, #0x3c]
005888b0  08 30 a0 e1                                      mov r3, r8
005888b4  00 80 80 e5                                      str r8, [r0]
005888b8  04 80 80 e5                                      str r8, [r0, #4]
005888bc  08 80 80 e5                                      str r8, [r0, #8]
005888c0  00 20 a0 e1                                      mov r2, r0
005888c4  08 10 a0 e1                                      mov r1, r8
005888c8  01 30 83 e2                                      add r3, r3, #1
005888cc  08 00 53 e3                                      cmp r3, #8
005888d0  0c 10 82 e5                                      str r1, [r2, #0xc]
005888d4  04 20 82 e2                                      add r2, r2, #4
005888d8  fa ff ff 1a                                      bne #0x5888c8
005888dc  0c 10 84 e2                                      add r1, r4, #0xc
005888e0  ac 00 84 e5                                      str r0, [r4, #0xac]
005888e4  8c f7 ff eb                                      bl #0x58671c
005888e8  ac 10 94 e5                                      ldr r1, [r4, #0xac]
005888ec  04 00 a0 e1                                      mov r0, r4
005888f0  5a fd ff eb                                      bl #0x587e60
005888f4  f4 09 02 eb                                      bl #0x60b0cc
005888f8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005888fc  10 e0 94 e5                                      ldr lr, [r4, #0x10]
00588900  78 10 9f e5                                      ldr r1, [pc, #0x78]
00588904  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
00588908  0e e0 62 e0                                      rsb lr, r2, lr
0058890c  4e e1 a0 e1                                      asr lr, lr, #2
00588910  00 20 67 e0                                      rsb r2, r7, r0
00588914  8e c1 a0 e1                                      lsl ip, lr, #3
00588918  0c c0 6e e0                                      rsb ip, lr, ip
0058891c  0c c3 8c e0                                      add ip, ip, ip, lsl #6
00588920  0c 70 8d e2                                      add r7, sp, #0xc
00588924  8c c1 8e e0                                      add ip, lr, ip, lsl #3
00588928  01 10 8f e0                                      add r1, pc, r1
0058892c  8c 07 a0 e1                                      lsl r0, ip, #0xf
00588930  00 c0 6c e0                                      rsb ip, ip, r0
00588934  8c c1 8e e0                                      add ip, lr, ip, lsl #3
00588938  07 00 a0 e1                                      mov r0, r7
0058893c  00 c0 8d e5                                      str ip, [sp]
00588940  67 18 f6 eb                                      bl #0x30eae4
00588944  07 00 a0 e1                                      mov r0, r7
00588948  01 10 a0 e3                                      mov r1, #1
0058894c  d3 08 02 eb                                      bl #0x60aca0
00588950  06 30 95 e7                                      ldr r3, [r5, r6]
00588954  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
00588958  04 00 a0 e1                                      mov r0, r4
0058895c  00 30 93 e5                                      ldr r3, [r3]
00588960  03 00 52 e1                                      cmp r2, r3
00588964  01 00 00 1a                                      bne #0x588970
00588968  11 de 8d e2                                      add sp, sp, #0x110
0058896c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00588970  66 16 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00588974  94 c2 40 00 ac 40 00 00 1c 15 00 00 68 6a 35 00  .byte 0x94, 0xc2, 0x40, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0x15, 0x00, 0x00, 0x68, 0x6a, 0x35, 0x00

; FUNCTION 0x00588d8c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::COctTreeTriangleSelector
; alias: _ZNK6glitch5scene24COctTreeTriangleSelector12getTrianglesEPNS_4core10triangle3dIfEEiRiRKNS2_6line3dIfEEPKNS2_8CMatrix4IfEE
; demangled: glitch::scene::COctTreeTriangleSelector::getTriangles(glitch::core::triangle3d<float>*, int, int&, glitch::core::line3d<float> const&, glitch::core::CMatrix4<float> const*) const
; decoder-mode: arm
00588d8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00588d90  a4 20 80 e5                                      str r2, [r0, #0xa4]
00588d94  00 20 a0 e3                                      mov r2, #0
00588d98  a8 20 80 e5                                      str r2, [r0, #0xa8]
00588d9c  a0 10 80 e5                                      str r1, [r0, #0xa0]
00588da0  00 40 a0 e1                                      mov r4, r0
00588da4  14 10 9d e5                                      ldr r1, [sp, #0x14]
00588da8  03 50 a0 e1                                      mov r5, r3
00588dac  20 f7 ff eb                                      bl #0x586a34
00588db0  10 10 9d e5                                      ldr r1, [sp, #0x10]
00588db4  04 00 a0 e1                                      mov r0, r4
00588db8  f1 fe ff eb                                      bl #0x588984
00588dbc  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00588dc0  00 00 51 e3                                      cmp r1, #0
00588dc4  01 00 00 0a                                      beq #0x588dd0
00588dc8  04 00 a0 e1                                      mov r0, r4
00588dcc  34 f9 ff eb                                      bl #0x5872a4
00588dd0  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00588dd4  00 30 85 e5                                      str r3, [r5]
00588dd8  70 80 bd e8                                      pop {r4, r5, r6, pc}
