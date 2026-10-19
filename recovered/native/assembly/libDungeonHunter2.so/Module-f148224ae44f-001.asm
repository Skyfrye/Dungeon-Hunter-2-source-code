; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00388708, declared_size=8, range_size=8, mode=arm
; class-group: Module
; alias: _ZThn36_N6Module9SerializeEP11IStreamBase
; demangled: non-virtual thunk to Module::Serialize(IStreamBase*)
; decoder-mode: arm
00388708  24 00 40 e2                                      sub r0, r0, #0x24
0038870c  ff ff ff ea                                      b #0x388710

; FUNCTION 0x00388710, declared_size=32, range_size=32, mode=arm
; class-group: Module
; alias: _ZN6Module9SerializeEP11IStreamBase
; demangled: Module::Serialize(IStreamBase*)
; decoder-mode: arm
00388710  70 40 2d e9                                      push {r4, r5, r6, lr}
00388714  00 40 a0 e1                                      mov r4, r0
00388718  01 50 a0 e1                                      mov r5, r1
0038871c  b0 0c 00 eb                                      bl #0x38b9e4
00388720  05 00 a0 e1                                      mov r0, r5
00388724  ff 1f 84 e2                                      add r1, r4, #0x3fc
00388728  70 40 bd e8                                      pop {r4, r5, r6, lr}
0038872c  81 d6 fe ea                                      b #0x33e138

