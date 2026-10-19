; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00533e98, declared_size=52, range_size=52, mode=arm
; class-group: glitch::CIrrFactory
; alias: _ZN6glitch11CIrrFactoryC2Ev
; demangled: glitch::CIrrFactory::CIrrFactory()
; decoder-mode: arm
00533e98  20 30 9f e5                                      ldr r3, [pc, #0x20]
00533e9c  20 20 9f e5                                      ldr r2, [pc, #0x20]
00533ea0  20 10 9f e5                                      ldr r1, [pc, #0x20]
00533ea4  03 30 8f e0                                      add r3, pc, r3
00533ea8  02 20 93 e7                                      ldr r2, [r3, r2]
00533eac  01 c0 93 e7                                      ldr ip, [r3, r1]
00533eb0  08 20 82 e2                                      add r2, r2, #8
00533eb4  00 20 80 e5                                      str r2, [r0]
00533eb8  00 00 8c e5                                      str r0, [ip]
00533ebc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00533ec0  ec 0b 46 00 9c 45 00 00 d0 14 00 00              .byte 0xec, 0x0b, 0x46, 0x00, 0x9c, 0x45, 0x00, 0x00, 0xd0, 0x14, 0x00, 0x00

; FUNCTION 0x00533ecc, declared_size=52, range_size=52, mode=arm
; class-group: glitch::CIrrFactory
; alias: _ZN6glitch11CIrrFactoryC1Ev
; demangled: glitch::CIrrFactory::CIrrFactory()
; decoder-mode: arm
00533ecc  20 30 9f e5                                      ldr r3, [pc, #0x20]
00533ed0  20 20 9f e5                                      ldr r2, [pc, #0x20]
00533ed4  20 10 9f e5                                      ldr r1, [pc, #0x20]
00533ed8  03 30 8f e0                                      add r3, pc, r3
00533edc  02 20 93 e7                                      ldr r2, [r3, r2]
00533ee0  01 c0 93 e7                                      ldr ip, [r3, r1]
00533ee4  08 20 82 e2                                      add r2, r2, #8
00533ee8  00 20 80 e5                                      str r2, [r0]
00533eec  00 00 8c e5                                      str r0, [ip]
00533ef0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00533ef4  b8 0b 46 00 9c 45 00 00 d0 14 00 00              .byte 0xb8, 0x0b, 0x46, 0x00, 0x9c, 0x45, 0x00, 0x00, 0xd0, 0x14, 0x00, 0x00

; FUNCTION 0x00533f00, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CIrrFactory
; alias: _ZN6glitch11CIrrFactoryD2Ev
; demangled: glitch::CIrrFactory::~CIrrFactory()
; decoder-mode: arm
00533f00  1e ff 2f e1                                      bx lr

; FUNCTION 0x00533f04, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CIrrFactory
; alias: _ZN6glitch11CIrrFactoryD1Ev
; demangled: glitch::CIrrFactory::~CIrrFactory()
; decoder-mode: arm
00533f04  1e ff 2f e1                                      bx lr

; FUNCTION 0x00533f28, declared_size=56, range_size=56, mode=arm
; class-group: glitch::CIrrFactory
; alias: _ZN6glitch11CIrrFactory20createGUIEnvironmentERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_5video12IVideoDriverEPNS_11IOSOperatorE
; demangled: glitch::CIrrFactory::createGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)
; decoder-mode: arm
00533f28  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00533f2c  76 0f a0 e3                                      mov r0, #0x1d8
00533f30  01 50 a0 e1                                      mov r5, r1
00533f34  00 10 a0 e3                                      mov r1, #0
00533f38  02 70 a0 e1                                      mov r7, r2
00533f3c  03 60 a0 e1                                      mov r6, r3
00533f40  99 00 00 eb                                      bl #0x5341ac
00533f44  05 10 a0 e1                                      mov r1, r5
00533f48  00 40 a0 e1                                      mov r4, r0
00533f4c  07 20 a0 e1                                      mov r2, r7
00533f50  06 30 a0 e1                                      mov r3, r6
00533f54  59 18 00 eb                                      bl #0x53a0c0
00533f58  04 00 a0 e1                                      mov r0, r4
00533f5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00533f60, declared_size=80, range_size=80, mode=arm
; class-group: glitch::CIrrFactory
; alias: _ZN6glitch11CIrrFactory18createSceneManagerEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_3gui14ICursorControlEPNSB_15IGUIEnvironmentE
; demangled: glitch::CIrrFactory::createSceneManager(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::gui::ICursorControl*, glitch::gui::IGUIEnvironment*)
; decoder-mode: arm
00533f60  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00533f64  a5 0f a0 e3                                      mov r0, #0x294
00533f68  0c d0 4d e2                                      sub sp, sp, #0xc
00533f6c  01 50 a0 e1                                      mov r5, r1
00533f70  00 10 a0 e3                                      mov r1, #0
00533f74  02 70 a0 e1                                      mov r7, r2
00533f78  03 60 a0 e1                                      mov r6, r3
00533f7c  8a 00 00 eb                                      bl #0x5341ac
00533f80  00 c0 a0 e3                                      mov ip, #0
00533f84  00 c0 8d e5                                      str ip, [sp]
00533f88  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00533f8c  00 40 a0 e1                                      mov r4, r0
00533f90  05 10 a0 e1                                      mov r1, r5
00533f94  07 20 a0 e1                                      mov r2, r7
00533f98  06 30 a0 e1                                      mov r3, r6
00533f9c  04 c0 8d e5                                      str ip, [sp, #4]
00533fa0  58 66 01 eb                                      bl #0x58d908
00533fa4  04 00 a0 e1                                      mov r0, r4
00533fa8  0c d0 8d e2                                      add sp, sp, #0xc
00533fac  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00533fb0, declared_size=56, range_size=56, mode=arm
; class-group: glitch::CIrrFactory
; alias: _ZN6glitch11CIrrFactory16createFileSystemEv
; demangled: glitch::CIrrFactory::createFileSystem()
; decoder-mode: arm
00533fb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00533fb4  00 10 a0 e3                                      mov r1, #0
00533fb8  00 40 a0 e1                                      mov r4, r0
00533fbc  2c 00 a0 e3                                      mov r0, #0x2c
00533fc0  79 00 00 eb                                      bl #0x5341ac
00533fc4  00 50 a0 e1                                      mov r5, r0
00533fc8  36 e0 00 eb                                      bl #0x56c0a8
00533fcc  00 00 55 e3                                      cmp r5, #0
00533fd0  00 50 84 e5                                      str r5, [r4]
00533fd4  04 30 95 15                                      ldrne r3, [r5, #4]
00533fd8  04 00 a0 e1                                      mov r0, r4
00533fdc  01 30 83 12                                      addne r3, r3, #1
00533fe0  04 30 85 15                                      strne r3, [r5, #4]
00533fe4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00533fe8, declared_size=168, range_size=168, mode=arm
; class-group: glitch::CIrrFactory
; alias: _ZN6glitch11CIrrFactory11getInstanceEv
; demangled: glitch::CIrrFactory::getInstance()
; decoder-mode: arm
00533fe8  70 40 2d e9                                      push {r4, r5, r6, lr}
00533fec  84 50 9f e5                                      ldr r5, [pc, #0x84]
00533ff0  84 30 9f e5                                      ldr r3, [pc, #0x84]
00533ff4  05 50 8f e0                                      add r5, pc, r5
00533ff8  03 30 95 e7                                      ldr r3, [r5, r3]
00533ffc  00 00 93 e5                                      ldr r0, [r3]
00534000  00 00 50 e3                                      cmp r0, #0
00534004  00 00 00 0a                                      beq #0x53400c
00534008  70 80 bd e8                                      pop {r4, r5, r6, pc}
0053400c  6c 40 9f e5                                      ldr r4, [pc, #0x6c]
00534010  04 40 8f e0                                      add r4, pc, r4
00534014  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00534018  01 00 13 e3                                      tst r3, #1
0053401c  03 00 00 0a                                      beq #0x534030
00534020  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
00534024  00 00 8f e0                                      add r0, pc, r0
00534028  10 00 80 e2                                      add r0, r0, #0x10
0053402c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00534030  0c 60 84 e2                                      add r6, r4, #0xc
00534034  06 00 a0 e1                                      mov r0, r6
00534038  cb 69 f7 eb                                      bl #0x30e76c
0053403c  00 00 50 e3                                      cmp r0, #0
00534040  f6 ff ff 0a                                      beq #0x534020
00534044  10 40 84 e2                                      add r4, r4, #0x10
00534048  04 00 a0 e1                                      mov r0, r4
0053404c  9e ff ff eb                                      bl #0x533ecc
00534050  06 00 a0 e1                                      mov r0, r6
00534054  78 6a f7 eb                                      bl #0x30ea3c
00534058  28 30 9f e5                                      ldr r3, [pc, #0x28]
0053405c  04 00 a0 e1                                      mov r0, r4
00534060  03 10 95 e7                                      ldr r1, [r5, r3]
00534064  20 30 9f e5                                      ldr r3, [pc, #0x20]
00534068  03 20 95 e7                                      ldr r2, [r5, r3]
0053406c  a4 68 f7 eb                                      bl #0x30e304
00534070  04 00 a0 e1                                      mov r0, r4
00534074  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00534078  9c 0a 46 00 d0 14 00 00 34 25 4c 00 20 25 4c 00  .byte 0x9c, 0x0a, 0x46, 0x00, 0xd0, 0x14, 0x00, 0x00, 0x34, 0x25, 0x4c, 0x00, 0x20, 0x25, 0x4c, 0x00
00534088  78 18 00 00 90 18 00 00                          .byte 0x78, 0x18, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00534090, declared_size=28, range_size=28, mode=arm
; class-group: glitch::CIrrFactory
; alias: _ZN6glitch11CIrrFactoryD0Ev
; demangled: glitch::CIrrFactory::~CIrrFactory()
; decoder-mode: arm
00534090  10 40 2d e9                                      push {r4, lr}
00534094  00 40 a0 e1                                      mov r4, r0
00534098  99 ff ff eb                                      bl #0x533f04
0053409c  04 00 a0 e1                                      mov r0, r4
005340a0  82 68 f7 eb                                      bl #0x30e2b0
005340a4  04 00 a0 e1                                      mov r0, r4
005340a8  10 80 bd e8                                      pop {r4, pc}
