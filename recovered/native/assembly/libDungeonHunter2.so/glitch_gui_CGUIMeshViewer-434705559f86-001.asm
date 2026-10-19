; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005462c4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZN6glitch3gui14CGUIMeshViewer7setMeshERKN5boost13intrusive_ptrINS_5scene13IAnimatedMeshEEE
; demangled: glitch::gui::CGUIMeshViewer::setMesh(boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&)
; decoder-mode: arm
005462c4  00 30 91 e5                                      ldr r3, [r1]
005462c8  00 00 53 e3                                      cmp r3, #0
005462cc  04 20 93 15                                      ldrne r2, [r3, #4]
005462d0  01 20 82 12                                      addne r2, r2, #1
005462d4  04 20 83 15                                      strne r2, [r3, #4]
005462d8  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
005462dc  5c 31 80 e5                                      str r3, [r0, #0x15c]
005462e0  00 00 52 e3                                      cmp r2, #0
005462e4  1e ff 2f 01                                      bxeq lr
005462e8  02 00 a0 e1                                      mov r0, r2
005462ec  a4 5c f7 ea                                      b #0x31d584

; FUNCTION 0x005462f0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZNK6glitch3gui14CGUIMeshViewer7getMeshEv
; demangled: glitch::gui::CGUIMeshViewer::getMesh() const
; decoder-mode: arm
005462f0  5c 31 91 e5                                      ldr r3, [r1, #0x15c]
005462f4  00 00 53 e3                                      cmp r3, #0
005462f8  00 30 80 e5                                      str r3, [r0]
005462fc  04 20 93 15                                      ldrne r2, [r3, #4]
00546300  01 20 82 12                                      addne r2, r2, #1
00546304  04 20 83 15                                      strne r2, [r3, #4]
00546308  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054630c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZNK6glitch3gui14CGUIMeshViewer11getMaterialEv
; demangled: glitch::gui::CGUIMeshViewer::getMaterial() const
; decoder-mode: arm
0054630c  58 31 91 e5                                      ldr r3, [r1, #0x158]
00546310  00 00 53 e3                                      cmp r3, #0
00546314  00 30 80 e5                                      str r3, [r0]
00546318  00 20 93 15                                      ldrne r2, [r3]
0054631c  01 20 82 12                                      addne r2, r2, #1
00546320  00 20 83 15                                      strne r2, [r3]
00546324  1e ff 2f e1                                      bx lr

; FUNCTION 0x00546348, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZN6glitch3gui14CGUIMeshViewer11setMaterialERKN5boost13intrusive_ptrINS_5video9CMaterialEEE
; demangled: glitch::gui::CGUIMeshViewer::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
00546348  04 e0 2d e5                                      str lr, [sp, #-4]!
0054634c  00 30 91 e5                                      ldr r3, [r1]
00546350  0c d0 4d e2                                      sub sp, sp, #0xc
00546354  04 30 8d e5                                      str r3, [sp, #4]
00546358  00 00 53 e3                                      cmp r3, #0
0054635c  00 20 93 15                                      ldrne r2, [r3]
00546360  01 20 82 12                                      addne r2, r2, #1
00546364  00 20 83 15                                      strne r2, [r3]
00546368  58 11 90 e5                                      ldr r1, [r0, #0x158]
0054636c  04 30 9d 15                                      ldrne r3, [sp, #4]
00546370  08 20 8d e2                                      add r2, sp, #8
00546374  58 31 80 e5                                      str r3, [r0, #0x158]
00546378  04 10 22 e5                                      str r1, [r2, #-4]!
0054637c  02 00 a0 e1                                      mov r0, r2
00546380  18 2a f7 eb                                      bl #0x310be8
00546384  0c d0 8d e2                                      add sp, sp, #0xc
00546388  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00546650, declared_size=216, range_size=216, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZN6glitch3gui14CGUIMeshViewerC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIMeshViewer::CGUIMeshViewer(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00546650  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00546654  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
00546658  bc c0 9f e5                                      ldr ip, [pc, #0xbc]
0054665c  bc e0 9f e5                                      ldr lr, [pc, #0xbc]
00546660  05 50 8f e0                                      add r5, pc, r5
00546664  0c c0 95 e7                                      ldr ip, [r5, ip]
00546668  0e e0 95 e7                                      ldr lr, [r5, lr]
0054666c  01 70 a0 e3                                      mov r7, #1
00546670  24 60 9c e5                                      ldr r6, [ip, #0x24]
00546674  08 e0 8e e2                                      add lr, lr, #8
00546678  68 71 80 e5                                      str r7, [r0, #0x168]
0054667c  64 e1 80 e5                                      str lr, [r0, #0x164]
00546680  60 61 80 e5                                      str r6, [r0, #0x160]
00546684  18 d0 4d e2                                      sub sp, sp, #0x18
00546688  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
0054668c  28 80 9c e5                                      ldr r8, [ip, #0x28]
00546690  38 60 9d e5                                      ldr r6, [sp, #0x38]
00546694  16 7e 80 e2                                      add r7, r0, #0x160
00546698  0e 80 87 e7                                      str r8, [r7, lr]
0054669c  0c a0 96 e5                                      ldr sl, [r6, #0xc]
005466a0  00 e0 96 e5                                      ldr lr, [r6]
005466a4  00 03 96 e9                                      ldmib r6, {r8, sb}
005466a8  01 70 a0 e1                                      mov r7, r1
005466ac  02 60 a0 e1                                      mov r6, r2
005466b0  00 30 8d e5                                      str r3, [sp]
005466b4  04 10 8c e2                                      add r1, ip, #4
005466b8  07 20 a0 e1                                      mov r2, r7
005466bc  06 30 a0 e1                                      mov r3, r6
005466c0  08 c0 8d e2                                      add ip, sp, #8
005466c4  00 40 a0 e1                                      mov r4, r0
005466c8  08 e0 8d e5                                      str lr, [sp, #8]
005466cc  0c 80 8d e5                                      str r8, [sp, #0xc]
005466d0  10 90 8d e5                                      str sb, [sp, #0x10]
005466d4  14 a0 8d e5                                      str sl, [sp, #0x14]
005466d8  04 c0 8d e5                                      str ip, [sp, #4]
005466dc  2b ff ff eb                                      bl #0x546390
005466e0  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
005466e4  00 20 a0 e3                                      mov r2, #0
005466e8  5c 21 84 e5                                      str r2, [r4, #0x15c]
005466ec  03 30 95 e7                                      ldr r3, [r5, r3]
005466f0  58 21 84 e5                                      str r2, [r4, #0x158]
005466f4  04 00 a0 e1                                      mov r0, r4
005466f8  d4 20 83 e2                                      add r2, r3, #0xd4
005466fc  10 10 83 e2                                      add r1, r3, #0x10
00546700  b4 30 83 e2                                      add r3, r3, #0xb4
00546704  00 10 84 e5                                      str r1, [r4]
00546708  60 31 84 e5                                      str r3, [r4, #0x160]
0054670c  64 21 84 e5                                      str r2, [r4, #0x164]
00546710  18 d0 8d e2                                      add sp, sp, #0x18
00546714  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00546718  30 e4 44 00 80 25 00 00 44 2b 00 00 e0 48 00 00  .byte 0x30, 0xe4, 0x44, 0x00, 0x80, 0x25, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xe0, 0x48, 0x00, 0x00

; FUNCTION 0x00546728, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZN6glitch3gui14CGUIMeshViewerC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIMeshViewer::CGUIMeshViewer(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00546728  70 40 2d e9                                      push {r4, r5, r6, lr}
0054672c  18 d0 4d e2                                      sub sp, sp, #0x18
00546730  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00546734  01 50 a0 e1                                      mov r5, r1
00546738  04 10 81 e2                                      add r1, r1, #4
0054673c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00546740  00 60 9c e5                                      ldr r6, [ip]
00546744  10 10 9c e9                                      ldmib ip, {r4, ip}
00546748  08 60 8d e5                                      str r6, [sp, #8]
0054674c  0c 40 8d e5                                      str r4, [sp, #0xc]
00546750  10 c0 8d e5                                      str ip, [sp, #0x10]
00546754  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00546758  00 40 a0 e1                                      mov r4, r0
0054675c  14 e0 8d e5                                      str lr, [sp, #0x14]
00546760  00 c0 8d e5                                      str ip, [sp]
00546764  08 c0 8d e2                                      add ip, sp, #8
00546768  04 c0 8d e5                                      str ip, [sp, #4]
0054676c  07 ff ff eb                                      bl #0x546390
00546770  00 20 95 e5                                      ldr r2, [r5]
00546774  00 30 a0 e3                                      mov r3, #0
00546778  04 00 a0 e1                                      mov r0, r4
0054677c  00 20 84 e5                                      str r2, [r4]
00546780  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00546784  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00546788  02 10 84 e7                                      str r1, [r4, r2]
0054678c  00 20 94 e5                                      ldr r2, [r4]
00546790  20 10 95 e5                                      ldr r1, [r5, #0x20]
00546794  10 20 12 e5                                      ldr r2, [r2, #-0x10]
00546798  02 10 84 e7                                      str r1, [r4, r2]
0054679c  5c 31 84 e5                                      str r3, [r4, #0x15c]
005467a0  58 31 84 e5                                      str r3, [r4, #0x158]
005467a4  18 d0 8d e2                                      add sp, sp, #0x18
005467a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005467ac, declared_size=44, range_size=44, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZN6glitch3gui14CGUIMeshViewer7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIMeshViewer::onEvent(glitch::SEvent const&)
; decoder-mode: arm
005467ac  10 40 2d e9                                      push {r4, lr}
005467b0  24 30 90 e5                                      ldr r3, [r0, #0x24]
005467b4  00 00 53 e3                                      cmp r3, #0
005467b8  04 00 00 0a                                      beq #0x5467d0
005467bc  03 00 a0 e1                                      mov r0, r3
005467c0  00 30 93 e5                                      ldr r3, [r3]
005467c4  0f e0 a0 e1                                      mov lr, pc
005467c8  08 f0 93 e5                                      ldr pc, [r3, #8]
005467cc  10 80 bd e8                                      pop {r4, pc}
005467d0  03 00 a0 e1                                      mov r0, r3
005467d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0054684c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZN6glitch3gui14CGUIMeshViewerD1Ev
; demangled: glitch::gui::CGUIMeshViewer::~CGUIMeshViewer()
; decoder-mode: arm
0054684c  70 40 2d e9                                      push {r4, r5, r6, lr}
00546850  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
00546854  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00546858  00 40 a0 e1                                      mov r4, r0
0054685c  05 50 8f e0                                      add r5, pc, r5
00546860  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
00546864  03 30 95 e7                                      ldr r3, [r5, r3]
00546868  00 00 50 e3                                      cmp r0, #0
0054686c  d4 20 83 e2                                      add r2, r3, #0xd4
00546870  10 10 83 e2                                      add r1, r3, #0x10
00546874  b4 30 83 e2                                      add r3, r3, #0xb4
00546878  00 10 84 e5                                      str r1, [r4]
0054687c  60 31 84 e5                                      str r3, [r4, #0x160]
00546880  64 21 84 e5                                      str r2, [r4, #0x164]
00546884  00 00 00 0a                                      beq #0x54688c
00546888  3d 5b f7 eb                                      bl #0x31d584
0054688c  56 0f 84 e2                                      add r0, r4, #0x158
00546890  d4 28 f7 eb                                      bl #0x310be8
00546894  40 30 9f e5                                      ldr r3, [pc, #0x40]
00546898  04 00 a0 e1                                      mov r0, r4
0054689c  03 10 95 e7                                      ldr r1, [r5, r3]
005468a0  04 30 91 e5                                      ldr r3, [r1, #4]
005468a4  14 c0 91 e5                                      ldr ip, [r1, #0x14]
005468a8  18 20 91 e5                                      ldr r2, [r1, #0x18]
005468ac  00 30 84 e5                                      str r3, [r4]
005468b0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005468b4  08 10 81 e2                                      add r1, r1, #8
005468b8  03 c0 84 e7                                      str ip, [r4, r3]
005468bc  00 30 94 e5                                      ldr r3, [r4]
005468c0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
005468c4  03 20 84 e7                                      str r2, [r4, r3]
005468c8  d4 c9 ff eb                                      bl #0x539020
005468cc  04 00 a0 e1                                      mov r0, r4
005468d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005468d4  34 e2 44 00 e0 48 00 00 80 25 00 00              .byte 0x34, 0xe2, 0x44, 0x00, 0xe0, 0x48, 0x00, 0x00, 0x80, 0x25, 0x00, 0x00

; FUNCTION 0x005468e0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZN6glitch3gui14CGUIMeshViewerD0Ev
; demangled: glitch::gui::CGUIMeshViewer::~CGUIMeshViewer()
; decoder-mode: arm
005468e0  10 40 2d e9                                      push {r4, lr}
005468e4  00 40 a0 e1                                      mov r4, r0
005468e8  d7 ff ff eb                                      bl #0x54684c
005468ec  04 00 a0 e1                                      mov r0, r4
005468f0  6e 1e f7 eb                                      bl #0x30e2b0
005468f4  04 00 a0 e1                                      mov r0, r4
005468f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005468fc, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZN6glitch3gui14CGUIMeshViewerD2Ev
; demangled: glitch::gui::CGUIMeshViewer::~CGUIMeshViewer()
; decoder-mode: arm
005468fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00546900  00 30 91 e5                                      ldr r3, [r1]
00546904  00 40 a0 e1                                      mov r4, r0
00546908  01 50 a0 e1                                      mov r5, r1
0054690c  00 30 80 e5                                      str r3, [r0]
00546910  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00546914  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
00546918  03 20 80 e7                                      str r2, [r0, r3]
0054691c  00 30 90 e5                                      ldr r3, [r0]
00546920  20 20 91 e5                                      ldr r2, [r1, #0x20]
00546924  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00546928  03 20 80 e7                                      str r2, [r0, r3]
0054692c  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
00546930  00 00 50 e3                                      cmp r0, #0
00546934  00 00 00 0a                                      beq #0x54693c
00546938  11 5b f7 eb                                      bl #0x31d584
0054693c  56 0f 84 e2                                      add r0, r4, #0x158
00546940  a8 28 f7 eb                                      bl #0x310be8
00546944  04 30 95 e5                                      ldr r3, [r5, #4]
00546948  04 50 85 e2                                      add r5, r5, #4
0054694c  04 10 85 e2                                      add r1, r5, #4
00546950  00 30 84 e5                                      str r3, [r4]
00546954  10 20 95 e5                                      ldr r2, [r5, #0x10]
00546958  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054695c  04 00 a0 e1                                      mov r0, r4
00546960  03 20 84 e7                                      str r2, [r4, r3]
00546964  00 30 94 e5                                      ldr r3, [r4]
00546968  14 20 95 e5                                      ldr r2, [r5, #0x14]
0054696c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00546970  03 20 84 e7                                      str r2, [r4, r3]
00546974  a9 c9 ff eb                                      bl #0x539020
00546978  04 00 a0 e1                                      mov r0, r4
0054697c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005469fc, declared_size=1248, range_size=1248, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZN6glitch3gui14CGUIMeshViewer4drawEv
; demangled: glitch::gui::CGUIMeshViewer::draw()
; decoder-mode: arm
005469fc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00546a00  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00546a04  a4 d0 4d e2                                      sub sp, sp, #0xa4
00546a08  00 40 a0 e1                                      mov r4, r0
00546a0c  00 00 53 e3                                      cmp r3, #0
00546a10  01 00 00 1a                                      bne #0x546a1c
00546a14  a4 d0 8d e2                                      add sp, sp, #0xa4
00546a18  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00546a1c  50 31 90 e5                                      ldr r3, [r0, #0x150]
00546a20  03 00 a0 e1                                      mov r0, r3
00546a24  00 30 93 e5                                      ldr r3, [r3]
00546a28  0f e0 a0 e1                                      mov lr, pc
00546a2c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00546a30  50 31 94 e5                                      ldr r3, [r4, #0x150]
00546a34  00 60 a0 e1                                      mov r6, r0
00546a38  03 00 a0 e1                                      mov r0, r3
00546a3c  00 30 93 e5                                      ldr r3, [r3]
00546a40  0f e0 a0 e1                                      mov lr, pc
00546a44  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00546a48  00 50 a0 e1                                      mov r5, r0
00546a4c  40 00 94 e5                                      ldr r0, [r4, #0x40]
00546a50  38 c0 94 e5                                      ldr ip, [r4, #0x38]
00546a54  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00546a58  50 e0 94 e5                                      ldr lr, [r4, #0x50]
00546a5c  44 20 94 e5                                      ldr r2, [r4, #0x44]
00546a60  01 10 40 e2                                      sub r1, r0, #1
00546a64  01 80 8c e2                                      add r8, ip, #1
00546a68  0e 00 51 e1                                      cmp r1, lr
00546a6c  01 20 42 e2                                      sub r2, r2, #1
00546a70  01 70 83 e2                                      add r7, r3, #1
00546a74  74 80 8d e5                                      str r8, [sp, #0x74]
00546a78  78 70 8d e5                                      str r7, [sp, #0x78]
00546a7c  7c 10 8d e5                                      str r1, [sp, #0x7c]
00546a80  80 20 8d e5                                      str r2, [sp, #0x80]
00546a84  7c e0 8d c5                                      strgt lr, [sp, #0x7c]
00546a88  54 10 94 e5                                      ldr r1, [r4, #0x54]
00546a8c  78 e0 9d e5                                      ldr lr, [sp, #0x78]
00546a90  48 70 84 e2                                      add r7, r4, #0x48
00546a94  01 00 52 e1                                      cmp r2, r1
00546a98  80 10 8d c5                                      strgt r1, [sp, #0x80]
00546a9c  48 20 94 e5                                      ldr r2, [r4, #0x48]
00546aa0  74 10 9d e5                                      ldr r1, [sp, #0x74]
00546aa4  64 80 8d e2                                      add r8, sp, #0x64
00546aa8  01 00 52 e1                                      cmp r2, r1
00546aac  74 20 8d c5                                      strgt r2, [sp, #0x74]
00546ab0  02 10 a0 c1                                      movgt r1, r2
00546ab4  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00546ab8  64 c0 8d e5                                      str ip, [sp, #0x64]
00546abc  6c 00 8d e5                                      str r0, [sp, #0x6c]
00546ac0  0e 00 52 e1                                      cmp r2, lr
00546ac4  0e 20 a0 d1                                      movle r2, lr
00546ac8  80 e0 9d e5                                      ldr lr, [sp, #0x80]
00546acc  78 20 8d c5                                      strgt r2, [sp, #0x78]
00546ad0  68 30 8d e5                                      str r3, [sp, #0x68]
00546ad4  0e 00 52 e1                                      cmp r2, lr
00546ad8  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00546adc  78 e0 8d c5                                      strgt lr, [sp, #0x78]
00546ae0  06 00 a0 e1                                      mov r0, r6
00546ae4  02 00 51 e1                                      cmp r1, r2
00546ae8  74 20 8d c5                                      strgt r2, [sp, #0x74]
00546aec  01 20 83 e2                                      add r2, r3, #1
00546af0  70 20 8d e5                                      str r2, [sp, #0x70]
00546af4  00 30 96 e5                                      ldr r3, [r6]
00546af8  01 10 a0 e3                                      mov r1, #1
00546afc  64 a0 93 e5                                      ldr sl, [r3, #0x64]
00546b00  0f e0 a0 e1                                      mov lr, pc
00546b04  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00546b08  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00546b0c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00546b10  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00546b14  09 10 cd e5                                      strb r1, [sp, #9]
00546b18  0a 20 cd e5                                      strb r2, [sp, #0xa]
00546b1c  08 00 cd e5                                      strb r0, [sp, #8]
00546b20  0b 30 cd e5                                      strb r3, [sp, #0xb]
00546b24  08 30 9d e5                                      ldr r3, [sp, #8]
00546b28  a0 20 8d e2                                      add r2, sp, #0xa0
00546b2c  06 00 a0 e1                                      mov r0, r6
00546b30  04 30 22 e5                                      str r3, [r2, #-4]!
00546b34  04 10 a0 e1                                      mov r1, r4
00546b38  08 30 a0 e1                                      mov r3, r8
00546b3c  00 70 8d e5                                      str r7, [sp]
00546b40  3a ff 2f e1                                      blx sl
00546b44  64 30 9d e5                                      ldr r3, [sp, #0x64]
00546b48  44 20 94 e5                                      ldr r2, [r4, #0x44]
00546b4c  01 10 a0 e3                                      mov r1, #1
00546b50  01 30 83 e0                                      add r3, r3, r1
00546b54  70 20 8d e5                                      str r2, [sp, #0x70]
00546b58  6c 30 8d e5                                      str r3, [sp, #0x6c]
00546b5c  00 30 96 e5                                      ldr r3, [r6]
00546b60  06 00 a0 e1                                      mov r0, r6
00546b64  64 a0 93 e5                                      ldr sl, [r3, #0x64]
00546b68  0f e0 a0 e1                                      mov lr, pc
00546b6c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00546b70  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00546b74  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00546b78  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00546b7c  09 10 cd e5                                      strb r1, [sp, #9]
00546b80  0a 20 cd e5                                      strb r2, [sp, #0xa]
00546b84  08 00 cd e5                                      strb r0, [sp, #8]
00546b88  0b 30 cd e5                                      strb r3, [sp, #0xb]
00546b8c  08 30 9d e5                                      ldr r3, [sp, #8]
00546b90  a0 20 8d e2                                      add r2, sp, #0xa0
00546b94  00 70 8d e5                                      str r7, [sp]
00546b98  06 00 a0 e1                                      mov r0, r6
00546b9c  08 30 22 e5                                      str r3, [r2, #-8]!
00546ba0  04 10 a0 e1                                      mov r1, r4
00546ba4  08 30 a0 e1                                      mov r3, r8
00546ba8  3a ff 2f e1                                      blx sl
00546bac  40 30 94 e5                                      ldr r3, [r4, #0x40]
00546bb0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00546bb4  44 10 94 e5                                      ldr r1, [r4, #0x44]
00546bb8  01 20 43 e2                                      sub r2, r3, #1
00546bbc  68 00 8d e5                                      str r0, [sp, #0x68]
00546bc0  70 10 8d e5                                      str r1, [sp, #0x70]
00546bc4  64 20 8d e5                                      str r2, [sp, #0x64]
00546bc8  6c 30 8d e5                                      str r3, [sp, #0x6c]
00546bcc  00 30 96 e5                                      ldr r3, [r6]
00546bd0  03 10 a0 e3                                      mov r1, #3
00546bd4  06 00 a0 e1                                      mov r0, r6
00546bd8  64 a0 93 e5                                      ldr sl, [r3, #0x64]
00546bdc  0f e0 a0 e1                                      mov lr, pc
00546be0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00546be4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00546be8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00546bec  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00546bf0  09 10 cd e5                                      strb r1, [sp, #9]
00546bf4  0a 20 cd e5                                      strb r2, [sp, #0xa]
00546bf8  08 00 cd e5                                      strb r0, [sp, #8]
00546bfc  0b 30 cd e5                                      strb r3, [sp, #0xb]
00546c00  08 30 9d e5                                      ldr r3, [sp, #8]
00546c04  a0 20 8d e2                                      add r2, sp, #0xa0
00546c08  00 70 8d e5                                      str r7, [sp]
00546c0c  06 00 a0 e1                                      mov r0, r6
00546c10  0c 30 22 e5                                      str r3, [r2, #-0xc]!
00546c14  04 10 a0 e1                                      mov r1, r4
00546c18  08 30 a0 e1                                      mov r3, r8
00546c1c  3a ff 2f e1                                      blx sl
00546c20  44 30 94 e5                                      ldr r3, [r4, #0x44]
00546c24  38 00 94 e5                                      ldr r0, [r4, #0x38]
00546c28  40 10 94 e5                                      ldr r1, [r4, #0x40]
00546c2c  01 20 43 e2                                      sub r2, r3, #1
00546c30  64 00 8d e5                                      str r0, [sp, #0x64]
00546c34  6c 10 8d e5                                      str r1, [sp, #0x6c]
00546c38  68 20 8d e5                                      str r2, [sp, #0x68]
00546c3c  70 30 8d e5                                      str r3, [sp, #0x70]
00546c40  00 30 96 e5                                      ldr r3, [r6]
00546c44  03 10 a0 e3                                      mov r1, #3
00546c48  06 00 a0 e1                                      mov r0, r6
00546c4c  64 a0 93 e5                                      ldr sl, [r3, #0x64]
00546c50  0f e0 a0 e1                                      mov lr, pc
00546c54  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00546c58  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00546c5c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00546c60  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00546c64  09 10 cd e5                                      strb r1, [sp, #9]
00546c68  0a 20 cd e5                                      strb r2, [sp, #0xa]
00546c6c  08 00 cd e5                                      strb r0, [sp, #8]
00546c70  0b 30 cd e5                                      strb r3, [sp, #0xb]
00546c74  08 30 9d e5                                      ldr r3, [sp, #8]
00546c78  a0 20 8d e2                                      add r2, sp, #0xa0
00546c7c  00 70 8d e5                                      str r7, [sp]
00546c80  06 00 a0 e1                                      mov r0, r6
00546c84  10 30 22 e5                                      str r3, [r2, #-0x10]!
00546c88  04 10 a0 e1                                      mov r1, r4
00546c8c  08 30 a0 e1                                      mov r3, r8
00546c90  3a ff 2f e1                                      blx sl
00546c94  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00546c98  00 00 53 e3                                      cmp r3, #0
00546c9c  71 00 00 0a                                      beq #0x546e68
00546ca0  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
00546ca4  00 80 a0 e3                                      mov r8, #0
00546ca8  10 70 8d e2                                      add r7, sp, #0x10
00546cac  04 30 13 e5                                      ldr r3, [r3, #-4]
00546cb0  74 10 8d e2                                      add r1, sp, #0x74
00546cb4  fe 65 a0 e3                                      mov r6, #0x3f800000
00546cb8  14 20 93 e5                                      ldr r2, [r3, #0x14]
00546cbc  56 af 84 e2                                      add sl, r4, #0x158
00546cc0  54 20 8d e5                                      str r2, [sp, #0x54]
00546cc4  18 20 93 e5                                      ldr r2, [r3, #0x18]
00546cc8  58 20 8d e5                                      str r2, [sp, #0x58]
00546ccc  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00546cd0  5c 20 8d e5                                      str r2, [sp, #0x5c]
00546cd4  20 30 93 e5                                      ldr r3, [r3, #0x20]
00546cd8  60 30 8d e5                                      str r3, [sp, #0x60]
00546cdc  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
00546ce0  04 30 13 e5                                      ldr r3, [r3, #-4]
00546ce4  03 00 a0 e1                                      mov r0, r3
00546ce8  00 30 93 e5                                      ldr r3, [r3]
00546cec  0f e0 a0 e1                                      mov lr, pc
00546cf0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00546cf4  08 10 a0 e1                                      mov r1, r8
00546cf8  40 20 a0 e3                                      mov r2, #0x40
00546cfc  07 00 a0 e1                                      mov r0, r7
00546d00  d6 1d f7 eb                                      bl #0x30e460
00546d04  08 10 a0 e1                                      mov r1, r8
00546d08  40 20 a0 e3                                      mov r2, #0x40
00546d0c  07 00 a0 e1                                      mov r0, r7
00546d10  d2 1d f7 eb                                      bl #0x30e460
00546d14  4c 60 8d e5                                      str r6, [sp, #0x4c]
00546d18  50 80 cd e5                                      strb r8, [sp, #0x50]
00546d1c  10 60 8d e5                                      str r6, [sp, #0x10]
00546d20  24 60 8d e5                                      str r6, [sp, #0x24]
00546d24  38 60 8d e5                                      str r6, [sp, #0x38]
00546d28  07 20 a0 e1                                      mov r2, r7
00546d2c  05 00 a0 e1                                      mov r0, r5
00546d30  00 30 95 e5                                      ldr r3, [r5]
00546d34  01 10 a0 e3                                      mov r1, #1
00546d38  0f e0 a0 e1                                      mov lr, pc
00546d3c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00546d40  58 01 94 e5                                      ldr r0, [r4, #0x158]
00546d44  08 00 50 e1                                      cmp r0, r8
00546d48  ff 20 a0 03                                      moveq r2, #0xff
00546d4c  01 00 00 0a                                      beq #0x546d58
00546d50  f7 fb 01 eb                                      bl #0x5c5d34
00546d54  00 20 a0 e1                                      mov r2, r0
00546d58  0a 10 a0 e1                                      mov r1, sl
00546d5c  05 00 a0 e1                                      mov r0, r5
00546d60  00 30 a0 e3                                      mov r3, #0
00546d64  7f 99 01 eb                                      bl #0x5ad368
00546d68  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00546d6c  03 00 a0 e1                                      mov r0, r3
00546d70  00 30 93 e5                                      ldr r3, [r3]
00546d74  0f e0 a0 e1                                      mov lr, pc
00546d78  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00546d7c  00 20 50 e2                                      subs r2, r0, #0
00546d80  46 00 00 1a                                      bne #0x546ea0
00546d84  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
00546d88  00 30 e0 e3                                      mvn r3, #0
00546d8c  8c 00 8d e2                                      add r0, sp, #0x8c
00546d90  0c 10 a0 e1                                      mov r1, ip
00546d94  00 c0 9c e5                                      ldr ip, [ip]
00546d98  04 30 8d e5                                      str r3, [sp, #4]
00546d9c  00 30 8d e5                                      str r3, [sp]
00546da0  ff 30 a0 e3                                      mov r3, #0xff
00546da4  0f e0 a0 e1                                      mov lr, pc
00546da8  34 f0 9c e5                                      ldr pc, [ip, #0x34]
00546dac  00 60 a0 e3                                      mov r6, #0
00546db0  88 70 8d e2                                      add r7, sp, #0x88
00546db4  84 80 8d e2                                      add r8, sp, #0x84
00546db8  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
00546dbc  03 00 a0 e1                                      mov r0, r3
00546dc0  00 30 93 e5                                      ldr r3, [r3]
00546dc4  0f e0 a0 e1                                      mov lr, pc
00546dc8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00546dcc  00 00 56 e1                                      cmp r6, r0
00546dd0  06 20 a0 e1                                      mov r2, r6
00546dd4  07 00 a0 e1                                      mov r0, r7
00546dd8  17 00 00 2a                                      bhs #0x546e3c
00546ddc  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
00546de0  01 60 86 e2                                      add r6, r6, #1
00546de4  03 10 a0 e1                                      mov r1, r3
00546de8  00 30 93 e5                                      ldr r3, [r3]
00546dec  0f e0 a0 e1                                      mov lr, pc
00546df0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00546df4  88 30 9d e5                                      ldr r3, [sp, #0x88]
00546df8  05 00 a0 e1                                      mov r0, r5
00546dfc  08 10 a0 e1                                      mov r1, r8
00546e00  00 00 53 e3                                      cmp r3, #0
00546e04  84 30 8d e5                                      str r3, [sp, #0x84]
00546e08  04 20 93 15                                      ldrne r2, [r3, #4]
00546e0c  01 20 82 12                                      addne r2, r2, #1
00546e10  04 20 83 15                                      strne r2, [r3, #4]
00546e14  6d 5f f8 eb                                      bl #0x35ebd0
00546e18  84 00 9d e5                                      ldr r0, [sp, #0x84]
00546e1c  00 00 50 e3                                      cmp r0, #0
00546e20  00 00 00 0a                                      beq #0x546e28
00546e24  d6 59 f7 eb                                      bl #0x31d584
00546e28  88 00 9d e5                                      ldr r0, [sp, #0x88]
00546e2c  00 00 50 e3                                      cmp r0, #0
00546e30  e0 ff ff 0a                                      beq #0x546db8
00546e34  d2 59 f7 eb                                      bl #0x31d584
00546e38  de ff ff ea                                      b #0x546db8
00546e3c  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
00546e40  54 10 8d e2                                      add r1, sp, #0x54
00546e44  04 30 13 e5                                      ldr r3, [r3, #-4]
00546e48  03 00 a0 e1                                      mov r0, r3
00546e4c  00 30 93 e5                                      ldr r3, [r3]
00546e50  0f e0 a0 e1                                      mov lr, pc
00546e54  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00546e58  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
00546e5c  00 00 50 e3                                      cmp r0, #0
00546e60  00 00 00 0a                                      beq #0x546e68
00546e64  c6 59 f7 eb                                      bl #0x31d584
00546e68  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00546e6c  00 00 53 e3                                      cmp r3, #0
00546e70  04 50 b4 15                                      ldrne r5, [r4, #4]!
00546e74  06 00 00 1a                                      bne #0x546e94
00546e78  e5 fe ff ea                                      b #0x546a14
00546e7c  08 30 95 e5                                      ldr r3, [r5, #8]
00546e80  03 00 a0 e1                                      mov r0, r3
00546e84  00 30 93 e5                                      ldr r3, [r3]
00546e88  0f e0 a0 e1                                      mov lr, pc
00546e8c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00546e90  00 50 95 e5                                      ldr r5, [r5]
00546e94  04 00 55 e1                                      cmp r5, r4
00546e98  f7 ff ff 1a                                      bne #0x546e7c
00546e9c  dc fe ff ea                                      b #0x546a14
00546ea0  0f 10 03 eb                                      bl #0x60aee4
00546ea4  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00546ea8  00 60 a0 e1                                      mov r6, r0
00546eac  03 00 a0 e1                                      mov r0, r3
00546eb0  00 30 93 e5                                      ldr r3, [r3]
00546eb4  0f e0 a0 e1                                      mov lr, pc
00546eb8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00546ebc  cd 3c 0c e3                                      movw r3, #0xcccd
00546ec0  cc 3c 4c e3                                      movt r3, #0xcccc
00546ec4  93 26 86 e0                                      umull r2, r6, r3, r6
00546ec8  00 10 a0 e1                                      mov r1, r0
00546ecc  26 02 a0 e1                                      lsr r0, r6, #4
00546ed0  15 1f f7 eb                                      bl #0x30eb2c
00546ed4  01 20 a0 e1                                      mov r2, r1
00546ed8  a9 ff ff ea                                      b #0x546d84

; FUNCTION 0x00546edc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZTv0_n24_N6glitch3gui14CGUIMeshViewerD0Ev
; demangled: virtual thunk to glitch::gui::CGUIMeshViewer::~CGUIMeshViewer()
; decoder-mode: arm
00546edc  00 30 90 e5                                      ldr r3, [r0]
00546ee0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00546ee4  03 00 80 e0                                      add r0, r0, r3
00546ee8  7c fe ff ea                                      b #0x5468e0

; FUNCTION 0x00546eec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZTv0_n12_N6glitch3gui14CGUIMeshViewerD0Ev
; demangled: virtual thunk to glitch::gui::CGUIMeshViewer::~CGUIMeshViewer()
; decoder-mode: arm
00546eec  00 30 90 e5                                      ldr r3, [r0]
00546ef0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00546ef4  03 00 80 e0                                      add r0, r0, r3
00546ef8  78 fe ff ea                                      b #0x5468e0

; FUNCTION 0x00546efc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZTv0_n24_N6glitch3gui14CGUIMeshViewerD1Ev
; demangled: virtual thunk to glitch::gui::CGUIMeshViewer::~CGUIMeshViewer()
; decoder-mode: arm
00546efc  00 30 90 e5                                      ldr r3, [r0]
00546f00  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00546f04  03 00 80 e0                                      add r0, r0, r3
00546f08  4f fe ff ea                                      b #0x54684c

; FUNCTION 0x00546f0c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMeshViewer
; alias: _ZTv0_n12_N6glitch3gui14CGUIMeshViewerD1Ev
; demangled: virtual thunk to glitch::gui::CGUIMeshViewer::~CGUIMeshViewer()
; decoder-mode: arm
00546f0c  00 30 90 e5                                      ldr r3, [r0]
00546f10  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00546f14  03 00 80 e0                                      add r0, r0, r3
00546f18  4b fe ff ea                                      b #0x54684c
