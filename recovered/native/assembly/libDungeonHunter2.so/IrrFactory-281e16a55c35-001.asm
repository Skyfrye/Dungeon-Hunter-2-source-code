; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00350a4c, declared_size=52, range_size=52, mode=arm
; class-group: IrrFactory
; alias: _ZN10IrrFactoryD1Ev
; demangled: IrrFactory::~IrrFactory()
; decoder-mode: arm
00350a4c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00350a50  24 20 9f e5                                      ldr r2, [pc, #0x24]
00350a54  10 40 2d e9                                      push {r4, lr}
00350a58  03 30 8f e0                                      add r3, pc, r3
00350a5c  02 20 93 e7                                      ldr r2, [r3, r2]
00350a60  00 40 a0 e1                                      mov r4, r0
00350a64  08 20 82 e2                                      add r2, r2, #8
00350a68  00 20 80 e5                                      str r2, [r0]
00350a6c  23 8d 07 eb                                      bl #0x533f00
00350a70  04 00 a0 e1                                      mov r0, r4
00350a74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00350a78  38 40 64 00 98 25 00 00                          .byte 0x38, 0x40, 0x64, 0x00, 0x98, 0x25, 0x00, 0x00

; FUNCTION 0x00350a80, declared_size=108, range_size=108, mode=arm
; class-group: IrrFactory
; alias: _ZN10IrrFactory18createSceneManagerEPN6glitch5video12IVideoDriverERKN5boost13intrusive_ptrINS0_2io11IFileSystemEEEPNS0_3gui14ICursorControlEPNSB_15IGUIEnvironmentE
; demangled: IrrFactory::createSceneManager(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::gui::ICursorControl*, glitch::gui::IGUIEnvironment*)
; decoder-mode: arm
00350a80  70 40 2d e9                                      push {r4, r5, r6, lr}
00350a84  00 20 92 e5                                      ldr r2, [r2]
00350a88  10 d0 4d e2                                      sub sp, sp, #0x10
00350a8c  03 60 a0 e1                                      mov r6, r3
00350a90  00 00 52 e3                                      cmp r2, #0
00350a94  0c 20 8d e5                                      str r2, [sp, #0xc]
00350a98  04 30 92 15                                      ldrne r3, [r2, #4]
00350a9c  01 50 a0 e1                                      mov r5, r1
00350aa0  94 04 00 e3                                      movw r0, #0x494
00350aa4  01 30 83 12                                      addne r3, r3, #1
00350aa8  04 30 82 15                                      strne r3, [r2, #4]
00350aac  00 10 a0 e3                                      mov r1, #0
00350ab0  ae fe fe eb                                      bl #0x310570
00350ab4  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00350ab8  05 10 a0 e1                                      mov r1, r5
00350abc  06 30 a0 e1                                      mov r3, r6
00350ac0  0c 20 8d e2                                      add r2, sp, #0xc
00350ac4  00 40 a0 e1                                      mov r4, r0
00350ac8  00 c0 8d e5                                      str ip, [sp]
00350acc  5a 08 00 eb                                      bl #0x352c3c
00350ad0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00350ad4  00 00 50 e3                                      cmp r0, #0
00350ad8  00 00 00 0a                                      beq #0x350ae0
00350adc  a8 32 ff eb                                      bl #0x31d584
00350ae0  04 00 a0 e1                                      mov r0, r4
00350ae4  10 d0 8d e2                                      add sp, sp, #0x10
00350ae8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00350aec, declared_size=56, range_size=56, mode=arm
; class-group: IrrFactory
; alias: _ZN10IrrFactory16createFileSystemEv
; demangled: IrrFactory::createFileSystem()
; decoder-mode: arm
00350aec  70 40 2d e9                                      push {r4, r5, r6, lr}
00350af0  00 10 a0 e3                                      mov r1, #0
00350af4  00 40 a0 e1                                      mov r4, r0
00350af8  15 0d a0 e3                                      mov r0, #0x540
00350afc  9b fe fe eb                                      bl #0x310570
00350b00  00 50 a0 e1                                      mov r5, r0
00350b04  fa fa ff eb                                      bl #0x34f6f4
00350b08  00 00 55 e3                                      cmp r5, #0
00350b0c  00 50 84 e5                                      str r5, [r4]
00350b10  04 30 95 15                                      ldrne r3, [r5, #4]
00350b14  04 00 a0 e1                                      mov r0, r4
00350b18  01 30 83 12                                      addne r3, r3, #1
00350b1c  04 30 85 15                                      strne r3, [r5, #4]
00350b20  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00350c40, declared_size=60, range_size=60, mode=arm
; class-group: IrrFactory
; alias: _ZN10IrrFactoryD0Ev
; demangled: IrrFactory::~IrrFactory()
; decoder-mode: arm
00350c40  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00350c44  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00350c48  10 40 2d e9                                      push {r4, lr}
00350c4c  03 30 8f e0                                      add r3, pc, r3
00350c50  02 20 93 e7                                      ldr r2, [r3, r2]
00350c54  00 40 a0 e1                                      mov r4, r0
00350c58  08 20 82 e2                                      add r2, r2, #8
00350c5c  00 20 80 e5                                      str r2, [r0]
00350c60  a6 8c 07 eb                                      bl #0x533f00
00350c64  04 00 a0 e1                                      mov r0, r4
00350c68  f4 fd fe eb                                      bl #0x310440
00350c6c  04 00 a0 e1                                      mov r0, r4
00350c70  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00350c74  44 3e 64 00 98 25 00 00                          .byte 0x44, 0x3e, 0x64, 0x00, 0x98, 0x25, 0x00, 0x00
