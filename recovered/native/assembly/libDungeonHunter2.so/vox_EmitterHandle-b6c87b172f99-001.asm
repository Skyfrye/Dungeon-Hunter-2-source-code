; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00868098, declared_size=148, range_size=148, mode=arm
; class-group: vox::EmitterHandle
; alias: _ZN3vox13EmitterHandleC1ExPPNS_17VoxEngineInternalEPNS_9HandlableEjj
; demangled: vox::EmitterHandle::EmitterHandle(long long, vox::VoxEngineInternal**, vox::Handlable*, unsigned int, unsigned int)
; decoder-mode: arm
00868098  70 40 2d e9                                      push {r4, r5, r6, lr}
0086809c  80 c0 9f e5                                      ldr ip, [pc, #0x80]
008680a0  00 40 a0 e1                                      mov r4, r0
008680a4  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
008680a8  18 00 9d e5                                      ldr r0, [sp, #0x18]
008680ac  0c c0 8f e0                                      add ip, pc, ip
008680b0  10 60 9d e5                                      ldr r6, [sp, #0x10]
008680b4  14 10 9d e5                                      ldr r1, [sp, #0x14]
008680b8  05 50 9c e7                                      ldr r5, [ip, r5]
008680bc  10 00 84 e5                                      str r0, [r4, #0x10]
008680c0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
008680c4  08 50 85 e2                                      add r5, r5, #8
008680c8  00 00 56 e3                                      cmp r6, #0
008680cc  14 00 84 e5                                      str r0, [r4, #0x14]
008680d0  00 50 84 e5                                      str r5, [r4]
008680d4  f8 20 c4 e1                                      strd r2, r3, [r4, #8]
008680d8  18 10 84 e5                                      str r1, [r4, #0x18]
008680dc  1c 60 84 e5                                      str r6, [r4, #0x1c]
008680e0  20 10 84 e5                                      str r1, [r4, #0x20]
008680e4  08 00 00 0a                                      beq #0x86810c
008680e8  00 00 96 e5                                      ldr r0, [r6]
008680ec  00 00 50 e3                                      cmp r0, #0
008680f0  05 00 00 0a                                      beq #0x86810c
008680f4  00 00 51 e3                                      cmp r1, #0
008680f8  05 00 00 0a                                      beq #0x868114
008680fc  01 00 a0 e1                                      mov r0, r1
00868100  00 30 91 e5                                      ldr r3, [r1]
00868104  0f e0 a0 e1                                      mov lr, pc
00868108  08 f0 93 e5                                      ldr pc, [r3, #8]
0086810c  04 00 a0 e1                                      mov r0, r4
00868110  70 80 bd e8                                      pop {r4, r5, r6, pc}
00868114  04 10 a0 e1                                      mov r1, r4
00868118  cd ff ff eb                                      bl #0x868054
0086811c  04 00 a0 e1                                      mov r0, r4
00868120  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00868124  e4 c9 12 00 28 2e 00 00                          .byte 0xe4, 0xc9, 0x12, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x0086812c, declared_size=148, range_size=148, mode=arm
; class-group: vox::EmitterHandle
; alias: _ZN3vox13EmitterHandleC2ExPPNS_17VoxEngineInternalEPNS_9HandlableEjj
; demangled: vox::EmitterHandle::EmitterHandle(long long, vox::VoxEngineInternal**, vox::Handlable*, unsigned int, unsigned int)
; decoder-mode: arm
0086812c  70 40 2d e9                                      push {r4, r5, r6, lr}
00868130  80 c0 9f e5                                      ldr ip, [pc, #0x80]
00868134  00 40 a0 e1                                      mov r4, r0
00868138  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
0086813c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00868140  0c c0 8f e0                                      add ip, pc, ip
00868144  10 60 9d e5                                      ldr r6, [sp, #0x10]
00868148  14 10 9d e5                                      ldr r1, [sp, #0x14]
0086814c  05 50 9c e7                                      ldr r5, [ip, r5]
00868150  10 00 84 e5                                      str r0, [r4, #0x10]
00868154  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00868158  08 50 85 e2                                      add r5, r5, #8
0086815c  00 00 56 e3                                      cmp r6, #0
00868160  14 00 84 e5                                      str r0, [r4, #0x14]
00868164  00 50 84 e5                                      str r5, [r4]
00868168  f8 20 c4 e1                                      strd r2, r3, [r4, #8]
0086816c  18 10 84 e5                                      str r1, [r4, #0x18]
00868170  1c 60 84 e5                                      str r6, [r4, #0x1c]
00868174  20 10 84 e5                                      str r1, [r4, #0x20]
00868178  08 00 00 0a                                      beq #0x8681a0
0086817c  00 00 96 e5                                      ldr r0, [r6]
00868180  00 00 50 e3                                      cmp r0, #0
00868184  05 00 00 0a                                      beq #0x8681a0
00868188  00 00 51 e3                                      cmp r1, #0
0086818c  05 00 00 0a                                      beq #0x8681a8
00868190  01 00 a0 e1                                      mov r0, r1
00868194  00 30 91 e5                                      ldr r3, [r1]
00868198  0f e0 a0 e1                                      mov lr, pc
0086819c  08 f0 93 e5                                      ldr pc, [r3, #8]
008681a0  04 00 a0 e1                                      mov r0, r4
008681a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
008681a8  04 10 a0 e1                                      mov r1, r4
008681ac  a8 ff ff eb                                      bl #0x868054
008681b0  04 00 a0 e1                                      mov r0, r4
008681b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008681b8  50 c9 12 00 28 2e 00 00                          .byte 0x50, 0xc9, 0x12, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x008681c0, declared_size=144, range_size=144, mode=arm
; class-group: vox::EmitterHandle
; alias: _ZN3vox13EmitterHandleC1ERKS0_
; demangled: vox::EmitterHandle::EmitterHandle(vox::EmitterHandle const&)
; decoder-mode: arm
008681c0  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
008681c4  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
008681c8  d0 40 2d e9                                      push {r4, r6, r7, lr}
008681cc  03 30 8f e0                                      add r3, pc, r3
008681d0  02 20 93 e7                                      ldr r2, [r3, r2]
008681d4  00 40 a0 e1                                      mov r4, r0
008681d8  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
008681dc  08 20 82 e2                                      add r2, r2, #8
008681e0  00 20 84 e5                                      str r2, [r4]
008681e4  d8 60 c1 e1                                      ldrd r6, r7, [r1, #8]
008681e8  f8 60 c4 e1                                      strd r6, r7, [r4, #8]
008681ec  10 20 91 e5                                      ldr r2, [r1, #0x10]
008681f0  00 00 93 e7                                      ldr r0, [r3, r0]
008681f4  10 20 84 e5                                      str r2, [r4, #0x10]
008681f8  14 30 91 e5                                      ldr r3, [r1, #0x14]
008681fc  08 00 80 e2                                      add r0, r0, #8
00868200  14 30 84 e5                                      str r3, [r4, #0x14]
00868204  18 30 91 e5                                      ldr r3, [r1, #0x18]
00868208  18 30 84 e5                                      str r3, [r4, #0x18]
0086820c  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
00868210  1c 30 84 e5                                      str r3, [r4, #0x1c]
00868214  20 20 91 e5                                      ldr r2, [r1, #0x20]
00868218  00 00 53 e3                                      cmp r3, #0
0086821c  00 00 84 e5                                      str r0, [r4]
00868220  20 20 84 e5                                      str r2, [r4, #0x20]
00868224  04 00 00 0a                                      beq #0x86823c
00868228  00 00 93 e5                                      ldr r0, [r3]
0086822c  00 00 50 e3                                      cmp r0, #0
00868230  01 00 00 0a                                      beq #0x86823c
00868234  04 10 a0 e1                                      mov r1, r4
00868238  85 ff ff eb                                      bl #0x868054
0086823c  04 00 a0 e1                                      mov r0, r4
00868240  d0 80 bd e8                                      pop {r4, r6, r7, pc}
; mapping-symbol data/literal pool
00868244  c4 c8 12 00 24 09 00 00 28 2e 00 00              .byte 0xc4, 0xc8, 0x12, 0x00, 0x24, 0x09, 0x00, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x00868250, declared_size=144, range_size=144, mode=arm
; class-group: vox::EmitterHandle
; alias: _ZN3vox13EmitterHandleC2ERKS0_
; demangled: vox::EmitterHandle::EmitterHandle(vox::EmitterHandle const&)
; decoder-mode: arm
00868250  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00868254  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00868258  d0 40 2d e9                                      push {r4, r6, r7, lr}
0086825c  03 30 8f e0                                      add r3, pc, r3
00868260  02 20 93 e7                                      ldr r2, [r3, r2]
00868264  00 40 a0 e1                                      mov r4, r0
00868268  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0086826c  08 20 82 e2                                      add r2, r2, #8
00868270  00 20 84 e5                                      str r2, [r4]
00868274  d8 60 c1 e1                                      ldrd r6, r7, [r1, #8]
00868278  f8 60 c4 e1                                      strd r6, r7, [r4, #8]
0086827c  10 20 91 e5                                      ldr r2, [r1, #0x10]
00868280  00 00 93 e7                                      ldr r0, [r3, r0]
00868284  10 20 84 e5                                      str r2, [r4, #0x10]
00868288  14 30 91 e5                                      ldr r3, [r1, #0x14]
0086828c  08 00 80 e2                                      add r0, r0, #8
00868290  14 30 84 e5                                      str r3, [r4, #0x14]
00868294  18 30 91 e5                                      ldr r3, [r1, #0x18]
00868298  18 30 84 e5                                      str r3, [r4, #0x18]
0086829c  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
008682a0  1c 30 84 e5                                      str r3, [r4, #0x1c]
008682a4  20 20 91 e5                                      ldr r2, [r1, #0x20]
008682a8  00 00 53 e3                                      cmp r3, #0
008682ac  00 00 84 e5                                      str r0, [r4]
008682b0  20 20 84 e5                                      str r2, [r4, #0x20]
008682b4  04 00 00 0a                                      beq #0x8682cc
008682b8  00 00 93 e5                                      ldr r0, [r3]
008682bc  00 00 50 e3                                      cmp r0, #0
008682c0  01 00 00 0a                                      beq #0x8682cc
008682c4  04 10 a0 e1                                      mov r1, r4
008682c8  61 ff ff eb                                      bl #0x868054
008682cc  04 00 a0 e1                                      mov r0, r4
008682d0  d0 80 bd e8                                      pop {r4, r6, r7, pc}
; mapping-symbol data/literal pool
008682d4  34 c8 12 00 24 09 00 00 28 2e 00 00              .byte 0x34, 0xc8, 0x12, 0x00, 0x24, 0x09, 0x00, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x00868324, declared_size=136, range_size=136, mode=arm
; class-group: vox::EmitterHandle
; alias: _ZN3vox13EmitterHandleaSERKS0_
; demangled: vox::EmitterHandle::operator=(vox::EmitterHandle const&)
; decoder-mode: arm
00868324  01 00 50 e1                                      cmp r0, r1
00868328  70 40 2d e9                                      push {r4, r5, r6, lr}
0086832c  00 40 a0 e1                                      mov r4, r0
00868330  01 50 a0 e1                                      mov r5, r1
00868334  1a 00 00 0a                                      beq #0x8683a4
00868338  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0086833c  00 00 53 e3                                      cmp r3, #0
00868340  04 00 00 0a                                      beq #0x868358
00868344  00 00 93 e5                                      ldr r0, [r3]
00868348  00 00 50 e3                                      cmp r0, #0
0086834c  01 00 00 0a                                      beq #0x868358
00868350  04 10 a0 e1                                      mov r1, r4
00868354  e1 ff ff eb                                      bl #0x8682e0
00868358  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0086835c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00868360  d8 00 c5 e1                                      ldrd r0, r1, [r5, #8]
00868364  f8 00 c4 e1                                      strd r0, r1, [r4, #8]
00868368  10 20 95 e5                                      ldr r2, [r5, #0x10]
0086836c  00 00 53 e3                                      cmp r3, #0
00868370  10 20 84 e5                                      str r2, [r4, #0x10]
00868374  14 20 95 e5                                      ldr r2, [r5, #0x14]
00868378  14 20 84 e5                                      str r2, [r4, #0x14]
0086837c  18 20 95 e5                                      ldr r2, [r5, #0x18]
00868380  18 20 84 e5                                      str r2, [r4, #0x18]
00868384  20 20 95 e5                                      ldr r2, [r5, #0x20]
00868388  20 20 84 e5                                      str r2, [r4, #0x20]
0086838c  04 00 00 0a                                      beq #0x8683a4
00868390  00 00 93 e5                                      ldr r0, [r3]
00868394  00 00 50 e3                                      cmp r0, #0
00868398  01 00 00 0a                                      beq #0x8683a4
0086839c  04 10 a0 e1                                      mov r1, r4
008683a0  2b ff ff eb                                      bl #0x868054
008683a4  04 00 a0 e1                                      mov r0, r4
008683a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008683ac, declared_size=80, range_size=80, mode=arm
; class-group: vox::EmitterHandle
; alias: _ZN3vox13EmitterHandleD1Ev
; demangled: vox::EmitterHandle::~EmitterHandle()
; decoder-mode: arm
008683ac  10 40 2d e9                                      push {r4, lr}
008683b0  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
008683b4  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
008683b8  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
008683bc  03 30 8f e0                                      add r3, pc, r3
008683c0  02 20 93 e7                                      ldr r2, [r3, r2]
008683c4  00 00 51 e3                                      cmp r1, #0
008683c8  00 40 a0 e1                                      mov r4, r0
008683cc  08 20 82 e2                                      add r2, r2, #8
008683d0  00 20 80 e5                                      str r2, [r0]
008683d4  04 00 00 0a                                      beq #0x8683ec
008683d8  00 00 91 e5                                      ldr r0, [r1]
008683dc  00 00 50 e3                                      cmp r0, #0
008683e0  01 00 00 0a                                      beq #0x8683ec
008683e4  04 10 a0 e1                                      mov r1, r4
008683e8  bc ff ff eb                                      bl #0x8682e0
008683ec  04 00 a0 e1                                      mov r0, r4
008683f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008683f4  d4 c6 12 00 28 2e 00 00                          .byte 0xd4, 0xc6, 0x12, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x008683fc, declared_size=28, range_size=28, mode=arm
; class-group: vox::EmitterHandle
; alias: _ZN3vox13EmitterHandleD0Ev
; demangled: vox::EmitterHandle::~EmitterHandle()
; decoder-mode: arm
008683fc  10 40 2d e9                                      push {r4, lr}
00868400  00 40 a0 e1                                      mov r4, r0
00868404  e8 ff ff eb                                      bl #0x8683ac
00868408  04 00 a0 e1                                      mov r0, r4
0086840c  a7 97 ea eb                                      bl #0x30e2b0
00868410  04 00 a0 e1                                      mov r0, r4
00868414  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00868418, declared_size=80, range_size=80, mode=arm
; class-group: vox::EmitterHandle
; alias: _ZN3vox13EmitterHandleD2Ev
; demangled: vox::EmitterHandle::~EmitterHandle()
; decoder-mode: arm
00868418  10 40 2d e9                                      push {r4, lr}
0086841c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00868420  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00868424  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
00868428  03 30 8f e0                                      add r3, pc, r3
0086842c  02 20 93 e7                                      ldr r2, [r3, r2]
00868430  00 00 51 e3                                      cmp r1, #0
00868434  00 40 a0 e1                                      mov r4, r0
00868438  08 20 82 e2                                      add r2, r2, #8
0086843c  00 20 80 e5                                      str r2, [r0]
00868440  04 00 00 0a                                      beq #0x868458
00868444  00 00 91 e5                                      ldr r0, [r1]
00868448  00 00 50 e3                                      cmp r0, #0
0086844c  01 00 00 0a                                      beq #0x868458
00868450  04 10 a0 e1                                      mov r1, r4
00868454  a1 ff ff eb                                      bl #0x8682e0
00868458  04 00 a0 e1                                      mov r0, r4
0086845c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00868460  68 c6 12 00 28 2e 00 00                          .byte 0x68, 0xc6, 0x12, 0x00, 0x28, 0x2e, 0x00, 0x00
