; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004971e0, declared_size=72, range_size=72, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManagerC2Ev
; demangled: SWFAnimManager::SWFAnimManager()
; decoder-mode: arm
004971e0  38 10 9f e5                                      ldr r1, [pc, #0x38]
004971e4  04 40 2d e5                                      str r4, [sp, #-4]!
004971e8  34 40 9f e5                                      ldr r4, [pc, #0x34]
004971ec  01 10 8f e0                                      add r1, pc, r1
004971f0  00 c0 a0 e3                                      mov ip, #0
004971f4  04 40 91 e7                                      ldr r4, [r1, r4]
004971f8  00 20 a0 e1                                      mov r2, r0
004971fc  08 c0 80 e5                                      str ip, [r0, #8]
00497200  08 40 84 e2                                      add r4, r4, #8
00497204  00 40 80 e5                                      str r4, [r0]
00497208  04 c0 e2 e5                                      strb ip, [r2, #4]!
0049720c  10 20 80 e5                                      str r2, [r0, #0x10]
00497210  14 c0 80 e5                                      str ip, [r0, #0x14]
00497214  0c 20 80 e5                                      str r2, [r0, #0xc]
00497218  10 00 bd e8                                      ldm sp!, {r4}
0049721c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00497220  a4 d8 4f 00 4c 41 00 00                          .byte 0xa4, 0xd8, 0x4f, 0x00, 0x4c, 0x41, 0x00, 0x00

; FUNCTION 0x00497228, declared_size=72, range_size=72, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManagerC1Ev
; demangled: SWFAnimManager::SWFAnimManager()
; decoder-mode: arm
00497228  38 10 9f e5                                      ldr r1, [pc, #0x38]
0049722c  04 40 2d e5                                      str r4, [sp, #-4]!
00497230  34 40 9f e5                                      ldr r4, [pc, #0x34]
00497234  01 10 8f e0                                      add r1, pc, r1
00497238  00 c0 a0 e3                                      mov ip, #0
0049723c  04 40 91 e7                                      ldr r4, [r1, r4]
00497240  00 20 a0 e1                                      mov r2, r0
00497244  08 c0 80 e5                                      str ip, [r0, #8]
00497248  08 40 84 e2                                      add r4, r4, #8
0049724c  00 40 80 e5                                      str r4, [r0]
00497250  04 c0 e2 e5                                      strb ip, [r2, #4]!
00497254  10 20 80 e5                                      str r2, [r0, #0x10]
00497258  14 c0 80 e5                                      str ip, [r0, #0x14]
0049725c  0c 20 80 e5                                      str r2, [r0, #0xc]
00497260  10 00 bd e8                                      ldm sp!, {r4}
00497264  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00497268  5c d8 4f 00 4c 41 00 00                          .byte 0x5c, 0xd8, 0x4f, 0x00, 0x4c, 0x41, 0x00, 0x00

; FUNCTION 0x00497270, declared_size=8, range_size=8, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManager9CloneAnimERK7SWFAnim
; demangled: SWFAnimManager::CloneAnim(SWFAnim const&)
; decoder-mode: arm
00497270  00 00 a0 e3                                      mov r0, #0
00497274  1e ff 2f e1                                      bx lr

; FUNCTION 0x004973c8, declared_size=80, range_size=80, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManager9FlushBankER9VectorSetIP7SWFAnimE
; demangled: SWFAnimManager::FlushBank(VectorSet<SWFAnim*>&)
; decoder-mode: arm
004973c8  70 40 2d e9                                      push {r4, r5, r6, lr}
004973cc  30 00 91 e8                                      ldm r1, {r4, r5}
004973d0  01 60 a0 e1                                      mov r6, r1
004973d4  05 00 54 e1                                      cmp r4, r5
004973d8  0d 00 00 0a                                      beq #0x497414
004973dc  00 30 94 e5                                      ldr r3, [r4]
004973e0  04 40 84 e2                                      add r4, r4, #4
004973e4  00 00 53 e3                                      cmp r3, #0
004973e8  03 00 a0 e1                                      mov r0, r3
004973ec  02 00 00 0a                                      beq #0x4973fc
004973f0  00 30 93 e5                                      ldr r3, [r3]
004973f4  0f e0 a0 e1                                      mov lr, pc
004973f8  04 f0 93 e5                                      ldr pc, [r3, #4]
004973fc  05 00 54 e1                                      cmp r4, r5
00497400  f5 ff ff 1a                                      bne #0x4973dc
00497404  00 30 96 e5                                      ldr r3, [r6]
00497408  04 20 96 e5                                      ldr r2, [r6, #4]
0049740c  02 00 53 e1                                      cmp r3, r2
00497410  04 30 86 15                                      strne r3, [r6, #4]
00497414  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00497418, declared_size=36, range_size=36, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManager8DropAnimEP7SWFAnim
; demangled: SWFAnimManager::DropAnim(SWFAnim*)
; decoder-mode: arm
00497418  10 40 2d e9                                      push {r4, lr}
0049741c  00 40 51 e2                                      subs r4, r1, #0
00497420  04 00 00 0a                                      beq #0x497438
00497424  04 00 a0 e1                                      mov r0, r4
00497428  00 10 a0 e3                                      mov r1, #0
0049742c  24 fe ff eb                                      bl #0x496cc4
00497430  01 30 a0 e3                                      mov r3, #1
00497434  04 30 c4 e5                                      strb r3, [r4, #4]
00497438  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004974f4, declared_size=180, range_size=180, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManager8FlushAllEv
; demangled: SWFAnimManager::FlushAll()
; decoder-mode: arm
004974f4  70 40 2d e9                                      push {r4, r5, r6, lr}
004974f8  0c 40 90 e5                                      ldr r4, [r0, #0xc]
004974fc  00 50 a0 e1                                      mov r5, r0
00497500  04 60 80 e2                                      add r6, r0, #4
00497504  04 00 56 e1                                      cmp r6, r4
00497508  0d 00 00 0a                                      beq #0x497544
0049750c  05 00 a0 e1                                      mov r0, r5
00497510  28 10 84 e2                                      add r1, r4, #0x28
00497514  ab ff ff eb                                      bl #0x4973c8
00497518  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0049751c  00 00 52 e3                                      cmp r2, #0
00497520  01 00 00 1a                                      bne #0x49752c
00497524  12 00 00 ea                                      b #0x497574
00497528  03 20 a0 e1                                      mov r2, r3
0049752c  08 30 92 e5                                      ldr r3, [r2, #8]
00497530  00 00 53 e3                                      cmp r3, #0
00497534  fb ff ff 1a                                      bne #0x497528
00497538  02 40 a0 e1                                      mov r4, r2
0049753c  04 00 56 e1                                      cmp r6, r4
00497540  f1 ff ff 1a                                      bne #0x49750c
00497544  14 30 95 e5                                      ldr r3, [r5, #0x14]
00497548  00 00 53 e3                                      cmp r3, #0
0049754c  07 00 00 0a                                      beq #0x497570
00497550  06 00 a0 e1                                      mov r0, r6
00497554  08 10 95 e5                                      ldr r1, [r5, #8]
00497558  b7 ff ff eb                                      bl #0x49743c
0049755c  00 30 a0 e3                                      mov r3, #0
00497560  14 30 85 e5                                      str r3, [r5, #0x14]
00497564  10 60 85 e5                                      str r6, [r5, #0x10]
00497568  0c 60 85 e5                                      str r6, [r5, #0xc]
0049756c  08 30 85 e5                                      str r3, [r5, #8]
00497570  70 80 bd e8                                      pop {r4, r5, r6, pc}
00497574  04 30 94 e5                                      ldr r3, [r4, #4]
00497578  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0049757c  01 00 54 e1                                      cmp r4, r1
00497580  05 00 00 1a                                      bne #0x49759c
00497584  03 40 a0 e1                                      mov r4, r3
00497588  04 30 93 e5                                      ldr r3, [r3, #4]
0049758c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00497590  04 00 52 e1                                      cmp r2, r4
00497594  fa ff ff 0a                                      beq #0x497584
00497598  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0049759c  03 00 52 e1                                      cmp r2, r3
004975a0  03 40 a0 11                                      movne r4, r3
004975a4  d6 ff ff ea                                      b #0x497504

; FUNCTION 0x004975a8, declared_size=100, range_size=100, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManagerD1Ev
; demangled: SWFAnimManager::~SWFAnimManager()
; decoder-mode: arm
004975a8  54 30 9f e5                                      ldr r3, [pc, #0x54]
004975ac  54 20 9f e5                                      ldr r2, [pc, #0x54]
004975b0  70 40 2d e9                                      push {r4, r5, r6, lr}
004975b4  03 30 8f e0                                      add r3, pc, r3
004975b8  02 20 93 e7                                      ldr r2, [r3, r2]
004975bc  00 40 a0 e1                                      mov r4, r0
004975c0  08 20 82 e2                                      add r2, r2, #8
004975c4  00 20 80 e5                                      str r2, [r0]
004975c8  c9 ff ff eb                                      bl #0x4974f4
004975cc  14 30 94 e5                                      ldr r3, [r4, #0x14]
004975d0  00 00 53 e3                                      cmp r3, #0
004975d4  08 00 00 0a                                      beq #0x4975fc
004975d8  04 50 84 e2                                      add r5, r4, #4
004975dc  05 00 a0 e1                                      mov r0, r5
004975e0  08 10 94 e5                                      ldr r1, [r4, #8]
004975e4  94 ff ff eb                                      bl #0x49743c
004975e8  00 30 a0 e3                                      mov r3, #0
004975ec  10 50 84 e5                                      str r5, [r4, #0x10]
004975f0  14 30 84 e5                                      str r3, [r4, #0x14]
004975f4  0c 50 84 e5                                      str r5, [r4, #0xc]
004975f8  08 30 84 e5                                      str r3, [r4, #8]
004975fc  04 00 a0 e1                                      mov r0, r4
00497600  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00497604  dc d4 4f 00 4c 41 00 00                          .byte 0xdc, 0xd4, 0x4f, 0x00, 0x4c, 0x41, 0x00, 0x00

; FUNCTION 0x0049760c, declared_size=28, range_size=28, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManagerD0Ev
; demangled: SWFAnimManager::~SWFAnimManager()
; decoder-mode: arm
0049760c  10 40 2d e9                                      push {r4, lr}
00497610  00 40 a0 e1                                      mov r4, r0
00497614  e3 ff ff eb                                      bl #0x4975a8
00497618  04 00 a0 e1                                      mov r0, r4
0049761c  87 e3 f9 eb                                      bl #0x310440
00497620  04 00 a0 e1                                      mov r0, r4
00497624  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00497628, declared_size=100, range_size=100, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManagerD2Ev
; demangled: SWFAnimManager::~SWFAnimManager()
; decoder-mode: arm
00497628  54 30 9f e5                                      ldr r3, [pc, #0x54]
0049762c  54 20 9f e5                                      ldr r2, [pc, #0x54]
00497630  70 40 2d e9                                      push {r4, r5, r6, lr}
00497634  03 30 8f e0                                      add r3, pc, r3
00497638  02 20 93 e7                                      ldr r2, [r3, r2]
0049763c  00 40 a0 e1                                      mov r4, r0
00497640  08 20 82 e2                                      add r2, r2, #8
00497644  00 20 80 e5                                      str r2, [r0]
00497648  a9 ff ff eb                                      bl #0x4974f4
0049764c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00497650  00 00 53 e3                                      cmp r3, #0
00497654  08 00 00 0a                                      beq #0x49767c
00497658  04 50 84 e2                                      add r5, r4, #4
0049765c  05 00 a0 e1                                      mov r0, r5
00497660  08 10 94 e5                                      ldr r1, [r4, #8]
00497664  74 ff ff eb                                      bl #0x49743c
00497668  00 30 a0 e3                                      mov r3, #0
0049766c  10 50 84 e5                                      str r5, [r4, #0x10]
00497670  14 30 84 e5                                      str r3, [r4, #0x14]
00497674  0c 50 84 e5                                      str r5, [r4, #0xc]
00497678  08 30 84 e5                                      str r3, [r4, #8]
0049767c  04 00 a0 e1                                      mov r0, r4
00497680  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00497684  5c d4 4f 00 4c 41 00 00                          .byte 0x5c, 0xd4, 0x4f, 0x00, 0x4c, 0x41, 0x00, 0x00

; FUNCTION 0x00498620, declared_size=1452, range_size=1452, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManager10ExtendBankEPKcP6MenuFXi
; demangled: SWFAnimManager::ExtendBank(char const*, MenuFX*, int)
; decoder-mode: arm
00498620  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00498624  68 85 9f e5                                      ldr r8, [pc, #0x568]
00498628  68 c5 9f e5                                      ldr ip, [pc, #0x568]
0049862c  00 70 53 e2                                      subs r7, r3, #0
00498630  08 80 8f e0                                      add r8, pc, r8
00498634  0c 30 98 e7                                      ldr r3, [r8, ip]
00498638  ac d0 4d e2                                      sub sp, sp, #0xac
0049863c  0c c0 8d e5                                      str ip, [sp, #0xc]
00498640  00 30 93 e5                                      ldr r3, [r3]
00498644  34 10 8d e5                                      str r1, [sp, #0x34]
00498648  02 90 a0 e1                                      mov sb, r2
0049864c  a4 30 8d e5                                      str r3, [sp, #0xa4]
00498650  bc 00 00 da                                      ble #0x498948
00498654  04 40 80 e2                                      add r4, r0, #4
00498658  34 60 8d e2                                      add r6, sp, #0x34
0049865c  00 b0 a0 e3                                      mov fp, #0
00498660  04 00 a0 e1                                      mov r0, r4
00498664  06 10 a0 e1                                      mov r1, r6
00498668  40 b0 8d e5                                      str fp, [sp, #0x40]
0049866c  d4 fc ff eb                                      bl #0x4979c4
00498670  04 00 50 e1                                      cmp r0, r4
00498674  00 50 a0 e1                                      mov r5, r0
00498678  fd 00 00 0a                                      beq #0x498a74
0049867c  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
00498680  28 30 95 e5                                      ldr r3, [r5, #0x28]
00498684  28 c0 85 e2                                      add ip, r5, #0x28
00498688  08 c0 8d e5                                      str ip, [sp, #8]
0049868c  02 30 63 e0                                      rsb r3, r3, r2
00498690  43 31 a0 e1                                      asr r3, r3, #2
00498694  03 00 57 e1                                      cmp r7, r3
00498698  08 00 00 8a                                      bhi #0x4986c0
0049869c  40 00 9d e5                                      ldr r0, [sp, #0x40]
004986a0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004986a4  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
004986a8  01 30 98 e7                                      ldr r3, [r8, r1]
004986ac  00 30 93 e5                                      ldr r3, [r3]
004986b0  03 00 52 e1                                      cmp r2, r3
004986b4  28 01 00 1a                                      bne #0x498b5c
004986b8  ac d0 8d e2                                      add sp, sp, #0xac
004986bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004986c0  00 00 53 e3                                      cmp r3, #0
004986c4  07 00 00 1a                                      bne #0x4986e8
004986c8  cc 14 9f e5                                      ldr r1, [pc, #0x4cc]
004986cc  01 10 98 e7                                      ldr r1, [r8, r1]
004986d0  00 10 91 e5                                      ldr r1, [r1]
004986d4  02 00 51 e3                                      cmp r1, #2
004986d8  00 30 83 05                                      streq r3, [r3]
004986dc  01 00 00 0a                                      beq #0x4986e8
004986e0  01 00 51 e3                                      cmp r1, #1
004986e4  d4 00 00 0a                                      beq #0x498a3c
004986e8  04 00 12 e5                                      ldr r0, [r2, #-4]
004986ec  0c 00 80 e2                                      add r0, r0, #0xc
004986f0  96 3d fe eb                                      bl #0x427d50
004986f4  40 30 90 e5                                      ldr r3, [r0, #0x40]
004986f8  00 60 a0 e1                                      mov r6, r0
004986fc  00 00 53 e3                                      cmp r3, #0
00498700  03 00 00 0a                                      beq #0x498714
00498704  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00498708  04 40 d2 e5                                      ldrb r4, [r2, #4]
0049870c  00 00 54 e3                                      cmp r4, #0
00498710  b9 00 00 0a                                      beq #0x4989fc
00498714  10 30 8d e5                                      str r3, [sp, #0x10]
00498718  78 10 8d e2                                      add r1, sp, #0x78
0049871c  18 10 8d e5                                      str r1, [sp, #0x18]
00498720  01 00 a0 e1                                      mov r0, r1
00498724  44 20 8d e2                                      add r2, sp, #0x44
00498728  34 10 9d e5                                      ldr r1, [sp, #0x34]
0049872c  6e ee f9 eb                                      bl #0x3140ec
00498730  18 20 9d e5                                      ldr r2, [sp, #0x18]
00498734  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
00498738  02 00 53 e1                                      cmp r3, r2
0049873c  78 20 9d 15                                      ldrne r2, [sp, #0x78]
00498740  88 30 9d e5                                      ldr r3, [sp, #0x88]
00498744  10 20 82 02                                      addeq r2, r2, #0x10
00498748  02 20 63 e0                                      rsb r2, r3, r2
0049874c  03 00 52 e3                                      cmp r2, #3
00498750  7e 00 00 9a                                      bls #0x498950
00498754  30 20 a0 e3                                      mov r2, #0x30
00498758  02 20 c3 e5                                      strb r2, [r3, #2]
0049875c  01 20 c3 e5                                      strb r2, [r3, #1]
00498760  88 30 9d e5                                      ldr r3, [sp, #0x88]
00498764  00 20 a0 e3                                      mov r2, #0
00498768  03 20 c3 e5                                      strb r2, [r3, #3]
0049876c  88 30 9d e5                                      ldr r3, [sp, #0x88]
00498770  5f 20 a0 e3                                      mov r2, #0x5f
00498774  00 20 c3 e5                                      strb r2, [r3]
00498778  88 30 9d e5                                      ldr r3, [sp, #0x88]
0049877c  03 30 83 e2                                      add r3, r3, #3
00498780  88 30 8d e5                                      str r3, [sp, #0x88]
00498784  28 30 95 e5                                      ldr r3, [r5, #0x28]
00498788  2c 40 95 e5                                      ldr r4, [r5, #0x2c]
0049878c  04 40 63 e0                                      rsb r4, r3, r4
00498790  44 41 a0 e1                                      asr r4, r4, #2
00498794  07 70 64 e0                                      rsb r7, r4, r7
00498798  00 00 57 e3                                      cmp r7, #0
0049879c  a1 00 00 da                                      ble #0x498a28
004987a0  f8 33 9f e5                                      ldr r3, [pc, #0x3f8]
004987a4  f0 c3 9f e5                                      ldr ip, [pc, #0x3f0]
004987a8  f4 13 9f e5                                      ldr r1, [pc, #0x3f4]
004987ac  03 30 8f e0                                      add r3, pc, r3
004987b0  28 30 8d e5                                      str r3, [sp, #0x28]
004987b4  ec 33 9f e5                                      ldr r3, [pc, #0x3ec]
004987b8  04 70 87 e0                                      add r7, r7, r4
004987bc  67 b6 06 e3                                      movw fp, #0x6667
004987c0  03 30 8f e0                                      add r3, pc, r3
004987c4  2c 30 8d e5                                      str r3, [sp, #0x2c]
004987c8  dc 33 9f e5                                      ldr r3, [pc, #0x3dc]
004987cc  14 70 8d e5                                      str r7, [sp, #0x14]
004987d0  20 c0 8d e5                                      str ip, [sp, #0x20]
004987d4  03 30 8f e0                                      add r3, pc, r3
004987d8  24 10 8d e5                                      str r1, [sp, #0x24]
004987dc  66 b6 46 e3                                      movt fp, #0x6666
004987e0  30 30 8d e5                                      str r3, [sp, #0x30]
004987e4  90 70 8d e2                                      add r7, sp, #0x90
004987e8  3c a0 8d e2                                      add sl, sp, #0x3c
004987ec  1c 80 8d e5                                      str r8, [sp, #0x1c]
004987f0  12 00 00 ea                                      b #0x498840
004987f4  00 10 a0 e3                                      mov r1, #0
004987f8  9b 10 c5 e5                                      strb r1, [r5, #0x9b]
004987fc  6c 00 a0 e3                                      mov r0, #0x6c
00498800  5a df f9 eb                                      bl #0x310570
00498804  09 10 a0 e1                                      mov r1, sb
00498808  05 20 a0 e1                                      mov r2, r5
0049880c  00 80 a0 e1                                      mov r8, r0
00498810  16 fa ff eb                                      bl #0x497070
00498814  08 00 9d e5                                      ldr r0, [sp, #8]
00498818  0a 10 a0 e1                                      mov r1, sl
0049881c  3c 80 8d e5                                      str r8, [sp, #0x3c]
00498820  d5 fb ff eb                                      bl #0x49777c
00498824  40 30 9d e5                                      ldr r3, [sp, #0x40]
00498828  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0049882c  00 00 53 e3                                      cmp r3, #0
00498830  3c 30 9d 05                                      ldreq r3, [sp, #0x3c]
00498834  40 30 8d 05                                      streq r3, [sp, #0x40]
00498838  0c 00 54 e1                                      cmp r4, ip
0049883c  78 00 00 0a                                      beq #0x498a24
00498840  9b 34 c2 e0                                      smull r3, r2, fp, r4
00498844  c4 3f a0 e1                                      asr r3, r4, #0x1f
00498848  42 21 63 e0                                      rsb r2, r3, r2, asr #2
0049884c  88 30 9d e5                                      ldr r3, [sp, #0x88]
00498850  30 10 82 e2                                      add r1, r2, #0x30
00498854  02 10 43 e5                                      strb r1, [r3, #-2]
00498858  0a 30 a0 e3                                      mov r3, #0xa
0049885c  93 42 62 e0                                      mls r2, r3, r2, r4
00498860  88 30 9d e5                                      ldr r3, [sp, #0x88]
00498864  30 20 82 e2                                      add r2, r2, #0x30
00498868  10 00 9d e5                                      ldr r0, [sp, #0x10]
0049886c  01 20 43 e5                                      strb r2, [r3, #-1]
00498870  2d 99 0b eb                                      bl #0x77ed2c
00498874  00 30 96 e5                                      ldr r3, [r6]
00498878  00 80 a0 e1                                      mov r8, r0
0049887c  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
00498880  07 00 a0 e1                                      mov r0, r7
00498884  d4 50 93 e5                                      ldr r5, [r3, #0xd4]
00498888  7b ec fd eb                                      bl #0x413a7c
0049888c  06 00 a0 e1                                      mov r0, r6
00498890  07 10 a0 e1                                      mov r1, r7
00498894  08 20 a0 e1                                      mov r2, r8
00498898  35 ff 2f e1                                      blx r5
0049889c  d0 39 dd e1                                      ldrsb r3, [sp, #0x90]
004988a0  00 50 a0 e1                                      mov r5, r0
004988a4  01 40 84 e2                                      add r4, r4, #1
004988a8  01 00 73 e3                                      cmn r3, #1
004988ac  58 00 00 0a                                      beq #0x498a14
004988b0  00 00 55 e3                                      cmp r5, #0
004988b4  ce ff ff 1a                                      bne #0x4987f4
004988b8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
004988bc  20 c0 9d e5                                      ldr ip, [sp, #0x20]
004988c0  0c 30 91 e7                                      ldr r3, [r1, ip]
004988c4  00 30 93 e5                                      ldr r3, [r3]
004988c8  02 00 53 e3                                      cmp r3, #2
004988cc  00 50 85 05                                      streq r5, [r5]
004988d0  c7 ff ff 0a                                      beq #0x4987f4
004988d4  01 00 53 e3                                      cmp r3, #1
004988d8  c5 ff ff 1a                                      bne #0x4987f4
004988dc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
004988e0  24 20 9d e5                                      ldr r2, [sp, #0x24]
004988e4  9c c0 a0 e3                                      mov ip, #0x9c
004988e8  28 10 9d e5                                      ldr r1, [sp, #0x28]
004988ec  02 00 93 e7                                      ldr r0, [r3, r2]
004988f0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
004988f4  30 30 9d e5                                      ldr r3, [sp, #0x30]
004988f8  a8 00 80 e2                                      add r0, r0, #0xa8
004988fc  00 c0 8d e5                                      str ip, [sp]
00498900  bf d5 f9 eb                                      bl #0x30e004
00498904  ba ff ff ea                                      b #0x4987f4
00498908  08 20 9d e5                                      ldr r2, [sp, #8]
0049890c  0a 10 a0 e1                                      mov r1, sl
00498910  28 00 82 e2                                      add r0, r2, #0x28
00498914  5a 1d fe eb                                      bl #0x41fe84
00498918  74 a0 8d e5                                      str sl, [sp, #0x74]
0049891c  78 32 9f e5                                      ldr r3, [pc, #0x278]
00498920  03 30 98 e7                                      ldr r3, [r8, r3]
00498924  00 30 93 e5                                      ldr r3, [r3]
00498928  02 00 53 e3                                      cmp r3, #2
0049892c  00 30 a0 03                                      moveq r3, #0
00498930  00 30 83 05                                      streq r3, [r3]
00498934  01 00 00 0a                                      beq #0x498940
00498938  01 00 53 e3                                      cmp r3, #1
0049893c  87 00 00 0a                                      beq #0x498b60
00498940  08 00 9d e5                                      ldr r0, [sp, #8]
00498944  2c 08 fe eb                                      bl #0x41a9fc
00498948  00 00 a0 e3                                      mov r0, #0
0049894c  53 ff ff ea                                      b #0x4986a0
00498950  18 00 9d e5                                      ldr r0, [sp, #0x18]
00498954  03 10 a0 e3                                      mov r1, #3
00498958  90 df f9 eb                                      bl #0x3107a0
0049895c  00 a0 50 e2                                      subs sl, r0, #0
00498960  0a 40 a0 01                                      moveq r4, sl
00498964  71 00 00 1a                                      bne #0x498b30
00498968  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
0049896c  88 10 9d e5                                      ldr r1, [sp, #0x88]
00498970  01 10 60 e0                                      rsb r1, r0, r1
00498974  00 00 51 e3                                      cmp r1, #0
00498978  04 b0 a0 d1                                      movle fp, r4
0049897c  06 00 00 da                                      ble #0x49899c
00498980  00 30 a0 e3                                      mov r3, #0
00498984  03 20 d0 e7                                      ldrb r2, [r0, r3]
00498988  03 20 c4 e7                                      strb r2, [r4, r3]
0049898c  01 30 83 e2                                      add r3, r3, #1
00498990  01 00 53 e1                                      cmp r3, r1
00498994  fa ff ff 1a                                      bne #0x498984
00498998  03 b0 84 e0                                      add fp, r4, r3
0049899c  0b 30 a0 e1                                      mov r3, fp
004989a0  5f 20 a0 e3                                      mov r2, #0x5f
004989a4  01 20 c3 e4                                      strb r2, [r3], #1
004989a8  30 20 a0 e3                                      mov r2, #0x30
004989ac  01 20 cb e5                                      strb r2, [fp, #1]
004989b0  01 20 c3 e5                                      strb r2, [r3, #1]
004989b4  00 30 a0 e3                                      mov r3, #0
004989b8  03 30 cb e5                                      strb r3, [fp, #3]
004989bc  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
004989c0  18 30 9d e5                                      ldr r3, [sp, #0x18]
004989c4  03 b0 8b e2                                      add fp, fp, #3
004989c8  03 00 50 e1                                      cmp r0, r3
004989cc  06 00 00 0a                                      beq #0x4989ec
004989d0  00 00 50 e3                                      cmp r0, #0
004989d4  04 00 00 0a                                      beq #0x4989ec
004989d8  78 10 9d e5                                      ldr r1, [sp, #0x78]
004989dc  01 10 60 e0                                      rsb r1, r0, r1
004989e0  80 00 51 e3                                      cmp r1, #0x80
004989e4  12 00 00 8a                                      bhi #0x498a34
004989e8  44 c1 09 eb                                      bl #0x708f00
004989ec  78 a0 8d e5                                      str sl, [sp, #0x78]
004989f0  88 b0 8d e5                                      str fp, [sp, #0x88]
004989f4  8c 40 8d e5                                      str r4, [sp, #0x8c]
004989f8  61 ff ff ea                                      b #0x498784
004989fc  3c 00 80 e2                                      add r0, r0, #0x3c
00498a00  04 10 a0 e1                                      mov r1, r4
00498a04  1e 1d fe eb                                      bl #0x41fe84
00498a08  10 40 8d e5                                      str r4, [sp, #0x10]
00498a0c  40 40 86 e5                                      str r4, [r6, #0x40]
00498a10  40 ff ff ea                                      b #0x498718
00498a14  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
00498a18  98 10 9d e5                                      ldr r1, [sp, #0x98]
00498a1c  45 e8 0a eb                                      bl #0x752b38
00498a20  a2 ff ff ea                                      b #0x4988b0
00498a24  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
00498a28  18 00 9d e5                                      ldr r0, [sp, #0x18]
00498a2c  08 fe f9 eb                                      bl #0x318254
00498a30  19 ff ff ea                                      b #0x49869c
00498a34  81 de f9 eb                                      bl #0x310440
00498a38  eb ff ff ea                                      b #0x4989ec
00498a3c  60 01 9f e5                                      ldr r0, [pc, #0x160]
00498a40  68 11 9f e5                                      ldr r1, [pc, #0x168]
00498a44  68 21 9f e5                                      ldr r2, [pc, #0x168]
00498a48  00 00 98 e7                                      ldr r0, [r8, r0]
00498a4c  64 31 9f e5                                      ldr r3, [pc, #0x164]
00498a50  02 20 8f e0                                      add r2, pc, r2
00498a54  86 c0 a0 e3                                      mov ip, #0x86
00498a58  01 10 8f e0                                      add r1, pc, r1
00498a5c  a8 00 80 e2                                      add r0, r0, #0xa8
00498a60  03 30 8f e0                                      add r3, pc, r3
00498a64  00 c0 8d e5                                      str ip, [sp]
00498a68  65 d5 f9 eb                                      bl #0x30e004
00498a6c  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
00498a70  1c ff ff ea                                      b #0x4986e8
00498a74  48 10 8d e2                                      add r1, sp, #0x48
00498a78  01 00 a0 e1                                      mov r0, r1
00498a7c  08 10 8d e5                                      str r1, [sp, #8]
00498a80  19 09 fe eb                                      bl #0x41aeec
00498a84  30 11 9f e5                                      ldr r1, [pc, #0x130]
00498a88  09 00 a0 e1                                      mov r0, sb
00498a8c  34 a0 9d e5                                      ldr sl, [sp, #0x34]
00498a90  01 10 8f e0                                      add r1, pc, r1
00498a94  b1 41 0c eb                                      bl #0x7a9160
00498a98  0a 10 a0 e1                                      mov r1, sl
00498a9c  00 30 a0 e1                                      mov r3, r0
00498aa0  09 20 a0 e1                                      mov r2, sb
00498aa4  08 00 9d e5                                      ldr r0, [sp, #8]
00498aa8  7c 3c fe eb                                      bl #0x427ca0
00498aac  74 30 9d e5                                      ldr r3, [sp, #0x74]
00498ab0  0b 00 53 e1                                      cmp r3, fp
00498ab4  98 ff ff 0a                                      beq #0x49891c
00498ab8  70 30 9d e5                                      ldr r3, [sp, #0x70]
00498abc  04 a0 d3 e5                                      ldrb sl, [r3, #4]
00498ac0  0b 00 5a e1                                      cmp sl, fp
00498ac4  8f ff ff 0a                                      beq #0x498908
00498ac8  08 00 9d e5                                      ldr r0, [sp, #8]
00498acc  9f 3c fe eb                                      bl #0x427d50
00498ad0  0b 10 a0 e1                                      mov r1, fp
00498ad4  00 a0 a0 e1                                      mov sl, r0
00498ad8  6c 00 a0 e3                                      mov r0, #0x6c
00498adc  a3 de f9 eb                                      bl #0x310570
00498ae0  0a 20 a0 e1                                      mov r2, sl
00498ae4  00 b0 a0 e1                                      mov fp, r0
00498ae8  09 10 a0 e1                                      mov r1, sb
00498aec  a8 a0 8d e2                                      add sl, sp, #0xa8
00498af0  5e f9 ff eb                                      bl #0x497070
00498af4  68 b0 2a e5                                      str fp, [sl, #-0x68]!
00498af8  05 00 a0 e1                                      mov r0, r5
00498afc  06 10 a0 e1                                      mov r1, r6
00498b00  46 fe ff eb                                      bl #0x498420
00498b04  0a 10 a0 e1                                      mov r1, sl
00498b08  1b fb ff eb                                      bl #0x49777c
00498b0c  05 00 a0 e1                                      mov r0, r5
00498b10  06 10 a0 e1                                      mov r1, r6
00498b14  aa fb ff eb                                      bl #0x4979c4
00498b18  00 50 a0 e1                                      mov r5, r0
00498b1c  08 00 9d e5                                      ldr r0, [sp, #8]
00498b20  b5 07 fe eb                                      bl #0x41a9fc
00498b24  04 00 55 e1                                      cmp r5, r4
00498b28  db fe ff 0a                                      beq #0x49869c
00498b2c  d2 fe ff ea                                      b #0x49867c
00498b30  80 00 5a e3                                      cmp sl, #0x80
00498b34  38 a0 8d e5                                      str sl, [sp, #0x38]
00498b38  05 00 00 8a                                      bhi #0x498b54
00498b3c  38 00 8d e2                                      add r0, sp, #0x38
00498b40  de c0 09 eb                                      bl #0x708ec0
00498b44  38 a0 9d e5                                      ldr sl, [sp, #0x38]
00498b48  00 40 a0 e1                                      mov r4, r0
00498b4c  0a a0 80 e0                                      add sl, r0, sl
00498b50  84 ff ff ea                                      b #0x498968
00498b54  3e de f9 eb                                      bl #0x310454
00498b58  f9 ff ff ea                                      b #0x498b44
00498b5c  eb d5 f9 eb                                      bl #0x30e310
00498b60  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00498b64  54 10 9f e5                                      ldr r1, [pc, #0x54]
00498b68  54 20 9f e5                                      ldr r2, [pc, #0x54]
00498b6c  00 00 98 e7                                      ldr r0, [r8, r0]
00498b70  50 30 9f e5                                      ldr r3, [pc, #0x50]
00498b74  7a c0 a0 e3                                      mov ip, #0x7a
00498b78  01 10 8f e0                                      add r1, pc, r1
00498b7c  02 20 8f e0                                      add r2, pc, r2
00498b80  03 30 8f e0                                      add r3, pc, r3
00498b84  a8 00 80 e2                                      add r0, r0, #0xa8
00498b88  00 c0 8d e5                                      str ip, [sp]
00498b8c  1c d5 f9 eb                                      bl #0x30e004
00498b90  6a ff ff ea                                      b #0x498940
; mapping-symbol data/literal pool
00498b94  60 c4 4f 00 ac 40 00 00 c0 39 00 00 2c 5c 42 00  .byte 0x60, 0xc4, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x2c, 0x5c, 0x42, 0x00
00498ba4  c0 19 00 00 28 c9 43 00 b4 c8 43 00 80 59 42 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x28, 0xc9, 0x43, 0x00, 0xb4, 0xc8, 0x43, 0x00, 0x80, 0x59, 0x42, 0x00
00498bb4  80 c6 43 00 28 c6 43 00 70 a7 42 00 60 58 42 00  .byte 0x80, 0xc6, 0x43, 0x00, 0x28, 0xc6, 0x43, 0x00, 0x70, 0xa7, 0x42, 0x00, 0x60, 0x58, 0x42, 0x00
00498bc4  ec 59 42 00 08 c5 43 00                          .byte 0xec, 0x59, 0x42, 0x00, 0x08, 0xc5, 0x43, 0x00

; FUNCTION 0x00498bcc, declared_size=228, range_size=228, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManager8GrabAnimEPKcP6MenuFXi
; demangled: SWFAnimManager::GrabAnim(char const*, MenuFX*, int)
; decoder-mode: arm
00498bcc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00498bd0  08 d0 4d e2                                      sub sp, sp, #8
00498bd4  08 40 8d e2                                      add r4, sp, #8
00498bd8  04 10 24 e5                                      str r1, [r4, #-4]!
00498bdc  04 50 80 e2                                      add r5, r0, #4
00498be0  00 60 a0 e1                                      mov r6, r0
00498be4  04 10 a0 e1                                      mov r1, r4
00498be8  05 00 a0 e1                                      mov r0, r5
00498bec  02 80 a0 e1                                      mov r8, r2
00498bf0  03 70 a0 e1                                      mov r7, r3
00498bf4  72 fb ff eb                                      bl #0x4979c4
00498bf8  00 00 55 e1                                      cmp r5, r0
00498bfc  23 00 00 0a                                      beq #0x498c90
00498c00  04 10 a0 e1                                      mov r1, r4
00498c04  05 00 a0 e1                                      mov r0, r5
00498c08  04 fe ff eb                                      bl #0x498420
00498c0c  04 10 90 e5                                      ldr r1, [r0, #4]
00498c10  00 c0 90 e5                                      ldr ip, [r0]
00498c14  01 00 5c e1                                      cmp ip, r1
00498c18  0c 00 00 0a                                      beq #0x498c50
00498c1c  00 00 9c e5                                      ldr r0, [ip]
00498c20  04 30 d0 e5                                      ldrb r3, [r0, #4]
00498c24  00 00 53 e3                                      cmp r3, #0
00498c28  0c 30 a0 01                                      moveq r3, ip
00498c2c  04 00 00 0a                                      beq #0x498c44
00498c30  11 00 00 ea                                      b #0x498c7c
00498c34  00 00 93 e5                                      ldr r0, [r3]
00498c38  04 20 d0 e5                                      ldrb r2, [r0, #4]
00498c3c  00 00 52 e3                                      cmp r2, #0
00498c40  0d 00 00 1a                                      bne #0x498c7c
00498c44  04 30 83 e2                                      add r3, r3, #4
00498c48  01 00 53 e1                                      cmp r3, r1
00498c4c  f8 ff ff 1a                                      bne #0x498c34
00498c50  00 00 57 e3                                      cmp r7, #0
00498c54  00 00 a0 d3                                      movle r0, #0
00498c58  01 00 a0 c3                                      movgt r0, #1
00498c5c  00 00 50 e3                                      cmp r0, #0
00498c60  08 00 00 0a                                      beq #0x498c88
00498c64  01 30 6c e0                                      rsb r3, ip, r1
00498c68  43 31 87 e0                                      add r3, r7, r3, asr #2
00498c6c  06 00 a0 e1                                      mov r0, r6
00498c70  08 20 a0 e1                                      mov r2, r8
00498c74  04 10 9d e5                                      ldr r1, [sp, #4]
00498c78  68 fe ff eb                                      bl #0x498620
00498c7c  00 00 50 e3                                      cmp r0, #0
00498c80  00 30 a0 13                                      movne r3, #0
00498c84  04 30 c0 15                                      strbne r3, [r0, #4]
00498c88  08 d0 8d e2                                      add sp, sp, #8
00498c8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00498c90  00 00 57 e3                                      cmp r7, #0
00498c94  d9 ff ff da                                      ble #0x498c00
00498c98  06 00 a0 e1                                      mov r0, r6
00498c9c  04 10 9d e5                                      ldr r1, [sp, #4]
00498ca0  08 20 a0 e1                                      mov r2, r8
00498ca4  07 30 a0 e1                                      mov r3, r7
00498ca8  5c fe ff eb                                      bl #0x498620
00498cac  d3 ff ff ea                                      b #0x498c00

; FUNCTION 0x00498cb0, declared_size=44, range_size=44, mode=arm
; class-group: SWFAnimManager
; alias: _ZN14SWFAnimManager8GrabAnimEPKc
; demangled: SWFAnimManager::GrabAnim(char const*)
; decoder-mode: arm
00498cb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00498cb4  01 50 a0 e1                                      mov r5, r1
00498cb8  00 40 a0 e1                                      mov r4, r0
00498cbc  72 4f fe eb                                      bl #0x42ca8c
00498cc0  b1 4f fe eb                                      bl #0x42cb8c
00498cc4  05 10 a0 e1                                      mov r1, r5
00498cc8  00 20 a0 e1                                      mov r2, r0
00498ccc  01 30 a0 e3                                      mov r3, #1
00498cd0  04 00 a0 e1                                      mov r0, r4
00498cd4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00498cd8  bb ff ff ea                                      b #0x498bcc
