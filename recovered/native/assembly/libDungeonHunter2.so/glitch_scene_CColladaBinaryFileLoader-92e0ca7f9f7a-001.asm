; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b9310, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CColladaBinaryFileLoader
; alias: _ZN6glitch5scene24CColladaBinaryFileLoaderC2EPNS0_13CSceneManagerERKN5boost13intrusive_ptrINS_2io11IFileSystemEEE
; demangled: glitch::scene::CColladaBinaryFileLoader::CColladaBinaryFileLoader(glitch::scene::CSceneManager*, boost::intrusive_ptr<glitch::io::IFileSystem> const&)
; decoder-mode: arm
006b9310  40 30 9f e5                                      ldr r3, [pc, #0x40]
006b9314  40 c0 9f e5                                      ldr ip, [pc, #0x40]
006b9318  04 40 2d e5                                      str r4, [sp, #-4]!
006b931c  03 30 8f e0                                      add r3, pc, r3
006b9320  0c c0 93 e7                                      ldr ip, [r3, ip]
006b9324  01 40 a0 e3                                      mov r4, #1
006b9328  04 40 80 e5                                      str r4, [r0, #4]
006b932c  08 c0 8c e2                                      add ip, ip, #8
006b9330  00 c0 80 e5                                      str ip, [r0]
006b9334  08 10 80 e5                                      str r1, [r0, #8]
006b9338  00 20 92 e5                                      ldr r2, [r2]
006b933c  00 00 52 e3                                      cmp r2, #0
006b9340  0c 20 80 e5                                      str r2, [r0, #0xc]
006b9344  04 30 92 15                                      ldrne r3, [r2, #4]
006b9348  04 30 83 10                                      addne r3, r3, r4
006b934c  04 30 82 15                                      strne r3, [r2, #4]
006b9350  10 00 bd e8                                      ldm sp!, {r4}
006b9354  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006b9358  74 b7 2d 00 80 15 00 00                          .byte 0x74, 0xb7, 0x2d, 0x00, 0x80, 0x15, 0x00, 0x00

; FUNCTION 0x006b9360, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CColladaBinaryFileLoader
; alias: _ZN6glitch5scene24CColladaBinaryFileLoaderC1EPNS0_13CSceneManagerERKN5boost13intrusive_ptrINS_2io11IFileSystemEEE
; demangled: glitch::scene::CColladaBinaryFileLoader::CColladaBinaryFileLoader(glitch::scene::CSceneManager*, boost::intrusive_ptr<glitch::io::IFileSystem> const&)
; decoder-mode: arm
006b9360  40 30 9f e5                                      ldr r3, [pc, #0x40]
006b9364  40 c0 9f e5                                      ldr ip, [pc, #0x40]
006b9368  04 40 2d e5                                      str r4, [sp, #-4]!
006b936c  03 30 8f e0                                      add r3, pc, r3
006b9370  0c c0 93 e7                                      ldr ip, [r3, ip]
006b9374  01 40 a0 e3                                      mov r4, #1
006b9378  04 40 80 e5                                      str r4, [r0, #4]
006b937c  08 c0 8c e2                                      add ip, ip, #8
006b9380  00 c0 80 e5                                      str ip, [r0]
006b9384  08 10 80 e5                                      str r1, [r0, #8]
006b9388  00 20 92 e5                                      ldr r2, [r2]
006b938c  00 00 52 e3                                      cmp r2, #0
006b9390  0c 20 80 e5                                      str r2, [r0, #0xc]
006b9394  04 30 92 15                                      ldrne r3, [r2, #4]
006b9398  04 30 83 10                                      addne r3, r3, r4
006b939c  04 30 82 15                                      strne r3, [r2, #4]
006b93a0  10 00 bd e8                                      ldm sp!, {r4}
006b93a4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006b93a8  24 b7 2d 00 80 15 00 00                          .byte 0x24, 0xb7, 0x2d, 0x00, 0x80, 0x15, 0x00, 0x00

; FUNCTION 0x006b93b0, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CColladaBinaryFileLoader
; alias: _ZN6glitch5scene24CColladaBinaryFileLoaderD2Ev
; demangled: glitch::scene::CColladaBinaryFileLoader::~CColladaBinaryFileLoader()
; decoder-mode: arm
006b93b0  10 40 2d e9                                      push {r4, lr}
006b93b4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006b93b8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006b93bc  00 40 a0 e1                                      mov r4, r0
006b93c0  03 30 8f e0                                      add r3, pc, r3
006b93c4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006b93c8  02 20 93 e7                                      ldr r2, [r3, r2]
006b93cc  00 00 50 e3                                      cmp r0, #0
006b93d0  08 20 82 e2                                      add r2, r2, #8
006b93d4  00 20 84 e5                                      str r2, [r4]
006b93d8  00 00 00 0a                                      beq #0x6b93e0
006b93dc  68 90 f1 eb                                      bl #0x31d584
006b93e0  04 00 a0 e1                                      mov r0, r4
006b93e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b93e8  d0 b6 2d 00 80 15 00 00                          .byte 0xd0, 0xb6, 0x2d, 0x00, 0x80, 0x15, 0x00, 0x00

; FUNCTION 0x006b93f0, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CColladaBinaryFileLoader
; alias: _ZN6glitch5scene24CColladaBinaryFileLoaderD1Ev
; demangled: glitch::scene::CColladaBinaryFileLoader::~CColladaBinaryFileLoader()
; decoder-mode: arm
006b93f0  10 40 2d e9                                      push {r4, lr}
006b93f4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006b93f8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006b93fc  00 40 a0 e1                                      mov r4, r0
006b9400  03 30 8f e0                                      add r3, pc, r3
006b9404  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006b9408  02 20 93 e7                                      ldr r2, [r3, r2]
006b940c  00 00 50 e3                                      cmp r0, #0
006b9410  08 20 82 e2                                      add r2, r2, #8
006b9414  00 20 84 e5                                      str r2, [r4]
006b9418  00 00 00 0a                                      beq #0x6b9420
006b941c  58 90 f1 eb                                      bl #0x31d584
006b9420  04 00 a0 e1                                      mov r0, r4
006b9424  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b9428  90 b6 2d 00 80 15 00 00                          .byte 0x90, 0xb6, 0x2d, 0x00, 0x80, 0x15, 0x00, 0x00

; FUNCTION 0x006b9430, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CColladaBinaryFileLoader
; alias: _ZN6glitch5scene24CColladaBinaryFileLoader11createSceneEPNS_2io9IReadFileE
; demangled: glitch::scene::CColladaBinaryFileLoader::createScene(glitch::io::IReadFile*)
; decoder-mode: arm
006b9430  00 00 a0 e3                                      mov r0, #0
006b9434  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b9458, declared_size=224, range_size=224, mode=arm
; class-group: glitch::scene::CColladaBinaryFileLoader
; alias: _ZN6glitch5scene24CColladaBinaryFileLoader10createMeshEPNS_2io9IReadFileE
; demangled: glitch::scene::CColladaBinaryFileLoader::createMesh(glitch::io::IReadFile*)
; decoder-mode: arm
006b9458  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006b945c  c8 40 9f e5                                      ldr r4, [pc, #0xc8]
006b9460  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
006b9464  00 c0 a0 e3                                      mov ip, #0
006b9468  04 40 8f e0                                      add r4, pc, r4
006b946c  03 30 94 e7                                      ldr r3, [r4, r3]
006b9470  14 d0 4d e2                                      sub sp, sp, #0x14
006b9474  01 60 a0 e1                                      mov r6, r1
006b9478  00 30 93 e5                                      ldr r3, [r3]
006b947c  02 10 a0 e1                                      mov r1, r2
006b9480  00 50 a0 e1                                      mov r5, r0
006b9484  0c 20 a0 e1                                      mov r2, ip
006b9488  03 00 a0 e1                                      mov r0, r3
006b948c  0c 30 a0 e1                                      mov r3, ip
006b9490  00 c0 8d e5                                      str ip, [sp]
006b9494  3c 85 fe eb                                      bl #0x65a98c
006b9498  94 30 9f e5                                      ldr r3, [pc, #0x94]
006b949c  00 00 50 e3                                      cmp r0, #0
006b94a0  08 00 8d e5                                      str r0, [sp, #8]
006b94a4  03 30 94 e7                                      ldr r3, [r4, r3]
006b94a8  0c 30 8d e5                                      str r3, [sp, #0xc]
006b94ac  03 00 00 0a                                      beq #0x6b94c0
006b94b0  04 30 90 e5                                      ldr r3, [r0, #4]
006b94b4  00 00 53 e3                                      cmp r3, #0
006b94b8  01 30 83 12                                      addne r3, r3, #1
006b94bc  04 30 80 15                                      strne r3, [r0, #4]
006b94c0  08 30 96 e5                                      ldr r3, [r6, #8]
006b94c4  08 40 8d e2                                      add r4, sp, #8
006b94c8  04 00 a0 e1                                      mov r0, r4
006b94cc  14 10 93 e5                                      ldr r1, [r3, #0x14]
006b94d0  44 89 fd eb                                      bl #0x61b9e8
006b94d4  00 70 a0 e1                                      mov r7, r0
006b94d8  04 00 a0 e1                                      mov r0, r4
006b94dc  9c 59 fd eb                                      bl #0x60fb54
006b94e0  00 30 97 e5                                      ldr r3, [r7]
006b94e4  00 10 a0 e1                                      mov r1, r0
006b94e8  07 00 a0 e1                                      mov r0, r7
006b94ec  0f e0 a0 e1                                      mov lr, pc
006b94f0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006b94f4  08 30 96 e5                                      ldr r3, [r6, #8]
006b94f8  07 10 a0 e1                                      mov r1, r7
006b94fc  04 30 93 e5                                      ldr r3, [r3, #4]
006b9500  03 00 a0 e1                                      mov r0, r3
006b9504  00 30 93 e5                                      ldr r3, [r3]
006b9508  0f e0 a0 e1                                      mov lr, pc
006b950c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
006b9510  00 30 a0 e3                                      mov r3, #0
006b9514  00 30 85 e5                                      str r3, [r5]
006b9518  04 00 a0 e1                                      mov r0, r4
006b951c  d4 7f fd eb                                      bl #0x619474
006b9520  05 00 a0 e1                                      mov r0, r5
006b9524  14 d0 8d e2                                      add sp, sp, #0x14
006b9528  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
006b952c  28 b6 2d 00 48 44 00 00 10 47 00 00              .byte 0x28, 0xb6, 0x2d, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x006b9538, declared_size=36, range_size=36, mode=arm
; class-group: glitch::scene::CColladaBinaryFileLoader
; alias: _ZNK6glitch5scene24CColladaBinaryFileLoader24isALoadableFileExtensionEPKc
; demangled: glitch::scene::CColladaBinaryFileLoader::isALoadableFileExtension(char const*) const
; decoder-mode: arm
006b9538  01 00 a0 e1                                      mov r0, r1
006b953c  14 10 9f e5                                      ldr r1, [pc, #0x14]
006b9540  10 40 2d e9                                      push {r4, lr}
006b9544  01 10 8f e0                                      add r1, pc, r1
006b9548  a1 55 f1 eb                                      bl #0x30ebd4
006b954c  00 00 50 e2                                      subs r0, r0, #0
006b9550  01 00 a0 13                                      movne r0, #1
006b9554  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b9558  a4 03 21 00                                      .byte 0xa4, 0x03, 0x21, 0x00

; FUNCTION 0x006b955c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CColladaBinaryFileLoader
; alias: _ZN6glitch5scene24CColladaBinaryFileLoaderD0Ev
; demangled: glitch::scene::CColladaBinaryFileLoader::~CColladaBinaryFileLoader()
; decoder-mode: arm
006b955c  10 40 2d e9                                      push {r4, lr}
006b9560  00 40 a0 e1                                      mov r4, r0
006b9564  a1 ff ff eb                                      bl #0x6b93f0
006b9568  04 00 a0 e1                                      mov r0, r4
006b956c  4f 53 f1 eb                                      bl #0x30e2b0
006b9570  04 00 a0 e1                                      mov r0, r4
006b9574  10 80 bd e8                                      pop {r4, pc}
