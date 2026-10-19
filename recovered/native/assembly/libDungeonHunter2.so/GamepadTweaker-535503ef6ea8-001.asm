; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0032f074, declared_size=576, range_size=576, mode=arm
; class-group: GamepadTweaker
; alias: _ZN14GamepadTweakerC1Ev
; demangled: GamepadTweaker::GamepadTweaker()
; decoder-mode: arm
0032f074  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0032f078  e8 51 9f e5                                      ldr r5, [pc, #0x1e8]
0032f07c  e8 61 9f e5                                      ldr r6, [pc, #0x1e8]
0032f080  e8 21 9f e5                                      ldr r2, [pc, #0x1e8]
0032f084  05 50 8f e0                                      add r5, pc, r5
0032f088  06 30 95 e7                                      ldr r3, [r5, r6]
0032f08c  02 20 95 e7                                      ldr r2, [r5, r2]
0032f090  43 df 4d e2                                      sub sp, sp, #0x10c
0032f094  00 30 93 e5                                      ldr r3, [r3]
0032f098  10 10 92 e5                                      ldr r1, [r2, #0x10]
0032f09c  00 40 a0 e1                                      mov r4, r0
0032f0a0  04 31 8d e5                                      str r3, [sp, #0x104]
0032f0a4  c7 f7 ff eb                                      bl #0x32cfc8
0032f0a8  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
0032f0ac  00 20 a0 e3                                      mov r2, #0
0032f0b0  02 30 a0 e1                                      mov r3, r2
0032f0b4  01 10 95 e7                                      ldr r1, [r5, r1]
0032f0b8  7c 20 84 e5                                      str r2, [r4, #0x7c]
0032f0bc  80 20 84 e5                                      str r2, [r4, #0x80]
0032f0c0  08 10 81 e2                                      add r1, r1, #8
0032f0c4  00 10 84 e5                                      str r1, [r4]
0032f0c8  84 20 84 e5                                      str r2, [r4, #0x84]
0032f0cc  88 20 84 e5                                      str r2, [r4, #0x88]
0032f0d0  8c 20 84 e5                                      str r2, [r4, #0x8c]
0032f0d4  90 20 84 e5                                      str r2, [r4, #0x90]
0032f0d8  94 20 84 e5                                      str r2, [r4, #0x94]
0032f0dc  98 20 84 e5                                      str r2, [r4, #0x98]
0032f0e0  9c 20 84 e5                                      str r2, [r4, #0x9c]
0032f0e4  a0 20 84 e5                                      str r2, [r4, #0xa0]
0032f0e8  a4 20 84 e5                                      str r2, [r4, #0xa4]
0032f0ec  a8 20 84 e5                                      str r2, [r4, #0xa8]
0032f0f0  ac 20 84 e5                                      str r2, [r4, #0xac]
0032f0f4  03 10 a0 e1                                      mov r1, r3
0032f0f8  04 20 a0 e1                                      mov r2, r4
0032f0fc  01 30 83 e2                                      add r3, r3, #1
0032f100  0d 00 53 e3                                      cmp r3, #0xd
0032f104  b4 10 82 e5                                      str r1, [r2, #0xb4]
0032f108  04 20 82 e2                                      add r2, r2, #4
0032f10c  fa ff ff 1a                                      bne #0x32f0fc
0032f110  60 11 9f e5                                      ldr r1, [pc, #0x160]
0032f114  04 00 a0 e1                                      mov r0, r4
0032f118  7c 20 84 e2                                      add r2, r4, #0x7c
0032f11c  01 10 8f e0                                      add r1, pc, r1
0032f120  ae ff ff eb                                      bl #0x32efe0
0032f124  50 11 9f e5                                      ldr r1, [pc, #0x150]
0032f128  04 00 a0 e1                                      mov r0, r4
0032f12c  80 20 84 e2                                      add r2, r4, #0x80
0032f130  01 10 8f e0                                      add r1, pc, r1
0032f134  a9 ff ff eb                                      bl #0x32efe0
0032f138  40 11 9f e5                                      ldr r1, [pc, #0x140]
0032f13c  04 00 a0 e1                                      mov r0, r4
0032f140  84 20 84 e2                                      add r2, r4, #0x84
0032f144  01 10 8f e0                                      add r1, pc, r1
0032f148  a4 ff ff eb                                      bl #0x32efe0
0032f14c  30 11 9f e5                                      ldr r1, [pc, #0x130]
0032f150  04 00 a0 e1                                      mov r0, r4
0032f154  88 20 84 e2                                      add r2, r4, #0x88
0032f158  01 10 8f e0                                      add r1, pc, r1
0032f15c  9f ff ff eb                                      bl #0x32efe0
0032f160  20 11 9f e5                                      ldr r1, [pc, #0x120]
0032f164  04 00 a0 e1                                      mov r0, r4
0032f168  8c 20 84 e2                                      add r2, r4, #0x8c
0032f16c  01 10 8f e0                                      add r1, pc, r1
0032f170  9a ff ff eb                                      bl #0x32efe0
0032f174  10 11 9f e5                                      ldr r1, [pc, #0x110]
0032f178  04 00 a0 e1                                      mov r0, r4
0032f17c  90 20 84 e2                                      add r2, r4, #0x90
0032f180  01 10 8f e0                                      add r1, pc, r1
0032f184  95 ff ff eb                                      bl #0x32efe0
0032f188  00 11 9f e5                                      ldr r1, [pc, #0x100]
0032f18c  04 00 a0 e1                                      mov r0, r4
0032f190  94 20 84 e2                                      add r2, r4, #0x94
0032f194  01 10 8f e0                                      add r1, pc, r1
0032f198  90 ff ff eb                                      bl #0x32efe0
0032f19c  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0032f1a0  04 00 a0 e1                                      mov r0, r4
0032f1a4  98 20 84 e2                                      add r2, r4, #0x98
0032f1a8  01 10 8f e0                                      add r1, pc, r1
0032f1ac  8b ff ff eb                                      bl #0x32efe0
0032f1b0  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
0032f1b4  04 00 a0 e1                                      mov r0, r4
0032f1b8  9c 20 84 e2                                      add r2, r4, #0x9c
0032f1bc  01 10 8f e0                                      add r1, pc, r1
0032f1c0  86 ff ff eb                                      bl #0x32efe0
0032f1c4  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
0032f1c8  04 00 a0 e1                                      mov r0, r4
0032f1cc  a0 20 84 e2                                      add r2, r4, #0xa0
0032f1d0  01 10 8f e0                                      add r1, pc, r1
0032f1d4  81 ff ff eb                                      bl #0x32efe0
0032f1d8  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0032f1dc  04 00 a0 e1                                      mov r0, r4
0032f1e0  a4 20 84 e2                                      add r2, r4, #0xa4
0032f1e4  01 10 8f e0                                      add r1, pc, r1
0032f1e8  7c ff ff eb                                      bl #0x32efe0
0032f1ec  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0032f1f0  04 00 a0 e1                                      mov r0, r4
0032f1f4  a8 20 84 e2                                      add r2, r4, #0xa8
0032f1f8  01 10 8f e0                                      add r1, pc, r1
0032f1fc  77 ff ff eb                                      bl #0x32efe0
0032f200  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
0032f204  04 00 a0 e1                                      mov r0, r4
0032f208  ac 20 84 e2                                      add r2, r4, #0xac
0032f20c  01 10 8f e0                                      add r1, pc, r1
0032f210  72 ff ff eb                                      bl #0x32efe0
0032f214  90 30 9f e5                                      ldr r3, [pc, #0x90]
0032f218  90 10 9f e5                                      ldr r1, [pc, #0x90]
0032f21c  04 70 8d e2                                      add r7, sp, #4
0032f220  03 30 95 e7                                      ldr r3, [r5, r3]
0032f224  01 10 8f e0                                      add r1, pc, r1
0032f228  07 00 a0 e1                                      mov r0, r7
0032f22c  00 20 93 e5                                      ldr r2, [r3]
0032f230  2b 7e ff eb                                      bl #0x30eae4
0032f234  04 00 a0 e1                                      mov r0, r4
0032f238  01 20 a0 e3                                      mov r2, #1
0032f23c  07 10 a0 e1                                      mov r1, r7
0032f240  1c f1 ff eb                                      bl #0x32b6b8
0032f244  06 30 95 e7                                      ldr r3, [r5, r6]
0032f248  04 21 9d e5                                      ldr r2, [sp, #0x104]
0032f24c  04 00 a0 e1                                      mov r0, r4
0032f250  00 30 93 e5                                      ldr r3, [r3]
0032f254  03 00 52 e1                                      cmp r2, r3
0032f258  01 00 00 1a                                      bne #0x32f264
0032f25c  43 df 8d e2                                      add sp, sp, #0x10c
0032f260  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0032f264  29 7c ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032f268  0c 5a 66 00 ac 40 00 00 f4 37 00 00 c8 36 00 00  .byte 0x0c, 0x5a, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc8, 0x36, 0x00, 0x00
0032f278  f4 01 59 00 f0 01 59 00 ec 01 59 00 e8 01 59 00  .byte 0xf4, 0x01, 0x59, 0x00, 0xf0, 0x01, 0x59, 0x00, 0xec, 0x01, 0x59, 0x00, 0xe8, 0x01, 0x59, 0x00
0032f288  e4 01 59 00 d8 01 59 00 cc 01 59 00 c0 01 59 00  .byte 0xe4, 0x01, 0x59, 0x00, 0xd8, 0x01, 0x59, 0x00, 0xcc, 0x01, 0x59, 0x00, 0xc0, 0x01, 0x59, 0x00
0032f298  b4 01 59 00 a8 01 59 00 9c 01 59 00 98 01 59 00  .byte 0xb4, 0x01, 0x59, 0x00, 0xa8, 0x01, 0x59, 0x00, 0x9c, 0x01, 0x59, 0x00, 0x98, 0x01, 0x59, 0x00
0032f2a8  94 01 59 00 00 06 00 00 8c 01 59 00              .byte 0x94, 0x01, 0x59, 0x00, 0x00, 0x06, 0x00, 0x00, 0x8c, 0x01, 0x59, 0x00

; FUNCTION 0x00404698, declared_size=116, range_size=116, mode=arm
; class-group: GamepadTweaker
; alias: _ZN14GamepadTweaker20UpdateButtonMappingsEv
; demangled: GamepadTweaker::UpdateButtonMappings()
; decoder-mode: arm
00404698  a0 30 90 e5                                      ldr r3, [r0, #0xa0]
0040469c  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
004046a0  94 c0 90 e5                                      ldr ip, [r0, #0x94]
004046a4  7c 90 90 e5                                      ldr sb, [r0, #0x7c]
004046a8  80 a0 90 e5                                      ldr sl, [r0, #0x80]
004046ac  84 70 90 e5                                      ldr r7, [r0, #0x84]
004046b0  88 60 90 e5                                      ldr r6, [r0, #0x88]
004046b4  8c 50 90 e5                                      ldr r5, [r0, #0x8c]
004046b8  90 40 90 e5                                      ldr r4, [r0, #0x90]
004046bc  98 10 90 e5                                      ldr r1, [r0, #0x98]
004046c0  9c 20 90 e5                                      ldr r2, [r0, #0x9c]
004046c4  a4 b0 90 e5                                      ldr fp, [r0, #0xa4]
004046c8  ac 80 90 e5                                      ldr r8, [r0, #0xac]
004046cc  d8 30 80 e5                                      str r3, [r0, #0xd8]
004046d0  a8 30 90 e5                                      ldr r3, [r0, #0xa8]
004046d4  b4 90 80 e5                                      str sb, [r0, #0xb4]
004046d8  b8 a0 80 e5                                      str sl, [r0, #0xb8]
004046dc  e4 80 80 e5                                      str r8, [r0, #0xe4]
004046e0  bc 70 80 e5                                      str r7, [r0, #0xbc]
004046e4  c0 60 80 e5                                      str r6, [r0, #0xc0]
004046e8  c4 50 80 e5                                      str r5, [r0, #0xc4]
004046ec  c8 40 80 e5                                      str r4, [r0, #0xc8]
004046f0  cc c0 80 e5                                      str ip, [r0, #0xcc]
004046f4  d0 10 80 e5                                      str r1, [r0, #0xd0]
004046f8  d4 20 80 e5                                      str r2, [r0, #0xd4]
004046fc  dc b0 80 e5                                      str fp, [r0, #0xdc]
00404700  e0 30 80 e5                                      str r3, [r0, #0xe0]
00404704  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
00404708  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040470c, declared_size=4, range_size=4, mode=arm
; class-group: GamepadTweaker
; alias: _ZN14GamepadTweaker10onSetValueERKSs
; demangled: GamepadTweaker::onSetValue(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0040470c  e1 ff ff ea                                      b #0x404698

; FUNCTION 0x00404710, declared_size=348, range_size=348, mode=arm
; class-group: GamepadTweaker
; alias: _ZN14GamepadTweaker15TranslateButtonEiN7Gamepad6ButtonE
; demangled: GamepadTweaker::TranslateButton(int, Gamepad::Button)
; decoder-mode: arm
00404710  00 00 51 e3                                      cmp r1, #0
00404714  1e 00 00 1a                                      bne #0x404794
00404718  18 00 52 e3                                      cmp r2, #0x18
0040471c  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
00404720  19 00 00 ea                                      b #0x40478c
00404724  3a 00 00 ea                                      b #0x404814
00404728  3b 00 00 ea                                      b #0x40481c
0040472c  3c 00 00 ea                                      b #0x404824
00404730  3d 00 00 ea                                      b #0x40482c
00404734  14 00 00 ea                                      b #0x40478c
00404738  13 00 00 ea                                      b #0x40478c
0040473c  3c 00 00 ea                                      b #0x404834
00404740  3d 00 00 ea                                      b #0x40483c
00404744  3e 00 00 ea                                      b #0x404844
00404748  3f 00 00 ea                                      b #0x40484c
0040474c  0e 00 00 ea                                      b #0x40478c
00404750  0d 00 00 ea                                      b #0x40478c
00404754  0c 00 00 ea                                      b #0x40478c
00404758  0b 00 00 ea                                      b #0x40478c
0040475c  3c 00 00 ea                                      b #0x404854
00404760  08 00 00 ea                                      b #0x404788
00404764  3c 00 00 ea                                      b #0x40485c
00404768  07 00 00 ea                                      b #0x40478c
0040476c  06 00 00 ea                                      b #0x40478c
00404770  05 00 00 ea                                      b #0x40478c
00404774  04 00 00 ea                                      b #0x40478c
00404778  03 00 00 ea                                      b #0x40478c
0040477c  02 00 00 ea                                      b #0x40478c
00404780  37 00 00 ea                                      b #0x404864
00404784  20 00 00 ea                                      b #0x40480c
00404788  e0 20 90 e5                                      ldr r2, [r0, #0xe0]
0040478c  02 00 a0 e1                                      mov r0, r2
00404790  1e ff 2f e1                                      bx lr
00404794  01 00 51 e3                                      cmp r1, #1
00404798  fb ff ff 1a                                      bne #0x40478c
0040479c  18 00 52 e3                                      cmp r2, #0x18
004047a0  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
004047a4  f8 ff ff ea                                      b #0x40478c
004047a8  19 00 00 ea                                      b #0x404814
004047ac  1a 00 00 ea                                      b #0x40481c
004047b0  1b 00 00 ea                                      b #0x404824
004047b4  1c 00 00 ea                                      b #0x40482c
004047b8  f3 ff ff ea                                      b #0x40478c
004047bc  f2 ff ff ea                                      b #0x40478c
004047c0  1b 00 00 ea                                      b #0x404834
004047c4  f0 ff ff ea                                      b #0x40478c
004047c8  1d 00 00 ea                                      b #0x404844
004047cc  ee ff ff ea                                      b #0x40478c
004047d0  ed ff ff ea                                      b #0x40478c
004047d4  ec ff ff ea                                      b #0x40478c
004047d8  eb ff ff ea                                      b #0x40478c
004047dc  ea ff ff ea                                      b #0x40478c
004047e0  1b 00 00 ea                                      b #0x404854
004047e4  e7 ff ff ea                                      b #0x404788
004047e8  1b 00 00 ea                                      b #0x40485c
004047ec  e6 ff ff ea                                      b #0x40478c
004047f0  e5 ff ff ea                                      b #0x40478c
004047f4  1a 00 00 ea                                      b #0x404864
004047f8  e3 ff ff ea                                      b #0x40478c
004047fc  e2 ff ff ea                                      b #0x40478c
00404800  01 00 00 ea                                      b #0x40480c
00404804  0c 00 00 ea                                      b #0x40483c
00404808  0f 00 00 ea                                      b #0x40484c
0040480c  d8 20 90 e5                                      ldr r2, [r0, #0xd8]
00404810  dd ff ff ea                                      b #0x40478c
00404814  b4 20 90 e5                                      ldr r2, [r0, #0xb4]
00404818  db ff ff ea                                      b #0x40478c
0040481c  b8 20 90 e5                                      ldr r2, [r0, #0xb8]
00404820  d9 ff ff ea                                      b #0x40478c
00404824  bc 20 90 e5                                      ldr r2, [r0, #0xbc]
00404828  d7 ff ff ea                                      b #0x40478c
0040482c  c0 20 90 e5                                      ldr r2, [r0, #0xc0]
00404830  d5 ff ff ea                                      b #0x40478c
00404834  c4 20 90 e5                                      ldr r2, [r0, #0xc4]
00404838  d3 ff ff ea                                      b #0x40478c
0040483c  c8 20 90 e5                                      ldr r2, [r0, #0xc8]
00404840  d1 ff ff ea                                      b #0x40478c
00404844  d0 20 90 e5                                      ldr r2, [r0, #0xd0]
00404848  cf ff ff ea                                      b #0x40478c
0040484c  d4 20 90 e5                                      ldr r2, [r0, #0xd4]
00404850  cd ff ff ea                                      b #0x40478c
00404854  dc 20 90 e5                                      ldr r2, [r0, #0xdc]
00404858  cb ff ff ea                                      b #0x40478c
0040485c  e4 20 90 e5                                      ldr r2, [r0, #0xe4]
00404860  c9 ff ff ea                                      b #0x40478c
00404864  cc 20 90 e5                                      ldr r2, [r0, #0xcc]
00404868  c7 ff ff ea                                      b #0x40478c

; FUNCTION 0x00404b4c, declared_size=52, range_size=52, mode=arm
; class-group: GamepadTweaker
; alias: _ZN14GamepadTweakerD1Ev
; demangled: GamepadTweaker::~GamepadTweaker()
; decoder-mode: arm
00404b4c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00404b50  24 20 9f e5                                      ldr r2, [pc, #0x24]
00404b54  10 40 2d e9                                      push {r4, lr}
00404b58  03 30 8f e0                                      add r3, pc, r3
00404b5c  02 20 93 e7                                      ldr r2, [r3, r2]
00404b60  00 40 a0 e1                                      mov r4, r0
00404b64  08 20 82 e2                                      add r2, r2, #8
00404b68  00 20 80 e5                                      str r2, [r0]
00404b6c  cf ff ff eb                                      bl #0x404ab0
00404b70  04 00 a0 e1                                      mov r0, r4
00404b74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00404b78  38 ff 58 00 c8 36 00 00                          .byte 0x38, 0xff, 0x58, 0x00, 0xc8, 0x36, 0x00, 0x00

; FUNCTION 0x00404b80, declared_size=60, range_size=60, mode=arm
; class-group: GamepadTweaker
; alias: _ZN14GamepadTweakerD0Ev
; demangled: GamepadTweaker::~GamepadTweaker()
; decoder-mode: arm
00404b80  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00404b84  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00404b88  10 40 2d e9                                      push {r4, lr}
00404b8c  03 30 8f e0                                      add r3, pc, r3
00404b90  02 20 93 e7                                      ldr r2, [r3, r2]
00404b94  00 40 a0 e1                                      mov r4, r0
00404b98  08 20 82 e2                                      add r2, r2, #8
00404b9c  00 20 80 e5                                      str r2, [r0]
00404ba0  c2 ff ff eb                                      bl #0x404ab0
00404ba4  04 00 a0 e1                                      mov r0, r4
00404ba8  24 2e fc eb                                      bl #0x310440
00404bac  04 00 a0 e1                                      mov r0, r4
00404bb0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00404bb4  04 ff 58 00 c8 36 00 00                          .byte 0x04, 0xff, 0x58, 0x00, 0xc8, 0x36, 0x00, 0x00