; FUNCTION 0x00388b20, declared_size=312, range_size=312, mode=arm
; class-group: Module
; alias: _ZN6Module8InitPostEv
; demangled: Module::InitPost()
; decoder-mode: arm
00388b20  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00388b24  14 41 9f e5                                      ldr r4, [pc, #0x114]
00388b28  14 51 9f e5                                      ldr r5, [pc, #0x114]
00388b2c  54 d0 4d e2                                      sub sp, sp, #0x54
00388b30  04 40 8f e0                                      add r4, pc, r4
00388b34  05 30 94 e7                                      ldr r3, [r4, r5]
00388b38  00 80 a0 e1                                      mov r8, r0
00388b3c  00 30 93 e5                                      ldr r3, [r3]
00388b40  4c 30 8d e5                                      str r3, [sp, #0x4c]
00388b44  d3 ff ff eb                                      bl #0x388a98
00388b48  d8 32 98 e5                                      ldr r3, [r8, #0x2d8]
00388b4c  00 00 53 e3                                      cmp r3, #0
00388b50  22 00 00 0a                                      beq #0x388be0
00388b54  08 30 93 e5                                      ldr r3, [r3, #8]
00388b58  e8 70 9f e5                                      ldr r7, [pc, #0xe8]
00388b5c  18 a0 8d e2                                      add sl, sp, #0x18
00388b60  03 00 a0 e1                                      mov r0, r3
00388b64  00 30 93 e5                                      ldr r3, [r3]
00388b68  0f e0 a0 e1                                      mov lr, pc
00388b6c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00388b70  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
00388b74  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
00388b78  07 70 8f e0                                      add r7, pc, r7
00388b7c  03 30 94 e7                                      ldr r3, [r4, r3]
00388b80  0c 20 97 e5                                      ldr r2, [r7, #0xc]
00388b84  01 10 8f e0                                      add r1, pc, r1
00388b88  00 b0 a0 e1                                      mov fp, r0
00388b8c  0a 00 a0 e1                                      mov r0, sl
00388b90  38 90 93 e5                                      ldr sb, [r3, #0x38]
00388b94  d2 17 fe eb                                      bl #0x30eae4
00388b98  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00388b9c  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
00388ba0  0c 60 8d e2                                      add r6, sp, #0xc
00388ba4  01 30 83 e2                                      add r3, r3, #1
00388ba8  0c 30 87 e5                                      str r3, [r7, #0xc]
00388bac  01 c0 a0 e3                                      mov ip, #1
00388bb0  00 70 a0 e3                                      mov r7, #0
00388bb4  02 20 8f e0                                      add r2, pc, r2
00388bb8  0a 30 a0 e1                                      mov r3, sl
00388bbc  09 10 a0 e1                                      mov r1, sb
00388bc0  06 00 a0 e1                                      mov r0, r6
00388bc4  80 10 8d e8                                      stm sp, {r7, ip}
00388bc8  d5 0a ff eb                                      bl #0x34b724
00388bcc  07 10 a0 e1                                      mov r1, r7
00388bd0  06 00 a0 e1                                      mov r0, r6
00388bd4  79 dc fe eb                                      bl #0x33fdc0
00388bd8  00 70 50 e2                                      subs r7, r0, #0
00388bdc  06 00 00 1a                                      bne #0x388bfc
00388be0  05 30 94 e7                                      ldr r3, [r4, r5]
00388be4  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00388be8  00 30 93 e5                                      ldr r3, [r3]
00388bec  03 00 52 e1                                      cmp r2, r3
00388bf0  11 00 00 1a                                      bne #0x388c3c
00388bf4  54 d0 8d e2                                      add sp, sp, #0x54
00388bf8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00388bfc  f4 30 97 e5                                      ldr r3, [r7, #0xf4]
00388c00  0b 00 53 e3                                      cmp r3, #0xb
00388c04  f5 ff ff 1a                                      bne #0x388be0
00388c08  06 20 a0 e1                                      mov r2, r6
00388c0c  04 c0 92 e4                                      ldr ip, [r2], #4
00388c10  04 10 96 e5                                      ldr r1, [r6, #4]
00388c14  01 3b 88 e2                                      add r3, r8, #0x400
00388c18  04 20 92 e5                                      ldr r2, [r2, #4]
00388c1c  04 30 83 e2                                      add r3, r3, #4
00388c20  00 c4 88 e5                                      str ip, [r8, #0x400]
00388c24  04 10 83 e4                                      str r1, [r3], #4
00388c28  00 20 83 e5                                      str r2, [r3]
00388c2c  0b 10 a0 e1                                      mov r1, fp
00388c30  57 3a 00 eb                                      bl #0x397594
00388c34  8c 83 87 e5                                      str r8, [r7, #0x38c]
00388c38  e8 ff ff ea                                      b #0x388be0
00388c3c  b3 15 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00388c40  60 bf 60 00 ac 40 00 00 34 9b 61 00 f4 37 00 00  .byte 0x60, 0xbf, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x9b, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00
00388c50  c4 96 53 00 bc 77 53 00                          .byte 0xc4, 0x96, 0x53, 0x00, 0xbc, 0x77, 0x53, 0x00

; FUNCTION 0x00388ef8, declared_size=8, range_size=8, mode=arm
; class-group: Module
; alias: _ZThn36_N6Module11DeserializeEP11IStreamBase
; demangled: non-virtual thunk to Module::Deserialize(IStreamBase*)
; decoder-mode: arm
00388ef8  24 00 40 e2                                      sub r0, r0, #0x24
00388efc  ff ff ff ea                                      b #0x388f00

; FUNCTION 0x00388f00, declared_size=76, range_size=76, mode=arm
; class-group: Module
; alias: _ZN6Module11DeserializeEP11IStreamBase
; demangled: Module::Deserialize(IStreamBase*)
; decoder-mode: arm
00388f00  70 40 2d e9                                      push {r4, r5, r6, lr}
00388f04  00 40 a0 e1                                      mov r4, r0
00388f08  01 50 a0 e1                                      mov r5, r1
00388f0c  82 0a 00 eb                                      bl #0x38b91c
00388f10  05 00 a0 e1                                      mov r0, r5
00388f14  ff 1f 84 e2                                      add r1, r4, #0x3fc
00388f18  48 d4 fe eb                                      bl #0x33e040
00388f1c  01 0b 84 e2                                      add r0, r4, #0x400
00388f20  00 10 a0 e3                                      mov r1, #0
00388f24  a5 db fe eb                                      bl #0x33fdc0
00388f28  00 30 50 e2                                      subs r3, r0, #0
00388f2c  00 00 00 1a                                      bne #0x388f34
00388f30  70 80 bd e8                                      pop {r4, r5, r6, pc}
00388f34  f4 30 93 e5                                      ldr r3, [r3, #0xf4]
00388f38  0b 00 53 e3                                      cmp r3, #0xb
00388f3c  fb ff ff 1a                                      bne #0x388f30
00388f40  fc 13 d4 e5                                      ldrb r1, [r4, #0x3fc]
00388f44  70 40 bd e8                                      pop {r4, r5, r6, lr}
00388f48  5b 35 00 ea                                      b #0x3964bc

; FUNCTION 0x0038943c, declared_size=8, range_size=8, mode=arm
; class-group: Module
; alias: _ZThn36_N6ModuleD1Ev
; demangled: non-virtual thunk to Module::~Module()
; decoder-mode: arm
0038943c  24 00 40 e2                                      sub r0, r0, #0x24
00389440  ff ff ff ea                                      b #0x389444

; FUNCTION 0x00389444, declared_size=224, range_size=224, mode=arm
; class-group: Module
; alias: _ZN6ModuleD1Ev
; demangled: Module::~Module()
; decoder-mode: arm
00389444  70 40 2d e9                                      push {r4, r5, r6, lr}
00389448  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
0038944c  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00389450  00 40 a0 e1                                      mov r4, r0
00389454  05 50 8f e0                                      add r5, pc, r5
00389458  03 30 95 e7                                      ldr r3, [r5, r3]
0038945c  01 0b 80 e2                                      add r0, r0, #0x400
00389460  00 10 a0 e3                                      mov r1, #0
00389464  e4 20 83 e2                                      add r2, r3, #0xe4
00389468  08 c0 83 e2                                      add ip, r3, #8
0038946c  d8 30 83 e2                                      add r3, r3, #0xd8
00389470  00 c0 84 e5                                      str ip, [r4]
00389474  04 30 84 e5                                      str r3, [r4, #4]
00389478  24 20 84 e5                                      str r2, [r4, #0x24]
0038947c  4f da fe eb                                      bl #0x33fdc0
00389480  00 00 50 e3                                      cmp r0, #0
00389484  03 00 00 0a                                      beq #0x389498
00389488  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
0038948c  0b 00 53 e3                                      cmp r3, #0xb
00389490  00 30 a0 03                                      moveq r3, #0
00389494  8c 33 80 05                                      streq r3, [r0, #0x38c]
00389498  10 04 94 e5                                      ldr r0, [r4, #0x410]
0038949c  00 00 50 e3                                      cmp r0, #0
003894a0  05 00 00 0a                                      beq #0x3894bc
003894a4  18 14 94 e5                                      ldr r1, [r4, #0x418]
003894a8  01 10 60 e0                                      rsb r1, r0, r1
003894ac  03 10 c1 e3                                      bic r1, r1, #3
003894b0  80 00 51 e3                                      cmp r1, #0x80
003894b4  15 00 00 8a                                      bhi #0x389510
003894b8  90 fe 0d eb                                      bl #0x708f00
003894bc  f6 0f 84 e2                                      add r0, r4, #0x3d8
003894c0  39 29 fe eb                                      bl #0x3139ac
003894c4  0f 0d 84 e2                                      add r0, r4, #0x3c0
003894c8  37 29 fe eb                                      bl #0x3139ac
003894cc  ea 0f 84 e2                                      add r0, r4, #0x3a8
003894d0  35 29 fe eb                                      bl #0x3139ac
003894d4  39 0e 84 e2                                      add r0, r4, #0x390
003894d8  33 29 fe eb                                      bl #0x3139ac
003894dc  de 0f 84 e2                                      add r0, r4, #0x378
003894e0  31 29 fe eb                                      bl #0x3139ac
003894e4  34 30 9f e5                                      ldr r3, [pc, #0x34]
003894e8  04 00 a0 e1                                      mov r0, r4
003894ec  03 30 95 e7                                      ldr r3, [r5, r3]
003894f0  e4 20 83 e2                                      add r2, r3, #0xe4
003894f4  08 10 83 e2                                      add r1, r3, #8
003894f8  d8 30 83 e2                                      add r3, r3, #0xd8
003894fc  0a 00 84 e8                                      stm r4, {r1, r3}
00389500  24 20 84 e5                                      str r2, [r4, #0x24]
00389504  9b 0f 00 eb                                      bl #0x38d378
00389508  04 00 a0 e1                                      mov r0, r4
0038950c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00389510  ca 1b fe eb                                      bl #0x310440
00389514  e8 ff ff ea                                      b #0x3894bc
; mapping-symbol data/literal pool
00389518  3c b6 60 00 90 41 00 00 0c 2b 00 00              .byte 0x3c, 0xb6, 0x60, 0x00, 0x90, 0x41, 0x00, 0x00, 0x0c, 0x2b, 0x00, 0x00

; FUNCTION 0x00389524, declared_size=8, range_size=8, mode=arm
; class-group: Module
; alias: _ZThn36_N6ModuleD0Ev
; demangled: non-virtual thunk to Module::~Module()
; decoder-mode: arm
00389524  24 00 40 e2                                      sub r0, r0, #0x24
00389528  ff ff ff ea                                      b #0x38952c

; FUNCTION 0x0038952c, declared_size=28, range_size=28, mode=arm
; class-group: Module
; alias: _ZN6ModuleD0Ev
; demangled: Module::~Module()
; decoder-mode: arm
0038952c  10 40 2d e9                                      push {r4, lr}
00389530  00 40 a0 e1                                      mov r4, r0
00389534  c2 ff ff eb                                      bl #0x389444
00389538  04 00 a0 e1                                      mov r0, r4
0038953c  bf 1b fe eb                                      bl #0x310440
00389540  04 00 a0 e1                                      mov r0, r4
00389544  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00389548, declared_size=224, range_size=224, mode=arm
; class-group: Module
; alias: _ZN6ModuleD2Ev
; demangled: Module::~Module()
; decoder-mode: arm
00389548  70 40 2d e9                                      push {r4, r5, r6, lr}
0038954c  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
00389550  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00389554  00 40 a0 e1                                      mov r4, r0
00389558  05 50 8f e0                                      add r5, pc, r5
0038955c  03 30 95 e7                                      ldr r3, [r5, r3]
00389560  01 0b 80 e2                                      add r0, r0, #0x400
00389564  00 10 a0 e3                                      mov r1, #0
00389568  e4 20 83 e2                                      add r2, r3, #0xe4
0038956c  08 c0 83 e2                                      add ip, r3, #8
00389570  d8 30 83 e2                                      add r3, r3, #0xd8
00389574  00 c0 84 e5                                      str ip, [r4]
00389578  04 30 84 e5                                      str r3, [r4, #4]
0038957c  24 20 84 e5                                      str r2, [r4, #0x24]
00389580  0e da fe eb                                      bl #0x33fdc0
00389584  00 00 50 e3                                      cmp r0, #0
00389588  03 00 00 0a                                      beq #0x38959c
0038958c  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
00389590  0b 00 53 e3                                      cmp r3, #0xb
00389594  00 30 a0 03                                      moveq r3, #0
00389598  8c 33 80 05                                      streq r3, [r0, #0x38c]
0038959c  10 04 94 e5                                      ldr r0, [r4, #0x410]
003895a0  00 00 50 e3                                      cmp r0, #0
003895a4  05 00 00 0a                                      beq #0x3895c0
003895a8  18 14 94 e5                                      ldr r1, [r4, #0x418]
003895ac  01 10 60 e0                                      rsb r1, r0, r1
003895b0  03 10 c1 e3                                      bic r1, r1, #3
003895b4  80 00 51 e3                                      cmp r1, #0x80
003895b8  15 00 00 8a                                      bhi #0x389614
003895bc  4f fe 0d eb                                      bl #0x708f00
003895c0  f6 0f 84 e2                                      add r0, r4, #0x3d8
003895c4  f8 28 fe eb                                      bl #0x3139ac
003895c8  0f 0d 84 e2                                      add r0, r4, #0x3c0
003895cc  f6 28 fe eb                                      bl #0x3139ac
003895d0  ea 0f 84 e2                                      add r0, r4, #0x3a8
003895d4  f4 28 fe eb                                      bl #0x3139ac
003895d8  39 0e 84 e2                                      add r0, r4, #0x390
003895dc  f2 28 fe eb                                      bl #0x3139ac
003895e0  de 0f 84 e2                                      add r0, r4, #0x378
003895e4  f0 28 fe eb                                      bl #0x3139ac
003895e8  34 30 9f e5                                      ldr r3, [pc, #0x34]
003895ec  04 00 a0 e1                                      mov r0, r4
003895f0  03 30 95 e7                                      ldr r3, [r5, r3]
003895f4  e4 20 83 e2                                      add r2, r3, #0xe4
003895f8  08 10 83 e2                                      add r1, r3, #8
003895fc  d8 30 83 e2                                      add r3, r3, #0xd8
00389600  0a 00 84 e8                                      stm r4, {r1, r3}
00389604  24 20 84 e5                                      str r2, [r4, #0x24]
00389608  5a 0f 00 eb                                      bl #0x38d378
0038960c  04 00 a0 e1                                      mov r0, r4
00389610  70 80 bd e8                                      pop {r4, r5, r6, pc}
00389614  89 1b fe eb                                      bl #0x310440
00389618  e8 ff ff ea                                      b #0x3895c0
; mapping-symbol data/literal pool
0038961c  38 b5 60 00 90 41 00 00 0c 2b 00 00              .byte 0x38, 0xb5, 0x60, 0x00, 0x90, 0x41, 0x00, 0x00, 0x0c, 0x2b, 0x00, 0x00

; FUNCTION 0x00389dfc, declared_size=8, range_size=8, mode=arm
; class-group: Module
; alias: _ZThn4_N6Module17DeclarePropertiesEv
; demangled: non-virtual thunk to Module::DeclareProperties()
; decoder-mode: arm
00389dfc  04 00 40 e2                                      sub r0, r0, #4
00389e00  ff ff ff ea                                      b #0x389e04

; FUNCTION 0x00389e04, declared_size=224, range_size=224, mode=arm
; class-group: Module
; alias: _ZN6Module17DeclarePropertiesEv
; demangled: Module::DeclareProperties()
; decoder-mode: arm
00389e04  70 40 2d e9                                      push {r4, r5, r6, lr}
00389e08  10 d0 4d e2                                      sub sp, sp, #0x10
00389e0c  00 50 a0 e1                                      mov r5, r0
00389e10  ee fe ff eb                                      bl #0x3899d0
00389e14  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
00389e18  04 60 85 e2                                      add r6, r5, #4
00389e1c  06 00 a0 e1                                      mov r0, r6
00389e20  de 2f 85 e2                                      add r2, r5, #0x378
00389e24  01 10 8f e0                                      add r1, pc, r1
00389e28  53 d4 fe eb                                      bl #0x33ef7c
00389e2c  94 10 9f e5                                      ldr r1, [pc, #0x94]
00389e30  06 00 a0 e1                                      mov r0, r6
00389e34  39 2e 85 e2                                      add r2, r5, #0x390
00389e38  01 10 8f e0                                      add r1, pc, r1
00389e3c  4e d4 fe eb                                      bl #0x33ef7c
00389e40  84 10 9f e5                                      ldr r1, [pc, #0x84]
00389e44  06 00 a0 e1                                      mov r0, r6
00389e48  ea 2f 85 e2                                      add r2, r5, #0x3a8
00389e4c  01 10 8f e0                                      add r1, pc, r1
00389e50  49 d4 fe eb                                      bl #0x33ef7c
00389e54  74 10 9f e5                                      ldr r1, [pc, #0x74]
00389e58  06 00 a0 e1                                      mov r0, r6
00389e5c  0f 2d 85 e2                                      add r2, r5, #0x3c0
00389e60  01 10 8f e0                                      add r1, pc, r1
00389e64  44 d4 fe eb                                      bl #0x33ef7c
00389e68  64 10 9f e5                                      ldr r1, [pc, #0x64]
00389e6c  06 00 a0 e1                                      mov r0, r6
00389e70  f6 2f 85 e2                                      add r2, r5, #0x3d8
00389e74  01 10 8f e0                                      add r1, pc, r1
00389e78  58 40 9f e5                                      ldr r4, [pc, #0x58]
00389e7c  3e d4 fe eb                                      bl #0x33ef7c
00389e80  54 30 9f e5                                      ldr r3, [pc, #0x54]
00389e84  04 40 8f e0                                      add r4, pc, r4
00389e88  50 10 9f e5                                      ldr r1, [pc, #0x50]
00389e8c  03 30 94 e7                                      ldr r3, [r4, r3]
00389e90  06 00 a0 e1                                      mov r0, r6
00389e94  01 10 8f e0                                      add r1, pc, r1
00389e98  08 c0 93 e5                                      ldr ip, [r3, #8]
00389e9c  00 60 93 e5                                      ldr r6, [r3]
00389ea0  04 e0 93 e5                                      ldr lr, [r3, #4]
00389ea4  3f 2e 85 e2                                      add r2, r5, #0x3f0
00389ea8  04 30 8d e2                                      add r3, sp, #4
00389eac  04 60 8d e5                                      str r6, [sp, #4]
00389eb0  08 e0 8d e5                                      str lr, [sp, #8]
00389eb4  0c c0 8d e5                                      str ip, [sp, #0xc]
00389eb8  75 fe ff eb                                      bl #0x389894
00389ebc  10 d0 8d e2                                      add sp, sp, #0x10
00389ec0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00389ec4  ec 84 53 00 e0 84 53 00 d4 84 53 00 c8 84 53 00  .byte 0xec, 0x84, 0x53, 0x00, 0xe0, 0x84, 0x53, 0x00, 0xd4, 0x84, 0x53, 0x00, 0xc8, 0x84, 0x53, 0x00
00389ed4  bc 84 53 00 0c ac 60 00 98 24 00 00 ac 84 53 00  .byte 0xbc, 0x84, 0x53, 0x00, 0x0c, 0xac, 0x60, 0x00, 0x98, 0x24, 0x00, 0x00, 0xac, 0x84, 0x53, 0x00

; FUNCTION 0x00389fa8, declared_size=344, range_size=344, mode=arm
; class-group: Module
; alias: _ZN6ModuleC1EN10ObjectBase6GO_IDSE
; demangled: Module::Module(ObjectBase::GO_IDS)
; decoder-mode: arm
00389fa8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00389fac  3c 61 9f e5                                      ldr r6, [pc, #0x13c]
00389fb0  00 40 a0 e1                                      mov r4, r0
00389fb4  f7 08 00 eb                                      bl #0x38c398
00389fb8  34 31 9f e5                                      ldr r3, [pc, #0x134]
00389fbc  06 60 8f e0                                      add r6, pc, r6
00389fc0  01 70 a0 e3                                      mov r7, #1
00389fc4  03 30 96 e7                                      ldr r3, [r6, r3]
00389fc8  de 2f 84 e2                                      add r2, r4, #0x378
00389fcc  02 00 a0 e1                                      mov r0, r2
00389fd0  08 c0 83 e2                                      add ip, r3, #8
00389fd4  e4 10 83 e2                                      add r1, r3, #0xe4
00389fd8  d8 30 83 e2                                      add r3, r3, #0xd8
00389fdc  00 c0 84 e5                                      str ip, [r4]
00389fe0  04 30 84 e5                                      str r3, [r4, #4]
00389fe4  24 10 84 e5                                      str r1, [r4, #0x24]
00389fe8  88 23 84 e5                                      str r2, [r4, #0x388]
00389fec  8c 23 84 e5                                      str r2, [r4, #0x38c]
00389ff0  75 73 c4 e5                                      strb r7, [r4, #0x375]
00389ff4  76 73 c4 e5                                      strb r7, [r4, #0x376]
00389ff8  84 70 c4 e5                                      strb r7, [r4, #0x84]
00389ffc  10 10 a0 e3                                      mov r1, #0x10
0038a000  9d 1d fe eb                                      bl #0x31167c
0038a004  88 23 94 e5                                      ldr r2, [r4, #0x388]
0038a008  00 50 a0 e3                                      mov r5, #0
0038a00c  39 3e 84 e2                                      add r3, r4, #0x390
0038a010  00 50 c2 e5                                      strb r5, [r2]
0038a014  03 00 a0 e1                                      mov r0, r3
0038a018  a0 33 84 e5                                      str r3, [r4, #0x3a0]
0038a01c  a4 33 84 e5                                      str r3, [r4, #0x3a4]
0038a020  10 10 a0 e3                                      mov r1, #0x10
0038a024  94 1d fe eb                                      bl #0x31167c
0038a028  a0 23 94 e5                                      ldr r2, [r4, #0x3a0]
0038a02c  ea 3f 84 e2                                      add r3, r4, #0x3a8
0038a030  03 00 a0 e1                                      mov r0, r3
0038a034  00 50 c2 e5                                      strb r5, [r2]
0038a038  10 10 a0 e3                                      mov r1, #0x10
0038a03c  b8 33 84 e5                                      str r3, [r4, #0x3b8]
0038a040  bc 33 84 e5                                      str r3, [r4, #0x3bc]
0038a044  8c 1d fe eb                                      bl #0x31167c
0038a048  b8 23 94 e5                                      ldr r2, [r4, #0x3b8]
0038a04c  0f 3d 84 e2                                      add r3, r4, #0x3c0
0038a050  03 00 a0 e1                                      mov r0, r3
0038a054  00 50 c2 e5                                      strb r5, [r2]
0038a058  10 10 a0 e3                                      mov r1, #0x10
0038a05c  d0 33 84 e5                                      str r3, [r4, #0x3d0]
0038a060  d4 33 84 e5                                      str r3, [r4, #0x3d4]
0038a064  84 1d fe eb                                      bl #0x31167c
0038a068  d0 23 94 e5                                      ldr r2, [r4, #0x3d0]
0038a06c  f6 3f 84 e2                                      add r3, r4, #0x3d8
0038a070  03 00 a0 e1                                      mov r0, r3
0038a074  00 50 c2 e5                                      strb r5, [r2]
0038a078  10 10 a0 e3                                      mov r1, #0x10
0038a07c  e8 33 84 e5                                      str r3, [r4, #0x3e8]
0038a080  ec 33 84 e5                                      str r3, [r4, #0x3ec]
0038a084  7c 1d fe eb                                      bl #0x31167c
0038a088  68 30 9f e5                                      ldr r3, [pc, #0x68]
0038a08c  e8 23 94 e5                                      ldr r2, [r4, #0x3e8]
0038a090  01 0b 84 e2                                      add r0, r4, #0x400
0038a094  03 30 96 e7                                      ldr r3, [r6, r3]
0038a098  00 50 c2 e5                                      strb r5, [r2]
0038a09c  00 20 93 e5                                      ldr r2, [r3]
0038a0a0  f0 23 84 e5                                      str r2, [r4, #0x3f0]
0038a0a4  04 20 93 e5                                      ldr r2, [r3, #4]
0038a0a8  f4 23 84 e5                                      str r2, [r4, #0x3f4]
0038a0ac  08 30 93 e5                                      ldr r3, [r3, #8]
0038a0b0  fc 53 c4 e5                                      strb r5, [r4, #0x3fc]
0038a0b4  f8 33 84 e5                                      str r3, [r4, #0x3f8]
0038a0b8  13 d5 fe eb                                      bl #0x33f50c
0038a0bc  38 30 9f e5                                      ldr r3, [pc, #0x38]
0038a0c0  18 54 84 e5                                      str r5, [r4, #0x418]
0038a0c4  84 70 c4 e5                                      strb r7, [r4, #0x84]
0038a0c8  03 30 96 e7                                      ldr r3, [r6, r3]
0038a0cc  10 54 84 e5                                      str r5, [r4, #0x410]
0038a0d0  14 54 84 e5                                      str r5, [r4, #0x414]
0038a0d4  28 70 c4 e5                                      strb r7, [r4, #0x28]
0038a0d8  00 20 93 e5                                      ldr r2, [r3]
0038a0dc  04 00 a0 e1                                      mov r0, r4
0038a0e0  07 10 82 e0                                      add r1, r2, r7
0038a0e4  0c 24 84 e5                                      str r2, [r4, #0x40c]
0038a0e8  00 10 83 e5                                      str r1, [r3]
0038a0ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0038a0f0  d4 aa 60 00 90 41 00 00 98 24 00 00 2c 28 00 00  .byte 0xd4, 0xaa, 0x60, 0x00, 0x90, 0x41, 0x00, 0x00, 0x98, 0x24, 0x00, 0x00, 0x2c, 0x28, 0x00, 0x00

; FUNCTION 0x0038a100, declared_size=344, range_size=344, mode=arm
; class-group: Module
; alias: _ZN6ModuleC2EN10ObjectBase6GO_IDSE
; demangled: Module::Module(ObjectBase::GO_IDS)
; decoder-mode: arm
0038a100  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038a104  3c 61 9f e5                                      ldr r6, [pc, #0x13c]
0038a108  00 40 a0 e1                                      mov r4, r0
0038a10c  a1 08 00 eb                                      bl #0x38c398
0038a110  34 31 9f e5                                      ldr r3, [pc, #0x134]
0038a114  06 60 8f e0                                      add r6, pc, r6
0038a118  01 70 a0 e3                                      mov r7, #1
0038a11c  03 30 96 e7                                      ldr r3, [r6, r3]
0038a120  de 2f 84 e2                                      add r2, r4, #0x378
0038a124  02 00 a0 e1                                      mov r0, r2
0038a128  08 c0 83 e2                                      add ip, r3, #8
0038a12c  e4 10 83 e2                                      add r1, r3, #0xe4
0038a130  d8 30 83 e2                                      add r3, r3, #0xd8
0038a134  00 c0 84 e5                                      str ip, [r4]
0038a138  04 30 84 e5                                      str r3, [r4, #4]
0038a13c  24 10 84 e5                                      str r1, [r4, #0x24]
0038a140  88 23 84 e5                                      str r2, [r4, #0x388]
0038a144  8c 23 84 e5                                      str r2, [r4, #0x38c]
0038a148  75 73 c4 e5                                      strb r7, [r4, #0x375]
0038a14c  76 73 c4 e5                                      strb r7, [r4, #0x376]
0038a150  84 70 c4 e5                                      strb r7, [r4, #0x84]
0038a154  10 10 a0 e3                                      mov r1, #0x10
0038a158  47 1d fe eb                                      bl #0x31167c
0038a15c  88 23 94 e5                                      ldr r2, [r4, #0x388]
0038a160  00 50 a0 e3                                      mov r5, #0
0038a164  39 3e 84 e2                                      add r3, r4, #0x390
0038a168  00 50 c2 e5                                      strb r5, [r2]
0038a16c  03 00 a0 e1                                      mov r0, r3
0038a170  a0 33 84 e5                                      str r3, [r4, #0x3a0]
0038a174  a4 33 84 e5                                      str r3, [r4, #0x3a4]
0038a178  10 10 a0 e3                                      mov r1, #0x10
0038a17c  3e 1d fe eb                                      bl #0x31167c
0038a180  a0 23 94 e5                                      ldr r2, [r4, #0x3a0]
0038a184  ea 3f 84 e2                                      add r3, r4, #0x3a8
0038a188  03 00 a0 e1                                      mov r0, r3
0038a18c  00 50 c2 e5                                      strb r5, [r2]
0038a190  10 10 a0 e3                                      mov r1, #0x10
0038a194  b8 33 84 e5                                      str r3, [r4, #0x3b8]
0038a198  bc 33 84 e5                                      str r3, [r4, #0x3bc]
0038a19c  36 1d fe eb                                      bl #0x31167c
0038a1a0  b8 23 94 e5                                      ldr r2, [r4, #0x3b8]
0038a1a4  0f 3d 84 e2                                      add r3, r4, #0x3c0
0038a1a8  03 00 a0 e1                                      mov r0, r3
0038a1ac  00 50 c2 e5                                      strb r5, [r2]
0038a1b0  10 10 a0 e3                                      mov r1, #0x10
0038a1b4  d0 33 84 e5                                      str r3, [r4, #0x3d0]
0038a1b8  d4 33 84 e5                                      str r3, [r4, #0x3d4]
0038a1bc  2e 1d fe eb                                      bl #0x31167c
0038a1c0  d0 23 94 e5                                      ldr r2, [r4, #0x3d0]
0038a1c4  f6 3f 84 e2                                      add r3, r4, #0x3d8
0038a1c8  03 00 a0 e1                                      mov r0, r3
0038a1cc  00 50 c2 e5                                      strb r5, [r2]
0038a1d0  10 10 a0 e3                                      mov r1, #0x10
0038a1d4  e8 33 84 e5                                      str r3, [r4, #0x3e8]
0038a1d8  ec 33 84 e5                                      str r3, [r4, #0x3ec]
0038a1dc  26 1d fe eb                                      bl #0x31167c
0038a1e0  68 30 9f e5                                      ldr r3, [pc, #0x68]
0038a1e4  e8 23 94 e5                                      ldr r2, [r4, #0x3e8]
0038a1e8  01 0b 84 e2                                      add r0, r4, #0x400
0038a1ec  03 30 96 e7                                      ldr r3, [r6, r3]
0038a1f0  00 50 c2 e5                                      strb r5, [r2]
0038a1f4  00 20 93 e5                                      ldr r2, [r3]
0038a1f8  f0 23 84 e5                                      str r2, [r4, #0x3f0]
0038a1fc  04 20 93 e5                                      ldr r2, [r3, #4]
0038a200  f4 23 84 e5                                      str r2, [r4, #0x3f4]
0038a204  08 30 93 e5                                      ldr r3, [r3, #8]
0038a208  fc 53 c4 e5                                      strb r5, [r4, #0x3fc]
0038a20c  f8 33 84 e5                                      str r3, [r4, #0x3f8]
0038a210  bd d4 fe eb                                      bl #0x33f50c
0038a214  38 30 9f e5                                      ldr r3, [pc, #0x38]
0038a218  18 54 84 e5                                      str r5, [r4, #0x418]
0038a21c  84 70 c4 e5                                      strb r7, [r4, #0x84]
0038a220  03 30 96 e7                                      ldr r3, [r6, r3]
0038a224  10 54 84 e5                                      str r5, [r4, #0x410]
0038a228  14 54 84 e5                                      str r5, [r4, #0x414]
0038a22c  28 70 c4 e5                                      strb r7, [r4, #0x28]
0038a230  00 20 93 e5                                      ldr r2, [r3]
0038a234  04 00 a0 e1                                      mov r0, r4
0038a238  07 10 82 e0                                      add r1, r2, r7
0038a23c  0c 24 84 e5                                      str r2, [r4, #0x40c]
0038a240  00 10 83 e5                                      str r1, [r3]
0038a244  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0038a248  7c a9 60 00 90 41 00 00 98 24 00 00 2c 28 00 00  .byte 0x7c, 0xa9, 0x60, 0x00, 0x90, 0x41, 0x00, 0x00, 0x98, 0x24, 0x00, 0x00, 0x2c, 0x28, 0x00, 0x00

; FUNCTION 0x0038a38c, declared_size=1280, range_size=1280, mode=arm
; class-group: Module
; alias: _ZNK6Module11_ChooseXmlsERSsS0_
; demangled: Module::_ChooseXmls(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&, std::basic_string<char, std::char_traits<char>, std::allocator<char> >&) const
; decoder-mode: arm
0038a38c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038a390  d8 b4 9f e5                                      ldr fp, [pc, #0x4d8]
0038a394  d8 34 9f e5                                      ldr r3, [pc, #0x4d8]
0038a398  8d df 4d e2                                      sub sp, sp, #0x234
0038a39c  0b b0 8f e0                                      add fp, pc, fp
0038a3a0  14 30 8d e5                                      str r3, [sp, #0x14]
0038a3a4  03 30 9b e7                                      ldr r3, [fp, r3]
0038a3a8  de 6f 80 e2                                      add r6, r0, #0x378
0038a3ac  01 00 56 e1                                      cmp r6, r1
0038a3b0  00 30 93 e5                                      ldr r3, [r3]
0038a3b4  00 a0 a0 e1                                      mov sl, r0
0038a3b8  0c 10 8d e5                                      str r1, [sp, #0xc]
0038a3bc  10 20 8d e5                                      str r2, [sp, #0x10]
0038a3c0  2c 32 8d e5                                      str r3, [sp, #0x22c]
0038a3c4  03 00 00 0a                                      beq #0x38a3d8
0038a3c8  01 00 a0 e1                                      mov r0, r1
0038a3cc  88 23 9a e5                                      ldr r2, [sl, #0x388]
0038a3d0  8c 13 9a e5                                      ldr r1, [sl, #0x38c]
0038a3d4  81 19 fe eb                                      bl #0x3109e0
0038a3d8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0038a3dc  39 9e 8a e2                                      add sb, sl, #0x390
0038a3e0  00 00 59 e1                                      cmp sb, r0
0038a3e4  02 00 00 0a                                      beq #0x38a3f4
0038a3e8  a4 13 9a e5                                      ldr r1, [sl, #0x3a4]
0038a3ec  a0 23 9a e5                                      ldr r2, [sl, #0x3a0]
0038a3f0  7a 19 fe eb                                      bl #0x3109e0
0038a3f4  bc 23 9a e5                                      ldr r2, [sl, #0x3bc]
0038a3f8  b8 33 9a e5                                      ldr r3, [sl, #0x3b8]
0038a3fc  03 00 52 e1                                      cmp r2, r3
0038a400  9d 00 00 0a                                      beq #0x38a67c
0038a404  d4 23 9a e5                                      ldr r2, [sl, #0x3d4]
0038a408  d0 33 9a e5                                      ldr r3, [sl, #0x3d0]
0038a40c  03 00 52 e1                                      cmp r2, r3
0038a410  99 00 00 0a                                      beq #0x38a67c
0038a414  85 4f 8d e2                                      add r4, sp, #0x214
0038a418  00 70 a0 e3                                      mov r7, #0
0038a41c  04 00 a0 e1                                      mov r0, r4
0038a420  10 10 a0 e3                                      mov r1, #0x10
0038a424  38 70 8d e5                                      str r7, [sp, #0x38]
0038a428  3c 70 8d e5                                      str r7, [sp, #0x3c]
0038a42c  40 70 8d e5                                      str r7, [sp, #0x40]
0038a430  2c 70 8d e5                                      str r7, [sp, #0x2c]
0038a434  30 70 8d e5                                      str r7, [sp, #0x30]
0038a438  34 70 8d e5                                      str r7, [sp, #0x34]
0038a43c  20 70 8d e5                                      str r7, [sp, #0x20]
0038a440  24 70 8d e5                                      str r7, [sp, #0x24]
0038a444  28 70 8d e5                                      str r7, [sp, #0x28]
0038a448  24 42 8d e5                                      str r4, [sp, #0x224]
0038a44c  28 42 8d e5                                      str r4, [sp, #0x228]
0038a450  89 1c fe eb                                      bl #0x31167c
0038a454  24 32 9d e5                                      ldr r3, [sp, #0x224]
0038a458  5f 5f 8d e2                                      add r5, sp, #0x17c
0038a45c  05 00 a0 e1                                      mov r0, r5
0038a460  00 70 c3 e5                                      strb r7, [r3]
0038a464  ea 1f 8a e2                                      add r1, sl, #0x3a8
0038a468  7f fd ff eb                                      bl #0x389a6c
0038a46c  38 80 8d e2                                      add r8, sp, #0x38
0038a470  05 00 a0 e1                                      mov r0, r5
0038a474  04 10 a0 e1                                      mov r1, r4
0038a478  76 ff ff eb                                      bl #0x38a258
0038a47c  00 30 90 e5                                      ldr r3, [r0]
0038a480  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0038a484  03 00 80 e0                                      add r0, r0, r3
0038a488  08 30 90 e5                                      ldr r3, [r0, #8]
0038a48c  05 00 13 e3                                      tst r3, #5
0038a490  81 00 00 0a                                      beq #0x38a69c
0038a494  06 10 a0 e1                                      mov r1, r6
0038a498  08 00 a0 e1                                      mov r0, r8
0038a49c  e4 60 8d e2                                      add r6, sp, #0xe4
0038a4a0  8c 85 fe eb                                      bl #0x32bad8
0038a4a4  06 00 a0 e1                                      mov r0, r6
0038a4a8  0f 1d 8a e2                                      add r1, sl, #0x3c0
0038a4ac  6e fd ff eb                                      bl #0x389a6c
0038a4b0  2c 70 8d e2                                      add r7, sp, #0x2c
0038a4b4  06 00 a0 e1                                      mov r0, r6
0038a4b8  04 10 a0 e1                                      mov r1, r4
0038a4bc  65 ff ff eb                                      bl #0x38a258
0038a4c0  00 30 90 e5                                      ldr r3, [r0]
0038a4c4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0038a4c8  03 00 80 e0                                      add r0, r0, r3
0038a4cc  08 30 90 e5                                      ldr r3, [r0, #8]
0038a4d0  05 00 13 e3                                      tst r3, #5
0038a4d4  74 00 00 0a                                      beq #0x38a6ac
0038a4d8  09 10 a0 e1                                      mov r1, sb
0038a4dc  07 00 a0 e1                                      mov r0, r7
0038a4e0  7c 85 fe eb                                      bl #0x32bad8
0038a4e4  ec 23 9a e5                                      ldr r2, [sl, #0x3ec]
0038a4e8  e8 33 9a e5                                      ldr r3, [sl, #0x3e8]
0038a4ec  03 00 52 e1                                      cmp r2, r3
0038a4f0  97 00 00 0a                                      beq #0x38a754
0038a4f4  4c 90 8d e2                                      add sb, sp, #0x4c
0038a4f8  f6 1f 8a e2                                      add r1, sl, #0x3d8
0038a4fc  09 00 a0 e1                                      mov r0, sb
0038a500  59 fd ff eb                                      bl #0x389a6c
0038a504  20 10 8d e2                                      add r1, sp, #0x20
0038a508  44 20 8d e2                                      add r2, sp, #0x44
0038a50c  00 a0 a0 e3                                      mov sl, #0
0038a510  18 10 8d e5                                      str r1, [sp, #0x18]
0038a514  1c 20 8d e5                                      str r2, [sp, #0x1c]
0038a518  09 00 a0 e1                                      mov r0, sb
0038a51c  04 10 a0 e1                                      mov r1, r4
0038a520  4c ff ff eb                                      bl #0x38a258
0038a524  00 30 90 e5                                      ldr r3, [r0]
0038a528  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0038a52c  03 00 80 e0                                      add r0, r0, r3
0038a530  08 30 90 e5                                      ldr r3, [r0, #8]
0038a534  05 00 13 e3                                      tst r3, #5
0038a538  5f 00 00 0a                                      beq #0x38a6bc
0038a53c  24 10 9d e5                                      ldr r1, [sp, #0x24]
0038a540  28 30 9d e5                                      ldr r3, [sp, #0x28]
0038a544  64 a0 6a e2                                      rsb sl, sl, #0x64
0038a548  48 a0 8d e5                                      str sl, [sp, #0x48]
0038a54c  03 00 51 e1                                      cmp r1, r3
0038a550  c1 00 00 0a                                      beq #0x38a85c
0038a554  00 a0 81 e5                                      str sl, [r1]
0038a558  24 30 9d e5                                      ldr r3, [sp, #0x24]
0038a55c  04 30 83 e2                                      add r3, r3, #4
0038a560  24 30 8d e5                                      str r3, [sp, #0x24]
0038a564  09 00 a0 e1                                      mov r0, sb
0038a568  75 fb ff eb                                      bl #0x389344
0038a56c  24 10 9d e5                                      ldr r1, [sp, #0x24]
0038a570  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0038a574  38 30 9d e5                                      ldr r3, [sp, #0x38]
0038a578  02 30 63 e0                                      rsb r3, r3, r2
0038a57c  c3 31 a0 e1                                      asr r3, r3, #3
0038a580  03 91 83 e0                                      add sb, r3, r3, lsl #2
0038a584  09 92 89 e0                                      add sb, sb, sb, lsl #4
0038a588  09 94 89 e0                                      add sb, sb, sb, lsl #8
0038a58c  09 98 89 e0                                      add sb, sb, sb, lsl #16
0038a590  89 90 83 e0                                      add sb, r3, sb, lsl #1
0038a594  20 30 9d e5                                      ldr r3, [sp, #0x20]
0038a598  01 10 63 e0                                      rsb r1, r3, r1
0038a59c  41 01 59 e1                                      cmp sb, r1, asr #2
0038a5a0  92 00 00 0a                                      beq #0x38a7f0
0038a5a4  cc 32 9f e5                                      ldr r3, [pc, #0x2cc]
0038a5a8  03 30 9b e7                                      ldr r3, [fp, r3]
0038a5ac  00 30 93 e5                                      ldr r3, [r3]
0038a5b0  02 00 53 e3                                      cmp r3, #2
0038a5b4  00 30 a0 03                                      moveq r3, #0
0038a5b8  00 30 83 05                                      streq r3, [r3]
0038a5bc  01 00 00 0a                                      beq #0x38a5c8
0038a5c0  01 00 53 e3                                      cmp r3, #1
0038a5c4  97 00 00 0a                                      beq #0x38a828
0038a5c8  64 00 a0 e3                                      mov r0, #0x64
0038a5cc  a1 f9 ff eb                                      bl #0x388c58
0038a5d0  38 a0 9d e5                                      ldr sl, [sp, #0x38]
0038a5d4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0038a5d8  03 30 6a e0                                      rsb r3, sl, r3
0038a5dc  c3 31 a0 e1                                      asr r3, r3, #3
0038a5e0  03 e1 83 e0                                      add lr, r3, r3, lsl #2
0038a5e4  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0038a5e8  0e e4 8e e0                                      add lr, lr, lr, lsl #8
0038a5ec  0e e8 8e e0                                      add lr, lr, lr, lsl #16
0038a5f0  8e e0 93 e0                                      adds lr, r3, lr, lsl #1
0038a5f4  0d 00 00 0a                                      beq #0x38a630
0038a5f8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0038a5fc  00 20 9c e5                                      ldr r2, [ip]
0038a600  02 00 50 e1                                      cmp r0, r2
0038a604  00 90 a0 b3                                      movlt sb, #0
0038a608  3f 00 00 ba                                      blt #0x38a70c
0038a60c  00 30 a0 e3                                      mov r3, #0
0038a610  03 00 00 ea                                      b #0x38a624
0038a614  03 11 9c e7                                      ldr r1, [ip, r3, lsl #2]
0038a618  01 20 82 e0                                      add r2, r2, r1
0038a61c  00 00 52 e1                                      cmp r2, r0
0038a620  37 00 00 ca                                      bgt #0x38a704
0038a624  01 30 83 e2                                      add r3, r3, #1
0038a628  0e 00 53 e1                                      cmp r3, lr
0038a62c  f8 ff ff 1a                                      bne #0x38a614
0038a630  06 00 a0 e1                                      mov r0, r6
0038a634  42 fb ff eb                                      bl #0x389344
0038a638  05 00 a0 e1                                      mov r0, r5
0038a63c  40 fb ff eb                                      bl #0x389344
0038a640  04 00 a0 e1                                      mov r0, r4
0038a644  d8 24 fe eb                                      bl #0x3139ac
0038a648  20 00 9d e5                                      ldr r0, [sp, #0x20]
0038a64c  00 00 50 e3                                      cmp r0, #0
0038a650  05 00 00 0a                                      beq #0x38a66c
0038a654  28 10 9d e5                                      ldr r1, [sp, #0x28]
0038a658  01 10 60 e0                                      rsb r1, r0, r1
0038a65c  03 10 c1 e3                                      bic r1, r1, #3
0038a660  80 00 51 e3                                      cmp r1, #0x80
0038a664  6d 00 00 8a                                      bhi #0x38a820
0038a668  24 fa 0d eb                                      bl #0x708f00
0038a66c  07 00 a0 e1                                      mov r0, r7
0038a670  2e 26 fe eb                                      bl #0x313f30
0038a674  08 00 a0 e1                                      mov r0, r8
0038a678  2c 26 fe eb                                      bl #0x313f30
0038a67c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0038a680  2c 22 9d e5                                      ldr r2, [sp, #0x22c]
0038a684  00 30 9b e7                                      ldr r3, [fp, r0]
0038a688  00 30 93 e5                                      ldr r3, [r3]
0038a68c  03 00 52 e1                                      cmp r2, r3
0038a690  75 00 00 1a                                      bne #0x38a86c
0038a694  8d df 8d e2                                      add sp, sp, #0x234
0038a698  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038a69c  08 00 a0 e1                                      mov r0, r8
0038a6a0  04 10 a0 e1                                      mov r1, r4
0038a6a4  0b 85 fe eb                                      bl #0x32bad8
0038a6a8  70 ff ff ea                                      b #0x38a470
0038a6ac  07 00 a0 e1                                      mov r0, r7
0038a6b0  04 10 a0 e1                                      mov r1, r4
0038a6b4  07 85 fe eb                                      bl #0x32bad8
0038a6b8  7d ff ff ea                                      b #0x38a4b4
0038a6bc  28 02 9d e5                                      ldr r0, [sp, #0x228]
0038a6c0  73 0e fe eb                                      bl #0x30e094
0038a6c4  24 10 9d e5                                      ldr r1, [sp, #0x24]
0038a6c8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0038a6cc  44 00 8d e5                                      str r0, [sp, #0x44]
0038a6d0  03 00 51 e1                                      cmp r1, r3
0038a6d4  06 00 00 0a                                      beq #0x38a6f4
0038a6d8  00 00 81 e5                                      str r0, [r1]
0038a6dc  24 30 9d e5                                      ldr r3, [sp, #0x24]
0038a6e0  04 30 83 e2                                      add r3, r3, #4
0038a6e4  24 30 8d e5                                      str r3, [sp, #0x24]
0038a6e8  44 30 9d e5                                      ldr r3, [sp, #0x44]
0038a6ec  03 a0 8a e0                                      add sl, sl, r3
0038a6f0  88 ff ff ea                                      b #0x38a518
0038a6f4  18 00 9d e5                                      ldr r0, [sp, #0x18]
0038a6f8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0038a6fc  c9 fb ff eb                                      bl #0x389628
0038a700  f8 ff ff ea                                      b #0x38a6e8
0038a704  18 90 a0 e3                                      mov sb, #0x18
0038a708  99 03 09 e0                                      mul sb, sb, r3
0038a70c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0038a710  09 a0 8a e0                                      add sl, sl, sb
0038a714  0a 00 51 e1                                      cmp r1, sl
0038a718  03 00 00 0a                                      beq #0x38a72c
0038a71c  01 00 a0 e1                                      mov r0, r1
0038a720  10 20 9a e5                                      ldr r2, [sl, #0x10]
0038a724  14 10 9a e5                                      ldr r1, [sl, #0x14]
0038a728  ac 18 fe eb                                      bl #0x3109e0
0038a72c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0038a730  10 20 9d e5                                      ldr r2, [sp, #0x10]
0038a734  09 90 83 e0                                      add sb, r3, sb
0038a738  09 00 52 e1                                      cmp r2, sb
0038a73c  bb ff ff 0a                                      beq #0x38a630
0038a740  02 00 a0 e1                                      mov r0, r2
0038a744  14 10 99 e5                                      ldr r1, [sb, #0x14]
0038a748  10 20 99 e5                                      ldr r2, [sb, #0x10]
0038a74c  a3 18 fe eb                                      bl #0x3109e0
0038a750  b6 ff ff ea                                      b #0x38a630
0038a754  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0038a758  38 30 9d e5                                      ldr r3, [sp, #0x38]
0038a75c  64 00 a0 e3                                      mov r0, #0x64
0038a760  02 30 63 e0                                      rsb r3, r3, r2
0038a764  c3 31 a0 e1                                      asr r3, r3, #3
0038a768  03 91 83 e0                                      add sb, r3, r3, lsl #2
0038a76c  09 92 89 e0                                      add sb, sb, sb, lsl #4
0038a770  09 94 89 e0                                      add sb, sb, sb, lsl #8
0038a774  09 98 89 e0                                      add sb, sb, sb, lsl #16
0038a778  89 90 83 e0                                      add sb, r3, sb, lsl #1
0038a77c  09 10 a0 e1                                      mov r1, sb
0038a780  c7 0e fe eb                                      bl #0x30e2a4
0038a784  00 00 59 e3                                      cmp sb, #0
0038a788  44 00 8d e5                                      str r0, [sp, #0x44]
0038a78c  24 10 9d d5                                      ldrle r1, [sp, #0x24]
0038a790  7f ff ff da                                      ble #0x38a594
0038a794  20 30 8d e2                                      add r3, sp, #0x20
0038a798  44 00 8d e2                                      add r0, sp, #0x44
0038a79c  24 10 9d e5                                      ldr r1, [sp, #0x24]
0038a7a0  00 a0 a0 e3                                      mov sl, #0
0038a7a4  18 30 8d e5                                      str r3, [sp, #0x18]
0038a7a8  1c 00 8d e5                                      str r0, [sp, #0x1c]
0038a7ac  07 00 00 ea                                      b #0x38a7d0
0038a7b0  44 30 9d e5                                      ldr r3, [sp, #0x44]
0038a7b4  00 30 81 e5                                      str r3, [r1]
0038a7b8  24 10 9d e5                                      ldr r1, [sp, #0x24]
0038a7bc  04 10 81 e2                                      add r1, r1, #4
0038a7c0  24 10 8d e5                                      str r1, [sp, #0x24]
0038a7c4  01 a0 8a e2                                      add sl, sl, #1
0038a7c8  09 00 5a e1                                      cmp sl, sb
0038a7cc  67 ff ff 0a                                      beq #0x38a570
0038a7d0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0038a7d4  01 00 53 e1                                      cmp r3, r1
0038a7d8  f4 ff ff 1a                                      bne #0x38a7b0
0038a7dc  18 00 9d e5                                      ldr r0, [sp, #0x18]
0038a7e0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0038a7e4  8f fb ff eb                                      bl #0x389628
0038a7e8  24 10 9d e5                                      ldr r1, [sp, #0x24]
0038a7ec  f4 ff ff ea                                      b #0x38a7c4
0038a7f0  30 20 9d e5                                      ldr r2, [sp, #0x30]
0038a7f4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0038a7f8  02 30 63 e0                                      rsb r3, r3, r2
0038a7fc  c3 31 a0 e1                                      asr r3, r3, #3
0038a800  03 21 83 e0                                      add r2, r3, r3, lsl #2
0038a804  02 22 82 e0                                      add r2, r2, r2, lsl #4
0038a808  02 24 82 e0                                      add r2, r2, r2, lsl #8
0038a80c  02 28 82 e0                                      add r2, r2, r2, lsl #16
0038a810  82 30 83 e0                                      add r3, r3, r2, lsl #1
0038a814  03 00 59 e1                                      cmp sb, r3
0038a818  61 ff ff 1a                                      bne #0x38a5a4
0038a81c  69 ff ff ea                                      b #0x38a5c8
0038a820  06 17 fe eb                                      bl #0x310440
0038a824  90 ff ff ea                                      b #0x38a66c
0038a828  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
0038a82c  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0038a830  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0038a834  00 00 9b e7                                      ldr r0, [fp, r0]
0038a838  48 30 9f e5                                      ldr r3, [pc, #0x48]
0038a83c  bd c0 a0 e3                                      mov ip, #0xbd
0038a840  01 10 8f e0                                      add r1, pc, r1
0038a844  02 20 8f e0                                      add r2, pc, r2
0038a848  03 30 8f e0                                      add r3, pc, r3
0038a84c  a8 00 80 e2                                      add r0, r0, #0xa8
0038a850  00 c0 8d e5                                      str ip, [sp]
0038a854  ea 0d fe eb                                      bl #0x30e004
0038a858  5a ff ff ea                                      b #0x38a5c8
0038a85c  20 00 8d e2                                      add r0, sp, #0x20
0038a860  48 20 8d e2                                      add r2, sp, #0x48
0038a864  6f fb ff eb                                      bl #0x389628
0038a868  3d ff ff ea                                      b #0x38a564
0038a86c  a7 0e fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0038a870  f4 a6 60 00 ac 40 00 00 c0 39 00 00 c0 19 00 00  .byte 0xf4, 0xa6, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0038a880  98 3b 53 00 24 3d 53 00 28 7a 53 00              .byte 0x98, 0x3b, 0x53, 0x00, 0x24, 0x3d, 0x53, 0x00, 0x28, 0x7a, 0x53, 0x00

; FUNCTION 0x0038a88c, declared_size=560, range_size=560, mode=arm
; class-group: Module
; alias: _ZNK6Module10LoadModuleEv
; demangled: Module::LoadModule() const
; decoder-mode: arm
0038a88c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038a890  fc 91 9f e5                                      ldr sb, [pc, #0x1fc]
0038a894  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
0038a898  fc b1 9f e5                                      ldr fp, [pc, #0x1fc]
0038a89c  09 90 8f e0                                      add sb, pc, sb
0038a8a0  03 20 99 e7                                      ldr r2, [sb, r3]
0038a8a4  0b 30 99 e7                                      ldr r3, [sb, fp]
0038a8a8  84 d0 4d e2                                      sub sp, sp, #0x84
0038a8ac  00 40 92 e5                                      ldr r4, [r2]
0038a8b0  00 30 93 e5                                      ldr r3, [r3]
0038a8b4  00 50 a0 e1                                      mov r5, r0
0038a8b8  00 00 54 e3                                      cmp r4, #0
0038a8bc  7c 30 8d e5                                      str r3, [sp, #0x7c]
0038a8c0  5d 00 00 0a                                      beq #0x38aa3c
0038a8c4  04 00 a0 e1                                      mov r0, r4
0038a8c8  0c 14 95 e5                                      ldr r1, [r5, #0x40c]
0038a8cc  69 92 01 eb                                      bl #0x3ef278
0038a8d0  60 31 95 e5                                      ldr r3, [r5, #0x160]
0038a8d4  64 60 8d e2                                      add r6, sp, #0x64
0038a8d8  06 00 a0 e1                                      mov r0, r6
0038a8dc  60 31 84 e5                                      str r3, [r4, #0x160]
0038a8e0  64 31 95 e5                                      ldr r3, [r5, #0x164]
0038a8e4  10 10 a0 e3                                      mov r1, #0x10
0038a8e8  4c 70 8d e2                                      add r7, sp, #0x4c
0038a8ec  64 31 84 e5                                      str r3, [r4, #0x164]
0038a8f0  68 31 95 e5                                      ldr r3, [r5, #0x168]
0038a8f4  00 80 a0 e3                                      mov r8, #0
0038a8f8  68 31 84 e5                                      str r3, [r4, #0x168]
0038a8fc  74 60 8d e5                                      str r6, [sp, #0x74]
0038a900  78 60 8d e5                                      str r6, [sp, #0x78]
0038a904  5c 1b fe eb                                      bl #0x31167c
0038a908  74 30 9d e5                                      ldr r3, [sp, #0x74]
0038a90c  07 00 a0 e1                                      mov r0, r7
0038a910  10 10 a0 e3                                      mov r1, #0x10
0038a914  00 80 c3 e5                                      strb r8, [r3]
0038a918  5c 70 8d e5                                      str r7, [sp, #0x5c]
0038a91c  60 70 8d e5                                      str r7, [sp, #0x60]
0038a920  55 1b fe eb                                      bl #0x31167c
0038a924  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0038a928  07 20 a0 e1                                      mov r2, r7
0038a92c  05 00 a0 e1                                      mov r0, r5
0038a930  00 80 c3 e5                                      strb r8, [r3]
0038a934  06 10 a0 e1                                      mov r1, r6
0038a938  93 fe ff eb                                      bl #0x38a38c
0038a93c  74 30 9d e5                                      ldr r3, [sp, #0x74]
0038a940  78 20 9d e5                                      ldr r2, [sp, #0x78]
0038a944  03 00 52 e1                                      cmp r2, r3
0038a948  12 00 00 0a                                      beq #0x38a998
0038a94c  4c 81 9f e5                                      ldr r8, [pc, #0x14c]
0038a950  34 50 8d e2                                      add r5, sp, #0x34
0038a954  18 a0 8d e2                                      add sl, sp, #0x18
0038a958  08 80 8f e0                                      add r8, pc, r8
0038a95c  08 10 a0 e1                                      mov r1, r8
0038a960  0a 20 a0 e1                                      mov r2, sl
0038a964  05 00 a0 e1                                      mov r0, r5
0038a968  df 25 fe eb                                      bl #0x3140ec
0038a96c  06 10 a0 e1                                      mov r1, r6
0038a970  05 20 a0 e1                                      mov r2, r5
0038a974  04 00 a0 e1                                      mov r0, r4
0038a978  70 a4 01 eb                                      bl #0x3f3b40
0038a97c  00 30 a0 e1                                      mov r3, r0
0038a980  05 00 a0 e1                                      mov r0, r5
0038a984  0c 30 8d e5                                      str r3, [sp, #0xc]
0038a988  07 24 fe eb                                      bl #0x3139ac
0038a98c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0038a990  00 00 53 e3                                      cmp r3, #0
0038a994  f0 ff ff 0a                                      beq #0x38a95c
0038a998  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0038a99c  60 20 9d e5                                      ldr r2, [sp, #0x60]
0038a9a0  03 00 52 e1                                      cmp r2, r3
0038a9a4  12 00 00 0a                                      beq #0x38a9f4
0038a9a8  f4 80 9f e5                                      ldr r8, [pc, #0xf4]
0038a9ac  1c 50 8d e2                                      add r5, sp, #0x1c
0038a9b0  14 a0 8d e2                                      add sl, sp, #0x14
0038a9b4  08 80 8f e0                                      add r8, pc, r8
0038a9b8  08 10 a0 e1                                      mov r1, r8
0038a9bc  0a 20 a0 e1                                      mov r2, sl
0038a9c0  05 00 a0 e1                                      mov r0, r5
0038a9c4  c8 25 fe eb                                      bl #0x3140ec
0038a9c8  07 10 a0 e1                                      mov r1, r7
0038a9cc  05 20 a0 e1                                      mov r2, r5
0038a9d0  04 00 a0 e1                                      mov r0, r4
0038a9d4  59 a4 01 eb                                      bl #0x3f3b40
0038a9d8  00 30 a0 e1                                      mov r3, r0
0038a9dc  05 00 a0 e1                                      mov r0, r5
0038a9e0  0c 30 8d e5                                      str r3, [sp, #0xc]
0038a9e4  f0 23 fe eb                                      bl #0x3139ac
0038a9e8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0038a9ec  00 00 53 e3                                      cmp r3, #0
0038a9f0  f0 ff ff 0a                                      beq #0x38a9b8
0038a9f4  00 30 a0 e3                                      mov r3, #0
0038a9f8  68 31 84 e5                                      str r3, [r4, #0x168]
0038a9fc  60 31 84 e5                                      str r3, [r4, #0x160]
0038aa00  64 31 84 e5                                      str r3, [r4, #0x164]
0038aa04  00 10 e0 e3                                      mvn r1, #0
0038aa08  04 00 a0 e1                                      mov r0, r4
0038aa0c  19 92 01 eb                                      bl #0x3ef278
0038aa10  07 00 a0 e1                                      mov r0, r7
0038aa14  e4 23 fe eb                                      bl #0x3139ac
0038aa18  06 00 a0 e1                                      mov r0, r6
0038aa1c  e2 23 fe eb                                      bl #0x3139ac
0038aa20  0b 30 99 e7                                      ldr r3, [sb, fp]
0038aa24  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
0038aa28  00 30 93 e5                                      ldr r3, [r3]
0038aa2c  03 00 52 e1                                      cmp r2, r3
0038aa30  16 00 00 1a                                      bne #0x38aa90
0038aa34  84 d0 8d e2                                      add sp, sp, #0x84
0038aa38  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038aa3c  64 30 9f e5                                      ldr r3, [pc, #0x64]
0038aa40  03 30 99 e7                                      ldr r3, [sb, r3]
0038aa44  00 30 93 e5                                      ldr r3, [r3]
0038aa48  02 00 53 e3                                      cmp r3, #2
0038aa4c  00 40 84 05                                      streq r4, [r4]
0038aa50  9b ff ff 0a                                      beq #0x38a8c4
0038aa54  01 00 53 e3                                      cmp r3, #1
0038aa58  99 ff ff 1a                                      bne #0x38a8c4
0038aa5c  48 00 9f e5                                      ldr r0, [pc, #0x48]
0038aa60  48 10 9f e5                                      ldr r1, [pc, #0x48]
0038aa64  48 20 9f e5                                      ldr r2, [pc, #0x48]
0038aa68  00 00 99 e7                                      ldr r0, [sb, r0]
0038aa6c  44 30 9f e5                                      ldr r3, [pc, #0x44]
0038aa70  54 c0 a0 e3                                      mov ip, #0x54
0038aa74  01 10 8f e0                                      add r1, pc, r1
0038aa78  02 20 8f e0                                      add r2, pc, r2
0038aa7c  03 30 8f e0                                      add r3, pc, r3
0038aa80  a8 00 80 e2                                      add r0, r0, #0xa8
0038aa84  00 c0 8d e5                                      str ip, [sp]
0038aa88  5d 0d fe eb                                      bl #0x30e004
0038aa8c  8c ff ff ea                                      b #0x38a8c4
0038aa90  1e 0e fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0038aa94  f4 a1 60 00 64 1d 00 00 ac 40 00 00 d8 5a 53 00  .byte 0xf4, 0xa1, 0x60, 0x00, 0x64, 0x1d, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd8, 0x5a, 0x53, 0x00
0038aaa4  7c 5a 53 00 c0 39 00 00 c0 19 00 00 64 39 53 00  .byte 0x7c, 0x5a, 0x53, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x64, 0x39, 0x53, 0x00
0038aab4  d8 78 53 00 f4 77 53 00                          .byte 0xd8, 0x78, 0x53, 0x00, 0xf4, 0x77, 0x53, 0x00
