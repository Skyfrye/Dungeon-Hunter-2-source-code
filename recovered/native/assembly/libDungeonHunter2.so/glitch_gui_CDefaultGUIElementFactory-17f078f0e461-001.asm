; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a56ec, declared_size=48, range_size=48, mode=arm
; class-group: glitch::gui::CDefaultGUIElementFactory
; alias: _ZN6glitch3gui25CDefaultGUIElementFactoryC2EPNS0_15IGUIEnvironmentE
; demangled: glitch::gui::CDefaultGUIElementFactory::CDefaultGUIElementFactory(glitch::gui::IGUIEnvironment*)
; decoder-mode: arm
006a56ec  20 30 9f e5                                      ldr r3, [pc, #0x20]
006a56f0  20 c0 9f e5                                      ldr ip, [pc, #0x20]
006a56f4  08 10 80 e5                                      str r1, [r0, #8]
006a56f8  03 30 8f e0                                      add r3, pc, r3
006a56fc  0c c0 93 e7                                      ldr ip, [r3, ip]
006a5700  01 10 a0 e3                                      mov r1, #1
006a5704  04 10 80 e5                                      str r1, [r0, #4]
006a5708  08 c0 8c e2                                      add ip, ip, #8
006a570c  00 c0 80 e5                                      str ip, [r0]
006a5710  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006a5714  98 f3 2e 00 e8 2d 00 00                          .byte 0x98, 0xf3, 0x2e, 0x00, 0xe8, 0x2d, 0x00, 0x00

; FUNCTION 0x006a571c, declared_size=48, range_size=48, mode=arm
; class-group: glitch::gui::CDefaultGUIElementFactory
; alias: _ZN6glitch3gui25CDefaultGUIElementFactoryC1EPNS0_15IGUIEnvironmentE
; demangled: glitch::gui::CDefaultGUIElementFactory::CDefaultGUIElementFactory(glitch::gui::IGUIEnvironment*)
; decoder-mode: arm
006a571c  20 30 9f e5                                      ldr r3, [pc, #0x20]
006a5720  20 c0 9f e5                                      ldr ip, [pc, #0x20]
006a5724  08 10 80 e5                                      str r1, [r0, #8]
006a5728  03 30 8f e0                                      add r3, pc, r3
006a572c  0c c0 93 e7                                      ldr ip, [r3, ip]
006a5730  01 10 a0 e3                                      mov r1, #1
006a5734  04 10 80 e5                                      str r1, [r0, #4]
006a5738  08 c0 8c e2                                      add ip, ip, #8
006a573c  00 c0 80 e5                                      str ip, [r0]
006a5740  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006a5744  68 f3 2e 00 e8 2d 00 00                          .byte 0x68, 0xf3, 0x2e, 0x00, 0xe8, 0x2d, 0x00, 0x00

; FUNCTION 0x006a574c, declared_size=1404, range_size=1404, mode=arm
; class-group: glitch::gui::CDefaultGUIElementFactory
; alias: _ZN6glitch3gui25CDefaultGUIElementFactory13addGUIElementENS0_17EGUI_ELEMENT_TYPEEPNS0_11IGUIElementE
; demangled: glitch::gui::CDefaultGUIElementFactory::addGUIElement(glitch::gui::EGUI_ELEMENT_TYPE, glitch::gui::IGUIElement*)
; decoder-mode: arm
006a574c  10 40 2d e9                                      push {r4, lr}
006a5750  02 30 a0 e1                                      mov r3, r2
006a5754  01 dc 4d e2                                      sub sp, sp, #0x100
006a5758  15 00 51 e3                                      cmp r1, #0x15
006a575c  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
006a5760  55 01 00 ea                                      b #0x6a5cbc
006a5764  44 01 00 ea                                      b #0x6a5c7c
006a5768  33 01 00 ea                                      b #0x6a5c3c
006a576c  24 01 00 ea                                      b #0x6a5c04
006a5770  15 01 00 ea                                      b #0x6a5bcc
006a5774  0b 01 00 ea                                      b #0x6a5ba8
006a5778  f9 00 00 ea                                      b #0x6a5b64
006a577c  ed 00 00 ea                                      b #0x6a5b38
006a5780  e1 00 00 ea                                      b #0x6a5b0c
006a5784  d7 00 00 ea                                      b #0x6a5ae8
006a5788  c1 00 00 ea                                      b #0x6a5a94
006a578c  b1 00 00 ea                                      b #0x6a5a58
006a5790  a1 00 00 ea                                      b #0x6a5a1c
006a5794  92 00 00 ea                                      b #0x6a59e4
006a5798  89 00 00 ea                                      b #0x6a59c4
006a579c  79 00 00 ea                                      b #0x6a5988
006a57a0  67 00 00 ea                                      b #0x6a5944
006a57a4  51 00 00 ea                                      b #0x6a58f0
006a57a8  42 00 00 ea                                      b #0x6a58b8
006a57ac  2e 00 00 ea                                      b #0x6a586c
006a57b0  1e 00 00 ea                                      b #0x6a5830
006a57b4  14 00 00 ea                                      b #0x6a580c
006a57b8  ff ff ff ea                                      b #0x6a57bc
006a57bc  08 00 90 e5                                      ldr r0, [r0, #8]
006a57c0  00 10 a0 e3                                      mov r1, #0
006a57c4  01 20 a0 e1                                      mov r2, r1
006a57c8  00 c0 90 e5                                      ldr ip, [r0]
006a57cc  64 e0 a0 e3                                      mov lr, #0x64
006a57d0  7c c0 9c e5                                      ldr ip, [ip, #0x7c]
006a57d4  00 30 8d e5                                      str r3, [sp]
006a57d8  00 30 e0 e3                                      mvn r3, #0
006a57dc  04 30 8d e5                                      str r3, [sp, #4]
006a57e0  24 10 8d e5                                      str r1, [sp, #0x24]
006a57e4  28 10 8d e5                                      str r1, [sp, #0x28]
006a57e8  30 e0 8d e5                                      str lr, [sp, #0x30]
006a57ec  2c e0 8d e5                                      str lr, [sp, #0x2c]
006a57f0  24 10 8d e2                                      add r1, sp, #0x24
006a57f4  02 30 a0 e1                                      mov r3, r2
006a57f8  3c ff 2f e1                                      blx ip
006a57fc  00 40 a0 e1                                      mov r4, r0
006a5800  04 00 a0 e1                                      mov r0, r4
006a5804  01 dc 8d e2                                      add sp, sp, #0x100
006a5808  10 80 bd e8                                      pop {r4, pc}
006a580c  08 c0 90 e5                                      ldr ip, [r0, #8]
006a5810  02 10 a0 e1                                      mov r1, r2
006a5814  00 20 e0 e3                                      mvn r2, #0
006a5818  0c 00 a0 e1                                      mov r0, ip
006a581c  00 30 9c e5                                      ldr r3, [ip]
006a5820  0f e0 a0 e1                                      mov lr, pc
006a5824  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
006a5828  00 40 a0 e1                                      mov r4, r0
006a582c  f3 ff ff ea                                      b #0x6a5800
006a5830  08 00 90 e5                                      ldr r0, [r0, #8]
006a5834  00 10 a0 e3                                      mov r1, #0
006a5838  64 e0 a0 e3                                      mov lr, #0x64
006a583c  00 c0 90 e5                                      ldr ip, [r0]
006a5840  00 30 e0 e3                                      mvn r3, #0
006a5844  d0 c0 9c e5                                      ldr ip, [ip, #0xd0]
006a5848  00 10 8d e5                                      str r1, [sp]
006a584c  34 10 8d e5                                      str r1, [sp, #0x34]
006a5850  38 10 8d e5                                      str r1, [sp, #0x38]
006a5854  40 e0 8d e5                                      str lr, [sp, #0x40]
006a5858  3c e0 8d e5                                      str lr, [sp, #0x3c]
006a585c  34 10 8d e2                                      add r1, sp, #0x34
006a5860  3c ff 2f e1                                      blx ip
006a5864  00 40 a0 e1                                      mov r4, r0
006a5868  e4 ff ff ea                                      b #0x6a5800
006a586c  08 00 90 e5                                      ldr r0, [r0, #8]
006a5870  01 e0 a0 e3                                      mov lr, #1
006a5874  00 10 a0 e3                                      mov r1, #0
006a5878  00 c0 90 e5                                      ldr ip, [r0]
006a587c  64 20 a0 e3                                      mov r2, #0x64
006a5880  b8 c0 9c e5                                      ldr ip, [ip, #0xb8]
006a5884  00 e0 8d e5                                      str lr, [sp]
006a5888  00 e0 e0 e3                                      mvn lr, #0
006a588c  50 20 8d e5                                      str r2, [sp, #0x50]
006a5890  44 10 8d e5                                      str r1, [sp, #0x44]
006a5894  48 10 8d e5                                      str r1, [sp, #0x48]
006a5898  4c 20 8d e5                                      str r2, [sp, #0x4c]
006a589c  04 e0 8d e5                                      str lr, [sp, #4]
006a58a0  03 20 a0 e1                                      mov r2, r3
006a58a4  01 30 a0 e1                                      mov r3, r1
006a58a8  44 10 8d e2                                      add r1, sp, #0x44
006a58ac  3c ff 2f e1                                      blx ip
006a58b0  00 40 a0 e1                                      mov r4, r0
006a58b4  d1 ff ff ea                                      b #0x6a5800
006a58b8  08 00 90 e5                                      ldr r0, [r0, #8]
006a58bc  00 e0 a0 e3                                      mov lr, #0
006a58c0  64 10 a0 e3                                      mov r1, #0x64
006a58c4  00 c0 90 e5                                      ldr ip, [r0]
006a58c8  00 30 e0 e3                                      mvn r3, #0
006a58cc  bc c0 9c e5                                      ldr ip, [ip, #0xbc]
006a58d0  60 10 8d e5                                      str r1, [sp, #0x60]
006a58d4  5c 10 8d e5                                      str r1, [sp, #0x5c]
006a58d8  58 e0 8d e5                                      str lr, [sp, #0x58]
006a58dc  54 e0 8d e5                                      str lr, [sp, #0x54]
006a58e0  54 10 8d e2                                      add r1, sp, #0x54
006a58e4  3c ff 2f e1                                      blx ip
006a58e8  00 40 a0 e1                                      mov r4, r0
006a58ec  c3 ff ff ea                                      b #0x6a5800
006a58f0  08 00 90 e5                                      ldr r0, [r0, #8]
006a58f4  00 20 a0 e3                                      mov r2, #0
006a58f8  64 e0 a0 e3                                      mov lr, #0x64
006a58fc  00 c0 90 e5                                      ldr ip, [r0]
006a5900  02 10 a0 e1                                      mov r1, r2
006a5904  01 40 a0 e3                                      mov r4, #1
006a5908  a8 c0 9c e5                                      ldr ip, [ip, #0xa8]
006a590c  04 30 8d e5                                      str r3, [sp, #4]
006a5910  00 30 e0 e3                                      mvn r3, #0
006a5914  00 40 8d e5                                      str r4, [sp]
006a5918  08 30 8d e5                                      str r3, [sp, #8]
006a591c  64 20 8d e5                                      str r2, [sp, #0x64]
006a5920  68 20 8d e5                                      str r2, [sp, #0x68]
006a5924  0c 20 8d e5                                      str r2, [sp, #0xc]
006a5928  70 e0 8d e5                                      str lr, [sp, #0x70]
006a592c  6c e0 8d e5                                      str lr, [sp, #0x6c]
006a5930  0e 20 8d e0                                      add r2, sp, lr
006a5934  01 30 a0 e1                                      mov r3, r1
006a5938  3c ff 2f e1                                      blx ip
006a593c  00 40 a0 e1                                      mov r4, r0
006a5940  ae ff ff ea                                      b #0x6a5800
006a5944  08 00 90 e5                                      ldr r0, [r0, #8]
006a5948  00 10 a0 e3                                      mov r1, #0
006a594c  64 20 a0 e3                                      mov r2, #0x64
006a5950  00 c0 90 e5                                      ldr ip, [r0]
006a5954  00 e0 e0 e3                                      mvn lr, #0
006a5958  b0 c0 9c e5                                      ldr ip, [ip, #0xb0]
006a595c  18 10 8d e5                                      str r1, [sp, #0x18]
006a5960  14 10 8d e5                                      str r1, [sp, #0x14]
006a5964  58 13 9f e5                                      ldr r1, [pc, #0x358]
006a5968  20 20 8d e5                                      str r2, [sp, #0x20]
006a596c  1c 20 8d e5                                      str r2, [sp, #0x1c]
006a5970  00 e0 8d e5                                      str lr, [sp]
006a5974  01 10 8f e0                                      add r1, pc, r1
006a5978  14 20 8d e2                                      add r2, sp, #0x14
006a597c  3c ff 2f e1                                      blx ip
006a5980  00 40 a0 e1                                      mov r4, r0
006a5984  9d ff ff ea                                      b #0x6a5800
006a5988  08 00 90 e5                                      ldr r0, [r0, #8]
006a598c  00 10 a0 e3                                      mov r1, #0
006a5990  64 20 a0 e3                                      mov r2, #0x64
006a5994  00 c0 90 e5                                      ldr ip, [r0]
006a5998  00 e0 e0 e3                                      mvn lr, #0
006a599c  88 c0 9c e5                                      ldr ip, [ip, #0x88]
006a59a0  80 20 8d e5                                      str r2, [sp, #0x80]
006a59a4  7c 20 8d e5                                      str r2, [sp, #0x7c]
006a59a8  00 e0 8d e5                                      str lr, [sp]
006a59ac  74 10 8d e5                                      str r1, [sp, #0x74]
006a59b0  78 10 8d e5                                      str r1, [sp, #0x78]
006a59b4  74 20 8d e2                                      add r2, sp, #0x74
006a59b8  3c ff 2f e1                                      blx ip
006a59bc  00 40 a0 e1                                      mov r4, r0
006a59c0  8e ff ff ea                                      b #0x6a5800
006a59c4  08 20 90 e5                                      ldr r2, [r0, #8]
006a59c8  03 10 a0 e1                                      mov r1, r3
006a59cc  02 00 a0 e1                                      mov r0, r2
006a59d0  00 30 92 e5                                      ldr r3, [r2]
006a59d4  0f e0 a0 e1                                      mov lr, pc
006a59d8  80 f0 93 e5                                      ldr pc, [r3, #0x80]
006a59dc  00 40 a0 e1                                      mov r4, r0
006a59e0  86 ff ff ea                                      b #0x6a5800
006a59e4  08 c0 90 e5                                      ldr ip, [r0, #8]
006a59e8  00 20 a0 e3                                      mov r2, #0
006a59ec  02 10 a0 e1                                      mov r1, r2
006a59f0  0c 00 a0 e1                                      mov r0, ip
006a59f4  00 c0 9c e5                                      ldr ip, [ip]
006a59f8  04 30 8d e5                                      str r3, [sp, #4]
006a59fc  00 30 e0 e3                                      mvn r3, #0
006a5a00  08 30 8d e5                                      str r3, [sp, #8]
006a5a04  00 20 8d e5                                      str r2, [sp]
006a5a08  02 30 a0 e1                                      mov r3, r2
006a5a0c  0f e0 a0 e1                                      mov lr, pc
006a5a10  84 f0 9c e5                                      ldr pc, [ip, #0x84]
006a5a14  00 40 a0 e1                                      mov r4, r0
006a5a18  78 ff ff ea                                      b #0x6a5800
006a5a1c  08 00 90 e5                                      ldr r0, [r0, #8]
006a5a20  00 10 a0 e3                                      mov r1, #0
006a5a24  64 e0 a0 e3                                      mov lr, #0x64
006a5a28  00 c0 90 e5                                      ldr ip, [r0]
006a5a2c  00 30 e0 e3                                      mvn r3, #0
006a5a30  9c c0 9c e5                                      ldr ip, [ip, #0x9c]
006a5a34  00 10 8d e5                                      str r1, [sp]
006a5a38  84 10 8d e5                                      str r1, [sp, #0x84]
006a5a3c  88 10 8d e5                                      str r1, [sp, #0x88]
006a5a40  90 e0 8d e5                                      str lr, [sp, #0x90]
006a5a44  8c e0 8d e5                                      str lr, [sp, #0x8c]
006a5a48  84 10 8d e2                                      add r1, sp, #0x84
006a5a4c  3c ff 2f e1                                      blx ip
006a5a50  00 40 a0 e1                                      mov r4, r0
006a5a54  69 ff ff ea                                      b #0x6a5800
006a5a58  08 00 90 e5                                      ldr r0, [r0, #8]
006a5a5c  00 10 a0 e3                                      mov r1, #0
006a5a60  64 e0 a0 e3                                      mov lr, #0x64
006a5a64  00 c0 90 e5                                      ldr ip, [r0]
006a5a68  00 30 e0 e3                                      mvn r3, #0
006a5a6c  98 c0 9c e5                                      ldr ip, [ip, #0x98]
006a5a70  00 10 8d e5                                      str r1, [sp]
006a5a74  94 10 8d e5                                      str r1, [sp, #0x94]
006a5a78  98 10 8d e5                                      str r1, [sp, #0x98]
006a5a7c  a0 e0 8d e5                                      str lr, [sp, #0xa0]
006a5a80  9c e0 8d e5                                      str lr, [sp, #0x9c]
006a5a84  94 10 8d e2                                      add r1, sp, #0x94
006a5a88  3c ff 2f e1                                      blx ip
006a5a8c  00 40 a0 e1                                      mov r4, r0
006a5a90  5a ff ff ea                                      b #0x6a5800
006a5a94  08 00 90 e5                                      ldr r0, [r0, #8]
006a5a98  00 20 a0 e3                                      mov r2, #0
006a5a9c  fc 10 8d e2                                      add r1, sp, #0xfc
006a5aa0  00 c0 90 e5                                      ldr ip, [r0]
006a5aa4  8c c0 9c e5                                      ldr ip, [ip, #0x8c]
006a5aa8  00 30 8d e5                                      str r3, [sp]
006a5aac  00 30 e0 e3                                      mvn r3, #0
006a5ab0  04 30 8d e5                                      str r3, [sp, #4]
006a5ab4  08 20 8d e5                                      str r2, [sp, #8]
006a5ab8  fc 20 8d e5                                      str r2, [sp, #0xfc]
006a5abc  f4 20 8d e5                                      str r2, [sp, #0xf4]
006a5ac0  f8 20 8d e5                                      str r2, [sp, #0xf8]
006a5ac4  01 30 a0 e3                                      mov r3, #1
006a5ac8  f4 20 8d e2                                      add r2, sp, #0xf4
006a5acc  3c ff 2f e1                                      blx ip
006a5ad0  00 40 a0 e1                                      mov r4, r0
006a5ad4  fc 00 9d e5                                      ldr r0, [sp, #0xfc]
006a5ad8  00 00 50 e3                                      cmp r0, #0
006a5adc  47 ff ff 0a                                      beq #0x6a5800
006a5ae0  a7 de f1 eb                                      bl #0x31d584
006a5ae4  45 ff ff ea                                      b #0x6a5800
006a5ae8  08 c0 90 e5                                      ldr ip, [r0, #8]
006a5aec  00 10 a0 e3                                      mov r1, #0
006a5af0  00 30 e0 e3                                      mvn r3, #0
006a5af4  0c 00 a0 e1                                      mov r0, ip
006a5af8  00 c0 9c e5                                      ldr ip, [ip]
006a5afc  0f e0 a0 e1                                      mov lr, pc
006a5b00  b4 f0 9c e5                                      ldr pc, [ip, #0xb4]
006a5b04  00 40 a0 e1                                      mov r4, r0
006a5b08  3c ff ff ea                                      b #0x6a5800
006a5b0c  08 20 90 e5                                      ldr r2, [r0, #8]
006a5b10  00 10 a0 e3                                      mov r1, #0
006a5b14  00 c0 92 e5                                      ldr ip, [r2]
006a5b18  02 00 a0 e1                                      mov r0, r2
006a5b1c  00 20 e0 e3                                      mvn r2, #0
006a5b20  00 20 8d e5                                      str r2, [sp]
006a5b24  01 20 a0 e3                                      mov r2, #1
006a5b28  0f e0 a0 e1                                      mov lr, pc
006a5b2c  a4 f0 9c e5                                      ldr pc, [ip, #0xa4]
006a5b30  00 40 a0 e1                                      mov r4, r0
006a5b34  31 ff ff ea                                      b #0x6a5800
006a5b38  08 20 90 e5                                      ldr r2, [r0, #8]
006a5b3c  00 10 a0 e3                                      mov r1, #0
006a5b40  00 c0 92 e5                                      ldr ip, [r2]
006a5b44  02 00 a0 e1                                      mov r0, r2
006a5b48  00 20 e0 e3                                      mvn r2, #0
006a5b4c  00 20 8d e5                                      str r2, [sp]
006a5b50  01 20 a0 e3                                      mov r2, #1
006a5b54  0f e0 a0 e1                                      mov lr, pc
006a5b58  a0 f0 9c e5                                      ldr pc, [ip, #0xa0]
006a5b5c  00 40 a0 e1                                      mov r4, r0
006a5b60  26 ff ff ea                                      b #0x6a5800
006a5b64  08 00 90 e5                                      ldr r0, [r0, #8]
006a5b68  00 10 a0 e3                                      mov r1, #0
006a5b6c  64 20 a0 e3                                      mov r2, #0x64
006a5b70  00 c0 90 e5                                      ldr ip, [r0]
006a5b74  ac c0 9c e5                                      ldr ip, [ip, #0xac]
006a5b78  00 30 8d e5                                      str r3, [sp]
006a5b7c  00 30 e0 e3                                      mvn r3, #0
006a5b80  b0 20 8d e5                                      str r2, [sp, #0xb0]
006a5b84  04 30 8d e5                                      str r3, [sp, #4]
006a5b88  ac 20 8d e5                                      str r2, [sp, #0xac]
006a5b8c  a4 10 8d e5                                      str r1, [sp, #0xa4]
006a5b90  a8 10 8d e5                                      str r1, [sp, #0xa8]
006a5b94  a4 20 8d e2                                      add r2, sp, #0xa4
006a5b98  01 30 a0 e3                                      mov r3, #1
006a5b9c  3c ff 2f e1                                      blx ip
006a5ba0  00 40 a0 e1                                      mov r4, r0
006a5ba4  15 ff ff ea                                      b #0x6a5800
006a5ba8  08 c0 90 e5                                      ldr ip, [r0, #8]
006a5bac  02 10 a0 e1                                      mov r1, r2
006a5bb0  00 20 e0 e3                                      mvn r2, #0
006a5bb4  0c 00 a0 e1                                      mov r0, ip
006a5bb8  00 30 9c e5                                      ldr r3, [ip]
006a5bbc  0f e0 a0 e1                                      mov lr, pc
006a5bc0  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
006a5bc4  00 40 a0 e1                                      mov r4, r0
006a5bc8  0c ff ff ea                                      b #0x6a5800
006a5bcc  08 00 90 e5                                      ldr r0, [r0, #8]
006a5bd0  00 e0 a0 e3                                      mov lr, #0
006a5bd4  64 10 a0 e3                                      mov r1, #0x64
006a5bd8  00 c0 90 e5                                      ldr ip, [r0]
006a5bdc  00 30 e0 e3                                      mvn r3, #0
006a5be0  c0 c0 9c e5                                      ldr ip, [ip, #0xc0]
006a5be4  c0 10 8d e5                                      str r1, [sp, #0xc0]
006a5be8  bc 10 8d e5                                      str r1, [sp, #0xbc]
006a5bec  b8 e0 8d e5                                      str lr, [sp, #0xb8]
006a5bf0  b4 e0 8d e5                                      str lr, [sp, #0xb4]
006a5bf4  b4 10 8d e2                                      add r1, sp, #0xb4
006a5bf8  3c ff 2f e1                                      blx ip
006a5bfc  00 40 a0 e1                                      mov r4, r0
006a5c00  fe fe ff ea                                      b #0x6a5800
006a5c04  08 00 90 e5                                      ldr r0, [r0, #8]
006a5c08  00 e0 a0 e3                                      mov lr, #0
006a5c0c  64 10 a0 e3                                      mov r1, #0x64
006a5c10  00 c0 90 e5                                      ldr ip, [r0]
006a5c14  00 30 e0 e3                                      mvn r3, #0
006a5c18  cc c0 9c e5                                      ldr ip, [ip, #0xcc]
006a5c1c  d0 10 8d e5                                      str r1, [sp, #0xd0]
006a5c20  cc 10 8d e5                                      str r1, [sp, #0xcc]
006a5c24  c8 e0 8d e5                                      str lr, [sp, #0xc8]
006a5c28  c4 e0 8d e5                                      str lr, [sp, #0xc4]
006a5c2c  c4 10 8d e2                                      add r1, sp, #0xc4
006a5c30  3c ff 2f e1                                      blx ip
006a5c34  00 40 a0 e1                                      mov r4, r0
006a5c38  f0 fe ff ea                                      b #0x6a5800
006a5c3c  08 00 90 e5                                      ldr r0, [r0, #8]
006a5c40  00 10 a0 e3                                      mov r1, #0
006a5c44  64 20 a0 e3                                      mov r2, #0x64
006a5c48  00 c0 90 e5                                      ldr ip, [r0]
006a5c4c  00 e0 e0 e3                                      mvn lr, #0
006a5c50  94 c0 9c e5                                      ldr ip, [ip, #0x94]
006a5c54  e0 20 8d e5                                      str r2, [sp, #0xe0]
006a5c58  dc 20 8d e5                                      str r2, [sp, #0xdc]
006a5c5c  00 e0 8d e5                                      str lr, [sp]
006a5c60  d4 10 8d e5                                      str r1, [sp, #0xd4]
006a5c64  d8 10 8d e5                                      str r1, [sp, #0xd8]
006a5c68  04 10 8d e5                                      str r1, [sp, #4]
006a5c6c  d4 20 8d e2                                      add r2, sp, #0xd4
006a5c70  3c ff 2f e1                                      blx ip
006a5c74  00 40 a0 e1                                      mov r4, r0
006a5c78  e0 fe ff ea                                      b #0x6a5800
006a5c7c  08 00 90 e5                                      ldr r0, [r0, #8]
006a5c80  00 10 a0 e3                                      mov r1, #0
006a5c84  64 e0 a0 e3                                      mov lr, #0x64
006a5c88  00 c0 90 e5                                      ldr ip, [r0]
006a5c8c  00 30 e0 e3                                      mvn r3, #0
006a5c90  78 c0 9c e5                                      ldr ip, [ip, #0x78]
006a5c94  04 10 8d e5                                      str r1, [sp, #4]
006a5c98  e4 10 8d e5                                      str r1, [sp, #0xe4]
006a5c9c  e8 10 8d e5                                      str r1, [sp, #0xe8]
006a5ca0  00 10 8d e5                                      str r1, [sp]
006a5ca4  f0 e0 8d e5                                      str lr, [sp, #0xf0]
006a5ca8  ec e0 8d e5                                      str lr, [sp, #0xec]
006a5cac  e4 10 8d e2                                      add r1, sp, #0xe4
006a5cb0  3c ff 2f e1                                      blx ip
006a5cb4  00 40 a0 e1                                      mov r4, r0
006a5cb8  d0 fe ff ea                                      b #0x6a5800
006a5cbc  00 40 a0 e3                                      mov r4, #0
006a5cc0  ce fe ff ea                                      b #0x6a5800
; mapping-symbol data/literal pool
006a5cc4  14 57 24 00                                      .byte 0x14, 0x57, 0x24, 0x00

; FUNCTION 0x006a5cc8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CDefaultGUIElementFactory
; alias: _ZNK6glitch3gui25CDefaultGUIElementFactory31getCreatableGUIElementTypeCountEv
; demangled: glitch::gui::CDefaultGUIElementFactory::getCreatableGUIElementTypeCount() const
; decoder-mode: arm
006a5cc8  16 00 a0 e3                                      mov r0, #0x16
006a5ccc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a5cd0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CDefaultGUIElementFactory
; alias: _ZNK6glitch3gui25CDefaultGUIElementFactory27getCreateableGUIElementTypeEi
; demangled: glitch::gui::CDefaultGUIElementFactory::getCreateableGUIElementType(int) const
; decoder-mode: arm
006a5cd0  15 00 51 e3                                      cmp r1, #0x15
006a5cd4  01 00 a0 91                                      movls r0, r1
006a5cd8  17 00 a0 83                                      movhi r0, #0x17
006a5cdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a5ce0, declared_size=32, range_size=32, mode=arm
; class-group: glitch::gui::CDefaultGUIElementFactory
; alias: _ZNK6glitch3gui25CDefaultGUIElementFactory31getCreateableGUIElementTypeNameEi
; demangled: glitch::gui::CDefaultGUIElementFactory::getCreateableGUIElementTypeName(int) const
; decoder-mode: arm
006a5ce0  15 00 51 e3                                      cmp r1, #0x15
006a5ce4  00 00 a0 83                                      movhi r0, #0
006a5ce8  1e ff 2f 81                                      bxhi lr
006a5cec  08 30 9f e5                                      ldr r3, [pc, #8]
006a5cf0  03 30 8f e0                                      add r3, pc, r3
006a5cf4  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
006a5cf8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006a5cfc  ec 1a 2b 00                                      .byte 0xec, 0x1a, 0x2b, 0x00

; FUNCTION 0x006a5d00, declared_size=32, range_size=32, mode=arm
; class-group: glitch::gui::CDefaultGUIElementFactory
; alias: _ZNK6glitch3gui25CDefaultGUIElementFactory31getCreateableGUIElementTypeNameENS0_17EGUI_ELEMENT_TYPEE
; demangled: glitch::gui::CDefaultGUIElementFactory::getCreateableGUIElementTypeName(glitch::gui::EGUI_ELEMENT_TYPE) const
; decoder-mode: arm
006a5d00  15 00 51 e3                                      cmp r1, #0x15
006a5d04  00 00 a0 83                                      movhi r0, #0
006a5d08  1e ff 2f 81                                      bxhi lr
006a5d0c  08 30 9f e5                                      ldr r3, [pc, #8]
006a5d10  03 30 8f e0                                      add r3, pc, r3
006a5d14  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
006a5d18  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006a5d1c  cc 1a 2b 00                                      .byte 0xcc, 0x1a, 0x2b, 0x00

; FUNCTION 0x006a5d20, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::CDefaultGUIElementFactory
; alias: _ZN6glitch3gui25CDefaultGUIElementFactoryD1Ev
; demangled: glitch::gui::CDefaultGUIElementFactory::~CDefaultGUIElementFactory()
; decoder-mode: arm
006a5d20  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a5d44, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CDefaultGUIElementFactory
; alias: _ZN6glitch3gui25CDefaultGUIElementFactoryD0Ev
; demangled: glitch::gui::CDefaultGUIElementFactory::~CDefaultGUIElementFactory()
; decoder-mode: arm
006a5d44  10 40 2d e9                                      push {r4, lr}
006a5d48  00 40 a0 e1                                      mov r4, r0
006a5d4c  57 a1 f1 eb                                      bl #0x30e2b0
006a5d50  04 00 a0 e1                                      mov r0, r4
006a5d54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a5d6c, declared_size=88, range_size=88, mode=arm
; class-group: glitch::gui::CDefaultGUIElementFactory
; alias: _ZNK6glitch3gui25CDefaultGUIElementFactory15getTypeFromNameEPKc
; demangled: glitch::gui::CDefaultGUIElementFactory::getTypeFromName(char const*) const
; decoder-mode: arm
006a5d6c  70 40 2d e9                                      push {r4, r5, r6, lr}
006a5d70  01 50 a0 e1                                      mov r5, r1
006a5d74  40 60 9f e5                                      ldr r6, [pc, #0x40]
006a5d78  40 10 9f e5                                      ldr r1, [pc, #0x40]
006a5d7c  00 40 a0 e3                                      mov r4, #0
006a5d80  06 60 8f e0                                      add r6, pc, r6
006a5d84  01 10 8f e0                                      add r1, pc, r1
006a5d88  03 00 00 ea                                      b #0x6a5d9c
006a5d8c  01 40 84 e2                                      add r4, r4, #1
006a5d90  04 11 96 e7                                      ldr r1, [r6, r4, lsl #2]
006a5d94  00 00 51 e3                                      cmp r1, #0
006a5d98  05 00 00 0a                                      beq #0x6a5db4
006a5d9c  05 00 a0 e1                                      mov r0, r5
006a5da0  5d a1 f1 eb                                      bl #0x30e31c
006a5da4  00 00 50 e3                                      cmp r0, #0
006a5da8  f7 ff ff 1a                                      bne #0x6a5d8c
006a5dac  04 00 a0 e1                                      mov r0, r4
006a5db0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006a5db4  17 00 a0 e3                                      mov r0, #0x17
006a5db8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006a5dbc  5c 1a 2b 00 bc 82 23 00                          .byte 0x5c, 0x1a, 0x2b, 0x00, 0xbc, 0x82, 0x23, 0x00

; FUNCTION 0x006a5dc4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::gui::CDefaultGUIElementFactory
; alias: _ZN6glitch3gui25CDefaultGUIElementFactory13addGUIElementEPKcPNS0_11IGUIElementE
; demangled: glitch::gui::CDefaultGUIElementFactory::addGUIElement(char const*, glitch::gui::IGUIElement*)
; decoder-mode: arm
006a5dc4  70 40 2d e9                                      push {r4, r5, r6, lr}
006a5dc8  00 30 90 e5                                      ldr r3, [r0]
006a5dcc  00 40 a0 e1                                      mov r4, r0
006a5dd0  02 60 a0 e1                                      mov r6, r2
006a5dd4  0c 50 93 e5                                      ldr r5, [r3, #0xc]
006a5dd8  e3 ff ff eb                                      bl #0x6a5d6c
006a5ddc  06 20 a0 e1                                      mov r2, r6
006a5de0  00 10 a0 e1                                      mov r1, r0
006a5de4  04 00 a0 e1                                      mov r0, r4
006a5de8  35 ff 2f e1                                      blx r5
006a5dec  70 80 bd e8                                      pop {r4, r5, r6, pc}
