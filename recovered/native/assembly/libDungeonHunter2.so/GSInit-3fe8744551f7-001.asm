; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003847fc, declared_size=56, range_size=56, mode=arm
; class-group: GSInit
; alias: _ZN6GSInitC2Ev
; demangled: GSInit::GSInit()
; decoder-mode: arm
003847fc  28 20 9f e5                                      ldr r2, [pc, #0x28]
00384800  28 10 9f e5                                      ldr r1, [pc, #0x28]
00384804  00 c0 a0 e3                                      mov ip, #0
00384808  02 20 8f e0                                      add r2, pc, r2
0038480c  01 10 92 e7                                      ldr r1, [r2, r1]
00384810  10 c0 80 e5                                      str ip, [r0, #0x10]
00384814  04 c0 80 e5                                      str ip, [r0, #4]
00384818  08 10 81 e2                                      add r1, r1, #8
0038481c  00 10 80 e5                                      str r1, [r0]
00384820  00 10 e0 e3                                      mvn r1, #0
00384824  08 10 80 e5                                      str r1, [r0, #8]
00384828  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0038482c  88 02 61 00 0c 0b 00 00                          .byte 0x88, 0x02, 0x61, 0x00, 0x0c, 0x0b, 0x00, 0x00

; FUNCTION 0x00384834, declared_size=56, range_size=56, mode=arm
; class-group: GSInit
; alias: _ZN6GSInitC1Ev
; demangled: GSInit::GSInit()
; decoder-mode: arm
00384834  28 20 9f e5                                      ldr r2, [pc, #0x28]
00384838  28 10 9f e5                                      ldr r1, [pc, #0x28]
0038483c  00 c0 a0 e3                                      mov ip, #0
00384840  02 20 8f e0                                      add r2, pc, r2
00384844  01 10 92 e7                                      ldr r1, [r2, r1]
00384848  10 c0 80 e5                                      str ip, [r0, #0x10]
0038484c  04 c0 80 e5                                      str ip, [r0, #4]
00384850  08 10 81 e2                                      add r1, r1, #8
00384854  00 10 80 e5                                      str r1, [r0]
00384858  00 10 e0 e3                                      mvn r1, #0
0038485c  08 10 80 e5                                      str r1, [r0, #8]
00384860  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00384864  50 02 61 00 0c 0b 00 00                          .byte 0x50, 0x02, 0x61, 0x00, 0x0c, 0x0b, 0x00, 0x00

; FUNCTION 0x0038486c, declared_size=4, range_size=4, mode=arm
; class-group: GSInit
; alias: _ZN6GSInit4DtorEPK12StateMachine
; demangled: GSInit::Dtor(StateMachine const*)
; decoder-mode: arm
0038486c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00384a4c, declared_size=612, range_size=612, mode=arm
; class-group: GSInit
; alias: _ZN6GSInit4DrawEPK12StateMachine
; demangled: GSInit::Draw(StateMachine const*)
; decoder-mode: arm
00384a4c  4c 32 9f e5                                      ldr r3, [pc, #0x24c]
00384a50  4c 22 9f e5                                      ldr r2, [pc, #0x24c]
00384a54  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00384a58  03 30 8f e0                                      add r3, pc, r3
00384a5c  02 70 93 e7                                      ldr r7, [r3, r2]
00384a60  40 d0 4d e2                                      sub sp, sp, #0x40
00384a64  00 60 a0 e1                                      mov r6, r0
00384a68  10 30 97 e5                                      ldr r3, [r7, #0x10]
00384a6c  10 40 93 e5                                      ldr r4, [r3, #0x10]
00384a70  00 30 94 e5                                      ldr r3, [r4]
00384a74  04 00 a0 e1                                      mov r0, r4
00384a78  0f e0 a0 e1                                      mov lr, pc
00384a7c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00384a80  04 00 a0 e1                                      mov r0, r4
00384a84  01 10 a0 e3                                      mov r1, #1
00384a88  00 30 94 e5                                      ldr r3, [r4]
00384a8c  0f e0 a0 e1                                      mov lr, pc
00384a90  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
00384a94  00 30 94 e5                                      ldr r3, [r4]
00384a98  04 00 a0 e1                                      mov r0, r4
00384a9c  0f e0 a0 e1                                      mov lr, pc
00384aa0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00384aa4  10 30 96 e5                                      ldr r3, [r6, #0x10]
00384aa8  00 00 53 e3                                      cmp r3, #0
00384aac  14 00 00 0a                                      beq #0x384b04
00384ab0  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
00384ab4  05 cc a0 e3                                      mov ip, #0x500
00384ab8  10 80 86 e2                                      add r8, r6, #0x10
00384abc  04 20 13 e5                                      ldr r2, [r3, #-4]
00384ac0  00 50 a0 e3                                      mov r5, #0
00384ac4  30 30 8d e2                                      add r3, sp, #0x30
00384ac8  38 c0 8d e5                                      str ip, [sp, #0x38]
00384acc  14 20 82 e2                                      add r2, r2, #0x14
00384ad0  2f ce a0 e3                                      mov ip, #0x2f0
00384ad4  04 00 a0 e1                                      mov r0, r4
00384ad8  08 10 a0 e1                                      mov r1, r8
00384adc  3c c0 8d e5                                      str ip, [sp, #0x3c]
00384ae0  30 50 8d e5                                      str r5, [sp, #0x30]
00384ae4  34 50 8d e5                                      str r5, [sp, #0x34]
00384ae8  00 50 8d e5                                      str r5, [sp]
00384aec  04 50 8d e5                                      str r5, [sp, #4]
00384af0  08 50 8d e5                                      str r5, [sp, #8]
00384af4  9d 6b 08 eb                                      bl #0x59f970
00384af8  08 30 96 e5                                      ldr r3, [r6, #8]
00384afc  05 00 53 e1                                      cmp r3, r5
00384b00  0e 00 00 ba                                      blt #0x384b40
00384b04  00 30 94 e5                                      ldr r3, [r4]
00384b08  04 00 a0 e1                                      mov r0, r4
00384b0c  0f e0 a0 e1                                      mov lr, pc
00384b10  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00384b14  00 30 94 e5                                      ldr r3, [r4]
00384b18  04 00 a0 e1                                      mov r0, r4
00384b1c  0f e0 a0 e1                                      mov lr, pc
00384b20  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00384b24  04 00 a0 e1                                      mov r0, r4
00384b28  00 30 94 e5                                      ldr r3, [r4]
00384b2c  00 10 a0 e3                                      mov r1, #0
00384b30  0f e0 a0 e1                                      mov lr, pc
00384b34  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00384b38  40 d0 8d e2                                      add sp, sp, #0x40
00384b3c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00384b40  07 00 a0 e1                                      mov r0, r7
00384b44  c8 6a fe eb                                      bl #0x31f66c
00384b48  58 31 9f e5                                      ldr r3, [pc, #0x158]
00384b4c  03 30 8f e0                                      add r3, pc, r3
00384b50  00 20 93 e5                                      ldr r2, [r3]
00384b54  02 20 80 e0                                      add r2, r0, r2
00384b58  19 00 52 e3                                      cmp r2, #0x19
00384b5c  00 20 83 e5                                      str r2, [r3]
00384b60  05 00 00 9a                                      bls #0x384b7c
00384b64  04 20 93 e5                                      ldr r2, [r3, #4]
00384b68  00 50 83 e5                                      str r5, [r3]
00384b6c  0c 00 52 e3                                      cmp r2, #0xc
00384b70  01 20 82 12                                      addne r2, r2, #1
00384b74  00 20 a0 03                                      moveq r2, #0
00384b78  04 20 83 e5                                      str r2, [r3, #4]
00384b7c  f3 f2 ff eb                                      bl #0x381750
00384b80  02 53 00 e3                                      movw r5, #0x302
00384b84  00 00 50 e3                                      cmp r0, #0
00384b88  05 a0 a0 01                                      moveq sl, r5
00384b8c  17 a0 a0 13                                      movne sl, #0x17
00384b90  ee f2 ff eb                                      bl #0x381750
00384b94  00 00 50 e3                                      cmp r0, #0
00384b98  c6 5f a0 13                                      movne r5, #0x318
00384b9c  eb f2 ff eb                                      bl #0x381750
00384ba0  42 94 a0 e3                                      mov sb, #0x42000000
00384ba4  00 00 50 e3                                      cmp r0, #0
00384ba8  40 60 a0 03                                      moveq r6, #0x40
00384bac  36 60 a0 13                                      movne r6, #0x36
00384bb0  02 95 89 02                                      addeq sb, sb, #0x800000
00384bb4  16 97 89 12                                      addne sb, sb, #0x580000
00384bb8  e4 f2 ff eb                                      bl #0x381750
00384bbc  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
00384bc0  00 00 50 e3                                      cmp r0, #0
00384bc4  42 74 a0 e3                                      mov r7, #0x42000000
00384bc8  03 30 8f e0                                      add r3, pc, r3
00384bcc  04 30 93 e5                                      ldr r3, [r3, #4]
00384bd0  40 10 a0 03                                      moveq r1, #0x40
00384bd4  38 10 a0 13                                      movne r1, #0x38
00384bd8  c3 2f a0 e1                                      asr r2, r3, #0x1f
00384bdc  03 c0 83 e2                                      add ip, r3, #3
00384be0  22 2f a0 e1                                      lsr r2, r2, #0x1e
00384be4  02 00 83 e0                                      add r0, r3, r2
00384be8  02 75 87 02                                      addeq r7, r7, #0x800000
00384bec  06 76 87 12                                      addne r7, r7, #0x600000
00384bf0  00 00 53 e3                                      cmp r3, #0
00384bf4  0c 30 a0 b1                                      movlt r3, ip
00384bf8  03 00 00 e2                                      and r0, r0, #3
00384bfc  00 20 62 e0                                      rsb r2, r2, r0
00384c00  43 31 a0 e1                                      asr r3, r3, #2
00384c04  92 a6 2a e0                                      mla sl, r2, r6, sl
00384c08  93 51 25 e0                                      mla r5, r3, r1, r5
00384c0c  06 60 8a e0                                      add r6, sl, r6
00384c10  01 10 85 e0                                      add r1, r5, r1
00384c14  20 a0 8d e5                                      str sl, [sp, #0x20]
00384c18  24 50 8d e5                                      str r5, [sp, #0x24]
00384c1c  28 60 8d e5                                      str r6, [sp, #0x28]
00384c20  2c 10 8d e5                                      str r1, [sp, #0x2c]
00384c24  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
00384c28  04 20 13 e5                                      ldr r2, [r3, #-4]
00384c2c  14 10 82 e2                                      add r1, r2, #0x14
00384c30  4a 00 91 e8                                      ldm r1, {r1, r3, r6}
00384c34  20 50 92 e5                                      ldr r5, [r2, #0x20]
00384c38  06 60 61 e0                                      rsb r6, r1, r6
00384c3c  06 00 a0 e1                                      mov r0, r6
00384c40  05 50 63 e0                                      rsb r5, r3, r5
00384c44  46 27 fe eb                                      bl #0x30e964
00384c48  09 10 a0 e1                                      mov r1, sb
00384c4c  d6 25 fe eb                                      bl #0x30e3ac
00384c50  1d 26 fe eb                                      bl #0x30e4cc
00384c54  10 00 8d e5                                      str r0, [sp, #0x10]
00384c58  05 00 a0 e1                                      mov r0, r5
00384c5c  40 27 fe eb                                      bl #0x30e964
00384c60  07 10 a0 e1                                      mov r1, r7
00384c64  d0 25 fe eb                                      bl #0x30e3ac
00384c68  17 26 fe eb                                      bl #0x30e4cc
00384c6c  00 c0 a0 e3                                      mov ip, #0
00384c70  14 00 8d e5                                      str r0, [sp, #0x14]
00384c74  08 10 a0 e1                                      mov r1, r8
00384c78  04 00 a0 e1                                      mov r0, r4
00384c7c  10 20 8d e2                                      add r2, sp, #0x10
00384c80  20 30 8d e2                                      add r3, sp, #0x20
00384c84  18 60 8d e5                                      str r6, [sp, #0x18]
00384c88  1c 50 8d e5                                      str r5, [sp, #0x1c]
00384c8c  08 c0 8d e5                                      str ip, [sp, #8]
00384c90  00 c0 8d e5                                      str ip, [sp]
00384c94  04 c0 8d e5                                      str ip, [sp, #4]
00384c98  34 6b 08 eb                                      bl #0x59f970
00384c9c  98 ff ff ea                                      b #0x384b04
; mapping-symbol data/literal pool
00384ca0  38 00 61 00 f4 37 00 00 48 d9 61 00 cc d8 61 00  .byte 0x38, 0x00, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x48, 0xd9, 0x61, 0x00, 0xcc, 0xd8, 0x61, 0x00

; FUNCTION 0x00384db8, declared_size=64, range_size=64, mode=arm
; class-group: GSInit
; alias: _ZN6GSInitD2Ev
; demangled: GSInit::~GSInit()
; decoder-mode: arm
00384db8  10 40 2d e9                                      push {r4, lr}
00384dbc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00384dc0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00384dc4  00 40 a0 e1                                      mov r4, r0
00384dc8  03 30 8f e0                                      add r3, pc, r3
00384dcc  10 00 90 e5                                      ldr r0, [r0, #0x10]
00384dd0  02 20 93 e7                                      ldr r2, [r3, r2]
00384dd4  00 00 50 e3                                      cmp r0, #0
00384dd8  08 20 82 e2                                      add r2, r2, #8
00384ddc  00 20 84 e5                                      str r2, [r4]
00384de0  00 00 00 0a                                      beq #0x384de8
00384de4  e6 61 fe eb                                      bl #0x31d584
00384de8  04 00 a0 e1                                      mov r0, r4
00384dec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00384df0  c8 fc 60 00 0c 0b 00 00                          .byte 0xc8, 0xfc, 0x60, 0x00, 0x0c, 0x0b, 0x00, 0x00

; FUNCTION 0x00384e30, declared_size=40, range_size=40, mode=arm
; class-group: GSInit
; alias: _ZN6GSInit4CtorEPK12StateMachine
; demangled: GSInit::Ctor(StateMachine const*)
; decoder-mode: arm
00384e30  10 20 90 e5                                      ldr r2, [r0, #0x10]
00384e34  00 30 a0 e3                                      mov r3, #0
00384e38  00 10 e0 e3                                      mvn r1, #0
00384e3c  03 00 52 e1                                      cmp r2, r3
00384e40  10 30 80 e5                                      str r3, [r0, #0x10]
00384e44  08 10 80 e5                                      str r1, [r0, #8]
00384e48  04 30 80 e5                                      str r3, [r0, #4]
00384e4c  1e ff 2f 01                                      bxeq lr
00384e50  02 00 a0 e1                                      mov r0, r2
00384e54  ca 61 fe ea                                      b #0x31d584

; FUNCTION 0x00384e58, declared_size=64, range_size=64, mode=arm
; class-group: GSInit
; alias: _ZN6GSInitD1Ev
; demangled: GSInit::~GSInit()
; decoder-mode: arm
00384e58  10 40 2d e9                                      push {r4, lr}
00384e5c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00384e60  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00384e64  00 40 a0 e1                                      mov r4, r0
00384e68  03 30 8f e0                                      add r3, pc, r3
00384e6c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00384e70  02 20 93 e7                                      ldr r2, [r3, r2]
00384e74  00 00 50 e3                                      cmp r0, #0
00384e78  08 20 82 e2                                      add r2, r2, #8
00384e7c  00 20 84 e5                                      str r2, [r4]
00384e80  00 00 00 0a                                      beq #0x384e88
00384e84  be 61 fe eb                                      bl #0x31d584
00384e88  04 00 a0 e1                                      mov r0, r4
00384e8c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00384e90  28 fc 60 00 0c 0b 00 00                          .byte 0x28, 0xfc, 0x60, 0x00, 0x0c, 0x0b, 0x00, 0x00

; FUNCTION 0x00384e98, declared_size=28, range_size=28, mode=arm
; class-group: GSInit
; alias: _ZN6GSInitD0Ev
; demangled: GSInit::~GSInit()
; decoder-mode: arm
00384e98  10 40 2d e9                                      push {r4, lr}
00384e9c  00 40 a0 e1                                      mov r4, r0
00384ea0  ec ff ff eb                                      bl #0x384e58
00384ea4  04 00 a0 e1                                      mov r0, r4
00384ea8  64 2d fe eb                                      bl #0x310440
00384eac  04 00 a0 e1                                      mov r0, r4
00384eb0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00384ef0, declared_size=116, range_size=116, mode=arm
; class-group: GSInit
; alias: _ZN6GSInit18ClearLoadingScreenEv
; demangled: GSInit::ClearLoadingScreen()
; decoder-mode: arm
00384ef0  70 40 2d e9                                      push {r4, r5, r6, lr}
00384ef4  00 40 a0 e1                                      mov r4, r0
00384ef8  58 00 9f e5                                      ldr r0, [pc, #0x58]
00384efc  58 50 9f e5                                      ldr r5, [pc, #0x58]
00384f00  00 00 8f e0                                      add r0, pc, r0
00384f04  82 7c fe eb                                      bl #0x324114
00384f08  10 30 94 e5                                      ldr r3, [r4, #0x10]
00384f0c  05 50 8f e0                                      add r5, pc, r5
00384f10  00 00 53 e3                                      cmp r3, #0
00384f14  0e 00 00 0a                                      beq #0x384f54
00384f18  40 30 9f e5                                      ldr r3, [pc, #0x40]
00384f1c  10 10 84 e2                                      add r1, r4, #0x10
00384f20  03 30 95 e7                                      ldr r3, [r5, r3]
00384f24  10 30 93 e5                                      ldr r3, [r3, #0x10]
00384f28  10 30 93 e5                                      ldr r3, [r3, #0x10]
00384f2c  e0 00 93 e5                                      ldr r0, [r3, #0xe0]
00384f30  df ff ff eb                                      bl #0x384eb4
00384f34  10 00 94 e5                                      ldr r0, [r4, #0x10]
00384f38  00 30 a0 e3                                      mov r3, #0
00384f3c  10 30 84 e5                                      str r3, [r4, #0x10]
00384f40  03 00 50 e1                                      cmp r0, r3
00384f44  00 00 00 0a                                      beq #0x384f4c
00384f48  8d 61 fe eb                                      bl #0x31d584
00384f4c  00 30 e0 e3                                      mvn r3, #0
00384f50  08 30 84 e5                                      str r3, [r4, #8]
00384f54  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00384f58  d8 ce 53 00 84 fb 60 00 f4 37 00 00              .byte 0xd8, 0xce, 0x53, 0x00, 0x84, 0xfb, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00384f64, declared_size=356, range_size=356, mode=arm
; class-group: GSInit
; alias: _ZN6GSInit16SwitchBackgroundEv
; demangled: GSInit::SwitchBackground()
; decoder-mode: arm
00384f64  70 40 2d e9                                      push {r4, r5, r6, lr}
00384f68  40 41 9f e5                                      ldr r4, [pc, #0x140]
00384f6c  40 51 9f e5                                      ldr r5, [pc, #0x140]
00384f70  10 d0 4d e2                                      sub sp, sp, #0x10
00384f74  04 40 8f e0                                      add r4, pc, r4
00384f78  05 00 94 e7                                      ldr r0, [r4, r5]
00384f7c  db ff ff eb                                      bl #0x384ef0
00384f80  30 31 9f e5                                      ldr r3, [pc, #0x130]
00384f84  03 20 94 e7                                      ldr r2, [r4, r3]
00384f88  10 30 92 e5                                      ldr r3, [r2, #0x10]
00384f8c  4c 00 92 e5                                      ldr r0, [r2, #0x4c]
00384f90  10 30 93 e5                                      ldr r3, [r3, #0x10]
00384f94  e0 60 93 e5                                      ldr r6, [r3, #0xe0]
00384f98  5d a1 03 eb                                      bl #0x46d514
00384f9c  04 00 50 e3                                      cmp r0, #4
00384fa0  2d 00 00 0a                                      beq #0x38505c
00384fa4  05 00 50 e3                                      cmp r0, #5
00384fa8  16 00 00 0a                                      beq #0x385008
00384fac  08 21 9f e5                                      ldr r2, [pc, #0x108]
00384fb0  04 00 8d e2                                      add r0, sp, #4
00384fb4  00 30 a0 e3                                      mov r3, #0
00384fb8  02 20 8f e0                                      add r2, pc, r2
00384fbc  06 10 a0 e1                                      mov r1, r6
00384fc0  92 a0 09 eb                                      bl #0x5ed210
00384fc4  04 30 9d e5                                      ldr r3, [sp, #4]
00384fc8  00 00 53 e3                                      cmp r3, #0
00384fcc  04 20 93 15                                      ldrne r2, [r3, #4]
00384fd0  01 20 82 12                                      addne r2, r2, #1
00384fd4  04 20 83 15                                      strne r2, [r3, #4]
00384fd8  05 20 94 e7                                      ldr r2, [r4, r5]
00384fdc  10 00 92 e5                                      ldr r0, [r2, #0x10]
00384fe0  10 30 82 e5                                      str r3, [r2, #0x10]
00384fe4  00 00 50 e3                                      cmp r0, #0
00384fe8  00 00 00 0a                                      beq #0x384ff0
00384fec  64 61 fe eb                                      bl #0x31d584
00384ff0  04 00 9d e5                                      ldr r0, [sp, #4]
00384ff4  00 00 50 e3                                      cmp r0, #0
00384ff8  00 00 00 0a                                      beq #0x385000
00384ffc  60 61 fe eb                                      bl #0x31d584
00385000  10 d0 8d e2                                      add sp, sp, #0x10
00385004  70 80 bd e8                                      pop {r4, r5, r6, pc}
00385008  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0038500c  08 00 8d e2                                      add r0, sp, #8
00385010  00 30 a0 e3                                      mov r3, #0
00385014  02 20 8f e0                                      add r2, pc, r2
00385018  06 10 a0 e1                                      mov r1, r6
0038501c  7b a0 09 eb                                      bl #0x5ed210
00385020  08 30 9d e5                                      ldr r3, [sp, #8]
00385024  00 00 53 e3                                      cmp r3, #0
00385028  04 20 93 15                                      ldrne r2, [r3, #4]
0038502c  01 20 82 12                                      addne r2, r2, #1
00385030  04 20 83 15                                      strne r2, [r3, #4]
00385034  05 20 94 e7                                      ldr r2, [r4, r5]
00385038  10 00 92 e5                                      ldr r0, [r2, #0x10]
0038503c  10 30 82 e5                                      str r3, [r2, #0x10]
00385040  00 00 50 e3                                      cmp r0, #0
00385044  00 00 00 0a                                      beq #0x38504c
00385048  4d 61 fe eb                                      bl #0x31d584
0038504c  08 00 9d e5                                      ldr r0, [sp, #8]
00385050  00 00 50 e3                                      cmp r0, #0
00385054  e8 ff ff 1a                                      bne #0x384ffc
00385058  e8 ff ff ea                                      b #0x385000
0038505c  60 20 9f e5                                      ldr r2, [pc, #0x60]
00385060  0c 00 8d e2                                      add r0, sp, #0xc
00385064  00 30 a0 e3                                      mov r3, #0
00385068  02 20 8f e0                                      add r2, pc, r2
0038506c  06 10 a0 e1                                      mov r1, r6
00385070  66 a0 09 eb                                      bl #0x5ed210
00385074  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00385078  00 00 53 e3                                      cmp r3, #0
0038507c  04 20 93 15                                      ldrne r2, [r3, #4]
00385080  01 20 82 12                                      addne r2, r2, #1
00385084  04 20 83 15                                      strne r2, [r3, #4]
00385088  05 20 94 e7                                      ldr r2, [r4, r5]
0038508c  10 00 92 e5                                      ldr r0, [r2, #0x10]
00385090  10 30 82 e5                                      str r3, [r2, #0x10]
00385094  00 00 50 e3                                      cmp r0, #0
00385098  00 00 00 0a                                      beq #0x3850a0
0038509c  38 61 fe eb                                      bl #0x31d584
003850a0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003850a4  00 00 50 e3                                      cmp r0, #0
003850a8  d3 ff ff 1a                                      bne #0x384ffc
003850ac  d3 ff ff ea                                      b #0x385000
; mapping-symbol data/literal pool
003850b0  1c fb 60 00 e8 13 00 00 f4 37 00 00 48 ce 53 00  .byte 0x1c, 0xfb, 0x60, 0x00, 0xe8, 0x13, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x48, 0xce, 0x53, 0x00
003850c0  14 ce 53 00 98 cd 53 00                          .byte 0x14, 0xce, 0x53, 0x00, 0x98, 0xcd, 0x53, 0x00

; FUNCTION 0x003850c8, declared_size=2084, range_size=2084, mode=arm
; class-group: GSInit
; alias: _ZN6GSInit6UpdateEP12StateMachined
; demangled: GSInit::Update(StateMachine*, double)
; decoder-mode: arm
003850c8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003850cc  a0 57 9f e5                                      ldr r5, [pc, #0x7a0]
003850d0  04 30 90 e5                                      ldr r3, [r0, #4]
003850d4  24 d0 4d e2                                      sub sp, sp, #0x24
003850d8  00 40 a0 e1                                      mov r4, r0
003850dc  05 50 8f e0                                      add r5, pc, r5
003850e0  0e 00 53 e3                                      cmp r3, #0xe
003850e4  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003850e8  c2 00 00 ea                                      b #0x3853f8
003850ec  bc 00 00 ea                                      b #0x3853e4
003850f0  b2 00 00 ea                                      b #0x3853c0
003850f4  98 00 00 ea                                      b #0x38535c
003850f8  7e 00 00 ea                                      b #0x3852f8
003850fc  71 00 00 ea                                      b #0x3852c8
00385100  5a 00 00 ea                                      b #0x385270
00385104  52 00 00 ea                                      b #0x385254
00385108  29 00 00 ea                                      b #0x3851b4
0038510c  25 00 00 ea                                      b #0x3851a8
00385110  04 00 00 ea                                      b #0x385128
00385114  07 00 00 ea                                      b #0x385138
00385118  14 00 00 ea                                      b #0x385170
0038511c  08 01 00 ea                                      b #0x385544
00385120  f0 00 00 ea                                      b #0x3854e8
00385124  b5 00 00 ea                                      b #0x385400
00385128  48 37 9f e5                                      ldr r3, [pc, #0x748]
0038512c  03 30 95 e7                                      ldr r3, [r5, r3]
00385130  00 00 93 e5                                      ldr r0, [r3]
00385134  6a 9c ff eb                                      bl #0x36c2e4
00385138  3c 37 9f e5                                      ldr r3, [pc, #0x73c]
0038513c  03 30 95 e7                                      ldr r3, [r5, r3]
00385140  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
00385144  34 50 93 e5                                      ldr r5, [r3, #0x34]
00385148  f1 a0 03 eb                                      bl #0x46d514
0038514c  00 20 a0 e3                                      mov r2, #0
00385150  00 10 a0 e1                                      mov r1, r0
00385154  05 00 a0 e1                                      mov r0, r5
00385158  4d 0a 06 eb                                      bl #0x507a94
0038515c  04 30 94 e5                                      ldr r3, [r4, #4]
00385160  01 30 83 e2                                      add r3, r3, #1
00385164  04 30 84 e5                                      str r3, [r4, #4]
00385168  24 d0 8d e2                                      add sp, sp, #0x24
0038516c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00385170  d2 ec ff eb                                      bl #0x3804c0
00385174  04 37 9f e5                                      ldr r3, [pc, #0x704]
00385178  03 50 95 e7                                      ldr r5, [r5, r3]
0038517c  00 30 95 e5                                      ldr r3, [r5]
00385180  03 00 a0 e1                                      mov r0, r3
00385184  00 30 93 e5                                      ldr r3, [r3]
00385188  0f e0 a0 e1                                      mov lr, pc
0038518c  00 f0 93 e5                                      ldr pc, [r3]
00385190  00 00 95 e5                                      ldr r0, [r5]
00385194  e0 f0 ff eb                                      bl #0x38151c
00385198  04 30 94 e5                                      ldr r3, [r4, #4]
0038519c  01 30 83 e2                                      add r3, r3, #1
003851a0  04 30 84 e5                                      str r3, [r4, #4]
003851a4  ef ff ff ea                                      b #0x385168
003851a8  09 30 a0 e3                                      mov r3, #9
003851ac  04 30 80 e5                                      str r3, [r0, #4]
003851b0  ec ff ff ea                                      b #0x385168
003851b4  c0 36 9f e5                                      ldr r3, [pc, #0x6c0]
003851b8  03 20 95 e7                                      ldr r2, [r5, r3]
003851bc  10 30 92 e5                                      ldr r3, [r2, #0x10]
003851c0  4c 00 92 e5                                      ldr r0, [r2, #0x4c]
003851c4  10 30 93 e5                                      ldr r3, [r3, #0x10]
003851c8  e0 60 93 e5                                      ldr r6, [r3, #0xe0]
003851cc  d0 a0 03 eb                                      bl #0x46d514
003851d0  00 70 a0 e1                                      mov r7, r0
003851d4  00 10 a0 e1                                      mov r1, r0
003851d8  a4 06 9f e5                                      ldr r0, [pc, #0x6a4]
003851dc  00 00 8f e0                                      add r0, pc, r0
003851e0  cb 7b fe eb                                      bl #0x324114
003851e4  04 00 57 e3                                      cmp r7, #4
003851e8  14 01 00 0a                                      beq #0x385640
003851ec  05 00 57 e3                                      cmp r7, #5
003851f0  03 01 00 0a                                      beq #0x385604
003851f4  8c 36 9f e5                                      ldr r3, [pc, #0x68c]
003851f8  03 30 95 e7                                      ldr r3, [r5, r3]
003851fc  00 30 93 e5                                      ldr r3, [r3]
00385200  32 0e 53 e3                                      cmp r3, #0x320
00385204  8b 01 00 0a                                      beq #0x385838
00385208  56 23 00 e3                                      movw r2, #0x356
0038520c  02 00 53 e1                                      cmp r3, r2
00385210  69 01 00 0a                                      beq #0x3857bc
00385214  70 26 9f e5                                      ldr r2, [pc, #0x670]
00385218  0c 50 8d e2                                      add r5, sp, #0xc
0038521c  06 10 a0 e1                                      mov r1, r6
00385220  02 20 8f e0                                      add r2, pc, r2
00385224  05 00 a0 e1                                      mov r0, r5
00385228  00 30 a0 e3                                      mov r3, #0
0038522c  f7 9f 09 eb                                      bl #0x5ed210
00385230  05 10 a0 e1                                      mov r1, r5
00385234  10 00 84 e2                                      add r0, r4, #0x10
00385238  ee fe ff eb                                      bl #0x384df8
0038523c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00385240  00 00 50 e3                                      cmp r0, #0
00385244  00 00 00 0a                                      beq #0x38524c
00385248  cd 60 fe eb                                      bl #0x31d584
0038524c  04 30 94 e5                                      ldr r3, [r4, #4]
00385250  25 00 00 ea                                      b #0x3852ec
00385254  34 36 9f e5                                      ldr r3, [pc, #0x634]
00385258  03 30 95 e7                                      ldr r3, [r5, r3]
0038525c  00 30 d3 e5                                      ldrb r3, [r3]
00385260  00 00 53 e3                                      cmp r3, #0
00385264  07 30 a0 13                                      movne r3, #7
00385268  04 30 80 15                                      strne r3, [r0, #4]
0038526c  bd ff ff ea                                      b #0x385168
00385270  04 36 9f e5                                      ldr r3, [pc, #0x604]
00385274  03 60 95 e7                                      ldr r6, [r5, r3]
00385278  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
0038527c  a4 a0 03 eb                                      bl #0x46d514
00385280  04 00 50 e3                                      cmp r0, #4
00385284  ca 00 00 1a                                      bne #0x3855b4
00385288  f8 35 9f e5                                      ldr r3, [pc, #0x5f8]
0038528c  03 30 95 e7                                      ldr r3, [r5, r3]
00385290  00 30 93 e5                                      ldr r3, [r3]
00385294  32 0e 53 e3                                      cmp r3, #0x320
00385298  17 01 00 0a                                      beq #0x3856fc
0038529c  56 23 00 e3                                      movw r2, #0x356
003852a0  02 00 53 e1                                      cmp r3, r2
003852a4  0c 01 00 0a                                      beq #0x3856dc
003852a8  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
003852ac  98 a0 03 eb                                      bl #0x46d514
003852b0  00 10 a0 e1                                      mov r1, r0
003852b4  d8 05 9f e5                                      ldr r0, [pc, #0x5d8]
003852b8  00 00 8f e0                                      add r0, pc, r0
003852bc  3a b2 06 eb                                      bl #0x531bac
003852c0  04 30 94 e5                                      ldr r3, [r4, #4]
003852c4  08 00 00 ea                                      b #0x3852ec
003852c8  ac 35 9f e5                                      ldr r3, [pc, #0x5ac]
003852cc  03 30 95 e7                                      ldr r3, [r5, r3]
003852d0  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
003852d4  28 10 d0 e5                                      ldrb r1, [r0, #0x28]
003852d8  00 00 51 e3                                      cmp r1, #0
003852dc  04 30 a0 13                                      movne r3, #4
003852e0  01 00 00 1a                                      bne #0x3852ec
003852e4  a6 a4 03 eb                                      bl #0x46e584
003852e8  04 30 94 e5                                      ldr r3, [r4, #4]
003852ec  01 30 83 e2                                      add r3, r3, #1
003852f0  04 30 84 e5                                      str r3, [r4, #4]
003852f4  9b ff ff ea                                      b #0x385168
003852f8  7c 65 9f e5                                      ldr r6, [pc, #0x57c]
003852fc  06 50 95 e7                                      ldr r5, [r5, r6]
00385300  10 30 95 e5                                      ldr r3, [r5, #0x10]
00385304  20 30 93 e5                                      ldr r3, [r3, #0x20]
00385308  03 00 a0 e1                                      mov r0, r3
0038530c  00 30 93 e5                                      ldr r3, [r3]
00385310  0f e0 a0 e1                                      mov lr, pc
00385314  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00385318  00 60 a0 e1                                      mov r6, r0
0038531c  08 00 00 ea                                      b #0x385344
00385320  10 30 95 e5                                      ldr r3, [r5, #0x10]
00385324  20 30 93 e5                                      ldr r3, [r3, #0x20]
00385328  03 00 a0 e1                                      mov r0, r3
0038532c  00 30 93 e5                                      ldr r3, [r3]
00385330  0f e0 a0 e1                                      mov lr, pc
00385334  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00385338  00 00 66 e0                                      rsb r0, r6, r0
0038533c  31 00 50 e3                                      cmp r0, #0x31
00385340  88 ff ff ca                                      bgt #0x385168
00385344  30 00 95 e5                                      ldr r0, [r5, #0x30]
00385348  b3 93 04 eb                                      bl #0x4aa21c
0038534c  00 00 50 e3                                      cmp r0, #0
00385350  f2 ff ff 0a                                      beq #0x385320
00385354  04 30 94 e5                                      ldr r3, [r4, #4]
00385358  e3 ff ff ea                                      b #0x3852ec
0038535c  18 65 9f e5                                      ldr r6, [pc, #0x518]
00385360  06 50 95 e7                                      ldr r5, [r5, r6]
00385364  10 30 95 e5                                      ldr r3, [r5, #0x10]
00385368  20 30 93 e5                                      ldr r3, [r3, #0x20]
0038536c  03 00 a0 e1                                      mov r0, r3
00385370  00 30 93 e5                                      ldr r3, [r3]
00385374  0f e0 a0 e1                                      mov lr, pc
00385378  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0038537c  00 60 a0 e1                                      mov r6, r0
00385380  08 00 00 ea                                      b #0x3853a8
00385384  10 30 95 e5                                      ldr r3, [r5, #0x10]
00385388  20 30 93 e5                                      ldr r3, [r3, #0x20]
0038538c  03 00 a0 e1                                      mov r0, r3
00385390  00 30 93 e5                                      ldr r3, [r3]
00385394  0f e0 a0 e1                                      mov lr, pc
00385398  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0038539c  00 00 66 e0                                      rsb r0, r6, r0
003853a0  31 00 50 e3                                      cmp r0, #0x31
003853a4  6f ff ff ca                                      bgt #0x385168
003853a8  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
003853ac  d5 f8 04 eb                                      bl #0x4c3708
003853b0  00 00 50 e3                                      cmp r0, #0
003853b4  f2 ff ff 0a                                      beq #0x385384
003853b8  04 30 94 e5                                      ldr r3, [r4, #4]
003853bc  ca ff ff ea                                      b #0x3852ec
003853c0  b4 34 9f e5                                      ldr r3, [pc, #0x4b4]
003853c4  01 10 a0 e3                                      mov r1, #1
003853c8  03 30 95 e7                                      ldr r3, [r5, r3]
003853cc  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
003853d0  6b a4 03 eb                                      bl #0x46e584
003853d4  04 30 94 e5                                      ldr r3, [r4, #4]
003853d8  01 30 83 e2                                      add r3, r3, #1
003853dc  04 30 84 e5                                      str r3, [r4, #4]
003853e0  60 ff ff ea                                      b #0x385168
003853e4  a7 9d ff eb                                      bl #0x36ca88
003853e8  04 30 94 e5                                      ldr r3, [r4, #4]
003853ec  01 30 83 e2                                      add r3, r3, #1
003853f0  04 30 84 e5                                      str r3, [r4, #4]
003853f4  5b ff ff ea                                      b #0x385168
003853f8  00 00 e0 e3                                      mvn r0, #0
003853fc  91 22 fe eb                                      bl #0x30de48
00385400  a1 9d 02 eb                                      bl #0x42ca8c
00385404  70 64 9f e5                                      ldr r6, [pc, #0x470]
00385408  00 a0 a0 e1                                      mov sl, r0
0038540c  ca a0 02 eb                                      bl #0x42d73c
00385410  06 70 95 e7                                      ldr r7, [r5, r6]
00385414  01 10 a0 e3                                      mov r1, #1
00385418  cc 20 97 e5                                      ldr r2, [r7, #0xcc]
0038541c  d0 30 97 e5                                      ldr r3, [r7, #0xd0]
00385420  ed 10 c7 e5                                      strb r1, [r7, #0xed]
00385424  03 00 52 e1                                      cmp r2, r3
00385428  93 00 00 0a                                      beq #0x38567c
0038542c  0d 00 a0 e1                                      mov r0, sp
00385430  00 10 a0 e3                                      mov r1, #0
00385434  00 7b 03 eb                                      bl #0x46403c
00385438  d0 00 97 e5                                      ldr r0, [r7, #0xd0]
0038543c  d6 b0 fe eb                                      bl #0x33179c
00385440  00 00 50 e3                                      cmp r0, #0
00385444  0d 80 a0 e1                                      mov r8, sp
00385448  97 00 00 1a                                      bne #0x3856ac
0038544c  44 14 9f e5                                      ldr r1, [pc, #0x444]
00385450  0a 00 a0 e1                                      mov r0, sl
00385454  40 74 9f e5                                      ldr r7, [pc, #0x440]
00385458  01 10 8f e0                                      add r1, pc, r1
0038545c  63 9f 02 eb                                      bl #0x42d1f0
00385460  07 30 95 e7                                      ldr r3, [r5, r7]
00385464  0c 00 83 e5                                      str r0, [r3, #0xc]
00385468  0d 00 a0 e1                                      mov r0, sp
0038546c  af 3a fe eb                                      bl #0x313f30
00385470  88 6e fe eb                                      bl #0x320e98
00385474  06 60 95 e7                                      ldr r6, [r5, r6]
00385478  00 20 a0 e3                                      mov r2, #0
0038547c  26 20 c0 e5                                      strb r2, [r0, #0x26]
00385480  07 10 95 e7                                      ldr r1, [r5, r7]
00385484  18 00 96 e5                                      ldr r0, [r6, #0x18]
00385488  be d3 fe eb                                      bl #0x33a388
0038548c  0c 14 9f e5                                      ldr r1, [pc, #0x40c]
00385490  06 00 a0 e1                                      mov r0, r6
00385494  01 70 a0 e3                                      mov r7, #1
00385498  01 10 8f e0                                      add r1, pc, r1
0038549c  68 6e fe eb                                      bl #0x320e44
003854a0  00 10 a0 e1                                      mov r1, r0
003854a4  06 00 a0 e1                                      mov r0, r6
003854a8  a6 68 fe eb                                      bl #0x31f748
003854ac  15 9a fe eb                                      bl #0x32bd08
003854b0  0e 70 c0 e5                                      strb r7, [r0, #0xe]
003854b4  06 00 a0 e1                                      mov r0, r6
003854b8  34 6c fe eb                                      bl #0x320590
003854bc  00 00 50 e3                                      cmp r0, #0
003854c0  7f 00 00 1a                                      bne #0x3856c4
003854c4  d8 33 9f e5                                      ldr r3, [pc, #0x3d8]
003854c8  03 30 95 e7                                      ldr r3, [r5, r3]
003854cc  00 30 d3 e5                                      ldrb r3, [r3]
003854d0  00 00 53 e3                                      cmp r3, #0
003854d4  5c ff ff 0a                                      beq #0x38524c
003854d8  00 00 a0 e3                                      mov r0, #0
003854dc  7a 5a 14 eb                                      bl #0x89becc
003854e0  04 30 94 e5                                      ldr r3, [r4, #4]
003854e4  80 ff ff ea                                      b #0x3852ec
003854e8  f7 16 0a eb                                      bl #0x60b0cc
003854ec  88 33 9f e5                                      ldr r3, [pc, #0x388]
003854f0  03 60 95 e7                                      ldr r6, [r5, r3]
003854f4  ac 33 9f e5                                      ldr r3, [pc, #0x3ac]
003854f8  03 10 95 e7                                      ldr r1, [r5, r3]
003854fc  a8 33 9f e5                                      ldr r3, [pc, #0x3a8]
00385500  00 00 81 e5                                      str r0, [r1]
00385504  03 20 95 e7                                      ldr r2, [r5, r3]
00385508  10 30 96 e5                                      ldr r3, [r6, #0x10]
0038550c  00 10 a0 e3                                      mov r1, #0
00385510  00 10 82 e5                                      str r1, [r2]
00385514  20 30 93 e5                                      ldr r3, [r3, #0x20]
00385518  03 00 a0 e1                                      mov r0, r3
0038551c  00 30 93 e5                                      ldr r3, [r3]
00385520  0f e0 a0 e1                                      mov lr, pc
00385524  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00385528  1e 30 a0 e3                                      mov r3, #0x1e
0038552c  70 00 86 e5                                      str r0, [r6, #0x70]
00385530  6c 30 86 e5                                      str r3, [r6, #0x6c]
00385534  06 00 a0 e1                                      mov r0, r6
00385538  19 6e fe eb                                      bl #0x320da4
0038553c  04 30 94 e5                                      ldr r3, [r4, #4]
00385540  69 ff ff ea                                      b #0x3852ec
00385544  50 9d 02 eb                                      bl #0x42ca8c
00385548  2c 63 9f e5                                      ldr r6, [pc, #0x32c]
0038554c  00 70 a0 e1                                      mov r7, r0
00385550  06 30 95 e7                                      ldr r3, [r5, r6]
00385554  10 30 93 e5                                      ldr r3, [r3, #0x10]
00385558  20 30 93 e5                                      ldr r3, [r3, #0x20]
0038555c  03 00 a0 e1                                      mov r0, r3
00385560  00 30 93 e5                                      ldr r3, [r3]
00385564  0f e0 a0 e1                                      mov lr, pc
00385568  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0038556c  00 80 a0 e1                                      mov r8, r0
00385570  09 00 00 ea                                      b #0x38559c
00385574  06 30 95 e7                                      ldr r3, [r5, r6]
00385578  10 30 93 e5                                      ldr r3, [r3, #0x10]
0038557c  20 30 93 e5                                      ldr r3, [r3, #0x20]
00385580  03 00 a0 e1                                      mov r0, r3
00385584  00 30 93 e5                                      ldr r3, [r3]
00385588  0f e0 a0 e1                                      mov lr, pc
0038558c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00385590  00 00 68 e0                                      rsb r0, r8, r0
00385594  31 00 50 e3                                      cmp r0, #0x31
00385598  f2 fe ff ca                                      bgt #0x385168
0038559c  07 00 a0 e1                                      mov r0, r7
003855a0  57 a7 02 eb                                      bl #0x42f304
003855a4  00 00 50 e3                                      cmp r0, #0
003855a8  f1 ff ff 0a                                      beq #0x385574
003855ac  04 30 94 e5                                      ldr r3, [r4, #4]
003855b0  4d ff ff ea                                      b #0x3852ec
003855b4  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
003855b8  d5 9f 03 eb                                      bl #0x46d514
003855bc  05 00 50 e3                                      cmp r0, #5
003855c0  5d 00 00 0a                                      beq #0x38573c
003855c4  bc 32 9f e5                                      ldr r3, [pc, #0x2bc]
003855c8  03 30 95 e7                                      ldr r3, [r5, r3]
003855cc  00 30 93 e5                                      ldr r3, [r3]
003855d0  32 0e 53 e3                                      cmp r3, #0x320
003855d4  70 00 00 0a                                      beq #0x38579c
003855d8  56 23 00 e3                                      movw r2, #0x356
003855dc  02 00 53 e1                                      cmp r3, r2
003855e0  65 00 00 0a                                      beq #0x38577c
003855e4  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
003855e8  c9 9f 03 eb                                      bl #0x46d514
003855ec  00 10 a0 e1                                      mov r1, r0
003855f0  b8 02 9f e5                                      ldr r0, [pc, #0x2b8]
003855f4  00 00 8f e0                                      add r0, pc, r0
003855f8  6b b1 06 eb                                      bl #0x531bac
003855fc  04 30 94 e5                                      ldr r3, [r4, #4]
00385600  39 ff ff ea                                      b #0x3852ec
00385604  a8 22 9f e5                                      ldr r2, [pc, #0x2a8]
00385608  18 50 8d e2                                      add r5, sp, #0x18
0038560c  06 10 a0 e1                                      mov r1, r6
00385610  02 20 8f e0                                      add r2, pc, r2
00385614  05 00 a0 e1                                      mov r0, r5
00385618  00 30 a0 e3                                      mov r3, #0
0038561c  fb 9e 09 eb                                      bl #0x5ed210
00385620  05 10 a0 e1                                      mov r1, r5
00385624  10 00 84 e2                                      add r0, r4, #0x10
00385628  f2 fd ff eb                                      bl #0x384df8
0038562c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00385630  00 00 50 e3                                      cmp r0, #0
00385634  04 ff ff 0a                                      beq #0x38524c
00385638  d1 5f fe eb                                      bl #0x31d584
0038563c  02 ff ff ea                                      b #0x38524c
00385640  70 22 9f e5                                      ldr r2, [pc, #0x270]
00385644  1c 50 8d e2                                      add r5, sp, #0x1c
00385648  06 10 a0 e1                                      mov r1, r6
0038564c  02 20 8f e0                                      add r2, pc, r2
00385650  05 00 a0 e1                                      mov r0, r5
00385654  00 30 a0 e3                                      mov r3, #0
00385658  ec 9e 09 eb                                      bl #0x5ed210
0038565c  05 10 a0 e1                                      mov r1, r5
00385660  10 00 84 e2                                      add r0, r4, #0x10
00385664  e3 fd ff eb                                      bl #0x384df8
00385668  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0038566c  00 00 50 e3                                      cmp r0, #0
00385670  f5 fe ff 0a                                      beq #0x38524c
00385674  c2 5f fe eb                                      bl #0x31d584
00385678  f3 fe ff ea                                      b #0x38524c
0038567c  4c 30 97 e5                                      ldr r3, [r7, #0x4c]
00385680  37 30 d3 e5                                      ldrb r3, [r3, #0x37]
00385684  00 00 53 e3                                      cmp r3, #0
00385688  23 00 00 0a                                      beq #0x38571c
0038568c  28 12 9f e5                                      ldr r1, [pc, #0x228]
00385690  0a 00 a0 e1                                      mov r0, sl
00385694  00 72 9f e5                                      ldr r7, [pc, #0x200]
00385698  01 10 8f e0                                      add r1, pc, r1
0038569c  d3 9e 02 eb                                      bl #0x42d1f0
003856a0  07 30 95 e7                                      ldr r3, [r5, r7]
003856a4  0c 00 83 e5                                      str r0, [r3, #0xc]
003856a8  70 ff ff ea                                      b #0x385470
003856ac  04 30 94 e5                                      ldr r3, [r4, #4]
003856b0  0d 00 a0 e1                                      mov r0, sp
003856b4  01 30 83 e2                                      add r3, r3, #1
003856b8  04 30 84 e5                                      str r3, [r4, #4]
003856bc  1b 3a fe eb                                      bl #0x313f30
003856c0  a8 fe ff ea                                      b #0x385168
003856c4  f4 31 9f e5                                      ldr r3, [pc, #0x1f4]
003856c8  03 30 95 e7                                      ldr r3, [r5, r3]
003856cc  03 00 a0 e1                                      mov r0, r3
003856d0  05 70 c3 e5                                      strb r7, [r3, #5]
003856d4  92 a3 06 eb                                      bl #0x52e524
003856d8  79 ff ff ea                                      b #0x3854c4
003856dc  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
003856e0  8b 9f 03 eb                                      bl #0x46d514
003856e4  00 10 a0 e1                                      mov r1, r0
003856e8  d4 01 9f e5                                      ldr r0, [pc, #0x1d4]
003856ec  00 00 8f e0                                      add r0, pc, r0
003856f0  2d b1 06 eb                                      bl #0x531bac
003856f4  04 30 94 e5                                      ldr r3, [r4, #4]
003856f8  fb fe ff ea                                      b #0x3852ec
003856fc  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00385700  83 9f 03 eb                                      bl #0x46d514
00385704  00 10 a0 e1                                      mov r1, r0
00385708  b8 01 9f e5                                      ldr r0, [pc, #0x1b8]
0038570c  00 00 8f e0                                      add r0, pc, r0
00385710  25 b1 06 eb                                      bl #0x531bac
00385714  04 30 94 e5                                      ldr r3, [r4, #4]
00385718  f3 fe ff ea                                      b #0x3852ec
0038571c  a8 11 9f e5                                      ldr r1, [pc, #0x1a8]
00385720  0a 00 a0 e1                                      mov r0, sl
00385724  70 71 9f e5                                      ldr r7, [pc, #0x170]
00385728  01 10 8f e0                                      add r1, pc, r1
0038572c  af 9e 02 eb                                      bl #0x42d1f0
00385730  07 30 95 e7                                      ldr r3, [r5, r7]
00385734  0c 00 83 e5                                      str r0, [r3, #0xc]
00385738  4c ff ff ea                                      b #0x385470
0038573c  44 31 9f e5                                      ldr r3, [pc, #0x144]
00385740  03 30 95 e7                                      ldr r3, [r5, r3]
00385744  00 30 93 e5                                      ldr r3, [r3]
00385748  32 0e 53 e3                                      cmp r3, #0x320
0038574c  31 00 00 0a                                      beq #0x385818
00385750  56 23 00 e3                                      movw r2, #0x356
00385754  02 00 53 e1                                      cmp r3, r2
00385758  26 00 00 0a                                      beq #0x3857f8
0038575c  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00385760  6b 9f 03 eb                                      bl #0x46d514
00385764  00 10 a0 e1                                      mov r1, r0
00385768  60 01 9f e5                                      ldr r0, [pc, #0x160]
0038576c  00 00 8f e0                                      add r0, pc, r0
00385770  0d b1 06 eb                                      bl #0x531bac
00385774  04 30 94 e5                                      ldr r3, [r4, #4]
00385778  db fe ff ea                                      b #0x3852ec
0038577c  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00385780  63 9f 03 eb                                      bl #0x46d514
00385784  00 10 a0 e1                                      mov r1, r0
00385788  44 01 9f e5                                      ldr r0, [pc, #0x144]
0038578c  00 00 8f e0                                      add r0, pc, r0
00385790  05 b1 06 eb                                      bl #0x531bac
00385794  04 30 94 e5                                      ldr r3, [r4, #4]
00385798  d3 fe ff ea                                      b #0x3852ec
0038579c  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
003857a0  5b 9f 03 eb                                      bl #0x46d514
003857a4  00 10 a0 e1                                      mov r1, r0
003857a8  28 01 9f e5                                      ldr r0, [pc, #0x128]
003857ac  00 00 8f e0                                      add r0, pc, r0
003857b0  fd b0 06 eb                                      bl #0x531bac
003857b4  04 30 94 e5                                      ldr r3, [r4, #4]
003857b8  cb fe ff ea                                      b #0x3852ec
003857bc  18 21 9f e5                                      ldr r2, [pc, #0x118]
003857c0  10 50 8d e2                                      add r5, sp, #0x10
003857c4  06 10 a0 e1                                      mov r1, r6
003857c8  02 20 8f e0                                      add r2, pc, r2
003857cc  05 00 a0 e1                                      mov r0, r5
003857d0  00 30 a0 e3                                      mov r3, #0
003857d4  8d 9e 09 eb                                      bl #0x5ed210
003857d8  05 10 a0 e1                                      mov r1, r5
003857dc  10 00 84 e2                                      add r0, r4, #0x10
003857e0  84 fd ff eb                                      bl #0x384df8
003857e4  10 00 9d e5                                      ldr r0, [sp, #0x10]
003857e8  00 00 50 e3                                      cmp r0, #0
003857ec  96 fe ff 0a                                      beq #0x38524c
003857f0  63 5f fe eb                                      bl #0x31d584
003857f4  94 fe ff ea                                      b #0x38524c
003857f8  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
003857fc  44 9f 03 eb                                      bl #0x46d514
00385800  00 10 a0 e1                                      mov r1, r0
00385804  d4 00 9f e5                                      ldr r0, [pc, #0xd4]
00385808  00 00 8f e0                                      add r0, pc, r0
0038580c  e6 b0 06 eb                                      bl #0x531bac
00385810  04 30 94 e5                                      ldr r3, [r4, #4]
00385814  b4 fe ff ea                                      b #0x3852ec
00385818  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
0038581c  3c 9f 03 eb                                      bl #0x46d514
00385820  00 10 a0 e1                                      mov r1, r0
00385824  b8 00 9f e5                                      ldr r0, [pc, #0xb8]
00385828  00 00 8f e0                                      add r0, pc, r0
0038582c  de b0 06 eb                                      bl #0x531bac
00385830  04 30 94 e5                                      ldr r3, [r4, #4]
00385834  ac fe ff ea                                      b #0x3852ec
00385838  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0038583c  14 50 8d e2                                      add r5, sp, #0x14
00385840  06 10 a0 e1                                      mov r1, r6
00385844  02 20 8f e0                                      add r2, pc, r2
00385848  05 00 a0 e1                                      mov r0, r5
0038584c  00 30 a0 e3                                      mov r3, #0
00385850  6e 9e 09 eb                                      bl #0x5ed210
00385854  05 10 a0 e1                                      mov r1, r5
00385858  10 00 84 e2                                      add r0, r4, #0x10
0038585c  65 fd ff eb                                      bl #0x384df8
00385860  14 00 9d e5                                      ldr r0, [sp, #0x14]
00385864  00 00 50 e3                                      cmp r0, #0
00385868  77 fe ff 0a                                      beq #0x38524c
0038586c  44 5f fe eb                                      bl #0x31d584
00385870  75 fe ff ea                                      b #0x38524c
; mapping-symbol data/literal pool
00385874  b4 f9 60 00 a4 0d 00 00 f4 37 00 00 70 1d 00 00  .byte 0xb4, 0xf9, 0x60, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x70, 0x1d, 0x00, 0x00
00385884  a4 cc 53 00 c4 25 00 00 e0 cb 53 00 28 49 00 00  .byte 0xa4, 0xcc, 0x53, 0x00, 0xc4, 0x25, 0x00, 0x00, 0xe0, 0xcb, 0x53, 0x00, 0x28, 0x49, 0x00, 0x00
00385894  98 cb 53 00 d8 ca 53 00 54 21 00 00 b8 ca 53 00  .byte 0x98, 0xcb, 0x53, 0x00, 0xd8, 0xca, 0x53, 0x00, 0x54, 0x21, 0x00, 0x00, 0xb8, 0xca, 0x53, 0x00
003858a4  0c 21 00 00 94 0c 00 00 10 0b 00 00 7c c8 53 00  .byte 0x0c, 0x21, 0x00, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x10, 0x0b, 0x00, 0x00, 0x7c, 0xc8, 0x53, 0x00
003858b4  18 c8 53 00 6c c8 53 00 a8 c8 53 00 74 14 00 00  .byte 0x18, 0xc8, 0x53, 0x00, 0x6c, 0xc8, 0x53, 0x00, 0xa8, 0xc8, 0x53, 0x00, 0x74, 0x14, 0x00, 0x00
003858c4  64 c7 53 00 44 c7 53 00 08 c8 53 00 f4 c6 53 00  .byte 0x64, 0xc7, 0x53, 0x00, 0x44, 0xc7, 0x53, 0x00, 0x08, 0xc8, 0x53, 0x00, 0xf4, 0xc6, 0x53, 0x00
003858d4  e4 c6 53 00 c4 c6 53 00 40 c7 53 00 58 c6 53 00  .byte 0xe4, 0xc6, 0x53, 0x00, 0xc4, 0xc6, 0x53, 0x00, 0x40, 0xc7, 0x53, 0x00, 0x58, 0xc6, 0x53, 0x00
003858e4  38 c6 53 00 9c c6 53 00                          .byte 0x38, 0xc6, 0x53, 0x00, 0x9c, 0xc6, 0x53, 0x00
